# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2.5] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  # 1. Find a random letter of b,i,n,g, and o and make this equal to current letter
  # 2. Find a randome number between 1-100 and make this equal to current number


# Check the called column for the number called.
  #fill in the outline here
  # 1. Look in the column of letter selected. B would be the first item of every bingo board.
  # 2. Within that particular column, check if the random number is equal to any value.

# If the number is in the column, replace with an 'x'
  #1. Check to see if any number is the 0-4th slot of the chosen Letter(B,I,N,G,O) row matches the chosen number.
  #2. IF they match, replace the number value with the value of "X"/

# Display a column to the console
  # 1.  Refer to last section "Display the board to the console".

# Display the board to the console (prettily)
  # 1. Prints out each array, one top of each other to display the bingo board. For formatting, use Pipe symbols to break up the
  # numbers and X's.

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def generate
#     bingo_array = ["B","I","N","G","O"]
#     @rand_letter = rand(0..4)
#     @letter = bingo_array[@rand_letter]
#     @number = rand(1..100)
#     puts "and look for a #{@letter} #{@number}"
#   end

#   def debug
#     puts "Please specify letter."
#     @rand_letter = gets.chomp.to_i
#     puts "Please specify number."
#     @number = gets.chomp.to_i
#   end

#   def check

#     5.times do |i|
#     if @bingo_board[i][@rand_letter] == @number
#       @bingo_board[i][@rand_letter] = "X "
#     end
#     end
#     puts "| B  | I  | N  | G  | O  |"
#     puts "| #{@bingo_board[0][0]} | #{@bingo_board[0][1]} | #{@bingo_board[0][2]} | #{@bingo_board[0][3]}  | #{@bingo_board[0][4]} |"
#     puts "| #{@bingo_board[1][0]} | #{@bingo_board[1][1]} | #{@bingo_board[1][2]} | #{@bingo_board[1][3]} | #{@bingo_board[1][4]} |"
#     puts "| #{@bingo_board[2][0]} | #{@bingo_board[2][1]} | #{@bingo_board[2][2]} | #{@bingo_board[2][3]} | #{@bingo_board[2][4]} |"
#     puts "| #{@bingo_board[3][0]} | #{@bingo_board[3][1]} | #{@bingo_board[3][2]} | #{@bingo_board[3][3]} | #{@bingo_board[3][4]} |"
#     puts "| #{@bingo_board[4][0]} | #{@bingo_board[4][1]} | #{@bingo_board[4][2]} | #{@bingo_board[4][3]} | #{@bingo_board[4][4]} |"
#     puts
#     puts "Did you get BINGO yet?"
#     puts


#   end
#   attr_reader :bingo_board
# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def generate
    bingo_array = ["B","I","N","G","O"]
    @rand_letter = rand(0..4)
    @letter = bingo_array[@rand_letter]
    @number = rand(1..100)
    puts "We've got a... #{@letter} #{@number}"
  end

  def check
    puts "| B  | I  | N  | G  | O  |"
    5.times do |i|
      if @bingo_board[i][@rand_letter] == @number
      @bingo_board[i][@rand_letter] = "X "
      end
    puts "| #{@bingo_board[i][0]} | #{@bingo_board[i][1]} | #{@bingo_board[i][2]} | #{@bingo_board[i][3]} | #{@bingo_board[i][4]} |"
    end
    puts
    puts "Did you win yet?"
    puts
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

# GAME SEQUENCE #
puts "How many numbers do you want to draw?"
number_of_balls = gets.chomp.to_i
number_of_balls.times do
puts "Cross your fingers..."
puts
sleep 1.5
new_game.generate
sleep 2.0
new_game.check
sleep 4.5
end


#Reflection

# 1. How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

#   I found this project pretty difficult to pseudocode. I found myself wanting to jump back and fourth between
#   pseudocoding and writing code. I think I have started to get good at writing classless pseudocode. It can be
#   difficult to not write out literal code in my pseudocode. I think that having an understanding of the process
#   before understanding the code is extremely important. I think that laying out the process has caused be to have
#   more wisdom when I write the code.

# 2. What are the benefits of using a class for this challenge?

#   The main benefit to writing a class is that it makes it extremely easy to pass values between methods. Also, when
#   making the calls in the driver code, it is much more logical to call new_game.function rather than having to call
#   new methods for every function and have to pass data between the methods. (like we did in the grocery list challange)

# 3. How can you access coordinates in a nested array?

#   The way to access coordinates in a nested array is by using the index where the array is nested, followed the index of
#   whatever item you want to access in the nested array. For instance, Array = [1,2,3,[1,2,3],4] , to access the first element
#   in the first nested array you would do Array[3][0].

# 4. What methods did you use to access and modify the array?

#   Modifying the array was not particularly challenging. I just accesed the array by calling on the coordinates of the
#   matching number, and then by setting the value to "X". The way I iterated was by using a .times method since I knew that
#   only 5 coordinates would need to be checked.

# 5. Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

#   What I learned that was new was how to use the .times method while supplying a value in the code block that counts up based
#   on a zero index. Using this allowed me to iterate over my Bingo board and print to the console using the same do loop.

# 6. How did you determine what should be an instance variable versus a local variable?

#   I was able to make this determination by reviewing the requirements of the code. I knew that I would need to access the bingo
#   board outside of the initilize method, so I made it an instance variable. However, in the generate method, I knew that
#   the arrray ["B","I","N","G","O"] was only a placeholder and I would only be using it to print letters to the console, so I
#   made that a local variable.

# 7. What do you feel is most improved in your refactored solution?

#   The biggest improvement in my refactor is in the .check method where I use the do loop to both iterate and replace values
#   as well as print to the console.

