<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        $xml =simplexml_load_file("books.xml") or die("Error : Cannot load XML file.");
        echo "<table border = '1' cellpadding = '8'>";
        echo "<tr>
        <th> Title </th>
        <th> Author </th>
        <th> Year </th>
        <th> Price </th>
        </tr>";
        foreach($xml->library->book as $book){
            echo "<tr>";
            echo "<td>".$book->title."</td>";
            echo "<td>".$book->author."</td>";
            echo "<td>".$book->year."</td>";
            echo "<td>".$book->price."</td>";
            echo "</tr>";
        }
        echo "</table>";
        ?>
    </body>
</html>
