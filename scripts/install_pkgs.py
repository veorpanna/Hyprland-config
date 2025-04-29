#!/usr/bin/python3

import subprocess
import logging


def install_pkg(package: str) -> None:
    try:
        subprocess.run(["sudo", "pacman", "-S", "--noconfirm", package], check=True)
        logging.debug(f"Installed {package}")

    except subprocess.CalledProcessError as e:
        logging.error(f"Failed to install {package}: {e}")


def install_yay() -> None:
    try:
        subprocess.run(
            ["git", "clone", "https://aur.archlinux.org/yay.git"], check=True
        )
        subprocess.run(["cd", "yay"], check=True)
        subprocess.run(["makepkg", "-sirc"], check=True)
        subprocess.run(["cd", ".."], check=True)
        subprocess.run(["rm", "-rf", "yay"], check=True)
        logging.debug("Installed yay")

    except subprocess.CalledProcessError as e:
        logging.error(f"Failed to install yay: {e}")
