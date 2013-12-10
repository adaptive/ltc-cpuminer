# docker-ltc-cpuminer

Docker Image for a Litecoin CPU Miner for Stratum Pools. It uses
* [pooler/cpuminer](https://github.com/pooler/cpuminer) as the CPU Miner and
* [CryptoManiac/stratum-mining-proxy](https://github.com/CryptoManiac/stratum-mining-proxy) as the proxy to connect to stratum pools

## Usage

Start this image with the settings (pool address, worker user/password) as environment variables. Have a look at the [Dockerfile](../master/Dockerfile) for possible variables.

### Example for www.wemineltc.com

```shell
docker run -d -e POOL_URL=hk.wemineltc.com -e POOL_PORT=3333 -e NUM_THREADS=8 \
  -e MINING_USER=foo.1 -e MINING_PASSWORD=bar zumbrunnen/ltc-cpuminer
```
