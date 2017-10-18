class Home
  def initialize
    @layout_name = 'hplogo'
    @busca = 'lst-ib'
    @btn_buscar = 'tsbb'
    @resultado_busca = 'center_col'
  end

  def homepage
    driver.get('http://www.google.com')
    wait { find_element(id: @layout_name) }
  end

  def realizar_busca
    wait { find_element(id: @busca).send_keys('terra') }
    wait { find_element(id: @btn_buscar).click }
  end

  def resultado_busca
    resultado = wait { find_element(id: @resultado_busca).displayed? }
    raise 'Não encontrou resultado da busca' if resultado != true
  end
end
