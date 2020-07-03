FROM ubuntu:latest

ENV TZ America/Chicago
ENV DEBIAN_FRONTEND noninteractive

# Install build requirements
RUN apt update && apt upgrade -y && \
    apt install -y \
    autoconf \
    bison \
    build-essential \
    curl \
    default-jdk \
    git \
    libssl-dev \
    libyaml-dev \
    libreadline6-dev \
    zlib1g-dev \
    libncurses5-dev \
    libffi-dev \
    libgdbm6 \
    libgdbm-dev \
    wget \
    graphviz

# Install go
RUN wget https://golang.org/dl/go1.14.4.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.14.4.linux-amd64.tar.gz && \
    rm -rf /var/lib/apt/lists/*
ENV PATH /usr/local/go/bin:$PATH

# Install hugo
RUN git clone https://github.com/gohugoio/hugo.git && \
    cd hugo && \
    git checkout v0.74.0 && \
    CGO_ENABLED=1 go install --tags extended
ENV HUGO_PATH /root/go/bin
ENV PATH $HUGO_PATH:$PATH

# Install Node.js and npm
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt install --no-install-recommends -y nodejs

# Install Ruby Gems needed for asciidoctor
ENV RBENV_ROOT $HOME/.rbenv
ENV PATH $RBENV_ROOT/shims:$RBENV_ROOT/bin:$RBENV_ROOT/plugins/ruby-build/bin:$PATH
ENV GEM_HOME $RBENV_ROOT
RUN git clone --depth 1 https://github.com/rbenv/rbenv.git $RBENV_ROOT && \
    cd $RBENV_ROOT && src/configure && make -C src && \
    mkdir -p $RBENV_ROOT/plugins && \
    git clone --depth 1 https://github.com/rbenv/ruby-build.git $RBENV_ROOT/plugins/ruby-build && \
    echo 'export RBENV_ROOT="$HOME/.rbenv"\nexport PATH="$RBENV_ROOT/bin:$PATH"\nif command -v rbenv 1>/dev/null 2>&1; then\n    eval "$(rbenv init -)" \nfi' >> ~/.bashrc && \
    bash -l -c "source ~/.bashrc" && \
    bash -l -c "rbenv install 2.7.0 -v && rbenv global 2.7.0" && \
    bash -l -c "gem install bundler:2.1.4"
RUN bash -l -c "unset BUNDLE_PATH" && \
    bash -l -c "unset BUNDLE_BIN"
COPY Gemfile* ./
RUN bundle i

# Install plantuml
RUN wget -O ~/plantuml.jar http://sourceforge.net/projects/plantuml/files/plantuml.jar/download

WORKDIR /src

