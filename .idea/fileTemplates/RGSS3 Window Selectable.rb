#===============================================================================
# ** ${Class_Name}
#-------------------------------------------------------------------------------
# TODO: Insert a description here
#===============================================================================
require 'lib/main' if false # you can delete this when the scirpt is complete

class ${Class_Name} < Window_Selectable
  #--------------------------------------------------------------------------
  # * Object Initialization
  # @param [Integer] x
  # @param [Integer] y
  # @param [Integer] width
  # @param [Integer] height
  #--------------------------------------------------------------------------
  def initialize(x, y, width, height)
    super
    @data = [] # edit this for the data array
    # TODO: Add object initialization (maybe)
    refresh
    # the window is deactivated by default
    # use "activate" command to activate it
  end
  #--------------------------------------------------------------------------
  # * Get Digit Count
  # @return [Integer]
  #--------------------------------------------------------------------------
  def col_max
    return 1 # number of columns
  end
  #--------------------------------------------------------------------------
  # * Get Number of Items
  # @return [Integer]
  #--------------------------------------------------------------------------
  def item_max
    @data ? @data.size : 1
  end
  #--------------------------------------------------------------------------
  # * Create Skill List
  #--------------------------------------------------------------------------
  def make_item_list
    # TODO: fill the @data instance variable
    # for ex.
    # @data = ${DS}game_party.all_items
  end
  #--------------------------------------------------------------------------
  # * Get current item
  # @return [Object] TODO: replace Object with the data type
  #--------------------------------------------------------------------------
  def item(ind = @index)
    @data && ind >= 0 ? @data[ind] : nil
  end
  #--------------------------------------------------------------------------
  # * Draw Item
  #--------------------------------------------------------------------------
  def draw_item(index)
    item = @data(index)
    if item
      rect = item_rect(index)
      rect.width -= 4
      # TODO: Add text and content to the block
      # for ex.
      # draw_text(rect, item.name)
    end
  end
  #--------------------------------------------------------------------------
  # * Refresh
  #--------------------------------------------------------------------------
  def refresh
    make_item_list
    create_contents
    draw_all_items
  end
end