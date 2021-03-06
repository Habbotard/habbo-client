
package com.sulake.habbo.communication.messages.incoming.catalog
{
    import com.sulake.core.communication.messages.MessageEvent;
    import com.sulake.core.communication.messages.IMessageEvent;
    import com.sulake.habbo.communication.messages.parser.catalog.IsOfferGiftableMessageParser;

    public class IsOfferGiftableMessageEvent extends MessageEvent implements IMessageEvent 
    {

        public function IsOfferGiftableMessageEvent(_arg_1:Function)
        {
            super(_arg_1, IsOfferGiftableMessageParser);
        }
        public function getParser():IsOfferGiftableMessageParser
        {
            return ((this._parser as IsOfferGiftableMessageParser));
        }

    }
}//package com.sulake.habbo.communication.messages.incoming.catalog

// IsOfferGiftableMessageEvent = "_-3Dt" (String#22029, DoABC#2)
// IsOfferGiftableMessageParser = "_-0cA" (String#4346, DoABC#2)
// _parser = "_-2Ja" (String#19793, DoABC#2)
// getParser = "_-0B0" (String#1418, DoABC#2)
// MessageEvent = "_-2qA" (String#7082, DoABC#2)


