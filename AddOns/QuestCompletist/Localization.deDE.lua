if GetLocale() == "deDE" then
	if not QuestCompletistLocalization then
		QuestCompletistLocalization = {}
	end
	QuestCompletistLocalization = {
	QC_NEWVERSIONDETECTED = "Eine neue Version wurde entdeckt! Zur Zeit benutzt du Version %d, aber %s benutzt Version %d.",
	QC_QUERYREQUESTED = "Eine Serverabfrage wurde angefordert. Dies wird voraussichtlich dein Spiel für einige Sekunden einfrieren - abhängig davon, wie viele Quests du in der Vergangenheit abgeschlossen hast.",
	QC_QUERYRESULTS = "%d Quests vom Server empfangen. %d Quests wurden deiner Quest Historie hinzugefügt und %d waren dem AddOn unbekannt.",
	QC_QUERYRETURNA = "Das AddOn kennt einige deiner abgeschlossenen Quests nicht. Um mir zu helfen dies zu korrigieren, ziehe bitte in Betracht deine SavedVariables Datei an %s zu senden.",
	QC_QUERYRETURNB = "Die SavedVariables Datei kann in deinem World of Warcraft Ordner gefunden werden unter: %s",
	QC_UNKNOWNADDONMSG = "Unbekannte AddOn Nachricht von %s empfangen. Ist es möglich, dass du eine alte Version dieses AddOns verwendest.",
	}
end