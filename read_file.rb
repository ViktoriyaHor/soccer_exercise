require './converts_info.rb'
class ReadFile

  def valid_info?
    if ARGV.length == 1
      true
    else
      puts "We need exactly one parameter. The name of a file."
      exit
    end
  end

  def read_info
    @fh = open ARGV[0]
    @info = ''
    return false unless valid_info?
    @fh.each do |line|
      @info += line
    end
    @fh.close
    @convert = ConvertsInfo.new(@info)
    @convert.to_array
  end
end

info = ReadFile.new
info.read_info



