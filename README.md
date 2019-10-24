Pour tester cette base de données chers correcteurs, voici les étapes à suivre:

- Si ce n'est pas déjà fait, installer la gem faker

- Avoir la version ruby '2.5.1'

- Depuis le terminal, aller à la racine du dossier du projet et lancer la commande: rails db:seed
(C'est normal si ça met un peu de temps à s'éxecuter c'est à cause de la gem faker)

- Quand la commande s'est éxecuté, lancer la commander: rails console

- Taper NomDeLaClasse.all pour voir tous les NomDeLaClasse créés (par exemple: Gossip.all pour voir tous les potins qui sont dans la base de données) ou NomDeLaClasse.last pour voir le dernier NomDeLaClasse créé.