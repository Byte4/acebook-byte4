class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :posts
         has_many :comments, dependent: :destroy

  has_many :likes
  has_many :dislikes


  has_attached_file :avatar,
    :styles => {
      thumb: "50x50#",
      comments_thumb: "25x25#",
      medium: "300x300>"
    },
    :convert_options => {
      :thumb => "-quality 75 -strip"
    },
    default_url: "/images/:style/default.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
