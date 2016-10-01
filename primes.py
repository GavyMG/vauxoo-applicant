"""
Primes module for vauxoo test.
This module illustrates a Class to check prime numbers.
"""
import math


class PrimeClass(object):
    """
    Prime Class to check if a integer is prime
    """

    def is_prime(self, num_int):
        """
        Return True if num_int is prime. Return False otherwise.

        :param num_int: integer
        :type num_int: int
        :return: True if num_int is prime.
        :rtype: bool

        :Example:

        >>> import primes
        >>> p = primes.PrimeClass()
        >>> p.is_prime(2)
        True

        .. todo:: check that num_int is int
        """
        # a prime is a natural number greater than 1
        if num_int < 2:
            return False
        # 2 is prime
        elif num_int == 2:
            return True
        # check for divisor
        else:
            top = math.floor(num_int/2)
            while top >= 2:
                if num_int % top == 0:
                    return False
                else:
                    top = top-1

            return True
