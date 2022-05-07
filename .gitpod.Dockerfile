FROM gitpod/workspace-postgres
USER gitpod

# Install Ruby version 2.5.1 and set it as default
RUN echo "rvm_gems_path=/home/gitpod/.rvm" > ~/.rvmrc
RUN bash -lc "rvm install ruby-2.2.1 && rvm use ruby-ruby-2.2.1 --default && gem install rails" 
RUN echo "rvm_gems_path=/workspace/.rvm" > ~/.rvmrc
