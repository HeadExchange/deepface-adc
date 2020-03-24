class Answer < ApplicationRecord
  belongs_to :step

  has_many :next_steps
  has_many :steps, through: :next_steps

  default_scope { order(:position) }

  def as_json
    {
      id:      id,
      stepId:  step_id,
      effect:  effect,
      phrase:  phrase,
      display: true
    }
  end
end
