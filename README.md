# NickVG_infra
NickVG Infra repository

HW#2

Создана папка(директория) play-travis(см слайды)  

Проведена настройка pull request tempaltes от github  
	mkdir .github  
	cd .github  
	wget https://raw.githubusercontent.com/express42/otus-snippets/master/hw-04/PULL_REQUEST_TEMPLATE.md  
	git add *  
	git commit -am 'Add PR template'  
	git push --set-upstream origin play-travis  
Настроена интеграция со Slack(общий случай: https://get.slack.help/hc/en-us/articles/232289568-GitHub-for-Slack)  
	/github subscribe Otus-DevOps-2019-08/<GITHUB_USER>_infra commits:all  
	скачан test.py(https://raw.githubusercontent.com/express42/otus-snippets/master/hw-04/test.py) в папку(директорию)  
	play-travis  
Настроена интеграция с Travis CI  

	настройка производится через .travis.yml  
	(содержимое смотреть в репозитории, получилось не с первого раза.Сначала привести файл в соответсвие со скрином из домашнего задания, page 42, потом зашифровать. Обговоренно далее)  
	В слаке добавлена интеграция с TravisCI(предварительно проведена авторизация на сайте TravisCI)  
	ставим руби  
	запускаем cli with ruby  
	gem install travis  
	travis login --com  
	Шифруем токен  
	travis encrypt "devops-team-otus:<ваш_токен>#<имя_канала>" --add notifications.slack.rooms --com  
  
HW#3  
```bastion_IP = 35.210.63.41```  
```someinternalhost_IP = 10.132.0.5```  
	
	Создан проект Infra в GC
	Создана машина Bastion с внешним IP, создана обычная VM someinternalhost.
	Добавлены ключи SSH для доступа к машинам GC.
	Настроен  SSH Forwarding на локальных Linux машинах.
	Добавлен приватный ключ в ssh агент авторизации: ssh-add ~/.ssh/appuser
	Полагаю, что для работы ssh someinternalhost, как вариант, необходимо настроить ~/.ssh/config 
	Установлен и настроен pritunl
	Настроено праивло в HC firewall
	локально установил openvpn и графику к нему.
	Сертификат для для бастиона не выпустил(бот сервиса ругается, что слишком много запросов на выпуск сертификата)

HW#4

	Установлен google Clod SDK
	Создан новый инстанс (VM), подробности в скрипте install_all.sh
	Установлен руби
	Установлена MongoDB
	Установлено приложение
	Настроено правило фаервола, см скрипт gcp_firewall.sh
	Написан стартап скрипт: startup_script.sh
	
testapp_IP = 35.198.167.169
testapp_port = 9292

