using System;

namespace ServicioTecnicoCelular.CS
{
    // Clase que representa un servicio como un tipo de ítem
    // Hereda de la clase base `Item`
    public class ItemServicio : Item
    {
        // Propiedad que almacena la cantidad de horas asociadas al servicio
        public int Horas { get; set; }

        // Sobrescribe el método `MostrarInformacion` de la clase base `Item`
        public override void MostrarInformacion()
        {
            // Llama al método base para mostrar información común del ítem
            base.MostrarInformacion();
            // Agrega información específica de las horas del servicio
            Console.WriteLine($"Horas de Servicio: {Horas}");
        }
    }
}
