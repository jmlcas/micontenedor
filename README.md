# micontenedor

Modificar líneas 11 y 13 con la ruta de los contenedores: 

Comando para saber la ruta: sudo pwd

Comando para cambiar nombre al contenedor: docker container rename ID name

Comando para listar los nombres "contenedor-imagen": docker ps -a --format "table {{.Names}} \t {{.Image}}" 

Dar permisos al script: sudo chmod +x micontenedor.sh

Ejecutar el script: sudo ./micontenedor.sh

Ingresar nombre del contenedor.





