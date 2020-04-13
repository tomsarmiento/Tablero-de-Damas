	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Damas</title>
        <LINK REL=StyleSheet HREF="estilosjsp.css" TYPE="text/css">
    </head>
    <body>
        <% String w = request.getParameter("ancho"); %>
        <% String h = request.getParameter("alto"); %>
        <h3> Columnas: <%= w %>, Filas: <%= h %></h3>
        <div id="tablero">

        </div>
        <script>
            // creando el tablero 
            // 1 es cuadro gris, 2 es cuadro negro
            var w = <%= request.getParameter("ancho") %>
            var h = <%= request.getParameter("alto") %>
            var tablero = [];
            for( var i=0; i < h; i++){
                tablero.push([])
                for(var j=0; j < w/2; j++){
                        if(i%2==1){
                            tablero[i].push(2)
                            tablero[i].push(1)
                        }
                        else{
                            tablero[i].push(1)
                        tablero[i].push(2)
                        }
                    }
            }
            console.log(tablero);

            // mostrar el tablero

             var output = '';

                for(var i=0; i<tablero.length; i++){
                    output+="\n<div class='row'>\n";
                    for(var j=0; j<tablero[i].length; j++){
                        if(tablero[i][j]==1)
                            output+="<div class='gris'></div>";
                        else if(tablero[i][j]==2)
                            output+="<div class='negro'></div>";
                    }
                    output+="\n</div>";
                }
                console.log(output)
                document.getElementById('tablero').innerHTML=output;
        </script>
    </body>
</html>