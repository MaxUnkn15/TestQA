﻿#language: ru
@IgnoreOnCIMainBuild
@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Переменные:
ЗаголовокФормыСпискаПоступления = '{!Metadata.Documents.PurchaseInvoice.ListPresentation}'
ЗаголовокПодсистемаЗакупок = '{!Metadata.Subsystems.PurchaseAP.Synonym}'

*ПроверяемыеЗначения
	| 'Имя'                       | 'Представление'               | 'Значение' |
	| 'СуммаДокументаПоступления' | 'Сумма документа поступления' | '400,00'   |

ИтоговаяСуммаОтчетаЗакупки = 'R13C3'

СообщениеШтрихКодНеНайден = '{!R().S_019}'

//Сообщение = '{NStr("en=""Barcode %1 not found.""; ru=""Штрихкод %1 не найден.""")}'

Сценарий: <описание сценария>
