using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using Oracle.ManagedDataAccess;


public partial class agendar : System.Web.UI.Page
{
    //OracleConnection conexion = new OracleConnection("DATA SOURCE =localhost:1521/xe; User Id = USUARIOL; Password = 123;");
    OracleConnection conexion = new OracleConnection("DATA SOURCE =clinicadental.czgp354lepti.us-east-1.rds.amazonaws.com:1521/ORCL; User Id = admin; Password = clinica123;");

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["CLIENTE"] == null)
        {
            Response.Redirect("login.aspx");


        }
        else
        {
            //page load

            if (!IsPostBack)
            {
                cargarDoctores();
                cargarServicios();

                conexion.Open();
                String mail = Convert.ToString(Session["CLIENTE"]);
                OracleCommand comando = new OracleCommand("SELECT * FROM CLIENTE WHERE MAIL_CLIENTE = '" + mail + "'", conexion);
                OracleDataReader readerCliente = comando.ExecuteReader();
                while (readerCliente.Read())
                {
                    elJaiden.Value = readerCliente.GetValue(0) + "";
                }


            }


        }
    }



    public void cargarDoctores()
    {
        List<Doctor> lista = new List<Doctor>();


        cboDoctores.Items.Clear();
        conexion.Open();
        OracleCommand cmd = new OracleCommand("SELECT ID_DOC, NOM_DOC ||' '||APE_DOC FROM DOCTOR", conexion);
        OracleDataReader leer = cmd.ExecuteReader();

        while (leer.Read())
        {
            Doctor doctorsito = new Doctor();
            doctorsito.ID_DOC = leer.GetInt32(0);
            doctorsito.NOM_DOC = leer.GetString(1);
            lista.Add(doctorsito);


        }
        conexion.Close();
        cboDoctores.DataSource = lista;
        cboDoctores.DataTextField = "NOM_DOC";
        cboDoctores.DataValueField = "ID_DOC";
        cboDoctores.DataBind();
        cboDoctores.Items.Insert(0, new ListItem("[Seleccione un doctor]", "0"));



    }




    public void cargarServicios()
    {

        cboServicios.Items.Clear();
        conexion.Open();
        //OracleCommand cmd = new OracleCommand("SELECT ID_SERVICIO ,NOM_SERVICIO FROM SERVICIO", conexion);
        OracleCommand cmd = new OracleCommand("SELECT ID_SERVICIO, NOM_SERVICIO||' '||TO_CHAR(valor_servicio, 'L999g999g999') FROM SERVICIO", conexion);
        OracleDataReader leer = cmd.ExecuteReader();
        List<Servicios> lista = new List<Servicios>();

        while (leer.Read())
        {
            Servicios serviciox = new Servicios();
            serviciox.ID_SERVICIO = leer.GetInt32(0);
            serviciox.NOM_SERVICIO = leer.GetString(1);



            lista.Add(serviciox);
        }
        conexion.Close();
        cboServicios.DataSource = lista;
        cboServicios.DataTextField = "NOM_SERVICIO";

        cboServicios.DataValueField = "ID_SERVICIO";
        cboServicios.DataBind();
        cboServicios.Items.Insert(0, new ListItem("[Seleccione un servicio]", "0"));


    }


    protected void btnGuardar_Click(object sender, EventArgs e)
    {
        conexion.Open();


        if (cboDoctores.SelectedIndex == 0)
        {
            Response.Write("<script>alert('DEBE SELECCIONAR UN DOCTOR');</script>");
        }
        else
        {
            if (cboServicios.SelectedIndex == 0)
            {
                Response.Write("<script>alert('DEBE SELECCIONAR UN SERVICIO');</script>");
            }
            else
            {
                OracleCommand comando = new OracleCommand("SELECT * FROM RESERVA WHERE FECHA_HORA_RESERVA = '" + Calendario.Text + "' AND ID_DOC = '" + cboDoctores.SelectedValue + "' ", conexion);
                OracleDataReader leer = comando.ExecuteReader();
                if (leer.Read())
                {
                    Response.Write("<script>alert('LA HORA SE ENCUENTRA RESERVADA');</script>");


                }
                else
                {

                    if (Calendario.Text.Equals(""))
                    {
                        Response.Write("<script>alert('DEBE SELECCIONAR UNA HORA');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('HORA TOMADA CON EXITO');</script>");
                        try
                        {

                            String id = elJaiden.Value;
                            int m = Int32.Parse(id);
                            String queryUsuario = "INSERT INTO RESERVA(FECHA_HORA_RESERVA, ID_DOC, ID_CLIENTE, ID_SERVICIO) VALUES('" + Calendario.Text + "','" + cboDoctores.SelectedValue + "','" + m + "','" + cboServicios.SelectedValue + "')";

                            EjecutarQuery(queryUsuario);
                            
                            conexion.Close();

                            
                        }

                        catch (Exception)
                        {

                            throw;
                        }
                    }


                  
                }


            }


        }




    }


    void EjecutarQuery(String Query)
    {
        OracleCommand comando = new OracleCommand(Query, conexion);
        comando.ExecuteNonQuery();
        conexion.Close();
    }

    public class Doctor
    {
        public decimal ID_DOC { get; set; }
        public string NOM_DOC { get; set; }

        public Doctor()
        {
            Init();
        }

        private void Init()
        {
            ID_DOC = 0;
            NOM_DOC = string.Empty;

        }



    }

    public class Servicios
    {
        public decimal ID_SERVICIO { get; set; }
        public string NOM_SERVICIO { get; set; }

        public Servicios()
        {
            Init();
        }

        private void Init()
        {
            ID_SERVICIO = 0;
            NOM_SERVICIO = string.Empty;

        }
    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
        Response.Cache.SetNoStore();

        Response.Redirect("agendar.aspx");


    }
}