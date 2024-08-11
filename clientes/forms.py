from django import forms
from .models import Cliente

class ClienteForm(forms.ModelForm):
    class Meta:
        model = Cliente
        fields = ['nombres', 'direccion', 'ruc_dni', 'telefono', 'email']
        labels = {
            'nombres': 'Nombres',
            'direccion': 'Dirección',
            'ruc_dni': 'RUC/DNI',
            'telefono': 'Teléfono',
            'email': 'Correo Electrónico'
        }
        widgets = {
            'nombres': forms.TextInput(attrs={'class': 'w-full px-3 py-3 border border-gray-300 text-sm rounded-md shadow-sm focus:outline-none focus:ring-0 sm:text-sm'}),
            'direccion': forms.TextInput(attrs={'class': 'w-full px-3 py-3 border border-gray-300 text-sm rounded-md shadow-sm focus:outline-none focus:ring-0 sm:text-sm'}),
            'ruc_dni': forms.TextInput(attrs={'class': 'w-full px-3 py-3 border border-gray-300 text-sm rounded-md shadow-sm focus:outline-none focus:ring-0 sm:text-sm'}),
            'telefono': forms.TextInput(attrs={'class': 'w-full px-3 py-3 border border-gray-300 text-sm rounded-md shadow-sm focus:outline-none focus:ring-0 sm:text-sm'}),
            'email': forms.EmailInput(attrs={'class': 'w-full px-3 py-3 border border-gray-300 text-sm rounded-md shadow-sm focus:outline-none focus:ring-0 sm:text-sm'}),
        }