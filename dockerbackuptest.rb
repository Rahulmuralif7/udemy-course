#! /usr/bin/env ruby
# 
# check-oradev docker hub backup
## DESCRIPTION:
#  check oradev docker hub backup ran without error

# require 'sensu-plugin/check/cli'


class CheckDockerBackup #< Sensu::Plugin::Check::CLI
        def run

                error_msg = ''
                docker_backup_path = "/Users/rahm/green-lantern*"
                fs_path = "/Users/rahm/udemy-course/"

# check if backup was created within last 24 hours

                recent_backup = `find #{docker_backup_path} -mmin -60 -type f  -print`

               if (not recent_backup.empty?) then
                        error_msg += "New files  created\n"
                        docker_backup_name = `basename '#{recent_backup}'`
                        check_fs = `ls #{fs_path} | grep #{docker_backup_name}`
# check if docker backup copied to fs
                        if (check_fs.empty?) then
                           error_msg += "docker Backup not copied over to fs!\n"

                        end
                else
                        error_msg += "docker Backup not created!\n"

                end

                if not error_msg.empty?
              puts error_msg
#               critical
             else
#             ok
            end
        end
end
a = CheckDockerBackup.new
a.run
