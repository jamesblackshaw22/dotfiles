require("neo-tree").setup({
    window = {
        mappings = {
            ["h"] = function(state)
                local node = state.tree:get_node()
                if node.type == 'directory' and node:is_expanded() then
                    require'neo-tree.sources.filesystem'.toggle_directory(state, node)
                else
                    require'neo-tree.ui.renderer'.focus_node(state, node:get_parent_id())
                end
            end,
            ["l"] = function(state)
                local node = state.tree:get_node()
                if node.type == 'directory' then
                    if not node:is_expanded() then
                        require'neo-tree.sources.filesystem'.toggle_directory(state, node)
                    elseif node:has_children() then
                        require'neo-tree.ui.renderer'.focus_node(state, node:get_child_ids()[1])
                    end
                end
            end, }
        },
        default_component_configs = {
            icon = {
                folder_empty = "󰜌",
                folder_empty_open = "󰜌",
            },
            git_status = {
                symbols = {
                    renamed   = "󰁕",
                    unstaged  = "󰄱",
                },
            },
        },
        document_symbols = {
            kinds = {
                File = { icon = "󰈙", hl = "Tag" },
                Namespace = { icon = "󰌗", hl = "Include" },
                Package = { icon = "󰏖", hl = "Label" },
                Class = { icon = "󰌗", hl = "Include" },
                Property = { icon = "󰆧", hl = "@property" },
                Enum = { icon = "󰒻", hl = "@number" },
                Function = { icon = "󰊕", hl = "Function" },
                String = { icon = "󰀬", hl = "String" },
                Number = { icon = "󰎠", hl = "Number" },
                Array = { icon = "󰅪", hl = "Type" },
                Object = { icon = "󰅩", hl = "Type" },
                Key = { icon = "󰌋", hl = "" },
                Struct = { icon = "󰌗", hl = "Type" },
                Operator = { icon = "󰆕", hl = "Operator" },
                TypeParameter = { icon = "󰊄", hl = "Type" },
                StaticMethod = { icon = '󰠄 ', hl = 'Function' },
            }
        },
    })
