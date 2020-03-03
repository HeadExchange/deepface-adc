class Replica < ApplicationRecord
  belongs_to :step

  default_scope { order(:position) }

  def as_json
    {
      position: position,
      type:     type,
      timeout:  timeout,
      phrase:   phrase,
      image:    image
    }
  end
end
