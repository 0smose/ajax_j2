require 'faker'

class EmailsController < ApplicationController


	def create
		@email = Email.new(object: Faker::GreekPhilosophers.quote, body: Faker::Hipster.paragraph(2, true, 4))
		@email.save
		respond_to do |format|
        format.html { redirect_to root_path }
        format.js { }
      end
	end


  def index
  	@emails = Email.all
  end

end
