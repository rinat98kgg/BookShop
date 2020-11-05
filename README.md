# BookShop
Чтобы запустить проект сделайте следующие действия:
1. Восстановите базу данных, это можно сделать двумя способами:
    Первый способ:
   1. Откройте MS SQL Server и восстановите базу данных из резервной копии BookShop/BookShopDB_bak

    Второй способ:
   1. Создайте базу данных в MS SQL Server с названием BookShopDB
   2. Запустите скрипт который лежит в пути BookShop/BookShopDB_script.sql через ваш MS SQL Server

2. Откройте проект BookShop через MS Visual Studio (2012+)
3. Измените строку подключения в файле который лежит по пути BookShop/Web.config
4. Замените указанные места в строке: 
   1. Если у вас вход в сервер происходит через Проверку подлинности SQL Server то, connectionString="metadata=res://*/Models.Model1.csdl|res://*/Models.Model1.ssdl|res://*/Models.Model1.msl;provider=System.Data.SqlClient;provider connection string=&quot;data source=Имя вашего сервера;initial catalog=BookShopDB;persist security info=True;user id=Логин;password=Пароль;MultipleActiveResultSets=True;App=EntityFramework&quot;"
   2. Если у вас вход в сервер происходит через Проверку подлинности Windows то, connectionString="metadata=res://*/Models.Model1.csdl|res://*/Models.Model1.ssdl|res://*/Models.Model1.msl;provider=System.Data.SqlClient;provider connection string=&quot;data source=Имя вашего сервера;initial catalog=BookShopDB;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework&quot;"

Если вы все сделали правильно то, проект успешно подключится к Базе данных и дальше можете работать с программой.
