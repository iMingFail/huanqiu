<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>代理商 后台</title>
  <link href="/public/admin/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="/public/admin/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
  <link href="/public/admin/dist/css/sb-admin-2.css" rel="stylesheet">
  <link href="/public/admin/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
  <script src="//cdn.bootcss.com/jquery/1.12.3/jquery.min.js"></script>
  <script src="/public/layer/layer.js"></script>
</head>
<body>
<div id="wrapper">
  <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">

    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/agent">代理商 后台</a>
    </div>

    <ul class="nav navbar-top-links navbar-right">
     
    


     

    </ul>

    <div class="navbar-default sidebar" role="navigation">
      <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">
          <li class="sidebar-search">
            <form method="get" action="/agent/users">
              <div class="input-group custom-search-form"> 
              </div>
            </form>
          </li>
          <li>
            <a class="<?php echo ($active == 'home') ? 'active' : ''; ?>" href="/agent"><i
                  class="fa fa-dashboard fa-fw"></i> 总览</a>
          </li>
          <li>
            <a class="<?php echo ($active == 'users') ? 'active' : ''; ?>" href="/agent/users"><i
                  class="fa fa-user fa-fw"></i> 用户</a>
          </li>
          <li>
            <a href="/agent/signOut"><i class="fa fa-sign-out fa-fw"></i> 退出</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>