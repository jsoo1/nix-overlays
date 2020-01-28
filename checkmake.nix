{ lib, stdenv, buildGoPackage, fetchgit, fetchhg, fetchbzr, fetchsvn }:

buildGoPackage rec {
  name = "checkmake";
  version = "0.1.0";
  rev = "03dd76b964dd2cf535a7e1f0efe5731c183a3071";

  goPackagePath = "github.com/mrtazz/checkmake";

  src = fetchgit {
    inherit rev;
    url = "https://github.com/mrtazz/checkmake";
    sha256 = "1pn2vys0lq9qapr3zyj0wamib91bq60gl9xjk9hlgv7r575shq5k";
  };

  goDeps = [];

  meta = with lib; {
    homepage = "https://github.com/mrtazz/checkmake";
    description = "experimental linter/analyzer for Makefiles";
    license = licenses.mit;
    platforms = platforms.unix;
  };
}
