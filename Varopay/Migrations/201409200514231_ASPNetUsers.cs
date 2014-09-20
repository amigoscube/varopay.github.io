namespace Varopay.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class ASPNetUsers : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AspNetUsers", "City", c => c.String());
            AddColumn("dbo.AspNetUsers", "Zipcode", c => c.String());
            AddColumn("dbo.AspNetUsers", "Country", c => c.String());
            AddColumn("dbo.AspNetUsers", "Address", c => c.String());
            AddColumn("dbo.AspNetUsers", "AccountType", c => c.String());
            DropTable("dbo.RegisterUsers");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.RegisterUsers",
                c => new
                    {
                        RegisterUserID = c.Int(nullable: false, identity: true),
                        Username = c.String(),
                        Email = c.String(),
                        Password = c.String(),
                        ConfirmPassword = c.String(),
                    })
                .PrimaryKey(t => t.RegisterUserID);
            
            DropColumn("dbo.AspNetUsers", "AccountType");
            DropColumn("dbo.AspNetUsers", "Address");
            DropColumn("dbo.AspNetUsers", "Country");
            DropColumn("dbo.AspNetUsers", "Zipcode");
            DropColumn("dbo.AspNetUsers", "City");
        }
    }
}
