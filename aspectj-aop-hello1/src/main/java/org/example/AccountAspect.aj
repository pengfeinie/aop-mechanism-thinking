package org.example;

public aspect AccountAspect {

    pointcut callWithDraw(int amount, Account acc) : call(boolean Account.withdraw(int)) && args(amount) && target(acc);

    before(int amount, Account acc) : callWithDraw(amount, acc) {
        System.out.println("before success.");
    }

    after(int amount, Account balance) : callWithDraw(amount, balance) {
        System.out.println("after success.");
    }
}
