class Task < ApplicationRecord
  validates :title, length: { minimum: 3 }
  enum status: { to_do: 0, doing: 1, done: 2 }
  acts_as_list scope: [:status]
end
