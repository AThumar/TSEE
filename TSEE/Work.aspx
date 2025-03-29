<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Work.aspx.cs" Inherits="TSEE.Work" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Work</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
        }

        .sidebar {
            width: 20%;
            background: #f8f8f8;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }

        .sidebar button {
            background: #007bff;
            color: white;
            border: none;
            padding: 10px;
            width: 80%;
            margin: 5px 0;
            cursor: pointer;
            border-radius: 5px;
            font-size: 16px;
            font-weight: bold;
            transition: 0.3s;
        }

        .sidebar button:hover {
            background: #0056b3;
        }

        .pdf-viewer {
            flex-grow: 1;
            padding: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        iframe {
            width: 100%;
            height: 100%;
            border: none;
        }
    </style>
</head>
<body>

    <div class="sidebar">
        <h2>Tools</h2>
        <button onclick="applyBold()">Bold</button>
        <button onclick="applyItalic()">Italic</button>
        <button onclick="applyHighlight()">Highlight</button>
        <button onclick="applyDiamond()">♦ Diamond</button>
    </div>

    <div class="pdf-viewer">
        <iframe id="pdfFrame" src=""></iframe>
    </div>

    <script>
        // Get file name from URL and set iframe source
        const urlParams = new URLSearchParams(window.location.search);
        const fileName = urlParams.get('file');
        if (fileName) {
            document.getElementById("pdfFrame").src = "Uploads/" + decodeURIComponent(fileName);
        }

        function applyBold() {
            alert("Bold formatting applied! (Feature in development)");
        }

        function applyItalic() {
            alert("Italic formatting applied! (Feature in development)");
        }

        function applyHighlight() {
            alert("Highlighted text! (Feature in development)");
        }

        function applyDiamond() {
            alert("Diamond marker added! (Feature in development)");
        }
    </script>

</body>
</html>
