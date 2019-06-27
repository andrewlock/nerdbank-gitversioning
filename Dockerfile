FROM mcr.microsoft.com/dotnet/core/sdk:2.1-stretch AS builder
ENV NBGV_VERSION 2.3.38
RUN dotnet tool install --global nbgv --version $NBGV_VERSION 

FROM mcr.microsoft.com/dotnet/core/runtime:2.1-stretch-slim
COPY --from=builder /root/.dotnet/tools/ /opt/bin
ENV PATH="/opt/bin:${PATH}"
ENTRYPOINT ["nbgv"]
