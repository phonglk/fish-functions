# Automatic install fish on CentOS_7 machine and set fish as default shell login
# e.g:
#	fish_install_remote devserver
#	fish_install_remote Phong@devserver
#	fish_install_remote Phong@devserver -i ~/identify_file
function fish_install_remote
	ssh $argv 'sudo rm -f shells:fish:release:2.repo'
	ssh $argv 'sudo wget -P /etc/yum.repos.d/ http://download.opensuse.org/repositories/shells:fish:release:2/CentOS_7/shells:fish:release:2.repo'
	ssh $argv 'sudo yum install -y fish'
	ssh $argv 'echo ${PATH//:/ } > ~/PATH.tmp'
	ssh $argv 'sudo chsh -s /usr/bin/fish $(whoami)'
	ssh $argv 'echo $SHELL'
	ssh $argv 'set -U fish_user_paths (cat ~/PATH.tmp) $fish_user_paths'
	echo "Done"
end
