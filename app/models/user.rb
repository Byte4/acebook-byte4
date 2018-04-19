class User < ApplicationRecord
  include Chat::User
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :posts
         has_many :comments, dependent: :destroy

  has_many :likes
  has_many :dislikes
end
