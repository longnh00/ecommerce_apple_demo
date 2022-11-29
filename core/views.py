from django.shortcuts import render
from store.models import Product

# Create your views here.

def homepage(request):
    context = {}
    products = Product.objects.filter(status=Product.ACTIVE)[0:10]
    if products is not None:
        context = {
            'products': products,
        }
    return render(request, 'core/homepage.html', context)

def about(request):
    context = {}
    return render(request, 'core/about.html', context)