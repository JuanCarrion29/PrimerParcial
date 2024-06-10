using System.ComponentModel.DataAnnotations;

namespace PrimerParcial.Modelos
{
    public class Categoria
    {
        [Key]
        public int id_categoria { get; set; }

        public string Nombre_categoria { get; set; }
    }
}
