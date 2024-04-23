INCLUDE ../globals.ink

"Mi ordenador, mi familia ya lo tenía antes de que yo naciera, así que no es muy moderno."

"¿Quieres que lo encienda? Está bien, pero tardará un buen rato. Hace tiempo que no lo uso."

"Sabes, también hay monstruos en internet, así que mientras no entremos en internet, todo bien."

"Ya se ha encendido, ¿qué quieres hacer?"

    +[¿Tienes una aplicación de ejercicios de matemáticas?]
    "Si bueno, pero es inútil, por mucho que lo intente, suspendo todos los ejercicios."
    
    "No valgo para las matemáticas, y para nada en general."
    
    "Sabes, la idea de las matemáticas me parece interesante pero me estreso mucho haciendo los ejercicios."
    
    "Me gustaria entenderlas pero son muy dificiles, ya me rendí hace tiempo, no me intentes convencer de que siga intenandolo."
    ->a0
    
    +[No creo que haya monstruos en internet]
    "Sí que hay ...y muchos ...y pueden hacerme mucho daño, así que mejor no entremos ahí."
    ->a1
    
    +[Estás paranoica]
    "¿En serio? Gracias por la información."
    ->END

===a0===
+[Podemos intentarlo, usaremos un sistema diferente al de clase]
    "Es inútil, si no sirvo, no sirvo. Además, si se usa en clase, debe ser el mejor método."
    
    "..."
    "¿Crees que sabes más que los profes? Está bien, probemos ese método tuyo."
    Intento entender los problemas de matemáticas, pero me distraigo con cualquier cosa.
    
    A pesar de las distracciones, poco a poco voy entendiendo el temario y resolviendo los ejercicios.
    
    "¿Un 5? Ves, no sirvo para esto. Aunque esta vez no me he estresado tanto a la hora de hacer los ejercicios."
    
    (Tu determinación para adquirir conocimiento te ha brindado la carta de ''"El Hierofante"'')
    
    

    ->END

+[Si te gustan entonces se te hará más ameno]
    "No funciona así, ya te he dicho que me estreso mucho al hacer los ejercicios aunque sí, me gustan."
    
    "Es bastante contradictorio y egoísta, ¿no crees? Me gustan cosas que odio hacer. Odio algo y también lo opuesto."
    
    "Me odio mucho por ello, ¿por qué no podía ser una persona normal? Que más da, sigamos buscando."
    
    ->END

===a1===
+[¿Quién te hizo daño?]
    "Mucha gente, muchos monstruos. Solía estar en un foro de un videojuego que me gustaba mucho."
    
    "La gente, antes de convertirse en monstruos, era muy amable, pero un día poco a poco se fueron convirtiendo."
    
    "Me insultaban, se burlaban de mí." Sollozo "Debería haberles hecho caso y suicidarme."
    
    ->b0

+[También veo que tienes muchos juegos instalados]
    "Ah sí, me gustaban mucho los videojuegos. Aunque ya no tengo ganas de jugar."
    
    "No es que me hayan dejado de gustar, simplemente me da mucha pereza ponerme a jugar."
    
    "Estoy mucho más cómoda tumbada en mi cama."
    ->b1
    
===b0===
+[No cumplas el deseo de esos imbéciles]
    "Si lo ves así, aún así siento que no tengo motivos para seguir viviendo."
    ->END

+[¿Sabes qué causó que se convirtieran en monstruos?]
    "¿Tiene que haber un motivo por el cual se conviertan en monstruos? ¿No se convierten sin más?"
    
    "Bueno si tuviera que pensar un momento diria que cuando les dije mi nombre real. Creo."
    
    "Pero que sepas que no voy a abrir internet."
    
    Información obtenida: "Ciberbullying"
    ~info_ciberbullying = true
    
    ->END
    
===b1===
+[¿Y por qué no jugamos a uno ahora?]
    "Falta el texto"
    ->END
+[No puedes estar todo el día en la cama]
    "¿Por qué? Si estoy cansada, ¿qué quieres que haga?"
    ->END




    





