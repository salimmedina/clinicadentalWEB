using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.tool.xml;
using iTextSharp.text.html.simpleparser;
using System.IO;

public partial class boletas : System.Web.UI.Page
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
        {//page load

            if (!IsPostBack)
            {
                llenarTabla();
                String mail = Convert.ToString(Session["CLIENTE"]);
                OracleCommand comando = new OracleCommand("SELECT * FROM CLIENTE WHERE MAIL_CLIENTE = '" + mail + "'", conexion);
                OracleDataReader readerCliente = comando.ExecuteReader();
                while (readerCliente.Read())
                {
                    elEscondido.Value = readerCliente.GetValue(0) + "";
                }
                String id = elEscondido.Value;
                int m = Int32.Parse(id);
                try
                {
                    OracleDataAdapter cmd = new OracleDataAdapter("SELECT RESERVA.ID_RESERVA NUMERO_RESERVA,RESERVA.FECHA_HORA_RESERVA FECHA_HORA,to_char(SERVICIO.VALOR_SERVICIO, 'L999g999g999')VALOR,SERVICIO.NOM_SERVICIO SERVICIO,DOCTOR.NOM_DOC  ||' '||DOCTOR.APE_DOC AS NOMBRE_DOCTOR FROM SERVICIO JOIN RESERVA ON RESERVA.ID_SERVICIO = SERVICIO.ID_SERVICIO JOIN DOCTOR ON DOCTOR.ID_DOC = RESERVA.ID_DOC JOIN CLIENTE ON CLIENTE.ID_CLIENTE = RESERVA.ID_CLIENTE WHERE CLIENTE.ID_CLIENTE = '" + m + "'", conexion);
                    DataSet ds = new DataSet();
                    cmd.Fill(ds);
                    tblBoleta.DataSource = ds;
                    tblBoleta.DataBind();
                    conexion.Close();
                }
                catch (Exception)
                {
                    throw;
                }
                //---verificar que existan tablas
                conexion.Open();
                OracleCommand comendo = new OracleCommand("SELECT * FROM RESERVA WHERE ID_CLIENTE = '" + elEscondido.Value + "'", conexion);
                OracleDataReader leer = comendo.ExecuteReader();

                if (leer.Read() == false)
                {
                    TituloBoleta.Text = "NO SE HAN ENCONTRADO RESERVAS";
                }
                else
                {

                    TituloBoleta.Text = " ";

                }


            }
        }
    }



    public void llenarTabla()
    {
        conexion.Open();
    }





    protected void ImprimirBoleta_Click(object sender, EventArgs e)
    {
        int pocotexto = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
        String id_cliente = tblBoleta.Rows[pocotexto].Cells[1].Text;
        String Fecha_consulta = tblBoleta.Rows[pocotexto].Cells[2].Text;
        String CostoConsulta = tblBoleta.Rows[pocotexto].Cells[3].Text;
        String tratamiento = tblBoleta.Rows[pocotexto].Cells[4].Text;
        String nom_doc = tblBoleta.Rows[pocotexto].Cells[5].Text;
        try
        {
            Document pdfDoc = new Document(PageSize.A4, 10, 10, 10, 10);
            try
            {
                PdfWriter.GetInstance(pdfDoc, System.Web.HttpContext.Current.Response.OutputStream);
                //Open PDF Document to write data 
                pdfDoc.Open();
                string cadenaFinal = "";
                string path = Server.MapPath("/img/dientefeliz.jpg");
                cadenaFinal += "<img src='" + path + "' Height='200' Width='350' /><br/><br/>";
                cadenaFinal += "<TABLE BORDER='1'><TR><TD>ID CLIENTE:</TD><TD>" + id_cliente + "</TD></TR> "+
                                                "<TR><TD>FECHA:</TD><TD>"+ Fecha_consulta +"</TD></TR>"+
                                                "<TR><TD>COSTO: CONSULTA:</TD><TD>" + CostoConsulta + " Pesos</TD></TR>"+
                                                "TR><TD>TRATAMIENTO:</TD><TD>" + tratamiento + "</TD></TR>"+
                                                "TR><TD>NOMBRE DOCTOR:</TD><TD>" + nom_doc + "</TD></TR></TABLE>";
                //Assign Html content in a string to write in PDF 
                string strContent = cadenaFinal;
                //Read string contents using stream reader and convert html to parsed conent 
                var parsedHtmlElements = HTMLWorker.ParseToList(new StringReader(strContent), null);
                //Get each array values from parsed elements and add to the PDF document 
                foreach (var htmlElement in parsedHtmlElements)
                    pdfDoc.Add(htmlElement as IElement);
                //Close your PDF 
                pdfDoc.Close();
                Response.ContentType = "application/pdf";
                //Set default file Name as current datetime 
                Response.AddHeader("content-disposition", "attachment; filename=BoletaLindaSonrisa.pdf");
                System.Web.HttpContext.Current.Response.Write(pdfDoc);

                Response.Flush();
                Response.End();

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }
        catch(Exception ee) {

            throw ee;
        }

   }









    protected void EliminarBoleta_Click(object sender, EventArgs e)
    {
        int pocotexto = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
        String ID_RESERVA = tblBoleta.Rows[pocotexto].Cells[1].Text;
        conexion.Open();
        OracleCommand comando = new OracleCommand("SELECT * FROM RESERVA WHERE ID_RESERVA ='" + ID_RESERVA + "'", conexion);
        OracleDataReader leer = comando.ExecuteReader();
        if (leer.Read())
        {
            OracleCommand coman = new OracleCommand("DELETE FROM RESERVA WHERE ID_RESERVA='" + ID_RESERVA + "'", conexion);
            OracleDataReader lea = coman.ExecuteReader();
            if (lea.Read() == false)
            {
                Response.Write("<script>alert('RESERVA ELIMINADA CON EXITO');</script>");
                conexion.Close();
                Response.Redirect("boletas.aspx");
            }
        }
    }
}
