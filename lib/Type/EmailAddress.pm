package Type::EmailAddress;
use warnings;
use strict;
use Type::Utils -all;
use Types::Standard qw( Str );
use Type::Library
   -base,
   -declare => qw( EmailAddress );

# VERSION;

1;
