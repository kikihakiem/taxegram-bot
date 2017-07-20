install:
	sudo apt update
	sudo apt install -y nodejs redis-server
	-sudo ln -s /usr/bin/nodejs /usr/bin/node

run:
	HUBOT_SLACK_TOKEN=$(SLACK_TOKEN) HUBOT_GOOGLE_CSE_ID=$(GOOGLE_CSE_ID) HUBOT_GOOGLE_CSE_KEY=$(GOOGLE_CSE_KEY) ./bin/hubot --adapter slack
