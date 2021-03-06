class Post < ApplicationRecord
  has_attached_file(
    :image,
    styles: { medium: '250x250#', thumb: '100x100#' },
  )

  validates_attachment_content_type(
    :image,
    content_type: %r{\Aimage\/.*\z},
    with: %r{^balls/.+\.(gif|jpe?g|png|svg)$}i,
    message: ' and have an image extension'
  )

  belongs_to :user
end
