# fish-auto-ls

Auto list directory content whenever working directory changed

### Installation

```sh
fisher add dangh/fish-auto-ls
```

### Configuration

By default it will run `ls -GF` whenever you change the working directory. You can change the command with variable `auto_ls_command`.

For example, to show hidden files/directories by default:

```sh
set -Ux auto_ls_command 'ls -AGF'
```