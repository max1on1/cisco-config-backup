class Device < ApplicationRecord
  has_many :configs
  belongs_to :connection_profile
end
