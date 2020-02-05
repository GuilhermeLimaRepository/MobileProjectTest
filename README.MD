# Testes Automatizados
* [Cucumber]
* [Ruby]
* [Android]

- - -

### Estrutura do projeto:

+ arquivo.feature
   +  Contém a documentação viva da funcionalidade, será escrita em Gherkin.

+ arquivo_step.rb
   +  Interligação entre os recursos escritos em Gherkin e o sistema real em teste.

+ arquivo_utils.rb
   +  Onde se encontram os métodos mais utilizados.

+ arquivo pageHelper.rb
    + Onde se encontram os inicializadores de cada tela

+ arquivo env.rb
    + Onde se encontram todos os requires, e logicas de seleçāo de plataforma

+ pasta  android
   +  Onde se encontram a screen e os métodos utilizados em android. 

+ pasta  stepDefinitio 
   +  Onde se encontram todos os steps dos cenarios.   

+ pasta  bdd
   +  Onde se encontram todos os BDD`s do sistema.    

+ pasta  support
   +  Onde se encontram todos os arquivos de configuraçāo do sistema. 

+ pasta  config
   +  Onde se encontram todos os arquivos de tags de inicializaçāo dos testes.      
- - -

## <a name="Cucumber"></a> Cucumber
##### Uma ferramenta que gera documentação viva, uma especificação e documentação das funcionalidades.
      $ sudo gem install cucumber
      $ cucumber --init 

- - -

## <a name="Gem"></a> Gem
##### Neste aquivo são listados as gems que iremos utilizar no projeto.
      $ bundle init
      $ bundle install # instala as gems listadas


- - -


## <a name="Mobile"></a> Mobile
##### Iremos utilizar os frameworks Cucumber e Appium com Ruby para a automação dos testes.

#### Pré requisitos:
* [Android Studio][3.1.4](https://developer.android.com/studio/)
* [Java][10.0.2](http://www.oracle.com/technetwork/pt/java/javase/downloads/jdk8-downloads-2133151.html) 
* [Appium][1.9.0](http://appium.io/)
* [Ruby][2.3.7](https://www.ruby-lang.org/pt/)
* [Cucumber][3.1.2](https://cucumber.io)
* [Node][10.10.0](https://nodejs.org/en/)
* [Appium Doctor][1.5.0](https://github.com/appium/appium-doctor)

#### Configuração:
* Appium Doctor: Verifica se estão instalados todos os pré requisitos para que o appium funcione corretamente

      $ appium-doctor

* cucumber.yml - adicionar uma tag, especificando quais pastas devem ser executadas.

* env - configurar appium/selenium

* hooks - cadastrar as ações before / after

* Desired Capabilities: É um conjunto de chave/valor enviado ao Appium Server para informar qual tipo de sessão desejamos iniciar. É através dele que informamos em qual dispositivo queremos executar e quais são as configurações.
 
    Exemplo:

      [caps]
      platformName = "Android"
      deviceName = 'Nexus_5_API_23_mars'
      app = ./dev/android/app/build/outputs/apk/nome.apk'


#### Iniciar os testes:

      $ appium    #inicia o servidor appium
      $ cucumber -p android feature/"<nomeFeature.feature>"

      tags: 
      android

#### Gerar relatório:
      $ cucumber feature/"<nomeFeature>" --format html --out reports.html

#### Gerar relatório Jenkins:
      $ cucumber feature/"<nomeFeature>" --format json --out reports.json      

      obs: Será necessario o pluggin cucumber reports instalado no jenkins
      
- - - 
