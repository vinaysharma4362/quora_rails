class Topic < ApplicationRecord
  has_and_belongs_to_many :followers, class_name: 'User', join_table: :topics_users, foreign_key: :topic_id,
                                      association_foreign_key: :user_id
end
