# labrem-apps

```js
{
	usuario: {
		idUsuario: Int,
  		idUrl: Int,
		nombre: String,
		apellido: String
	},
	experiencia:{
		idExperiencia: Int,
		nombre: String,
		descripción: String,
		duración: TimeSpan,
		ips: [
			{
				ip: String,
				tipo: String
			}
		]
	},
	turno:{
		fecha: Date,
		horaInicio: TimeSpan,
		horaFin: TimeSpan
	}
}
```