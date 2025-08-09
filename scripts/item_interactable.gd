extends Node2D

@onready var sprite = $Sprite2D
@onready var circle = $HotspotCircle
@onready var timer = $Timer
@onready var tween = $Tween
var clicked = false

func _ready():
    circle.visible = false

func trigger_interaction():
    tween.tween_property(sprite, "scale", Vector2(1.2, 1.2), 0.2)
    tween.tween_callback(show_circle)

func show_circle():
    circle.visible = true
    circle.scale = Vector2(0.5, 0.5)
    tween.tween_property(circle, "scale", Vector2(1, 1), 0.2)
    clicked = false
    timer.start(2)

func _input(event):
    if event is InputEventMouseButton and event.pressed:
        if circle.visible and circle.get_rect().has_point(to_local(event.position)):
            clicked = true
            print("✅ Clic correcto")
            hide_circle()

func _on_Timer_timeout():
    if not clicked:
        print("❌ Fallaste")
    hide_circle()

func hide_circle():
    circle.visible = false
    sprite.scale = Vector2(1, 1)
