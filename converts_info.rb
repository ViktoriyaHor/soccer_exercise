class ConvertsInfo
  attr_accessor :info

  def initialize(info)
    @info = info
  end

  def to_array
    arr = self.info.strip.split(', ')
    arr.map! do |elem|
      ar = elem.split(' ')
      if ar.length > 2
        num = ar.last
        a = ar[0...-1].join(' ')
        [a, num]
      else
        ar
      end

    end
    # p arr
    Hash[*arr.flatten]
    # list.keys
  end
  #
  def result
    list = to_array
    ar = list.sort_by {|key, value| value}.flatten
    ar.each_with_index{|v,i| if i[0].zero? then v.to_i end}
    if ar[1] == ar[3]
      ar[1] = 1 && ar[3] = 1
    else
      ar[1] = 0
      ar[3] = 3
    end
    p ar
  end
  def command



  end
end

