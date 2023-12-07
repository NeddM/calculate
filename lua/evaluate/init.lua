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


M.setup = function()
  vim.cmd([[command! -nargs=0 Evaluate 'lua require("evaluate").evaluate()']])
end


return M
