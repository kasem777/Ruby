=begin
Write a method get_full_name that takes in a hash containing a first,
last, and title. The method should return 
a string representing the hash's full name
=end

def get_full_name(hash)
    fullName = hash["first"] + " " + hash["last"] + ", the " + hash["title"]
    return fullName
    


end

x1 = {"first"=>"Michael", "last"=>"Jordan", "title"=> "GOAT"}
puts get_full_name(x1) # => "Michael Jordan, the GOAT"

hash2 = {"first"=>"Fido", "last"=>"McDog", "title"=> "Loyal"}
puts get_full_name(hash2) # => "Fido McDog, the Loyal"
