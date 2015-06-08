module RegistrationsHelper

  def time_slot_color(regCount)
    full = '#F2DEDE'
    # half = '#D9EDF7'
    half = '#fff'

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
