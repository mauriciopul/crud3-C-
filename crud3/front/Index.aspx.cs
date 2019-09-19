using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class front_Index : System.Web.UI.Page
{
    Conexion con = new Conexion();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (rbtLista.SelectedValue == "rbtNuevo")
        {
            btnInsertar.Enabled = true;
            btnModificar.Enabled = false;
            btnEliminar.Enabled = false;
            lblInscripcion.Text = "rbtNuevo";
        }

        if (rbtLista.SelectedValue == "rbtEditar")
        {
            btnInsertar.Enabled = false;
            btnModificar.Enabled = true;
            btnEliminar.Enabled = false;

            lblInscripcion.Text = "rbtEditar";
        }

        if (rbtLista.SelectedValue == "rbtEliminar")
        {
            btnInsertar.Enabled = false;
            btnModificar.Enabled = false;
            btnEliminar.Enabled = true;
            lblInscripcion.Text = "rbtEliminar";
        }
    }

    protected void btnInsertar_Click(object sender, EventArgs e)
    {
        if (con.buscarUsuario(txtCedula.Text) == 0)
        {
            lblInscripcion.Text = con.insertar(txtCedula.Text, txtNombre.Text, txtAño.Text + "-" + txtMes.Text + "-" + txtDia.Text, txtTelefono.Text);
        }
        else
        {
            lblInscripcion.Text = "El registro ya existe";
        }

    }

    protected void rbtLista_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}