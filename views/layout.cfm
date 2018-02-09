<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>DataPAI</title>

  <link href="/stylesheets/bootstrap.min.css" rel="stylesheet">
  <link href="/stylesheets/font-awesome/css/font-awesome.css" rel="stylesheet">

  <link href="/stylesheets/animate.css" rel="stylesheet">
  <link href="/stylesheets/style.css" rel="stylesheet">

</head>
<body>

  <cfoutput>

    <!-- Wrapper-->
    <div id="wrapper">

        <!-- Navigation -->
        #includePartial('/shared/navigation')#

        <!-- Page wraper -->
        <div id="page-wrapper" class="gray-bg">

            <!-- Page wrapper -->
            #includePartial('/shared/topnavbar')#

            <!-- Main view  -->
            #flashMessages()#
            #includeContent()#

            <!-- Footer -->
            #includePartial('/shared/_footer')#

        </div>
        <!-- End page wrapper-->

    </div>
    <!-- End wrapper-->

  </cfoutput>

<!-- Mainly scripts -->
<script src="/javascript/jquery-3.1.1.min.js"></script>
<script src="/javascript/bootstrap.min.js"></script>
<script src="/javascript/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="/javascript/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="/javascript/inspinia.js"></script>
<script src="/javascript/plugins/pace/pace.min.js"></script>

</body>
</html>