package Str::Filter;

use 5.016;

use strict;
use warnings FATAL => 'all';

our $VERSION = '0.01';

use Carp;
use POSIX qw(strftime);

our (@EXPORT, @EXPORT_OK, %EXPORT_TAGS);

@EXPORT      = qw(); # by default, don't do this unless absolutely necessary
@EXPORT_OK   = qw(); # on demand
%EXPORT_TAGS = (
    ALL => [ @EXPORT_OK ],
);

{
#-------------------------------------------------------------------------------
sub new {
    my ($class, $arg) = @_;

    my $self = bless {}, $class;

    $self->_init($args);

    return $self;
}

#-------------------------------------------------------------------------------
sub _init {
    my ($self, $arg) = @_;

#    $self->SUPER::_init($arg);

    return;
}

}

1;

__END__

=pod

=head1 NAME

Str::Filter - <one line description>

=head1 VERSION

This documentation refers to Str::Filter version 0.01

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 SUBROUTINES/METHODS

=over

=item C<function_name>

=back

=head1 EXAMPLES

None.

=head1 DIAGNOSTICS

=over

=item B<Error Message>

=item B<Error Message>

=back

=head1 CONFIGURATION AND ENVIRONMENT

Str::Filter requires no configuration files or environment variables.

=head1 DEPENDENCIES

=over

=item * Carp

=item * POSIX

=back

=head1 INCOMPATIBILITIES

None reported.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any issues or feature requests to C<tscornpropst@gmail.com>. Patches are welcome.

=head1 AUTHOR

Trevor Cornpropst C<< tscornpropst@gmail.com >>

=head1 COPYRIGHT AND LICENSE

Copyright (c) 2014, Trevor Cornpropst C<< tscornpropst@gmail.com >>. All rights reserved.

This program is free software; you can redistribute it and/or modify it
under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at:

L<http://www.perlfoundation.org/artistic_license_2_0>

Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER
AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES.
THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY
YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR
CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

=cut

