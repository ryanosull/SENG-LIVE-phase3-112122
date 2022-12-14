class HelperMethods

    @@all= []

    def self.all 
        @@all
    end

    def initialize (attr = {})   #default arg. here, attr is a variable, same with following line
        attr.each do |key, value|    #pipe reprsenting key and value
            self.send("#{key}=", value)   # send takes two args: first is method we want to send, second is argument we want to send
        end                          #self: invoke setter method on this instance. self is the instance.  
    #add the new instance here to @@all. self is the instance. 
        @@all << self 
    end  

end