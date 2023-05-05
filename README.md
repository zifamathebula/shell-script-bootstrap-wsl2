# 🚀 WSL2 Developer Setup

[![Shellcheck](https://github.com/zifamathebula/shell-script-wsl2-developer-setup/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/zifamathebula/shell-script-wsl2-developer-setup/actions/workflows/shellcheck.yml)
[![YAML Lint](https://github.com/zifamathebula/shell-script-wsl2-developer-setup/actions/workflows/yamllint.yml/badge.svg)](https://github.com/zifamathebula/shell-script-wsl2-developer-setup/actions/workflows/yamllint.yml)
[![Markdown Lint](https://github.com/zifamathebula/shell-script-wsl2-developer-setup/actions/workflows/markdownlint.yml/badge.svg)](https://github.com/zifamathebula/shell-script-wsl2-developer-setup/actions/workflows/markdownlint.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) 

This WSL2 developer setup is designed to help developers quickly bootstrap their WSL2 environment with essential tools and utilities. The setup includes Proxy Configuration, DNS Configuration, Linux CLI Utilities, and Developer Tools.

## 📝 About the Setup

This setup includes the following components:

- 🌐 Proxy Configuration
- 📡 DNS Configuration
- 💻 Linux CLI Utilities
- 🔧 Developer Tools

### 🛠️ What's Installed

The setup installs the following tools and utilities:

| Category           | Tools & Utilities                   |
|--------------------|-------------------------------------|
| 💻 Linux CLI Utilities| Wget, Curl, Tar, Unzip, Jq, Htop, Net-tools |
| 🔧 Developer Tools    | Git, Java 20, Latest version of Maven, Python 3 with Pip, K9s, AWS CLI (minimum v2), Kubectl v1.25.6, Kubeseal v0.19.4, Terraform v1.3.4 |

## 🚦 Getting Started

### 📋 Prerequisites

Before proceeding, make sure you have the following installed and configured:

- WSL2
- PowerShell
- Windows proxy configuration

### 📥 Installation

1. Open PowerShell and enter the WSL2 environment:
    ```powershell
    wsl
    ```
2. Clone the repository:
    ```powershell
    git clone https://github.com/yourusername/wsl2-developer-setup.git
    ```
3. Change to the repository directory:
    ```powershell
    cd wsl2-developer-setup
    ```
4. Execute the bootstrap script:
    ```powershell
    source bootstrap.sh
    ```

After the script completes, your environment will be ready for use.

## 📚 Usage

Once the environment is set up, you can use the installed tools and utilities in your WSL2 environment as needed. The setup includes a comprehensive list of developer tools and utilities that are essential for any development project.

## 🗺️ Roadmap

The following features and improvements are planned for future updates:

- Adding more developer tools and utilities
- Improving error handling and installation process
- Making the setup more customizable and user-friendly
- Adding support for more Linux distributions

## 🔧 Troubleshooting

If you encounter any issues during installation or usage, please open an issue on the GitHub repository or consult the respective tool's documentation for troubleshooting. Common issues include:

- Problems with proxy configuration
- Issues with DNS resolution
- Incorrect tool versions or configurations

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE.txt) file for details.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit issues or pull requests to help improve this script.

1. Fork the repository.
2. Create a new branch with a descriptive name.
3. Make your changes and commit them to the new branch.
4. Submit a pull request with your changes.

## ☕ Buy Me a Coffee

If you find this script useful and would like to show your appreciation, you can buy me a coffee:

[![Buy Me a Coffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/zifamathebula)
<!-- markdownlint-enable MD013 -->
