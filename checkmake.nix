let
  pkgs = import <nixpkgs> {};
  checkmake =
    { lib, buildGoModule, fetchFromGitHub }:

    buildGoModule rec {
      pname = "checkmake";
      version = "0.1.0";

      src = fetchFromGitHub {
        owner = "mrtazz";
        repo = pname;
        rev = version;
        sha256 = "0pwpr4fpw56yzzkcabzzgbgwraaxmp7xzzmap7w1xsrkbj7dl2xl";
      };

      goPackagePath = "github.com/mrtazz/checkmake";

      modSha256 = "0xc4166d74ix5nzjphrq4rgw7qpskz05ymzl77i2qh2nhbdb53p0";

      outputs = [ "out" ];

      meta = with lib; {
        homepage = "https://github.com/mrtazz/checkmake";
        description = "experimental linter/analyzer for Makefiles";
        license = licenses.mit;
        platforms = platforms.unix;
      };
    };
in pkgs.callPackage checkmake {}
