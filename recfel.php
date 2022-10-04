<h2>Receptfeltöltés</h2>

<?php
if( !isset($_SESSION['uid']) ) print("Előbb be kell jelentkezned!"); 
else
{
    echo '<div>
        <form class="recept-element" method="post" action="recfel-connect.php">
            <div class="recept-item">
                <input type="text" class="receptName" name="receptName" placeholder="Név"></label><br>
                <textarea class="osszetevok" name="osszetevok" placeholder="Ide írd a hozzávalókat (;) jellel elválasztva" cols="70" rows="12"></textarea><br>
                <textarea class="elkeszites" name="elkeszites" placeholder="Ide írd az elkészítés lépéseit" cols="70" rows="12"></textarea>
                <div class="form-element">
                        <button type="submit" name="recSubmit">Recept beküldése</button>
                </div>
            </div>
        
            
        </form>
    </div>';

}



?>

