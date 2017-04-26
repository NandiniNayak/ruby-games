#####create a restaurant menu displaying the menu bar on the terminal
####take the order from the customer and output the bill.

#add a gem to display the menu as table
exit = false
require 'terminal-table'

class Customer
  def initialize
    @bill = 0
  end
  attr_accessor :food,:orderNo,:bill

  def menu
   system "cls"
    @menu =Hash.new
    rows=[]
    table =[]
    @menu=Hash["1.paneer mutter" => 20,"2.Birayani" =>15 , "3.papadam" => 2, "4.Gulab jamoon"=>5]
    @menuList = Hash[1 => 20, 2=>15, 3 => 2, 4 =>5]
    @menu.each do |food,price|
      rows << [food,price]
      table = Terminal::Table.new :title => "Kamath's Kitchen", :headings => ['food', 'price($)'], :rows => rows
    end
    puts "\e[33mWelcome to Kamath's Kitchen: Happy to serve you - Kindly place your order by entering the number against the food item\e[0m"
    puts "\e[32mEnter 5 to get your bill\e[0m"
    puts table
  end

  def orderNumber
    puts "How many would you like??"
    @orderNo = gets.chomp
  end

  def priceForTheOrder(itemNumber)
    @itemNumber = itemNumber
    @priceForTheOrder = @menuList[@itemNumber]
  end

  def orderbill
    @bill =  @bill +(@orderNo.to_i*@priceForTheOrder.to_i)
  end

  def placeOrder(command)
    orderNumber
    priceForTheOrder(command)
    orderbill
  end
end
customer1 = Customer.new

until exit do
  customer1.menu
  command = gets.chomp.to_i
  case command
    when 1,2,3,4
      customer1.placeOrder(command)
     when 5
        puts "We are delighted to have you at Kamath's Kitchen - here is your bill
        \e[33m#{customer1.bill}$\e[0m"
        exit = true
      else
        puts " invalid entry please try again"
  end
end
