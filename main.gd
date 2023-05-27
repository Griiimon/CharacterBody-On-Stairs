extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_toggle_camera_button_toggled(button_pressed):
	if button_pressed:
		%"Static Camera".current= true
	else:
		%"FPS Camera".current= true

func _on_feet_h_slider_value_changed(value):
	%SeparationShape3D.shape.length= value
	%Feet.global_position.y= %SeparationShape3D.global_position.y - %SeparationShape3D.shape.length + 0.1


func _on_capsule_h_slider_value_changed(value):
	%"Capsule Body".mesh.height= value
	%CapsuleShape3D.shape.height= value
