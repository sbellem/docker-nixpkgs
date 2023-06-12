{ docker-nixpkgs
, sgx-sdk
}:
(docker-nixpkgs.nix.override {
  extraContents = [ sgx-sdk ];
}).overrideAttrs (prev: {
  meta = (prev.meta or { }) // {
    description = "Nix and Intel's C++ SGX SDK image";
  };
})
