using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using Varopay.Models;

namespace Varopay.Api
{
    public class AccountsController : ApiController
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: api/Accounts
        public IQueryable<Accounts> GetAccount()
        {
            return db.Account;
        }

        // GET: api/Accounts/5
        [ResponseType(typeof(Accounts))]
        public IHttpActionResult GetAccounts(Guid id)
        {
            Accounts accounts = db.Account.Find(id);
            if (accounts == null)
            {
                return NotFound();
            }

            return Ok(accounts);
        }

        // PUT: api/Accounts/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutAccounts(Guid id, Accounts accounts)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != accounts.AccountsID)
            {
                return BadRequest();
            }

            db.Entry(accounts).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AccountsExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/Accounts
        [ResponseType(typeof(Accounts))]
        public IHttpActionResult PostAccounts(Accounts accounts)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Account.Add(accounts);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (AccountsExists(accounts.AccountsID))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = accounts.AccountsID }, accounts);
        }

        // DELETE: api/Accounts/5
        [ResponseType(typeof(Accounts))]
        public IHttpActionResult DeleteAccounts(Guid id)
        {
            Accounts accounts = db.Account.Find(id);
            if (accounts == null)
            {
                return NotFound();
            }

            db.Account.Remove(accounts);
            db.SaveChanges();

            return Ok(accounts);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool AccountsExists(Guid id)
        {
            return db.Account.Count(e => e.AccountsID == id) > 0;
        }
    }
}