import serial
import time
import numpy as np


def sigmoid(x):
    return 1 / (1 + np.exp(-x))


def feed_forward(X, W):
    h = np.dot(X, W)
    return sigmoid(h)


def main():
    X = np.array([[1, 1], [1, -1], [-1, 1], [-1, -1]])

    outputs = {(1, 1): 1, (1, -1): 2, (-1, 1): 3, (-1, -1): 0}

    W = np.random.random((2, 1))

    continuar = "S"
    while continuar == "S":
        x0 = int(input("Ingrese valor de x0: "))
        x1 = int(input("Ingrese valor de x1: "))
        X_input = np.array([x0, x1])

        if outputs[(x0, x1)] == 1:
            arduino.write(b"e")
        elif outputs[(x0, x1)] == 2:
            arduino.write(b"x")
        elif outputs[(x0, x1)] == 3:
            arduino.write(b"y")
        else:
            arduino.write(b"a")

        prediction = feed_forward(X_input, W)
        print("Salida deseada:", outputs[(x0, x1)])
        print("Salida de la red neuronal:", prediction[0])
        continuar = input("Desea seguir (S) o salir(X):")


if __name__ == "__main__":
    arduino = serial.Serial("COM3", 9600)
    time.sleep(2)
    main()
arduino.close()
