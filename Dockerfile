FROM ubuntu:20.04


RUN apt-get update && \
apt-get install -y wget apt-transport-https software-properties-common && \
wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb && \
dpkg -i packages-microsoft-prod.deb && \
apt-get update && \
add-apt-repository universe && \
apt-get install -y powershell && \
apt-get update  && \
apt-get install -y azure-cli && \
apt-get install -y awscli && \
apt-get update && \
apt-get install -y curl gnupg && \
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - && \
apt-get update -y && \
apt-get install google-cloud-sdk -y
