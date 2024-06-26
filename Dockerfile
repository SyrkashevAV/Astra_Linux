FROM robinda/astralinux_se:1.7.4
RUN apt update -y && apt install -y git dpkg mono-runtime libmono-i18n4.0-all
RUN apt install -y libmono-system-windows-forms4.0-cil libmono-windowsbase4.0-cil libsasl2-modules-gssapi-mit
WORKDIR /work
RUN git clone https://github.com/SyrkashevAV/Astra_Linux.git
RUN pwd
RUN ls -la
WORKDIR /work/Astra_Linux/Scad
RUN pwd
RUN ls -la
RUN dpkg -i spki-6.0.480.0-0.amd64.deb
RUN pwd
RUN ls -la
RUN dpkg -i ssdk-6.0.480.0-0.amd64.deb
RUN dpkg -i spki-6.0.464.0-0.amd64.deb
RUN dpkg -i ssdk-6.0.464.0-0.amd64.deb
RUN dpkg -i stsocs-6.0.464.0-0.amd64.deb
RUN pwd
RUN ls -la
WORKDIR /work/Astra_Linux/Kbrn
RUN dpkg -i oev-2024.2-astra.amd64.deb
RUN pwd
RUN ls -la
