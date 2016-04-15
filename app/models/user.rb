class User < ActiveRecord::Base
  has_secure_password
  has_many :college, dependent: :destroy

end
