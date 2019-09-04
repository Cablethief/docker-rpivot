FROM gcr.io/distroless/python2.7
ADD ./rpivot /rpivot
WORKDIR /rpivot
EXPOSE 9999
EXPOSE 1080
CMD ["server.py", "--verbose", "--server-port", "9999" ,"--server-ip", "0.0.0.0", "--proxy-ip", "0.0.0.0", "--proxy-port", "1080"]