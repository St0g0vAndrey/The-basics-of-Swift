import Foundation
import IOKit

//Квадратное уравнение

print("Ваше квадратное уравнение x^2-8x+12=0")

var aa: Double = 1
var bb: Double = 8
var cc: Double = 12

var D = (pow(bb, 2)) - (4 * aa * cc)

if D == 0
{
    var x1 = (-bb)/2*aa
    print("Имеется один корень", x1)
    
}
else if D > 0
{
    let k1: Double = bb / 2
    var D1: Double = (pow((k1), 2) - (aa * cc))
    var x1: Double = (k1 + D1.squareRoot()) / aa
    var x2: Double = (k1 - D1.squareRoot()) / aa
    
    print ("Значение x1: ", x1)
    print("Значение x2: ", x2)
}
else
{
    print("Корней данного уравнения нет")

}

print((-2)*(-6))

//Площадь, периметр, гипотенуза
var a:Double = 10
var b:Double = 6

var s = (a*b)/2
var C = (pow(a, 2) + pow(b, 2)).squareRoot()
var P = a + b + C


print("Гипотенуза треугольника:",C)
print("Периметр треугольника:", P)
print("Площадь треугольника:", s)


//сумма вклада через 5 лет

var userBank: Int = 5000
var interest: Int = 6

var res: Int = 0
for i in 1...5 where i > 0
{
    userBank = userBank + (userBank * interest) / 100
    res + i
    print (res, "Сумма ващего вклада:", userBank)
}


for i in 1...5
{
    userBank = userBank + (userBank * interest) / 100
    print (i, "Сумма ващего вклада:", userBank)}


