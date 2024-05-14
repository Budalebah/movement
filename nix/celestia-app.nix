{ pkgs,  }:

pkgs.buildGoModule rec {
  pname = "celestia-app";
  version = "v1.8.0";

  src = pkgs.fetchFromGitHub {
    owner = "celestiaorg";
    repo = "celestia-app";
    rev = "e75a1fdc8f2386d9f389cb596c88ca7cc19563af";
    sha256 = "sha256-EE9r1sybbm4Hyh57/nC8utMx/uFdMsIdPecxBtDqAbk=";  
  };

  vendorHash = "sha256-2vU1liAm0us7Nk1eawgMvarhq77+IUS0VE61FuvQbuQ="; 

  # Specify the subpackage to build
  subPackages = [ "cmd/celestia-appd" ];

  meta = with pkgs.lib; {
    description = "Celestia App is PoS full node implementation for the Celestia blockchain.";
    homepage = "https://github.com/celestiaorg/celestia-app";
    license = licenses.mit;
    maintainers = with maintainers; [ maintainers.example ];
  };
}