local M = {}

M.evaluate = function()
  vim.ui.input({ prompt = "Math operation: " }, function(operation)
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
  vim.api.nvim_command("command! Evaluate lua require('evaluate').evaluate()")
end

M.setup()

return M
