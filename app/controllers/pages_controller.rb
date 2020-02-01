class PagesController < ApplicationController
	
	def index
		@tasks_grid = initialize_grid(User, order: 'created_at')
  	end
end
