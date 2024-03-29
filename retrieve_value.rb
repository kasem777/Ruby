=begin
    Write a method retrieve_values that takes in two hashes and a key. 
    The method should return an array containing the values from the two hashes 
    that correspond with the given key.
=end

def retrieve_values(hash1, hash2, key)
    k1 = hash1[key]
    k2 = hash2[key]
    return [k1, k2]
end

dog1 = {"name"=>"Fido", "color"=>"brown"}
dog2 = {"name"=>"Spot", "color"=> "white"}
print retrieve_values(dog1, dog2, "name") #=> ["Fido", "Spot"]
puts
print retrieve_values(dog1, dog2, "color") #=> ["brown", "white"]
puts