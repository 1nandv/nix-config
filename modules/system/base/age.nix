{ self, pkgs, agenix, system, ... }: {
  environment.systemPackages = [
    agenix.packages."${system}".default
  ];
}
