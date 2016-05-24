class Jury

	attr_accessor :members

	def initialize
		@members = []
	end

	def add_member(member)
		@members << member
	end

	def cast_votes(finals)
		finals1_total=0
		finals2_total=0
		@members.each do |member|
			one_final = finals.sample
			if one_final==finals[0]
				puts "voted for #{finals[0]}"
				finals1_total += 1
			else
				puts "voted for #{finals[1]}"
				finals2_total += 1
			end
		end
		@@final_votes = {finals[0]=>finals1_total, finals[1]=>finals2_total}
		@@final_votes
	end

	def report_votes(finals)
		@@final_votes.each do |player,votes|
			puts "Votes per player #{votes}"
		end
	end

	def announce_winner(vote_result)
		vote_result = vote_result.to_a
		if vote_result[0][1] > vote_result[1][1]
			puts "The winner is #{vote_result[0][0]}"
			return vote_result[0][0]
		else
			puts "The winner is #{vote_result[1][0]}"
			return vote_result[1][0]
		end

	end
end