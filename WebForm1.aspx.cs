using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaluladoraApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack){
                ViewState["Numero1"] = null;
                ViewState["Numero2"] = null;
                ViewState["Operador"] = null;
                ViewState["aux"] = null;
            }
        }

        protected void AgregarNumero(object sender, EventArgs e)
        {
            if (ViewState["Operador"] == null)
            {
                ViewState["Numero1"] += ((Button)sender).Text;
                resultadoTxt.Text = ViewState["Numero1"].ToString();
            } 
            else
            {
                ViewState["aux"] = ((Button)sender).Text;
                ViewState["Numero2"] += ((Button)sender).Text;
                resultadoTxt.Text += ViewState["aux"].ToString();
            }
        }

        protected void AgregarOperador(object sender, EventArgs e)
        {
            ViewState["Operador"] = ((Button)sender).Text;
            resultadoTxt.Text += ViewState["Operador"].ToString();
        }

        protected void igualBtn_Click(object sender, EventArgs e)
        {
            if (ViewState["Numero1"] != null && ViewState["Numero2"] != null && ViewState["Operador"] != null)
            {
                int v1 = Convert.ToInt32(ViewState["Numero1"].ToString());
                int v2 = Convert.ToInt32(ViewState["Numero2"].ToString());

                switch (ViewState["Operador"].ToString())
                {
                    case "+":
                        resultadoTxt.Text = Cuentas.suma(v1, v2).ToString();
                        break;
                    case "-":
                        resultadoTxt.Text = Cuentas.res(v1, v2).ToString();
                        break;
                    case "*":
                        resultadoTxt.Text = Cuentas.mult(v1, v2).ToString();
                        break;
                    case "/":
                        resultadoTxt.Text = Cuentas.div(v1, v2).ToString();
                        break;
                    case "^":
                        resultadoTxt.Text = Cuentas.pot(v1, v2).ToString();
                        break;
                    case "√":
                        resultadoTxt.Text = Cuentas.raiz(v1, v2).ToString();
                        break;
                    case "log":
                        resultadoTxt.Text = Cuentas.log(v1, v2).ToString();
                        break;
                    case "%":
                        resultadoTxt.Text = Cuentas.mod(v1, v2).ToString();
                        break;
                }

                ViewState["Numero1"] = resultadoTxt.Text;
                ViewState["Numero2"] = null;
                ViewState["Operador"] = null;
                ViewState["aux"] = null;

            }
        }

        protected void clear_btn(object sender, EventArgs e)
        {
            ViewState["Numero1"] = null;
            ViewState["Numero2"] = null;
            ViewState["Operador"] = null;
            ViewState["aux"] = null;
            resultadoTxt.Text = null;
        }
        protected void NegativoBtn(object sender, EventArgs e)
        {
            if (ViewState["Numero1"] == null)
            {
                ViewState["Numero1"] += "-";
                resultadoTxt.Text = ViewState["Numero1"].ToString();
            }
            else if (ViewState["Numero2"] == null & ViewState["Operador"] != null)
            {
                ViewState["aux"] = "-";
                ViewState["Numero2"] += "-";
                resultadoTxt.Text += ViewState["aux"].ToString();
            }
            else
            {
                ViewState["Operador"] = "-";
                resultadoTxt.Text += ViewState["Operador"].ToString();
            }
        }

        protected void MostrarCientifica(object sender, EventArgs e)
        {
            if (fila5.Visible)
            {
                fila5.Visible = false;
            }
            else
            {
                fila5.Visible = true;
            }
        }
        public class Cuentas
        {
            public static int suma(int a, int b)
            {
                return a + b;
            }
            public static int div(int a, int b)
            {
                return a / b;
            }
            public static int mult(int a, int b)
            {
                return a * b;
            }
            public static int res(int a, int b)
            {
                return a - b;
            }
            public static int log(int a, int b)
            {
                return Convert.ToInt32(Math.Log(a, b));
            }
            public static int pot(int a, int b)
            {
                return Convert.ToInt32(Math.Pow(a,b));
            }
            public static double raiz(int a, int b)
            {
                return Convert.ToInt32(Math.Pow(b, 1.0 / a));
            }
            public static int mod(int a, int b)
            {
                return a % b;
            }
        }

        
    }
}