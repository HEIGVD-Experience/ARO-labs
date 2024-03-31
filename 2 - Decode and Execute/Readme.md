# Labo 2 : Decode and Execute Piemontesi Trueb

## Question 1
> Créez un petit programme de 5-6 instructions en assembleur. Buildez et chargez votre programme
dans la mémoire d’ instruction.
Faites le chronogramme de l’execution de votre programme et vérifiez que le registre PC s’incrémente
correctement.

![img](https://github.com/truebguillaume/ARO-Labs/blob/main/2%20-%20Decode%20and%20Execute/img/Q1.png)

On peut voirt quer le PC s'incrémente correctement.



## Question 2
> Lors d’une opération de type "Addition/substraction (add/substract)", sur quelles sorties de
decode_isntr_splitter pourriez vous lire les informations indiquant les registres et offsets utilisés ?

![img](https://github.com/truebguillaume/ARO-Labs/blob/main/2%20-%20Decode%20and%20Execute/img/Q2.png)


En suivant ce schéma on peut voir que le registre de destination est indiqué par les bits allant de **0** à **2** inclu, **(rd_2_0_o)**   
le registre source est lui indiqué par les bits allant de **3** à **5** inclu **(rs_5_3_o)**   
et que l'offset se trouve sur les bit allant de **6** à **8** inclu **(offset3_8_6_o ou rn_8_6_o)**.  


## Question 3
> Lors d’une opération de type "Branchement/saut conditionnel (conditional branch)", sur quelles sorties de decode_isntr_splitter pourriez vous lire les informations indiquant les bits de condition et l’offset utilisés ?

![img](https://github.com/truebguillaume/ARO-Labs/blob/main/2%20-%20Decode%20and%20Execute/img/Q3.png)


En suivant ce schéma on peut voir que les bits de conditions sont ceux allant de **8** à **11** inclu **(cond_11_8_o)**   
et que l'offset se trouve sur les bit allant de **0** à **7** inclu **(offset8_7_0_o)**.   


## Question 4
> Pour les 4 instructions travaillant uniquement avec des registres, quel est le nombre de bits de l’opcode ? Et pour les 4 instructions avec un offset immédiat ?

Pour les 4 instructions travaillant uniquement avec des registres :

Le nombre de bits de l'opcode est de **7 (bits allant de 9 à 15 inclu)**.

**strb_r_r_r et ldrb_r_r_r** :

![img](https://github.com/truebguillaume/ARO-Labs/blob/main/2%20-%20Decode%20and%20Execute/img/Q4_1.png)

Pour **strh_r_r_r et ldrh_r_r_r** :

![img](https://github.com/truebguillaume/ARO-Labs/blob/main/2%20-%20Decode%20and%20Execute/img/Q4_2.png)   
   

Pour les 4 instructions avec un offset immédiat :

Le nombre de bits de l'opcode est de **5 (bits allant de 11 à 15 inclu)**.

Pour **strb_r_r_imm et ldrb_r_r_imm** 

![img](https://github.com/truebguillaume/ARO-Labs/blob/main/2%20-%20Decode%20and%20Execute/img/Q4_3.png)

Pour **strh_r_r_imm et ldrh_r_r_imm** :

![img](https://github.com/truebguillaume/ARO-Labs/blob/main/2%20-%20Decode%20and%20Execute/img/Q4_4.png)

## Eatpe 5.2
> Phase de test du circuit.

![img](https://github.com/truebguillaume/ARO-Labs/blob/main/2%20-%20Decode%20and%20Execute/img/Etape5_2.png)
