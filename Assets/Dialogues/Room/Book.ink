INCLUDE ../globals.ink

"Parece que se ha caído un libro de la estantería." Cojo el libro para ponerlo de vuelta en su lugar.

Al cogerlo, miro la portada; es un libro infantil. "Vaya, mi libro favorito de cuando era pequeña."

+[¿De qué trata el libro?]
    "Es un libro de fantasía infantil. Cuenta la historia de un niño que está aburrido de su pueblo y sale en busca de aventuras."

    "Durante sus aventuras, conoce a muchos amigos y supera numerosas adversidades. A pesar de todo, siempre estaba feliz."

    "La verdad es que era una historia bastante poco original, no sé por qué me gustaba tanto."
    ->a0
+[¿Porqué era tu favorito?]

    "No lo sé, la verdad. Fue un regalo de mis padres cuando era pequeña."

    "Bueno, más bien fue un autoregalo. Mis padres me dieron dinero para que me comprara lo que quisiera."

    "Y bueno, me compré este libro."
    ->a1
    
===a0===
+[¿Y cómo termina?]
    "Pues, al final... al final... Abro el libro por las últimas páginas y están llenas de mis dibujos."

    El dibujo del personaje principal está garabateado. Tiene gafas y el pelo de color rojo.

    "No me acuerdo bien, pero seguramente el bueno vencería al malo y todos serían felices y esas cosas."

    "Qué más da, ni que fuera una maravilla."
    
    Información obtenida: "Dibujo infantil"
    ~info_dibujoInfantil = true
    ->END

+[Bueno, que más da, si te gusta]
    "Sí, supongo. Aunque ya soy demasiado mayor para estas historias."
    
    ->END

===a1===
+[¿Qué cutre, no?] 
"Sí, está claro que mis padres me odian. Sabían lo que me emociona abrir regalos. Aun así, me regalaron dinero."

"Supongo que no era suficiente para ellos. Supongo que no me lo merecía. Deberia haberme portado mejor."
->a2

+[Oye, no está mal]
"Sí que está mal, yo queria abrir regalos, quitar el envoltorio y esas cosas y mis padres lo sabian."

"Supongo que no era suficiente para ellos. Supongo que no me lo merecía. Deberia haberme portado mejor."

->a2

===a2===
Información obtenida: "Regalo de cumpleaños"
~info_regaloDeCumpleanos = true
->END