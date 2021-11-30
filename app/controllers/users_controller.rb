class UsersController < ApplicationController
	skip_before_action :verify_authenticity_token
  
	def index
	  render plain: User.all.map { |user| user.to_p }.join("\n")
	end
  
	def show
	  user = User.find(params[:id])
	  render plain: user.to_p
	end
  
	def create
	  name = params[:name]
	  email = params[:email]
	  password = params[:password]
	  new_user = User.create!(name: name, email: email, password: password)
	  response_text = "Hey your new user created with id #{new_user.id}"
	  render plain: response_text
	end
  
	def login
	  email = params[:email]
	  password = params[:password]
	  user = User.find_by(email: email, password: password)
	  render plain: user.present?
	end
  end
  