Before do
  @login_page = LoginPage.new
  @alert = Alert.new
  @cadastro_page = CadastroPage.new

  #page.driver.browser.manage.window.maximize - #Configuração para maximizar a tela durante os testes.
  page.current_window.resize_to(1400, 900) # Configuração de resolução para os testes.
end

After do
  temp_shot = page.save_screenshot("logs/temp_screenshot.png")

  Allure.add_attachment(
    name: "Screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot),
  )
end
