local jdtls_ok, jdtls = pcall(require, "jdtls")

if not jdtls_ok then
  vim.notify("JDTLS not installed")
  return
end

local config = {
  cmd = { 'C:\\Users\\jatin\\AppData\\Local\\nvim-data\\mason\\packages\\jdtls\\bin\\jdtls' },
  root_dir = vim.fs.dirname(vim.fs.find({ '.gradlew', '.git', 'mvnw' }, { upward = true })[1]),
}

jdtls.start_or_attach(config)
