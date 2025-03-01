{
  networking = {
    defaultGateway = {
      address = "192.168.1.1";
      interface = "enp2s0";
    };
    hostName = "box";
    interfaces = {
      enp2s0.ipv4.addresses = [{
        address = "192.168.1.10";
        prefixLength = 24;
      }];
    };
    nameservers = ["192.168.1.1"];
  };
}