using Microsoft.AspNetCore.Mvc;
using System.Reflection.Metadata.Ecma335;

namespace Inventory_API.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class InventoryController : ControllerBase
    {
        [HttpGet]
        public ActionResult<IEnumerable<Inventory>> Get()
        {
            var inventories = new List<Inventory>()
            {
                new Inventory { Id = 0, Name = "Cup", },
                new Inventory { Id = 1, Name = "Food", },


            };
            return Ok(inventories);
        }
       
        private readonly ILogger<InventoryController> _logger;

        public InventoryController(ILogger<InventoryController> logger)
        {
            _logger = logger;
        }

    }
}
