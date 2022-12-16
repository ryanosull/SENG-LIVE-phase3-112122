# class Donation

#     attr_accessor :amount, :date, :organization_id 
#     attr_reader :id

#     def initialize(attributes) 
#         attributes.each do |key, value|
#             if self.respond_to?("#{key.to_s}=") 
#                 self.send("#{key.to_s}=", value) 
#             end 
#         end

#     end

#     def save 
#         if self.id
#             self.update
#         else 
#             sql = <<-SQL
#                 INSERT INTO donations (amount, date, organization_id) VALUES (?, ?, ?);
#             SQL

#             DB.execute(sql, self.amount, self.date, self.organization_id)
#             @id = DB.last_insert_row_id
#         end 
#         self  
#     end

#     def update 
#         sql = <<-SQL
#            UPDATE donations SET amount = ?, date = ?, organization_id = ? WHERE id = ?
#         SQL

#         DB.execute(sql, self.amount, self.date, self.organization_id, self.id)
#         self
#     end

#     def self.all 
#         array_of_hashes = DB.execute("SELECT * FROM donations")
#         array_of_hashes.map do |hash|
#             binding.pry
#           self.new(hash)
#         end
#     end

#     def self.create_table 
#         sql = <<-SQL
#         CREATE TABLE IF NOT EXISTS donations (
#             id INTEGER PRIMARY KEY, 
#             amount INTEGER,
#             date INTEGER,
#             organization_id INTEGER
#         );
#         SQL
#         DB.execute(sql)
#     end 


# end 

class Donation < ActiveRecord::Base



    # CRUD 

#CREATE
# .new: going to instantiate a Ruby instance, but not going to share it with db - no persistance
    # must follow up with .save which performs an insertion to the table
    #Donation.new(date: "121622", amount: 100)
    
    # .create: is going to instantiate and save
    #d2 = Donation.create(date: "121622", amount: 500)

#READ
    #read all the recods
        #use .all, ClassName.all => returns a collection/array of all the records in db

    #read a specific record
        #can use any attribute, but most of time we fall back on ID
        #use .find(id) Donation.find(2)
        # .find_by(attr: value) or .find_by_attr(value)    Donation.find_by(amount: 100) or Donation.find_by_amount(100)
        #.select


# Update:
    # .update- donation.update(attr: value) - will actually modify the value for the field and persist
        #first need to find the record we want to update, then update the field


#Destory: a record or multiple records
    # .destory
    #first find record, then call .destroy on it.
    #donation=Donation.find[5]
    #donation.destroy

    # .destroy_all
        # donation.destory_all



end