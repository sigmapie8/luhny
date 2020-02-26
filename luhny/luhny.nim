# Credits: The code for check_number has been taken from https://www.rosettacode.org/wiki/Category:Nim

proc check_number*(cc: string): bool =
    #[
    checks if the number provided is valid 
    according to the Luhn's Algorithm
    ]#
    
    const m = [0,2,4,6,8,1,3,5,7,9]
    var sum = 0
    var odd = true
    for i in countdown(cc.high, 0):
        let digit = ord(cc[i]) - ord('0')
        sum += (if odd: digit else: m[digit])
        odd = not odd
    
    return (sum mod 10) == 0
