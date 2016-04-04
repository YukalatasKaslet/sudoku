

class Sudoku 

  private

  def initialize(sudoku_string)
    # x = sudoku_string.scan(/./)
    @sudoku_string = sudoku_string
    @sudoku_original = sudoku_string.scan(/./)
  end#mtd initialize



  def board_int
    @aux = Array.new(9) { @sudoku_original.pop(9) }
    b = []
    @aux.each do |e|
      e.each do |string|
        b << string.to_i
      end
    end
     a = Array.new(9) { b.pop(9) }
  end#mtd board_int



  # def cuadro_faltantes(array, fila, columna)
  #   presentes = []
  #   faltantes = []

  #   for i in 0..3
  #     for j in 0..3
  #       for k in 1..9
  #         if k == array[fila][columna]
  #           presentes << k
  #         end#if
  #       end#each numbers
  #       columna += 1
  #     end# for j
  #     fila += 1
  #   end#for i

  #   for i in 1..9
  #     if !( presentes.include?(i) )
  #       faltantes << i
  #     end#if
  #   end#for i
  #   faltantes
  # end#mtd cuadrado_faltantes


  # def fila_faltantes(array, fila)
  #   presentes_fila = []
  #   presentes_3 = []
  #   posibles_fila = []
  #   faltantes = []

  #   for i in 0..3
  #     for j in 0..8
  #       for k in 1..9
  #         if k == array[fila][j]
  #           presentes_fila << k
  #         end#if
  #       end#for k
  #       if presentes_fila.empty?
  #         presentes_fila << ["."]
  #       end#if p_fila empty?
  #       if ( ( j == 2 ) || ( j == 5 ) ) || ( j == 8 )
  #         presentes_3 << presentes_fila
  #       end#if
  #       presentes_fila = []
  #     end#for j
  #     fila += 1
  #   end#for i

  #   presentes_3.each do |a|
  #     a.each do |n|
  #       if n.is_a? String
  #         for k in 1..9
  #           posibles_fila << k
  #         end
  #       else
  #         for k in 1..9
  #           if !( n.include?(k) )
  #             posibles_fila << k
  #           end#if include
  #         end#for k
  #       end#if is_a?
        
  #     end#each a

  #     posibles_fila.each do |fila|
  #       fila
      



  # end#mtd fila_faltantes

  # def columna_faltantes(array, columna)
  # end#mtd columna_faltantes


  # def solve
  #   for i in 0..9
  #     for j in 0..9
  #       if ( i % 3 == 0) && ( j % 3 == 0 )
  #         c_faltantes = cuadro_faltantes(board_int, i, j)
  #       end#if
  #     end#for j
  #   end#for i

  # end#mtd solve


  public #----------------------------------------





  def board
    a = board_int
    count = 0
    p "---------------------------"
    a.each do |arreglo|
      if ( count % 3 == 0 ) && ( count != 0)

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
    p "---------------------------"
    printf "\n"
  end#mtd board

end#class

#x do  Array.new(9) { sudoku_string.pop(9)} end


game = Sudoku.new('702806519100740230005001070008000002610204053200000100070400800064078005821503907')

p game.board
