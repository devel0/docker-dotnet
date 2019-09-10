FROM searchathing/ubuntu:server-mgr

# libgdiplus
RUN apt-get install -y libgdiplus

# dotnet core
COPY Downloads/dotnet-sdk-3.0.100-preview7-012821-linux-x64.tar.gz /tmp
RUN mkdir -p /opt/dotnet && tar xvf /tmp/dotnet-sdk-3.0.100-preview7-012821-linux-x64.tar.gz -C /opt/dotnet && rm -f /tmp/dotnet-sdk-3.0.100-preview7-012821-linux-x64.tar.gz

ENV PATH "$PATH:/opt/dotnet"

ENTRYPOINT [ "/root/run-entrypoints.sh" ]

CMD /bin/bash
