require 'pry'

class Donation
    

    self #this would be a class use of self (not inside an instance method)

    #macros: class methods that produce instance methods
    # attr_reader :date, :amount, :organization
    # attr_writer :date, :amount, :organization   #going to comment out date reader and writer below
    attr_accessor :date, :amount, :organization #this does the work of attr_reader&writer
#perhaps you only wan to read instead of write, take note on readers and writers in this regard

    #special ruby method that belongs to the class, this gets invoked with the .new method is called on the class
    #method not required; we want to use this to set rules about instantiation of the class

    #instance variable, so single @ symbol
    #differs from local variables because of scope
    def initialize(amount, date, organization)
        @amount = amount
        @date = date
        @organization = organization
    end

    #instance method: behavior that an instance can receive - see invocation at bottom
    def print_amount
        puts self.@amount  #self can ONLY refer to the class or the instance. self like is the receiver of that method.
    end                     #self refers to that instance that print_amount was bing called. self is going to return what is receiving the method. 
                            ### keep scope in mind here. if not inside instance method, then self will identify the class.
    
    
    
    #getter method/reader method: purpose is to read the attribute of the instance associated with the name
    # def date
    #     @date
    # end

    #setter method / writer method

    # def date=(date)
    #     @date = date
    # end




end









donation=Donation.new(100, 121222, "Feeding America")
ww = Donation.new(300, 122522, "Wounded Warriors")
binding.pry
donation.print_amount
