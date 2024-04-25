FROM esme518/docker-altserver
RUN apt update -y && apt install -y git rpm alien
#RUN rpm -i oev-2024.2-alt1.x86_64.rpm
RUN alien oev-2024.2-alt1.x86_64.rpm && dpkg -i oev_2024.2-1_amd64.deb
