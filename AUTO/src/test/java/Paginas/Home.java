package Paginas;

import java.io.IOException;

import org.openqa.selenium.By;

import Adaptador.AdaptadorSelenium;

public class Home {

	private AdaptadorSelenium adaptador;
	private String rutaEvidencia = "";

	public Home(String url, String rutaEvidencia) {
		adaptador = AdaptadorSelenium.getInstance(url);
		this.rutaEvidencia = rutaEvidencia;
	}
	public void abrirUrl(String url) throws IOException {
		adaptador.abrirURL(url);
	}
	public void test1y2()throws IOException {
		adaptador.findElementById(("user")).sendKeys("117830806");
		adaptador.findElementById(("pass")).click();
		adaptador.findElementById(("pass")).sendKeys("user");
		adaptador.tomarEvidencia(this.rutaEvidencia+"Login Ingreso de credenciales.png");
		adaptador.findCssSelector((".btn")).click();
		adaptador.findElementByText(("Pacientes")).click();
		adaptador.findCssSelector((".show > .dropdown-item:nth-child(3) > span")).click();
		adaptador.findElementById(("idPaciente")).click();
		adaptador.findElementById(("idPaciente")).sendKeys("798933447");
		adaptador.findElementById(("fechaNaci")).click();
		adaptador.findElementById(("fechaNaci")).click();
		adaptador.findElementById(("fechaNaci")).sendKeys("2022-08-13");
		adaptador.findElementById(("fechaNaci")).click();
		adaptador.findElementById(("fechaNaci")).click();
		adaptador.findElementById(("fechaNaci")).click();
		adaptador.findElementById(("fechaNaci")).click();
		adaptador.findElementById(("fechaNaci"));
		adaptador.findElementById(("fechaNaci")).sendKeys("0001-08-13");
		adaptador.findElementById(("fechaNaci")).sendKeys("0019-08-13");
		adaptador.findElementById(("fechaNaci")).sendKeys("0199-08-13");
		adaptador.findElementById(("fechaNaci")).sendKeys("1999-08-13");
		adaptador.findElementById(("nombres")).click();
		adaptador.findElementById(("nombres")).sendKeys("Matthew ");
		adaptador.findElementById(("apellidos")).click();
		adaptador.findElementById(("apellidos")).sendKeys("Russell");
		adaptador.findElementById(("numTel")).click();
		adaptador.findElementById(("numTel")).sendKeys("79823345");
		adaptador.findElementById(("genero")).click();
	    adaptador.findElementById(("genero"));
		adaptador.findElementXpath(("//option[. = 'Masculino']")).click();
		adaptador.findElementById(("direccion")).click();
		adaptador.findElementById(("direccion")).sendKeys("Test dirección ");
		adaptador.tomarEvidencia(this.rutaEvidencia+" Ingreso de datos paciente.png");
		adaptador.findCssSelector((".btn")).click();
		adaptador.findCssSelector((".nav-item:nth-child(1) > .nav-link > span")).click();
	}
	public void test3()throws IOException {
		adaptador.findElementById(("user")).sendKeys("117830806");
		adaptador.findElementById(("pass")).click();
		adaptador.findElementById(("pass")).sendKeys("user");
		adaptador.tomarEvidencia(this.rutaEvidencia+"Login Ingreso de credenciales.png");
		adaptador.findCssSelector((".btn")).click();
		adaptador.findElementByText(("Pacientes")).click();
		adaptador.findCssSelector((".show > .dropdown-item:nth-child(2) > span")).click();
		adaptador.findCssSelector(("tr:nth-child(2) .btn-warning")).click();
		adaptador.findElementById(("nombreP")).click();
		adaptador.findElementById(("nombreP")).sendKeys("MatthewEDICION");
		adaptador.findElementById(("apellido")).click();
		adaptador.findElementById(("apellido")).sendKeys("RussellEDICION");
		adaptador.findElementById(("numTel")).click();
		adaptador.findElementById(("numTel")).click();
		adaptador.findElementById(("numTel"));
		adaptador.findElementById(("numTel")).click();
		adaptador.findElementById(("numTel")).sendKeys("67269933");
		adaptador.findElementById(("genero")).click();
		adaptador.findElementById(("direccion")).click();
		adaptador.findElementById(("direccion")).click();
		adaptador.findElementById(("direccion")).click();
		adaptador.findElementById(("direccion"));
		adaptador.findElementById(("direccion")).sendKeys("Test dirección EDICION");
		adaptador.findCssSelector((".btn")).click();
		adaptador.findCssSelector((".nav-item:nth-child(1) > .nav-link > span")).click();
	}
	public void test4()throws IOException {
		adaptador.findElementById(("user")).sendKeys("117830806");
		adaptador.findElementById(("pass")).click();
		adaptador.findElementById(("pass")).sendKeys("user");
		adaptador.tomarEvidencia(this.rutaEvidencia+"Login Ingreso de credenciales.png");
		adaptador.findCssSelector((".btn")).click();
		adaptador.findElementByText(("Pacientes")).click();
		adaptador.findCssSelector((".show > .dropdown-item:nth-child(2) > span")).click();
		adaptador.findElementXpath(("/html/body/div/table/tbody/tr[2]/td[8]/input[2]")).click();
	}
	public void test5()throws IOException {
		adaptador.findElementById(("user")).sendKeys("117830806");
		adaptador.findElementById(("pass")).click();
		adaptador.findElementById(("pass")).sendKeys("user");
		adaptador.tomarEvidencia(this.rutaEvidencia+"Login Ingreso de credenciales.png");
		adaptador.findCssSelector((".btn")).click();
		adaptador.findElementByText(("Pacientes")).click();
		adaptador.findCssSelector((".show > .dropdown-item:nth-child(1) > span")).click();
		adaptador.findElementById(("idPaciente")).click();
		adaptador.findElementById(("idPaciente")).sendKeys("117848595");
		adaptador.findCssSelector((".btn")).click();
		adaptador.findCssSelector((".nav-item:nth-child(1) > .nav-link > span")).click();
	}
	public void test6()throws IOException {
		adaptador.findElementById(("user")).sendKeys("117830806");
		adaptador.findElementById(("pass")).click();
		adaptador.findElementById(("pass")).sendKeys("user");
		adaptador.tomarEvidencia(this.rutaEvidencia+"Login Ingreso de credenciales.png");
		adaptador.findCssSelector((".btn")).click();
		adaptador.findElementByText(("Empleados")).click();
		adaptador.findCssSelector((".show > .dropdown-item:nth-child(3) > span")).click();
		adaptador.findElementById(("idEmpleado")).click();
		adaptador.findElementById(("idEmpleado")).sendKeys("123456");
		adaptador.findElementById(("nombres")).click();
		adaptador.findElementById(("nombres")).sendKeys("TEST NOMBRE");
		adaptador.findElementById(("apellidos")).click();
		adaptador.findElementById(("apellidos")).sendKeys("TEST APELLIDO");
		adaptador.findElementById(("Contrasenia")).click();
		adaptador.findElementById(("Contrasenia")).sendKeys("123");
		adaptador.findElementById(("Correo")).click();
		adaptador.findElementById(("Correo")).click();
		adaptador.findElementById(("Correo")).sendKeys("test@gmail.com");
		adaptador.findElementById(("NumTel")).click();
		adaptador.findElementById(("NumTel")).sendKeys("69887744");
		adaptador.findCssSelector((".btn")).click();
		adaptador.findCssSelector((".nav-item:nth-child(1) > .nav-link > span")).click();
	}
	public void test7()throws IOException {
		adaptador.findElementById(("user")).sendKeys("117830806");
		adaptador.findElementById(("pass")).click();
		adaptador.findElementById(("pass")).sendKeys("user");
		adaptador.tomarEvidencia(this.rutaEvidencia+"Login Ingreso de credenciales.png");
		adaptador.findCssSelector((".btn")).click();
		adaptador.findElementByText(("Empleados")).click();
		adaptador.findCssSelector((".show > .dropdown-item:nth-child(2) > span")).click();
		adaptador.findCssSelector(("tr:nth-child(2) .btn-warning")).click();
		adaptador.findElementById(("nombres")).click();
		adaptador.findElementById(("nombres")).click();
		adaptador.findElementById(("nombres"));
	    adaptador.findElementById(("nombres")).click();
		adaptador.findElementById(("nombres")).sendKeys("Claudio");
		adaptador.findElementById(("apellidos")).click();
		adaptador.findElementById(("apellidos")).click();
		adaptador.findElementById(("apellidos"));
	    adaptador.findElementById(("apellidos")).click();
		adaptador.findElementById(("apellidos")).sendKeys("Jaramillo");
		adaptador.findElementById(("Contrasenia")).click();
		adaptador.findElementById(("Contrasenia")).sendKeys("holaclau");
		adaptador.findElementById(("Correo")).click();
		adaptador.findElementById(("Correo")).click();
		adaptador.findElementById(("Correo"));
		adaptador.findElementById(("Correo")).sendKeys("clau@gmail.com");
		adaptador.findElementById(("NumTel")).click();
		adaptador.findElementById(("NumTel")).click();
		adaptador.findElementById(("NumTel"));
		adaptador.findElementById(("NumTel")).sendKeys("67554433");
		adaptador.findCssSelector(("html")).click();
		adaptador.findCssSelector((".btn")).click();
		adaptador.findCssSelector((".nav-item:nth-child(1) > .nav-link > span")).click();
	}
	public void test8()throws IOException {
		adaptador.findElementById(("user")).sendKeys("117830806");
		adaptador.findElementById(("pass")).click();
		adaptador.findElementById(("pass")).sendKeys("user");
		adaptador.tomarEvidencia(this.rutaEvidencia+"Login Ingreso de credenciales.png");
		adaptador.findCssSelector((".btn")).click();
		adaptador.findElementByText(("Empleados")).click();
		adaptador.findCssSelector((".show > .dropdown-item:nth-child(1) > span")).click();
		adaptador.findElementById(("idEmpleado")).click();
		adaptador.findElementById(("idEmpleado")).sendKeys("117830806");
		adaptador.findCssSelector((".btn")).click();
		adaptador.findCssSelector(("td:nth-child(1)")).click();
		adaptador.findCssSelector((".nav-item:nth-child(1) > .nav-link > span")).click();
	}
	public void test9()throws IOException {
		adaptador.findElementById(("user")).sendKeys("117830806");
		adaptador.findElementById(("pass")).click();
		adaptador.findElementById(("pass")).sendKeys("user");
		adaptador.tomarEvidencia(this.rutaEvidencia+"Login Ingreso de credenciales.png");
		adaptador.findCssSelector((".btn")).click();
		adaptador.findCssSelector((".nav-item:nth-child(4) span")).click();
		adaptador.findCssSelector((".nav-item:nth-child(1) > .nav-link > span")).click();
	}
	public void test10()throws IOException {
		adaptador.findElementById(("user")).sendKeys("117830806");
		adaptador.findElementById(("pass")).click();
		adaptador.findElementById(("pass")).sendKeys("user");
		adaptador.tomarEvidencia(this.rutaEvidencia+"Login Ingreso de credenciales.png");
		adaptador.findCssSelector((".btn")).click();
		adaptador.tomarEvidencia(this.rutaEvidencia+"Home.png");
	}
	public void cerrarDriver() {
		adaptador.cerrarDriver();
	}
}
