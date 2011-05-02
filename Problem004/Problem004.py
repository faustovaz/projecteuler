#!/usr/bin/python

##########################################################################################
#	Project Euler - Problem 4
#
#	Problem 4 description:
#       A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.
#       Find the largest palindrome made from the product of two 3-digit numbers.
#
##########################################################################################

def isPalyndrome(number):
    numberSTR = str(number)
    numberSTRReverted = numberSTR[::-1]
    return (numberSTR == numberSTRReverted)

def findTheLargestPalyndrome():
    largestPalyndrome = 0;
    for i in range(100, 999):
        for j in range(100, 999):
            possiblePalyndrome = i * j
            if(isPalyndrome2(possiblePalyndrome)):
                 if(possiblePalyndrome > largestPalyndrome):
                     largestPalyndrome = possiblePalyndrome
    return largestPalyndrome

print findTheLargestPalyndrome()
