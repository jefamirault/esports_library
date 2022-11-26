class Account < ApplicationRecord

  enum :kind, [:nintendo]

  belongs_to :console

  has_many :subscriptions

end
