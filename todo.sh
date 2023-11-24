#To Do list a faire main 

#!/bin/bash
i=1
while true ; do #boucle qui nous dmd la reponse tant qu'on 
    echo "Bonjour,bienvenu dans votre to do list, vous pouvers ajouter(1) , supprimer(2)  ou afficher certaines tache(3) ou bien tout supprimer (5) , Que voulez vous faire ? (1/2/3/5) "
    read choix
    # touch task

if [[ "$choix " =~ [1] ]]; then #Si le choix de l'utilisateur est "1" alors on execute ce code et on ajoute des taches aux fichier task
    printf "\n"
    printf "tache\n "
    read -r tache

    if [[ -f "./task" ]]; then  #
        printf " $i %s\n" "$tache" >> "./task" 
        nano "./task"
        ((i++))

    else
        printf " $i  %s\n" "$tache" >> "./task"
        nano "./task"
        ((i++))
    fi


elif [[ "$choix " =~ [2] ]] #si l'utilisateur rentre 2 , alors on va lancer le code suivant pour supprimer via le numero de la tache
then

 read -p "Entrez le numéro de la tâche à supprimer : " numero
    if [ "$(gsed -n "${numero}p" ./task )" ]; then
        gsed -i "${numero}d" ./task #q Sed fait la recherche du nombre encodé et la supprime.
        echo "~~~"
        echo "Tâche supprimée avec succès !"
        echo "~~~"
    else
        echo "~~~"
        echo "La tâche n'existe pas."
        echo "~~~"
    fi




elif [[ "$choix" =~ [3] ]] #afficher le contenu de la liste 
then
    echo "Voici ce que contient votre To-do-list"
    cat task
    
elif [[ "$choix" =~ [5] ]] # Supprimes toute le contenu du fichier 
then
    truncate -s 0 task  


elif [[ "$choix" =~ [q/Q] ]] # quitte la boucle de Todolsit
then
    echo "aurevoir merci"
    break
fi   
done

