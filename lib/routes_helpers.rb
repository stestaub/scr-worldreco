module RoutesHelpers
	def not_migration_task
		(!$ARGV.nil? && $ARGV.find_all { |x| x =~ /migrate|rollback|precompile|schema|reset|setup/i}.empty?)
	end
end