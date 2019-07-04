# frozen_string_literal: true

require './converts_info.rb'

# read information
class ReadFile
  def valid_info?
    if ARGV.length == 1
      true
    else
      puts 'We need exactly one parameter. The name of a file.'
      exit
    end
  end

  def arr_with_pt
    @fh = File.open(ARGV[0])
    @result = []
    return false unless valid_info?

    @fh.each do |line|
      @info = line
      @convert = ConvertsInfo.new(@info)
      @result += @convert.result
    end
    @fh.close
  end

  def sort
    arr_with_pt
    new = @result.each_slice(2).to_a.map { |elem| Hash[*elem] }
    @result = new.inject { |m, el| m.merge(el) { |_k, o_v, n_v| o_v + n_v } }
    @result_by_str = @result.sort
    @result_by_pt = @result.sort { |a, b| b[1] <=> a[1] }
  end

  def print_result
    sort
    @add_index = @result_by_pt.each_with_index { |val, index| val << index + 1 }
    @add_index.each { |key, value, i| puts "#{i} #{key} #{value} pt" }
  end
end

info = ReadFile.new
info.print_result
