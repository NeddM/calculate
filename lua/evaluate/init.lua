local M = {}

M.evaluate = function()
  vim.ui.input({ prompt = "Type the math operation: " }, function(operation)
    local success, result = pcall(vim.fn.eval, operation)
    if success then
      print(" = " .. result)
    else
      print("Error evaluating operation: " .. result)
      vim.notify("Error: " .. result, "error")
    end
  end)
end

-- M.setup = function()
--   require("evaluate")
-- end

-- M.setup()
if vim.cmd([[command! -nargs=0 Evaluate 'lua require("evaluate").evaluate()']]) then
  M.evaluate()
end


return M
