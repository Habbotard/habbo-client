
package com.sulake.habbo.communication.messages.outgoing.navigator
{
    import com.sulake.core.communication.messages.IMessageComposer;
    import com.sulake.core.runtime.IDisposable;

    public class UpdateRoomThumbnailMessageComposer implements IMessageComposer, IDisposable 
    {

        private var _SafeStr_3708:Array;

        public function UpdateRoomThumbnailMessageComposer(_arg_1:int, _arg_2:int, _arg_3:int, _arg_4:int)
        {
            this._SafeStr_3708 = new Array();
            super();
            this._SafeStr_3708.push(_arg_1);
            this._SafeStr_3708.push(_arg_2);
            this._SafeStr_3708.push(_arg_3);
            this._SafeStr_3708.push(_arg_4);
        }
        public function addObj(_arg_1:int, _arg_2:int):void
        {
            this._SafeStr_3708.push(_arg_1);
            this._SafeStr_3708.push(_arg_2);
        }
        public function getMessageArray():Array
        {
            return (this._SafeStr_3708);
        }
        public function dispose():void
        {
            this._SafeStr_3708 = null;
        }
        public function get disposed():Boolean
        {
            return (false);
        }

    }
}//package com.sulake.habbo.communication.messages.outgoing.navigator

// UpdateRoomThumbnailMessageComposer = "_-1up" (String#18750, DoABC#2)
// IDisposable = "_-0dY" (String#4382, DoABC#2)
// _SafeStr_3708 = "_-2oC" (String#11, DoABC#2)
// getMessageArray = "_-2vs" (String#7197, DoABC#2)
// addObj = "_-1Uy" (String#17703, DoABC#2)


