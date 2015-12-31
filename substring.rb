def substrings (words, dictionary)
	results = {}
	count = 0
	array = (words.downcase).split(' ')
	dictionary.each do |i|
		array.each do |word|
			count+=1 if (word.include? i)
		end
		results[i] = count if count > 0
		count = 0
	end
	return results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy low below its go going it", dictionary)
