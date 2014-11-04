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

   def featureB(name)
      name[0,name.index(" ") + 2] + "..."
   end

   def featureC(txt)# by Karntchana S.
      nameList = Array.new
      x = @engineers.find_all { |line| line =~ /#{Regexp.quote(txt)}/ } # the magic by looking up names containing string
      x.each{|a|
        nameList.push(a)#
      }
      puts nameList[rand(nameList.length)] ## fetch random name from searched list and print it.
      
   end
end


test = Engineer.new()

=begin
puts name
puts "testing Feature A"#debug
puts test.pick_featureA(name)
puts "testing Feature B"#debug
puts test.featureB
puts "testing Feature C"#debug
=end 

if ! ARGV.empty?# check if argument is nil
	name = test.featureC(ARGV[0]) # grab the argument
	
	if name != ""
		puts "1. %s" % [name]# print out randomed name by search argument

		puts "2. %s" % [test.pick_featureA(name)]

		puts "3. %s" % [test.featureB(name)]
	end
end

if ARGV.empty?# check if argument empty
	name = test.pick_engineer# grab the argument
	
	if name != ""
		puts "1. %s" % [name]# print out randomed name by search argument

		puts "2. %s" % [test.pick_featureA(name)]

		puts "3. %s" % [test.featureB(name)]
	end
end




   



