BOARD = [%w(d w d w d w d w),
         %w(w d w d w d w d)]
COLUMNS_ODD = %w(A C E G)

def chess(cell1, cell2)
  letter_cell_1, number_cell_1 = cell1[0], cell1[1]
  letter_cell_2, number_cell_2 = cell2[0], cell2[1]
  cell = nil

  if COLUMNS_ODD.include?(letter_cell_1)
    cell1 = BOARD[0][number_cell_1.to_i - 1]
  else 
    cell1 = BOARD[1][number_cell_1.to_i - 1]
  end

  if COLUMNS_ODD.include?(letter_cell_2)
    cell2 = BOARD[0][number_cell_2.to_i - 1]
  else
    cell2 = BOARD[1][number_cell_2.to_i - 1]
  end
  cell1 == cell2 

end

p chess('A1', 'H3')
p chess('A1', 'C3')
p chess('C7', 'H2')
