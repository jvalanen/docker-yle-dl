# docker-yle-dl

Docker container for [yle-dl](https://github.com/aajanki/yle-dl).

## Usage

Files are by default downloaded to `/downloads` directory inside the container.
You must mount this volume (with `-v`) to access it from the outside.

For example, to download some file to your current working directory, you can
use (at least on *nix systems):
```
docker run -v $(pwd):/downloads kaplas/yle-dl [URL]
```
