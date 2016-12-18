# gem 'net/ssh'
# gem 'net/ssh/telnet'

class ParseConfig
  def self.parse_all_device
    device = Device.all
    device.each do |i|
      @a = ''
      parse(i.ip, i.connection_profile.username, i.connection_profile.password)
      conf = Config.new
      conf.config = @a
      conf.device = i
      conf.save
    end
  end

  def self.parse(host, user, pass)
    hostname = host
    username = user
    password = pass

    Net::SSH.start(hostname, username, password: password) do |ssh|
      @a = ssh.exec!('sh run')
      ssh.close
    end
  end
end
