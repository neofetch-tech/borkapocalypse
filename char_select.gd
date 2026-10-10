extends Control

func _ready():
	$VBoxContainer/Arsen.pressed.connect(func(): select_hero(1))
	$VBoxContainer/Ivan.pressed.connect(func(): select_hero(2))
	$VBoxContainer/Ostash.pressed.connect(func(): select_hero(3))
	$VBoxContainer/Sonia.pressed.connect(func(): select_hero(4))
	$VBoxContainer/Nadya.pressed.connect(func(): select_hero(5))
	$VBoxContainer/Ingra.pressed.connect(func(): select_hero(6))

func select_hero(hero_id: int):
	Global.selected_character = hero_id
	print("Вибрано персонажа №: ", Global.selected_character)
	get_tree().change_scene_to_file("res://main.tscn")
