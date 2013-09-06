#ifndef AS_SETTINGS_SETTINGS_SIMPLE_INCLUDE
	#define AS_SETTINGS_SETTINGS_SIMPLE_INCLUDE

namespace AS
{
	namespace Settings
	{
		class CVideo
		{
		public:
			int BPP;
			int Height;
			int Width;
		};

		class CTargetCamera
		{
		public:
			double EyeX;
			double EyeY;
			double EyeZ;
			double CenterX; 
			double CenterY;
			double CenterZ;
			double UpX;
			double UpY;
			double UpZ;
		};

		class CScene
		{
		public:
			CTargetCamera TargetCamera;
			CTargetCamera DefaultTargetCamera;
		};

		class CSettingsSimple
		{
		public:
			CScene Scene;
			CVideo Video;
			void Load();
			void Save();
		};
	}
}

#endif // AS_SETTINGS_SETTINGS_SIMPLE_INCLUDE