def remove_duplicates source
	result = []
	source.each { |e| result << e unless result.include? e}

	result
end