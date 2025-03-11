class Post < ApplicationRecord
  enum :time, { morning: 'morning', noon: 'noon', evening: 'evening', night: 'night' }, allow_nil: true

  validates :title, presence: true
  # validates :content, presence: true
  validates :date, presence: true
  validates :time, inclusion: { in: times.keys }
end
