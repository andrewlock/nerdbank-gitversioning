FROM microsoft/dotnet:2.1.503-sdk AS builder

ENV NBGV_VERSION 2.3.38

RUN dotnet tool install --global nbgv --version $NBGV_VERSION 

ENV PATH="/root/.dotnet/tools:${PATH}"

ENTRYPOINT ["nbgv"]