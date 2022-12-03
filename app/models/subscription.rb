class Subscription < ApplicationRecord
  enum :kind, ['Switch Online', 'Switch Online Expansion Pak']

  belongs_to :account
end
