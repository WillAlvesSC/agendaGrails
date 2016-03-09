<!DOCTYPE html>

    <title><g:layoutTitle default="${meta(name:'app.name')}" /></title>

        <meta name="description" content="weTransfer Dashboard">
        <meta name="author" content="imaxgames">
        <meta name="keyword" content="">
        <!-- end: Meta -->

        <!-- start: Mobile Specific -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- end: Mobile Specific -->



        <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <r:external id="ie-style" uri="/css/ie.css"/>
        <![endif]-->

        <!--[if IE 9]>
        <r:external id="ie9style"  uri="/css/ie9.css"/>
        <![endif]-->

        <!-- start: Favicon -->
        <link rel="shortcut icon" href="/img/favicon.ico">
        <!-- end: Favicon -->

        <r:external id="bootstrap-style" uri="/css/bootstrap.min.css"  />
        <r:external uri="/css/bootstrap-responsive.min.css"/>
        <r:external id="base-style" uri="/css/style.css"/>
        <r:external  id="base-style-responsive" uri="/css/style-responsive.css" rel="stylesheet"/>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
        <r:external uri="/js/jquery-1.9.1.min.js"  />
        <r:external uri="/js/jquery-migrate-1.0.0.min.js" />
        <r:external uri="/js/jquery-ui-1.10.0.custom.min.js" />
        <r:external uri="/js/jquery.ui.touch-punch.js" />
        <r:external uri="/js/modernizr.js" />
        <r:external uri="/js/bootstrap.min.js" />
        <r:external uri="/js/jquery.cookie.js" />
        <r:external uri="/js/fullcalendar.min.js" />
        <r:external uri="/js/jquery.dataTables.min.js" />
        <r:external uri="/js/excanvas.js" />
        <r:external uri="/js/jquery.flot.js" />
        <r:external uri="/js/jquery.flot.pie.js" />
        <r:external uri="/js/jquery.flot.stack.js" />
        <r:external uri="/js/jquery.flot.resize.min.js"/>
        <r:external uri="/js/jquery.chosen.min.js"/>
        <r:external uri="/js/jquery.chosen.min.js"/>
        <r:external uri="/js/jquery.uniform.min.js"/>
        <r:external uri="/js/jquery.cleditor.min.js"/>
        <r:external uri="/js/jquery.noty.js"/>
        <r:external uri="/js/jquery.elfinder.min.js"/>
        <r:external uri="/js/jquery.raty.min.js"/>
        <r:external uri="/js/jquery.iphone.toggle.js"/>
        <r:external uri="/js/jquery.uploadify-3.1.min.js"/>
        <r:external uri="/js/jquery.gritter.min.js"/>
        <r:external uri="/js/jquery.imagesloaded.js"/>
        <r:external uri="/js/jquery.masonry.min.js"/>
        <r:external uri="/js/jquery.knob.modified.js"/>
        <r:external uri="/js/jquery.sparkline.min.js"/>
        <r:external uri="/js/counter.js"/>
        <r:external uri="/js/retina.js"/>
        <r:external uri="/js/custom.js"/>
        <!-- end: CSS -->





        <r:layoutResources />
        <g:layoutHead />




    </head>

<body>
<style>
#content {
    margin-bottom: 0;
    margin-left: 15%;
    margin-right: 15% !important;
    margin-top: 0;
    padding: 28px;
    width: 70%;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<div class="container-fluid-full">
    <div class="row-fluid">

        <g:render template="/layouts/principal/content" />
    </div>

</div>

</body>
</html>