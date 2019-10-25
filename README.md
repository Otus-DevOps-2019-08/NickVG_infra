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
	
testapp_IP = 35.210.156.46
testapp_port = 9292

HW#5

	Установлен packer.
	Установлен google ADC.
	Создан Packer template.
	Написаны ubuntu15.json, variables.json, variables.json.example, .gitignorie

HW#6

	Установлен terraform
	написаны конфигурационные файлы
	С помощью тераформа развёрнут тестовый инстанс
	Написаны main.tf, terraform.tfvars, terraform.tfvars.example, variables.tf

HW#7

  Написаны модули для создания application и DB машин.
  Написан модуль для работы с фаерволом.
  Написаны Терраформ конфигурации для создания прод и тест окружений.
  Проивзедена интеграция с реестром модулей для созданя бакета.
 
HW#8

	Установлены python2.7, ansible, pip
	При выполнении playbook значение changed изменилось с 0 на 1. По всей видимости из-за того, что к хосту уже применялась playbook.
	в конфигурационных файлах ДЗ все IP заменены на фэйковые.

HW#9

	Написаны поэйбуки для развёртывания сервера приложений, развёртывания  сервера БД, настройки приложения.
	Отработаны подходы по созданию единого плйбука для прогона всех сценариев и создания отдельного плейбука на каждый сценарий
	Если не просиходит подключение к Монго через монго shell выполнить в консоли ** export LC_ALL=C	**


