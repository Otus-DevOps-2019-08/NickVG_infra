# NickVG_infra
NickVG Infra repository

HM#2

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
