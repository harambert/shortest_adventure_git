if disappear {
	image_alpha -= 0.02;
}

if image_alpha <= 0 {
	baphDead = true
	instance_destroy();
}