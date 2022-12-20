class DonationsControllers < ApplicationController

    #CRUD API - this will allow us to receive and respond to create, read, update, and delete. 

    #READ - use 'get' http verb
        #read all resources (the model that we are working with) while following REST convention.

    get '/donations' do
        #we want to retrive all donations from the db. 
        donations = Donation.all        
        #then, we want to send out JSON response.
        donations.to_json #this converts ruby code to JSON and sends it as a response

        #Donation.all.to_json also works!
    end

    # then just build a fetch/.then/.then  ( in REACT)

    #read a single resource and send that as a response
    get '/donations/:id' do #if we see ID, we are dealing with a dynamic route because that is going to change per request (duh)
        #we access ID value => through params
        #params is an empty hash we get when connecting with Sinatra base
        #NOTE: params is only accessible inside of the controller, CANNOT access it in the model. 
        #params populated in 2 ways with key/value pairs
            #first, using dynamic routes
            #second, ***

        donation = Donation.find(params[:id])
        donation.to_json
    end #end of READ

    #CREATE - our goal is we're going to receive some body data from the client side, and we want to create a new record in the db and then return the object as JSON

    post '/donations' do 
    #how do we access the body of this request (the form data, from client side, that is)
    #second *** way of populating our params is hash, is receiving body
    #use a binding.pry to check out params

    donation = Donation.create(params)
    donation.donor = current_user #see app controller
    donation.organization = Organization.last
    donation.to_json
    end

    #PATCH - update an existing donation

    patch '/donations:id' do
        #workflow
        #1 need to find the resource in using the id in the path
        donation = Donation.find(params[:id])

        #2 need to update the resource -- we also need to access the data in the params
        donation.update(amount: params[:amount])


        #3 send back a json response
        donation.to_json
    end


    #DELETE

    delete '/donations:id' do
        donation = Donation.find(params[:id])
        donation.destroy #not reversable => removed from db
    end


end