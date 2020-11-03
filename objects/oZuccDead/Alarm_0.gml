alarm[0] = 30;

blip = !blip;
instance_create_layer(x + random_range(-15,15), y + random_range(-15,15), "Effects", oExplosion);