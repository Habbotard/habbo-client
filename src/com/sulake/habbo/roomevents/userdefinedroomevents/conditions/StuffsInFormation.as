
package com.sulake.habbo.roomevents.userdefinedroomevents.conditions
{
    import com.sulake.habbo.roomevents.HabboUserDefinedRoomEvents;
    import com.sulake.habbo.roomevents.userdefinedroomevents.common.SliderWindowController;
    import com.sulake.habbo.roomevents.userdefinedroomevents.UserDefinedRoomEventsCtrl;
    import com.sulake.core.window.IWindowContainer;
    import flash.events.Event;
    import com.sulake.habbo.communication.messages.incoming.userdefinedroomevents.Triggerable;
    import com.sulake.core.window.components.IRadioButtonWindow;
    import com.sulake.core.window.components.ISelectorWindow;
    import com.sulake.habbo.roomevents.userdefinedroomevents.triggerconfs.*;

    public class StuffsInFormation implements ConditionType 
    {

        private var _SafeStr_5221:HabboUserDefinedRoomEvents;
        private var _slider:SliderWindowController;

        public function get code():int
        {
            return (ConditionCodes._SafeStr_7670);
        }
        public function get requiresFurni():int
        {
            return (UserDefinedRoomEventsCtrl.STUFF_SELECTION_OPTION_BY_ID);
        }
        public function get hasStateSnapshot():Boolean
        {
            return (false);
        }
        public function readIntParamsFromForm(_arg_1:IWindowContainer):Array
        {
            var _local_2:Array = new Array();
            _local_2.push(int(this._slider.getValue()));
            _local_2.push(this.getFormationSelector(_arg_1).getSelected().id);
            return (_local_2);
        }
        public function readStringParamFromForm(_arg_1:IWindowContainer):String
        {
            return ("");
        }
        public function onInit(_arg_1:IWindowContainer, _arg_2:HabboUserDefinedRoomEvents):void
        {
            this._SafeStr_5221 = _arg_2;
            this._slider = new SliderWindowController(_arg_2, this.getInput(_arg_1), _arg_2.assets, 2, 10, 1);
            this._slider.setValue(3);
            this._slider.addEventListener(Event.CHANGE, this.onSliderChange);
            _arg_2.refreshButton(_arg_1, "move_diag", true, null, 0);
            _arg_2.refreshButton(_arg_1, "move_vrt", true, null, 0);
        }
        public function onEditStart(_arg_1:IWindowContainer, _arg_2:Triggerable):void
        {
            this._slider.setValue(_arg_2.intParams[0]);
            var _local_3:int = _arg_2.intParams[1];
            this.getFormationSelector(_arg_1).setSelected(this.getFormationRadio(_arg_1, _local_3));
        }
        public function get hasSpecialInputs():Boolean
        {
            return (true);
        }
        private function getInput(_arg_1:IWindowContainer):IWindowContainer
        {
            return ((_arg_1.findChildByName("slider_container") as IWindowContainer));
        }
        private function onSliderChange(_arg_1:Event):void
        {
            var _local_2:SliderWindowController;
            var _local_3:Number;
            var _local_4:int;
            if (_arg_1.type == Event.CHANGE){
                _local_2 = (_arg_1.target as SliderWindowController);
                if (_local_2){
                    _local_3 = _local_2.getValue();
                    _local_4 = int(_local_3);
                    this._SafeStr_5221.localization.registerParameter("wiredfurni.params.requiredformationsize", "furnis", ("" + _local_4));
                };
            };
        }
        private function getFormationRadio(_arg_1:IWindowContainer, _arg_2:int):IRadioButtonWindow
        {
            return (IRadioButtonWindow(_arg_1.findChildByName((("formation_" + _arg_2) + "_radio"))));
        }
        private function getFormationSelector(_arg_1:IWindowContainer):ISelectorWindow
        {
            return (ISelectorWindow(_arg_1.findChildByName("formation_selector")));
        }

    }
}//package com.sulake.habbo.roomevents.userdefinedroomevents.conditions

// ISelectorWindow = "_-1aY" (String#1714, DoABC#2)
// IRadioButtonWindow = "_-234" (String#1804, DoABC#2)
// Triggerable = "_-2oD" (String#7043, DoABC#2)
// SliderWindowController = "_-GO" (String#8002, DoABC#2)
// ConditionType = "_-262" (String#6162, DoABC#2)
// ConditionCodes = "_-3Jq" (String#7699, DoABC#2)
// getSelected = "_-88" (String#7825, DoABC#2)
// code = "_-12Y" (String#4926, DoABC#2)
// requiresFurni = "_-1i4" (String#5711, DoABC#2)
// hasStateSnapshot = "_-2bG" (String#6777, DoABC#2)
// onInit = "_-10U" (String#4881, DoABC#2)
// onEditStart = "_-2Cw" (String#6305, DoABC#2)
// intParams = "_-kt" (String#24066, DoABC#2)
// readIntParamsFromForm = "_-0uD" (String#4727, DoABC#2)
// readStringParamFromForm = "_-gW" (String#8522, DoABC#2)
// hasSpecialInputs = "_-pV" (String#8699, DoABC#2)
// _SafeStr_5221 = "_-0D2" (String#124, DoABC#2)
// onSliderChange = "_-2q0" (String#307, DoABC#2)
// _SafeStr_7670 = "_-2mm" (String#20952, DoABC#2)
// getFormationSelector = "_-Fq" (String#22845, DoABC#2)
// getFormationRadio = "_-3Hh" (String#22189, DoABC#2)


