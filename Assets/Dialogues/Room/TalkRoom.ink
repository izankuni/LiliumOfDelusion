INCLUDE ../globals.ink

"¿Qué pasa?"

+[¿Tenías algún sueño cuando eras niña?]

    "¿Un sueño? ¿Qué clase de pregunta es esa?"

    "..."

    "No, no recuerdo nada que me hiciera especial ilusión, la verdad."
    
    ->a0

    +[¿Tuviste algún romance durante la escuela?]
        "¿Romance? ¿En serio crees que alguien querría a alguien como yo?"

    "Y si preguntas si me gustaba alguien, la respuesta es no. Además, soy una fracasada, todos me odiaban."
    
    ->END

    +[Nada, sigamos buscando las cartas]

        "Espero que esto sirva para algo."

->END

===a0===
{
    -info_dibujoInfantil == true :+[¿Y qué hay del héroe de ese libro que dibujabas como tú?]
    "¿Te refieres a ese libro? Menuda chorrada. De pequeña me gustaba la historia, nada más."

    "..."

    "No te convence, ¿eh? Bueno, cuando era pequeña quería salir de esta ciudad y ver mundo."

    "Era un sueño bastante egoísta, pero ahora que el exterior está plagado de monstruos." 

    "Prefiero quedarme en mi habitación. Aquí estoy segura, no necesito salir para nada."
    
    ->a1
}

+[Está bien, sigamos buscando]

    "Espero que esto sirva para algo."
    
    ->END



-(a1)
+[¿Y si leemos ese libro para pasar el tiempo?]

    "¿En serio? Pero si ya te he contado de qué va. ¿Para qué quieres que lo lea?"
    
    Suspiro
    
    "Está bien." Cojo el libro y empiezo por la primera página, veo mis dibujos sobre los dibujos del libro.
    
    "Érase una vez un niño que nunca había salido de su aldea..."
    
    Narro las aventuras del protagonista de la historia viajando por el mundo sin dejarme ningún detalle.
    
    "Y vivieron felices para siempre. Fin."
    
    ->a2
+[Tienes razón, sigamos buscando]

    "Espero que esto sirva para algo."
    
    ->END
    
===a2===
+[Se te notaba ilusionada con la idea de viajar.]

    "Supongo. Si esos monstruos no estuvieran, me gustaría visitar otras ciudades."
    
    ->magician

+[Cuando acabemos con esos monstruos podrás salir de aquí.]

    "Supongo. Pero primero tenemos que acabar con esos monstruos, aunque lo veo difícil."
    
    ->magician
    
===magician===
~ card_obtained = true
~ card_value = 1

->END

