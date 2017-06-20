$nesting_depth = 0

def log string_description, &block
    
    $indentation = ' ' * $nesting_depth

    puts $indentation + "Block #{string_description} started"
    
    $nesting_depth += 1
    
    return_value = block.call
    
    $nesting_depth -= 1
    $indentation = ' ' * $nesting_depth
    
    puts $indentation +"Block #{string_description} finished"
    puts $indentation +"The final value it returned was: " + return_value.to_s
    
end


log 'outer block says hello' do
    
    5.times do 
        puts $indentation +  "Hello"
    end
    
        log 'inner block says goodbye' do
            
            5.times do 
                puts  $indentation + "Goodbye"
            end
        false
        
        end
        
    true
    
end