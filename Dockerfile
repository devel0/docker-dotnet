FROM searchathing/ubuntu:server-mgr

# libgdiplus
RUN apt-get install -y libgdiplus

# dotnet core
ENV PATH "$PATH:/opt/dotnet"
ENV DOTNET_CLI_TELEMETRY_OPTOUT 1
ENV DOTNET_ROOT /opt/dotnet

# 2.2
COPY Downloads/dotnet-sdk-2.2.401-linux-x64.tar.gz /tmp
RUN mkdir -p /opt/dotnet && tar xvf /tmp/dotnet-sdk-2.2.401-linux-x64.tar.gz -C /opt/dotnet && rm -f /tmp/Downloads/dotnet-sdk-2.2.401-linux-x64.tar.gz

# 3.0 rc1
COPY Downloads/dotnet-sdk-3.0.100-rc1-014190-linux-x64.tar.gz /tmp
RUN mkdir -p /opt/dotnet && tar xvf /tmp/dotnet-sdk-3.0.100-rc1-014190-linux-x64.tar.gz -C /opt/dotnet && rm -f /tmp/dotnet-sdk-3.0.100-rc1-014190-linux-x64.tar.gz

ENTRYPOINT [ "/root/run-entrypoints.sh" ]

CMD /bin/bash
