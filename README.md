#  Estudo do appium_ruby

## Appium com Ruby para Site Mobile

O que é um site Mobile ou web app?

  É um site próprio para dispositivos móveis sejam eles smartphones ou tablets, que se adaptam a todos os dispositivos móveis independente do tamanho de tela, e não são visualizados em computadores desktop ou notebooks,ou seja o site mobile reconhece o tipo de dispositivo que o usuário está utilizando, e direciona para o site que  se adaptara em de uma melhor forma.

Como funciona um site Mobile?

  O Site Mobile é um site diferente do site original, e exatamente um segundo site. Os arquivos do site como imagens e scripts podem até ter o mesmo caminho dependendo do caso, porém os arquivos html são outros, inclusive alguns sites mobiles ficam em subdomínio,como por exemplo o site da globo quando você acessa o site de um celular o site fica com o endereço “m.globo.com”.

# Criando um projeto Appium_iOS utilizando Safari

Abra o terminal e execute os comandos abaixo :
```
cucumber --init    # criando estrutura do projeto
bundle --init      # criando arquivo Gemfile
Arc setup ios      # cria um txt. para ios (Capabilities para iOS)
```
## Gemfile

Abra o arquivo Gemfile e adicione as gems:
```
source 'https://rubygems.org'

gem 'appium_lib'
gem 'appium_console'
gem 'rspec'
gem 'pry'
gem 'selenium-webdriver'
gem 'capybara'
gem 'capybara/cucumber'
```
Abra o terminal e execute os comandos abaixo :
```
bundle install    
```
## Desired Capabilities

Abra o Capabilities para iOS e preencha o arquivo conforme exemplo:
 ```
 [caps]
platformName = "iOS"                      # Plataforma
browserName = "Safari"                    # Browser
platformVersion = "10.3"                  # OS
deviceName = "iPhone 5"                   # nome do dispositivo
```
## Inspecionando elementos

Para inspecionar os elementos na plataforma podemos usar essas opções:
- Web inspector
```
https://developer.apple.com/library/content/documentation/AppleApplications/Conceptual/Safari_Developer_Guide/Introduction/Introduction.html
```
```
https://webdesign.tutsplus.com/es/articles/quick-tip-using-web-inspector-to-debug-mobile-safari--webdesign-8787
```
- Browser Safari

## Executando seus testes

 Para rodar os testes execute os comandos no terminal:
  ```
  cucumber                          # rodar todos seus testes
  cucumber feature/<nomefeature>    # executa todos os cenários de uma feature especifica.
  ```
  Atenção "Antes de rodar seus testes inicia o servidor do appium "

## Gerando Reletório de testes

  Para gerar o relatório no final dos teste, basta colocar o comando:
  ```
  <--format html --out reports.html>
  ```
  exemplo: cucumber feature/<nomefeature> --format html --out reports.html


# Criando um projeto Appium_Android utilizando Chrome

Abra o terminal e execute os comandos abaixo :
```
cucumber --init    # criando estrutura do projeto
bundle --init      # criando arquivo Gemfile
Arc setup android  # cria um txt. para android (Capabilities para android)
```
## Gemfile

Abra o arquivo Gemfile e adicione as gems:
```
source 'https://rubygems.org'

gem 'appium_lib'
gem 'appium_console'
gem 'rspec'
gem 'pry'
gem 'selenium-webdriver'
gem 'capybara'
gem 'capybara/cucumber'
```
Abra o terminal e execute os comandos abaixo :
```
bundle install    
```
## Desired Capabilities

Abra o Capabilities para Android e preencha o arquivo conforme exemplo:
 ```
 [caps]
browserName = "Chrome"
platformName = "Android"
deviceName = 'Nexus_5_API_24'
platformVersion = '7.0'
chromedriverExecutable = '/Users/Danilo.Policarpo/dev/site_mobile/build/chrome/chromedriver'
chromedriverVersion = '2.23'
```

## Inspecionando elementos

Para inspecionar os elementos na plataforma podemos usar essas opções:
- chrome://inspect
```
http://toolsqa.com/mobile-automation/appium/inspect-elements-of-mobile-web-application/
```
- Browser chrome

## Executando seus testes

 Para rodar os testes execute os comandos no terminal:
  ```
  cucumber                          # rodar todos seus testes
  cucumber feature/<nomefeature>    # executa todos os cenários de uma feature especifica.
  ```
  Atenção "Antes de rodar seus testes inicia o servidor do appium "

## Gerando Reletório de testes

  Para gerar o relatório no final dos teste, basta colocar o comando:
  ```
  <--format html --out reports.html>
  ```
  exemplo: cucumber feature/<nomefeature> --format html --out reports.html


## Executando os testes do repositorio

Para rodar os testes execute os comandos no terminal:
  ```
  cucumber -p android                           # rodar os testes do chrome
  cucumber -p android feature/<nomefeature>     # rodar feature especifica
  cucumber -p ios                               # rodar os testes do safari
  cucumber -p ios feature/<nomefeature>         # rodar feature especifica
  ```
  Atenção "Antes de rodar seus testes inicia o servidor do appium "


## Dúvidas

### > Chromedriver error “Chrome version must be >= 52”

versão instavel do chromedriver 2.23
https://appium.readthedocs.io/en/stable/en/advanced-concepts/chromedriver/