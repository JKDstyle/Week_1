require "pry"
class Room
	attr_accessor  :doors, :description

	def initialize(doors,description)
		@doors = doors
		@description = description
	end
end


 class Game
 	def initialize
 		@current_location = 0
 		@rooms = [ Room.new(["W"],"you are in the Hell room"),  Room.new(["W","E"],"you are in the heaven room") ]
 	end

 	def player_choise
 		game_over
 		puts @rooms[@current_location].description
 		puts "You can choose the following: #{@rooms[@current_location].doors.join(", ")}"
 		puts "where do you want to go?"
 		print ">"
 		input = gets.chomp

 		if input == @rooms[@current_location].doors[0]
 			puts "Good" 			
 			@current_location += 1
 			player_choise
 				
 		elsif input == @rooms[@current_location].doors[1]
 			puts "Good" 			
 			@current_location += 1
 			player_choise
 		else
 			puts "you are in the wrong path"
 			player_choise 	
 		end
 	end

 	def game_over
 		if  @current_location >= @rooms.count
 			puts "end of game"
 			exit
 		end 		
 	end

 end

 Game.new.player_choise
