= Question TE lab 2 - Piemontesi / Trüeb

== Est-ce que le forwarding est nécessaire à la sortie du bloc Write-back pour accélerer le pipeline? Expliquez? (5 pts)

== Dans les 4 exemples suivants, indiquez si le forwarding venant du bloc Write-back est utilisé? (5 pts)

=== A
```shell
MOV r0, 0x200
MOV r1, #2
ADD r2, r1, #3
ADD r3, r2, #4
STR r3, 0x100
```

=== B 
```shell
MOV r0, 
MOV r1, #2
ADD r2, r1, #3
ADD r3, r2, #4
STR r3, 0x100
```

=== C  
```shell
MOV r0, 
MOV r1, #2
ADD r2, r1, #3
ADD r3, r2, #4
STR r3, 0x100
```

=== D
```shell
MOV r0, 
MOV r1, #2
ADD r2, r1, #3
ADD r3, r2, #4
STR r3, 0x100
```

*Attention*: les codes sont à fournir par le professeur.

#pagebreak()

= Réponse
Oui car pour récupérer la valeur du bloc Write-back sans forwarding il faut que le bloc Decode envoie la valeur du registre dans le bloc Execute. En utilisant du forwarding, cette valeur est directement transmise au bloc Execute à la fin du bloc Write Back.

