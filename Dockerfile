FROM microsoft/dotnet:2.1.503-sdk AS builder

ENV NBGV_VERSION 2.3.38

RUN dotnet tool install --tool-path ./nbgv nbgv  --version $NBGV_VERSION 

VOLUME /sln

ENTRYPOINT ["./nbgv/nbgv"]