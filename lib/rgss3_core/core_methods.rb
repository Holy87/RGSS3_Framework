# Evaluates the provided block one time only
# Detects a reset within a block with a press of the F12 key and returns to the beginning if reset
def rgss_main(block = {})
  fail NotImplementedError
end

# Stops script execution and only repeats screen refreshing
# == USE WITH CAUTION
# it stops all the scripts
def rgss_stop
  fail NotImplementedError
end

# Loads the data file indicated by filename and restores the object
# @param [String] filename the filename (including path)
# @return [Object]
def load_data(filename)
  fail NotImplementedError
end

# Saves the object obj to the data file indicated by filename
# @param [Object] obj
# @param [String] filename
def save_data(obj, filename)
  fail NotImplementedError
end

# Outputs the arguments to the message box.
# If a non-string object has been supplied as an argument,
# it will be converted into a string with to_s and output
def msgbox(*args)
  fail NotImplementedError
end

# Outputs obj to the message box in a human-readable format
def msgbox_p(*args)
  fail NotImplementedError
end
