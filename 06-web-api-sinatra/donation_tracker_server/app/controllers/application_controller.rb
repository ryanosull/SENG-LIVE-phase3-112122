class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


  get '/hello_world' do
    "hey you made it"
  end


  private
  def current_user
    Donor.first
  end


end

#WE WANT TO CREATE A RESPECTIVE CONTROLLER FOR EVERY MODEL.

#endpoints how to:

#HTTP verb - this will tell the request what its meant to do
#GET, POST, PATCH/PUT, DELETE

#path - our choice as to how to define. but, we can use RESTful routing to follow industry standards. 