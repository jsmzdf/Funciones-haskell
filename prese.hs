factorial::Int->Int
factorial 0 = 1
factorial n = n * factorial(n-1)
cuadrado::Int->Int
cuadrado x = x * x
cuadrado (3+4)
infinito :: Integer
infinito = 1 + infinito
tres :: Integer->Integer
tres x = 3
tres infinito 
length [1,3,10]
[1,3,10] ++ [2,6,5,7]
concat [[1], [2,3], [], [4,5,6]]
map fromEnum ['H', 'o', 'l', 'a']

[1..]
[-3..3]
[1..1] 
[9..0] 
[1,3..]
[0,0..]
[5,4..]
[1,3..12]
[0,0..10]
[5,4..1] 
['0'..'9'] ++ ['A'..'Z']
[1.2, 1.35 .. 2.00]

[x | x <- [1 .. 12]]
[x+x | x <- [1 .. 12]]
[x*x | x <- [1..10]]
[x*x |x<-[1..10], even x ]
[x | x <- [1..10], mod x 5 ==0]
[ (x,y) | x<-[1..3], y<-[1..2] ]
[(x,y) | x<-[1..3], y<-[1..x]]
[ x | x<-[[1,2],[3,4]], x<-x ]
[ x | x<-[1,2], x<-[3,4] ]
[ (x,y) | x<-[1..3], y<-[1..2], even x ]
[ (x,y) | x<-[1..3], even x, y<-[1..2] ]

sumar::[Int]->Int
sumar [ ] = 0
sumar (x:xs) = x + sumar(xs)

invertir::Ord a=>[a]->[a]
invertir [ ] = [ ]
invertir (x:xs) = (invertir xs)++[x]
invertir [5,4,7,8]

igualLista:: Eq a => [a]->[a]->Bool
igualLista l1 l2 = l1 == l2
igualLista ["Hola","Mundo"] ["Mundo","Hola"]

lista_ordenada::Ord a=>[a]->Bool
lista_ordenada [] = True
lista_ordenada [_] = True
lista_ordenada (x:y:xs) = (x<=y) && lista_ordenada
(y:xs)
lista_ordenada ['a','b','c','d']

mostrar_ubicacion::Ord a=>[a]->Int->a
mostrar_ubicacion l n = l!!n
mostrar_ubicacion [15,25,26,28] 2

mayor::[Int]->Int
mayor (x:xs)
| x > mayor(xs) = x
| otherwise = mayor(xs)
mayor [78,24,56,93,21,237,46,74,125]

contarpares::[Int]->Int
contarpares []=0
contarpares lista= length [x | x <- lista, mod x 2 ==0]
contarpares [5,4,7,8]

cuadrados::[Int]->[Int]
cuadrados [ ] = [ ]
cuadrados l = [x*x| x <- l]
cuadrados [1..10]

divisible::Int->Int->Bool
divisible x y = (mod x y) ==0

divisibles::Int->[Int]
divisibles x = [y | y <-[1..x],divisible x y]

esPrimo::Int->Bool
esPrimo n = length (divisibles n) <=2

primos::Int->[Int]
primos n = [x | x <-[1..n],esPrimo x]
primos 100
 
head [11,1,1985,22,8,2007]

last [11,1,1985,22,8,2007]

tail [11,1,1985,22,8,2007]

init [11,1,1985,22,8,2007]

length [11,1,1985,22,8,2007]

take 2 [11,1,1985,22,8,2007]

drop 2 [11,1,1985,22,8,2007]

takeWhile (<=15) [1..30]

dropWhile (<=15) [1..30]

reverse [11,1,1985,22,8,2007]

concat ["open","source","solutions"]

words " I like to use Debian GNU/Linux"

unwords ["I","like","to","use","Debian","GNU/Linux"]

elem 't' ['a','f','r','h','t']

notElem 't' ['a','f','r','h','t']




