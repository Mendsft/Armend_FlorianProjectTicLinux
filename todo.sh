#To Do list a faire main 

#!/bin/bash

while [[ "$choix" != [123]  ]] #boucle qui nous dmd la reponse tant qu'on 
do
    echo "Bonjour,bienvenu dans votre to do list, vous pouvers ajouter(1) , supprimer(2)  ou afficher certaines tache(2) , Que voulez vous faire ? (1/2/3) "
    read choix

        if [[ "$choix " =~ [1] ]]
        then
            echo "Test =A"
            

        elif [[ "$choix " =~ [2] ]]
        then
            echo "Test =b"


        elif [[ "$choix " =~ [3] ]]
        then
            echo "Test =C"

        
        fi
done

echo "oke merci d'etre passé"
