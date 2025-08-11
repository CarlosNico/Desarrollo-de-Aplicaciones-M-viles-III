class Figura {
    func calcularArea() -> Double {
        return 0.0
    }
}
class Cuadrado: Figura {
    var lado: Double
    init(lado: Double) {
        self.lado = lado
    }
    override func calcularArea() -> Double {
        return lado * lado
    }
}
class Rectangulo: Figura {
    var alto: Double
    var largo: Double
    init(alto: Double, largo: Double) {
        self.alto = alto
        self.largo = largo
        }
    override func calcularArea() -> Double {
        return alto * largo    
    }
}
class Triangulo: Figura {
    var base: Double
    var altura: Double
    init(base: Double, altura: Double) {
        self.base = base
        self.altura = altura 
        }
    override func calcularArea() -> Double {
        return (base * altura) / 2
    }
}
class Circulo: Figura {
    var radio: Double
    let pi = 3.1416
    init(radio: Double) {
        self.radio = radio
        }
    override func calcularArea() -> Double {
        return pi * radio * radio
    }
}

var opcion: Int = 0
var bandera = true
repeat {
    print("Menu de opciones")
    print("1.- Cuadrado")
    print("2.- Rectangulo") 
    print("3.- Triangulo")  
    print("4.- Circulo")  
    print("5.- Salir")  
  let opcion = Int(readLine()!)!
    switch opcion {
        case 1:
            print("Ingrese el lado del cuadrado")  
            let xlado = Double(readLine()!)!
            let calculadorDeAreas = Cuadrado (lado: xlado)
            print("El area del cuadrado es: \(calculadorDeAreas.calcularArea())")
            print("")
        case 2:
            print("Ingrese la altura del rectangulo")
            let xalto = Double(readLine()!)!
            print("Ingrese la base del rectangulo")  
            let xlargo = Double(readLine()!)!
            let calculadorDeAreas = Rectangulo (alto: xalto, largo: xlargo)
            print("El area del rectangulo es: \(calculadorDeAreas.calcularArea())")
            print("")
        case 3:
            print("Ingrese la base del triangulo")
            let xbase = Double(readLine()!)!
            print("Ingrese la altura del triangulo")
            let xaltura = Double(readLine()!)!
            let calculadorDeAreas = Triangulo (base: xbase, altura: xaltura)
            print("El area del triangulo es: \(calculadorDeAreas.calcularArea())")
            print("")
        case 4:
            print("Ingrese el radio del circulo")
            let xradio = Double(readLine()!)!
            let calculadorDeAreas = Circulo (radio: xradio)
            print("El area del circulo es: \(calculadorDeAreas.calcularArea())")
            print("")
      case 5:
            print("Saliendo del programa")
            bandera = false
        default:
            print("Opcion no valida")
            print("")
        }
    } while bandera == true
    