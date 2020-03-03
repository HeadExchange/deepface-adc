class Step < ApplicationRecord
  has_many :replicas
  has_many :text_replicas
  has_many :image_replicas
  has_many :answers

  def as_json
    {
      title: title,
      replicas: replicas.as_json,
      answers: answers.as_json
    }
  end
end
