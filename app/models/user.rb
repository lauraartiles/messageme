class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :messages
  
  validates :phone_number, presence: true, length: { maximum: 50 }
  validates :username, presence: true, uniqueness: { case_sensitive: false },
            :format => { :with =>/\A[a-z0-9A-Z]+\z/ ,
            :message=>"Only letters and numbers with no spaces allowed" }
end
