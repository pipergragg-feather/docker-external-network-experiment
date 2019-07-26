# Docker Networking

This repo demonstrates how to use docker external networks.

Steps:

1.) `make network_up`
2.) `make up`
3.) `make bash`
4.) `apt-get update && apt-get install -y curl && curl sql_busybox_test:3306`

You should get an error that you're about to get some very funky output on port 3306. That's because you've found the mysql database running on your external network. Yay!

## But that's totally not necessary! You could just use a local network or links!

Correct, in this case. But in the case where our database is in a separate repo with a separate docker-compose.yml, external networks become the only way to isolate running databases across multiple concurrent test environments.
