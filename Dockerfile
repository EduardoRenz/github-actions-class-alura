FROM ubuntu:latest

# Install dependencies
RUN apt-get update && \
    apt-get install -y wget && \
    apt-get install -y xz-utils && \
    apt-get install -y libxext6 libxrender1 libxtst6 libxi6 libfreetype6 libfontconfig1 libgtk-3-0 libxss1 libglib2.0-0 libdbus-1-3

# Download and install Goland
RUN apt-get install golang-go  -y

# Set the path to the Goland executable
ENV PATH="/opt/goland/bin:${PATH}"

# Set the working directory
WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

#RUN go build -o main .

# Expose the Goland port
EXPOSE 8080

#RUN go run main.go
#CMD ["./main"]

CMD ["tail", "-f", "/dev/null"]
