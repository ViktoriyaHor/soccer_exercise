class ConvertsInfo
  attr_accessor :info

  def initialize(info)
    @info = info
  end

  def to_array
    p self.info.split(' ')
  end
end

