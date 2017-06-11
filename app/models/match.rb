class Match < ApplicationRecord

  has_and_belongs_to_many :books

  before_validation :strip_input_fields


  def strip_input_fields
    self.attributes.each do |key, value|
      self[key] = value.strip if value.respond_to?("strip")
    end
  end

  validates :pgn, presence: true,
                    length: { minimum: 5 }
end
