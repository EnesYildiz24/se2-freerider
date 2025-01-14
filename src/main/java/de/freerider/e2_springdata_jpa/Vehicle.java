package de.freerider.e2_springdata_jpa;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Vehicle {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String make;
    private String model;
    private int seats;
    private String category;
    private String power;
    private String status;

    protected Vehicle() {}

    public Vehicle(String make, String model, int seats, String category, String power, String status) {
        this.make = make;
        this.model = model;
        this.seats = seats;
        this.category = category;
        this.power = power;
        this.status = status;
    }

    public Long getId() {
        return id;
    }

    public String getMake() {
        return make;
    }

    public void setMake(String make) {
        this.make = make;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getSeats() {
        return seats;
    }

    public void setSeats(int seats) {
        this.seats = seats;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getPower() {
        return power;
    }

    public void setPower(String power) {
        this.power = power;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return String.format("Vehicle[id=%d, make='%s', model='%s', seats=%d, category='%s', power='%s', status='%s']",
                id, make, model, seats, category, power, status);
    }
}
