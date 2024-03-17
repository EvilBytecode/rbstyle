######################################################## < BEGGINING OF DYNAMIC COLORS > ########################################################
require 'rbstyle'
DynamicColors.test_all_dynamic_colors

## 1 line print
DynamicColors.animated_colors(:PURPLE_TO_BLUE, 12, "Lorem Impsum Test Text Sigma")

## mutliple lines print
DynamicColors.animated_colors(:PURPLE_TO_BLUE, 19, "

LOREM
IMPSUM
WOW
TEST
SIGMS SIGMA SIGMS ISGMA
")

######################################################## < END OF DYNAMIC COLORS > ########################################################

######################################################## < BEGGINING OF STATIC COLORS > ########################################################


# STATIC COLRS

# Test the StaticColors module
puts "Testing StaticColors module:"

puts "#{StaticColors::RED}This is red text#{StaticColors::RESET}"
puts "#{StaticColors::GREEN}This is green text#{StaticColors::RESET}"
puts "#{StaticColors::BLUE}This is blue text#{StaticColors::RESET}"
puts "#{StaticColors::YELLOW}This is yellow text#{StaticColors::RESET}"
puts "#{StaticColors::PURPLE}This is purple text#{StaticColors::RESET}"
puts "#{StaticColors::CYAN}This is cyan text#{StaticColors::RESET}"
puts "#{StaticColors::ORANGE}This is orange text#{StaticColors::RESET}"
puts "#{StaticColors::PINK}This is pink text#{StaticColors::RESET}"
puts "#{StaticColors::TURQUOISE}This is turquoise text#{StaticColors::RESET}"
puts "#{StaticColors::LIGHT_GRAY}This is light gray text#{StaticColors::RESET}"
puts "#{StaticColors::DARK_GRAY}This is dark gray text#{StaticColors::RESET}"
puts "#{StaticColors::LIGHT_RED}This is light red text#{StaticColors::RESET}"
puts "#{StaticColors::LIGHT_GREEN}This is light green text#{StaticColors::RESET}"
puts "#{StaticColors::LIGHT_BLUE}This is light blue text#{StaticColors::RESET}"
puts "#{StaticColors::DARK_RED}This is dark red text#{StaticColors::RESET}"
puts "#{StaticColors::DARK_GREEN}This is dark green text#{StaticColors::RESET}"
puts "#{StaticColors::DARK_BLUE}This is dark blue text#{StaticColors::RESET}"
puts "#{StaticColors::BLACK}This is black text#{StaticColors::RESET}"
puts "#{StaticColors::WHITE}This is white text#{StaticColors::RESET}"
