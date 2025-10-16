# nvim-customisation-fauji
Hi,
I'm Vishud Verma and i have finally migrated to using Neovim.

I am a full-stack developer with experience in *"Django", "flask", "ReactJs"* and *"React Native"* development environments.
I also work with AI and Data-Science using *"Python", "R", "Scala"* and *"SQL"*; I'm also learning NoSQL and working as a Freelance Bussiness Consultant.

This Neovim setup is inspired by **TypeCRAFT** and his video series "neovim for newbs".
Basic file shortcuts:`<Ctrl-w>`: saves and closes a file(`:wq`); `<Ctrl-q>`: force quits any page and buffers(`:q!`).
The leader is set to `<space>` can change it in `init.lua` file.

## Package Manger
- I'm using "lazy.nvim" as my package manager with its latest dependencies build on luarocks , pynvim and npm package.

## Packages used
### lazy
- The best package manager ofcourse.
- Base settings and separated setup in \config and \plugins directories to help newcomers.
### alpha 
- Used for greeter and front page.
- Custom keybinds to manage "[#Mason]" and "[#Lazy]"
### catppuccin
- colorscheme "mocha"
### lsp-config
- To manage lsp configurationa and provide seamless integration with code completion and a complete IDE experience.
### lualine
- To make the bottom line indicator making it pretty
- Theme used: "dracula" no customisation really cause it just matches really well with [#catppuccin].
### neo-tree
- The file explorer of choice.
- Shortcuts set to: `<Ctrl-n>`:open the tree on right side and `<Ctrl-m>`:close the tree.
### none-ls
- Makes autocompletion and indentation seamless.
- Shortcuts set to: `<space>gf`: completes indentation.
### nvim-lsp-file-operations
- Provides cut, copy and paste facilities to [#neotree].
- Standard shortcuts.
### nvim-treesitter
- Makes indexing easier.
### telescope
- Search the files and navigate to different folders and if needed with the recent open files from greeter.
- Shortcuts set to: `<Ctrl-p>`:opens the file search; is relevant to the open folder; `<space>fg`:opens word search across all files of the present directory.
>Note: Need to add folder opening capabilities.
### Mason
- Handling the LSP's, DAP's and linters with a single window.
- It is also the backend for the code completions.

## Dependencies
- Following dependencies are required:
    - Neovim >= 0.8.0
    - Git >= 2.19.0
    - Nerdfont: download link for one will come here.
    - luarocks, version = 5.1.x 
    - Python >= 3.8.0
    - NodeJs >= 23.4.0
    - fd
Ensure you have all of these installed for a seamless integration of this environments

## Perks
Simple and easy to use with intuitive and configurable files, most extensions and their counter parts are in the files name; if you can't edit these understand and read the file name, any part that breaks can be fixed. For Example:
        If the autocompletions are not working they can be fixed from inside the `Lua\plugins\completions.lua`
        If you get an error in the lsp-configuration check the `Lua\plugins\lsp-config`.

## Usage
Clone this repository and paste it in the `C:\Users\<username>\AppData\nvim` on windows and `/.config/nvim` directory on mac and linux. If this directory doesn't exist make it, restart neovim from your terminal of choice and let it run.
    - Perform a healthcheck once before starting your journey to see if anything needs fixing.(How to do it? Simply type `:checkhealth` and you will know how to do it if the greeter loads simply press `h`.
    - This is my personal take on Neovim and I have been using it for 2 years now at the time of upload.

Hope this is as magical a journey for you as it was for me.....

### CAIO!!!

P.S. if you have no idea how anything in neovim works try running `:Tutor` it will teach you the basics. It does get super fast once you get the hang of it.
