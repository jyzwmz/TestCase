FROM golang:latest

# Set the default timezone to Shanghai
RUN echo "Asia/Shanghai" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

# Build Testcase
WORKDIR /root
COPY . /root
RUN go build -race TestCase

CMD ["/root/TestCase"]
