#To Do list a faire main 

#!/bin/bash
echo "Bonjour,bienvenu dans votre to do list, vous pouvers ajouter , supprimer  ou afficher certaines tache , Que voulez vous faire ? (a/s/d) "
read choix

while [[ "$choix" =~ [asd] ]] #boucle qui nous dmd la reponse tant qu'on 
do
    if [[ "$choix " =~ [a] ]]
    then
        echo "Test =A"
        break

    elif [[ "$choix " =~ [s] ]]
    then
        echo "Test =b"
        break

    elif [[ "$choix " =~ [d] ]]
    then
        echo "Test =C"
        break
    
    fi
done

echo "oke merci d'etre passer"
