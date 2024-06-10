using Microsoft.Identity.Client;
using System.ComponentModel.DataAnnotations;

namespace PrimerParcial.Modelos
{
    public class Libro
    {
        [Key]
        public int id_libro {  get; set; }

        public string titulo {  get; set; } 
        public int id_editorial { get; set; } 
        

    }
}
