
class ParseConfig
  def self.parse_all_device
    device = Device.all
    
    device.each do |i|
        conf = Config.new 
    
        begin  
          Net::SSH.start(i.ip, i.connection_profile.username, password: i.connection_profile.password,  timeout: 300) do |ssh|
             conf.config = ssh.exec!("sh run")
             puts conf.config
                
        end
        rescue Exception => e
          puts "error: #{e.inspect}"
        end    
        conf.device = Device.find(i.id)
        conf.save
    end
  end
end






