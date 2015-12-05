=begin
	
input: title, topic, date, fact, thesis
output: essay
date.to_s
puts title then an intro with a topic mentioned
puts the thesis 
puts date and fact
puts a conclusion
	
=end



def essay_writer(title, topic, date, fact, thesis)
	str_date = date.to_s
	puts "#{title}."
	puts "#{topic} was a great human being. #{topic} was responsible in many ways for changing the course of human history."
	puts "#{thesis}"
	puts "After being born in #{str_date}, #{topic} became #{fact}. This is why #{thesis}"
	puts "#{topic} was a human being who changed history. #{topic} will be remembered for a long time."
end


essay_writer("The meaning of Abraham", "Abraham Lincoln", 1809, "the writer of the gettysburg address", "Lincoln influenced american society more than any other president.")

essay_writer("Theodore a True Man", "Theodore Roosevelt", 1858, "the first conservationist and a true champion for the little guy by being a trust buster", "Theodore Roosevelt was the greatest champion for the average American out of all American presidents.")