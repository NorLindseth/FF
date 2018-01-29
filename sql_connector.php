<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "produkt_db";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT a.navn, c.beskrivelse FROM produkter a, produkt_allergen b, allergen c WHERE a.id = b.produkt_id AND b.allergen_id =c.id";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      echo "id: " . $row["beskrivelse"]. " - Name: " . $row["navn"]. "<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
