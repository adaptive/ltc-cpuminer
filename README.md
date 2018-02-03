# docker-ltc-cpuminer

Docker Image for a Litecoin CPU Miner for Stratum Pools. Can be used for Feathercoin (and possibly other Cryptocoins, too).

It uses [pooler/cpuminer](https://github.com/pooler/cpuminer) as the CPU Miner.

## Usage

Start this image with the settings (pool address, worker user/password) as parameters. Everything gets passed to `minerd`.

### Example for www.wemineltc.com

```shell
docker run -d adaptive/ltc-cpuminer -u worker.1 -p password -t 7 -o stratum+tcp://gigahash.wemineltc.com:3333
```

See `minerd --help` for more parameters.
