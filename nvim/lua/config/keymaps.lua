local keymap = vim.keymap

keymap.set("n", "<C-a>", "ggVG")
keymap.set("n", "a", "<S-A>")

keymap.set("i", "jj", "<Esc>")

keymap.set("n", "<A-j>", ":m .+1<CR>==")
keymap.set("n", "<A-k>", ":m .-2<CR>==")

keymap.set("n", "<C-h>", "<C-w>h>")
keymap.set("n", "<C-l>", "<C-w>l>")
