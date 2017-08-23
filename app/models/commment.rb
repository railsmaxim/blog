class Commment < ApplicationRecord
  mount_uploader :proof, ProofUploader
  
  belongs_to :commmentable, polymorphic: true

  has_many :commments, as: :commmentable
end
