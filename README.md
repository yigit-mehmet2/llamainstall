# Ollama Mobile Installer for Termux (PRoot)

An automated bash script that installs and runs **Ollama** natively on Android devices using Termux and PRoot (Ubuntu), bypassing Android's binary execution (`noexec`) restrictions.

This project is tailored to deploy **Llama 3.2 (1B)**, making local AI inference accessible even on budget or mid-range devices with **4 GB of RAM** (tested Samsung Galaxy Tab A9).

---

## Features

- **PRoot Isolation:** Runs inside a lightweight Ubuntu container to bypass Android's `cannot execute` / `noexec` dynamic linker errors.
- **Low-RAM Friendly:** Automatically pulls `llama3.2:1b`, requiring only **~1.3 GB - 1.8 GB** of active RAM.
- **One-Click Setup:** Automatically updates dependencies, configures PRoot, installs Ollama, and starts the model interface.

---

## Prerequisites

1. Install **Termux** (it is strongly recommended to use the [F-Droid build](https://f-droid.org/en/packages/com.termux/)).
2. An active internet connection for initial model download.

---

## Quick Start

Clone the repository and run the setup script:

```bash
git clone [https://github.com/yigit_mehmet2/llamainstall/llamainstall.sh]
cd llamainstall
chmod +x llamainstall.sh
./llamainstall.sh
