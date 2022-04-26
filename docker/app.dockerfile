FROM mcr.microsoft.com/dotnet/sdk:6.0

ENV DOTNET_USE_POLLING_FILE_WATCHER 0
ENV DOTNET_CLI_TELEMETRY_OPTOUT 1

WORKDIR /src

EXPOSE 3000

ENTRYPOINT cd /src/app && dotnet restore && dotnet watch run --no-restore --urls http://0.0.0.0:3000