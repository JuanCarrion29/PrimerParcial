using System.ComponentModel.DataAnnotations;

namespace PrimerParcial.Modelos
{
    public class Prestamo
    {
        [Key]
        public int id_prestamo {  get; set; }   

        public int id_usuario { get; set; }

        public int id_libro {  get; set; }  

        public DateTime fecha_prestamo { get; set; }    

        public DateTime fecha_devolucion { get; set; }  

    }
}
