package CasosDePrueba;

import java.io.IOException;

import org.testng.annotations.AfterClass;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Parameters;
import org.testng.annotations.Test;

import Paginas.Home;

public class Busquedas {

	Home home;

	@Parameters({"navegador","rutaEvidencia"})
	@BeforeClass
	public void beforeClass(String navegador, String rutaEvidencia) {
		home = new Home(navegador, rutaEvidencia);
	}
	@Parameters({"url"})
	@BeforeMethod
	public void beforeTest(String url) throws IOException {
		home.abrirUrl(url);
	}
	@Test
	public void loginMantenimientoEmpleado() throws IOException {
		home.test1y2();
	}
	@Test
	public void editarEmpleado() throws IOException {
		home.test3();
	}
	@Test
	public void eliminarEmpleado() throws IOException {
		home.test4();
	}
	@Test
	public void seleccionarEmpleado() throws IOException {
		home.test5();
	}
	@Test
	public void registroEmp() throws IOException {
		home.test6();
	}
	@Test
	public void modificarEmp() throws IOException {
		home.test7();
	}
	@Test
	public void selectEmp() throws IOException {
		home.test8();
	}
	@Test
	public void mantenimientoCitas() throws IOException {
		home.test9();
	}
	@Test
	public void homePage() throws IOException {
		home.test10();
	}


	@AfterMethod
	public void afterTest() {
	}
	@AfterClass
	public void afterClass() {
		home.cerrarDriver();
	}

}
