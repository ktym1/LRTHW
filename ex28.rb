true && true #true
false && true #false
1 == 1 && 2 == 1 #false
"test" == "test" #true
1 == 1 || 2 != 1 #true
true && 1 == 1 #true
false && 0 != 0 #false
true || 1 == 1 #true
"test" == "testing" #false
1 != 0 && 2 == 1 #false
"test" != "testing" #true
"test" == 1 #false
!(true && false) #true
!(1 == 1 && 0 != 1) #false
!(10 == 1 || 1000 == 1000) #false
!(1 != 10 || 3 == 4) #false
!("testing" == "testing" && "Zed" == "Cool Guy") #true
1 == 1 && (!("testing" == 1 || 1 == 0)) #true
"chunky" == "bacon" && (!(3 == 4 || 3 == 3)) #false
3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun")) #false

"""
Whenever you see these boolean logic statements, you can solve them easily by this simple process:

Find an equality test (== or !=) and replace it with its truth.
Find each &&/|| inside parentheses and solve those first.
Find each ! and invert it.
Find any remaining &&/|| and solve it.
When you are done you should have true or false.

Why does "test" && "test" return "test" or 1 && 1 return 1 instead of true?
Ruby and many languages like it return one of the operands to their boolean expressions rather than just true or false. 
This means that if you did false && 1 you get the first operand (false) but if you do true && 1 your get the second (1).

"""
