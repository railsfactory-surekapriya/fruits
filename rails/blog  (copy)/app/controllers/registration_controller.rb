class RegistrationController < ApplicationController

def new

@member= Member.new
@contact = Contact.new
end

def create

@member = Member.new
@member.username = params[:member][:username]
@member.dob = params[:member][:DOB]
@member.gender = params[:member][:gender]
@member.email = params[:member][:email]
@member.password = params[:member][:password]
@member.password_confirmation =params[:member][:password_confirmation]

end
end
