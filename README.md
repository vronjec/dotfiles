# Viktor’s dotfiles

## Introduction

A collection of more or less
[XDG-compliant](http://standards.freedesktop.org/basedir-spec/latest/)
configuration files for
[Windows Subsystem for Linux (WSL)](https://msdn.microsoft.com/en-us/commandline/wsl/about)
environments on Windows 10.

## Requirements

*   [Windows Subsystem for Linux](https://msdn.microsoft.com/en-us/commandline/wsl/about)

## Installation

### Install public dotfiles repository

```bash
cd ~ && curl -sL https://github.com/vronjec/dotfiles/archive/master.tar.gz | tar xz --strip 1
```

### Install private keyfiles repository

1. Provide GitHub personal access token for private repository access:

    ```bash
    GITHUB_TOKEN=<github-personal-access-token>
    ```

2. Install SSH configuration and keys from private repository:

    ```bash
    cd ~ && curl -sL https://github.com/vronjec/keyfiles/archive/master.tar.gz -u ${GITHUB_TOKEN}:x-oauth-basic | tar xz --strip 1
    chmod 700 ~/.ssh
    chmod 600 ~/.ssh/config
    touch ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys
    touch ~/.ssh/known_hosts && chmod 600 ~/.ssh/known_hosts
    chmod 600 ~/.ssh/id_*
    chmod 600 ~/.ssh/id_*.pub
    ```

## Etymology

Dotfiles are plain text configuration files on Unix-like systems for
shell, editor, and other software customizations. They are called
"dotfiles" as they typically are named with a leading `.`, making
them hidden on Unix-like systems by default. In general, dotfiles
end up being extremely specific to an individual developers workflows
and preferences. (Summary based on [thoughtbot](https://thoughtbot.com/)
article "[Intro to Dotfiles](https://thoughtbot.com/upcase/videos/intro-to-dotfiles)")

## License

Source files are released under the terms of the license specified in
the repository, the copyright header at the top of each file, or if not
specified, under the [MIT license](https://opensource.org/licenses/MIT).

Content, design, layout, look-and-feel and assets may be the subject of
intellectual property rights reserved by the right holders, and are not
licensed for any purpose hereunder.
