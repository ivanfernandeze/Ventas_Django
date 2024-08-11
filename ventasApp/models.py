from django.db import models
    
class Categoria(models.Model):
    descripcion = models.CharField(max_length=50)
    estado = models.BooleanField(default=True)
    created = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name = 'categoria'
        verbose_name_plural = 'categorias'
        ordering = ['created']

    def __str__(self):
        return self.descripcion

