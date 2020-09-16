using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Session["CLIENTE"] = null;

        
    }
    //OracleConnection conexion = new OracleConnection("DATA SOURCE =localhost:1521/xe; User Id = USUARIOL; Password = 123;");
    OracleConnection conexion = new OracleConnection("DATA SOURCE =clinicadental.czgp354lepti.us-east-1.rds.amazonaws.com:1521/ORCL; User Id = admin; Password = clinica123;");



    protected void btnEntrar_Click(object sender, EventArgs e)
    {

        conexion.Open();

        OracleCommand codigo = new OracleCommand();

        OracleConnection conectanos = new OracleConnection();

        codigo.Connection = conexion;

        codigo.CommandText = ("SELECT * FROM CLIENTE WHERE MAIL_CLIENTE = '" + txtUsuario.Text + "' AND PASSWORD_CLIENTE = '" + txtContrasena.Text + "' ");

        OracleDataReader leer = codigo.ExecuteReader();

        if (leer.Read())
        {
            Response.Write("<h1>Login exitoso</h1>");

            Session["CLIENTE"] = txtUsuario.Text;

            Response.Redirect("perfil.aspx");


        }
        else
        {
            Response.Write("<script>alert('Usuario/contraseña INCORRECTO');</script>");


        }


    }
}