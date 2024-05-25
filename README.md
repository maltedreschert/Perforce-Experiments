# Perforce Testcontainer

A simple containerfile for creating a basic perforce helix core server 
for experimentation.

## Instructions
1. Setup Podman
2. Build the image
    podman build -t helix:latest .
3. Run the container by issuing
    podman kube play .\perforce
4. Set P4PORT to "tcp:127.0.0.1:1666"