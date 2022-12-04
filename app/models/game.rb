class Game < ApplicationRecord
  has_and_belongs_to_many :accounts

  enum :console_type, ['Nintendo Switch']

  def to_s
    self.title
  end
end
