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

   def featureB
      eng = pick_engineer
      eng[0,eng.index(" ") + 2] + "..."
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
name = test.pick_engineer
puts name
puts "testing Feature A"#debug
puts test.pick_featureA(name)
puts "testing Feature B"#debug
puts test.featureB
puts "testing Feature C"#debug
print "search : "
text = gets.chomp
puts test.featureC(text)#debug



   



