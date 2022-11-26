class Console < ApplicationRecord
  enum :kind, [:switch]

  def to_s
    self.name
  end
end
