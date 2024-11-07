#include <iostream>
#include <string>
using namespace std;

class Animal {
protected:
    string sons;
    int movimentacao;
public:
    virtual void set_values(string a, int b) {
        sons = a;
        movimentacao = b;
    }
    virtual string som() = 0;      
    virtual int movimentar() = 0; 
};
class Mamiferos : public Animal {
public:
    string som() {
        return sons;
    }
    int movimentar()  {
        return movimentacao;
    }
};
class Passaros : public Animal {
public:
    string som()  {
        return sons;
    }
    int movimentar()  {
        return movimentacao;
    }
};
class Repteis : public Animal {
public:
    string som()  {
        return sons; 
    }
    int movimentar() {
        return movimentacao; 
    }
};
 
int main(){
 Mamiferos mam;
    mam.set_values("muuuuuu", 40); 
    Passaros pas;
    pas.set_values("cra cra", 80); 
    Repteis rep;
    rep.set_values("tsssssss",10);
    cout << "Mamifero: " << endl;
    cout << "Este mamifero faz o som de " << mam.som() << " e chega até " << mam.movimentar() << " kilometros por hora." << endl;

    cout << "Passaro: " << endl;
    cout << "Este passaro faz o som de " << pas.som() << " e chega até " << pas.movimentar() << " kilometros por hora." << endl;

    cout << "Reptil: " << endl;
    cout << "Este reptil faz o som de " << rep.som() << " e chega até " << rep.movimentar() << " kilometros por hora." << endl;

    return 0;
}
