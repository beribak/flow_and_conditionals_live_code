#"Pedro is the worst TA" =>  PITWT
pedro_horrible_ta = "Pedro is the worst TA"

# 1. Make an arry out of the string
arr = pedro_horrible_ta.split
letters = []

# 2. Go trough array
arr.each do |word|
    # 3. Get first letter of each word and capitazlize if it's small a letter and store it
    letters.push(word.capitalize[0])
end

# 4. Return acronym
p letters