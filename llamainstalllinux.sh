#!/bin/bash

# STEP 1: Check and install curl if not present
echo "Checking dependencies..."
if ! command -v curl &> /dev/null; then
    echo "curl could not be found, installing..."
    if command -v apt &> /dev/null; then
        sudo apt update && sudo apt install -y curl
    elif command -v pacman &> /dev/null; then
        sudo pacman -Sy --noconfirm curl
    elif command -v dnf &> /dev/null; then
        sudo dnf install -y curl
    fi
fi

# STEP 2: Install Ollama using the official installer script
if ! command -v ollama &> /dev/null; then
    echo "Installing Ollama..."
    curl -fsSL https://ollama.com/install.sh | sh
else
    echo "Ollama is already installed."
fi

# STEP 3: Ensure Ollama service is running
echo "Starting Ollama service..."
if command -v systemctl &> /dev/null && systemctl is-active --quiet ollama; then
    echo "Ollama systemd service is already running."
else
    # Fallback to background process if systemd is not actively managing it
    ollama serve > /dev/null 2>&1 &
    sleep 3
fi

# STEP 4: Launch Llama 3.2 1B
echo "Launching Llama 3.2 1B..."
ollama run llama3.2:1b
