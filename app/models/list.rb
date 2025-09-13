class List < ApplicationRecord
  belongs_to :project
  has_many :cards, -> { order(:position) }, dependent: :destroy

  acts_as_list scope: :project

  validates :title, presence: true
end
