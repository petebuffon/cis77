# Case 3

* symbols file downloaded from https://downloads.volatilityfoundation.org/volatility3/symbols/linux.zip
* challenge.mem file downloaded from https://class.infosecirvin.info/dfir/cases.html
* move the challenge.mem file into the cloned git repo before proceding

## Volatility3

You can install and isolate volatility3 using either a virtual environment or a container (podman or docker)

### Virtual Environment
```
git clone https://github.com/petebuffon/cis77 && cd cis77
python -m venv venv
source venv/bin/activate
python -m pip install python-yara crypto volatility3
vol -s linux -f challege.mem linux.bash.Bash
```

### Docker
```
git clone https://github.com/petebuffon/cis77 && cd cis77
docker build -t volatility3 .
cd project dir
docker run -it --rm -v $(pwd):/data: volatility3
vol -s linux -f challenge.mem linux.bash.Bash
```
### Podman (with selinux)
```
git clone https://github.com/petebuffon/cis77 && cd cis77
podman build -t volatility3 .
cd project dir
podman run -it --rm -v $(pwd):/data:z volatility3
vol -s linux -f challenge.mem linux.bash.Bash
```
