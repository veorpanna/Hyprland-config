#!/usr/bin/python3

import subprocess
import logging
from typing import Callable


def install_via_pacman(package: str) -> None:
    subprocess.run(["sudo", "pacman", "-S", "--noconfirm", package], check=True)


def install_via_yay(package: str) -> None:
    subprocess.run(["yay", "-S", "--noconfirm", package], check=True)


def install_pkg(install_callback: Callable[[str], None], package: str) -> None:
    try:
        install_callback(package)
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
