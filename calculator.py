"""
Calculator module for vauxoo test.
This module illustrates a Class to sum a numbers list.
"""


class CalculatorClass(object):
    """
    This class sum a numbers list
    """

    def sum(self, num_list):
        """
        returns SUM(num_list)

        :param num_list: numbers list
        :type num_int: list
        :return: SUM(num_list).
        :rtype: int, float,...

        :Example:

        >>> import calculator
        >>> p = calculator.CalculatorClass()
        >>> p.sum([1,2])
        3

        .. todo:: check that num_list is a list of numbers
        """
        # your sum code here
        result = 0
        for num in num_list:
            result = result + num
        return result
