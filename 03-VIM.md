# Des commandes de bases en vim

vi hello.txt

```sh
1 - John marie
2 - Asmae
3 - Desire
4 - John
5 - Leonidas
```

```sh
i : insert mode - insert sur la position du cursor
ESC: retour dans le mode précédent

dd : cut - enlever la ligne
yy : copy - copier la ligne
p : paste - coller ce qui se trouve dans le clipboard de vim

/<text> : chercher pour <text> en avant
?<text> : chercher pour <text> en arrière

:%s/<old-text>/<new-text>/g: search & replace - remplacer chaque instance de <old-text> avec <new-text>

:w : sauvegarder
:q : quitter
:wq : sauvegarder et quitter
:q! : quitter sans sauvegarder

Un peu plus avancé
a : insert mode - insert après la position du cursor
A : insert mode - insert à la fin de la ligne
I : insert mode - insert au début de la ligne
o : insert mode - insert nouveau ligne desous
O : insert mode - insert nouveau ligne dessus
```

**Lien:** https://vimsheet.com/
