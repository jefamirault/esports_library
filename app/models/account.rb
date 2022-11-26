class Account < ApplicationRecord

  enum :kind, [:nintendo]

  belongs_to :console

  has_many :subscriptions

  has_and_belongs_to_many :games
end
