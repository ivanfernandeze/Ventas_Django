from django.db import models

# Create your models here.
# Create your models here.
class Producto(models.Model):
    descripcion = models.CharField(max_length=100)
    categoria = models.ForeignKey('ventasApp.Categoria', on_delete=models.DO_NOTHING)
    unidad = models.ForeignKey('unidades.Unidad', on_delete=models.DO_NOTHING)
    precio = models.DecimalField(max_digits=6, decimal_places=2)
    stock = models.IntegerField()
    created = models.DateTimeField(auto_now_add=True)

    estado = models.BooleanField(default=True)

    class Meta:
        verbose_name = 'producto'
        verbose_name_plural = 'productos'
        ordering = ['created']

    def __str__(self):
        return self.descripcion

productoFields = [
    'descripcion',
    'categoria',
    'unidad',
    'precio',
    'stock'
]