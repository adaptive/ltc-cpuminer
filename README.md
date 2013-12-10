# docker-ltc-cpuminer

Docker Image for a Litecoin CPU Minter for Stratum Pools

## Usage

Start this image with the settings (pool address, worker user/password) as environment variables. Have a look at the [Dockerfile](../master/Dockerfile) for possible variables.

### Example for www.wemineltc.com

```shell
docker run -d -e POOL_URL=hk.wemineltc.com -e POOL_PORT=3333 -e NUM_THREADS=8 \
  -e MINING_USER=foo.1 -e MINING_PASSWORD=bar zumbrunnen/ltc-cpuminer
```
