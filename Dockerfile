# Dockerfile step by step

# Get base image
FROM ubuntu
# Add Mantainer
LABEL Mauro Garcia Esteban <mauro.garciaesteban@gmail.com>

# Run a basic command
RUN apt-get update

# Log to commang line
CMD ["echo", "Ubuntu is ready"]
