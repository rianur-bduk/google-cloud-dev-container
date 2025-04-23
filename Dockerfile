FROM google/cloud-sdk

# Install Python
RUN apt-get update && apt-get install -y python3 python3-venv python3-pip && apt-get clean

# Set the working directory
WORKDIR /code

# Copy the requirements file
COPY ./requirements.txt .

# Create a virtual environment and install dependencies
RUN python3 -m venv venv && \
    . venv/bin/activate && \
    pip install --upgrade pip && \
    pip install -r requirements.txt

# Copy the source code
COPY ./src ./src

# Set the entry point to use the virtual environment
CMD ["sh", "-c", ". venv/bin/activate && python src/main.py"]
