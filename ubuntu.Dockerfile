# FROM ubuntu:18.04

# RUN apt update -y && apt install git sudo vim curl wget python3 zsh build-essential -y
# RUN useradd -ms /bin/bash markkizz && \
#     passwd -d markkizz && \
#     usermod -a -G sudo markkizz && \
#     echo '%sudo ALL=(ALL) NOPASSWD' >> /etc/sudoers

# USER markkizz
# # RUN mkdir -p $HOME/dotfiles
# # COPY . .
# RUN sudo chown -R markkizz .
# RUN git clone https://github.com/markkizz/dotfiles
# WORKDIR $HOME/dotfiles
# RUN  . -type f -iname "*.sh" -exec chmod +x {} \;

# CMD /bin/bash

FROM ubuntu:18.04

RUN apt update -y && apt install git sudo vim curl wget python3 zsh build-essential -y
RUN useradd -ms /bin/bash markkizz && \
    passwd -d markkizz && \
    usermod -a -G sudo markkizz && \
    echo '%sudo ALL=(ALL) NOPASSWD' >> /etc/sudoers

USER markkizz
RUN mkdir -p $HOME/dotfiles
WORKDIR $HOME/dotfiles
COPY . .
RUN  find . -type f -iname "*.sh" -exec chmod +x {} \;
RUN sudo chown -R markkizz .
# RUN git clone https://github.com/markkizz/dotfiles

CMD /bin/bash
