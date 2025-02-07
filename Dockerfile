# Use Python 3.10 slim image
FROM python:3.10-slim-bookworm

# Set the working directory in the container
WORKDIR /flask-loan-app

# Copy requirements file
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip3 install -r requirements.txt

# Copy all application files into the container
COPY . .

# Define the command to run the Flask app
CMD ["python", "-m", "flask", "--app", "loan_app.py", "run", "--host=0.0.0.0", "--port=8000"]

# docker build -t ano .
# docker image ls
# docker container ls --all
# docker tag ano biplabinipadhi/mlops_docker:latest      
# docker push biplabinipadhi/mlops_docker:latest

