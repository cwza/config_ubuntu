## Clone this repository
* `git clone ~/config`

## Install reqired packages
* follow [apt/readme.md](apt/readme.md) to install required packages

## Set Zsh Environment Variable
* `ln -s ~/config/.zshenv ~/.zshenv`

## Config each app
* Follow the individual readmd.md under each directory to config each app
* They all look like this: `ln -s ~/config/{app-name} ~/.config/{app-name}`

## Others
* Use multipass to create an ubuntu instance
    + `multipass launch --name [instance name] --cpus 4 --memory 4G --disk 60`
