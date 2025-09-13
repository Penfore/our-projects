class Project < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :lists, -> { order(:position) }, dependent: :destroy
  has_many :project_memberships, dependent: :destroy
  has_many :members, through: :project_memberships, source: :user
  has_many :cards, through: :lists

  validates :title, presence: true

  def member?(user)
    owner == user || members.include?(user)
  end
end
