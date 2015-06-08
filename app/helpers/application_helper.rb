module ApplicationHelper

  def faq_items
    [
        ['Wer kann mitmachen?', 'Alle erwachsenen Personen (ab 18 Jahre).'],
        ['Muss ich rudern können?', '<p>-> Nein. Es sind keinerlei Kenntnisse und Erfahrungen im Rudersport notwendig.</p>'.html_safe],
        ['Was ist ein Ruder-Ergometer?', "<p>-> Ein Gerät, mit dem man die Ruderbewegung auf dem Trockenen trainieren kann.</p> #{image_tag 'concept2.jpg'}".html_safe],
        ['Wie kann ich mich anmelden? ', "<p>-> Auf dieser Website. Einfach auf #{link_to 'Jetzt Anmelden', new_registration_path } klicken. Wenn Du das Anmeldeformular ausgefüllt und abgeschickt hast, erhältst Du eine Bestätigung und deine Login-Daten per E-Mail.</p>".html_safe],
        ['Wer kann mitmachen?', 'Alle erwachsenen Personen (ab 18 Jahre).'],
        ['Wer kann mitmachen?', 'Alle erwachsenen Personen (ab 18 Jahre).'],
        ['Wer kann mitmachen?', 'Alle erwachsenen Personen (ab 18 Jahre).']
    ]

  end

end
