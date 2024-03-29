=begin
    is_valid_email
    Write a method is_valid_email that takes in a string and 
    returns a boolean indicating whether or not it is a valid 
    email address.  
    For simplicity, we'll consider an email valid when it 
    satisfies all of the following:
    - contains exactly one @ symbol
    - contains only lowercase alphabetic letters before the @
    - contains exactly one . after the @
=end

def is_valid_email(str)

    parts = str.split("@")

    if parts.length != 2
        return false
    end
    before_at = parts[0]
    after_at = parts[1]
    alpha = "abcdefghijklmnopqrstuvwxyz"

    before_at.each_char do |char|
        if !alpha.include?(char)
            return false
        end
    end

    if after_at.split(".").length == 2
        return true
    else
        return false
    end    
end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false