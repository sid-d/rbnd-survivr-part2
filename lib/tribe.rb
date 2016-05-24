require 'colorizr'
class Tribe
	attr_reader :name
	attr_accessor :members

	def initialize(options={})
		@name = options[:name]
		@members =options[:members]
		puts @name.red + " tribe has been created"
	end

	def to_s
		@name
	end

	def tribal_council(options={})
		out_member = @members.reject {|member| member == options[:immune]}.sample
		@members.delete(out_member)
	end
end