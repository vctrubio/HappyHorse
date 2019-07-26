class List < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  attr_accessor :place_name, :address, :comment

  belongs_to :place, dependent: :destroy

#or
#  belongs_to :user, through: :places

  has_many :list_places, dependent: :destroy, inverse_of: :list
  has_many :places, through: :list_places
  has_many :favourites, dependent: :destroy

  accepts_nested_attributes_for :list_places

  geocoded_by :address
end
