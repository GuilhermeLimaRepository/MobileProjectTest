
  Dir[File.join(File.dirname(__FILE__),'/Users/agnunes/Desktop/testes/MobileProjectTest/features/screens/android*.screen.rb')].each { |file| require file }

# Modulos para chamar as classes instanciadas
module Screens

#O método serve para que toda vez que chamar esse método ele vai verificar se a classe base foi instanciada,se sim ela não irá fazer nada ,se não ela irá instanciar a classe.
  def base
    @base ||= Utils.new
  end

#O método serve para que toda vez que chamar esse método ele vai verificar se a classe HomeScreen foi instanciada,se sim ela não irá fazer nada, se não ela irá instanciar a classe.  
  def home
    @home ||= HomeScreen.new
  end

  def registration
    @registration ||= RegistrationPage.new
  end

end