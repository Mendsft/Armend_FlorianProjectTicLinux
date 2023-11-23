#To Do list a faire main 

#!/bin/bash
i=1
while true ; do #boucle qui nous dmd la reponse tant qu'on 
    echo "Bonjour,bienvenu dans votre to do list, vous pouvers ajouter(1) , supprimer(2)  ou afficher certaines tache(2) , Que voulez vous faire ? (1/2/3) "
    read choix
    touch task

if [[ "$choix " =~ [1] ]]; then #Si le choix de l'utilisateur est "1" alors on execute ce code
    printf "\n"
    printf "tache\n "
    read -r tache

    if [[ -f "./task" ]]; then
        printf " [ $i ] %s\n" "$tache" >> "./task"
        nano "./task"
        ((i++))

    else
        printf "[ $i ] %s\n" "$tache" >> "./task"
        nano "./task"
        ((i++))
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
