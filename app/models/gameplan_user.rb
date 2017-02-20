class GameplanUser < ApplicationRecord
  belongs_to :gameplan
  belongs_to :user
  validates_uniqueness_of :user_id, :scope => :gameplan_id, :message => "cannnot add user more than once per gameplan"

end
