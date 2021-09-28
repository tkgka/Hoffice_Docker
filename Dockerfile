FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
ENV LC_ALL=C.UTF-8
RUN apt-get update && apt-get install -y libcairo2-dev 
RUN apt-get install -y libcurl3-gnutls 
RUN apt-get install -y libharfbuzz-icu0 
RUN apt-get install -y libdbus-1-3 
RUN apt-get install -y libxcb-xinerama0 
RUN apt-get install -y wget
RUN apt-get install -y libxi6 libgconf-2-4
RUN wget --header="Host: cdn.hancom.com" --header="Referer: https://www.hancom.com/cs_center" https://cdn.hancom.com/pds/hnc/DOWN/gooroom/hoffice_11.20.0.1520_amd64.deb
RUN apt-get install -y -f
RUN apt-get install -y libcups2:amd64
RUN apt-get install -y libglvnd0
RUN apt-get install -y libdrm-common
RUN apt-get install -y libdrm2
RUN apt-get install -y libglapi-mesa
RUN apt-get install -y libx11-xcb1
RUN apt-get install -y libxcb-dri2-0
RUN apt-get install -y libxcb-dri3-0
RUN apt-get install -y libxcb-glx0
RUN apt-get install -y libxcb-present0
RUN apt-get install -y libxcb-sync1
RUN apt-get install -y libxcb-xfixes0
RUN apt-get install -y libxfixes3
RUN apt-get install -y libxshmfence1
RUN apt-get install -y libxxf86vm1
RUN apt-get install -y libdrm-amdgpu1
RUN apt-get install -y libpciaccess0
RUN apt-get install -y libdrm-intel1
RUN apt-get install -y libdrm-nouveau2
RUN apt-get install -y libdrm-radeon1
RUN apt-get install -y libedit2
RUN apt-get install -y libllvm12
RUN apt-get install -y libsensors-config
RUN apt-get install -y libsensors5
RUN apt-get install -y libvulkan1
RUN apt-get install -y libgl1-mesa-dri
RUN apt-get install -y libglx-mesa0
RUN apt-get install -y libglx0
RUN apt-get install -y libgl1
RUN apt-get install -y libglu1-mesa
RUN apt-get install -y libwayland-client0
RUN apt-get install -y libxcb-randr0
RUN apt-get install -y mesa-vulkan-drivers

RUN dpkg -i hoffice_11.20.0.1520_amd64.deb
CMD [`/bin/bash -c "LANGUAGE=ko_KR /opt/hnc/hoffice11/Bin/hwp %f"`]
