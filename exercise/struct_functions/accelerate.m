% Función para acelerar
function car = accelerate(car, amount)
    car.speed = car.speed + amount;
    car.deposit = car.deposit - car.speed * 0.01;
end