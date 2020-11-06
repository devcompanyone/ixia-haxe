package ixia.defold.gui.m;

import defold.support.ScriptOnInputAction;
import defold.types.Hash;

abstract InputActionListener(Dynamic)
from Void->Void to Void->Void
from Hash->Void to Hash->Void
from Hash->ScriptOnInputAction->Void to Hash->ScriptOnInputAction->Void {

    public inline function call(actionID:Hash, action:ScriptOnInputAction) {
        this(actionID, action);
    }

}