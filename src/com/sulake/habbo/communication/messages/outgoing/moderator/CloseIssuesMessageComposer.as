
package com.sulake.habbo.communication.messages.outgoing.moderator
{
    import com.sulake.core.communication.messages.IMessageComposer;
    import com.sulake.core.runtime.IDisposable;

    public class CloseIssuesMessageComposer implements IMessageComposer, IDisposable 
    {

        private var _SafeStr_3708:Array;

        public function CloseIssuesMessageComposer(_arg_1:Array, _arg_2:int)
        {
            this._SafeStr_3708 = new Array();
            super();
            this._SafeStr_3708.push(_arg_2);
            this._SafeStr_3708.push(_arg_1.length);
            var _local_3:int;
            while (_local_3 < _arg_1.length) {
                this._SafeStr_3708.push(_arg_1[_local_3]);
                _local_3++;
            };
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
}//package com.sulake.habbo.communication.messages.outgoing.moderator

// CloseIssuesMessageComposer = "_-1BQ" (String#16915, DoABC#2)
// IDisposable = "_-0dY" (String#4382, DoABC#2)
// _SafeStr_3708 = "_-2oC" (String#11, DoABC#2)
// getMessageArray = "_-2vs" (String#7197, DoABC#2)


