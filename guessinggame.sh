#!/usr/bin/env bash

function compter_fichiers() {
    find . -maxdepth 1 -type f | wc -l
}

function afficher_message() {
    echo "================================"
    echo "Bienvenue dans Guessing Game !"
    echo "================================"
}

function jouer() {
    local nombre
    local proposition
    nombre=$(compter_fichiers)
    afficher_message
    echo "Combien de fichiers sont dans ce dossier ?"
    while true
    do
        read -r -p "Votre réponse : " proposition
        if [[ ! $proposition =~ ^[0-9]+$ ]]; then
            echo "Veuillez entrer un nombre entier."
        elif (( 10#$proposition < nombre )); then
            echo "Trop bas ! Essayez encore."
        elif (( 10#$proposition > nombre )); then
            echo "Trop haut ! Essayez encore."
        else
            echo "Bravo ! Vous avez trouvé !"
            break
        fi
    done
}

jouer
