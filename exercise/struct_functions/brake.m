% Función para frenar
function car = brake(car, amount)
    car.speed = max(car.speed - amount, 0);
end