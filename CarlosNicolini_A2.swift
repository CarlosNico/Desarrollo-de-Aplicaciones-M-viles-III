struct Articulo {
  var nombre: String
  var cantidad: Int
}

func registroArticulo() -> Articulo {
  print("Registrar Artículos")
  print("Ingresa el nombre del artículo:")
  let nombre = readLine() ?? "Desconocido"

  print("Ingresa la cantidad de existencia:")
  let cantidad = Int(readLine() ?? "0") ?? 0

  return Articulo(nombre: nombre, cantidad: cantidad)
}

func mostrarListado(articulos: [Articulo]) {
  print("Listado de Artículos")
  for (indice, articulo) in articulos.enumerated() {
      print("Artículo \(indice + 1): \(articulo.nombre)")
      print("Cantidad: \(articulo.cantidad)")
  }
}

func consultaDeArticulo(articulos: [Articulo]) {
  print("Consulta de Artículos")
  print("Ingresa el nombre del artículo a consultar:")
  let nombre = readLine() ?? ""

  var encontrado = false
  for (indice, articulo) in articulos.enumerated() {
      if articulo.nombre.lowercased() == nombre.lowercased() {
          print("Artículo \(indice + 1): \(articulo.nombre)")
          print("Cantidad: \(articulo.cantidad)")
          encontrado = true
          break
      }
  }

  if !encontrado {
      print("Artículo no encontrado.")
  }
}

// Variables globales
var articulos: [Articulo] = []
var opcion = 0

repeat {
  print("""
  \n--- Menú de inventario ---
  1. Registro de articulo
  2. Listado de articulos
  3. Consulta de articulos
  4. Salir del inventario
  Selecciona una opción:
  """)

  if let input = readLine(), let seleccion = Int(input) {
      opcion = seleccion

      switch opcion {
      case 1:
          let nuevoArticulo = registroArticulo()
          articulos.append(nuevoArticulo)
          print("*** Artículo registrado ***")

      case 2:
          mostrarListado(articulos: articulos)

      case 3:
          consultaDeArticulo(articulos: articulos)

      case 4:
          print("Saliendo del programa...")

      default:
          print("Opción inválida. Elija opciones del 1 al 4.")
      }
  } else {
      print("Entrada inválida. Ingresa un número.")
  }

} while opcion != 4