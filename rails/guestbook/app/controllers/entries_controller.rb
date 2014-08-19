class EntriesController < ApplicationController
def sign_in
@name = params[:visitor_name]
if !@name.blank? then
@entry = Entry.create({:name => @name})
end
@enries = Entry.all
end
end
