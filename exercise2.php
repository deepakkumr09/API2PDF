<?php
ob_start();  


$servername = "localhost";
$username = "root";   
$password = "";       
$dbname = "test_db";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die(" Connection failed: " . $conn->connect_error);
}


$apiUrl = "https://dummyjson.com/users";
$response = file_get_contents($apiUrl);

if ($response === FALSE) {
    die(" API call failed.");
}

$data = json_decode($response, true);


// STEP 3: Insert Data into DB

if (!empty($data['users'])) {
    foreach ($data['users'] as $user) {
        $name = $conn->real_escape_string($user['firstName'] . " " . $user['lastName']);
        $email = $conn->real_escape_string($user['email']);
        $city = $conn->real_escape_string($user['address']['city']);

        // Avoid for duplicate 
        $check = $conn->query("SELECT * FROM api_data WHERE email='$email'");
        if ($check->num_rows == 0) {
            $sql = "INSERT INTO api_data (name, email, city) VALUES ('$name', '$email', '$city')";
            $conn->query($sql);
        }
    }
}




$result = $conn->query("SELECT * FROM api_data");
$allData = [];
while ($row = $result->fetch_assoc()) {
    $allData[] = $row;
}


// STEP 5: Generate PDF

require('fpdf/fpdf.php');

$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial','B',14);
$pdf->Cell(0,10,'API Data Report Bizfoc',0,1,'C');
$pdf->Ln(5);

$pdf->SetFont('Arial','B',10);
$pdf->Cell(10,10,'ID',1);
$pdf->Cell(50,10,'Name',1);
$pdf->Cell(70,10,'Email',1);
$pdf->Cell(50,10,'City',1);
$pdf->Ln();

$pdf->SetFont('Arial','',10);
foreach ($allData as $row) {
    $pdf->Cell(10,10,$row['id'],1);
    $pdf->Cell(50,10,$row['name'],1);
    $pdf->Cell(70,10,$row['email'],1);
    $pdf->Cell(50,10,$row['city'],1);
    $pdf->Ln();
}


// STEP 6: Download PDF
$pdf->Output('D','api-data-report_Bizfoc.pdf');

$conn->close();
ob_end_flush();  
?>
