if GetLocale() == "ruRU" then
	if not QuestCompletistLocalization then
		QuestCompletistLocalization = {}
	end
	QuestCompletistLocalization = {
	QC_NEWVERSIONDETECTED = "Новая версия дополнения была обнаружена! Сейчас используется версия %d, но %s использует версию %d.",
	QC_QUERYREQUESTED = "Запрос на сервер был выслан. Это может остановить игру на несколько секунд - зависит от количества квестов которые вы сделали в прошлом.",
	QC_QUERYRESULTS = "Получено %d квестов от сервера. %d из которых добавлены в вашу историю заданий и %d из которых неизвестны дополнению Quest Completist.",
	QC_QUERYRETURNA = "Дополнение Quest Completist не знает фактов про некоторые квесты которые вы сделали. Помогите нам исправить это, пожалуйста вышлите файл SavedVariables сюда %s",
	QC_QUERYRETURNB = "Файл SavedVariables находится в вашей папке World of Warcraft по адресу: %s",
	QC_UNKNOWNADDONMSG = "Неизвестное сообщение от дополнения %s было получено. Это произошло возможно из за использования старой версии этого дополнения.",
	}
end