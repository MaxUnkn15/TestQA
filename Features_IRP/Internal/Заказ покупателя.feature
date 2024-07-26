﻿#language: ru

@tree

Функционал: заказ покупателя

Как Менеджер по продажам я хочу
заполнить поля документа Заказ покупателя
чтобы протестировать функционал

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: проверка заполнения поля Партнер
	И В командном интерфейсе я выбираю "Продажи" "Заказы покупателей"
	Тогда открылось окно "Заказы покупателей"
	И в таблице "List" я перехожу к первой строке
	И в таблице 'List' я выбираю текущую строку
	И я нажимаю на гиперссылку с именем 'DecorationGroupTitleCollapsedPicture'
	И элемент формы с именем 'Agreement' доступен
	И элемент формы с именем 'Partner' доступен
	И элемент формы с именем 'LegalName' доступен
	И я закрываю текущее окно
	И в таблице "List" я перехожу к следующей строке
	И в таблице 'List' я выбираю текущую строку
	И я нажимаю на гиперссылку с именем 'DecorationGroupTitleCollapsedPicture'
	И элемент формы с именем 'Agreement' доступен
	И элемент формы с именем 'Partner' доступен
	И элемент формы с именем 'LegalName' не доступен
	И я закрываю все окна клиентского приложения
	