using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class perfil : System.Web.UI.Page
{
    //OracleConnection conexion = new OracleConnection("DATA SOURCE =localhost:1521/xe; User Id = USUARIOL; Password = 123;");
    OracleConnection conexion = new OracleConnection("DATA SOURCE =clinicadental.czgp354lepti.us-east-1.rds.amazonaws.com:1521/ORCL; User Id = admin; Password = clinica123;");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CLIENTE"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else {
            conexion.Open();

            String mail = Convert.ToString(Session["CLIENTE"]);

            OracleCommand comando = new OracleCommand("SELECT * FROM CLIENTE WHERE MAIL_CLIENTE = '" + mail + "'", conexion);

            OracleDataReader lector = comando.ExecuteReader();

            if (!IsPostBack)
            {
                string queryString = "SELECT * FROM CLIENTE WHERE MAIL_CLIENTE = '" + mail + "'";

                OracleCommand cliente = new OracleCommand(queryString, conexion);

                OracleDataReader readerCliente = cliente.ExecuteReader();

                try
                {
                    while (readerCliente.Read())
                    {


                        lblNombre.Text = readerCliente.GetValue(1) + "";

                        lblApellido.Text = readerCliente.GetValue(2) + "";

                        lblRut.Text = readerCliente.GetValue(3) + "";

                        lblDireccion.Text = readerCliente.GetValue(4) + "";

                        lblNumero.Text = readerCliente.GetValue(5) + "";

                        lblCorreo.Text = readerCliente.GetValue(6) + "";

                        lblContrasena.Text = readerCliente.GetValue(7) + "";


                    }
                }
                finally
                {

                    readerCliente.Close();
                }

            }



        }
    }






    protected void btnActualizar_Click(object sender, EventArgs e)
    {


        if (lblDireccion.Text == " " || lblNumero.Text == " " || lblContrasena.Text == " " || lblpass2.Text == " ")
        {
            Response.Write("<script>alert('Todos los datos son obligatorios');</script>");
            return;
        }
        else {
            if (lblContrasena.Text.Length<=5 || lblpass2.Text.Length<=5)
            {
                Response.Write("<script>alert('La contraseña tiene que ser mayor a 5 digitos');</script>");
            }
            else
            {

                String rutTemp = Convert.ToString(Session["CLIENTE"]);

                String tempDireccion = lblDireccion.Text.Trim();
                int tempNumero = Int32.Parse(lblNumero.Text.Trim());
                String tempContraseña = lblContrasena.Text.Trim();



                String queryEdit = "UPDATE CLIENTE set DIRE_CLIENTE = '" + tempDireccion +
                    "', FONO_CLIENTE = '" + tempNumero +
                    "', PASSWORD_CLIENTE = '" + tempContraseña +
                    "' where MAIL_CLIENTE = '" + rutTemp + "'";

                OracleCommand editar = new OracleCommand(queryEdit, conexion);

                //conexion.Open();

                editar.ExecuteReader();

                Response.Write("<script>alert('Informacion actualizada');</script>");


            }
        }

    }



    protected void btncerrarSesion_Click(object sender, EventArgs e)
    {
        Session.Abandon() ;

        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
        Response.Cache.SetNoStore();

        Response.Redirect("login.aspx");

    }





    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
        Response.Cache.SetNoStore();

        Response.Redirect("perfil.aspx");
    }
}



