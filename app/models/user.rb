class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :jobs

validates :name, presence: true
validates :zip, presence: true, numericality: true

acts_as_messageable

# 	def name
 #      @name = User.name
 #    end

 #    def mailboxer_email
 #      @email = User.email
 #    end
end