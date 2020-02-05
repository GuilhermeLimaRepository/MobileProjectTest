#Caminho para a pasta das telas, todas as telas devem terminar em .screen.rb
  Dir[File.join(File.dirname(__FILE__),'~/Desktop/MobileProjectTest/features/screens/android*.screen.rb')].each { |file| require file }

# Modulos para chamar as classes instanciadas
module Screens

#Toda vez que chamar esse método ele vai verificar se a classe base foi instanciada,se sim ela não irá fazer nada ,se não ela irá instanciar a classe.
  def base
    @base ||= Utils.new
  end

#Toda vez que chamar esse método ele vai verificar se a classe HomeScreen foi instanciada,se sim ela não irá fazer nada, se não ela irá instanciar a classe.  
  def home
    @home ||= HomeScreen.new
  end

#Toda vez que chamar esse método ele vai verificar se a classe RegistrationPage foi instanciada, se sim ela não irá fazer nada, se não ela irá instanciar a classe.    
  def registration
    @registration ||= RegistrationPage.new
  end

end