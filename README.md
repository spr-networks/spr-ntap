# nzyme tap plugin for spr


## Configure 

Update the `configs/plugins/nzyme/nzyme-tap.conf` file with interface names & leader info, then place it under the super/configs/plugins/nzyme directory.
You might also want to update startup. By default it will add a 'montap' interface to wlan1. If you have a spare radio you can use that instead,
and re-enable the channel hopper for scanning for rogue APs. 

## Install

```bash
cd plugins
git clone https://github.com/spr-networks/spr-nzyme-tap
echo '["plugins/spr-nzyme-tap/docker-compose.yml"]' > ../configs/base/custom_compose_paths.json
cp -a configs/plugins/nzyme ../configs/plugins/nzyme
cd spr-nzyme-tap
docker-compose build
```

Then add on the plugins page and enable. 
