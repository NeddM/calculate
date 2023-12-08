local M = {}

M.calculate = function()
  vim.ui.input({ prompt = "Math operation: " }, function(operation)
    local success, result = pcall(vim.fn.eval, operation)
    if success then
      print(" = " .. result)
    else
      print("Error caclulating: " .. result)
      vim.notify("Error: " .. result, "error")
    end
  end)
end

M.setup = function()
  vim.api.nvim_command("command! Calculate lua require('calculate').calculate()")
end

return M
