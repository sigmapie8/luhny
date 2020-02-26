import unittest
import luhny

suite "Testing Luhny":
    echo "Initializing..."
    
    test "Wrong input test":
        check(check_number("12345") == false)
        
    test "Correct input test":
        check(check_number("4532196437678779") == true)
        
    test "Single 0":
        check(check_number("0") == true)
        
    test "Empty String":
        check(check_number("") == true)
        
    echo "Tests Completed"

