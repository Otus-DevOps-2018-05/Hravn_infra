ssh-aget
ssh-add ~/.ssh/appuser
ssh -o ProxyCommand="ssh -W %h:%p appuser@35.204.117.29"  -A appuser@10.164.0.3
Через бастион ходим так

Для доступа по алиасу добавляем в  ~/.ssh/config слудующий конфиг

Host someinternalhost
	Hostname 10.164.0.3
	User appuser
	ProxyCommand ssh -W %h:%p appuser@35.204.117.29

дальше ходим ssh someinternalhost

Ну и для удобства добавляем  конфиг бастиона. 

Host bastion
	Hostname 35.204.117.29
	User appuser


bastion_IP = 35.204.117.29
someinternalhost_IP = 10.164.0.3

