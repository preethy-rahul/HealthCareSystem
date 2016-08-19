
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">

<h1>My Profile/h1>


<table class="table">
<thead>
  <tr>
     <th>Name</th>
     <th>Age</th>
     <th>Sex</th>
     <th>Phone</th>
     <th>Experience</th>
     <th>Clinic</th>
     <th>City</th>
     <th>State</th>
     <th>Email</th>
    <th colspan="3"></th>
  </tr>
  </thead>
 <tbody>
 <tr class="success">  
      <td><%= doctor.name %></td>
      <td><%= doctor.age %></td>
      <td><%= doctor.sex %></td>
      <td><%= doctor.phone %></td>
      <td><%= doctor.experience %></td>
      <td><%= doctor.clinic_details %></td>
      <td><%= doctor.city%></td>
      <td><%= doctor.state %></td>
     <td><%= doctor.email %></td>
      <td><%= link_to 'Edit', edit_doctor_path(doctor) %></td>
  </tr>
  </tbody>
  
</table>
