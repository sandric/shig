FROM shared_app
 
RUN useradd -d /home/deployer -G users,sudo deployer
RUN usermod -g users deployer
RUN mkdir /home/deployer
RUN chown deployer:users /home/deployer
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER deployer
RUN mkdir /home/deployer/application
ADD Gemfile /home/deployer/application/Gemfile

WORKDIR /home/deployer/application

ENV TERM dumb
CMD /bin/bash shigorath/staging/app/start
