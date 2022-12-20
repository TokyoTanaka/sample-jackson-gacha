# frozen_string_literal: true

class GachaUnit < ApplicationRecord
  has_many :gacha_items

  before_create do
    self.uuid = loop do
      uuid = SecureRandom.alphanumeric(10) # JWlXD6cCxM
      break uuid unless self.class.exists?(uuid: uuid)
    end
  end
end
