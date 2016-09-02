class EntriesController < ApplicationController
	def create
		@entry = Entry.new(params.require(:entry).permit(:name, :message))
 
  		@entry.save

  		redirect_to :root
	end
end
