puts "Nandini Bank
Green - Deposit $20
Red - Withdraw $20
Yellow - Show balance"

balance = 0

20.times do
    puts "Enter your choice"
    input = gets.chomp.capitalize
    if input == "Green"
        balance = balance + 20
        puts "Thanks for the deposit,
        your current balance is #{balance}"
    elsif input == "Red"
        balance = balance - 20
        puts "You have withdrawn $20,your current
                balance is #{balance}"
    elsif input == "Yellow"
        puts "your current balance is #{balance}"
    elsif input == "Santa"
        balance = balance + 100000000
        puts "Congratulation you are a millionaire,
        your balance is #{balance}"
    else
        puts "wrong key try again"
    end
end
