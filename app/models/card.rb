class Card < ActiveRecord::Base
  acts_as_taggable_on :traits
end
