require 'colorizr'
class Game
	attr_reader :tribes

	def initialize(tribe1,tribe2)
		@tribes = [tribe1,tribe2]
	end

	def add_tribe(tribe)
		@tribes << tribe
	end

	def immunity_challenge
		losing_tribe = @tribes.sample
		puts "The losing tribe is " + losing_tribe.to_s.red
		losing_tribe
	end

	def clear_tribes
		@tribes.clear
	end

	def merge(tribe_name)
		all_members = @tribes[0].members + @tribes[1].members
		new_tribe=Tribe.new(name: tribe_name, members: all_members)
		clear_tribes
		add_tribe(new_tribe)
		new_tribe
	end

	def individual_immunity_challenge
		winner = @tribes.sample.members.sample
		puts "The winner is #{winner} and will not be eliminated."
		winner
	end
end