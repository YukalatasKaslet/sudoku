

class Sudoku 
  attr_reader :sudoku_string
  attr_reader :sudoku_original
  attr_reader :aux

  private

  def initialize(sudoku_string)
    # x = sudoku_string.scan(/./)
    @sudoku_string = sudoku_string
    @sudoku_original = sudoku_string.scan(/./)
  end#mtd


  def board_int
    @aux = Array.new(9) { @sudoku_original.pop(9) }
    b = []
    @aux.each do |e|
      e.each do |string|
        b << string.to_i
      end
    end
     a = Array.new(9) { b.pop(9) }
  end#mtd

  public

  def board
    a = board_int
    count = 0
    a.each do |arreglo|
      if count % 3 == 0 
        p "--------+---------+--------"
      end#if      
      arreglo.each_with_index do |elemento, index|
          if ( index % 3 == 0 ) && ( index != 0)
            printf "|"
          end
          printf " #{elemento} "
        end#s each
      printf "\n"
      count += 1
    end#f each
    p "--------+---------+--------"
    printf "\n"
  end#mtd

end#class

#x do  Array.new(9) { sudoku_string.pop(9)} end


game = Sudoku.new('702806519100740230005001070008000002610204053200000100070400800064078005821503907')

p game.board
