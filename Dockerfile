# Makeing the initial container
FROM debian:latest
RUN apt-get update && apt-get upgrade -y

# Installing some tools
RUN apt-get install -y curl
RUN apt-get install -y wget
RUN apt-get install -y nano
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y git
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN apt-get install -y yarn
RUN apt-get install -y rustc
RUN apt-get install -y cargo
RUN apt-get install -y htop
RUN apt-get install -y ffmpeg

# Setting up neofetch (for flexing)
RUN apt-get install -y neofetch
RUN mkdir /home/neocat && cd /home/neocat && git clone --depth 1 https://github.com/m3tozz/NeoCat.git && cd NeoCat && bash ./neocat.sh --install
RUN cd /home/ && git clone https://github.com/sebastiencs/icons-in-terminal.git && cd icons-in-terminal && ./install.sh && sleep 3 && ./print_icons.sh
RUN mkdir /root/.config/neofetch/
RUN cp /home/neocat/NeoCat/Small-Themes/8-Bit/neofetch/config.conf /root/.config/neofetch/
RUN cp /home/neocat/NeoCat/Small-Themes/8-Bit/neofetch/ascii.txt /root/.config/neofetch/
