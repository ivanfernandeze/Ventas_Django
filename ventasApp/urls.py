
from django.urls import path, include
from .views import CategoriaView, categoria_delete, categoria_edit, getCategoria

urlpatterns = [
    path('categorias/', CategoriaView.as_view(), name='categorias'),
    path('categorias/delete/<int:id>/', categoria_delete, name='categoria_delete'),
    path('categorias/edit/<int:id>/', categoria_edit, name='categoria_edit'),
    path('categorias/<str:id>/', getCategoria, name='get_categoria'),

]