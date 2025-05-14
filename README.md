# ssh-login

```sh
ssh-login ./<directory>
```

## How to set a Directory

The directory containing the credentials should contain 2 files:
*credentials.txt* and *password.txt*. The first one has the username and host
for *ssh* and the *second* has only the password to be used.

*Permissions to the Password files should be only for the Super User*

```sh
chmod 600 password.txt
```

