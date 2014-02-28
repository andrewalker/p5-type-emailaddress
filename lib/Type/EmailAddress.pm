package Type::EmailAddress;
# ABSTRACT: type constraints for email addresses

use warnings;
use strict;
use Email::Valid ();
use Type::Utils qw(declare as where inline_as);
use Types::Standard qw( Str );
use Type::Library
   -base,
   -declare => qw( EmailAddress );

# VERSION;

declare EmailAddress,
  as Str,
  where { Email::Valid->address( -address => $_ ) },
  inline_as {
     my ($constraint, $varname) = @_;
     return sprintf(
        '%s and Email::Valid->address( -address => %s )',
        $constraint->parent->inline_check($varname),
        $varname,
     );
  };

1;
