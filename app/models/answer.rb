class Answer < ApplicationRecord
  default_scope { order(id: :desc) }

  belongs_to :user
  belongs_to :question
end
