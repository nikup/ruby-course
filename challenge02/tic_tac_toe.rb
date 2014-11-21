def render_tic_tac_toe_board_to_ascii (board)
  string_board = board.map { |mark| (mark ? mark.to_s : " ").center(3) }
  double_join(string_board, 3).chomp("\n|")
end

def double_join (to_join, row_length)
  joined = "|"
  to_join.each.with_index do |element, index|
    joined += element + separator(index, row_length, to_join.length)
  end
  joined
end

def separator (index, row_length, array_length)
  if index % row_length == row_length - 1
    "|\n|"
  else
    "|"
  end
end 