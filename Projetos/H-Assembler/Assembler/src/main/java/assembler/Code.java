/**
 * Curso: Elementos de Sistemas
 * Arquivo: Code.java
 */

package assembler;

/**
 * Traduz mnemônicos da linguagem assembly para códigos binários da arquitetura Z0.
 */
public class Code {

    /**
     * Retorna o código binário do(s) registrador(es) que vão receber o valor da instrução.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 4 bits) com código em linguagem de máquina para a instrução.
     */
    public static String dest(String[] mnemnonic) {
        char d3= '0', d2= '0', d1= '0', d0 = '0';
        StringBuilder sb = new StringBuilder();
        if(mnemnonic.length == 2){
            if(mnemnonic[0].equals("jmp") || mnemnonic[0].equals("je") || mnemnonic[0].equals("jne") || mnemnonic[0].equals("jg") || mnemnonic[0].equals("jge") || mnemnonic[0].equals("jl") || mnemnonic[0].equals("jle")){
                d3 = '0';
                d2 = '0';
                d1 = '0';
                d0 = '0';
            } else {
                switch (mnemnonic[1]) {
                    case "%A":
                        d3 = '1';
                        break;
                    case "%D":
                        d1 = '1';
                        break;
                    case "%S":
                        d2 = '1';
                        break;
                    case "(%A)":
                        d0 = '1';
                        break;
                }
            }

        }
        if(mnemnonic.length == 3){
            switch (mnemnonic[2]){
                case "%A":
                    d3 = '1';
                    break;
                case "%D":
                    d1 = '1';
                    break;
                case "%S":
                    d2 = '1';
                    break;
                case "(%A)":
                    d0 = '1';
                    break;
            }
        }
        if(mnemnonic.length == 4){
            switch (mnemnonic[2]){
                case "%A":
                    d3 = '1';
                    break;
                case "%D":
                    d1 = '1';
                    break;
                case "%S":
                    d2 = '1';
                    break;
                case "(%A)":
                    d0 = '1';
                    break;
            }
            switch (mnemnonic[3]){
                case "%A":
                    d3 = '1';
                    break;
                case "%D":
                    d1 = '1';
                    break;
                case "%S":
                    d2 = '1';
                    break;
                case "(%A)":
                    d0 = '1';
                    break;

            }
            if(mnemnonic[0].equals("addw") || mnemnonic[0].equals("subw") || mnemnonic[0].equals("rsubw") || mnemnonic[0].equals("andw")){
                switch (mnemnonic[3]){
                    case "%A":
                        d3 = '1';
                        d2 = '0';
                        d1 = '0';
                        d0 = '0';
                        break;
                    case "%D":
                        d1 = '1';
                        d3 = '0';
                        d2 = '0';
                        d0 = '0';
                        break;
                    case "%S":
                        d2 = '1';
                        d3 = '0';
                        d1 = '0';
                        d0 = '0';
                        break;
                    case "(%A)":
                        d0 = '1';
                        d3 = '0';
                        d2 = '0';
                        d1 = '0';
                        break;

                }
            }

        }
        sb.append(d3);
        sb.append(d2);
        sb.append(d1);
        sb.append(d0);
        return sb.toString();

    }


