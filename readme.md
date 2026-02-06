This project acts as a base for learning devops, and is a minimal twitter clone.

To run the project cd into Chirp Project/src/web and run `dotnet run`, then head to http://localhost:port, to see the project running.

Another way to run the project is through docker.

Start by building the docker image while in Chirp Project directory  using: `docker build -t userid/imagename .`.

Then run the image using: `docker run -p 8080:8080 userid/imagename`.
