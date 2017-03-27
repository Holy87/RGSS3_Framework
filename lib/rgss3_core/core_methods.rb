def rgss_main(block={}); end
def rgss_stop; end
def load_data(filename)
  Marshal.load(filename)
end
def save_data(obj, filename)
  Marshal.dump(obj, filename)
end
def msgbox(*args)
  puts args
end
def msgbox_p(*args)
  puts args.to_s
end
