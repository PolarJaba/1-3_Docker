# Работа с docker-compose

Приложенный [docker-compose](https://github.com/PolarJaba/1-3_Docker/blob/main/PRO/doker-compose.yml) поднимает два контейнера и создает подсеть для их связи.

Контейнер db содержит базу данных postgres, здесь автоматически отрабатывает скрипт [init.sql](https://github.com/PolarJaba/1-3_Docker/blob/main/PRO/db/init.sql), создающий таблицу index_mass. В docker-compose таке предусмотрен healthcheck для проверки работоспособности этого контейнера.

После успешного запуска контейнера db поднимается app, собранный на образе python с загрузкой библиотеки psycopg-2, здесь отрабатывает скрипт [app.py](https://github.com/PolarJaba/1-3_Docker/blob/main/PRO/app/app.py).

В результате в консоль выводится таблица:

![containers_work_done.PNG](https://github.com/PolarJaba/1-3_Docker/blob/main/PRO/containers_work_done.PNG)

#### Для запуска docker-compose необходимо, находясь в папке, где расположен docker-compose.yml, ввести комманду
```
docker-compose up
```
Также следует убедится, что указанная подсеть и локальные порты не используются другими контейнерами.
