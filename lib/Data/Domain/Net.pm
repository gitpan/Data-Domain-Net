package Data::Domain::Net;

use strict;
use warnings;
use Data::Domain::SemanticAdapter;


our $VERSION = '0.02';


use base 'Exporter';


our %map = (
    IPv4 => 'Net::IPAddress::IPv4',
    IPv6 => 'Net::IPAddress::IPv6',
);


our %EXPORT_TAGS = (
    util => [ keys %map ],
);


our @EXPORT_OK = @{ $EXPORT_TAGS{all} = [ map { @$_ } values %EXPORT_TAGS ] };


Data::Domain::SemanticAdapter::install_shortcuts(%map);


1;


__END__



=head1 NAME

Data::Domain::Net - Data domain classes for IP addresses

=head1 SYNOPSIS

    Data::Domain::Net->new;

=head1 DESCRIPTION

The classes in this distribution are data domain classes for these IP address
types:

=over 4

=item IPv4

See L<Data::Domain::Net::IPAddress::IPv4>.

=item IPv6

See L<Data::Domain::Net::IPAddress::IPv6>.

=back

Besides defining the methods described below, this class also exports, on
request, these functions:

=over 4

=item IPv4

A shortcut for creating a L<Data::Domain::Net::IPAddress::IPv4> object.
Arguments are passed on to the object's constructor.

=item IPv6

A shortcut for creating a L<Data::Domain::Net::IPAddress::IPv6> object.
Arguments are passed on to the object's constructor.

=back

By using the C<:all> tag, you can import all of them.

Data::Domain::Net inherits from L<Exporter>.

The superclass L<Exporter> defines these methods and functions:

    as_heavy(), export(), export_fail(), export_ok_tags(), export_tags(),
    export_to_level(), import(), require_version()

=head1 METHODS

=over 4



=back

=head1 TAGS

If you talk about this module in blogs, on del.icio.us or anywhere else,
please use the C<datadomainnet> tag.

=head1 VERSION 
                   
This document describes version 0.02 of L<Data::Domain::Net>.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests to
C<<bug-data-domain-net@rt.cpan.org>>, or through the web interface at
L<http://rt.cpan.org>.

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit <http://www.perl.com/CPAN/> to find a CPAN
site near you. Or see <http://www.perl.com/CPAN/authors/id/M/MA/MARCEL/>.

=head1 AUTHOR

Marcel GrE<uuml>nauer, C<< <marcel@cpan.org> >>

=head1 COPYRIGHT AND LICENSE

Copyright 2007 by Marcel GrE<uuml>nauer

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.


=cut

