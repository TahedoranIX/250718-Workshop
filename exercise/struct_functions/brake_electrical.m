% Función para regen brake
function car = brake_electrical(car, amount)
    car.speed = max(car.speed - amount, 0);
    regen = 0.002 * amount;  % regeneración de batería ficticia
    if car.deposit < 100
        car.deposit = min(car.deposit + regen, 100);
    else
        warning('Batería completa. No se puede regenerar.');
    end
end