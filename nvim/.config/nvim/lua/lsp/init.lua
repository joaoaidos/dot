local lsp_installer = require "nvim-lsp-installer"

-- Include the servers you want to have installed by default below
local servers = {
  "ltex",
  "texlab",
  "emmet_ls"
}

for _, name in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found and not server:is_installed() then
    print("Installing " .. name)
    server:install()
  end
end

local enhance_server_opts = {
  -- Provide settings that should only apply to the "eslintls" server
  ["ltex"] = function(opts)
    opts.settings = {
          ltex = {
            disabledRules = { ['en-US'] = { 'PROFANITY' } },
            dictionary = {
              ['pt-PT'] = { 'perf', 'ci', 'TODO' },
            },
            language = "pt-PT"
          },
      }
  end,
}

lsp_installer.on_server_ready(function(server)
   -- Specify the default options which we'll use to setup all servers
   local opts = {
     on_attach = on_attach,
   }
 
   if enhance_server_opts[server.name] then
     -- Enhance the default opts with the server-specific ones
     enhance_server_opts[server.name](opts)
   end

  server:setup(opts)
end)
