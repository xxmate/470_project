<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Submit a course</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
    <link rel="stylesheet" href="style.css">
    <style type="text/css">
        body{ font: 14px sans-serif; }
        .wrapper{ width: 350px; padding: 20px; }
    </style>
</head>

<body>
<div class="wrapper">
<h2>Hello, Mod!</h2>
<h3>Submit your events here</h3>
<form action="../controller/submit.php" method="post">
<div class="form-group">
<div class="form-group">
                <label>Event Name (initials) </label>
                <input type="text" name="name" class="form-control">
            </div>
            <div class="form-group">
                <label>Enter a short event description</label>
                <textarea type="text" class="form-control" rows="3" name="description"></textarea>
            </div>
            <div class="form-group">
                <label>Enter a long event description</label>
                <textarea type="text" class="form-control" rows="5" name="longdes"></textarea>
            </div>
            <div class="form-group">
                <label for="coursetype">Event Type</label>
                <select type="text" name="coursetype" class="form-control">
                <option value="CSE">Available</option>
                
                </select>
            </div>
            <div class="form-group">
                <label>Enter your preferred booking time: </label>
                <input type="text" name="appointment" class="form-control">
            </div>
            
            <div class="form-group">
                <input type="submit" class="btn btn-primary" name="submit">
            </div>

</form>
</div> 
<?php require "../controller/config.php"?>

</body>
</html>