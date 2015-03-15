FROM shared_app
 
RUN useradd -d /home/developer -G users,sudo developer
RUN usermod -g users developer
RUN mkdir /home/developer
RUN chown developer:users /home/developer
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER developer
RUN mkdir /home/developer/application
ADD application/Gemfile /home/developer/application/Gemfile

WORKDIR /home/developer/application

CMD /bin/bash start
