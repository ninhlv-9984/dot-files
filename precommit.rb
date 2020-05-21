#!/usr/bin/env ruby

git_files = `git status --porcelain`
ruby_files = git_files.scan(%r{[M\?]\s+([\w\/]+.rb)}).flatten.reject { |file| file.match(/routes|migrate/) }
ruby_files_list = ruby_files.join(" ")

system("rubocop #{ruby_files_list}") unless ruby_files_list.empty?
