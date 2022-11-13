from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import login, logout
from .models import Userprofile
from django.conf import settings
from django.contrib.auth.decorators import login_required
from store.forms import ProductForm
from store.models import Product, Category
from django.utils.text import slugify
from django.contrib import messages

# Create your views here.

def user_detail(request, pk):
    if not request.user.is_authenticated:
        return redirect('homepage') 
    user = User.objects.get(pk=pk)
    products = user.products.filter(status=Product.ACTIVE)
    if user == 'admin':
        context = {
            'user': user,
            'products': products,
        }
        return render(request, 'userprofile/user_detail.html', context)
    elif user != 'admin':
        return redirect('homepage')
    else:
        return redirect('homepage')

@login_required
def my_store(request):
    products = request.user.products.exclude(status=Product.DELETED)

    return render(request, 'userprofile/my_store.html', {
        'products': products
    })

@login_required
def myaccount(request):
    # if request.user.is_authenticated:
    #     return render(request, 'userprofile/myaccount.html')   
    # else:
    #     return redirect('login') 
    return render(request, 'userprofile/myaccount.html')

@login_required
def add_product(request):
    if request.method == 'POST':
        form = ProductForm(request.POST, request.FILES)

        if form.is_valid():
            title = request.POST.get('title')

            product = form.save(commit=False)
            product.user = request.user
            product.slug = slugify(title)
            product.save()

            messages.success(request, 'The product was added!')

            return redirect('my_store')
    else:
        form = ProductForm()

    return render(request, 'userprofile/product_form.html', {
        'title': 'Add product',
        'form': form
    })

@login_required
def edit_product(request, pk):
    product = Product.objects.filter(user=request.user).get(pk=pk)

    if request.method == 'POST':
        form = ProductForm(request.POST, request.FILES, instance=product)

        if form.is_valid():
            form.save()

            messages.success(request, 'The changes was saved!')

            return redirect('my_store')
    else:
        form = ProductForm(instance=product)

    return render(request, 'userprofile/product_form.html', {
        'title': 'Edit product',
        'product': product,
        'form': form
    })

@login_required
def delete_product(request, pk):
    product = Product.objects.filter(user=request.user).get(pk=pk)
    product.status = Product.DELETED
    product.save()

    messages.success(request, 'The product was deleted!')

    return redirect('my_store')

def signup(request):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)

        if form.is_valid():
            user = form.save()

            login(request, user)

            userprofile = Userprofile.objects.create(user=user)

            return redirect('homepage')
    else:
        form = UserCreationForm()
    
    return render(request, 'userprofile/signup.html', {
        'form': form
    })