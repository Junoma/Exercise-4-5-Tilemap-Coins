$NavigationAgent2D.target_position = player.global_position
		points = $NavigationAgent2D.get_next_path_position()
		$See.target_position = to_local(player.global_position)
		var c = $See.get_collider()
		if c == player:
			s = speed
	if points != Vector2.ZERO:
		print(points)
		var distance = points - global_position
		var direction = distance.normalized()
		$AnimatedSprite2D.flip_h = direction.x < 0
		if distance.length() > margin:
			velocity = direction*s
		else:
			velocity = Vector2.ZERO
		move_and_slide()
