class AJob
  def run
    File.open('/tmp/hambiscuit.log', 'a') do |f|
      f.write( Time.now.to_s + "\n" )
    end
  end
end
