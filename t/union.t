use Set::Scalar;

print "1..16\n";

my $a = Set::Scalar->new("a".."e");
my $b = Set::Scalar->new("c".."g");

my $d = $a->union($b);

print "not " unless $d eq "(a b c d e f g)";
print "ok 1\n";

print "not " unless $a eq "(a b c d e)";
print "ok 2\n";

print "not " unless $b eq "(c d e f g)";
print "ok 3\n";

my $e = $a + $b;

print "not " unless $e eq "(a b c d e f g)";
print "ok 4\n";

print "not " unless $a eq "(a b c d e)";
print "ok 5\n";

print "not " unless $b eq "(c d e f g)";
print "ok 6\n";

my $f = $b->union($a);

print "not " unless $f eq "(a b c d e f g)";
print "ok 7\n";

print "not " unless $a eq "(a b c d e)";
print "ok 8\n";

print "not " unless $b eq "(c d e f g)";
print "ok 9\n";

my $g = $b + $a;

print "not " unless $g eq "(a b c d e f g)";
print "ok 10\n";

print "not " unless $a eq "(a b c d e)";
print "ok 11\n";

print "not " unless $b eq "(c d e f g)";
print "ok 12\n";

my $h = $a + "x";

print "not " unless $h eq "(a b c d e x)";
print "ok 13\n";

print "not " unless $a eq "(a b c d e)";
print "ok 14\n";

my $i = "y" + $a;

print "not " unless $i eq "(a b c d e y)";
print "ok 15\n";

print "not " unless $a eq "(a b c d e)";
print "ok 16\n";




