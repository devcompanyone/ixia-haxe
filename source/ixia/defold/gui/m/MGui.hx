package ixia.defold.gui.m;

import defold.types.Hash;
import defold.types.HashOrString;
using defold.Gui;

class MGui extends MGuiBase<GuiNode, NodeStyle> {

    override function idToTarget(id:HashOrString):GuiNode {
        return id.get_node();
    }

    override function pick(id:Hash, x:Float, y:Float):Bool {
        return Gui.pick_node(id.get_node(), x, y);
    }

    override function applyStyle(id:HashOrString, style:NodeStyle) {
        var node = id.get_node();
        if (style.enabled != null)
            node.set_enabled(style.enabled);
        if (style.flipbook != null)
            node.play_flipbook(style.flipbook);
    }
    
}