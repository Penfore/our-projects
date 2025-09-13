class Card < ApplicationRecord
  belongs_to :list
  belongs_to :assignee, class_name: "User", optional: true

  acts_as_list scope: :list

  validates :title, presence: true

  delegate :project, to: :list
end
