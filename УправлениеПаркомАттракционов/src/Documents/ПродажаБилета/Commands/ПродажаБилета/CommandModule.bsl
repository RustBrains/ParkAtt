
#Область ОбработчикиСобытий
// Обработчик команды печати.
//
// Параметры:
//	ПараметрКоманды - Произвольный - содержит ссылку на объект, для которого вызвана команда печати.
//	ПараметрыВыполненияКоманды - ПараметрыВыполненияКоманды - параметры выполнения команды.
&НаКлиенте
Процедура ОбработкаКоманды(ПараметрКоманды, ПараметрыВыполненияКоманды)
	//{{_КОНСТРУКТОР_ПЕЧАТИ(ПродажаБилета)
	ТабДок = Новый ТабличныйДокумент;
	ПродажаБилета(ТабДок, ПараметрКоманды);

	ТабДок.ОтображатьСетку = Ложь;
	ТабДок.Защита = Ложь;
	ТабДок.ТолькоПросмотр = Ложь;
	ТабДок.ОтображатьЗаголовки = Ложь;
	ТабДок.Показать();
	//}}
КонецПроцедуры
#КонецОбласти
#Область СлужебныеПроцедурыИФункции
// Обработчик команды печати на сервере.
//
// Параметры:
//	ТабДок - ТабличныйДокумент - табличный документ для заполнения и печати.
//	ПараметрКоманды - Произвольный - содержит ссылку на объект, для которого вызвана команда печати.
&НаСервере
Процедура ПродажаБилета(ТабДок, ПараметрКоманды)
	Документы.ПродажаБилета.ПродажаБилета(ТабДок, ПараметрКоманды);
КонецПроцедуры
#КонецОбласти