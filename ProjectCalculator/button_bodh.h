#ifndef BUTTON_BODH_H
#define BUTTON_BODH_H
#include <QObject>
#include <QString>
class ButtonCalc : public QObject {
    Q_OBJECT
public:
    explicit ButtonCalc(QObject *parent = nullptr);
    Q_INVOKABLE QString get_bin() { return QString("%1").arg(value_dec, 0,  2); }
    Q_INVOKABLE QString get_oct() { return QString("%1").arg(value_dec, 0,  8); }
    Q_INVOKABLE QString get_dec() { return QString("%1").arg(value_dec, 0, 10); }
    Q_INVOKABLE QString get_hex() { return QString("%1").arg(value_dec, 0, 16); }
    Q_INVOKABLE QString get_result() { return QString("%1").arg(result, 0, bodh); }
    Q_INVOKABLE void set_number(int num) { value_dec = value_dec * bodh + num; }
    Q_INVOKABLE void del_number(int all = 0) {
        if (all == 1) {
            if (value_dec == 0) {
                result = 0;
            } else {
                value_dec = 0;
            }
        } else {
            value_dec /= bodh;
        }
    }
    Q_INVOKABLE void set_oper(int oper) {
        if (value_dec != 0) {
            if (operation == 0) {
                result += value_dec;
            } else if (operation == 1) {
                result -= value_dec;
            } else if (operation == 2) {
                result *= value_dec;
            } else if (operation == 3) {
                result /= value_dec;
            } else if (operation == 4) {
                result %= value_dec;
            } else if (operation == 5) {
                for (int i = 0; i < value_dec; i++) {
                    result *= 2;
                }
            } else if (operation == 6) {
                for (int i = 0; i < value_dec; i++) {
                    result /= 2;
                }
            }
        }
        if (oper != -1) {
            operation = oper;
        }
        value_dec = 0;
    }
    Q_INVOKABLE void changeBODH(int b) { bodh = b; }
    Q_INVOKABLE int getBODH() {
        return bodh;
    }
    Q_INVOKABLE int get_oper() {
        return operation;
    }
private:
    int operation = 0;
    int bodh = 10;
    long long result = 0;
    long long value_dec = 0;
};
#endif // BUTTON_BODH_H
