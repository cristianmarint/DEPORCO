- Devolver / deshacer un commit (Conserva el historial de commits)

    git reset  (HASH DEL ULTIMO COMMIT) 

    git reset --soft HEAD@{1}  (Cambia la cabeza de la rama al ultimo commit)

    git commit "mensaje del cambio"

    git push (Generamente necesita  utilizar --force para hacer el push)
    

- otra forma ( ** No conserva historial de cambios ** )
    
    git reset --hard _hash_

    git push --force

    doc: https://stackoverflow.com/a/23205409/8663044
