<html lang="en">

<head>
    <base href=" {$url} ">
    <title>{$title}</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="shortcut icon" type="image/png" href="images/favicon.png">
    <!--Bootstrap css-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <!--font-google-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css2?family=Staatliches&display=swap">
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Allerta" />
    <!--otras-fuentes-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/tonsky/FiraCode@5.2/distr/fira_code.css">
    <!--Icons Google Fonts-->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <!--Style css carpete-local-->
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="sweetalert2.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</head>

<body>
    <header>
        <img src="images/banner.png" width="100%" height="35%">
        {if ! isset($login)}
            {include 'templates/nav.tpl'}
        {/if}
    </header>