require "allure-cucumber"
require "capybara"
require "capybara/cucumber"
require "webdrivers"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome #propriedade que define qual navegador será usado
  config.app_host = "https://qa.betagofree.com" #propriedade que define a URL padrão do sistema que será testado.
  config.default_max_wait_time = 10
end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end
