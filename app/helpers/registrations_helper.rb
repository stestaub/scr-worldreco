module RegistrationsHelper

  def time_slot_color(regCount)
    full = '#ff0000'
    half = '#0000ff'
    empty = '#ffffff'

    limit = 2

    if regCount >= limit
      color = full
    elsif regCount >= limit/2
      color = half
    else
      color = empty
    end
    color
  end
end
