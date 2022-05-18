/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 0B1394C0
/// @DnDArgument : "xscale" "0.02"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "0.02"
/// @DnDArgument : "yscale_relative" "1"
image_xscale += 0.02;
image_yscale += 0.02;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 34BB9D27
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(image_xscale >= 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 18F5E83F
	/// @DnDParent : 34BB9D27
	image_xscale = 1;
	image_yscale = 1;

	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 2D3C2CF1
	/// @DnDInput : 3
	/// @DnDParent : 34BB9D27
	/// @DnDArgument : "var" "choice"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "1"
	/// @DnDArgument : "option_1" "2"
	/// @DnDArgument : "option_2" "3"
	var choice = choose(1, 2, 3);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D0A0CDC
	/// @DnDParent : 34BB9D27
	/// @DnDArgument : "var" "choice"
	/// @DnDArgument : "value" "1"
	if(choice == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1FFD99E0
		/// @DnDParent : 6D0A0CDC
		/// @DnDArgument : "objind" "obj_enemy"
		/// @DnDSaveInfo : "objind" "obj_enemy"
		instance_change(obj_enemy, true);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5BCACDF8
	/// @DnDParent : 34BB9D27
	/// @DnDArgument : "var" "choice"
	/// @DnDArgument : "value" "2"
	if(choice == 2)
	{
		/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 17AF99DB
		/// @DnDParent : 5BCACDF8
		/// @DnDArgument : "objind" "obj_enemy2"
		/// @DnDSaveInfo : "objind" "obj_enemy2"
		instance_change(obj_enemy2, true);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1FF79859
	/// @DnDParent : 34BB9D27
	/// @DnDArgument : "var" "choice"
	/// @DnDArgument : "value" "3"
	if(choice == 3)
	{
		/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4782E715
		/// @DnDParent : 1FF79859
		/// @DnDArgument : "objind" "obj_enemy3"
		/// @DnDSaveInfo : "objind" "obj_enemy3"
		instance_change(obj_enemy3, true);
	}
}