    /**
     * Retorna o código binário do mnemônico para realizar uma operação de cálculo.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 7 bits) com código em linguagem de máquina para a instrução.
     */
    public static String comp(String[] mnemnonic) {
        String r = "000";
        String c = "000000";

        if (mnemnonic.length == 2){
            switch (mnemnonic[1]){
                case "%A":
                    r = "000";
                break;
                case "%D":
                    r=  "000";
                break;
                case "%S":
                    r=  "001";
                break;
                case "(%A)":
                    r=  "010";
                break;
                default:
                    r = "111";
            }
        }

        if (mnemnonic.length >= 3){
           if ((mnemnonic[1] == "%A" && mnemnonic[2] == "%D") || (mnemnonic[1] == "%D" && mnemnonic[2] == "%A"))
               r = "000";
           if ((mnemnonic[1] == "%S" && mnemnonic[2] == "%D") || (mnemnonic[1] == "%D" && mnemnonic[2] == "%S"))
               r = "101";
            if ((mnemnonic[1] == "(%A)" && mnemnonic[2] == "%D") || (mnemnonic[1] == "%D" && mnemnonic[2] == "(%A)") || (mnemnonic[1] == "(%A)" && mnemnonic[2] == "$1" ))
                r = "010";
            if ((mnemnonic[1] == "%S" && mnemnonic[2] == "%A") || (mnemnonic[1] == "%A" && mnemnonic[2] == "%S") || (mnemnonic[1] == "%S" && mnemnonic[2] == "$1"))
                r = "001";
            if ((mnemnonic[1] == "%S" && mnemnonic[2] == "(%A)") || (mnemnonic[1] == "(%A)" && mnemnonic[2] == "%S"))
                r = "011";
            if ((mnemnonic[1] == "%A" && mnemnonic[2] == "(%A)"))
                r = "000";
            if ((mnemnonic[1] == "(%A)" && mnemnonic[2] == "%A"))
                r = "010";
        }



        switch (mnemnonic[0]) {
            case "leaw":
                c = "000000";
                break;

            case "movw":
                if (mnemnonic[1] == "%D" || mnemnonic[1] == "%S")
                    c = "001100";
                else
                    c = "110000";
                break;

            case  "decw":
                if (mnemnonic[1] == "%D" || mnemnonic[1] == "%S")
                    c = "001110";
                else
                    c = "110010";
                break;

            case  "incw":
                if (mnemnonic[1] == "%D" || mnemnonic[1] == "%S")
                    c = "011111";
                else
                    c = "110111";
                break;
            case "addw":
                    c = "000010";
                break;
            case  "subw":
                if ( ((mnemnonic[1] == "%D" || mnemnonic[1] == "%S") &&  mnemnonic[2] == "%A" ) || ((mnemnonic[1] == "%D" || mnemnonic[1] == "%S") &&  mnemnonic[2] == "(%A)" ) || (mnemnonic[1] == "%S"&& mnemnonic[2] == "%D") )

                    c = "010011";
                else if (mnemnonic[1] == "%A" && mnemnonic[2] == "$1"|| (mnemnonic[1] == "(%A)" && mnemnonic[2] == "$1"))
                    c = "110010";
                else
                    c = "000111";
                break;



            case  "rsubw":
                    c = "000111";
                break;
            case  "andw":
                    c = "000000";
                break;
            case  "orw":
                    c = "010101";
                break;
            case  "notw":
                if (mnemnonic[1] == "%D" || mnemnonic[1] == "%S")
                    c = "001101";
                else
                    c = "110001";
                break;
            case  "negw":
                if (mnemnonic[1] == "%D" || mnemnonic[1] == "%S")
                    c = "001111";
                else
                    c = "110011";
                break;
            default:
                c = "111111";
        }


        if(mnemnonic.length == 2) {
            if (mnemnonic[0].equals("jmp") || mnemnonic[0].equals("je") || mnemnonic[0].equals("jne") || mnemnonic[0].equals("jg") || mnemnonic[0].equals("jge") || mnemnonic[0].equals("jl") || mnemnonic[0].equals("jle")) {
                switch (mnemnonic[1]) {
                    case "%D":
                        c = "001100";
                    case "%S":
                        c = "001100";
                        break;
                    case "%A": case "(%A)":
                        c = "000011";
                        break;
                }
            }

        }

        return r+c;
    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de jump (salto).
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 3 bits) com código em linguagem de máquina para a instrução.
     */
    public static String jump(String[] mnemnonic) {
        switch (mnemnonic[0]) {
            case "jmp":
                return "111";

            case "jle":
                return "110";

            case "jne":
                return "101";

            case "jl":
                return "100";

            case "jge":
                return "011";

            case "je":
                return "010";

            case "jg":
                return "001";
            default:
                return "000";


        }
    }

    /**
     * Retorna o código binário de um valor decimal armazenado numa String.
     * @param  symbol valor numérico decimal armazenado em uma String.
     * @return Valor em binário (String de 15 bits) representado com 0s e 1s.
     */
    public static String toBinary(String symbol) {
        int value = Integer.valueOf(symbol);
        String binary = Integer.toBinaryString(value);
        return String.format("%1$16s", binary).replace(" ", "0");
    }

}
