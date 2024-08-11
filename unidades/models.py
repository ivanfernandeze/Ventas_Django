from django.db import models

# Create your models here.
class Unidad(models.Model):
    descripcion = models.CharField(max_length=50)
    estado = models.BooleanField(default=True)
    created = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name = 'unidad'
        verbose_name_plural = 'unidades'
        ordering = ['created']

    def __str__(self):
        return self.descripcion
