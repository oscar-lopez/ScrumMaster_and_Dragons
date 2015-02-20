Feature:
	Como jugador de scrumMaster and Dragons
	deseo ver el inicio del juego
	para saber que estoy jugando

Scenario:
	Given inicio del juego
	Then deberia ver el "logo" del juego
	And deberia ver "intrucciones basicas" del juego
	And deberia ver un link para "iniciar el juego"

Scenario:
	Given el usuario hace click "iniciar el juego"
	Then deberia ver el boton "enviar"
	And deberia ver "digite comando"
	And deberia ver "Respuestas"
