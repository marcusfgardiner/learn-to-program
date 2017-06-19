Dir.chdir '/home/ubuntu/workspace/Projects/learn-to-program/chap11/testdir'

file_names = Dir['/home/ubuntu/workspace/Projects/learn-to-program/chap11/testdir_filescomefromhere/*.txt']

puts "What would you like to call this batch of files"
batch_name = gets.chomp

puts
print "Downloading #{file_names.length} files:  "

file_number = 1

file_names.each do |name|
    print '.'
    
    next if File.exist?(name) == true
        
        new_name = if file_number < 10
            "#{batch_name}0#{file_number}.txt"
        else
            "#{batch_name}#{file_number}.txt"
        end
            
        File.rename name, new_name
        
        file_number = file_number + 1
end
puts
puts "Done, Fella!"