#==============================================================================
# ** Window_HorzCommand
#  This is a command window for the horizontal selection format.
#==============================================================================

class Window_HorzCommand < Window_Command
  # Get Number of Lines to Show
  # @return [Integer]
  def visible_line_number
    return 1
  end

  # Get Digit Count
  # @return [Integer]
  def col_max
    return 4
  end

  # Get Spacing for Items Arranged Side by Side
  # @return [Integer]
  def spacing
    return 8
  end

  # Calculate Width of Window Contents
  # @return [Integer]
  def contents_width
    (item_width + spacing) * item_max - spacing
  end

  # Calculate Height of Window Contents
  # @return [Integer]
  def contents_height
    item_height
  end

  # Get Leading Digits
  # @return [Integer]
  def top_col
    ox / (item_width + spacing)
  end

  # Set Leading Digits
  # @return [Integer]
  def top_col=(col)
    col = 0 if col < 0
    col = col_max - 1 if col > col_max - 1
    self.ox = col * (item_width + spacing)
  end

  # Get Trailing Digits
  # @return [Integer]
  def bottom_col
    top_col + col_max - 1
  end

  # Set Trailing Digits
  # @return [Integer]
  def bottom_col=(col)
    self.top_col = col - (col_max - 1)
  end

  # Scroll Cursor to Position Within Screen
  def ensure_cursor_visible
    self.top_col = index if index < top_col
    self.bottom_col = index if index > bottom_col
  end

  # Get Rectangle for Displaying Items
  # @return [Rect]
  def item_rect(index)
    rect = super
    rect.x = index * (item_width + spacing)
    rect.y = 0
    rect
  end

  # Get Alignment
  # @return [Integer]
  def alignment
    return 1
  end

  # Move Cursor Down
  def cursor_down(wrap = false)
  end

  # Move Cursor Up
  def cursor_up(wrap = false)
  end

  # Move Cursor One Page Down
  def cursor_pagedown
  end

  # Move Cursor One Page Up
  def cursor_pageup
  end
end
