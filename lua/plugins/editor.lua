return {
    -- Disable lazygit
    { "folke/snacks.nvim",      opts = { lazygit = { enabled = false } } },

    -- Text objects: only select the pair covering the cursor, not nested inner pairs
    {
        "nvim-mini/mini.ai",
        opts = {
            search_method = "cover",
        },
    },

    -- Disable session saving
    { "folke/persistence.nvim", enabled = false },

    -- Project/workspace switching
    {
        "ahmedkhalf/project.nvim",
        opts = {
            -- Detection methods: look for these markers to identify project roots
            detection_methods = { "pattern", "lsp" },
            patterns = { ".git", "Makefile", "CMakeLists.txt", ".clangd.sh", "compile_commands.json" },
        },
        config = function(_, opts)
            require("project_nvim").setup(opts)
            require("telescope").load_extension("projects")
        end,
        keys = {
            { "<leader>fp", "<cmd>Telescope projects<cr>", desc = "Projects" },
        },
    },

    -- Disable all animations
    { "echasnovski/mini.animate", enabled = false },
    {
        "snacks.nvim",
        opts = {
            animate = { enabled = false },
            picker = {
                sources = {
                    files = {
                        hidden = true,
                    },
                },
            },
        },
    },

    -- Disable tabline (buffer tabs)
    {
        "akinsho/bufferline.nvim",
        enabled = false,
    },

    -- Disable format on save
    {
        "stevearc/conform.nvim",
        opts = {
            format_on_save = false,
        },
    },

    -- Disable inlay hints
    {
        "neovim/nvim-lspconfig",
        opts = {
            inlay_hints = { enabled = false },
        },
    },

    -- LSP UI enhancements (lsp-ui-doc equivalent)
    {
        "nvimdev/lspsaga.nvim",
        event = "LspAttach",
        opts = {
            hover = {
                open_cmd = "!xdg-open",
            },
            lightbulb = {
                enable = false,
            },
        },
        keys = {
            { "K",          "<cmd>Lspsaga hover_doc<cr>",       desc = "Hover Doc" },
            { "gd",         "<cmd>Lspsaga peek_definition<cr>", desc = "Peek Definition" },
            { "gD",         "<cmd>Lspsaga goto_definition<cr>", desc = "Goto Definition" },
            { "gr",         "<cmd>Lspsaga finder<cr>",          desc = "Find References" },
            { "<leader>ca", "<cmd>Lspsaga code_action<cr>",     desc = "Code Action" },
            { "<leader>cr", "<cmd>Lspsaga rename<cr>",          desc = "Rename" },
        },
    },

    -- Neogit (magit alternative)
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim",
        },
        cmd = "Neogit",
        keys = {
            { "<leader>gg", "<cmd>Neogit<cr>", desc = "Neogit" },
        },
        opts = {
            integrations = {
                diffview = true,
            },
            graph_style = "unicode",
            mappings = {
                popup = {
                    ["F"] = "PullPopup",
                    ["p"] = "PushPopup",
                    ["f"] = "FetchPopup",
                },
            },
        },
    },

    -- Oil.nvim (dired alternative) — edit directories like buffers
    {
        "stevearc/oil.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        keys = {
            { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
        },
        opts = {
            columns = {
                "icon",
                "permissions",
                "size",
                "mtime",
            },
            view_options = {
                show_hidden = true,
            },
        },
    },

    -- Show hidden/dot files in Telescope
    {
        "nvim-telescope/telescope.nvim",
        opts = {
            defaults = {
                file_ignore_patterns = { "%.git/" },
            },
            pickers = {
                find_files = {
                    hidden = true,
                },
            },
        },
    },
}
