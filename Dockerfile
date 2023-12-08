#use the official python image as the base image
FROM python:3.9-buster

#set the working directory in the container
WORKDIR /app

#copy the requiremenrts file to the working directory
COPY requirements.txt .

#install the required python packages
RUN pip3 install --no-cache-dir -r requirements.txt

#copy the application code to the working directory
COPY . .

#set the environment variables for the Flask app
ENV FLASK_RUN_HOST=0.0.0.0

#expose the environment variables for the Flask app
EXPOSE 5000

#start the Flask app when the container is run
CMD ["flask", "run"]