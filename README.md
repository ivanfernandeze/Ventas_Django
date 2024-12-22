# Proyecto Ventas Django

## Pasos para correr el proyecto

1. **Clonar el repositorio**
    ```bash
    git clone https://github.com/tu_usuario/ventas_project_django.git
    cd ventas_project_django
    ```

2. **Instalar las dependencias**
    ```bash
    pip install -r requirements.txt
    ```

3. **Configurar la base de datos**
    - Edita el archivo `settings.py` para configurar la base de datos según tus necesidades.
    - Aplica las migraciones:
      ```bash
      python manage.py migrate
      ```

4. **Crear un superusuario**
    ```bash
    python manage.py createsuperuser
    ```

5. **Cargar datos iniciales (opcional)**
    ```bash
    python manage.py loaddata initial_data.json
    ```

6. **Correr el servidor de desarrollo**
    ```bash
    python manage.py runserver
    ```

7. **Acceder al proyecto**
    - Abre tu navegador y ve a `http://127.0.0.1:8000/`.

¡Listo! Ahora deberías poder ver y usar el proyecto de ventas en Django.

## Detalles adicionales del proyecto

### Instalaciones necesarias

Para poder correr el proyecto, asegúrate de tener instaladas las siguientes herramientas:

- **Python 3.x**: Puedes descargarlo desde [python.org](https://www.python.org/downloads/).
- **pip**: Viene incluido con Python, pero asegúrate de tener la última versión:
    ```bash
    python -m pip install --upgrade pip
    ```
- **Django**: El framework web utilizado para este proyecto:
    ```bash
    pip install django
    ```
- **Otros paquetes necesarios**: Listados en el archivo `requirements.txt`:
    ```bash
    pip install -r requirements.txt
    ```

### Configuración de la base de datos

El proyecto está configurado para usar una base de datos SQLite por defecto, que no requiere configuración adicional. Sin embargo, si deseas usar otra base de datos (como PostgreSQL, MySQL, etc.), sigue estos pasos:

1. Instala el conector de la base de datos correspondiente, por ejemplo, para PostgreSQL:
    ```bash
    pip install psycopg2-binary
    ```
2. Edita el archivo `settings.py` y actualiza la configuración de `DATABASES` con los detalles de tu base de datos.

### Migraciones

Las migraciones son necesarias para crear las tablas en la base de datos. Asegúrate de aplicar las migraciones cada vez que realices cambios en los modelos de Django:

```bash
python manage.py makemigrations
python manage.py migrate
```

### Creación de superusuario

El superusuario es necesario para acceder al panel de administración de Django. Sigue estos pasos para crearlo:

```bash
python manage.py createsuperuser
```

Se te pedirá que ingreses un nombre de usuario, correo electrónico y contraseña.

### Cargar datos iniciales

Si tienes datos iniciales que deseas cargar en la base de datos, puedes hacerlo utilizando el siguiente comando:

```bash
python manage.py loaddata initial_data.json
```

Asegúrate de que el archivo `initial_data.json` esté en el directorio correcto y contenga los datos en el formato adecuado.

### Correr el servidor de desarrollo

Para iniciar el servidor de desarrollo y ver el proyecto en tu navegador, usa el siguiente comando:

```bash
python manage.py runserver
```

Luego, abre tu navegador y ve a `http://127.0.0.1:8000/` para acceder al proyecto.
