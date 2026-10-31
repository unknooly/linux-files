# Unused packages

- List packages
    ```bash
    pacman -Qtd
    ```

- Remove packages: 
    ```bash
    sudo pacman -Rns $(pacman -Qtdq)
    ```
- Careful: dependencies from AUR insalled packages will get listed too



# MariaDB

1. Install MariaDB
    ```bash
    sudo pacman -S mariadb
    ```

2. Initialize the database
    ```bash
    sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
    ```

3. Enable and start the service
    ```bash
    sudo systemctl enable --now mariadb
    ```

4. Secure the Installation
    - Run the included security script to configure it and remove insecure defaults:
        ```bash
        sudo mysql_secure_installation
        ```
    - There will be a prompt to:
        - Set the root password
        - Remove anonymous users
        - Disallow remote root login
        - Remove test databases
        - Reload privilege tables

5. Verify it's working
    - Login to the MariaDB shell:
        ```bash
        mariadb -u root -p
        ```
    - Where `-u root` is the username and `-p` will ask for it's password



# Sync clock
```bash
timedatectl set-ntp true
```



# Setup a service

- Create the file:
    ```bash
    sudo nano /etc/systemd/system/[name].service
    ```
- Reload daemon (systemd):
    ```bash
    sudo systemctl daemon-reload
    ```
- Enable on boot:
    ```bash
    sudo systemctl enable [name]
    ```
- Start:
    ```bash
    sudo systemctl start [name]
    ```
- Alternative: enable + start:
    ```bash
    sudo systemctl enable --now [name]
    ```
- Restart:
    ```bash
    sudo systemctl restart [name]
    ```
- Status:
    ```bash
    sudo systemctl status [name]
    ```



# Android automatic mounter
sudo pacman -S gvfs-mtp



# Git
- Set to SHH:
    ```bash
    git remote set-url origin git@github.com:<username>/<repoName>.git
    ```



# Commit signature (SSH)

## Make new SSH key if needed
```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

## Use SSH for commit signatures
```bash
git config --global gpg.format ssh
git config --global user.signingkey ~/.ssh/id_ed25519.pub 
git config --global commit.gpgsign true
```