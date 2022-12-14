#agenda:
# mass assignment
# class variables and class methods
# inheritance 

require 'pry'
require_relative './helper_methods.rb' #be mindful of paths!



class Donation < HelperMethods #inheriting from sibling file

  # creating this class var to store all of the instances created from this class
  @@all= [] #going to populate this empty array everytime we instantiate a new instance


  # #class method: behaviors that belong to the class as a whole => we want to search the class and its instances for a specific condition
  # def self.all #was Donation.all. using self.all is more dynamic. self if the donation class
  #   @@all
  # end
  
  attr_accessor :org, :amt, :date

  # def initialize(org, amt, date)  closed out for mass assignment below
  #   @org = org
  #   @amt = amt
  #   @date = date
  # end


  # # mass assignment
  # def initialize (attr = {})   #default arg. here, attr is a variable, same with following line
  #   attr.each do |key, value|    #pipe reprsenting key and value
  #     self.send("#{key}=", value)   # send takes two args: first is method we want to send, second is argument we want to send
  #   end                          #self: invoke setter method on this instance. self is the instance.  
  #   #add the new instance here to @@all. self is the instance. 
  #   @@all << self 
  # end  


  def print 
    puts "**************"
    puts self.amt
    puts self.org 
    puts self.date 
    puts "**************"
  end

end


#keys need to be exactly what we pass into attr accessor
donation = Donation.new(amt: 100, date: 121222, org: "Feeding America")
ww = Donation.new(amt: 300, date: 122522, org: "Wounded Warrious")

binding.pry