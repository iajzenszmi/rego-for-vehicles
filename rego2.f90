program motor_registration
    implicit none

    ! Define the derived type for motor registration
    type :: motor_vehicle
        character(len=20) :: vehicle_type
        real :: engine_size
        character(len=10) :: reg_number
        character(len=30) :: owner_name
    end type motor_vehicle

    ! Declare an array of motor vehicles
    type(motor_vehicle), dimension(10) :: vehicles
    integer :: i, num_vehicles

    ! Get the number of vehicles to register
    print *, 'Enter the number of vehicles to register (max 10):'
    read *, num_vehicles

    if (num_vehicles > 10) then
        print *, 'Maximum number of vehicles is 10.'
        stop
    end if

    ! Input vehicle details
    do i = 1, num_vehicles
        print *, 'Enter details for vehicle ', i
        print *, 'Enter vehicle type (e.g., car, motorcycle):'
        read *, vehicles(i)%vehicle_type
        print *, 'Enter engine size (in liters):'
        read *, vehicles(i)%engine_size
        print *, 'Enter registration number:'
        read *, vehicles(i)%reg_number
        print *, 'Enter owner name:'
        read *, vehicles(i)%owner_name
    end do

    ! Display registered vehicles
    print *, 'Motor Vehicles Registered:'
    do i = 1, num_vehicles
        print *, 'Vehicle ', i
        print *, '  Type: ', vehicles(i)%vehicle_type
        print *, '  Engine Size: ', vehicles(i)%engine_size, ' liters'
        print *, '  Registration Number: ', vehicles(i)%reg_number
        print *, '  Owner: ', vehicles(i)%owner_name
    end do

end program motor_registration

