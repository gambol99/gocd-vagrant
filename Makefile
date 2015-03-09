#
#   Author: Rohith (gambol99@gmail.com)
#   Date: 2015-03-09 11:02:45 +0000 (Mon, 09 Mar 2015)
#
#  vim:ts=2:sw=2:et
#

.PHONY:
.dependencies:
	ansible-galaxy install -r requirements.txt -p ./provision --force

build: .dependencies
	vagrant up --provision

