require("workspaces").setup({
    hooks = {
        open = function()
          require("sessions").load(nil, { silent = true })
        end,
    }
})
