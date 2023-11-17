# nzyme tap plugin for spr


## Configure 

Update the `configs/plugins/nzyme/nzyme-tap.conf` file with interface names and then place it under the super/configs/ directory. 
You might also want to update startup. By default it will add a 'montap' interface to wlan1. If you have a spare radio you can use that instead,
and re-enable the channel hopper for scanning for rogue APs. 

## Install

```bash
cd plugins
git clone https://github.com/spr-networks/spr-nzyme-tap
echo [\"plugins/spr-nzyme-tap/docker-compose.yml\"] > ../configs/base/custom_compose_paths.json
cd spr-mitmproxy
docker-compose build
```

Then add on the plugins page and enable. 
