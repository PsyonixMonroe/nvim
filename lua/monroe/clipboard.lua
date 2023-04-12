-- From: https://mitchellt.com/2022/05/15/WSL-Neovim-Lua-and-the-Windows-Clipboard.html
local in_wsl = os.getenv('WSL_DISTRO_NAME') ~= nil

if in_wsl then
      vim.g.clipboard = {
          name = 'WSLClipboard',
          copy =  { ["+"] = { "clip.exe" },   ["*"] = { "clip.exe" } },
          paste = { ["+"] = { 'nvim_paste' }, ["*"] = { 'nvim_paste' } },
          cache_enabled = true
      }
end

-- nvim_paste script
-- #!/bin/sh
-- powershell.exe Get-Clipboard | tr -d '\r' | sed -z '$ s/\n$//'

