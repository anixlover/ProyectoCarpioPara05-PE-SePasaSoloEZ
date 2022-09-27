using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DtoVisualizacion
    {
        public DtoVisualizacion() {  }

        public DtoVisualizacion(string vS_NombreModulo, DateTime dTS_PrimeraFechaRegistro, string vS_Maquina)
        {
            VS_NombreModulo = vS_NombreModulo;
            DTS_PrimeraFechaRegistro = dTS_PrimeraFechaRegistro;
            VS_Maquina = vS_Maquina;
        }

        public int PK_IV_Cod { get; set; }
        public string VS_NombreModulo { get; set; }
        public DateTime DTS_PrimeraFechaRegistro { get; set; }
        public DateTime DTS_UltimaFechaRegistro { get; set; }
        public string VS_Maquina { get; set; }
        public int IS_Visualizacion { get; set; }
    }
}
