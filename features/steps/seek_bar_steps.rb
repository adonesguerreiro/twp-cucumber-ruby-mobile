Dado('que acesso a tela de Seek Simples') do
  @nav.tap_hamburger
  @nav.tap_by_text("SEEK BAR")
  @nav.tap_by_text("SEEK") 
end
  
Quando('arrasto clico na barra de progresso') do
  find_element(xpath: "//android.view.ViewGroup/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout")
  @seek_bar1 = "io.qaninja.android.twp:id/seekBarOne"
  find_element(id: @seek_bar1).click   
  @seek_bar2 = "io.qaninja.android.twp:id/seekBarTwo"
  find_element(id: @seek_bar2).click 
end
  
Então('as barras de progresso pela metade {string}') do |seekbar_value|
  @seek_bar1_result = find_element(id: @seek_bar1)
  @seek_bar2_result = find_element(id: @seek_bar2)
  expect(@seek_bar1_result.text).to eql seekbar_value
  expect(@seek_bar2_result.text).to eql seekbar_value    
end
