# frozen_string_literal: true

# Converts info to hash
class ConvertsInfo
  attr_accessor :info

  def initialize(info)
    @info = info
  end

  def to_array
    arr = info.split(', ')
    name_command(arr)
    Hash[*arr.flatten]
  end

  def name_command(arr)
    arr.map! do |elem|
      ar = elem.split(' ')
      if ar.length > 2
        num = ar.last
        [ar[0...-1].join(' '), num]
      else
        ar
      end
    end
  end

  def result
    ar = to_array.sort_by { |_key, value| value }.flatten
    ar.each_with_index { |v, i| v.to_i if i[0].zero? }
    if ar[1] == ar[3]
      ar[1] = 1
      ar[3] = 1
    else
      ar[1] = 0
      ar[3] = 3
    end
    ar
  end
end
