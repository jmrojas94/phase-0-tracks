# module Shout

# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!" + " :)"
# 	end

# end

# p Shout.yelling_happily("Yes")
# p Shout.yell_angrily("NO")

module Shout

	def yell_angrily(words)
		puts "#{words}" + "!!!" + " :("
	end

	def yell_happily(words)
		puts "#{words}" + "!!!" + " :)"
	end

end

class Child

	include Shout

end

class Stressed_Out_Adult

	include Shout

end

child = Child.new
child.yell_angrily("HUNGRY")
child.yell_happily("Not hungry")

adult = Stressed_Out_Adult.new
adult.yell_angrily("UGH")
child.yell_happily("FINALLY")