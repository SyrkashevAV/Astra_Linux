FROM robinda/astralinux_se:1.7.4
RUN apt update -y && apt install -y git mono-runtime libmono-i18n4.0-all \
  \ libmono-system-windows-forms4.0-cil lbmono-windowsbase4.0-cil libsasl2-modules-gssapi-mit
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
