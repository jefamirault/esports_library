class Console < ApplicationRecord
  enum :kind, [:nintendo_switch]

  has_many :accounts
  has_many :games, through: :accounts
  def to_s
    self.name
  end

  def console_type
    self.kind.titleize
  end
end
