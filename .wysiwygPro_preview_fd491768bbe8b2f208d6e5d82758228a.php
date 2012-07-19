<?php
if ($_GET['randomId'] != "wg5lPYKU1f3RHwoN0AAuVy0Y5D0JDhEu9psaNzTPjLW3peAKL6wgjrUPMHX0ck1g") {
    echo "Access Denied";
    exit();
}

// display the HTML code:
echo stripslashes($_POST['wproPreviewHTML']);

?>  
