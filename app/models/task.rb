class Task < ApplicationRecord
  validates :title, presence: true

  enum :status, { to_do: 0, doing: 1, done: 2 }
end
