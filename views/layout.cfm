<!doctype html>
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
<body class="top-navigation fixed-nav ">

  <cfoutput>

    <!-- Wrapper-->
    <div id="wrapper container">

        <!---
        <!-- Navigation -->
        #includePartial('/shared/navigation')#
        --->

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

  <!-- Mainly scripts -->
  #javaScriptIncludeTag(source="jquery-3.1.1.min",encode="false")#
  #javaScriptIncludeTag(source="bootstrap.min",encode="false")#
  #javaScriptIncludeTag(source="jquery.metisMenu",encode="false")#
  #javaScriptIncludeTag(source="jquery.slimscroll.min",encode="false")#

  <!-- Custom and plugin javascript -->
  #javaScriptIncludeTag(source="inspinia",encode="false")#
  #javaScriptIncludeTag(source="pace.min",encode="false")#

  </cfoutput>

</body>
</html>