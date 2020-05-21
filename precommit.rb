#!/usr/bin/env ruby

git_files = `git status --porcelain`
ruby_files = git_files.scan(%r{[M\?] ([\w\/]+.rb)}).flatten.select { |file| !file.match(/routes|migrate/) }
ruby_files_list = ruby_files.join(" ")

system("rubocop #{ruby_files_list}")

