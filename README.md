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

## Usage
## Encrypting Large Files
Before committing large files, run the encryption script:

./encrypt_large_files.sh

This will prompt you for a password and encrypt all files larger than 100MB in the current directory and its subdirectories, replacing them with their .gpg counterparts.

## Decrypting Files
After pulling or cloning the repository, run the decryption script:

./decrypt_large_files.sh

This will prompt you for the password and decrypt all .gpg files back to their original form, removing the encrypted versions.

## Contributing
Contributions are welcome! Please fork the repository, make your changes, and submit a pull request. For more details, see the CONTRIBUTING.md file.

## License
This project is licensed under the MIT License - see the LICENSE file for details.

## Contact
For questions or feedback, you can reach out to Cryptonologic on X.

## Release History
1.0.0 - 2025-07-08
Initial release

Features:
Encrypt large files (>100MB) using GPG before committing to Git LFS
Decrypt encrypted files after checking out

## Security Note
This script prompts for a password via the command line, which may be visible in the process list. For enhanced security, consider using GPG with a key pair or integrating with a secure key management system.


