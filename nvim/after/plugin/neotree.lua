function close_current_and_run(command, close_target)
	if close_target then
		close_target = ("source=" .. close_target)
	else
		close_target = ''
	end

	vim.cmd(':Neotree action=close ' .. close_target)
	vim.cmd(command)
end

vim.keymap.set('n', '<leader>pt', function() close_current_and_run(':Neotree') end)
vim.keymap.set('n', '<leader>pb', function() close_current_and_run(':Neotree source=buffers action=focus') end)
vim.keymap.set('n', '<leader>pT', function() close_current_and_run(':Neotree toggle', 'buffers') end)
vim.keymap.set('n', '<leader>pB', function() close_current_and_run(':Neotree source=buffers toggle action=focus', 'filesystem') end)
