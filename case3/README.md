# Case 3

* symbols file downloaded from https://downloads.volatilityfoundation.org/volatility3/symbols/linux.zip
* challenge.mem file downloaded from https://class.infosecirvin.info/dfir/cases.html

## Volatility3

### setup
git clone https://github.com/petebuffon/cis77
cd cis77
cp ~/Downloads/challenge.mem ./

### install and isolate volatility3 using a container (podman or docker)

#### Docker
```
docker build -t volatility3 .
docker run -it --rm -v $(pwd):/data volatility3 vol -f challenge.mem linux.bash.Bash
```
#### Podman (with selinux)
```
podman build -t volatility3 .
podman run -it --rm -v $(pwd):/data:z volatility3 vol -f challenge.mem linux.bash.Bash
```
