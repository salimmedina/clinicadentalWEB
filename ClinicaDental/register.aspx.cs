using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class register : System.Web.UI.Page
{
    //OracleConnection conexion = new OracleConnection("DATA SOURCE =localhost:1521/xe; User Id = USUARIOL; Password = 123;");
    OracleConnection conexion = new OracleConnection("DATA SOURCE =clinicadental.czgp354lepti.us-east-1.rds.amazonaws.com:1521/ORCL; User Id = admin; Password = clinica123;");

    String password;

    protected void Page_Load(object sender, EventArgs e)
    {//ABRIENDO UNA CONEXION

        

        if (!IsPostBack)
        {
            
          cargarSituacionEco();
         




        }
    }

        protected void btnCrear_Click(object sender, EventArgs e)
    {
        conexion.Open();

        //VERIFICANDO QUE LOS PARAMETROS NO VENGAN EN VACIO
        if (!(lblNombre.Text == "" || lblApellido.Text == "" || lblRut.Text == "" || lblDireccion.Text == "" || lblNumero.Text == "" || lblCorreo.Text == "" || txtSueldo.Text==""||
        lblContrasena.Text == "" || lblpass2.Text == "" ))
        {
            //VERIFICANDO QUE CIERTOS PARAMETROS SEAN TENGAN UN MINIMO PARA INGRESARSE
            if (lblContrasena.Text.Length < 5 || lblNombre.Text.Length < 4 || lblRut.Text.Length <= 8 & lblRut.Text.Length >= 10 || txtSueldo.Text.Length<=4 ||  lblApellido.Text.Length < 4 || validarEmail(lblCorreo.Text)==false || lblNumero.Text.Length <= 8 & lblNumero.Text.Length >= 10)
            {
                Response.Write("<script>alert('algunos datos tienen que ser redefinidos');</script>");
            }
            else
            {
                if (cboSituacion.SelectedIndex==0)
                {
                    Response.Write("<script>alert('DEBE SELECCIONAR UNA AFP');</script>");
                }
                else {
                    OracleCommand codigo = new OracleCommand();

                    OracleConnection conectanos = new OracleConnection();

                    codigo.Connection = conexion;
                    //CREANDO QUERYS PARA VERIFICAR SI ESTAN DENTRO DE LA BASE DE DATOS

                    codigo.CommandText = ("SELECT * FROM CLIENTE WHERE RUT_CLIENTE = '" + lblRut.Text + "' OR MAIL_CLIENTE = '" + lblCorreo.Text + "' ");


                    OracleDataReader leer = codigo.ExecuteReader();

                    if (leer.Read())//SI EL COMANDO LEE QUE ESTAN DENTRO ARROJA MENSAJE DE ERROR
                    {
                        Response.Write("<script>alert('CORREO O RUT YA INGRESADO');</script>");
                    }
                    else
                    {
                        int situacion = Int32.Parse(cboSituacion.SelectedValue);

                        //INSERTANDO LOS DATOS VERIFICADOS DENTRO DE LA BASE DE DATOS
                        // String queryUsuario = " INSERT INTO CLIENTE( NOM_CLIENTE, APE_CLIENTE, RUT_CLIENTE, DIRE_CLIENTE, FONO_CLIENTE, MAIL_CLIENTE, PASSWORD_CLIENTE, ID_SIT_ECO, SUELDO_CLIENTE) VALUES('" + lblNombre.Text + "','" + lblApellido.Text + "','" + lblRut.Text + "','" + lblDireccion.Text + "','" + lblNumero.Text + "','" + lblCorreo.Text + "','" + lblContrasena.Text + "','" + cboSituacion.SelectedValue + "','"+txtSueldo.Text+ "')";
                        String queryUsuario = "INSERT INTO CLIENTE(NOM_CLIENTE, APE_CLIENTE,RUT_CLIENTE,DIRE_CLIENTE,FONO_CLIENTE,MAIL_CLIENTE,PASSWORD_CLIENTE,ID_SIT_ECO,SUELDO_CLIENTE) VALUES('" + lblNombre.Text + "','" + lblApellido.Text + "','" + lblRut.Text + "','" + lblDireccion.Text + "','" + lblNumero.Text + "','" + lblCorreo.Text + "','" + lblContrasena.Text + "','" + situacion + "','" + txtSueldo.Text + "')";
                        EjecutarQuery(queryUsuario);
                        conexion.Close();
                        //---------------------------------------
                        //ABANDONANDO LA SESION PARA NO ENTREGAR PARAMETROS ESCRITOS
                        Session.Abandon();
                        //BORRANDO EL CACHE DE LA SESION....CREO
                        //Response.Cache.SetCacheability(HttpCacheability.NoCache);
                        //Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));-
                        //Response.Cache.SetNoStore();
                        Response.Redirect("login.aspx");
                    }


                }
            }
        }
        else
        {
            Response.Write("los parametros tienen que estar rellenados en su totalidad");
        }
    }

    Boolean evaluaSiExiste(String Query)
    {
        OracleCommand comando = new OracleCommand(Query, conexion);
        conexion.Open();
        comando.ExecuteNonQuery();
        OracleDataReader readerUsuario = comando.ExecuteReader();

        if (readerUsuario.HasRows)
        {
            conexion.Close();
            return true;
        }
        else
        {
            conexion.Close();
            return false;
        }

    }

    void EjecutarQuery(String Query)
    {
        OracleCommand comando = new OracleCommand(Query, conexion);
        comando.ExecuteNonQuery();
        conexion.Close();
    }

    public void cargarSituacionEco()
    {
        cboSituacion.Items.Clear();

        conexion.Open();
        
        OracleCommand cmd = new OracleCommand("SELECT ID_SIT_ECO, AFP FROM SITUACION_ECONOMICA", conexion);

        OracleDataReader leer = cmd.ExecuteReader();

        List<SITUACION_ECONOMICA> lista = new List<SITUACION_ECONOMICA>();

        while (leer.Read())
        {
            SITUACION_ECONOMICA situacionx = new SITUACION_ECONOMICA();
            situacionx.ID_SIT_ECO = leer.GetInt32(0);
            situacionx.AFP = leer.GetString(1);
            lista.Add(situacionx);
            
        }
        conexion.Close();
        cboSituacion.DataSource = lista;
        cboSituacion.DataTextField = "AFP";
        cboSituacion.DataValueField = "ID_SIT_ECO";
        cboSituacion.DataBind();
        cboSituacion.Items.Insert(0, new ListItem("--Seleccione una AFP--", "0"));
    }

    public static bool validarEmail(string email)
    { bool valida = false;
        String expresion;
        expresion = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
        if (Regex.IsMatch(email, expresion))
        {
            if (Regex.Replace(email, expresion, String.Empty).Length == 0)
            {
                valida = true;
                return valida;
            }
            else { valida = false; return valida ; }
        }
        return valida;
    }

    public class SITUACION_ECONOMICA
    {
        public decimal ID_SIT_ECO { get; set; }
        public string AFP { get; set; }

        public SITUACION_ECONOMICA()
        {
            Init();
        }

        private void Init()
        {
            ID_SIT_ECO = 0;
            AFP = string.Empty;
        }
    }
}