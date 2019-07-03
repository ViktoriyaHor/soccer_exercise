class ConvertsInfo
  attr_accessor :info

  def initialize(info)
    @info = info
  end

  def to_array
    p arr = self.info.gsub("\n", ', ').split(', ')
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
    p arr
    # p Hash[arr.each_slice(2).to_a]
    # p arr


  end

  # def to_hash(arr)
  #
  #
  # end
end

