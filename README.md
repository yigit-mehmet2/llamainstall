# Ollama Installer (Termux & Linux)

An automated bash script suite to quickly install and run **Ollama** across Android (Termux) and native Linux systems.

This project is optimized to run **Llama 3.2 (1B)**, making local AI inference smooth and lightweight even on budget devices or systems with **4 GB of RAM**.

---

## Features

* **Android PRoot Isolation:** Bypasses Android's execution restrictions (`noexec` / `cannot execute` binary errors) by running inside a lightweight Ubuntu PRoot container.
* **Package Manager Detection:** Automatically handles package installation across `pacman`, `apt`, and `dnf` on native Linux.
* **Low-RAM Optimization:** Defaults to `llama3.2:1b`, which requires only **~1.3 GB - 1.8 GB** of active RAM.

---

## Repository Structure

* `llamainstalltermux.sh` — Automated installer for Android (Termux).
* `llamainstalllinux.sh` — Automated installer for Desktop / Server Linux (Arch, Debian, Fedora, Every Linux Distro's).

---

## Quick Start

### 1. Mobile / Android (Termux)

> **Note:** Make sure you are using the [F-Droid build of Termux](https://f-droid.org/en/packages/com.termux/).

```bash
git clone https://github.com/yigit-mehmet2/llamainstall.git
cd llamainstall
chmod +x llamainstalltermux.sh
./llamainstalltermux.sh
```

### 1. Linux (Every Lnux Distro's)

> **Note:** For this script to run, you must have a Linux distro installed on your computer.

```bash
git clone https://github.com/yigit-mehmet2/llamainstall.git
cd llamainstall
chmod +x llamainstalllinux.sh
./llamainstalllinux.sh
```
