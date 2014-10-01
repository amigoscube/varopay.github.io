namespace Varopay.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Account : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Accounts", "CurAcc", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Accounts", "CurAcc");
        }
    }
}
