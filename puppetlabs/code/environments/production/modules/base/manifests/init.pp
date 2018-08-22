class base{

	case $::osfamily {
		"RedHat": {
		$pacotes = ["epel-release","git","vim","sysstat","htop","figlet"]
		$web = "httpd"

			  }
		"Debian": {
		$pacotes = ["git","vim","sysstat","htop","figlet","cowsay"]
                $web = "httpd"

			  }

			 }
package{$pacotes:
	ensure => present
	}
package {$web:
	ensure => present
	}
user{"devops":
	ensure => present,
	shell => "/bin/bash"
    }
}
