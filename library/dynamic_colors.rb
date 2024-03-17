# library/dynamic_colors.rb
require 'io/console'

module DynamicColors
    def self._makergbcol(var1, var2)
      col = var1[0, 12].dup
      var2[0, 12].each { |c| col << c }
      col.reverse.each { |c| col << c }
      col
    end
  
    BLACK_TO_WHITE = ["m;m;m"]
    BLACK_TO_RED = ["m;0;0"]
    BLACK_TO_GREEN = ["0;m;0"]
    BLACK_TO_BLUE = ["0;0;m"]
    WHITE_TO_BLACK = ["n;n;n"]
    WHITE_TO_RED = ["255;n;n"]
    WHITE_TO_GREEN = ["n;255;n"]
    WHITE_TO_BLUE = ["n;n;255"]
    RED_TO_BLACK = ["n;0;0"]
    RED_TO_WHITE = ["255;m;m"]
    RED_TO_YELLOW = ["255;m;0"]
    RED_TO_PURPLE = ["255;0;m"]
    GREEN_TO_BLACK = ["0;n;0"]
    GREEN_TO_WHITE = ["m;255;m"]
    GREEN_TO_YELLOW = ["m;255;0"]
    GREEN_TO_CYAN = ["0;255;m"]
    BLUE_TO_BLACK = ["0;0;n"]
    BLUE_TO_WHITE = ["m;m;255"]
    BLUE_TO_CYAN = ["0;m;255"]
    BLUE_TO_PURPLE = ["m;0;255"]
    YELLOW_TO_RED = ["255;n;0"]
    YELLOW_TO_GREEN = ["n;255;0"]
    PURPLE_TO_RED = ["255;0;n"]
    PURPLE_TO_BLUE = ["n;0;255"]
    CYAN_TO_GREEN = ["0;255;n"]
    CYAN_TO_BLUE = ["0;n;255"]
  
    dynamic_colors = [
      BLACK_TO_WHITE, BLACK_TO_RED, BLACK_TO_GREEN, BLACK_TO_BLUE,
      WHITE_TO_BLACK, WHITE_TO_RED, WHITE_TO_GREEN, WHITE_TO_BLUE,
      RED_TO_BLACK, RED_TO_WHITE, RED_TO_YELLOW, RED_TO_PURPLE,
      GREEN_TO_BLACK, GREEN_TO_WHITE, GREEN_TO_YELLOW, GREEN_TO_CYAN,
      BLUE_TO_BLACK, BLUE_TO_WHITE, BLUE_TO_CYAN, BLUE_TO_PURPLE,
      YELLOW_TO_RED, YELLOW_TO_GREEN, PURPLE_TO_RED, PURPLE_TO_BLUE,
      CYAN_TO_GREEN, CYAN_TO_BLUE
    ]
  
    dynamic_colors.each do |color|
      _col = 20
      reversed_col = 220
  
      dbl_col = 20
      dbl_reversed_col = 220
  
      content = color[0]
      color.shift
  
      12.times do
        if content.include?('m')
          result = content.gsub('m', _col.to_s)
          color << result
        elsif content.include?('n')
          result = content.gsub('n', reversed_col.to_s)
          color << result
        end
        _col += 20
        reversed_col -= 20
      end
  
      12.times do
        if content.include?('m')
          result = content.gsub('m', dbl_reversed_col.to_s)
          color << result
        elsif content.include?('n')
          result = content.gsub('n', dbl_col.to_s)
          color << result
        end
        dbl_col += 20
        dbl_reversed_col -= 20
      end
    end
  
    def self.ansiitest(text, color)
      print "\033[38;2;#{color}m#{text}\033[0m"
    end
    def self.animated_colors(color_transition, index, text)
        colors = DynamicColors.const_get(color_transition)
        selected_color = colors[index - 1]
        DynamicColors.ansiitest(text, selected_color)
        puts
    end

    def self.test_all_dynamic_colors
        puts "Testing all dynamic color transitions:"
        DynamicColors.constants.each do |const|
          transition_name = const.to_s.split('_').map(&:capitalize).join(' ')
          colors = DynamicColors.const_get(const)
          puts "Transition: #{transition_name}"
          colors.each_with_index do |color, index|
            DynamicColors.ansiitest("Color #{index + 1}:  Lorem Ipsum Random Text Test.", color)
            puts
          end
          puts
        end
      end
      
end
