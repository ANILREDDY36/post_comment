class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise(
    :database_authenticatable,
    :registerable,
    :recoverable,
    :rememberable,
    :validatable,
    authentication_keys: [:username]
  )

  has_attached_file(
    :profile,
    styles: { medium: '250x250#', thumb: '100x100#' },
  )

  has_many :posts
  has_many :user_friends

  validates :email, uniqueness: true, presence: true
  validates :username, uniqueness: true, presence: true
  validates_attachment_content_type(
    :profile,
    content_type: %r{\Aimage\/.*\z},
    with: %r{^balls/.+\.(gif|jpe?g|png|svg)$}i,
    message: ' and have an image extension'
  )
end
