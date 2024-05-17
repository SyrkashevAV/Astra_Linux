FROM robinda/astralinux_se:1.7.4
RUN apt update -y && apt install -y git rpm alien dpkg
WORKDIR /work
RUN git clone https://github.com/SyrkashevAV/Astra_Linux.git
RUN pwd
RUN ls -la
WORKDIR /work/AstraLinux
RUN pwd
RUN ls -la
RUN alien oev-2024.2-alt1.x86_64.rpm
RUN pwd
RUN ls -la
RUN dpkg -i oev_2024.2-1_amd64.deb
