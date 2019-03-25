{
  services.roscore.enable = true;

  services.liability = {
    enable = true;
    web3_http_provider = "https://mainnet.infura.io/v3/6396152fbf0d48f995bbb677c8e8baed";
    web3_ws_provider = "wss://mainnet.infura.io/ws";
    lighthouse = "airalab.lighthouse.4.robonomics.eth";
    factory = "factory.4.robonomics.eth";
    graph_topic = "graph.4.robonomics.eth";
  };

  services.erc20 = {
    enable = true;
    web3_http_provider = "https://mainnet.infura.io/v3/6396152fbf0d48f995bbb677c8e8baed";
    web3_ws_provider = "wss://mainnet.infura.io/ws";
    factory = "factory.4.robonomics.eth";
    token = "xrt.4.robonomics.eth";
  };
}
