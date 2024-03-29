use 5.008;
use strict;
use warnings;

package Data::Domain::Net::IPAddress;
our $VERSION = '1.100840';
# ABSTRACT: Base class for IP address data domain classes
use parent 'Data::Domain::SemanticAdapter';
use constant OPTIONS => qw(
  -forbid_internal
);
1;


__END__
=pod

=head1 NAME

Data::Domain::Net::IPAddress - Base class for IP address data domain classes

=head1 VERSION

version 1.100840

=head1 DESCRIPTION

This class is a base class for IP address data domain classes. It defines the
C<-forbid_internal> option.

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests through the web interface at
L<http://rt.cpan.org/Public/Dist/Display.html?Name=Data-Domain-Net>.

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit L<http://www.perl.com/CPAN/> to find a CPAN
site near you, or see
L<http://search.cpan.org/dist/Data-Domain-Net/>.

The development version lives at
L<http://github.com/hanekomu/Data-Domain-Net/>.
Instead of sending patches, please fork this project using the standard git
and github infrastructure.

=head1 AUTHOR

  Marcel Gruenauer <marcel@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2007 by Marcel Gruenauer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

