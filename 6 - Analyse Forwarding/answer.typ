#import "/_settings/typst/template-lab.typ": conf
#show: doc => conf(
  title: "Laboratoire Forwarding Analyse",
  lesson: "ARO",
  lab: "6 - Analyse Forwarding",
  author: "Gwendal P. & Guillaume T.",
  toc: false,
  col: 1,
  doc,
)

= Questions
== 1. Tracer les chronogrammes de l’éxecution du programme (01_main.S) pour les 2 modes de fonctionnement.
$"hazard_detection_mode" = 0$
#image("img/image copy.png")
$"hazard_detection_mode" = 1$
#image("img/image.png")

== 2. Expliquer les 2 modes de fonctionnement ?
La constante `hazard_detection_mode` permet d'activer le forwarding si la valeur vaut `1`. On voit que dans le deuxième chornograme, aucun arrêt n'est detecté. Cela est dû au fait que le forwarding est activé.

== 3. Utiliser le mode avec la valeur de la constante =1 et tracer le chonogramme de l’éxecution du programme (03_main.S).

#image("img/image copy 2.png")

#colbreak()

== 4. Pourquoi observe t’on un arret pendant l’execution du programme avec le mode = 1 selectionné ? Est-t-il normal qu’on observe un arret ?

Car dans les instrcutions du programme 3 il y a une suite d'instruction qui oblige le processeur à attendre que les données soient disponibles pour pouvoir continuer.
 
```assembly
LDRH r1, [r2, #4]
ADD  r1, #0x10
```

Pour utiliser la valeur du registre `r1` il faut que l'on termine l'opération `LDRH` 

== 5. Lors de la détection pour le forwarding, quel est l’utilité du signal sel_mem_i dans la détection ? et pourquoi ce signal est utile ?

Ce signal permet d'annoncer si une valeur en sortie du bloc `Memory Access` est disponible pour être utilisée dans le forwarding.

== 6. Est-il nécessaire de faire un data forwarding depuis le stage WRITE_BACK et pourquoi ?

Oui car pour récupérer la valeur du bloc `Write Back` *sans forwarding* il faut que le bloc `Decode` envoie la valeur du registre dans le bloc `Execute`. En utilisant du forwarding, cette valeur est directement transmise au bloc `Execute` à la fin du bloc `Write Back`.

== 7. Quelles sont les conditions pour que le forwarding puisse avoir lieu ?

La constante `hazard_detection_mode` est reliée à la selection des multiplexeurs définissant les valeurs `sel_op1_forward_s` et `sel_op2_forward_s` qui expliqué à la question 9, permettent de choisir les valeurs à utiliser dans le bloc `Execute`.

== 8. Quelles sont les avantages et inconvénients du forwarding sur la gestion des aléas de données ?

*Avantages*
- Amélioration de la performance du pipeline

*Inconvénients*
- Complexité accrue du matériel

== 9. Que permet de réaliser les signaux sel_opX_forward_s dans le circuit Execute ?

Ils permettent de définir quelles valeurs doivent être utilisées dans le bloc `Execute`. Ils permettent donc de choisir 3 valeurs venant du forwarding (`EX`, `MA`, `WB`) ou la valeur provenant de la banque de registre choisie dans le bloc `Decode`.

#image("img/image copy 3.png")

== 10. Dans le circuit Execute, pourquoi il y a un registre connecté à l’entrée memory_data_out_i ?

Cela permet de rendre une valeur disponible dans le bloc `Execute` après avoir interragit avec le bloc `Memory Access`. Cela correspond à la valeur transmise dans le registre M (se trouvant après le bloc `Memory Access`) affiché dans le schéma ci-dessous.
#image("/_src/img/docs/image copy 90.png")