if GetLocale() == "frFR" then
	if not QuestCompletistLocalization then
		QuestCompletistLocalization = {}
	end
	QuestCompletistLocalization = {
	QC_NEWVERSIONDETECTED = "Une nouvelle version a été détectée ! Vous utilisez actuellement la version %d, mais %s utilise la version %d.",
	QC_QUERYREQUESTED = "Une requête serveur a été lancée. Cela va probablement geler le jeu pendant quelques secondes, en fonction du nombre de quêtes que vous avez complétées par le passé.",
	QC_QUERYRESULTS = "%d quêtes reçues du serveur. %d ont été ajoutées à votre historique de quêtes et %d étaient inconnues de l'add-on.",
	QC_QUERYRETURNA = "L'add-on ne connaît pas certaines quêtes que vous avez rendues. Pour m'aider à corriger cela, merci d'envoyer votre fichier SavedVariables à %s",
	QC_QUERYRETURNB = "Le fichier SavedVariables se trouve dans votre dans dossier World of Warcraft sous le nom : %s",
	QC_UNKNOWNADDONMSG = "Message d'add-on inconnu reçu de %s. Il est possible que vous exécutiez une ancienne version de cet add-on.",
}
end