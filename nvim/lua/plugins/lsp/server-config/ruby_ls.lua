return {
  rubyLs = {
    formatter = {
      -- You can set this to "auto" to automatically detect the formatter
      -- or specify a formatter like "rubocop" or "standardrb"
      useBundler = false, -- Use formatter from Gemfile, if available
    },
    linter = {
      -- You can set this to "auto" to automatically detect the linter
      -- or specify a linter like "rubocop" or "standardrb"
      useBundler = false, -- Use linter from Gemfile, if available
    },
    diagnostics = {
      enable = true, -- Enable diagnostics
      rubocop = {
        enable = true, -- Enable RuboCop diagnostics
      },
    },
    autoformat = true, -- Enable autoformatting
    completion = {
      postfix = true, -- Enable postfix completion
      solargraph = {
        enable = true, -- Enable Solargraph for additional completion features
      },
    },
  }
}
