local lsp = require "lspconfig"
local coq = require "coq"

lsp.clangd.setup{coq.lsp_ensure_capabilities()}

local lsp_signature = require "lsp_signature"

lsp_signature.setup()
