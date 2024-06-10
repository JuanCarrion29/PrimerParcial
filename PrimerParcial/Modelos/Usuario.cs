using System.ComponentModel.DataAnnotations;

namespace PrimerParcial.Modelos
{
    public class Usuario
    {
        [Key]
        public int Id_usuario {  get; set; }    

       
        public string Nombre { get; set; }    

        public string Apellido { get; set; } 

        public string correo_usuario { get; set; }

        public string password {  get; set; }    

    }
}
