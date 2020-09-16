using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Clinica.Negocio
{
    public class Reserva
    {
        public decimal ID_RESERVA { get; set; }
        public System.DateTime FECHA_RESERVA { get; set; }
        public Nullable<System.DateTime> HORA_RESERVA { get; set; }
        public Nullable<decimal> ID_DOC { get; set; }
        public Nullable<decimal> ID_CLIENTE { get; set; }
        public Nullable<decimal> ID_SERVICIO { get; set; }

        public Reserva()
        {
            Init();
        }

        private void Init()
        {
            ID_RESERVA = 0;
            FECHA_RESERVA = new DateTime(1900, 01, 01);
            HORA_RESERVA = new DateTime(0, 0, 0, 01, 01, 0, 0); //Revisar
            ID_DOC = 0;
            ID_CLIENTE = 0;
            ID_SERVICIO = 0;
        }

        //Métodos CRUD: Create-Read-Update-Delete
        public bool Create()
        {
            try
            {
                DALC.RESERVA res = new DALC.RESERVA();

                res.ID_RESERVA = ID_RESERVA;
                res.FECHA_RESERVA = FECHA_RESERVA;
                res.HORA_RESERVA = HORA_RESERVA;
                res.ID_SERVICIO = ID_SERVICIO;

                CommonBC.ModeloClinica.RESERVA.Add(res);
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
                DALC.RESERVA res = CommonBC.ModeloClinica.RESERVA.First(r => r.ID_RESERVA == ID_RESERVA);

                ID_RESERVA = res.ID_RESERVA;
                FECHA_RESERVA = res.FECHA_RESERVA;
                HORA_RESERVA = res.HORA_RESERVA;
                ID_SERVICIO = res.ID_SERVICIO;

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
                DALC.RESERVA res = CommonBC.ModeloClinica.RESERVA.First(r => r.ID_RESERVA == ID_RESERVA);

                res.ID_RESERVA = ID_RESERVA;
                res.FECHA_RESERVA = FECHA_RESERVA;
                res.HORA_RESERVA = HORA_RESERVA;
                res.ID_SERVICIO = ID_SERVICIO;

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
                DALC.RESERVA res = CommonBC.ModeloClinica.RESERVA.First(r => r.ID_RESERVA == ID_RESERVA);

                CommonBC.ModeloClinica.RESERVA.Remove(res);
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
