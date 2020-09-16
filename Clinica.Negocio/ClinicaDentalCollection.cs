using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Clinica.Negocio
{
    public class ClinicaDentalCollection
    {
        private List<Cliente> GenerarListado(List<DALC.CLIENTE> clientesDALC)
        {
            List<Cliente> clientes = new List<Cliente>();
            foreach (DALC.CLIENTE c in clientesDALC)
            {
                Cliente cli = new Cliente();
                cli.ID_CLIENTE = c.ID_CLIENTE;
                cli.NOM_CLIENTE = c.NOM_CLIENTE;
                cli.APE_CLIENTE = c.APE_CLIENTE;
                cli.RUT_CLIENTE = c.RUT_CLIENTE;
                cli.DIRE_CLIENTE = c.DIRE_CLIENTE;
                cli.FONO_CLIENTE = c.FONO_CLIENTE;
                cli.MAIL_CLIENTE = c.MAIL_CLIENTE;
                cli.PASSWORD_CLIENTE = c.PASSWORD_CLIENTE;
                cli.ID_SIT_ECO = c.ID_SIT_ECO;

                clientes.Add(cli);
            }
            return clientes;
        }
        public List<Cliente> ReadAll()
        {
            var cliente = CommonBC.ModeloClinica.CLIENTE;
            return GenerarListado(cliente.ToList());
        }

        //METODOS CUSTOM

    }
}
