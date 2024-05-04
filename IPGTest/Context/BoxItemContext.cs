using IPGTest.Models;
using Microsoft.EntityFrameworkCore;

namespace IPGTest.Context
{
    public class BoxItemContext : DbContext
    {
        public BoxItemContext(DbContextOptions<BoxItemContext> options) : base(options)
        {
        }

        public DbSet<Item> BoxItem { get; set; }
    }
}
