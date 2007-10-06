#
# $Id: test.t,v 1.1 1996/03/17 08:49:40 jah Exp jah $
#

use Set::Scalar;

print "1..20\n";

$no_create_test = 0; # fool -w
$no_create_test = 1;

require 't/create.t'; # $a $d $i $n $u get created

print 'not ' if ($a->is_null);
print "ok 1\n";

print 'not ' if ($a->is_universal);
print "ok 2\n";

print 'not ' if ($a->is_inverted);
print "ok 3\n";

print 'not ' if ($a->is_valued);
print "ok 4\n";

print 'not ' if ($d->is_null);
print "ok 5\n";

print 'not ' if ($d->is_universal);
print "ok 6\n";

print 'not ' if ($d->is_inverted);
print "ok 7\n";

print 'not ' unless ($d->is_valued);
print "ok 8\n";

print 'not ' if ($i->is_null);
print "ok 9\n";

print 'not ' if ($i->is_universal);
print "ok 10\n";

print 'not ' unless ($i->is_inverted);
print "ok 11\n";

print 'not ' if ($i->is_valued);
print "ok 12\n";

print 'not ' unless ($n->is_null);
print "ok 13\n";

print 'not ' if ($n->is_universal);
print "ok 14\n";

print 'not ' if ($n->is_inverted);
print "ok 15\n";

print 'not ' if ($n->is_valued);
print "ok 16\n";

print 'not ' if ($u->is_null);
print "ok 17\n";

print 'not ' unless ($u->is_universal);
print "ok 18\n";

print 'not ' if ($u->is_inverted);
print "ok 19\n";

print 'not ' if ($u->is_valued);
print "ok 20\n";

# eof
