FROM amazonlinux:2.0.20191016.0
RUN yum update -y && \
    yum groupinstall -y "Development Tools" && \
    yum install -y shadow-utils \
    which \
    openssl \
    openssl-devel \
    libffi-devel \
    bzip2 \
    bzip2-devel \
    sqlite \
    sqlite-devel \
    zlib \
    zlib-devel \
    zip \
    unzip \
    ncurses-devel \
    gdbm-devel \
    xz \
    xz-devel \
    findutils \
    tk-devel \
    uuid-devel \
    readline-devel \
    libxml2-devel \
    libxslt-devel \
    python-devel \
    python-pip \
    python-setuptools \
    python-wheel \
    python-cffi \
    cairo \
    cairo-devel\
    pango \
    cairomm-devel \
    libjpeg-turbo-devel \
    pango-devel \
    pangomm \
    pangomm-devel \
    giflib-devel \
    gdk-pixbuf2 && \
    yum clean headers && \
    yum clean packages
ENV HOME  /home/python_user
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH
RUN curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash && \
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc && \
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc && \
    echo 'eval "$(pyenv init -)"' >> ~/.bashrc && \
    echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc && \
    exec "$SHELL"
RUN pyenv install 3.8.0 && \
    pyenv global 3.8.0 && \
    pyenv rehash && \
    pip install -U pip && \
    yum clean headers && \
    yum clean metadata && \
    yum clean packages
