# Afficheur-7-segments-VHDL
Ce projet est un programme VHDL qui permet d'afficher les chiffres Hexadécimals (0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F). 
Il utilise un seule afficheur parmis les 4 offerts sur une carte FPGA.
Le fichier de contraintes est conforme à celui de la carte Nexys3 Spartan 6.
Ce programme peut être utilisé comme composant pour afficher les résultats par exemple d'un additionneur , compteur ou score ... etc.
Le programme se compose de composants : Un décodeur et un afficheur.
Le décodeur traduit les valeurs en entrée (sur 4 bits) en segments.
Les valeurs en entrées sont spécifiées à l'aide des switches.
