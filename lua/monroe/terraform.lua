local status_ok, terraform = pcall(require, "vim-terraform")
if not status_ok then 
  print("Could not load vim-terraform")
  return
end


