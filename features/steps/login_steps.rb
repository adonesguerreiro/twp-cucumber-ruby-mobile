Dado('que acesso a tela login') do
  @nav.tap_hamburger
  @nav.tap_by_text("FORMS")
  @nav.tap_by_text("LOGIN")
  end
  
  Quando('eu submeto as credenciais:') do |table|
    user = table.rows_hash
    log(user)
    @login.sign_in(user[:email], user[:senha])
  end
  
  Então('devo ver a notificação: {string}') do |notice|
    #log(get_source) pega xml da tela
    expect(@toaster.toast.text).to eql notice
  end