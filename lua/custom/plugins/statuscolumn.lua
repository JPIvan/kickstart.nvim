local statuscolumn = {}

statuscolumn.myStatuscolumn = function()
  local total_lines = vim.api.nvim_buf_line_count(0)
  local n_digits_maxlnum = #tostring(total_lines)

  local lnum = string.format('%' .. n_digits_maxlnum .. 'd', vim.v.lnum)
  local relnum = string.format('%2d', vim.v.relnum)
  local border = '┊ '
  return table.concat({ lnum, ' ', relnum, border }, '')
end

return statuscolumn

-- return {
--   {
--     -- lazy = false,
--     dev = true,
--     dir = '.',
--     config = function()
--       local statuscolumn = {}
--
--       statuscolumn.myStatuscolumn = function()
--         local total_lines = vim.api.nvim_buf_line_count(0)
--         local n_digits_maxlnum = #tostring(total_lines)
--         local lnum = string.format('%' .. n_digits_maxlnum .. 'd', vim.v.lnum)
--         local relnum = string.format('%2d', vim.v.relnum)
--         local border = '┊ '
--         return table.concat({ lnum, ' ', relnum, border }, '')
--       end
--
--       vim.o.statuscolumn = '%!statuscolumn.myStatusColumn()'
--     end,
--   },
-- }
