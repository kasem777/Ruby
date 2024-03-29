# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
#
# Difficulty: easy.

def palindrome?(string)
    i = 0
    
    backward = ""
    #           abc
    while i < string.length
        backward = string[i] + backward

        i += 1
    end
    if backward == string
        return true
    else
        return false
    end
    
    
end
puts palindrome?("abc")
puts palindrome?("abcba")

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

# puts("\nTests for #palindrome?")
# puts("===============================================")
#     puts('palindrome?("abc") == false: ' + (palindrome?('abc') == false).to_s)
#     puts('palindrome?("abcba") == true: ' + (palindrome?('abcba') == true).to_s)
#     puts('palindrome?("z") == true: ' + (palindrome?('z') == true).to_s)
# puts("===============================================")