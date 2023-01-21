build tag:
	docker build -t neovim:{{tag}} .

launch dir=".":
	#!/usr/bin/env /bin/bash
	set -euo pipefail

	launch_path=$(grealpath {{dir}})
	name=$(basename ${launch_path})
	
	docker run \
		-v $(grealpath .):/edit \
		-w /edit \
		--name neovim-${name} \
		-d \
		neovim:latest
