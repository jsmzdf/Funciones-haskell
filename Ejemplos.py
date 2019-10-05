#Funcion para contar pares
def contar_pares(num):
    return len([numero for numero in num if numero%2 == 0])
print(f"En la lista hay: {contar_pares([5,4,7,8])} pares")

#Lista por comprensión Cuadrados:
def cuadrados(lis):
    return [numero**2 for numero in lis]
print(f"Cuadrados de la lista: {cuadrados([1,2,3,4,5,6,7,8,9,10])}")

#Lambda Cuadrados
lista1 = [1,2,3,4,5,6,7,8,9,10]
print(f"Cuadrados con lambda: {list(map(lambda x: x**2,lista1))}")

#Devolver primos
    #Verifica si es divisible (booleano)
def divisible(numerador,divisor):
    return numerador % divisor == 0
    #Entrega la lista de divisibles
def divisibles(numero):
    return [divisor for divisor in range(1,numero+1) if divisible(numero, divisor)]
    #Verifica si es primo (booleano)
def es_primo(num):
    return (len(divisibles(num)) <=2)
    #Devuelve los primos
def primos(n):
    return [lista for lista in range(1,n+1) if es_primo(lista)]
    #resultado
print(f"Lista de primos hasta {100}\n{primos(100)}")
