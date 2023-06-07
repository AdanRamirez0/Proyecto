using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Xsl;

public partial class paginas : System.Web.UI.Page
{
    public String TipoMenu = String.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Preguntando si la Url es nulo, en caso de que no pasamos a realizar lo siquiente
        if (Request.QueryString["id"] == null)
        {
            TipoMenu = "0";
        }
        else
        {
            TipoMenu = Request.QueryString["id"];
        }
        TransformaXML();//Haciendo llamar a un objeto o Clase
    }
    private void TransformaXML()
    {
        //atributo nombre.atributo = Acceso a los archivos de configuración "WEB.CONFIG".agregar linea en web.config con la llave derle parametro y se creara el atributo. Que busque en los archivos la dirección y la agregue a la URL
        string xmlPath = ConfigurationManager.AppSettings["FileServer"].ToString() + "xml/servicio.xml";
        string xsltPath = ConfigurationManager.AppSettings["FileServer"].ToString() + "xslt/template.xslt";
        XmlTextReader trMenu = new XmlTextReader(xmlPath);//Utilizando una libreria de xml y que lea el texto o variable a convertir haciendo el parametro xmlPath

        //Crear credenciales
        XmlUrlResolver resolver = new XmlUrlResolver();
        resolver.Credentials = CredentialCache.DefaultCredentials;

        //Crear la configuración para poder acceder al XSLT
        //Los parámetros true son para poder tratar al xslt
        //como documento y poder transformarlo
        XsltSettings settings = new XsltSettings(true, true);

        //Leer XSLT
        XslCompiledTransform xslt = new XslCompiledTransform();
        xslt.Load(xsltPath, settings, resolver);

        //Crear a donde  se envía la Transformación
        StringBuilder sBuilder = new StringBuilder();
        TextWriter tWriter = new StringWriter(sBuilder);
        XsltArgumentList xslArgs = new XsltArgumentList();
        xslArgs.AddParam("TipoMenu", "", TipoMenu);
        xslt.Transform(trMenu, xslArgs, tWriter);
        string resultado = sBuilder.ToString();
        Response.Write(resultado);
    }
}