class Account < ApplicationRecord

  enum :kind, ['Nintendo']

  belongs_to :console, required: false

  has_many :subscriptions

  has_and_belongs_to_many :games

  def to_s
    self.email
  end
end
