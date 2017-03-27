#questo serve a compilare i require dei file
#eseguirlo dall'interprete ruby nel PC

class RGSS3_Header_Compiler
  def initialize
    @folders = ['rgss3_core', 'rgss3_scripts', 'rgss3_plugins']
    @file = 'rgss3_library.rb'
  end

  def compile
    file = File.open(@file, 'w')
    file.write(get_text_file)
    file.close
	puts 'Operazione eseguita con successo.'
  end

  def get_text_file
    text = ''
    @folders.each{|folder|
      text << get_requires(folder)
    }
    text
  end

  def get_requires(folder)
    text = ''
    return '' unless File.directory?('./'+folder)
	puts 'Carico librerie in ' + folder + '...'
    Dir.foreach('./'+folder) {|x|
      next if x=='.' or x=='..'
      req = "require File.expand_path('#{folder}/#{x}')
"
      text << req
    }
    text
  end
end

compiler = RGSS3_Header_Compiler.new
compiler.compile