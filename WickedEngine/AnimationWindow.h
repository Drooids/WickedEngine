#pragma once

struct Armature;
class wiGUI;
class wiWindow;
class wiLabel;
class wiCheckBox;
class wiSlider;
class wiComboBox;

class AnimationWindow
{
public:
	AnimationWindow(wiGUI* gui);
	~AnimationWindow();

	wiGUI* GUI;
	Armature* armature;
	void SetArmature(Armature* armature);

	wiWindow*	animWindow;
	wiComboBox*	actionsComboBox;
	wiSlider*	blendSlider;
	wiCheckBox* loopedCheckBox;

	wiComboBox*	actionsComboBox1;
	wiSlider*	blendSlider1;
	wiSlider*	weightSlider1;
	wiCheckBox* loopedCheckBox1;
};

