 local status, conflict = pcall(require, "git-conflict")
 if not status then
   print("Git-Conflict Not Loaded")
   return
 end

 print("Git-Conflict Loaded")
 conflict.setup({
   default_mappings = true,
   disable_diagnostics = false,
   highlights = {
     incoming = 'DiffText',
     current = 'DiffAdd',
   }
 })

-- require "git-conflict".setup()

