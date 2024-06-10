using System.ComponentModel.DataAnnotations;

namespace PrimerParcial.Modelos
{
    public class Reserva
    {
        [Key]
        public int id_reserva {  get; set; }    

        public DateTime fecha_reserva { get; set; }

        public int id_libro { get; set; }

        public int id_usuario {  get; set; }    


    }
}
