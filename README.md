# NickVG_infra
NickVG Infra repository

HW#2

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

HW#3
	bastion_IP = 35.210.63.41 
	someinternalhost_IP = 10.132.0.5
	
	������ ������ Infra � GC
	������� ������ Bastion � ������� IP, ������� ������� VM someinternalhost.
	��������� ����� SSH ��� ������� � ������� GC.
	��������  SSH Forwarding �� ��������� Linux �������.
	�������� ��������� ���� � ssh ����� �����������: ssh-add ~/.ssh/appuser
	�������, ��� ��� ������ ssh someinternalhost, ��� �������, ���������� ��������� ~/.ssh/config 
	���������� � �������� pritunl
	��������� ������� � HC firewall
	�������� ��������� openvpn � ������� � ����.
	���������� ��� ��� �������� �� ��������