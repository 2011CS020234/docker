# Use a lightweight Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /home/data

# Copy the script and text files to the container
COPY myapp.py .
COPY IF.txt .
COPY AlwaysRememberUsThisWay.txt .

# Create an output directory
RUN mkdir -p /home/data/output .


# Run the Python script
CMD ["python","myapp.py"]