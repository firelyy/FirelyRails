class Chat < ApplicationRecord
  belongs_to :gameplan
  belongs_to :user
end
