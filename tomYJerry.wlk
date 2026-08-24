object tom {
  var energia = 50

  method energia() = energia
  method estaFeliz() = energia > 50
  method velocidadMaxima() = 5 + (energia / 10)
  method correr(distancia) {
    energia = energia - (distancia / 2)
  }
  method comer(unRaton) {
    energia = energia + 12 + unRaton.peso()
  }

  method puedeCazar(unRaton, unaDistancia) = energia > (unaDistancia / 2)
  method cazar(unaDistancia, unRaton) {
    if(self.puedeCazar(unRaton, unaDistancia)){
        self.correr(unaDistancia)
        self.comer(unRaton)
    }
  }
}

object jerry {
  var edad = 2

  method peso() = edad * 20 
  method cumplirAnios() { 
    edad = edad + 1
  }
}

object nibbles {
  method peso() = 35
}

object perez {
  var peso = 20

  method peso() = peso
  method comerQueso() { 
    peso = peso + 6 
  }
}