camera {
    location <0, 2, -10>
    look_at <0, 1, 0>
    angle 45
}

light_source { <5, 10, -10> rgb <1, 1, 1> }

// Площина підлоги з шаховим патерном
plane {
    y, 0
    pigment {
        checker rgb <1, 0, 0>, rgb <0, 0, 1>
        scale 1
    }
    finish { reflection 0.2 }
}

// Сфера в центрі з відблисками
sphere {
    <0, 1, 0>, 1
    pigment { rgb <1, 1, 0> }
    finish { 
        ambient 0.2 
        diffuse 0.8 
        specular 1 
    }
}
