# nzyme tap plugin for spr


## Configure 

Update the `configs/plugins/nzyme/nzyme-tap.conf` file and then place it under the super/configs/ directory. 

## Install

```bash
cd plugins
git clone https://github.com/spr-networks/spr-nzyme-tap
echo [\"plugins/spr-nzyme-tap/docker-compose.yml\"] > ../configs/base/custom_compose_paths.json
cd spr-mitmproxy
docker-compose build
```

Then add on the plugins page and enable. 
