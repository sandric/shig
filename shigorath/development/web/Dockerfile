FROM atlashealth/ruby
 
ENV DEBIAN_FRONTEND noninteractive
 
# If you don't want to use therubyracer gem or similar,
# install Node.js as your preferred JS runtime
RUN curl -sL https://deb.nodesource.com/setup | bash -
 
# Install dependencies needed by Rails, followed by cleanup
RUN apt-get update -q && \
    apt-get install -qy libpq-dev libqt4-dev xvfb nodejs imagemagick --no-install-recommends && \
    apt-get clean && \
    cd /var/lib/apt/lists && rm -fr *Release* *Sources* *Packages* && \
    truncate -s 0 /var/log/*log
 
# https://github.com/docker/docker/issues/4032
ENV DEBIAN_FRONTEND newt
 
ENV GEM_HOME /gems
ENV PATH /gems/bin:$PATH
 
RUN useradd -d /home/developer -G users,sudo developer
RUN usermod -g users developer
RUN mkdir /home/developer
RUN chown developer:users /home/developer
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER developer
RUN mkdir /home/developer/application
ADD application/Gemfile /home/developer/application/Gemfile

WORKDIR /home/developer/application

CMD /bin/bash
