#######################################################################################################
#                            Competing And Coordinating Knowledge Bases                               #
#######################################################################################################
# This is an extension of selection that becomes a form of competing or competitive knowledge bases   #
# depending on what your goals are for training AI sy#
module SaadSelective
  class CompetitiveSelection
    def self.get_player_statistics(a1, a2, b1, b2, c1, c2)
      a = a1, a2
      b = b1, b2
      c = c1, c2

      matrix = [
        [[a[0], a[0]], [a[0], b[0]], [a[0], c[0]]],
        [[b[0], a[0]], [b[0], b[0]], [b[0], c[0]]],
        [[c[0], a[0]], [c[0], b[0]], [c[0], c[0]]],
      ], [
        [[a[1], a[1]], [a[1], b[1]], [a[1], c[1]]],
        [[b[1], a[1]], [b[1], b[1]], [b[1], c[1]]],
        [[c[1], a[1]], [c[1], b[1]], [c[1], c[1]]],
      ], [
        [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
        [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
        [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
      ]

      label_type       = matrix[0]
      definition_type  = matrix[1]
      probability_type = matrix[2]
  
      row_probability = 0.33
      col_probability = 0.33
  
      graph_selection = row_probability * col_probability

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample
  
      current_label       = label_type[cur_row][cur_col][cur_arr]
      current_definition  = definition_type[cur_row][cur_col][cur_arr]
      current_probability = probability_type[cur_row][cur_col][cur_arr] * graph_selection
  
      puts "I'm confident it is not [ #{current_label} #{current_definition} ] as it has only #{current_probability} probability."
  
      @current_player_probability = current_probability + current_probability
      @current_player_information = "#{current_label} #{current_definition}"
    end
    
    def self.get_gribatomaton_statistics(a1, a2, b1, b2, c1, c2)
      a = a1, a2
      b = b1, b2
      c = c1, c2

      matrix = [
        [[a[0], a[0]], [a[0], b[0]], [a[0], c[0]]],
        [[b[0], a[0]], [b[0], b[0]], [b[0], c[0]]],
        [[c[0], a[0]], [c[0], b[0]], [c[0], c[0]]],
      ], [
        [[a[1], a[1]], [a[1], b[1]], [a[1], c[1]]],
        [[b[1], a[1]], [b[1], b[1]], [b[1], c[1]]],
        [[c[1], a[1]], [c[1], b[1]], [c[1], c[1]]],
      ], [
        [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
        [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
        [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
      ]

      label_type       = matrix[0]
      definition_type  = matrix[1]
      probability_type = matrix[2]
  
      row_probability = 0.33
      col_probability = 0.33
  
      graph_selection = row_probability * col_probability

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample
  
      current_label       = label_type[cur_row][cur_col][cur_arr]
      current_definition  = definition_type[cur_row][cur_col][cur_arr]
      current_probability = probability_type[cur_row][cur_col][cur_arr] * graph_selection
  
      puts "I'm confident it is not [ #{current_label} #{current_definition} ] as it has only #{current_probability} probability."
  
      @current_gribatomaton_probability = current_probability + current_probability
      @current_gribatomaton_information = "#{current_label} #{current_definition}"
    end
    
    def self.get_enemy_statistics(a1, a2, b1, b2, c1, c2)
      a = a1, a2
      b = b1, b2
      c = c1, c2

      matrix = [
        [[a[0], a[0]], [a[0], b[0]], [a[0], c[0]]],
        [[b[0], a[0]], [b[0], b[0]], [b[0], c[0]]],
        [[c[0], a[0]], [c[0], b[0]], [c[0], c[0]]],
      ], [
        [[a[1], a[1]], [a[1], b[1]], [a[1], c[1]]],
        [[b[1], a[1]], [b[1], b[1]], [b[1], c[1]]],
        [[c[1], a[1]], [c[1], b[1]], [c[1], c[1]]],
      ], [
        [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
        [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
        [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
      ]

      label_type       = matrix[0]
      definition_type  = matrix[1]
      probability_type = matrix[2]
  
      row_probability = 0.33
      col_probability = 0.33
  
      graph_selection = row_probability * col_probability

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample
  
      current_label       = label_type[cur_row][cur_col][cur_arr]
      current_definition  = definition_type[cur_row][cur_col][cur_arr]
      current_probability = probability_type[cur_row][cur_col][cur_arr] * graph_selection
  
      puts "I'm confident it is not [ #{current_label} #{current_definition} ] as it has only #{current_probability} probability."
  
      @current_enemy_probability = current_probability + current_probability
      @current_enemy_information = "#{current_label} #{current_definition}"
    end
  
    def self.decrement_confidence # Input taxation
      player_input       = @current_player_probability
      gribatomaton_input = @current_gribatomaton_probability
      enemy_input        = @current_enemy_probability

      if    player_input < 50.0; # Lose HP
        if    gribatomaton_input    > enemy_input;           player_input = player_input - gribatomaton_input
        elsif enemy_input           > gribatomaton_input;    player_input = player_input - enemy_input
        end
      elsif player_input > 75.0; # Gain HP
        if    gribatomaton_input    < enemy_input;           player_input = player_input + gribatomaton_input
        elsif enemy_input           < gribatomaton_input;    player_input = player_input + gribatomaton_input
        end
      end

      if    gribatomaton_input < 50.0;
        if    player_input  > enemy_input;   gribatomaton_input = gribatomaton_input - player_input
        elsif enemy_input   > player_input;  gribatomaton_input = gribatomaton_input - enemy_input
        end
      elsif gribatomaton_input > 75.0;
        if    player_input  > enemy_input; gribatomaton_input = gribatomaton_input - player_input
        elsif enemy_input > player_input;  gribatomaton_input = gribatomaton_input - enemy_input
        end
      end

      if    enemy_input < 50.0;
        if    player_input  > enemy_input;   enemy_input = enemy_input - player_input
        elsif enemy_input   > player_input;  enemy_input = enemy_input - enemy_input
        end
      elsif enemy_input > 75.0;
        if    player_input > enemy_input;   enemy_input = enemy_input + player_input
        elsif enemy_input  > player_input;  enemy_input = enemy_input + enemy_input
        end
      end

      @current_player_probability       = player_input
      @current_gribatomaton_probability = gribatomaton_input
      @current_enemy_probability        = enemy_input
    end
    
    #######################################################################################################
    #                                   Reconsideration And Reassessment                                  #
    #                                               For player                                            #
    #######################################################################################################
    def self.reasses_player
      if @current_player_probability > 0.999999999999999999
        @current_player_probability = 0.9 / @current_player_probability
      end
  
      case @current_player_probability
      when 0.054450000000000005..0.287225000000000000
        puts "I'm confident it is not [ #{@current_player_information} ]."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{@current_player_information} ]."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{@current_player_information} ]."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{@current_player_information} ]."
      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      @current_player_probability = @current_player_probability + @current_player_probability
    end

    def self.reconsider_player
      if @current_player_probability > 0.999999999999999999
        @current_player_probability = 0.9 / @current_player_probability
      end
  
      case @current_player_probability
      when 0.054450000000000005..0.287225000000000000
        puts "I'm confident it is not [ #{@current_player_information} ]."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{@current_player_information} ]."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{@current_player_information} ]."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{@current_player_information} ]."
      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      @current_player_probability = @current_player_probability * @current_player_probability
    end
    
    #######################################################################################################
    #                                   Reconsideration And Reassessment                                  #
    #                                           For gribatomaton                                          #
    #######################################################################################################
    def self.reasses_gribatomaton
      if @current_gribatomaton_probability > 0.999999999999999999
        @current_gribatomaton_probability = 0.9 / @current_gribatomaton_probability
      end
  
      case @current_gribatomaton_probability
      when 0.054450000000000005..0.287225000000000000
        puts "I'm confident it is not [ #{@current_gribatomaton_information} ]."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{@current_gribatomaton_information} ]."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{@current_gribatomaton_information} ]."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{@current_gribatomaton_information} ]."
      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      @current_gribatomaton_probability = @current_gribatomaton_probability + @current_gribatomaton_probability
    end

    def self.reconsider_gribatomaton
      if @current_gribatomaton_probability > 0.999999999999999999
        @current_gribatomaton_probability = 0.9 / @current_gribatomaton_probability
      end
  
      case @current_gribatomaton_probability
      when 0.054450000000000005..0.287225000000000000
        puts "I'm confident it is not [ #{@current_gribatomaton_information} ]."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{@current_gribatomaton_information} ]."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{@current_gribatomaton_information} ]."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{@current_gribatomaton_information} ]."
      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      @current_gribatomaton_probability = @current_gribatomaton_probability * @current_gribatomaton_probability
    end
    
    #######################################################################################################
    #                                   Reconsideration And Reassessment                                  #
    #                                               For Enemey                                            #
    #######################################################################################################
    def self.reasses_enemy
      if @current_enemy_probability > 0.999999999999999999
        @current_enemy_probability = 0.9 / @current_enemy_probability
      end
  
      case @current_enemy_probability
      when 0.054450000000000005..0.287225000000000000
        puts "I'm confident it is not [ #{@current_enemy_information} ]."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{@current_enemy_information} ]."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{@current_enemy_information} ]."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{@current_enemy_information} ]."
      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      @current_enemy_probability = @current_enemy_probability + @current_enemy_probability
    end

    def self.reconsider_enemy
      if @current_enemy_probability > 0.999999999999999999
        @current_enemy_probability = 0.9 / @current_enemy_probability
      end
  
      case @current_enemy_probability
      when 0.054450000000000005..0.287225000000000000
        puts "I'm confident it is not [ #{@current_enemy_information} ]."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{@current_enemy_information} ]."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{@current_enemy_information} ]."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{@current_enemy_information} ]."
      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      @current_enemy_probability = @current_enemy_probability * @current_enemy_probability
    end
  end
  
  class CoordinatedSelection
    def self.get_player_statistics(a1, a2, b1, b2, c1, c2)
      a = a1, a2
      b = b1, b2
      c = c1, c2

      matrix = [
        [[a[0], a[0]], [a[0], b[0]], [a[0], c[0]]],
        [[b[0], a[0]], [b[0], b[0]], [b[0], c[0]]],
        [[c[0], a[0]], [c[0], b[0]], [c[0], c[0]]],
      ], [
        [[a[1], a[1]], [a[1], b[1]], [a[1], c[1]]],
        [[b[1], a[1]], [b[1], b[1]], [b[1], c[1]]],
        [[c[1], a[1]], [c[1], b[1]], [c[1], c[1]]],
      ], [
        [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
        [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
        [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
      ]

      label_type       = matrix[0]
      definition_type  = matrix[1]
      probability_type = matrix[2]
  
      row_probability = 0.33
      col_probability = 0.33
  
      graph_selection = row_probability * col_probability

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample
  
      current_label       = label_type[cur_row][cur_col][cur_arr]
      current_definition  = definition_type[cur_row][cur_col][cur_arr]
      current_probability = probability_type[cur_row][cur_col][cur_arr] * graph_selection
  
      puts "I'm confident it is not [ #{current_label} #{current_definition} ] as it has only #{current_probability} probability."
  
      @current_player_probability = current_probability + current_probability
      @current_player_information = "#{current_label} #{current_definition}"
    end
    
    def self.get_gribatomaton_statistics(a1, a2, b1, b2, c1, c2)
      a = a1, a2
      b = b1, b2
      c = c1, c2

      matrix = [
        [[a[0], a[0]], [a[0], b[0]], [a[0], c[0]]],
        [[b[0], a[0]], [b[0], b[0]], [b[0], c[0]]],
        [[c[0], a[0]], [c[0], b[0]], [c[0], c[0]]],
      ], [
        [[a[1], a[1]], [a[1], b[1]], [a[1], c[1]]],
        [[b[1], a[1]], [b[1], b[1]], [b[1], c[1]]],
        [[c[1], a[1]], [c[1], b[1]], [c[1], c[1]]],
      ], [
        [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
        [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
        [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
      ]

      label_type       = matrix[0]
      definition_type  = matrix[1]
      probability_type = matrix[2]
  
      row_probability = 0.33
      col_probability = 0.33
  
      graph_selection = row_probability * col_probability

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample
  
      current_label       = label_type[cur_row][cur_col][cur_arr]
      current_definition  = definition_type[cur_row][cur_col][cur_arr]
      current_probability = probability_type[cur_row][cur_col][cur_arr] * graph_selection
  
      puts "I'm confident it is not [ #{current_label} #{current_definition} ] as it has only #{current_probability} probability."
  
      @current_gribatomaton_probability = current_probability + current_probability
      @current_gribatomaton_information = "#{current_label} #{current_definition}"
    end
    
    def self.get_enemy_statistics(a1, a2, b1, b2, c1, c2)
      a = a1, a2
      b = b1, b2
      c = c1, c2

      matrix = [
        [[a[0], a[0]], [a[0], b[0]], [a[0], c[0]]],
        [[b[0], a[0]], [b[0], b[0]], [b[0], c[0]]],
        [[c[0], a[0]], [c[0], b[0]], [c[0], c[0]]],
      ], [
        [[a[1], a[1]], [a[1], b[1]], [a[1], c[1]]],
        [[b[1], a[1]], [b[1], b[1]], [b[1], c[1]]],
        [[c[1], a[1]], [c[1], b[1]], [c[1], c[1]]],
      ], [
        [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
        [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
        [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
      ]

      label_type       = matrix[0]
      definition_type  = matrix[1]
      probability_type = matrix[2]
  
      row_probability = 0.33
      col_probability = 0.33
  
      graph_selection = row_probability * col_probability

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample
  
      current_label       = label_type[cur_row][cur_col][cur_arr]
      current_definition  = definition_type[cur_row][cur_col][cur_arr]
      current_probability = probability_type[cur_row][cur_col][cur_arr] * graph_selection
  
      puts "I'm confident it is not [ #{current_label} #{current_definition} ] as it has only #{current_probability} probability."
  
      @current_enemy_probability = current_probability + current_probability
      @current_enemy_information = "#{current_label} #{current_definition}"
    end

    def self.increment_confidence # Input taxation
      player_input       = @current_player_probability
      gribatomaton_input = @current_gribatomaton_probability
      enemy_input        = @current_enemy_probability

      if    player_input < 50.0; # Lose HP
        if    gribatomaton_input    > enemy_input;           player_input = player_input + gribatomaton_input
        elsif enemy_input           > gribatomaton_input;    player_input = player_input + enemy_input
        end
      elsif player_input > 75.0; # Gain HP
        if    gribatomaton_input    < enemy_input;           player_input = player_input - gribatomaton_input
        elsif enemy_input           < gribatomaton_input;    player_input = player_input - gribatomaton_input
        end
      end

      if    gribatomaton_input < 50.0;
        if    player_input  > enemy_input;   gribatomaton_input = gribatomaton_input + player_input
        elsif enemy_input   > player_input;  gribatomaton_input = gribatomaton_input + enemy_input
        end
      elsif gribatomaton_input > 75.0;
        if    player_input  > enemy_input; gribatomaton_input = gribatomaton_input + player_input
        elsif enemy_input > player_input;  gribatomaton_input = gribatomaton_input + enemy_input
        end
      end

      if    enemy_input < 50.0;
        if    player_input  > enemy_input;   enemy_input = enemy_input + player_input
        elsif enemy_input   > player_input;  enemy_input = enemy_input + enemy_input
        end
      elsif enemy_input > 75.0;
        if    player_input > enemy_input;   enemy_input = enemy_input - player_input
        elsif enemy_input  > player_input;  enemy_input = enemy_input - enemy_input
        end
      end

      @current_player_probability       = player_input
      @current_gribatomaton_probability = gribatomaton_input
      @current_enemy_probability        = enemy_input
    end
    
    #######################################################################################################
    #                                   Reconsideration And Reassessment                                  #
    #                                             For Player                                              #
    #######################################################################################################
    def self.reasses_player
      if @current_player_probability > 0.999999999999999999
        @current_player_probability = 0.9 / @current_player_probability
      end
  
      case @current_player_probability
      when 0.054450000000000005..0.287225000000000000
        puts "I'm confident it is not [ #{@current_player_information} ]."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{@current_player_information} ]."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{@current_player_information} ]."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{@current_player_information} ]."
      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      @current_player_probability = @current_player_probability + @current_player_probability
    end

    def self.reconsider_player
      if @current_player_probability > 0.999999999999999999
        @current_player_probability = 0.9 / @current_player_probability
      end
  
      case @current_player_probability
      when 0.054450000000000005..0.287225000000000000
        puts "I'm confident it is not [ #{@current_player_information} ]."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{@current_player_information} ]."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{@current_player_information} ]."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{@current_player_information} ]."
      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      @current_player_probability = @current_player_probability * @current_player_probability
    end
    
    #######################################################################################################
    #                                   Reconsideration And Reassessment                                  #
    #                                           For gribatomaton                                          #
    #######################################################################################################
    def self.reasses_player
      if @current_player_probability > 0.999999999999999999
        @current_player_probability = 0.9 / @current_player_probability
      end
  
      case @current_player_probability
      when 0.054450000000000005..0.287225000000000000
        puts "I'm confident it is not [ #{@current_player_information} ]."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{@current_player_information} ]."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{@current_player_information} ]."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{@current_player_information} ]."
      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      @current_player_probability = @current_player_probability + @current_player_probability
    end

    def self.reconsider_player
      if @current_player_probability > 0.999999999999999999
        @current_player_probability = 0.9 / @current_player_probability
      end
  
      case @current_player_probability
      when 0.054450000000000005..0.287225000000000000
        puts "I'm confident it is not [ #{@current_player_information} ]."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{@current_player_information} ]."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{@current_player_information} ]."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{@current_player_information} ]."
      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      @current_player_probability = @current_player_probability * @current_player_probability
    end
    
    #######################################################################################################
    #                                   Reconsideration And Reassessment                                  #
    #                                           For gribatomaton                                          #
    #######################################################################################################
    def self.reasses_gribatomaton
      if @current_gribatomaton_probability > 0.999999999999999999
        @current_gribatomaton_probability = 0.9 / @current_gribatomaton_probability
      end
  
      case @current_gribatomaton_probability
      when 0.054450000000000005..0.287225000000000000
        puts "I'm confident it is not [ #{@current_gribatomaton_information} ]."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{@current_gribatomaton_information} ]."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{@current_gribatomaton_information} ]."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{@current_gribatomaton_information} ]."
      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      @current_gribatomaton_probability = @current_gribatomaton_probability + @current_gribatomaton_probability
    end

    def self.reconsider_gribatomaton
      if @current_gribatomaton_probability > 0.999999999999999999
        @current_gribatomaton_probability = 0.9 / @current_gribatomaton_probability
      end
  
      case @current_gribatomaton_probability
      when 0.054450000000000005..0.287225000000000000
        puts "I'm confident it is not [ #{@current_gribatomaton_information} ]."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{@current_gribatomaton_information} ]."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{@current_gribatomaton_information} ]."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{@current_gribatomaton_information} ]."
      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      @current_gribatomaton_probability = @current_gribatomaton_probability * @current_gribatomaton_probability
    end
    
    #######################################################################################################
    #                                   Reconsideration And Reassessment                                  #
    #                                               For Enemey                                            #
    #######################################################################################################
    def self.reasses_enemy
      if @current_enemy_probability > 0.999999999999999999
        @current_enemy_probability = 0.9 / @current_enemy_probability
      end
  
      case @current_enemy_probability
      when 0.054450000000000005..0.287225000000000000
        puts "I'm confident it is not [ #{@current_enemy_information} ]."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{@current_enemy_information} ]."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{@current_enemy_information} ]."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{@current_enemy_information} ]."
      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      @current_enemy_probability = @current_enemy_probability + @current_enemy_probability
    end

    def self.reconsider_enemy
      if @current_enemy_probability > 0.999999999999999999
        @current_enemy_probability = 0.9 / @current_enemy_probability
      end
  
      case @current_enemy_probability
      when 0.054450000000000005..0.287225000000000000
        puts "I'm confident it is not [ #{@current_enemy_information} ]."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{@current_enemy_information} ]."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{@current_enemy_information} ]."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{@current_enemy_information} ]."
      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      @current_enemy_probability = @current_enemy_probability * @current_enemy_probability
    end
  end
