from django.contrib import admin
from .models import Detalle_Venta, Tipo_Venta, Venta

# Register your models here.
admin.site.register(Detalle_Venta)
admin.site.register(Tipo_Venta)
admin.site.register(Venta)
