FROM searchathing/ubuntu:focal

# libgdiplus
RUN apt-get install -y libgdiplus

# dotnet core
#ENV PATH "$PATH:/opt/dotnet"
ENV DOTNET_CLI_TELEMETRY_OPTOUT 1
#ENV DOTNET_ROOT /opt/dotnet

RUN wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN sudo dpkg -i packages-microsoft-prod.deb

RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get update && apt-get install -y dotnet-sdk-5.0

ENTRYPOINT [ "/root/run-entrypoints.sh" ]

CMD /bin/bash
