#!/bin/bash
# Copyright (c) HashiCorp, Inc.

# Script to deploy a very simple web application.
# The web app has a customizable image and some text.

cat << 'EOM' > /var/www/html/index.html
<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Meow!</title>
  <style>
    body {
      background-color: #ffe4f2;
      font-family: 'Comic Sans MS', cursive, sans-serif;
      margin: 0;
      padding: 0;
    }
    .container {
      max-width: 800px;
      margin: 50px auto;
      background: white;
      border-radius: 20px;
      box-shadow: 0 4px 15px rgba(0,0,0,0.1);
      padding: 30px;
      text-align: center;
    }
    img {
      max-width: 100%;
      border-radius: 15px;
    }
    h2 {
      color: #ff69b4;
      margin-top: 20px;
      font-size: 2em;
    }
    p {
      color: #555;
      font-size: 1.2em;
      margin-top: 10px;
    }
  </style>
</head>
<body>
  <div class="container">
    <img src="http://${PLACEHOLDER}/${WIDTH}/${HEIGHT}" alt="Kitty">
    <h2>Meow World! 🐾</h2>
    <p>Welcome to ${PREFIX}'s app.<br>
    Bringing you your daily dose of cuteness 💖<br>
    i want go home 🏠</p>
  </div>
</body>
</html>
EOM

echo "Script complete."

