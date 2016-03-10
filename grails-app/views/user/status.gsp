<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href="res/img/favicon.ico" rel="icon" type="image/x-icon" />

    <title>Minha Agenda</title>

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script type="text/javascript" src="js/modernizr.2.5.3.min.js"></script>
    <!--[if IE]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->


</head>

<body style="padding-top:0" >
<style>

.status {
    margin-left: 40%;
    margin-right: 1%;
    margin-top: 80px;
}
</style>
<nav id="mainBarCarousel"class="navbar navbar-inverse " role="navigation" >

</nav>


<div  style="width: 100%;  background-color: #eeffe4; opacity: 1; filter:alpha(opacity=100); background-image: url('http://s3.amazonaws.com/instapage-user-media-live/129494-0-traingles2.png');">
    <div class="container text-center" style="margin-top: 10%;">
        <div style="display:inline-flex">
            <div class="status">
                <a href="agenda.willalves.com" style=" height: 400px; ">
                    <img src="https://cdn1.iconfinder.com/data/icons/anchor/128/phone.png" style="max-height: 400px;  margin-top: 0px;" alt="">
                </a>
            </div>
            <div class=""">
                <div align="center">
                    <h1>
                        <p style="font-size: 30px; line-height: 140%; color: #ffffff;">

                        </p>
                    </h1>
                </div>
                <br>
                <div align="center">
                    <h1>
                        <p
                        <g:if test="${message == null}">
                            <em>Verifique sua caixa de E-Mails e <strong>confirme seu Cadastro!!!</strong></em>
                        </g:if>
                        <g:if test="${message != null}">
                            <em>${message}</em>
                        </g:if>
                    </p>
                    </h1>
                </div>
                <br><br>
                <div align="center" style="color: #2094e7; font-size: 25px;">


                </div>



                <div align="right">
                    <br>
                    <p style=" line-height: 140%; color: #0c0c0c;">

                        Você será redirecionado para nosso site em <span id="tempo">10</span> segundos.
                    </p>
                    <h5>
                        <p style="margin-top:50px; line-height: 140%; color: #0c0c0c;">
                            <br>
                            <strong>:)</strong>
                        </p>
                    </h5>
                </div>
            </div>
        </div>
    </div>


</body>
<script type="text/javascript">

    var tempo = document.getElementById("tempo").innerHTML;
    var elemento = document.getElementById("tempo");
    function inicio() {
        tempo--;
        elemento.innerHTML = tempo;
        if(tempo == 0) {
            window.location.href = "${createLink(uri: '/')}";
        }
    }

    setInterval(inicio, 1000);
</script>
</html>