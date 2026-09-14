#!/bin/bash

# STEP 1: Update Termux and install proot-distro
echo "Setting up Termux base..."
pkg update && pkg upgrade -y
pkg install proot-distro -y

# STEP 2: Install Ubuntu inside proot if not present
if ! proot-distro list | grep -q "ubuntu (installed)"; then
    echo "Installing Ubuntu container..."
    proot-distro install ubuntu
fi

# STEP 3: Execute installation and run commands inside the PRoot Ubuntu environment
echo "Initializing Ollama inside PRoot environment..."
proot-distro login ubuntu -- bash -c "
    apt update && apt install curl -y
    curl -fsSL https://ollama.com/install.sh | sh
    echo 'Starting Ollama service...'
    ollama serve > /dev/null 2>&1 &
    sleep 5
    echo 'Launching Llama 3.2 1B...'
    ollama run llama3.2:1b
"
