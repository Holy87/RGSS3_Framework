#===============================================================================
# ** ${Class_Name}
#-------------------------------------------------------------------------------
# TODO: Insert a description here
#===============================================================================
require 'lib/main' if false # you can delete this when the scirpt is complete

class ${Class_Name} < Window_Base
  #--------------------------------------------------------------------------
  # * Object Initialization
  # @param [Integer] x
  # @param [Integer] y
  # @param [Integer] width
  # @param [Integer] height
  #--------------------------------------------------------------------------
  def initialize(x, y, width, height)
    super
    # TODO: add other commands if you want
    refresh
  end
  #--------------------------------------------------------------------------
  # * Refresh
  #--------------------------------------------------------------------------
  def window_width
    contents.clear
    # TODO: Draw in the window
  end
  
end