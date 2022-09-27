using DAO_;
using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CTR
{
    public class CtrVisualizacion
    {
        private readonly DaoVisualizacion daoVisualizacion;

        public CtrVisualizacion()
        {
            daoVisualizacion = new DaoVisualizacion();
        }

        public void GuardarVisualizacionUsuario(DtoVisualizacion dtoVisualizacion)
        {
            daoVisualizacion.GuardarVisualizacionUsuario(dtoVisualizacion);
        }
    }
}
