# 3 - Multiplieur G.Piemontesi G.Trueb

## Relevez un chronogramme avec les entrées et sorties du bloc multiplieur et les valeurs intermédiaires correspondantes à chacune des 3 étapes.
![img](https://github.com/truebguillaume/ARO-Labs/blob/main/3%20-%20Multiplieur/ARO2.png)
![img](https://github.com/truebguillaume/ARO-Labs/blob/main/3%20-%20Multiplieur/ARO.png)

|Operation|resultat|hexa|
|---------|--------|----|
|5 x 1    |5       |5   |
|7 x 4    |28      |1C  |
|25 x 7   |175     |AF  |
|31 x 7   |217     |D9  |
|18 x 5   |90      |5A  |
|0 x 6    |0       |0   |
|4 x 4    |16      |10  |
|2 x 3    |6       |6   |

On peut voir que la séquence est juste. Elle se répéte ensuite.

## Quels sont les largeurs de bus pour chaque étage du circuit ? Pourquoi ?
La taille du resultat d'une multiplication binaire vaut nbBitsOp1 + nbBitsOp2.
   
Dans notre cas 5 + 3 donc 8 bits.

Avant le premier registre on commence donc par 5 bits en en ajoutant 1 de plus donc 6, 
puis avant le deuxieme registre on en ajoute un autre puis pour terminer un dermier avent le troisieme registre pourt finalement arriver à 8 bits.
