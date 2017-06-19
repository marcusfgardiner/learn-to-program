#Using Cloud 9 so could not customise code to my own playlist

# this method takes an already defined array of songs e.g. as in ex2, and shuffles them
# i.e. this is only doing the shuffling aspect, not pulling the files from a directory!

def music_shuffle filenames
    #sort then shuffle - we don't want perfect shuffle either so don't use
    #shuffle method this time, but create a different shuffle method
    # create 2 card piles and shuffle them together
    
    #sort them first so we have them in order
    filenames = filenames.sort
    #get the number of files we have in total
    len = filenames.length
    
    #this 2 times refers to the whole chunk below - times needs an 'end'
    #------------------------------------------------------------------------
    2.times do
    #what this does is divide the deck into 2 e.g. if 50 cards, piles of 25
    #l_index is first half of cards (e.g. 1-25), r_index is second half of cards (e.g. 26-50)
        l_idx = 0 # index of next card in left pile
        r_idx = len/2 # index of next card in right pile
        shuf = []
    # Note: if odd number of cards, right pile will be larger
    
        #i.e. 'while' shuf array doesn't yet have all files in, keep adding
        # what this does is mix the cards together as take 1 from left, take 1 from right
        # it goes through and mixes the cards in this way twice
        while shuf.length < len
            #if shuf array number of files is even
            if shuf.length%2 == 0
                # take card from right pile
                shuf.push(filenames[r_idx])
                r_idx = r_idx + 1
            else
                # take card from left pile
                shuf.push(filenames[l_idx])
                l_idx=l_idx + 1
            end
        end

    filenames = shuf
    
    end
    
     #------------------------------------------------------------------------
    
    
    #After organised 'shuffling' above, cut the deck at random and put into final array 'arr'
    arr = []
    cut = rand(len)
    idx = 0
    
    #i.e. don't stop until have gone through entire deck (not including cut number adding to index to ensure go through WHOLE deck)
    while idx < len
    #the % len is what enables it to go back around to the beginning BEFORE the cut point to add the cards from the rest of the deck
    # e.g. when idx+cut is more than length e.g. 55%50 => it gives you the remainder e.g. 5
        arr.push(filenames[(idx+cut)%len])
        idx = idx + 1
    end

end

songs = ['aa/bbb', 'aa/ccc', 'aa/ddd',
'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']

puts(music_shuffle(songs))