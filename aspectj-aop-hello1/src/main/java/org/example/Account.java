package org.example;

public class Account {

    int balance = 20;

    public boolean withdraw(int amount) {
        System.out.println("withdraw success");
        if (balance < amount) {
            return false;
        } 
        balance = balance - amount;
        return true;
    }
}