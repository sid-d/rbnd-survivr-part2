require 'colorizr'
class Game
	attr_reader :tribes

	def initialize(a,b)
		@tribes = [a,b]
	end

	def add_tribe(a)
		@tribes << a
	end

	def immunity_challenge
		losing_tribe = @tribes.sample
		puts "The losing tribe is " + losing_tribe.to_s.red
		losing_tribe
	end

	def clear_tribes
		@tribes.clear
	end

	def merge(a)
		all_members = @tribes[0].members + @tribes[1].members
		Tribe.new(name: a, members: all_members)
	end

	def individual_immunity_challenge
		winner = @tribes.sample.members.sample
		puts "The winner is #{winner} and will not be eliminated."
		winner
	end
end