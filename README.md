# SLFMGLFS
# Secure Large File Management for Git LFS

A bash script to automate encryption and decryption of large files for use with Git Large File Storage (LFS), ensuring security for sensitive data in version control.

## Table of Contents

- [Description](#description)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)
- [Release History](#release-history)
- [Security Note](#security-note)

## Description

This project provides two bash scripts to help manage large, sensitive files in Git repositories using Git LFS. The scripts automate the encryption of large files before committing them to Git LFS and the decryption after checking out, ensuring that sensitive data remains secure.

## Installation

### Prerequisites

- [Git LFS](https://git-lfs.com/)
- [GPG](https://gnupg.org/)

### Steps

1. Clone this repository or download the scripts.
2. Make the scripts executable:
   ```bash
   chmod +x encrypt_large_files.sh
   chmod +x decrypt_large_files.sh
