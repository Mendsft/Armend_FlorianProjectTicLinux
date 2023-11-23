#To Do list a faire main 

#!/bin/bash

while [[ "$choix" != [123]  ]] #boucle qui nous dmd la reponse tant qu'on 
do
    echo "Bonjour,bienvenu dans votre to do list, vous pouvers ajouter(1) , supprimer(2)  ou afficher certaines tache(2) , Que voulez vous faire ? (1/2/3) "
    read choix

        if [[ "$choix " =~ [1] ]] #Si le choix de l'utilisateur est "1" alors on execute ce code
        then
            
            printf "\n"
            printf "Entrez le nom de la tâche"
            printf "\n : "
            read -r topic
            printf "\n"
            printf "Entrez\n "
            printf "\n : "
            read -r entrez
        if [[ -f "./$topic" ]]; then
            printf '[ ] %s\n' "$entrez" >> "./$topic"
            nano "./$topic"
        else
            touch "./$topic"

            printf '\n %s\n' "$entrez" >> "./$topic"
            nano "./$topic"
        fi
            

        elif [[ "$choix " =~ [2] ]]
        then
            echo "Test =b"


        elif [[ "$choix " =~ [3] ]]
        then
            echo "Test =C"

        
        fi
done

echo "oke merci d'etre passé"
