class Critic < ActiveRecord::Base
  belongs_to :user
  belongs_to :article
  attr_accessible :content,:user_id,:article_id

  default_scope order: 'critics.created_at DESC'
end
