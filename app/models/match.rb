class Match < ApplicationRecord

  has_and_belongs_to_many :books

  validates :pgn, presence: true,
                    length: { minimum: 5 }
end
