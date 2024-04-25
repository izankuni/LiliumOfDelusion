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
    
    ->b0

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

===b0===
{
    -info_dibujoInfantil == true : +[¿Y esa chica de la que eras tan amiga?]
        "¿Qué dices? ¿Estás bien de la cabeza? Ella era solamente una amiga, nada más. Simplemente la admiro."

        "Y además, es una chica. Si ella se enterase de que me gusta, estoy segura de que me odiaría aún más."

        "Además, ella seguramente me odia. ¿Qué más da mis sentimientos por ella? Eso no va a cambiar nada."
        
        ->b2
    }
    
    +[Bueno, sigamos buscando]
        "Vale."
        
        ->END

-(b2)
+[Entonces sí que te gusta]

    Me doy cuenta de lo que he dicho. "Ahrggg, quería decir, si hipotéticamente me gustara."
    
    "..."
    
    "No cuela, ¿no? A ver, tampoco sé lo que es el amor en realidad. Es algo raro."
    
    ->b3

+[No hay nada malo con que te gusten las mujeres]

    "Supongo, pero aún así no quiero que ella sepa que me gusta."
    
    Me doy cuenta de lo que acabo de decir. "Mierda, quería decir que, bueno, da igual."
    
    ->b3
    
===b3===
+[Háblame de cómo te sentías con ella]
    "Me encantaba estar a su lado, todo era bonito cuando estaba con ella. Los días pasaban enseguida."
    
    "Además, era muy guapa. Su sonrisa era preciosa y se preocupaba mucho por mí. Era perfecta."
    
    "Aunque ya no está, la verdad es que, aunque me digas que no tiene motivos para odiarme, siento que me odia."
    
    "¿Ya eres feliz? ¿Qué pretendes con que te cuente todo esto?"
    
    ~ card_obtained = true
    ~ card_value = 6
    
    ->END
    

