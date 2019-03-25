{
  # CJDNS
  services.cjdns = {
    enable = true;
    authorizedPasswords = [ "aira-cjdns-node" ];
    ETHInterface = {
      bind = "all";
      beacon = 2;
    };
    UDPInterface = {
      bind = "0.0.0.0:42000";
      connectTo = {
        "164.132.111.49:53741" = { # Akru/Strasbourg
          password = "cr36pn2tp8u91s672pw2uu61u54ryu8";
          publicKey = "35mdjzlxmsnuhc30ny4rhjyu5r1wdvhb09dctd1q5dcbq6r40qs0.k";
        };
        "188.226.158.11:25829" = { # Airalab/DigitalOcean
          password = ";@d.LP2589zUUA24837|PYFzq1X89O";
          publicKey = "kpu6yf1xsgbfh2lgd7fjv2dlvxx4vk56mmuz30gsmur83b24k9g0.k";
        };
      };
    };
  };

  # IPFS
  services.ipfs = {
    enable = true;
    pubsubExperiment = true;
    extraConfig = {
      Bootstrap = [
        "/ip4/13.95.236.166/tcp/4001/ipfs/QmdfQmbmXt6sqjZyowxPUsmvBsgSGQjm4VXrV7WGy62dv8"
        "/ip6/fcd5:9d3a:b122:3de1:2742:a3b7:c9c4:46d9/tcp/4001/ipfs/QmdfQmbmXt6sqjZyowxPUsmvBsgSGQjm4VXrV7WGy62dv8"
        "/dns4/lighthouse.aira.life/tcp/4001/ipfs/QmdfQmbmXt6sqjZyowxPUsmvBsgSGQjm4VXrV7WGy62dv8"
        "/dns6/h.lighthouse.aira.life/tcp/4001/ipfs/QmdfQmbmXt6sqjZyowxPUsmvBsgSGQjm4VXrV7WGy62dv8"
        "/ip4/52.178.99.60/tcp/4001/ipfs/Qmc4eQzRttAug8vZ2aFqTsUqzUVymvUJZFBiQHL36Vvfri"
        "/ip6/fca9:fe44:52fd:5bd4:aa41:44de:750d:bad0/tcp/4001/ipfs/Qmc4eQzRttAug8vZ2aFqTsUqzUVymvUJZFBiQHL36Vvfri"
      ];
    };
  };

  networking.firewall.allowedTCPPorts = [ ];
  networking.firewall.allowedUDPPorts = [ ];
}
