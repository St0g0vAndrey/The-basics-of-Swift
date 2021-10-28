import IOKit

var a: Int = 26

//1. Четное или не четное число
func TwoNumber (ArrayN a: Int)
{
    switch (a % 2)
    {
    case 0:
        print("Ваше число \(a) четное")
    default:
        print("Ваше число \(a) не четное")
    }
}

TwoNumber(ArrayN: a)

//2. Кратное 3 или нет
func ThreeNumber (ArrayN a: Int)
{
    switch (a % 3)
    {
    case 0:
        print("Число \(a) делиться на 3 без остатка")
    default:
        print ("Число \(a) не делиться на 3 без остатка")
    }
}

ThreeNumber(ArrayN: a)


//3. Возрастающий массив из 100 чисел
var NumberArra:[Int] = []

for i in 1...100
{
    NumberArra.append(i)
}

//4. Удаление четных элементов и которые не деляться на 3
var GetArray:[Int] = NumberArra.filter {$0 % 2 != 0 && $0 % 3 != 0 }

for i in 1...GetArray.count
{
    print(GetArray)
}
