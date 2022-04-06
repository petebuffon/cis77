# Case 3

symbols file downloaded from https://downloads.volatilityfoundation.org/volatility3/symbols/linux.zip
download challenge.mem from Irvin's site

## Volatility3
```
git clone https://github.com/petebuffon/cis77 && cd cis77
podman build -t volatility3 .
cd project dir
podman run -it --rm -v $(pwd):/data:z volatility3
vol -s linux -f challenge.mem linux.bash.Bash
