local lib_status, lib_config = pcall(require, "litee.lib")
if not lib_status then
  return
end

lib_config.setup()

local gh_status, gh_config = pcall(require, "litee.gh")
if not gh_status then
	return
end

gh_config.setup({
  jump_mode = "invoking",

  map_resize_keys = false,

  disable_keymaps = false,

  icon_set = "default",

  icon_set_custom = nil,

  git_buffer_completion = true,

  keymaps = {
	open = "<CR>",
	expand = "zo",
	collapse = "zc",
	goto_issue = "gd",
	details = "d",
	submit_comment = "<C-s>",
	actions = "<C-a>",
	resolve_thread = "<C-r>",
	goto_web = "gx"
  }
})
