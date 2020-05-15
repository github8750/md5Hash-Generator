<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="bootstrap.css">
    <script src="./jquery.js"></script>
    <style>
        .header {
            overflow: hidden;
            background-color: rgb(9, 129, 9);
            padding: 0px 10px;
            margin: 5px;
        }
        .footer{
            overflow: hidden;
            background-color: rgb(9, 129, 9);
            padding: 20px 10px;
            margin: 5px;
            background-position-y: 100%;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <p><h1 style="text-align: center;color:white;">Hash Calculator</h1></p>
        </div>
        <div class="box">
            <form method="POST" style="margin: 15px;" action="Hash">
                <label for="input">Input String : </label>
                <input type="text" id="input" name="input" class="tags form-control"><br>
                <button type="submit" class="btn btn-success" name="calculate">Generate</button>
                <br><br><br>
            </form>
                <label for="output">The Generated Hash is : </label>
                <textarea name="output" id="output" cols="30" rows="10" class="tags form-control">
				<%
				 	String data=(String)application.getAttribute("data");
					out.print(data);
				%>
            </textarea>
        </div>
        <div class="footer">
            
        </div>
    </div>
</body>
</html>