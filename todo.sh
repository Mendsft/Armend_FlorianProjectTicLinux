#To Do list a faire main 

#!/bin/bash
i=1
while true ; do #boucle qui nous dmd la reponse tant qu'on 
    echo "Bonjour,bienvenu dans votre to do list, vous pouvers ajouter(1) , supprimer(2)  ou afficher certaines tache(3) ou bien tout supprimer (5) , Que voulez vous faire ? (1/2/3/5) "
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
    printf "Quel tache voulez vous supprimer ?"
    read -r nbr
    $ grep -v "$i" mtask > tmpfile && mv tmpfile task




elif [[ "$choix " =~ [3] ]] #afficher le contenu de la liste 
then
    echo "Voici ce que contient votre To-do-list"
    cat task
    
elif [[ "$choix" =~ [5] ]]
then
    truncate -s 0 task


elif [[ "$choix" =~ [q/Q] ]]
then
    echo "aurevoir merci"
    break
fi   
done


echo " 1.ajoute une tâche"
echo " 2.supprime une tâche"
echo " 3.afficher destâches"


while true; Do
read -p : " choisissez une tache"
