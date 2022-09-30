<h2>Receptek</h2> 


<!-- <div>
    <form class="recept-element" >
        <div class="recept-item">
            <input type="text" class="receptName" name="receptName" value="Recept neve"></label><br>
            <textarea class="osszetevok" name="osszetevok">maga a recept</textarea><br>
            <textarea class="elkeszites" name="elkeszites">Elkészítés</textarea>
            <div class="form-element">
                    <button type="submit" name="recSubmit">Receptek</button>
            </div>
        </div>
       
        
    </form>
</div> -->





<?php





    /* Kapcsolódás az adatbázishoz */

    $adb = mysqli_connect( "localhost", "root", "", "vizsga" );



    /* Európai országok lekérdezése */

    $tabla = mysqli_query( $adb , "

		SELECT * 
		FROM   receptek

    " ) ;



    echo "<div id='orszlista'>" ;
        while( $sor = mysqli_fetch_array( $tabla ) )
        {
            echo "<div href='index.php?p=$sor[0]'>$sor[rnev]</div><br>" ;
            echo "<div href='index.php?p=$sor[0]'>$sor[osszetevok]</div><br>" ;
            echo "<div href='index.php?p=$sor[0]'>$sor[elkeszites]</div><br>" ;
            "<br><br>";
        }
    "</div>" ;










?>