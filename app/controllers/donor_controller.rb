class DonorController < ApplicationController
  def new
    @donor=Donor.new
  end

  def create
    @donor=Donor.new(donor_params)
    if @donor.save
      flash[:success] = "New donor record have been created"
      redirect_to :back
    else
      flash[:error] = "There was an error creating this user record"
      redirect_to :back
    end
  end

  def show
    @donor=Donor.find(params[:id])
  end


  private

  def donor_params
    params.require(:donor).permit(:name,:blood_type,:phone_number,:city,:email)
  end
end
