#!/usr/bin/python

##########################################################################################
#	Project Euler - Problem 3
#
#	Problem 3 description:
#	The prime factors of 13195 are 5, 7, 13 and 29.
#	What is the largest prime factor of the number 600851475143 ?
#
##########################################################################################

import math

#My Solution to problem 3 of project Euler
#
#I complicated a lot this problem. First i implemented unnecessarily the Sieve of Eratosthenes and then
#i search for the factor that composed the number 600851475143.
#So inefficient by the way.

def mySolution(number):
    squareRoot = int(math.floor(math.sqrt(number)))
    numbers = [True for i in range(squareRoot)]
    sizeOfNumbers = len(numbers)
    result = 1
    for i in range(2, sizeOfNumbers):
        if(numbers[i]):
            j = i + 1
            for j in range(j, sizeOfNumbers):
                if not j % i:
                    numbers[j] = False
            if (number % i == 0):
                result = result * i
            if (result == number):
                return i



#Here goes the solution of a guy that is a member of the project euler, so much more efficient and smart than mine :S
#He just refactors the number without concerning about prime numbers
def solutionOfASmartGuy(number):
    divisor = 2
    while (number > 1):
        if (0 == (number % divisor)):
            number /= divisor;
        else:
            divisor = divisor + 1
    return divisor

print "My solution: %i" % mySolution(600851475143)
print "Project Euler guy solution: %i" % solutionOfASmartGuy(600851475143)

