<?php if($_SESSION['login'])
{?>
<div class="top-header">

	<div class="container">
		<ul class="tp-hd-lft wow fadeInLeft animated" data-wow-delay=".8s">
			<li class="hm"><a href="index.html"><i class="fa fa-home" style="color:black;"></i></a></li>
			<li class="prnt"><a href="profile.php" style="color:black;">Profil</a></li>
				<li class="prnt"><a href="change-password.php" style="color:black;">Promjeni pasword</a></li>
			<li class="prnt"><a href="tour-history.php" style="color:black;">Moja Tour historija</a></li>
		</ul>
		<ul class="tp-hd-rgt wow fadeInRight animated" data-wow-delay=".5s"> 
			<li class="tol" style="color:black;">Dobrodošli:</li>				
			<li class="sig" style="color:black;"><?php echo htmlentities($_SESSION['login']);?></li> 
			<li class="sigi"><a href="logout.php" style="color:black;">/ Logout</a></li>
        </ul>
		<div class="clearfix"></div>
	</div>
</div><?php } else {?>
<div class="top-header">
	<div class="topnav">
		<input type="text" placeholder="Search..">
	

		<div class="container">
			<ul class="tp-hd-lft wow fadeInLeft animated" data-wow-delay=".5s">
				<li class="hm"><a href="index.php"><i class="fa fa-home"style="color:white;" ></i></a></li>
				<li class="hm"><a href="admin/index.php" style="color:white; font-size:20px;">Prijava Admina</a></li>
						
			</ul>
			<ul class="tp-hd-rgt wow fadeInRight animated" data-wow-delay=".5s"> 
									
				<li class="sig"><a href="#" data-toggle="modal" data-target="#myModal" style="color:white; font-size:18px" >Registracija</a></li> 
				<li class="sigi"><a href="#" data-toggle="modal" data-target="#myModal4" style="color:white;font-size:18px" >/ Prijava</a></li>
		    </ul>
				
		</div>
</div>
<?php }?>
<!--- /top-header ---->
<!--- header ---->

<!--- /header ---->
<!--- footer-btm ---->
<div class="footer-btm wow fadeInLeft animated" data-wow-delay=".5s">
	<div class="container">
	<div class="navigation">
		<nav class="cl-effect-1">
			<ul class="nav navbar-nav">
				<li><a href="index.php" style="color:black; font-weight: bolder;">Početna stranica</a></li>
				<li><a href="page.php?type=aboutus" style="color:black; font-weight: bolder;"> O nama </a></li>
				<li><a href="package-list.php" style="color:black;font-weight: bolder;" >Turistički paketi u ponudi</a></li>
								
								
				<li><a href="kontakt.php" style="color:black; font-weight: bolder;"  >Kontakt</a></li>
								

			</ul>
		</nav>
					
			
	</div>
		
		<div class="clearfix"></div>
	</div>
</div>