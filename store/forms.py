from django import forms
from .models import Product, Order

class OrderForm(forms.ModelForm):
    class Meta:
        model = Order
        fields = ('first_name', 'last_name', 'address', 'city', 'mobile')
        widgets = {
            'first_name': forms.TextInput(attrs={
                'class': 'w-full p-2 border border-gray-200 rounded-md'
            }),
            'last_name': forms.TextInput(attrs={
                'class': 'w-full p-2 border border-gray-200 rounded-md'
            }),
            'address': forms.TextInput(attrs={
                'class': 'w-full p-2 border border-gray-200 rounded-md'
            }),
            'city': forms.TextInput(attrs={
                'class': 'w-full p-2 border border-gray-200 rounded-md'
            }),
            'mobile': forms.NumberInput(attrs={
                'class': 'w-full p-2 border border-gray-200 rounded-md'
            }),
        }

class ProductForm(forms.ModelForm):
    class Meta:
        model = Product
        fields = ('category', 'title', 'description', 'price', 'image', )
        widgets = {
            'category': forms.Select(attrs={
                'class': 'w-full p-4 border border-gray-200'
            }),
            'title': forms.TextInput(attrs={
                'class': 'w-full p-4 border border-gray-200'
            }),
            'description': forms.Textarea(attrs={
                'class': 'w-full p-4 border border-gray-200'
            }),
            'price': forms.TextInput(attrs={
                'class': 'w-full p-4 border border-gray-200'
            }),
            'image': forms.FileInput(attrs={
                'class': 'w-full p-4 border border-gray-200'
            })
        }