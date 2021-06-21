# Python 3.6.7
FROM python:3.6.7-alpine3.6

# Packages that we need 
#COPY requirement.txt /app/
#WORKDIR /app
# instruction to be run during image build
#RUN pip install -r requirement.txt
# Copy all the files from current source duirectory(from your system) to
# Docker container in /app directory 
#COPY . /app

# Specifies a command that will always be executed when the  
# container starts.
# In this case we want to start the python interpreter
#ENTRYPOINT [“python”]
# We want to start app.py file. (change it with your file name) 
# Argument to python command
#CMD [“app.py”]

#---
# Set your working directory
WORKDIR /src

# Copy the source code
COPY ["src", "/src/"]

# Install project dependencies
RUN pip install -r requirements.txt

#CMD ["python", "hello.py"]
#ENTRYPOINT ["/bin/bash"]
#CMD ["bash"]