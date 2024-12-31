--return {
--  "craftzdog/solarized-osaka.nvim",
--  lazy = true,
--  priority = 1000,
--  opts = function()
--    return {
--      transparent = true,
--    }
--  end,
--}

-- Return configuration for plugins
return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      variant = "auto",                        -- You can choose "auto", "main", "moon", or "dawn"
      dark_variant = "main",
      dim_inactive_windows = false,            -- Set to false if you want inactive windows to appear fully visible
      extend_background_behind_borders = true, -- Enable to extend background behind borders
      styles = {
        bold = true,
        italic = true,
        transparency = true, -- Set to true to enable transparency
      },
      enable = {
        terminal = true,
        legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
        migrations = true,        -- Handle deprecated options automatically
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
