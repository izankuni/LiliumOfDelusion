INCLUDE ../globals.ink

"..."

"............."

+[¿Vas a dormir todo el día?]

"Sí, ¿algún problema?"
->a0

+[Despierta]
"Cállate."
->a0

===a0===

~introAwake = true

"¿Quién eres?"

+[Ya sabes quien soy]

"Ya, bueno."
->b0

+[Llámame como quieras]

"Nah, paso de ponerte nombre."
->b0

===b0===

"Sabes, ojalá pudiera quedarme toda mi vida en mi habitación. Estoy muy a gusto aquí."

"Mi madre es muy pesada con que salga de mi habitación, no sabe lo bonito que es estar aquí."

+[¿Porqué odias tanto salir fuera?]

"Lo paso fatal estando fuera."

->c0

+[Deberias salir más]

"Cállate, el exterior es horrible. Cuando salgo solo sufro pensando en cuanto queda para volver."

->c0

===c0===

"Hay seres mirandome siempre y riendose, es aterrador. Me miran con asco."

"Hoy mi madre me convenció de que no hay problema en salir afuera. Será mentirosa."

"Estaban allí esperandome, observando cada paso que daba." 

"He vuelto a mi habitación enseguida, no quiero salir de nuevo."

+[Te ayudaré a acabar con esos seres de afuera]

"¿De verdad? No creo que puedas, la verdad."

"Esos seres llevan rondando durante meses desde que... Bueno, da igual."

"..."

"Está bien, ¿qué propones para acabar con ellos?"

~ card_obtained = true
~ card_value = 0
~ card_0 = true
~ mental_health += 1

->END





