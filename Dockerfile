FROM debian:bullseye-slim

# Install dependencies for dotbo
RUN apt-get update && apt-get install sudo git python3 build-essential vim curl wget zsh  -y


# Install dependencies
COPY ./linux/deps /tmp/deps
RUN ["chmod", "+x", "/tmp/deps/install.sh"]
RUN /tmp/deps/install.sh

# Adds a new user to the sudo group
RUN useradd -ms /bin/bash markkizz && \
  usermod -a -G sudo markkizz && \
  echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Setup dotfiles directory
USER markkizz
RUN mkdir -p $HOME/dotfiles
WORKDIR /home/markkizz/dotfiles

# Copy dotfiles config to ~/dotfiles
COPY . .
# find /directory/of/interest/ -type f -iname "*.sh" -exec chmod +x {} \;
# RUN ["find", ".", "-type", "f", "-iname", "\"*.sh\"", "-exec chmod +x {} \\;"]
RUN find . -type f -iname "*.sh" -exec chmod +x {} \;
RUN sudo chown -R markkizz .

# Run dotbot installation scripts, which triggers setup.sh
ENV DOCKERIZED true
RUN ["chmod", "+x", "./install"]
RUN ["./install"]
# RUN ./install

# Start zsh shell
WORKDIR /home/markkizz
CMD bash
