class DonorsController < ApplicationController
  def new
    @donor=Donor.new
  end

  def create
    @donor=Donor.new(donor_params)
    if @donor.save
      flash[:success] = "تم تسجيل متبرع جديد ,شكرا لك"
      redirect_to root_path
    else
      if @donor.errors
        session[:errors]=@donor.errors
      end
      flash[:error] = "لقد حدث خطا ,الرجاء تصحيحه"
      redirect_to root_path
    end
  end



  private

  def donor_params
    params.require(:donor).permit(:name,:blood_type,:phone_number,:city,:email)
  end
end
