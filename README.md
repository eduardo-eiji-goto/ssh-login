# ssh-login

```sh
ssh-login ./<directory>
```

Simple script to facilitate connecting to **ssh** using password.

## How to Install

1. Clone repository
2. Add *alias* to run the script

```dotfile
# .bash_aliases

alias ssh-login="~/ssh-login/ssh-login.sh"
```

## How to set a Directory

The directory containing the credentials should contain 2 files:
*credentials.txt* and *password.txt*. The first one has the username and host
for *ssh* and the *second* has only the password to be used.

Permissions to the Password files should only be given to the Super User

```sh
chmod 600 password.txt
```
