from django.urls import path
from .views import ClienteView, cliente_delete, cliente_edit, getCliente

urlpatterns = [
    path('', ClienteView.as_view(), name='clientes'),
    path('delete/<int:id>/', cliente_delete, name='cliente_delete'),
    path('edit/<int:id>/', cliente_edit, name='cliente_edit'),
    path('<int:id>/', getCliente, name='get_cliente'),
]