class User < ApplicationRecord
  include ActiveModel::Validations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  has_many :orders, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  after_create :send_welcome
    def send_welcome
      UserMailer.welcome(self).deliver
    end

end

