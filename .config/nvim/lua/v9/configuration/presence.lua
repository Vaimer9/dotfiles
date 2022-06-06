-- The setup config table shows all available config options with their default values:
require("presence"):setup({
    -- General options
    auto_update         = true,                       
    neovim_image_text   = "neovim gang 4lyfe",
    main_image          = "file",                   

    editing_text        = "Editing %s",               
    file_explorer_text  = "Browsing %s",              
    git_commit_text     = "Committing changes",       
    plugin_manager_text = "Managing plugins",         
    reading_text        = "Reading %s",             
    workspace_text      = "Working on %s",     
    line_number_text    = "Line %s out of %s",
})
