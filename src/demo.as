package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.system.Capabilities;
	
	import so.cuo.platform.unity.*;
	
	public class demo extends Sprite
	{
		private var u3d:UnityAds;
		public static function isIOS():Boolean {
			return Capabilities.manufacturer.indexOf("iOS") != -1;
		}
		public function demo()
		{
			super();
			
			stage.align=StageAlign.TOP_LEFT;
			initUI();
			u3d= UnityAds.getInstance();
			if (u3d.supportDevice)
			{
				if (isIOS()) {
					u3d.setUnityKeys("unity game id for ios");
				}else{
					u3d.setUnityKeys("unity game id for android");
				}
				u3d.addEventListener(UnityAdsEvent.onVideoLoadedSuccess, onAdReceived);
				u3d.addEventListener(UnityAdsEvent.onUnityServicesError, onAdReceivedFail);
				u3d.addEventListener(UnityAdsEvent.onUnityBannerError, onAdReceivedFail);
				u3d.addEventListener(UnityAdsEvent.onVideoStateChange, onAdReceivedFail);
			}else{
				trace("not support device");
			}
		}
		
		protected function onAdReceivedFail(event:UnityAdsEvent):void
		{
			// TODO Auto-generated method stub
			trace(event.data,event.type);
		}
		
		private function initUI():void
		{
			stage.align=StageAlign.TOP_LEFT;
			var ui:UI=new UI(onClick);
			addChild(ui);
			ui.addButton("video", 20, 120);
			ui.addButton("banner", 200, 120);
		}

		private function onClick(label:String):void
		{
			trace("click label:",label,u3d.isVideoReady());
		 	
			 if(label=="video"){
				if(u3d.isVideoReady()){
					u3d.showVideo();
				}
			}
			 if(label=="banner"){
				 u3d.showBanner("banner");
			 }
		}

		protected function onAdReceived(event:UnityAdsEvent):void
		{
//			u3d.showVideo();
		}
	}
}
