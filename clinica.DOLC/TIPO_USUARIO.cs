//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace clinica.DOLC
{
    using System;
    using System.Collections.Generic;
    
    public partial class TIPO_USUARIO
    {
        public TIPO_USUARIO()
        {
            this.DOCTOR = new HashSet<DOCTOR>();
            this.EMPLEADO = new HashSet<EMPLEADO>();
        }
    
        public decimal ID_TIPO_USUARIO { get; set; }
        public string NOM_TIPO_USUARIO { get; set; }
    
        public virtual ICollection<DOCTOR> DOCTOR { get; set; }
        public virtual ICollection<EMPLEADO> EMPLEADO { get; set; }
    }
}