<!DOCTYPE html>
<html lang="en-US">
<head>    
    <meta charset="utf-8">
    <title><?php echo(isset($title) ? $title : ''); ?></title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>   
    
    <script src="/static/js/scripts.js"></script>    

    <link rel="stylesheet" href="/static/css/sticky-footer-navbar.css">
    <link rel="stylesheet" href="/static/css/styles.css">
</head>
<body>

    <!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
          
        <div class="header">
          <ul class="nav nav-pills pull-right restricted-area">
              <li class="restricted-area"><button type="button" class="btn btn-default btn-sm">
                      <a href="/admin"><span class="glyphicon glyphicon-edit"></span> Admin zone</a>
                  </button>
              </li>   
              <?php if (\Core\Auth::isAuth()) { ?>
              <li class="restricted-area">
                  <button type="button" class="btn btn-default btn-sm">
                      <a href="/login/logout/"><span class="glyphicon glyphicon-log-in"></span> Logout</a>
                  </button>
              </li>
              <?php } else { ?>
              <li class="restricted-area">
                  <button type="button" class="btn btn-default btn-sm">
                      <a href="/login/"><span class="glyphicon glyphicon-log-out"></span> Login</a>
                  </button>
              </li>
              <?php } ?>
          </ul>
          <div class="navbar-header">
            <a class="navbar-brand" href="/"><span class="glyphicon glyphicon-pencil"></span> Task Manager</a>
          </div>
        </div>          
          
      </div>
    </div>

    <!-- Begin page content -->
    <div class="container">
