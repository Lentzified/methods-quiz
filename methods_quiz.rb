	
# TODO - write has_teen?

def has_teen?(a, b, c)

	a.between?(13,19) || b.between?(13,19) || c.between?(13,19)

end

# TODO - write not_string

def not_string(str)

	str[0,3] == "not" ? str : "not " + str

end

# TODO - write icy_hot?

def icy_hot?(a, b)

	a >= 100 && b <= 0 || a <= 0 && b >= 100

end

# TODO - write closer_to

def closer_to(a, b, target)

	target - a < target - b ? a : target - a > target - b ? b : 0

end

# TODO - write two_as_one?

def two_as_one?(a, b, c)

	!(a + b = c) || !(b + c = a) || !(a + c = b) ? false

end

# TODO - write pig_latinify

def pig_latinify(str)

	str.downcase[0,1] == "a" || str.downcase[0,1] == "e" || str.downcase[0,1] == "i" || str.downcase[0,1] == "o" || str.downcase[0,1] == "u" ? str[1,-1] : false

end