<?php
header('Content-Type: application/json');

// Database configuration
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "robot_arm_control";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die(json_encode(['error' => 'Connection failed: ' . $conn->connect_error]));
}

// Get all saved poses
$sql = "SELECT id, name, motor1, motor2, motor3, motor4, motor5, motor6, action FROM saved_poses ORDER BY id";
$result = $conn->query($sql);

$poses = [];
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $poses[] = $row;
    }
}

echo json_encode($poses);
$conn->close();
?>