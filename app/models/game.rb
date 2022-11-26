class Game < ApplicationRecord
  has_and_belongs_to_many :accounts

  enum :console_type, [:nintendo_switch]
end
