#To Do list a faire main 

#!/bin/bash

while [[ "$choix" != [asd] ]] #boucle qui nous dmd la reponse tant qu'on 
do
    echo "Bonjour,bienvenu dans votre to do list, vous pouvers ajouter , supprimer  ou afficher certaines tache , Que voulez vous faire ? (a/s/d) "
    read choix

        if [[ "$choix " =~ [a] ]]
        then
            echo "Test =A"
            

        elif [[ "$choix " =~ [s] ]]
        then
            echo "Test =b"


        elif [[ "$choix " =~ [d] ]]
        then
            echo "Test =C"

        
        fi
done

echo "oke merci d'etre passé"
