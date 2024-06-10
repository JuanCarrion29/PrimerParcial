using System.ComponentModel.DataAnnotations;

namespace PrimerParcial.Modelos
{
    public class Autor
    {
        [Key]
        public int id_autor {  get; set; }
        public string Nombre { get; set; }

        public string apellido { get; set; }

    }
}
