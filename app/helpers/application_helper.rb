module ApplicationHelper

  def faq_items
    [
        ['Wer kann mitmachen?', 'Alle erwachsenen Personen (ab 18 Jahre).'.html_safe],
        ['Muss ich rudern können?', 'Nein. Es sind keinerlei Kenntnisse und Erfahrungen im Rudersport notwendig.'.html_safe],
        ['Muss ich ein Super-Athlet sein?', 'Nein. Es können alle mitmachen, die auf einem Ruder-Ergometer ca. zehn Züge machen können.'.html_safe],
        ['Muss ich Mitglied in einem Sportverein sein?', 'Nein. Die Mitgliedschaft in einem Sportverein ist keine Bedingung.'.html_safe],
        ['Muss ich in Richterswil wohnhaft sein?', 'Nein. Der Wohnsitz in Richterswil ist keine Bedingung.'.html_safe],        
        ['Wie lang dauert mein Einsatz auf dem Ergometer?', 'Um auf dem Ergometer eine Strecke von 100m zurückzulegen, benötigt man ca. 20 bis 40 Sekunden.'.html_safe],
        ['Wie läuft mein Einsatz ab?', 'Am Eingang zum Zelt erhältst Du deine Startnummer. Ein Instruktor zeigt, worauf man beim Rudern auf dem Ergometer achten muss. Danach hast Du ca. drei Minuten Zeit, um das Rudern auf einem Übungs-Ergometer auszuprobieren. Anschliessend stellst Du dich in die Reihe, die zum Podest mit dem Rekord-Ergometer führt. Wenn du an der Reihe bist, steigst Du auf das Podest, ruderst deine 100m und gibst dann den Ergometer so schnell wie möglich für den nächsten Teilnehmer frei. Zum Schluss unterschreibst Du deinen Eintrag im Logbuch und nimmst dein Erinnerungsgeschenk in Empfang.'.html_safe],
        ['Wie kann ich mich anmelden?', "Auf dieser Website. Einfach auf #{link_to 'Jetzt anmelden', new_participant_path } klicken. Wenn Du das Anmeldeformular ausgefüllt und abgeschickt hast, erhältst Du eine Bestätigung und deine Login-Daten per E-Mail.".html_safe],
        ['100m ist mir zu wenig. Kann ich mich für mehrere Einsätze anmelden?', 'Nein. Die Bedingungen von Guinness schreiben vor, dass jede/r Teilnehmer/in nur genau einmal mitmachen darf.'.html_safe],
        ['Ich weiss zurzeit noch nicht definitiv, ob ich tatsächlich mitmachen kann. Soll ich mich trotzdem anmelden?', 'Ja, melde dich trotzdem an. Falls Du dann doch nicht mitmachen kannst, melde dich bitte so bald wie möglich ab. So kann dein Platz für jemand anders frei gegeben werden.'.html_safe],
        ['Kann ich meine Anmeldung später noch abändern?', "Ja. Rufe diese Webseite auf und klicke auf #{link_to 'Login', new_participant_session_path }.".html_safe],
        ['Was tun, wenn ich mich angemeldet habe, aber verhindert bin?', "Bitte so bald wie möglich auf dieser Webseite einloggen (#{link_to 'Login', new_participant_session_path }) und abmelden. So kann dein Platz für jemand anders frei gegeben werden.".html_safe],
        ['Warum muss ich bei der Anmeldung einen Zeitschlitz angeben?', 'Damit wir die Teilnehmer/innen auf die 8 Stunden verteilen können.'.html_safe],
        ['Wann muss ich im Zelt sein?', 'Mindestens 15 Minuten vor dem Zeitschlitz, für den Du dich angemeldet hast.'.html_safe],
        ['Komme ich auf jeden Fall auf dem Rekord-Ergometer zum Einsatz?', 'Leider nein. Um einen unterbruchsfreien Ablauf zu erhalten, müssen wir die Zeitschlitze überbuchen. Deshalb kann es vorkommen, dass nicht alle Teilnehmer/innen eines Zeitschlitzes zum Einsatz kommen. Du erhältst aber trotzdem ein Erinnerungsgeschenk.'.html_safe],
        ['Muss ich im Sport-Tenü erscheinen?', 'Nein, nicht unbedingt. Die Bekleidung sollte jedoch so gewählt werden, dass sie die Bewegungen auf dem Ergometer nicht behindert.'.html_safe],
        ['Kann ich mich umziehen?', 'Nein. Es stehen leider keine Garderoben zur Verfügung.'.html_safe],
        ['Kann ich meine Handtasche, Handy, Wertsachen während meines Einsatzes deponieren?', 'Ja. Es steht ein Kleider- und Wertsachen-Depot zur Verfügung.'.html_safe],
        ['Erhalte ich ein Erinnerungsgeschenk?', 'Ja. Alle Teilnehmer/innen erhalten ein Erinnerungsgeschenk; auch diejenigen, welche überzählig sind und nicht zum Einsatz kommen.'.html_safe],
        ['Was ist ein Ruder-Ergometer?', "<p>Ein Gerät, mit dem man die Ruderbewegung auf dem Trockenen trainieren kann.</p> #{image_tag 'concept2.jpg'}".html_safe],
        ['Wer organisiert diesen Weltrekordversuch?', 'Organisator ist der Seeclub Richterswil. Dies ist unser Beitrag zu 750 Jahre Richterswil. Ein Anlass von der Bevölkerung für die Bevölkerung.'.html_safe],
    ]

  end

end
