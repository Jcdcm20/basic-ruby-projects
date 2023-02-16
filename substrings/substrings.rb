def substrings(string, dic)
    arr = string.downcase.split()
    
    hash = arr.reduce(Hash.new(0)) do |list, value|
        dic.each do |word|
            if value.include?(word)
                list[word] += 1
            end
        end
        list
    end

    p hash
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", 
            "it", "i", "low", "own", "part", "partner", "sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)