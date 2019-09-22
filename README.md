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
	