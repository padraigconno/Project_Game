<?PHP

if ($_FILES["myfile"]["error"] > 0){
        echo "Error: " . $_FILES["myfile"]["error"] . "\n";
}
else {
        echo "Upload: " . $_FILES["myfile"]["name"] . "\n";
        echo "Type: " . $_FILES["myfile"]["type"] . "\n";
        echo "Size: " . ($_FILES["myfile"]["size"] / 1024) . " Kb\n";
        echo "Stored in: " . $_FILES["myfile"]["tmp_name"] . " \n";
 
        if (file_exists("upload/" . $_FILES["myfile"]["name"]))
        {
                echo $_FILES["myfile"]["name"] . " already exists. \n\n";
        }
        else
        {
                move_uploaded_file($_FILES["myfile"]["tmp_name"], "upload/" . $_FILES["myfile"]["name"]);
                echo "Stored in: " . "upload/" . $_FILES["myfile"]["name"] . " \n\n";
        }
}
?> 

