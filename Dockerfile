FROM searchathing/ubuntu:server-mgr

# libgdiplus
RUN apt-get install -y libgdiplus

# dotnet core
COPY Downloads/dotnet-sdk-2.2.401-linux-x64.tar.gz /tmp
RUN mkdir -p /opt/dotnet && tar xvf /tmp/dotnet-sdk-2.2.401-linux-x64.tar.gz -C /opt/dotnet && rm -f /tmp/Downloads/dotnet-sdk-2.2.401-linux-x64.tar.gz

ENV PATH "$PATH:/opt/dotnet"
ENV DOTNET_CLI_TELEMETRY_OPTOUT 1
ENV DOTNET_ROOT /opt/dotnet

RUN \
        echo "initializing hello-world" && \
        cd /tmp && dotnet new console -n test && cd test && dotnet build -c Release && cd .. && rm -fr test

# 3.0 preview
COPY Downloads/dotnet-sdk-3.0.100-preview9-014004-linux-x64.tar.gz /tmp
RUN mkdir -p /opt/dotnet && tar xvf /tmp/dotnet-sdk-3.0.100-preview9-014004-linux-x64.tar.gz -C /opt/dotnet && rm -f /tmp/dotnet-sdk-3.0.100-preview9-014004-linux-x64.tar.gz

RUN \
	echo "initializing hello-world" && \
	cd /tmp && dotnet new console -n test && cd test && dotnet build -c Release && cd .. && rm -fr test

ENTRYPOINT [ "/root/run-entrypoints.sh" ]

CMD /bin/bash
