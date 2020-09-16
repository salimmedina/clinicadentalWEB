using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using clinica.DOLC;

namespace Clinica.Negocio
{
    class CommonBC
    {
        public static Cliente _clinicaDental;

        public static Cliente modeloClinica {

            get {
                if (_clinicaDental == null)
                {
                    _clinicaDental = new Cliente();
                }
                return _clinicaDental;
            }
        }

        public CommonBC() { }


    }
}
