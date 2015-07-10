class Donor < ActiveRecord::Base

  EMAIL_REGEX=/(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})/i
  PHONE_REGEX=/[+#*\(\)\[\]]*([0-9][ ext+-pw#*\(\)\[\]]*){6,45}/

  validates :name, :presence => true, length: {:maximum => 20}
  validates :email , :presence => true, :format => {:with => EMAIL_REGEX}, :uniqueness => {:case_sensitive => false}
  validates :blood_type,:presence => true
  validates :phone_number , :presence => true, :format => {:with => PHONE_REGEX},:uniqueness => true
end
