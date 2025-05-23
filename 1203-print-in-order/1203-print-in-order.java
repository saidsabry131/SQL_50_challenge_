
class Foo {

    private CountDownLatch firstDone;
    private CountDownLatch secondDone;

    public Foo() {
        firstDone = new CountDownLatch(1);
        secondDone = new CountDownLatch(1);
    }

    public void first(Runnable printFirst) throws InterruptedException {
        printFirst.run(); // prints "first"
        firstDone.countDown(); // signal that first is done
    }

    public void second(Runnable printSecond) throws InterruptedException {
        firstDone.await(); // wait until first is done
        printSecond.run(); // prints "second"
        secondDone.countDown(); // signal that second is done
    }

    public void third(Runnable printThird) throws InterruptedException {
        secondDone.await(); // wait until second is done
        printThird.run(); // prints "third"
    }
}
