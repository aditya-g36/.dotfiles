return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      variant = "auto",
      dark_variant = "main",
      dim_inactive_windows = false,
      extend_background_behind_borders = true,
      styles = {
        bold = true,
        italic = true,
        transparency = true,
      },
      enable = {
        terminal = true,
        legacy_highlights = true,
        migrations = true,
      },
      groups = {
        border = "muted",
        link = "iris",
        panel = "surface",
        error = "love",
        hint = "iris",
        info = "foam",
        note = "pine",
        todo = "rose",
        warn = "gold",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
