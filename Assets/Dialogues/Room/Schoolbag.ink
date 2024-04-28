INCLUDE ../globals.ink

Al mirar detenidamente mi mochila, un escalofrío recorre mi cuerpo. Suspiro "Todo fue culpa mía."

"Con lo bonito que era ese lugar y yo lo destrocé. Todo fue culpa mía."

+[¿Qué pasó?]
    "Al principio, el instituto era un lugar bonito. Tenía una amiga con la que pasaba todo el día hablando."
    
    "Ella no sacaba muy buenas notas, pero yo no la odiaba; al contrario, me parecía genial."
    
    "..."
    
    "Hasta que un día me abandonó."
    
    "Se fue del instituto. No me dijo nada, simplemente dejó de ir a clase."
    ->a0

+[Cálmate]{
    -mh1 == false: 
    ~mental_health -=2
    ~mh1 = true
}
    "Cállate, déjame en paz."
    
    ->END

===a0===
+[¿Sabes qué pasó con ella?]
    "Creo que se fue a vivir a otra ciudad. La vi en las noticias, ganó una competición de tiro con arco."
    
    "Es genial que sea tan buena en un deporte. Yo nunca llegaré a ser como ella. Además es tan guapa."
    
    ->a1

+[¿Y qué pasó después en el instituto?]
    "Empecé a ser una molestia para mis profesores y para mis compañeros. Decían que era una inútil."
    
    "Tenían razón, no valgo para estudiar."
    
    "Siempre estaban con lo de 'presta atención', 'no molestes', 'estudia más'."
    
    "No es tan fácil, ¿sabes?... O puede que sí... "
    
    "Mis compañeros sacaban buenas notas. Soy yo la que no vale para esto."
    
    ->b0

===a1===
+[¿Has intentado volver a hablar con ella?]
    "No, tengo mucho miedo la verdad. ¿Y si me odia? ¿Y si ya tiene mejores amigas?"
    
    "Además, estoy segura de que es más feliz sin mí. Total, soy una inútil."
    ->a2

+[Sonríes mucho cuando hablas de ella]
    "B-Bueno, es que era una gran amiga. E-Era la única persona que se ha preocupado por mí."
    
    "Me ayudaba con los deberes, aunque a las dos se nos daba bastante mal. Siempre celebrábamos cuando aprobábamos un examen."
    
    Cuento varias historias sobre ella, admirándola.
    
    "..."
    
    "Pero ella ya no está, todo fue culpa mía. Si no fuera una inútil asquerosa, ella..."
    
    Información obtenida: "Amiga de clase"
    
    ~info_amigaDeClase = true
    ->END

===a2===
  {
    -info_identidadDeLosMonstruos == true: +[¿Es decir, que tienes miedo de que se haya convertido en un monstruo?]
    "..."
    
    "Sí, es lo que más me aterra. ¿Por qué preguntas?"
    ->a3
}

+[Dudo que ella piense eso]
    "¿Qué vas a saber tú si no la conoces? Si se fue, será por algo."
    -> END

-(a3)
{
-card_2 == false: +[Puede que los monstruos puedan volver a ser humanos]
    "¿Que vuelvan a ser humanos? Imposible, una vez convertidos, es imposible que vuelvan a la normalidad."
    
    "..."
    
    "Aunque puede que las cartas funcionen, no quiero que me hagan daño. Dan mucho miedo."
    
    "..."
    
    "¿No vas a decir nada? ¿De verdad crees que soy capaz de enfrentarme a ellos?"
    
    "..." Muchos pensamientos recorren mi cabeza, pero una pequeña luz de esperanza brilla en mi mente.
    
    "Está bien... Intentaré que vuelvan a la normalidad. Espero que las cartas me ayuden aunque no esperes nada."
    
    ~ card_obtained = true
    ~ card_value = 2
    ~ card_2 = true
    ~ mental_health += 1

->END
}

+[Por nada, no te preocupes]
    "Está bien"
->END

===b0===
+[¿Y cómo acabó todo?]
    "Mis profesores empezaron a convertirse en monstruos, no podía ni mirarlos."
    
    "Mis padres me dijeron que no vaya más a la escuela, que era una inútil."
    
    "No sirvo para nada, ojalá poder dormir para siempre."
    
    Información obtenida: "Identidad de los monstruos"

    ~ info_identidadDeLosMonstruos = true
->END

+[Puede que no fuera culpa tuya, sino de la escuela]

    "¿Dices que la culpa es de los profesores y no mía?"
    
    "Vaya tontería, si todos obedecen a los profes será por algo."
    
    "¿En serio crees que deberían cambiar su forma de enseñar por una inútil como yo?"
    
    "No sé estudiar, no me concentro, se me dan mal todas las asignaturas." 
    
    "Da igual quién sea mi profesor."
    
    Información obtenida: "Problemas para estudiar"
    
    ~ info_problemasParaEstudiar = true
->END
