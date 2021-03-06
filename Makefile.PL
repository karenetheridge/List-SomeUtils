# This Makefile.PL for List-SomeUtils was generated by
# inc::MyMakeMaker <self>
# and Dist::Zilla::Plugin::MakeMaker::Awesome 0.35.
# Don't edit it but the dist.ini and plugins used to construct it.

use strict;
use warnings;

use 5.006;
use ExtUtils::MakeMaker;

my %WriteMakefileArgs = (
  "ABSTRACT" => "Provide the stuff missing in List::Util",
  "AUTHOR" => "Tassilo von Parseval <tassilo.von.parseval\@rwth-aachen.de>, Adam Kennedy <adamk\@cpan.org>, Jens Rehsack <rehsack\@cpan.org>, Dave Rolsky <autarch\@urth.org>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::HasCompiler" => 0,
    "ExtUtils::MakeMaker" => 0
  },
  "DISTNAME" => "List-SomeUtils",
  "LICENSE" => "perl",
  "MIN_PERL_VERSION" => "5.006",
  "NAME" => "List::SomeUtils",
  "PREREQ_PM" => {
    "Carp" => 0,
    "Exporter::Tiny" => 0,
    "Module::Implementation" => 0,
    "Scalar::Util" => 0,
    "strict" => 0,
    "vars" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "Exporter" => 0,
    "ExtUtils::MakeMaker" => 0,
    "File::Spec" => 0,
    "Test::Builder::Module" => 0,
    "Test::LeakTrace" => 0,
    "Test::More" => "0.96",
    "Tie::Array" => 0,
    "base" => 0,
    "lib" => 0,
    "overload" => 0
  },
  "VERSION" => "0.52",
  "test" => {
    "TESTS" => "t/*.t"
  }
);

my %FallbackPrereqs = (
  "Carp" => 0,
  "Exporter" => 0,
  "Exporter::Tiny" => 0,
  "ExtUtils::MakeMaker" => 0,
  "File::Spec" => 0,
  "Module::Implementation" => 0,
  "Scalar::Util" => 0,
  "Test::Builder::Module" => 0,
  "Test::LeakTrace" => 0,
  "Test::More" => "0.96",
  "Tie::Array" => 0,
  "base" => 0,
  "lib" => 0,
  "overload" => 0,
  "strict" => 0,
  "vars" => 0,
  "warnings" => 0
);

unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

use ExtUtils::HasCompiler qw( can_compile_loadable_object );
if ( can_compile_loadable_object( quiet => 1 ) ) {
    $WriteMakefileArgs{PREREQ_PM}{'List::SomeUtils::XS'} = 0;
}

WriteMakefile(%WriteMakefileArgs);
