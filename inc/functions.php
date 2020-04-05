<?php 

function dBconnect()
{
    $host       ="localhost";
    $user       ="root";
    $pass       ="";
    $database   ="footballclubs";
    $connection = mysqli_connect($host, $user, $pass, $database) or die(mysli_error($connection));

    return $connection;
}

function getTeams()
{
    //connect to database
    $connection = dBconnect();
    //define an empty array to store teams
    $teams = array();
    //define the query to fetch data from the database
    $getTeamsSQL = "
    SELECT * FROM `teams` ORDER BY `teamName` ASC
    ";

    //perform $query on $con and store resource
    $resource = mysqli_query($connection, $getTeamsSQL) or die (mysqli_error($connection));

    while($row = mysqli_fetch_assoc($resource))
    {
        //add new items to $teams 
        $teams[] = $row;
    }

    return $teams;
}

function getPlayers($teamId = false)
{
    //connect to database
    $connection = dBconnect();
    //define an empty array to store teams
    $players = array();
    //define the query to fetch data from the database
    $getPlayersSQL = "
    SELECT * FROM `players`
    ";
    if($teamId)
    {
        $getPlayersSQL .= " WHERE teamId = " . $teamId;
    }

    $getPlayersSQL .=  " ORDER BY playerId ASC";

    //perform $query on $con and store resource
    $resource = mysqli_query($connection, $getPlayersSQL) or die (mysqli_error($connection));

    while($row = mysqli_fetch_assoc($resource))
    {
        //add new items to $teams
        $players[] = $row;
    }

    return $players;
}

function getPlayersId($playerId = false)
{
    //connect to database
    $connection = dBconnect();
    //define an empty array to store teams
    $playersInfo = array();
    //define the query to fetch data from the database
    $getplayersInfoSQL = "
    SELECT * FROM `players` 
    ";
    if(isset($playerId))
    {
        $getplayersInfoSQL .= " WHERE `playerId` = " . $playerId;
    }

    //perform $query on $con and store resource
    $resource = mysqli_query($connection, $getplayersInfoSQL) or die (mysqli_error($connection));

    $playersInfo = mysqli_fetch_assoc($resource);

    // echo var_dump($playersInfo);

    return $playersInfo;
}

function getProperty($playerId = false)
{
    //connect to database
    $connection = dBconnect();
    //define an empty array to store teams
    $playersInfo = array();
    //define the query to fetch data from the database
    $getplayersInfoSQL = "
    SELECT * FROM `players`
    ";
    if(isset($playerId))
    {
        $getplayersInfoSQL .= " WHERE `playerId` = " . $playerId;
    }

    //perform $query on $con and store resource
    $resource = mysqli_query($connection, $getplayersInfoSQL) or die (mysqli_error($connection));

    $playersInfo = mysqli_fetch_assoc($resource);

    return $playersInfo;
}

?>