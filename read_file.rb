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

  def output_results
    @fh = open ARGV[0]
    @result = []
    return false unless valid_info?
    @fh.each do |line|
      @info = line
      @convert = ConvertsInfo.new(@info)
      @result += @convert.result
    end
    @fh.close
    p new = @result.each_slice(2).to_a.map { |elem| Hash[*elem] }
    p result_p = new.inject{|memo, el| memo.merge( el ){|k, old_v, new_v| old_v + new_v}}.sort.sort {|a,b| b[1] <=> a[1] }
    result_p.each {|key, value, i| puts "#{i} #{key} #{value} pt" }
  end

  # def compare(array)
  #   p @array
  #
  # end
end

info = ReadFile.new
info.output_results