end

def competitive_selection
  SaadSelective::CompetitiveSelection.get_player_statistics(:dogs,           "are man's best friend.",
                                                            :cats,           "are the cleanest pets.",
                                                            :gerbils, "are not using hamster wheels.")

  SaadSelective::CompetitiveSelection.get_gribatomaton_statistics(:dogs,           "are man's best friend.",
                                                                  :cats,           "are the cleanest pets.",
                                                                  :gerbils, "are not using hamster wheels.")

  SaadSelective::CompetitiveSelection.get_enemy_statistics(:dogs,           "are man's best friend.",
                                                           :cats,           "are the cleanest pets.",
                                                           :gerbils, "are not using hamster wheels.")
                                                           
  SaadSelective::CompetitiveSelection.decrement_confidence
end

def coordinative_selective
  SaadSelective::CoordinatedSelection.get_player_statistics(:dogs,           "are man's best friend.",
                                                            :cats,           "are the cleanest pets.",
                                                            :gerbils, "are not using hamster wheels.")

  SaadSelective::CoordinatedSelection.get_gribatomaton_statistics(:dogs,           "are man's best friend.",
                                                                  :cats,           "are the cleanest pets.",
                                                                  :gerbils, "are not using hamster wheels.")

  SaadSelective::CoordinatedSelection.get_enemy_statistics(:dogs,           "are man's best friend.",
                                                           :cats,           "are the cleanest pets.",
                                                           :gerbils, "are not using hamster wheels.")
                                                           
  SaadSelective::CoordinatedSelection.decrement_confidence
end
