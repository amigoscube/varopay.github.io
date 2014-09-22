namespace Varopay.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Account : DbMigration
    {
        public override void Up()
        {
            DropPrimaryKey("dbo.Accounts");
            AlterColumn("dbo.Accounts", "AccountID", c => c.String(nullable: false, maxLength: 128));
            AlterColumn("dbo.Accounts", "UserID", c => c.String());
            AddPrimaryKey("dbo.Accounts", "AccountID");
        }
        
        public override void Down()
        {
            DropPrimaryKey("dbo.Accounts");
            AlterColumn("dbo.Accounts", "UserID", c => c.Int(nullable: false));
            AlterColumn("dbo.Accounts", "AccountID", c => c.Int(nullable: false, identity: true));
            AddPrimaryKey("dbo.Accounts", "AccountID");
        }
    }
}
