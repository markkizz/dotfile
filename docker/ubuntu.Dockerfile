FROM ubuntu:18.04

RUN apt update -y && apt install git sudo vim curl wget python3 zsh -y
RUN useradd -ms /bin/bash markkizz && \
    passwd -d markkizz && \
    usermod -a -G sudo markkizz && \
    echo '%sudo ALL=(ALL) NOPASSWD' >> /etc/sudoers

USER markkizz
RUN git clone https://github.com/markkizz/.dotfile ~/dotfiles

CMD /bin/bash
