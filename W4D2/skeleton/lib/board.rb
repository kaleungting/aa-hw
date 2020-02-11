require "byebug"
class Board
  attr_accessor :cups, :stone

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {Array.new(0)}
    @stone = :stone
    self.place_stones
  end

  def place_stones
    @cups.each.with_index do |cup,i|
      if i != 6 && i != 13
        4.times do
          cup << @stone
        end
      end
    end
  end

  def valid_move?(start_pos)
    if !(0..5).include?(start_pos) && !(7..12).include?(start_pos)
      raise "Invalid starting cup"
    elsif @cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end
#cups[start_post]
  def make_move(start_pos, current_player_name)
    # debugger
    i = start_pos
    selected_cup = @cups[start_pos]
    until selected_cup.empty?
      i += 1 
      i = 0 if i > 13
      if i == 6
        @cups[i] << selected_cup.shift if current_player_name == @name1
      elsif i == 13
        @cups[i] << selected_cup.shift if current_player_name == @name2
      else
        @cups[i] << selected_cup.shift
      end
    end
    #   el = selected_cup.shift
    #   i += 1
    #   if i == 13 && (7..12).include?(start_pos) && current_player_name == @name2
    #     @cups[i] << el
    #   elsif i == 13 
    #     i = 0
    #     @cups[i] << el
    #   end
    #   if i == 6 && (0..5).include?(start_pos) && current_player_name == @name1
    #     @cups[i] << el
    #   elsif i == 6
    #     i+=1
    #     @cups[i] << el 
    #   end
    #   if i != 6 && i != 13
    #     @cups[i] << el
    #   end
    # end
    self.render
    next_turn(i)
  end

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].count == 1
      :switch
    else
      ending_cup_idx
    end
  end


  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if @cups[0..5].all? {|cup| cup.empty?}
    return true if @cups[7..12].all? {|cup| cup.empty?}
    false
  end

  def winner
    case @cups[6].length <=> @cups[13].length
    when 0
      :draw
    when -1
      @name2
    when 1
      @name1
    end
  end
end
