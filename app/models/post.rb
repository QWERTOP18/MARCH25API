class Post < ApplicationRecord
  enum :time, { morning: 'morning', noon: 'noon', evening: 'evening', night: 'night' }

  validates :title, presence: true
  validates :content, presence: true
  validates :date, presence: true
  validates :time, inclusion: { in: times.keys }
end
