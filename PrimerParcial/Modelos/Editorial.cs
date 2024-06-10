using System.ComponentModel.DataAnnotations;

namespace PrimerParcial.Modelos
{
    public class Editorial
    {

        [Key]
        public int id_editorial {  get; set; }  

        public string nombre_editorial { get; set; }    



    }
}
