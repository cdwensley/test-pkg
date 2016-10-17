InstallMethod( IsOfNoInterestWhatsoever, "generic method for a group", true, 
    [ IsGroup ], 0,
function( gp )

    local  ok;
    if ( Size(gp) = 1 ) then 
        ok := true;
    else 
        ok := false;
    fi;
    return ok;
end );
