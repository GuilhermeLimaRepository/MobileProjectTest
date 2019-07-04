
if ENV['PLATFORM'] == 'android'
  Dir[File.join(File.dirname(__FILE__),'/Users/agnunes/Documents/RubyProject/features/screens/android/*.screen.rb')].each { |file| require file }
elsif ENV['PLATFORM'] == 'ios'
  Dir[File.join(File.dirname(__FILE__),'/Users/agnunes/Documents/RubyProject/features/screens/ios/*.screen.rb')].each { |file| require file }
end

# Modulos para chamar as classes instanciadas
module Screens

#O método serve para que toda vez que chamar esse método ele vai verificar se a classe base foi instanciada,se sim ela não irá fazer nada ,se não ela irá instanciar a classe.
  def base
    @base ||= Utils.new
  end
  
#O método serve para que toda vez que chamar esse método ele vai verificar se a classe LoginScreen foi instanciada,se sim ela não irá fazer nada, se não ela irá instanciar a classe.
  def login
    @login ||= LoginScreen.new
  end

#O método serve para que toda vez que chamar esse método ele vai verificar se a classe HomeScreen foi instanciada,se sim ela não irá fazer nada, se não ela irá instanciar a classe.  
  def home
    @home ||= HomeScreen.new
  end

end