using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Clinica.Negocio
{


    public class Control
    {
        public string NOM_CLIENTE { get; set; }
        public System.DateTime FECHA { get; set; }
        public string SERVICIO { get; set; }

        public Control()
        {
            Init();
        }

        private void Init()
        {
            NOM_CLIENTE = String.Empty;
            FECHA = new DateTime(1900, 01, 01);
            SERVICIO = String.Empty;
        }

        //Métodos CRUD: Create-Read-Update-Delete
        public bool Create()
        {
            try
            {
                DALC.CONTROL con = new DALC.CONTROL();
                con.NOM_CLIENTE = NOM_CLIENTE;
                con.FECHA = FECHA;
                con.SERVICIO = SERVICIO;
                CommonBC.ModeloClinica.CONTROL.Add(con);
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
                DALC.CONTROL con = CommonBC.ModeloClinica.CONTROL.First(c => c.NOM_CLIENTE == NOM_CLIENTE);
                NOM_CLIENTE = con.NOM_CLIENTE;
                FECHA = con.FECHA;
                SERVICIO = con.SERVICIO;
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
                DALC.CONTROL con = CommonBC.ModeloClinica.CONTROL.First(c => c.NOM_CLIENTE == NOM_CLIENTE);
                con.NOM_CLIENTE = NOM_CLIENTE;
                con.FECHA = FECHA;
                con.SERVICIO = SERVICIO;
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
                DALC.CONTROL con = CommonBC.ModeloClinica.CONTROL.First(c => c.NOM_CLIENTE == NOM_CLIENTE);
                CommonBC.ModeloClinica.CONTROL.Remove(con);
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
