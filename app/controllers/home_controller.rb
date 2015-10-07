class HomeController < ApplicationController
  def index
    @donor=Donor.new
    @donors=Donor.all
    if session[:errors]
      session[:errors].each {|error, error_message| @donor.errors.add error, error_message}
      session.delete :errors
    end
  end
end
