# frozen_string_literal: true

class Quest < ApplicationRecord
  validates :name, presence: true
end
