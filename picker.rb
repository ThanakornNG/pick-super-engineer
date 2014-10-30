class Engineer
   def initialize()
      @engineers = File.open("engineers.txt").readlines #load and split all line$
   end

   def pick_engineer
      @engineers.sample #random and return string
   end

   def pick_featureA(name)
      name.gsub " ","." #replace space with dot
   end
     
	
end
test = Engineer.new()
name=test.pick_engineer
puts name
puts test.pick_featureA(name)
