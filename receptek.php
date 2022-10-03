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
            echo "<div style=' border: solid 1px black; margin: 5px;'>
                <div class='recept-nev' style=' font-size: 25px; '>$sor[rnev]</div><br>
                <div class='recept-osszetevok'>
                <ul>";
            
                    var_dump(explode(";", $sor['osszetevok']));
                    var_dump(count($sor['osszetevok']));
                    for($i = 0; $i < count($sor['osszetevok']); $i++){
                        echo "<li>". $sor['osszetevok'][$i] ."</li>";
                    };
                    
                echo "</ul>
                </div><br>
                <div class='recept-elkeszites'>$sor[elkeszites]</div><br>
                <br><br>
            </div>";
        }
    "</div>" ;










?>