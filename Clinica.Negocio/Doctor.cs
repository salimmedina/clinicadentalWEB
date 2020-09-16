using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Clinica.Negocio
{
    public class Doctor
    {
        public decimal ID_DOC { get; set; }
        public string NOM_DOC { get; set; }
        public string APE_DOC { get; set; }
        public string RUT_DOC { get; set; }
        public string DIRE_DOC { get; set; }
        public string FONO_DOC { get; set; }
        public string MAIL_DOC { get; set; }
       public decimal ID_TIPO_USUARIO { get; set; }

        public Doctor()
        {
            Init();
        }

        private void Init()
        {
            ID_DOC = 0;
            NOM_DOC = string.Empty;
            APE_DOC = string.Empty;
            RUT_DOC = string.Empty;
            DIRE_DOC = string.Empty;
            FONO_DOC = string.Empty;
            MAIL_DOC = string.Empty;
            ID_TIPO_USUARIO = 0;
        }



    }
}
