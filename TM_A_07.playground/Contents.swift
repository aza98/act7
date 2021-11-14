import UIKit
/*:
# Playground - Actividad 7
* Valor por tipo y por referencia
* Funciones personalizadas Y Genericos
* Funciones de la biblioteca Swift para Arreglos
*/


/*: 
### Valor por tipo y por referencia
A) Para la colección "var costo_referencia:[Float] = [8.3,10.5,9.9]", aplicar el impuesto del 16% a través de recorrer la colección "costo_referencia" para aplicar el impuesto a cada cantidad, crear una función Impuesto que recibe como parámetro la colección y regrese aplicado el impuesto a cada cantidad.
*/
var costo_referencia:[Float] = [8.3,10.5,9.9]

let iva = costo_referencia.map {$0 * 1.16}
    .filter{
        print("Este es el valor con el iva incluido \($0) ")
        return $0 < 10
    } 
//: B) Crear la función "sumaTres"  que reciba una función con dos valores a sumar y un segundo parametro para sumar el tercer número.
let Suma = {(x:Int, y:Int) -> Int in return x + y}

func SumaTres(a:Int, b:Int, c:Int) -> Int
{
    return Suma(a, b) + c
}

SumaTres(a: 4, b: 7, c: 10)
/*:
### Funciones personalizadas y Genéricos

 
 A) Generics: Crear la función genérica para intercambiar valores entre dos variables del mismo tipo.
*/
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
//: B) Función personalizada: Crear la función "Transformar" que reciba como parámetro una colección de tipo Int  "var datos = [3,7,9,2]" y una función que transforme cada valor de la coleción en una operación definida fuera de la función, regresando una colección transformada.
let datos2 = [3,7,9,2]
var orden = datos2.sorted{(a, b)-> Bool in a > b}
orden
/*:
### Biblioteca de Swift
A) Aplicar la función de librería de Swift "map" para la colección var precios = [4.2, 5.3, 8.2, 4.5] y aplicar el impuesto de 16% y asignarla a la variable "impuesto"
*/
var precios = [4.2, 5.3, 8.2, 4.5]

let impuesto = precios.map {$0 * 1.16}
    .filter{
        print("Este es el valor con el impuesto incluido \($0) ")
        return $0 < 10
    }
//: B) Aplicar la función de la librería de Swift "filter" para la colección resultante "impuesto" del paso A, en donde se obtengas solo los precios mayores a 6.0 y asignarlos a la variable "precio_menor"
var filtro = precios.filter{a in a > 6}
filtro
