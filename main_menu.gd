extends Control

func _ready():
	$VBoxContainer/BtnPlay.pressed.connect(_on_play_pressed)
	$VBoxContainer/BtnSettings.pressed.connect(_on_settings_pressed)
	$VBoxContainer/BtnExit.pressed.connect(_on_exit_pressed)

func _on_play_pressed():
	get_tree().change_scene_to_file("res://char_select.tscn")

func _on_settings_pressed():
	print("Settings presed (make it later)")

func _on_exit_pressed():
	get_tree().quit()
