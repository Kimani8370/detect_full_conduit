#say checking conduit power
$execute positioned $(x) $(y) $(z) as @a[distance=..120] if predicate full_conduit:has_conduit_power run function full_conduit:full_conduit
$execute positioned $(x) $(y) $(z) if predicate full_conduit:check_full_conduit as @a[distance=..120] unless predicate full_conduit:has_conduit_power if block ~ ~ ~ conduit run schedule function full_conduit:valid_conduit_check_call 10t
