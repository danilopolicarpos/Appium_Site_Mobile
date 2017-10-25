class Home
  def initialize
    @layout_name = 'hplogo'
    @busca = 'lst-ib'
    @btn_buscar = 'tsbb'
    @resultado_busca = 'center_col'
  end

  def homepage
    driver.get('http://www.google.com')
    wait_for_element(id: @layout_name)
  end

  def realizar_busca
    wait { find_element(id: @busca).send_keys('terra') }
    wait_for_click(id: @btn_buscar)
  end

  def resultado_busca
    wait_for_element(id: @resultado_busca) 
  end
end
