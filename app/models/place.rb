class Place < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :list_places, dependent: :destroy, inverse_of: :place
  # has_many :lists, through: :list_places

  has_many :lists

  validates :name, presence: true

  belongs_to :user, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
