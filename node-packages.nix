# This file has been generated by node2nix 1.8.0. Do not edit!

{nodeEnv, fetchurl, fetchgit, globalBuildInputs ? []}:

let
  sources = {
    "@types/geojson-7946.0.7" = {
      name = "_at_types_slash_geojson";
      packageName = "@types/geojson";
      version = "7946.0.7";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/geojson/-/geojson-7946.0.7.tgz";
        sha512 = "wE2v81i4C4Ol09RtsWFAqg3BUitWbHSpSlIo+bNdsCJijO9sjme+zm+73ZMCa/qMC8UEERxzGbvmr1cffo2SiQ==";
      };
    };
    "@types/leaflet-1.5.19" = {
      name = "_at_types_slash_leaflet";
      packageName = "@types/leaflet";
      version = "1.5.19";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/leaflet/-/leaflet-1.5.19.tgz";
        sha512 = "ZAKqfvdU/+KFoCpf8aUba09F8mfSc8R2esq++Cha3E2DgwS5K/I/4eJ+0JylrVHZivgY7PSAeXFv/izP+81/MQ==";
      };
    };
    "leaflet-rotate-map-0.2.2" = {
      name = "leaflet-rotate-map";
      packageName = "leaflet-rotate-map";
      version = "0.2.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/leaflet-rotate-map/-/leaflet-rotate-map-0.2.2.tgz";
        sha512 = "+9JXpH+LeR8Rdz34EsWWtU79CmbKEhBLPuL0n3X8y86iSfpr5KvjUNgZlPnJd7jR3J4aKKZ/1BiOOVuKsLwGSA==";
      };
    };
  };
  args = {
    name = "interactive_test";
    packageName = "interactive_test";
    version = "1.0.0";
    src = ./.;
    dependencies = [
      sources."@types/geojson-7946.0.7"
      sources."@types/leaflet-1.5.19"
      sources."leaflet-rotate-map-0.2.2"
    ];
    buildInputs = globalBuildInputs;
    meta = {
      description = "";
      license = "ISC";
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
in
{
  args = args;
  sources = sources;
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
}