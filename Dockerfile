# Use the official PyTorch image from Docker Hub
FROM python:3.12-bookworm

# Set the working directory in the container
WORKDIR /app

COPY . .

# Copy the requirements file into the container
# COPY requirements.txt .

# Install the dependencies
# RUN pip install --no-cache-dir -r requirements.txt
RUN pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/rocm6.1

# Copy the rest of the application code into the container


# Set environment variables (optional)
ENV PYTHONUNBUFFERED=1

# Specify the command to run the application
CMD ["python", "check.py"]