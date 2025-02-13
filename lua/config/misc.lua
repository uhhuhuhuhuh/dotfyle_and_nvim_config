vim.api.nvim_create_user_command("Update", "Lazy update", {})
--[[ vim.api.nvim_create_autocmd({ "VimEnter" },
    {
        callback = function()
            print("Hi :)")
        end,
    }
) ]]
