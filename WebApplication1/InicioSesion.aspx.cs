using System;
using System.Data.SqlClient;
using System.Data;
using System.Web;
using System.Web.UI;

namespace WebApplication1
{
    public partial class InicioSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string usuario = txtUsuario.Text;
            string contraseña = txtContraseña.Text;

            string connectionString = "Server=tcp:proyectositios.database.windows.net,1433;Initial Catalog=ProyectoSitiosPrueba;Persist Security Info=False;User ID=AndreuSitios;Password=m!B3JDCHCXNcCVV;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("sp_IniciarSesion", conn))

                {

                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Usuario", usuario);
                    cmd.Parameters.AddWithValue("@Contraseña", contraseña);


                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        string rol = reader["RolNombre"].ToString();
                        string cedula = reader["Cedula"].ToString();



                        Session["Usuario"] = usuario;
                        Session["Rol"] = rol;
                        Session["Cedula"] = cedula;


                        if (rol == "RHH")
                        {
                            Response.Redirect("PaginaRecurosHumanos.aspx");
                        }
                        else if (rol == "Jefatura")
                        {
                            Response.Redirect("PaginaJefe.aspx");
                        }
                        else if (rol == "Empleado")
                        {
                            Response.Redirect("PaginaEmpleado.aspx");
                        }
                        else
                        {
                            Response.Write("<script>alert('Error en la solicitud');</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Error en contraseña o usuario.');</script>");
                    }
                }
            }
        }
    }
}