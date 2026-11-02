// Простий тест для перевірки рендерингу POV-Ray 3.1

camera {
   location <0, 2, -5>
   look_at <0, 0, 0>
}

light_source { <10, 10, -10> color rgb <1, 1, 1> }

sphere {
   <0, 0, 0>, 1.5
   pigment { color rgb <1, 0, 0> } // Червона куля
}
