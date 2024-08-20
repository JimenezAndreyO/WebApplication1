<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioSesion.aspx.cs" Inherits="WebApplication1.InicioSesion" %>


<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RH &#8211; RECURSOS CAM</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="img/logo.png" sizes="192x192" />
    <link rel="apple-touch-icon-precomposed" href="img/logo.png" />
    <meta name="msapplication-TileImage" content="img/logo.png" />
</head>
<body>

<div class="loader-wrapper">
    <section class="dots-container">
        <div style="display: block;">
            <img src="img/logo.png" width="160">
            <div style="display: flex; margin-top: 20px;">
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
            </div>
        </div>
    </section>
</div>

<!-- Script para mostrar/ocultar la pantalla de carga -->
<script>
    setTimeout(function () {
        document.querySelector('.loader-wrapper').style.display = 'none';
        document.querySelector('.main-content').style.display = 'block';
    }, 2000);
</script>

<div class="main-content">
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-transparent">
            <a class="navbar-brand" href="index.html"><img src="img/logo.png" width="160"></a>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="index.html">Inicio</a></li>
                </ul>
            </div>
            <div class="Arriba">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </nav>
    </header>

    <div class="Texto">
        <h3 class="text-left">Inicio de <br><span class="text">Sesion</span> </h3>
        <h5 class="text-secundary">Recursos Humanos CAM</h5>
    </div>

    <section class="approval-form border rounded-lg shadow p-4 position-relative">
        <img src="img/empleado.png" alt="Imagen de jefe" class="boss-image">
        <div class="row" id="row">
            <div class="left">
                <h3 class="text-left">La Gestion Integral es <br><span class="text">Nuestro Compromiso</span> </h3> 
            </div>
            <div class="right">
                <form runat="server">
                    <div class="form-group">
                        <label for="txtUsuario">Usuario</label>
                        <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtContraseña">Contraseña</label>
                        <asp:TextBox ID="txtContraseña" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="form-group s">
                        <asp:Button ID="btnLogin" runat="server" Text="INICIAR" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
                    </div>
                </form>
            </div>
        </div>
    </section>

    <footer class="footer bg-dark text-white mt-5">
        <div class="container py-5">
            <div style="display: flex; width: 100%;">
                <div class="col-md-6">
                    <h5 class="text-uppercase">¿Quiénes somos?</h5>
                    <p>En Recursos CAM, nuestra misión es transformar la gestión de recursos humanos a través de la innovación y la tecnología. Nos especializamos en ofrecer soluciones integrales que simplifican y optimizan la administración de talento, desde la contratación hasta el desarrollo profesional continuo.
                        Nuestro equipo está compuesto por expertos en recursos humanos, tecnología y desarrollo de software, comprometidos en proporcionar herramientas que faciliten la gestión eficiente y eficaz del capital humano. Creemos en el poder de las personas y en el impacto positivo que una buena gestión puede tener en el éxito de una empresa.</p>
                </div>
                <div class="col-md-6">
                    <h5 class="text-uppercase">¿Qué hacemos?</h5>
                    <p>Gestión de Talento: Facilitamos procesos de reclutamiento, selección y retención de talento con herramientas intuitivas y basadas en datos.
                        Desarrollo Profesional: Ofrecemos plataformas para el seguimiento del desempeño, la capacitación y el crecimiento de los empleados.
                        Automatización de Tareas: Implementamos soluciones que automatizan y simplifican tareas administrativas, permitiendo a los equipos de recursos humanos centrarse en lo que realmente importa.</p>
                </div>
            </div>
        </div>
        <div class="text-center py-3 bg-darker">
            <p class="mb-0">&copy; 2024. Recursos CAM.</p>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</div>
</body>
</html>
