class Subscription < ApplicationRecord
  enum :kind, [:switch_online, :switch_online_expansion_pak]

  belongs_to :account
end
