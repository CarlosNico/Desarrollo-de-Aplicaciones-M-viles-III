while true {
    print("Ingresar un número (Para terminar escribir salir): ")

    if let entrada = readLine() {
        if entrada.lowercased() == "salir" {
            print("Gracias, te esperamos pronto.")
            break
        }

        if let numero = Int(entrada) {
            if numero % 2 == 0 {
                print("El número \(numero) es par.\n")
            } else {
                print("El número \(numero) es impar.\n")
            }
        } else {
            print("Entrada no válida. Ingresar un número o 'salir'.\n")
        }
    }
}