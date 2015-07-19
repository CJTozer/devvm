Package { ensure => "latest" }

package { "git": }
package { "tmux": }
package { "vim": }
package { "python-pip": }
package { "gcc": }
package { "ack-grep": }
package { "powerline-status": provider => "pip", require => Package['python-pip'] }
