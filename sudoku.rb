

class Sudoku 
  attr_reader :sudoku_string
  attr_reader :sudoku_original

  def initialize(sudoku_string)
    # x = sudoku_string.scan(/./)
    @sudoku_string = sudoku_string
    @sudoku_original = sudoku_string.scan(/./)
  end#mtd

  def organiza_board
    a = Array.new(9) { @sudoku_original.pop(9) }
    b = []
    i = -1
    # j = -1
    until i == -9
      # until j == -9
       b << a[i]
       i -= 1
    end
    b

  end#mtd

  public

  def board
    a = organiza_board
    a.each do |e|
        printf "#{e}"
        printf "\n"
    end#f each
    printf "\n"

  end#mtd

end#class

#x do  Array.new(9) { sudoku_string.pop(9)} end


game = Sudoku.new('702806519100740230005001070008000002610204053200000100070400800064078005821503907')

p game.board
