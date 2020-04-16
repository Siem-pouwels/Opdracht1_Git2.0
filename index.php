<?php 
include 'inc/functions.php';
//dit is voor git
$teams = getTeams();

if(isset($_GET['teamId']))
{
    $teamId = $_GET['teamId'];
    $players = getPlayers($teamId);
}
else
{
    $players = getPlayers();
}

if(isset($_GET['playerId']))
{
	$playerId = $_GET['playerId'];
	$playersInfo = getPlayersId($playerId);
}

function myDump($var)
{
	echo "<pre>";
	var_dump($var);
	echo "</pre>";
	
}

$heroId = rand(1,8);
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="description" content="Eredivisie">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet" type="text/css" />
	<title>Eredivisie</title>
</head>
<body>

<header id="header">
        <img src="./images/eredivisie.png" id="logo-image" height="200px" width="200px">
    <div id="logo-text">Teams</div>
</header>

<div id="main-container">
	<div id="main-left">
		<div id="headers">Teams</div>
		<?php
			foreach($teams as $key => $team)
			{
				?>
				<li class="teams-text"><a href="index.php?teamId=<?php echo $team['teamId'];?>"><?php echo $team['teamName'];?></a></li>
				<?php
			};
			?>
	</div>


	<div id="main-center">
		<div id="players-container">
			<?php
			foreach($players as $key => $player)
			{
				?>
				<ul> 
					<li class="players-text"><?php echo $player['playerName'];?></li>
					<img class="player-image" src="<?php echo $player['playerImage']?>">
					<li class="player-description"><?php echo $player['playerDescription'];?></li>
					<li><a href="index.php?teamId=<?php echo $player['teamId'];?>&playerId=<?php echo $player['playerId'];?>">More info</li></a>
				</ul>
				<?php
			};
			?>
		</div>
		</div>
		</div>


		<div id="main-right"><!-- This is the right container -->
		<?php
        if(isset($playerId)) {
     	?>
			<div id="footballfield-container">
			<ul> 
				<li id="player-name-right"><?php echo $playersInfo['playerName']?></li>
			</ul>

				<ul> 
					<img class="player-image-right" src="<?php echo $playersInfo['playerImage']?>">
				</ul>
			</div>
		
		<?php
	} else {
        ?><li id ="error-message"><?php echo "No player selected, please select one.";?></li>
		<?php
      }
        ?>

<div id="submit-container">
	<?php

	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		
	}
	?>
	<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" class="frmRate">
	<fieldset>
		<div class="rate">
			<input type="radio" id="rating10" name="rating" value="10" />
			<label class="lblRating" for="rating10" title="5 stars"></label>

			<input type="radio" id="rating9" name="rating" value="9" />
			<label class="lblRating half" for="rating9" title="4 1/2 stars"></label>

			<input type="radio" id="rating8" name="rating" value="8" />
			<label class="lblRating" for="rating8" title="4 stars"></label>

			<input type="radio" id="rating7" name="rating" value="7"  />
			<label class="lblRating half" for="rating7" title="3 1/2 stars"></label>

			<input type="radio" id="rating6" name="rating" value="6" />
			<label class="lblRating" for="rating6" title="3 stars"></label>

			<input type="radio" id="rating5" name="rating" value="5" />
			<label class="lblRating half" for="rating5" title="2 1/2 stars"></label>

			<input type="radio" id="rating4" name="rating" value="4" />
			<label class="lblRating" for="rating4" title="2 stars"></label>

			<input type="radio" id="rating3" name="rating" value="3" />
			<label class="lblRating half" for="rating3" title="1 1/2 stars"></label>

			<input type="radio" id="rating2" name="rating" value="2" />
			<label class="lblRating" for="rating2" title="1 star"></label>

			<input type="radio" id="rating1" name="rating" value="1" />
			<label class="lblRating half" for="rating1" title="1/2 star"></label>

			<input type="radio" id="rating0" name="rating" value="0" />
			<label class="lblRating" for="rating0" title="No star"></label>
		</div>

		<textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

		<div class="divSubmit">
			<input type="submit" name="submitRating" value="Rate Hero"/>
			<input type="hidden" name="heroId" value="<?php echo $heroId; ?>"/>
		</div>
	</fieldset>
</form>
</div> <!-- End of the main container -->
</div>	
</body>
<footer>&copySiem Pouwels</footer>
</html>