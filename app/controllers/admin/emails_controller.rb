class Admin::EmailsController < ApplicationController
	def index
    @email = Email.new
    @emails = Email.find(:all)
  end
end
