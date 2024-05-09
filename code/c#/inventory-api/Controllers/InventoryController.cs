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
                // Will add SQL database connection soon ...
                new Inventory { Id = 0, Name = "Cup", },
                new Inventory { Id = 1, Name = "Bowl", },
                new Inventory { Id = 2, Name = "Plate", },
                new Inventory { Id = 3, Name = "Fork", },
                new Inventory { Id = 4, Name = "Garbage Bag", },
                new Inventory { Id = 5, Name = "Shoes", },
                new Inventory { Id = 6, Name = "Socks", },
                new Inventory { Id = 7, Name = "Pants", },
                new Inventory { Id = 8, Name = "Shirt", }
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
