#===============================================================================
# ** ${Class_Name}
#-------------------------------------------------------------------------------
# TODO: Insert a description here
#===============================================================================
require 'lib/main' if false # you can delete this when the scirpt is complete

class ${Class_Name} < Window_Command
  #--------------------------------------------------------------------------
  # * Object Initialization
  # @param [Integer] x
  # @param [Integer] y
  #--------------------------------------------------------------------------
  def initialize(x, y)
    super
    # TODO: add other commands if you want
  end
  #--------------------------------------------------------------------------
  # * Get Window Width
  # @return [Integer]
  #--------------------------------------------------------------------------
  def window_width
    return 160 # the window width
  end
  #--------------------------------------------------------------------------
  # * Create Command List
  #--------------------------------------------------------------------------
  def make_command_list
    # TODO: Add commands to the window
    # for ex.
    # add_command('Sample 1', :sample1)
    # add_command('Sample 2', :sample2)
  end
end