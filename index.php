<?php
include('inc/main.php');
connect_to_db();

$countries = Country::all();

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Debitorenbuchhaltung</title>
	<link href='https://fonts.googleapis.com/css?family=Ubuntu:400,300,700' rel='stylesheet' type='text/css'>
	<link rel='stylesheet' href='css/style.css'>
</head>
<body>
	<fieldset>
	<legend>Personalia:</legend>
	<form action="" method='POST'>
	<input id="firstname" type="text" name="firstname" placeholder="Vorname" style="">
	<input id="lastname" type="text" name="lastname" placeholder="Nachname">
	<br>
	<input id="street" type="text" name="street" placeholder="Strasse" style="width: 163px;">
	<input id="housenumber" type="text" name="housenumber" placeholder="Nr." style="width: 36px;">
	<input id="zip" type="text" name="zip" placeholder="PLZ" style="width: 54px;">
	<input id="city" type="text" name="city" placeholder="Ortschaft" style="width: 145px;">
	<br>
	
	<select name='country'>
		<option value='0'>Land auswählen</option>
	<?php
		
		foreach ($countries as $country) {
			print "\t\t<option value='".$country->country_code."'>".$country->country_name."</option>\r\n";
		}
	?>
	</select>
	
	<input id="country" type="text" name="country" placeholder="Land">
	<br><br>
	<input id="submit" type="button" name="submit" value="Sichern" class="submit">
	</fieldset
	</form>
</body>
</html>
