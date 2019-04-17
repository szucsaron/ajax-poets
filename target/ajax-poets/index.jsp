<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="style.css">
        <script src="index.js"></script>
        <script src="login.js"></script>
        <script src="works.js"></script>

        <title>App</title>
    </head>
<body>
<div id="login-content" class="content">
    <h1>Login</h1>
    <form id="login-form" onsubmit="return false;">
        <input type="text" name="email">
        <input type="password" name="password">
        <button id="login-button">Login</button>
    </form>
    <p id="login-msg">
    </p>
</div>
<div id="worklist-content" class="hidden content">
    <h1 id = 'worklist-user-name'></h1>
    <table id="worklist">
    </table>
</div>
<div id="work-content" class="hidden content">
    <h1 id = 'work-title'></h1>
    <form id="word-count-form"  onsubmit="return false;">
        <input type="text" id="word-count-search">
        <button id="word-count-button">Count words</button>
    </form>
    <div id="word-count-display">

    </div>
    <p id = 'work-body'></p>
    <button id = 'work-back-button'>Back</button>
</div>
<div id="logout-content" class="content">
    <button id="logout-button">Logout</button>
</div>
</body>
</html>
