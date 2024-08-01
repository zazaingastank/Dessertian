extends CardState

var played: bool

func enter() -> void: 
	card_ui.color.color = Color.DARK_MAGENTA
	card_ui.state.text = "RELEASED"
	
	played = false 
	print("init")
	
	if not card_ui.targets.is_empty():
		played = true
		
		
func on_input(event:InputEvent) -> void:
	if played:
		print("played")
		return
		
	print("return")
	transition_requested.emit(self,CardState.State.BASE)
