# Emacs config backup

This is an emacs init setup.

## Structure folders

To enable or disable packages you can comment them on init.el file.

Folders: elisp, recipes, themes.

Other folders created by emacs and/or packages: .cache, auto-save-list, backup, elpa.

Screenshots folder: emacs setup images.

#### elisp
Files are organized using package name, except 5 generic files. They are the config for the respective packages.

These are 3 generic files used mostly for testing: `init-editing.el`, `init-navigation.el` and `init-ui.el`. 

Other 2 generic ares: `init-language.el` and `init-backup.el`.

> Note: config packages start with `init-`

#### recipes
Use for heavy or bigger changes/customization. Mostly snippets/code got from internet. Thanks to you all that shared.


#### themes
Themes are loaded on `init-theme.el` file


## Install

1. Install all packages used 

    `package-selected-packages-install`

    Packages list in `init.el`.

2. Fonts (free open source)

    [Hack](https://github.com/source-foundry/Hack) \
    [Open Sans](https://fonts.google.com/specimen/Open+Sans?selection.family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i)

    Fonts outside theme \
    https://github.com/dsedivec/dot-emacs-d/blob/master/init.el

3. Delete package

    `M-x package-delete` then you can delete `elisp/init-package-name.el` to completely clean. This will lost config setup from the package being deleted.
    
    > Recover: copy package config from git repo. 
    
4. Install package

    `M-x package-install` and then create a `init-package-name.el` inside `elisp` folder/directory.

