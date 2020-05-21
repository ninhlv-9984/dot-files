#!/usr/bin/env ruby
require "rubocop"

git_files = `git status --porcelain`
ruby_files = git_files.scan(%r{[M\?]\s+([\w\/]+.rb)}).flatten.reject { |file| file.match(/routes|migrate/) }
ruby_files_list = ruby_files.join(" ")

system("rubocop #{ruby_files_list}") unless ruby_files_list.empty?
exit $CHILD_STATUS.to_s[-1].to_i
