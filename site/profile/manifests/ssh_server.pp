class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDF9ZuF9y6y8KzeenBypIlk2DqwhkFyOOa88BSxqoGIuD1Jsfi4JLEsPut9aOI93nfLPvlX3YXEZrsX67PCLvYbjDYfctZn0N5OppyPmstqCOTgL5+TKscPEh5nvlRMvQQm9NyPhfm4UiR35rFqpdjSh+QWrvt51APzUJjUD3rzIzH2xl5lKOHWtXtnp0cfD8vdLn3ESSSEHmaEtwZWQL2uOAINu9yL4NjVzB4b7Pz+wgRnwRNCVHYEq02U3DGVXXNfJRSddtJUs8ocP/zI8vBjVJ8WNZ1NBYmgAkq2U/HsYzmY2Q66ov/DM0rnIBE6PNGlygIIwHLIa+awBAEd+FRn',
	}  
}
