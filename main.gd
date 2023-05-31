extends Node3D


func _physics_process(delta):
	if %"3rd Person Camera".current:
		%"3rd Person Camera".global_position.z= $Player.global_position.z
		%"3rd Person Camera".global_position.x= $Player.global_position.x - 5

func _on_toggle_camera_button_toggled(button_pressed):
	if button_pressed:
		%"3rd Person Camera".current= true
	else:
		%"FPS Camera".current= true

func _on_feet_h_slider_value_changed(value):
	%SeparationShape3D.shape.length= value
	%Feet.global_position.y= %SeparationShape3D.global_position.y - %SeparationShape3D.shape.length + 0.1


func _on_capsule_h_slider_value_changed(value):
	%"Capsule Body".mesh.height= value
	%CapsuleShape3D.shape.height= value
