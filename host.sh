# script para deteccion de host activos en una red by: Naixtrap

function ctrl_c(){
        echo -e "\n Saliendo del programa..."
        tput cnorm; exit 1
}

trap ctrl_c INT

# Flujo principal del programa

#obtener nombre de red
ip=$(ip a | grep 24 | head -n 1 | awk {'print $2'} | awk {'print $1'} FS=>
#Identificar host mediante bucle
clear
for host in $(seq 1 255); do
        tput civis 
        ping -c 1 -W 1 $ip.$host &>/dev/null && echo -e "\n $ip.$host - [>
done;wait
echo -e "\n Espero que te sirva."
tput cnorm
