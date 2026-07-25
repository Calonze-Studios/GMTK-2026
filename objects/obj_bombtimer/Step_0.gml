y_offset = lerp(y_offset, y_offset_target, 0.2);

if abs(y_offset - y_offset_target) <= 0.1
	y_offset = y_offset_target;