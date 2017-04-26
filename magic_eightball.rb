# magic-eightball.rb

# using the latest in speech recognition technology!

def print_prompt_for_spoken_question
  puts "-----------------------------------------------------------------"
  puts "Ask a YES/NO question aloud for the MAGIC 8-BALL and press enter "
  puts "\n                   [[  SPEAK HERE  ]] \n\n"
  puts "-----------------------------------------------------------------"
end

def print_waiting_message
  puts "\n\nTHINKING.....\n\n\n"
end

def print_response(response)
  puts "-----------------------------------------------------------------"
  puts "THE MAGIC 8-BALL SAYS: #{response}"
  puts "-----------------------------------------------------------------"
end

def wait_for_sec(for_seconds)
  sleep for_seconds
end

responses = [ "As I see it, yes",
  "Ask again later",
  "Better not tell you now",
  "Cannot predict now",
  "Concentrate and ask again",
  "Don’t count on it",
  "It is certain",
  "It is decidedly so",
  "Most likely",
  "My reply is no",
  "My sources say no",
  "Outlook good",
  "Outlook not so good",
  "Reply hazy, try again",
  "Signs point to yes",
  "Very doubtful",
  "Without a doubt",
  "Yes",
  "Yes, definitely",
  "You may rely on it." ]

input_text = ""
random_index = 0
sleep_time_sec = 2

while input_text != "n" do
  print_prompt_for_spoken_question
  system 'say -v Ralph Go ahead, ask me anything'

  input_text = gets.chomp

  magic_number = Random.new
  random_index = magic_number.rand(responses.length)

  print_waiting_message
  wait_for_sec sleep_time_sec

  print_response responses[random_index]
  wait_for_sec sleep_time_sec

  system 'say -v Ralph ' + responses[random_index]

  print "Ask another question? (y/n)"
  input_text = gets.chomp

end
