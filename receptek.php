<!-- <h2>Receptek</h2>  -->

<?php

    /* Kapcsolódás az adatbázishoz */

    $adb = mysqli_connect( "localhost", "root", "", "vizsga" );


    /* Receptek lekérdezése */

    $tabla = mysqli_query( $adb , "

		SELECT * 
		FROM   receptek
        

    " ) ;

    
    echo "<div class='etelek1'>" ;
    
    while($sor = mysqli_fetch_assoc( $tabla )) {
        $osszetevok = explode(';', $sor['osszetevok']); 
        echo "<div class='etelek'>
                <div class='recept-nev' style=' font-size: 25px; '>$sor[rnev]</div><br>
                    <div class='recept-osszetevok'>
                        <ul>";
                            foreach($osszetevok as $osszetevo) {
                                echo "<li>". $osszetevo ."</li>";
                            }
        echo "          </ul>
                    </div><br>
                <div class='recept-elkeszites'>$sor[elkeszites]</div><br>
                <br><br>
            </div>";
        }
        
    "</div>" ;










?>