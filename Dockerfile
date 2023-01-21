FROM alpine:edge

RUN apk add git lazygit neovim ripgrep alpine-sdk --update

RUN git clone https://github.com/awray3/lazyvim ~/.config/nvim && cd ~/.config/nvim

RUN nvim --headless +Lazy install +qall

CMD nvim
