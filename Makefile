up:
	docker-compose up --build -d

restart:
	docker-compose restart

# convert the agent-config.yaml to alloy-config.river
convert:
	docker run --rm -v /mnt/c/Projects/lgtm:/configs grafana/alloy:latest convert --source-format=static --output=/configs/config.alloy /configs/agent-config.yaml

network:
	docker network create lgtm-public
