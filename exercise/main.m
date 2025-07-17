% DON'T EDIT THIS FILE, ONLY USE IT TO TEST AND DEVELOP YOUR CLASSES

%% Struct example
car1_s.brand = 'Toyota';
car1_s.model = 'Corolla';
car1_s.year = 2020;
car1_s.speed = 0;
car1_s.deposit = 50; %L

car1_s = accelerate(car1_s, 10);
disp(['Speed after acceleration: ', num2str(car1_s.speed), ', and deposit: ', num2str(car1_s.deposit)]);
car1_s = brake(car1_s, 5);
disp(['Speed after braking: ', num2str(car1_s.speed)]);


car2_s.brand = 'Rimac';
car2_s.model = 'Nevera';
car2_s.year = 2021;
car2_s.speed = 0;
car2_s.deposit = 100; %battery

car2_s = accelerate(car2_s, 20);
disp(['Speed after acceleration: ', num2str(car2_s.speed), ', and deposit: ', num2str(car2_s.deposit)]);
car2_s = brake_electrical(car2_s, 10);
disp(['Speed and battery after electrical braking: ', num2str(car2_s.speed), ', ', num2str(car2_s.deposit)]);



%% Object-oriented example
car1 = Car('Toyota', 'Corolla', 2020, 50);
car1.accelerate(10);
disp(['Speed after acceleration: ', num2str(car1.speed), ', and deposit: ', num2str(car1.deposit)]);
car1.brake(5);
disp(['Speed after braking: ', num2str(car1.speed)]);

assert(isequal(car1.speed, car1_s.speed), 'Car speed after braking should be 5');
assert(isequal(car1.deposit, car1_s.deposit), 'Car deposit after braking should be 49.9');


car2 = ElectricCar('Rimac', 'Nevera', 2021);
car2.accelerate(20);
disp(['Speed after acceleration: and battery ', num2str(car2.speed), ', ', num2str(car2.deposit)]);


car2.brake(10);
disp(['Speed and battery after electrical braking: ', num2str(car2.speed), ', ', num2str(car2.deposit)]);
assert(isequal(car2.speed, car2_s.speed), 'Car speed after electrical braking should be 10');
assert(isequal(car2.deposit, car2_s.deposit), 'Car deposit after electrical braking should be 99.82');


