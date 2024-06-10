using System.ComponentModel.DataAnnotations;
using System.Drawing.Printing;

namespace PrimerParcial.Modelos
{
    public class Reseña
    {
        [Key]
        public int reseña_id {  get; set; }

        public int id_usuario { get; set; }

        public int id_libro { get; set; }   

        public string Comentario { get; set; }

        public int Calificacion {  get; set; }  

        public DateTime fecha_reseña { get; set; }

    }
}
