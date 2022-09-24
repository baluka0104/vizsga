
<!doctype html>
<html>
	<head></head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta charset="utf-8">
		<title>Bejelentkezés - Salty</title>
        <link rel="stylesheet" href="bejel.css">
		
		
	</head>

	<body>
    <?php

        if (isset($_GET['reg'])) {
            if ($_GET['reg'] == "successfull") {
                echo "Sikeres regisztráció!";
            } else {
                echo "Valami hiba történt!";
            }
        }


    ?>
		<div class="popup">
            <form class="form" action="process.php" method="post">
                <h2>Bejelentkezés</h2>
                <div class="form-element">
                    <label for="username">Felhasználónév:<em>*</em></label>
                    <input id="username" type="text" name="username"/>
                </div>
                <div class="form-element">
                    <label for="password">Jelszó:<em>*</em></label>
                    <input id="password" type="password" name="password"/>
                </div>
                <div class="form-element">
                    <input type="checkbox" id="remember-me" name="remember-me" value="checked">
                    <label for="remember-me">Emlékezz rám</label>
                </div>
                <div class="form-element">
                    <button type="submit" name="bejSubmit">Bejelentkezés</button>
                </div>
                <div class="form-element">
                    <a href="#">Elfelejtettem a jelszavam</a>
                </div>
            </form>
		</div>

	</body>
</html>
