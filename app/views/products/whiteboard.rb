# 1. Write a function that accepts an array as a parameter and returns true or false depending on whether there are any duplicate values. Use the nested loops approach as described in the slides.

# input: array = [1, 2, 3, 3, 4]
# output: true, false

# create a function
# create array
# loop through first array
# have 2nd loop compare first array with 2nd position
# output true or false if the elements match


# array = [1, 2, 3, 3, 4]


  
# array.each do |number|            #each loop that goes through each element of the array and sets it to number   
#   index = 0                       #array[0] = 1
#   while index < 5                 #while 0 less than 5                        #number = 1, number = 2, number = 3, number = 3, number = 4

#     index += 1                    #index + 1
    
#     if array[index] == number  
#       p false                              #if 2 == 1
#                                   #puts false
#     end                 
#   end
# end


# 3. Write a function that accepts a string as a parameter and returns an array containing each character as a separate value, but the character must also be capitalized.

# create empty array
# create index
# cycle through string 
# shovel each position into empty array

# input = "hello"
# output = ["H", "E", "L", "L", "O"]


# input = "hello"
# index = 0
# array = []
# while index < input.length
#   array << input[index].upcase
#   index += 1
# end

# p array

# 4. Write a function that accepts an array of numbers and returns the sum of all odd numbers.

# input = [1, 2, 3, 4]
# output = [4]

# create empty array
# create index
# create loop 
# shovel odd numbers into empty array
# add all numbers in new array

input = [1, 2, 3, 4]
sum = []
index = 0
input.each do |num|
  if num.odd? == true
    sum << num
  end
  
end

p sum.sum









