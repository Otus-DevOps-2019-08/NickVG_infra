# NickVG_infra
NickVG Infra repository

HM#2

������� �����(����������) play-travis(�� ������)

��������� ��������� pull request tempaltes �� github
	mkdir .github
	cd .github
	wget https://raw.githubusercontent.com/express42/otus-snippets/master/hw-04/PULL_REQUEST_TEMPLATE.md
	git add *
	git commit -am 'Add PR template'
	git push --set-upstream origin play-travis
��������� ���������� �� Slack(����� ������: https://get.slack.help/hc/en-us/articles/232289568-GitHub-for-Slack)
	/github subscribe Otus-DevOps-2019-08/<GITHUB_USER>_infra commits:all
	������ test.py(https://raw.githubusercontent.com/express42/otus-snippets/master/hw-04/test.py) � �����(����������)
	play-travis
��������� ���������� � Travis CI
	��������� ������������ ����� .travis.yml
	(���������� �������� � �����������, ���������� �� � ������� ����.������� �������� ���� � ����������� �� ������� �� ��������� �������, page 42, ����� �����������. ����������� �����)
	� ����� ��������� ���������� � TravisCI(�������������� ��������� ����������� �� ����� TravisCI)
	������ ����
	��������� cli with ruby
	gem install travis
	travis login --com
	������� �����
	travis encrypt "devops-team-otus:<���_�����>#<���_������>" --add notifications.slack.rooms --com
