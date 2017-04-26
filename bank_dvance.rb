filename = "myAccount.txt"
TXT = open(filename,'r+')

class Customer
  def initialize(name,account,email,address,contact)
    @name = name
    @account = account
    @email = email
    @address = address
    @contact = contact
  end
attr_accessor :name, :account, :email, :address, :contact

  def getbalance
    @balance = TXT.read
  end

  def setbalance
    TXT.write(@balance)
  end

  def updatebalance
    TXT.rewind
    @balance = TXT.read
  end

class Bankacc
  def initialize(balance)
    @balance = balance
  end

attr_accessor :balance
end

nandini=Customer.new("nandini",Bankacc.new(200),"nandini.r.nayak@gmail.com","248 North RD","470104234")

filename ="account.txt"
txt = open(filename,'r+')
while nandini.account.balance !=0
  puts "Hey what do you wanna do"
  puts "1 - Withdrawal $20"
  puts "2 - deposit $20"

  input = gets.chomp.to_i

  if input == 1
    puts "Hey you have made a withdrawal of $20"
    nandini.account.balance -= 20
    # File.truncate(filename,0)
    txt.write(nandini.account.balance)
    print txt.read
    puts "you current balance is #{nandini.account.balance}"
  elsif input == 2
    puts "Hey thanks for the deposit of $20"
    puts "your current balance is #{nandini.account.balance}"
    nandini.account.balance += 20
    # File.truncate(filename,0)
    txt.puts("My Account balance")
    txt.write(nandini.account.balance)
    print txt.read
  else
    puts "wrong entry, try again"
  end
end
