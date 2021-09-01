 Dado('que acesso a opção de info') do
   @nav.tap_hamburger
   @nav.tap_by_text("DIALOGS")
   @nav.tap_by_text("INFO")
  end
  
  E('visualizo no dialog o subtítulo: {string}') do |subtitle|
   @dialogs.dialogs_info
   sub = find_element(id: "io.qaninja.android.twp:id/dialogInfoSubtitle")
   expect(sub.text).to eql subtitle
  end
  
  Então('logo abaixo a mensagem: {string}') do |dialog_info|
    dialog = find_element(id: "io.qaninja.android.twp:id/dialogInfoText")
    expect(dialog.text).to eql dialog_info
  end
  
  Então('clico no botão OK a mensagem deve ser fechada.') do
    find_element(id: "io.qaninja.android.twp:id/dialogInfoOk").click
  end