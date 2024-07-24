﻿#language: ru



Функционал: проверка расчета итогового количества документа Заказ

Как Менеджер по продажам я хочу
проверить расчет итогового количества документа Заказ 
чтобы видеть конечный итог по количеству

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: проверка расчета итогового количества документа Заказ
* Открытие формы создания заказа
	И В командном интерфейсе я выбираю "Продажи" "Заказы"
	Тогда открылось окно "Заказы товаров"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
* Заполнение шапки документа Заказ
	И Заполнение шапки документа Заказ
* Заполнение таблицы Товары
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование" |
		| "000000032" | "Торт "        |
	И в таблице 'Список' я выбираю текущую строку
	И в таблице 'Товары' я завершаю редактирование строки
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я перехожу к строке:
		| "Код"       | "Наименование" |
		| "000000029" | "Хлеб"         |
	И в таблице 'Список' я выбираю текущую строку
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "2"
	И в таблице 'Товары' я завершаю редактирование строки
* Проверка расчета итогового количества
	И элемент формы 'Количество (итог)' стал равен '3'
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна "Заказ * от *" в течение 20 секунд
		