class User<ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  belongs_to :group
end