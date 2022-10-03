<h2>Receptek</h2> 

<?php







    /* Kapcsolódás az adatbázishoz */

    $adb = mysqli_connect( "localhost", "root", "", "vizsga" );



    /* Receptek lekérdezése */

    $tabla = mysqli_query( $adb , "

		SELECT * 
		FROM   receptek

    " ) ;



    echo "<div id='etelek'>" ;
        while( $sor = mysqli_fetch_array( $tabla ) )
        {
            echo "<div style=' border: solid 1px black; margin: 5px;'>";
                echo "<div class='recept-nev' style=' font-size: 25px; '>$sor[rnev]</div><br>" ;
                echo "<div class='recept-osszetevok'>
                <ul>
                    <li>$sor[osszetevok]</li>
                </ul>
                
                </div><br>" ;
                echo "<div class='recept-elkeszites'>$sor[elkeszites]</div><br>" ;
                "<br><br>";
            "</div>";
        }
    "</div>" ;










?>