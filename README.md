# Primer-parcial



## Escenario 1: Sistema de Biblioteca
Modelos: Libro, Autor, Categoría, Editorial, Usuario, Préstamo, Reserva, Reseña
Relaciones:
•	Un libro puede tener varios autores y categorías.
•	Un usuario puede hacer múltiples préstamos y reservas.
•	Cada préstamo y reserva está relacionado con un libro específico.
•	Un libro puede tener varias reseñas hechas por usuarios.

## Configuración del Entorno
* Requisitos
* C# (versión 12).
* .NET (versión 8.0).
* SQL Server (versión 2019).

### Instalación

1. Crear un directorio para el proyecto:

```sh
mkdir Proyecto
cd Proyecto
```

2. Clonar el repositorio:

```sh
git clone https://github.com/JuanCarrion29/Primer-parcial.git
```

3. Navegar al directorio del proyecto:

```sh
cd 'PrimerParcial'
```

4. Restaurar los paquetes NuGet si es necesario:

```sh
dotnet restore
```

5. Ejecutar el proyecto:

```sh
dotnet watch run
```
 
