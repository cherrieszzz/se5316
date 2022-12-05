package haut.hati.zpy.bean;

public class Case01Bean {
    private double strat;
    private double gc;
    private double gb;

    private int n;

    public Case01Bean(double start_num, double gc_num, double gb_num, int n_num) {
        this.strat = start_num;
        this.gc = gc_num;
        this.gb = gb_num;
        this.n = n_num;
    }

    public void Case01Bean(double start, double gc, double gb) {
        this.strat = start;
        this.gc = gc;
        this.gb = gb;
    }

    public double getStrat() {
        return strat;
    }
    public double getgc() {
        return  gc;
    }
    public double getgb(){
        return  gb;
    }
    public double getres_dc() {
        double result;
        result = (strat * n) + n * (n - 1) * gc;
        return result;
    }
    public double getres_db() {
        if(gb == 1) {
            return strat * n;
        } else {
            return ( strat * (1 - Math.pow(gb, n)) ) / (1 - gb);
        }
    }
}
