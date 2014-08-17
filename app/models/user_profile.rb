class UserProfile < ActiveRecord::Base
  belongs_to :user
  belongs_to :profileable, :polymorphic => true
end
