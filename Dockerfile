FROM searchathing/ubuntu

# dotnet core
RUN curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg && \
	sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg && \
	sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list' && \
	apt-get update && \
	apt-get install -y dotnet-sdk-2.1.4

# bower
RUN npm install -g bower

CMD /bin/bash
