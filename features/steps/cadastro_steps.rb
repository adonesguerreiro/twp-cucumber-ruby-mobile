Dado('que acesso a tela de Cadastro') do                                        
    @nav.tap_hamburger
    @nav.tap_by_text("FORMS")
    @nav.tap_by_text("CADASTRO")
  end                                                                             
                                                                                  
  Quando('eu submeto as credenciais do formulário:') do |table|                   
    registration = table.rows_hash
    @cadastro.submit(registration[:nome], registration[:email], registration[:senha], registration[:perfil])
  end                                                                                  
  Então('devo ver a mensagem: {string}') do |message|                              
    expect(@toaster.toast.text).to eql message    
  end                                                                             