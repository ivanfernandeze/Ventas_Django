from django import forms
from .models import Categoria


class CategoriaForm(forms.ModelForm):
    class Meta:
        model = Categoria
        fields = ['descripcion']

    def __init__(self, *args, **kwargs):
        super(CategoriaForm, self).__init__(*args, **kwargs)
        self.fields['descripcion'].widget.attrs.update({
            'class': 'block w-full px-3 py-3 border border-gray-300 text-sm rounded-md shadow-sm focus:outline-none focus:ring-0 focus:border-red-200 sm:text-sm',
            'placeholder': 'Ingrese la descripción de la categoría'
        })
    


