#Run the following commands with docker installed to use dwn with a docker container

docker build . -t ytdl

mkdir YTDL

docker run --rm -v $pwd/YTDL/:/YTDL/ -it ytdl sh ./dwn

