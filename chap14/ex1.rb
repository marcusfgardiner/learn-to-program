def profile block_description, &block
    
    #can turn profling of code on and off by just changing this one word of code
    # in this instance - it keeps track of the amount of time it takes the code block to run
    profiling_switch = false
    
    if profiling_switch = true
        start_time = Time.new
        block.call
        duration = Time.new - start_time
        puts "#{block_description}: #{duration} seconds"
    else
        #if profiling off, still call the block of code, just don't need to do the profiling aspect
        # therefore don't have to edit all code below that already includes profiling, just the profiling switch at the top!
        
    # then call the block of code to run (the piece within do and end below)
        block.call
end

profile '25000 doublings' do
    number = 1
    25000.times do
    number = number + number
end

puts "#{number.to_s.length} digits"
# That's the number of digits in this HUGE number.
end


profile 'count to a million' do
    number = 0
    1000000.times do
    number = number + 1
    end
end