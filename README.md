# Задание к 16 уроку
ДОБАВИТЬ ВОЗМОЖНОСТЬ УКАЗАТЬ ПОРЯДКОВЫЙ НОМЕР СТАНЦИИ В МАРШРУТЕ (ПОЛЕ ДЛЯ СОРТИРОВКИ). УЧЕСТЬ, ЧТО ОДНА И ТА ЖЕ СТАНЦИЯ МОЖЕТ ВХОДИТЬ В РАЗНЫЕ МАРШРУТЫ И ИМЕТЬ РАЗНЫЙ ПОРЯДКОВЫЙ НОМЕР В РАЗНЫХ МАРШРУТАХ. ПОКА УСТАНОВКУ ПОРЯДКОВОГО НОМЕРА СДЕЛАТЬ БЕЗ ВЕБ-ИНТЕРФЕЙСА, МОЖНО ЭТО ДЕЛАТЬ ЧЕРЕЗ RAILS-КОНСОЛЬ. 
ЗАДАЕТСЯ СТАНЦИЯ (ОБЪЕКТ) И ЕЕ НОМЕР (INTEGER)
ВЫВОДИТЬ СПИСОК СТАНЦИЙ В МАРШРУТЕ ПО ПОРЯДКОВОМУ НОМЕРУ (ИСПОЛЬЗОВАТЬ СКОУП ДЛЯ СОРТИРОВКИ)
НАЗВАНИЕ МАРШРУТА ЗАДАЕТСЯ ПО КОНЕЧНЫМ СТАНЦИЯМ, В МАРШРУТЕ НЕ МОЖЕТ БЫТЬ МЕНЕЕ 2 СТАНЦИЙ

PЕАЛИЗОВАТЬ ЧЕРЕЗ STI СЛЕДУЮЩИЕ ТИПЫ ВАГОНОВ:
       - KУПЕЙНЫЙ (ИМЕЕТ ВЕРХНИЕ И НИЖНИЕ МЕСТА)
       - ПАЦКАРТНЫЙ (ИМЕЕТ ВЕРХНИЕ/НИЖНИЕ МЕСТА + БОКОВЫЕ ВЕРХНИЕ И НИЖНИЕ)
       - св (ИМЕЕТ ТОЛЬКО НИЖНИЕ МЕСТА)
       - СИДЯЧИЙ (ИМЕЕТ ТОЛЬКО СИДЯЧИЕ МЕСТА)дОЛЖНА БЫТЬ ВАЛИДАЦИЯ ОТ ЗАПОЛНЕНИЯ НЕСУЩЕСТВУЮЩИХ У ВАГОНА МЕСТ И ЕЩЕ ПЕРЕДEЛКА ПОДСТЧЕТА МЕСТ В ВАГОНЕ И ПОЕЗДЕ. 

При добавлении вагона к поезду, автоматически назначать вагону порядковый номер (использовать коллбеки).
Проверять уникальность номера вагона у поезда. Не может быть ситуации, когда у поезда 2 вагона с номером 11, например.
На странице просмотра поезда выводить список номеров вагонов (как ссылки). При переходе по ссылке на конкретный вагон показывать тип вагона и актуальную информацию по нему (кол-во верхних/нижних мест, если есть - боковые и т.п. в зависимости от типа вагона)



