class Jury

	attr_accessor :members

	def initialize
		@members = []
	end

	def add_member(a)
		@members << a
	end

	def cast_votes(a)
		a0=0
		a1=0
		@members.each do |b|
			z = a.sample
			if z==a[0]
				puts "voted for #{a[0]}"
				a0 += 1
			else
				puts "voted for #{a[1]}"
				a1 += 1
			end
		end
		@@final_votes = {a[0]=>a0, a[1]=>a1}
		@@final_votes
	end

	def report_votes(a)
		@@final_votes.each do |x,y|
			puts "Votes per player #{y}"
		end
	end

	def announce_winner(a)
		a = a.to_a
		if a[0][1] > a[1][1]
			puts "The winner is #{a[0][0]}"
			return a[0][0]
		else
			puts "The winner is #{a[1][0]}"
			return a[1][0]
		end

	end
end