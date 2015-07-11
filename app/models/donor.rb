class Donor < ActiveRecord::Base


  validates :name, :presence => {:message=>"الرجاء ادخال الاسم"}
  validates :email , :presence => {:message=>"الرجاء ادخال البريد الالكتروني"}
  validates :blood_type,:presence => {:message=>"الرجاء تحديد فصيلة الدم"}
  validates :city,:presence => {:message=>"الرجاء تحديد ولاية الاقامة"}
  validates :phone_number , :presence => {:message=>"الرجاء ادخال رقم الهاتف"}
end
