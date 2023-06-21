class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :answers
  has_many :questions
  has_and_belongs_to_many :followers, class_name: 'User', join_table: :user_following_users, foreign_key: :follower_id, association_foreign_key: :followee_id, unique: true
  has_and_belongs_to_many :followee, class_name: 'User', join_table: :user_following_users, foreign_key: :followee_id, association_foreign_key: :follower_id, unique: true
  has_and_belongs_to_many :topics, class_name: 'Topic', join_table: :topics_users, foreign_key: :user_id, association_foreign_key: :topic_id


end
