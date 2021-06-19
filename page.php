<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(isset($_POST['submit1']))
{
$fname=$_POST['fname'];
$email=$_POST['email'];	
$mobile=$_POST['mobileno'];
$subject=$_POST['subject'];	
$description=$_POST['description'];
$sql="INSERT INTO  tblenquiry(FullName,EmailId,MobileNumber,Subject,Description) VALUES(:fname,:email,:mobile,:subject,:description)";
$query = $dbh->prepare($sql);
$query->bindParam(':fname',$fname,PDO::PARAM_STR);
$query->bindParam(':email',$email,PDO::PARAM_STR);
$query->bindParam(':mobile',$mobile,PDO::PARAM_STR);
$query->bindParam(':subject',$subject,PDO::PARAM_STR);
$query->bindParam(':description',$description,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
$msg="Enquiry  Successfully submited";
}
else 
{
$error="Something went wrong. Please try again";
}

}

?>
<!DOCTYPE HTML>
<html>
<head>
  <style>

    html, body {
    max-width: 100%;
    overflow-x: hidden;
  }
    body {
      font-family: Arial, Helvetica, sans-serif;
      
    }

    

    .column {
      float: left;
      width: 33.3%;
      margin-bottom: 16px;
      padding: 0 8px;
    }

    .card {
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
      margin: 8px;
    }
    .about-section {
      padding: 20px;
      text-align: center;
      background-color: #474e5d;
      color: white;
    }
    

    .container::after, .row::after {
      content: "";
      clear: both;
      display: table;
    }
    .title {
      color: #734e4ea8;
    }
   
  </style>

<title> Turistička agencija </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tourism Management System In PHP" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href="css/font-awesome.css" rel="stylesheet">
<!-- Custom Theme files -->
<script src="js/jquery-1.12.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
  <style>
		.errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
		</style>
</head>
<body>
<!-- top-header -->
<div class="top-header">
<?php include('includes/header.php');?>
<div class="banner-1 ">
	<div class="container">
		<h1 class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">Turistička agencija</h1>
	</div>
</div>
<!--- /banner-1 ---->
<!--- privacy ---->
<div class="privacy">
	<div class="about-section">
  <h1>O nama</h1>
  <p style="color:white;">Odabrana ekipa mladih programera-juniora sa željom i motivacijom za više znanja.</p>
  <p style="color:black;">“Success is not final, failure is not fatal, it is the courage to continue that counts.” – "Winston Churchill".</p>
</div>

<h2 style="text-align:center">Naš Tim</h2>
<div class="row">
  <div class="column" text="center">
    <div class="card">
      <img src="images/emira.jpg" alt="Kemi" style="width:80%">
      <div class="container">
        <br>
        <h2>Emira Šehić</h2>
        <p class="title">Design and Idea creator</p>
        <p> Studentica prve godine MSC studija na Fakultetu <br>za saobraćaj i komunikacije.
        <br> Volim lijepo dizajnirane stranice, pa se nadam da će Vam se<br> i ova naša dopasti. <br>
        </p>
        <p>esehic@gmail.com</p>

        
        
      </div>
    </div>
  </div>

  <div class="column" text="center">
    <div class="card">
      <img src="images/adis.jpg" alt="Dise" style="width:80%">
      <div class="container">
        <br>
        <h2>Adis Požegija</h2>
        <p class="title">Art Director and Debuger</p>
        <p>Student prve godine MSC studija na Fakultetu za saobraćaj i<br>komunikacije.
         Pobrinut ću se za sigurnost ličnih podataka naših <br>klijenata, te za njihovu informisanost o COVID-19 <br>na destinacijama na koje žele putovati. <br>
        <p>dise99@gmail.com</p>
        
      </div>
    </div>
  </div>

  <div class="column" text="center">
    <div class="card">
      <img src="images/belmin.jpg" alt="Bela" style="width:80%">
      <div class="container">
        <br>
        <h2>Belmin Muhović</h2>
        <p class="title">CEO & Founder</p>
        <p>Student prve godine MSC studija na Fakultetu za saobraćaj i<br> komunikacije.
        <br> Volim baze, pa ću pokušati prikupiti što veći broj podataka,<br> jer u njima leži bogatstvo svakog sistema. <br>
        <p>belminmhovic96@hotmail.com</p>
        
        
      </div>
    </div>
  </div>
</div>
</div>
<!--- /privacy ---->
<!--- footer-top ---->
<!--- /footer-top ---->
<?php include('includes/footer.php');?>
<!-- signup -->
<?php include('includes/signup.php');?>			
<!-- //signu -->
<!-- signin -->
<?php include('includes/signin.php');?>			
<!-- //signin -->
<!-- write us -->
<?php include('includes/write-us.php');?>
</body>
</html>