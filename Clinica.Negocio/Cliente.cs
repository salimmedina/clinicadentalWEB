using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Clinica.Negocio
{
    public class Cliente
    {
        public decimal ID_CLIENTE { get; set; }
        public string NOM_CLIENTE { get; set; }
        public string APE_CLIENTE { get; set; }
        public string RUT_CLIENTE { get; set; }
        public string DIRE_CLIENTE { get; set; }
        public string FONO_CLIENTE { get; set; }
        public string MAIL_CLIENTE { get; set; }
        public string PASSWORD_CLIENTE { get; set; }
        public Nullable<decimal> ID_SIT_ECO { get; set; }

        public Cliente()
        {
            Init();
        }

        private void Init()
        {
            ID_CLIENTE = 0;
            NOM_CLIENTE = string.Empty;
            APE_CLIENTE = string.Empty;
            RUT_CLIENTE = string.Empty;
            DIRE_CLIENTE = string.Empty;
            FONO_CLIENTE = string.Empty;
            MAIL_CLIENTE = string.Empty;
            PASSWORD_CLIENTE = string.Empty;
            ID_SIT_ECO = 0;
        }

        //CRUD

        public bool Create()
        {
            try
            {
                DALC.CLIENTE cli = new DALC.CLIENTE();

                cli.ID_CLIENTE = ID_CLIENTE;
                cli.NOM_CLIENTE = NOM_CLIENTE;
                cli.APE_CLIENTE = APE_CLIENTE;
                cli.RUT_CLIENTE = RUT_CLIENTE;
                cli.DIRE_CLIENTE = cli.DIRE_CLIENTE;
                cli.FONO_CLIENTE = FONO_CLIENTE;
                cli.MAIL_CLIENTE = MAIL_CLIENTE;
                cli.PASSWORD_CLIENTE = PASSWORD_CLIENTE;
                cli.ID_SIT_ECO = ID_SIT_ECO;


                CommonBC.ModeloClinica.CLIENTE.Add(cli);
                CommonBC.ModeloClinica.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Read()
        {
            try
            {
                DALC.CLIENTE cli = CommonBC.ModeloClinica.CLIENTE.First(c => c.ID_CLIENTE == ID_CLIENTE);

                ID_CLIENTE = cli.ID_CLIENTE;
                NOM_CLIENTE = cli.NOM_CLIENTE;
                APE_CLIENTE = cli.APE_CLIENTE;
                RUT_CLIENTE = cli.RUT_CLIENTE;
                DIRE_CLIENTE = cli.DIRE_CLIENTE;
                FONO_CLIENTE = cli.FONO_CLIENTE;
                MAIL_CLIENTE = cli.MAIL_CLIENTE;
                PASSWORD_CLIENTE = cli.PASSWORD_CLIENTE;
                ID_SIT_ECO = cli.ID_SIT_ECO;

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Update()
        {
            try
            {
                DALC.CLIENTE cli = CommonBC.ModeloClinica.CLIENTE.First(c => c.ID_CLIENTE == ID_CLIENTE);

                cli.ID_CLIENTE = ID_CLIENTE;
                cli.NOM_CLIENTE = NOM_CLIENTE;
                cli.APE_CLIENTE = APE_CLIENTE;
                cli.RUT_CLIENTE = RUT_CLIENTE;
                cli.DIRE_CLIENTE = DIRE_CLIENTE;
                cli.FONO_CLIENTE = FONO_CLIENTE;
                cli.MAIL_CLIENTE = MAIL_CLIENTE;
                cli.PASSWORD_CLIENTE = PASSWORD_CLIENTE;
                cli.ID_SIT_ECO = ID_SIT_ECO;

                CommonBC.ModeloClinica.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public bool Delete()
        {
            try
            {
                DALC.CLIENTE cli = CommonBC.ModeloClinica.CLIENTE.First(c => c.ID_CLIENTE == ID_CLIENTE);
                CommonBC.ModeloClinica.CLIENTE.Remove(cli);
                CommonBC.ModeloClinica.SaveChanges();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }


    }
}
