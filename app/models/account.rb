class Account < ApplicationRecord

  enum :kind, ['Nintendo']

  belongs_to :console, required: false

  has_many :subscriptions

  has_and_belongs_to_many :games


  # attr_accessor :game_id



  def game_id=(id)
    if id != ''
      self.games << Game.find(id)
    end
  end

  def delete_game_id=(id)
    if id != ''
      self.games.delete Game.find(id)
    end
  end

  def to_s
    self.email
  end
end
