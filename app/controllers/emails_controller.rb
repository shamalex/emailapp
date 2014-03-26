class EmailsController < ApplicationController
def new
    @email = Email.new
    @emails = Email.find(:all)
  end
  
  def create
  params.permit!
    @email = Email.new(params[:email])
    if @email.save
      redirect_to action: :show, id: @email.id
    end
  end
	
	def show
  @email = Email.find(params[:id])
end
	
end
