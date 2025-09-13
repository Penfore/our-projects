class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :owned_projects, class_name: "Project", foreign_key: "owner_id", dependent: :destroy
  has_many :project_memberships, dependent: :destroy
  has_many :projects, through: :project_memberships
  has_many :assigned_cards, class_name: "Card", foreign_key: "assignee_id"

  validates :first_name, presence: true
  validates :last_name, presence: true
  def full_name
    "#{first_name} #{last_name}".strip
  end
end
