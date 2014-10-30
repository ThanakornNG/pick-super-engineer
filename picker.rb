class Engineer
   def initialize()
      @engineers = File.open("engineers.txt").readlines #load and split all line$
   end

   def pick_engineer
      @engineers.sample #random and return string
   end
   
   def featureC(txt)# by Karntchana S.
      nameList = Array.new
      x = @engineers.find_all { |line| line =~ /#{Regexp.quote(txt)}/ } # the magic by looking up names containing string
      x.each{|a|
        nameList.push(a)#
      }
      puts nameList[rand(nameList.length)] ## fetch random name from searched list and print it.
      
   end
   def pick_featureA(name)
      name.gsub " ","." #replace space with dot
   end
     
      
   
   
end
test = Engineer.new()
name=test.pick_engineer
puts name
puts test.pick_featureA(name)
puts "testing Feature C"#debug
puts test.featureC('arn')#debug

