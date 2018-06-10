FROM searchathing/ubuntu:bionic

# dotnet core
RUN wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg && \
sudo mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/ && \
wget -q https://packages.microsoft.com/config/ubuntu/18.04/prod.list && \
sudo mv prod.list /etc/apt/sources.list.d/microsoft-prod.list && \
sudo chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg && \
sudo chown root:root /etc/apt/sources.list.d/microsoft-prod.list

# net sdk
RUN apt-get install -y apt-transport-https && \
sudo apt-get update && \
sudo apt-get install -y dotnet-sdk-2.1

# libgdiplus
RUN apt-get install -y libgdiplus

# bower
RUN npm install -g bower

CMD /bin/bash
