
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.4203"
  },
  "configure_requires" => {
    "Module::Build" => "0.4203"
  },
  "dist_abstract" => "Sanitize versions handed to you by Git::NextVersion",
  "dist_author" => [
    "Kent Fredric <kentfredric\@gmail.com>"
  ],
  "dist_name" => "Dist-Zilla-Plugin-Git-NextVersion-Sanitized",
  "dist_version" => "0.001000",
  "license" => "perl",
  "module_name" => "Dist::Zilla::Plugin::Git::NextVersion::Sanitized",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Dist::Zilla::Plugin::Git::NextVersion" => 0,
    "Dist::Zilla::Role::Version::Sanitize" => 0,
    "Moose" => 0,
    "perl" => "5.006",
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => [],
  "test_requires" => {
    "Test::More" => "1.001002"
  }
);


my %fallback_build_requires = (
  "Module::Build" => "0.4203",
  "Test::More" => "1.001002"
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  delete $module_build_args{test_requires};
  $module_build_args{build_requires} = \%fallback_build_requires;
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
