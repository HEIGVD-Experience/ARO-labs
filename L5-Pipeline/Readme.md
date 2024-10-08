# Labo 5 Pipeline - G.Piemontesi G.Trueb

## Question 1
> Comment savoir si une instruction en cours de décodage est dépendante d’une instruction qui est pour le moment dans le stage EXECUTE ? dans le stage MEMORY_ACCESS ? Dans le stage WRITE_BACK ?

On peut vérifier si l'adresse du registre de destination, a un certain nombre de coups d'horloge plus tôt, correspond à un registre utilisé comme source pour l'instruction actuelle. 

- Pour `EXECUTE`, on examine trois étapes en arrière.
- Pour `MEMORY_ACCESS`, on examine deux étapes en arrière.
- Pour `WRITE_BACK`, on examine seulement l'étape précédente.


## Question 2
> Est-ce que cela pose un problème si une instruction en cours de décodage dépend du résultat d’une instruction qui est au stage WRITE_BACK ?

Oui, car il faudrait attendre un coup d'horloge supplémentaire pour obtenir le résultat.

## Question 3
> Quels informations doivent être mémorisées pour chaque instruction ?

L'adresse du registre de destination, si il y a une ecriture dans la banque de registres et si il y a une ecriture dans la mémoire.

## Question 4
> Quelles informations permettent de savoir si le registre D est utilisé ?

Le registre `D` est utilisé si le signal `reg_bank_write_en_i` est à 1.


## Question 5
> Quelles informations permettent de savoir si le registre S, N ou MEM sont utilisés ?

- Le registre `S` est utilisé si `operand 1` est sélectionné.
- Le registre `N` est utilisé si `operand 2` n'est pas selectionné.
- Le registre `MEM` est utilisé si on ecrit dans la mémoire.
  
## Question 6
> Une détection d’aléa de donnée va influencer quel(s) enable(s) d’étage du pipeline ? A quel moment ? Pourquoi ?

En cas de détection d'un aléa, il faudra désactiver les enables des parties suivantes pour éviter d'effectuer l'opération trop tôt :
- `EXECUTE`
- `MEMORY_ACCESS`
- `WRITE_BACK`

Cependant, il est important de ne pas les désactiver simultanément pour ne pas perdre de données en cours de calcul. On les désactive successivement avec un décalage d'un coup d'horloge à chaque fois. Cela permet d'effectuer une opération NOP fictive à la place de l'instruction posant problème.

## Question 7
> Quel est l’IPC du programme (01_main.S) dans votre circuit logisim ? Pour ce calcul vous ne tiendrez pas compte des instructions NOP à la fin du programme ?

![01](img/01.png)

## Question 8
> Quel est l’IPC du programme (02_main.S) dans votre circuit logisim ? Pour ce calcul vous ne tiendrez pas compte des instructions NOP à la fin du programme ?

![02](img/02.png)

## Question 9
> Quel est le rôle des intructions NOP placées à la fin des programmes ? Tester avec et sans les instructions NOP.

Rien ne change entre les deux programmes, un va juste durer plus longtemeps que l'autre.
Cela doit surement etre utile pour retarder si un autre programme vient apres le programme actuel ou autre.
