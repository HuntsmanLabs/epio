class User < ActiveRecord::Base

 after_create :send_welcome_email
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


 validates_presence_of :time_zone

 has_many :connections, dependent: :destroy
 has_many :posts, dependent: :destroy

 def send_welcome_email
 	UserMailer.welcome_email(self).deliver_later
 end

 def facebook
 	self.connections.where(provider: "facebook").first
 end

 def twitter
 	self.connections.where(provider: "twitter").first
 end
end
