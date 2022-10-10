<!-- <h2>Receptek</h2>  -->

<?php

    /* Kapcsolódás az adatbázishoz */

    $adb = mysqli_connect( "localhost", "root", "", "vizsga" );


    /* Receptek lekérdezése */

    $tabla = mysqli_query( $adb , 
    "
		SELECT * 
		FROM   receptek
        

    " ) ;

    
    
    while($sor = mysqli_fetch_assoc( $tabla )) {
        $osszetevok = explode(';', $sor['osszetevok']); 
        echo "<div class='etelek'>
                <div class='recept-nev'>$sor[rnev]</div>
                
                    <div class='recept-osszetevok'>
                        <ul>";
                            foreach($osszetevok as $osszetevo) {
                                echo "<li>". $osszetevo ."</li>";
                            }
        echo "          </ul>
                    </div>
                <div class='recept-elkeszites'>$sor[elkeszites]</div>
                
            </div>";
        }
        




?>








<!-- 
                <div class='btns'>
                    <button style='color: red' onclick='Toggle()' id='btnh1' class='btn'><i class='fas fa-heart'></i></button>
                </div>
                <div class='btns'>
                    <i class='fas fa-heart'></i>
                </div>
 -->