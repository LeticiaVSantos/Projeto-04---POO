package br.com.fatecpg.cadastro;

import java.util.ArrayList;

public class Fornecedores {
    private String nome;
    private String razao;
    private String cnpj;
    private String email;
    private String telefone;
    private String endereco;
    public static ArrayList<Fornecedores> list;
    public static ArrayList<Fornecedores> getList(){
        if(list==null){
        list = new ArrayList<>();
        }
    return list;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public String getRazao() {
        return razao;
    }

    public void setRazao(String razao) {
        this.razao = razao;
    }
    
    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }
    
}