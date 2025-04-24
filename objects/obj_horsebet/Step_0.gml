x = 400+sin(current_time/100)*shake
y = 300+cos(current_time/100)*shake

shake = lerp(shake,0,0.05)