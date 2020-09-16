using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using clinica.DOLC;

namespace Clinica.Negocio
{
    public class Boleta
    {
        public decimal ID_BOLETA { get; set; }
        public System.DateTime FECHA_BOLETA { get; set; }
        public decimal VALOR_BOLETA { get; set; }
        public Nullable<decimal> ID_MEDIO_PAGO { get; set; }
        public Nullable<decimal> ID_SERVICIO { get; set; }
        public Nullable<decimal> ID_CLIENTE { get; set; }

        public Boleta()
        {
            Init();
        }

        private void Init()
        {
            ID_BOLETA = 0;
            FECHA_BOLETA = new DateTime(1900, 01, 01);
            VALOR_BOLETA = 0;
            ID_MEDIO_PAGO = 0;
            ID_SERVICIO = 0;
            ID_CLIENTE = 0;
        }

        //CRUD
        public bool Create()
        {
            try
            {
                clinica.DOLC.BOLETA bol = new clinica.DOLC.BOLETA();

                bol.ID_BOLETA = ID_BOLETA;
                bol.FECHA_BOLETA = FECHA_BOLETA;
                bol.VALOR_BOLETA = VALOR_BOLETA;
                bol.ID_MEDIO_PAGO = ID_MEDIO_PAGO;
                bol.ID_SERVICIO = ID_SERVICIO;
                bol.ID_CLIENTE = ID_CLIENTE;

                CommonBC.cliente.BOLETA.Add(bol);
                CommonBC._clinicaDental.
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
                DALC.BOLETA bol = CommonBC.ModeloClinica.BOLETA.First(b => b.ID_BOLETA == ID_BOLETA);

                ID_BOLETA = bol.ID_BOLETA;
                FECHA_BOLETA = bol.FECHA_BOLETA;
                VALOR_BOLETA = bol.VALOR_BOLETA;
                ID_MEDIO_PAGO = bol.ID_MEDIO_PAGO;
                ID_SERVICIO = bol.ID_SERVICIO;
                ID_CLIENTE = bol.ID_CLIENTE;

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
                DALC.BOLETA bol = CommonBC.ModeloClinica.BOLETA.First(b => b.ID_BOLETA == ID_BOLETA);

                bol.ID_BOLETA = ID_BOLETA;
                bol.FECHA_BOLETA = FECHA_BOLETA;
                bol.VALOR_BOLETA = VALOR_BOLETA;
                bol.ID_MEDIO_PAGO = ID_MEDIO_PAGO;
                bol.ID_SERVICIO = ID_SERVICIO;
                bol.ID_CLIENTE = ID_CLIENTE;

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
                DALC.BOLETA bol = CommonBC.ModeloClinica.BOLETA.First(b => b.ID_BOLETA == ID_BOLETA);
                CommonBC.ModeloClinica.BOLETA.Remove(bol);
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
