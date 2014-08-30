use strict;
use warnings;

use 5.016;

use ExtUtils::MakeMaker 6.63;

my %WriteMakefileArgs = (
    NAME                  => 'Str::Filter',
    AUTHOR                => q{Trevor Cornpropst tscornpropst@gmail.com},
    VERSION_FROM          => '',
    ABSTRACT_FROM         => '',
    LICENSE               => 'Artistic_2_0',
    DISTNAME              => '',
    MIN_PERL_VERSION      => 5.016,
    BUILD_REQUIRES        => {
        'ExtUtils::MakeMaker' => 6.63,
    },
    CONFIGURE_REQUIRES    => {
        'ExtUtils::MakeMaker' => 6.63,
    },
    PREREQ_PM             => {
        'Carp'            => 0,
        'POSIX'           => 0,
        #'Some::Module' => 1.23,
    },
    TEST_REQUIRES         => {
        'Test::More'      => 0,
        'Test::Exception' => 0,
    },
    test                  => { "TESTS" => "t/*.t", },
    dist                  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean                 => { FILES => '-*' },
);

my %FallbackPrereqs = (
    'Carp'                => 0,
    'POSIX'               => 0,
);

unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
    delete $WriteMakefileArgs{TEST_REQUIRES};
    delete $WriteMakefileArgs{BUILD_REQUIRES};
    $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
    unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakeFile(%WriteMakefileArgs);
