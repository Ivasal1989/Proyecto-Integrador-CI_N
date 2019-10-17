namespace MARKETPLACE.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addfullname : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.AspNetUsers", "Fullname", c => c.String(nullable: false, maxLength: 100));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.AspNetUsers", "Fullname", c => c.String(nullable: false));
        }
    }
}
