#!/usr/bin/python

# *******************************************************************************************************************
# * Project Euler - Problem 1
# *
# * Problem 1 description:
# * If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these 
# * multiples is 23.
# * Find the sum of all the multiples of 3 or 5 below 1000.
# *
# *******************************************************************************************************************/


def problem1():
	sum = 0;
	for i in range(1000):
		if ((i % 3 == 0) or (i % 5 == 0)):
			sum = sum + i
	return sum


print "The answer of problem one is %i" % (problem1())
