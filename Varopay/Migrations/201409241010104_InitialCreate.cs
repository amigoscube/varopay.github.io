namespace Varopay.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Accounts",
                c => new
                    {
                        AccountID = c.Guid(nullable: false),
                        Currency_CurrencyID = c.Guid(),
                        MyAccount_Id = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => t.AccountID)
                .ForeignKey("dbo.Currencies", t => t.Currency_CurrencyID)
                .ForeignKey("dbo.AspNetUsers", t => t.MyAccount_Id)
                .Index(t => t.Currency_CurrencyID)
                .Index(t => t.MyAccount_Id);
            
            CreateTable(
                "dbo.Currencies",
                c => new
                    {
                        CurrencyID = c.Guid(nullable: false),
                        CurrencyName = c.String(),
                    })
                .PrimaryKey(t => t.CurrencyID);
            
            CreateTable(
                "dbo.AspNetUsers",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        City = c.String(),
                        Zipcode = c.String(),
                        Country = c.String(),
                        Address = c.String(),
                        AccountType = c.String(),
                        Email = c.String(maxLength: 256),
                        EmailConfirmed = c.Boolean(nullable: false),
                        PasswordHash = c.String(),
                        SecurityStamp = c.String(),
                        PhoneNumber = c.String(),
                        PhoneNumberConfirmed = c.Boolean(nullable: false),
                        TwoFactorEnabled = c.Boolean(nullable: false),
                        LockoutEndDateUtc = c.DateTime(),
                        LockoutEnabled = c.Boolean(nullable: false),
                        AccessFailedCount = c.Int(nullable: false),
                        UserName = c.String(nullable: false, maxLength: 256),
                    })
                .PrimaryKey(t => t.Id)
                .Index(t => t.UserName, unique: true, name: "UserNameIndex");
            
            CreateTable(
                "dbo.AspNetUserClaims",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        UserId = c.String(nullable: false, maxLength: 128),
                        ClaimType = c.String(),
                        ClaimValue = c.String(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.AspNetUserLogins",
                c => new
                    {
                        LoginProvider = c.String(nullable: false, maxLength: 128),
                        ProviderKey = c.String(nullable: false, maxLength: 128),
                        UserId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.LoginProvider, t.ProviderKey, t.UserId })
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.AspNetUserRoles",
                c => new
                    {
                        UserId = c.String(nullable: false, maxLength: 128),
                        RoleId = c.String(nullable: false, maxLength: 128),
                    })
                .PrimaryKey(t => new { t.UserId, t.RoleId })
                .ForeignKey("dbo.AspNetUsers", t => t.UserId, cascadeDelete: true)
                .ForeignKey("dbo.AspNetRoles", t => t.RoleId, cascadeDelete: true)
                .Index(t => t.UserId)
                .Index(t => t.RoleId);
            
            CreateTable(
                "dbo.Logs",
                c => new
                    {
                        LogID = c.Guid(nullable: false),
                        Date = c.String(),
                        Activity = c.String(),
                        Amount = c.String(),
                        Details = c.String(),
                        Object = c.String(),
                        UserLog_Id = c.String(maxLength: 128),
                    })
                .PrimaryKey(t => t.LogID)
                .ForeignKey("dbo.AspNetUsers", t => t.UserLog_Id)
                .Index(t => t.UserLog_Id);
            
            CreateTable(
                "dbo.Payees",
                c => new
                    {
                        PayeesID = c.Guid(nullable: false),
                        Payee = c.String(),
                        Payer = c.String(),
                        Payment_AccountID = c.Guid(),
                    })
                .PrimaryKey(t => t.PayeesID)
                .ForeignKey("dbo.Accounts", t => t.Payment_AccountID)
                .Index(t => t.Payment_AccountID);
            
            CreateTable(
                "dbo.AspNetRoles",
                c => new
                    {
                        Id = c.String(nullable: false, maxLength: 128),
                        Name = c.String(nullable: false, maxLength: 256),
                    })
                .PrimaryKey(t => t.Id)
                .Index(t => t.Name, unique: true, name: "RoleNameIndex");
            
            CreateTable(
                "dbo.Transactions",
                c => new
                    {
                        TransactionID = c.Guid(nullable: false),
                        Date = c.String(),
                        Amount = c.String(),
                        Status = c.String(),
                        Type = c.String(),
                        AccountTransaction_AccountID = c.Guid(),
                        TransactionType_TransactionTypeId = c.Guid(),
                    })
                .PrimaryKey(t => t.TransactionID)
                .ForeignKey("dbo.Accounts", t => t.AccountTransaction_AccountID)
                .ForeignKey("dbo.TransactionTypes", t => t.TransactionType_TransactionTypeId)
                .Index(t => t.AccountTransaction_AccountID)
                .Index(t => t.TransactionType_TransactionTypeId);
            
            CreateTable(
                "dbo.TransactionTypes",
                c => new
                    {
                        TransactionTypeId = c.Guid(nullable: false),
                        TransactionName = c.String(),
                    })
                .PrimaryKey(t => t.TransactionTypeId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Transactions", "TransactionType_TransactionTypeId", "dbo.TransactionTypes");
            DropForeignKey("dbo.Transactions", "AccountTransaction_AccountID", "dbo.Accounts");
            DropForeignKey("dbo.AspNetUserRoles", "RoleId", "dbo.AspNetRoles");
            DropForeignKey("dbo.Payees", "Payment_AccountID", "dbo.Accounts");
            DropForeignKey("dbo.Logs", "UserLog_Id", "dbo.AspNetUsers");
            DropForeignKey("dbo.Accounts", "MyAccount_Id", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserRoles", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserLogins", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.AspNetUserClaims", "UserId", "dbo.AspNetUsers");
            DropForeignKey("dbo.Accounts", "Currency_CurrencyID", "dbo.Currencies");
            DropIndex("dbo.Transactions", new[] { "TransactionType_TransactionTypeId" });
            DropIndex("dbo.Transactions", new[] { "AccountTransaction_AccountID" });
            DropIndex("dbo.AspNetRoles", "RoleNameIndex");
            DropIndex("dbo.Payees", new[] { "Payment_AccountID" });
            DropIndex("dbo.Logs", new[] { "UserLog_Id" });
            DropIndex("dbo.AspNetUserRoles", new[] { "RoleId" });
            DropIndex("dbo.AspNetUserRoles", new[] { "UserId" });
            DropIndex("dbo.AspNetUserLogins", new[] { "UserId" });
            DropIndex("dbo.AspNetUserClaims", new[] { "UserId" });
            DropIndex("dbo.AspNetUsers", "UserNameIndex");
            DropIndex("dbo.Accounts", new[] { "MyAccount_Id" });
            DropIndex("dbo.Accounts", new[] { "Currency_CurrencyID" });
            DropTable("dbo.TransactionTypes");
            DropTable("dbo.Transactions");
            DropTable("dbo.AspNetRoles");
            DropTable("dbo.Payees");
            DropTable("dbo.Logs");
            DropTable("dbo.AspNetUserRoles");
            DropTable("dbo.AspNetUserLogins");
            DropTable("dbo.AspNetUserClaims");
            DropTable("dbo.AspNetUsers");
            DropTable("dbo.Currencies");
            DropTable("dbo.Accounts");
        }
    }
}
