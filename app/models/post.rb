class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :imagetwo, ImagetwoUploader
  mount_uploader :imagethree, ImagethreeUploader

  has_many :commments, as: :commmentable
end
