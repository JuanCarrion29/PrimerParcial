using Microsoft.EntityFrameworkCore;
using PrimerParcial.Modelos;

namespace PrimerParcial.Context
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {

        }


        public DbSet<Usuario> Usuarios { get; set; }

        public DbSet<Categoria> Categorias { get; set; }

        public DbSet<Autor> Autores { get; set; }

        public DbSet<Editorial> Editoriales { get; set; }

        public DbSet<Reseña> Reseñas { get; set; }

        public DbSet<Reserva> Reservas { get; set; }


        public DbSet<Libro> Libros { get; set; }

        public DbSet<Prestamo> Prestamos { get; set; }


    }
}
