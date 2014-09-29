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
        public IQueryable<Varopay.Models.Account> GetAccount()
        {
            return db.Account;
        }

        // GET: api/Accounts/5
        [ResponseType(typeof(Varopay.Models.Account))]
        public IHttpActionResult GetAccount(Guid id)
        {
            Varopay.Models.Account account = db.Account.Find(id);
            if (account == null)
            {
                return NotFound();
            }

            return Ok(account);
        }

        // PUT: api/Accounts/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutAccount(Guid id, Varopay.Models.Account account)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != account.AccountID)
            {
                return BadRequest();
            }

            db.Entry(account).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AccountExists(id))
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
        [ResponseType(typeof(Varopay.Models.Account))]
        public IHttpActionResult PostAccount(Varopay.Models.Account account)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Account.Add(account);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (AccountExists(account.AccountID))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = account.AccountID }, account);
        }

        // DELETE: api/Accounts/5
        [ResponseType(typeof(Varopay.Models.Account))]
        public IHttpActionResult DeleteAccount(Guid id)
        {
            Varopay.Models.Account account = db.Account.Find(id);
            if (account == null)
            {
                return NotFound();
            }

            db.Account.Remove(account);
            db.SaveChanges();

            return Ok(account);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool AccountExists(Guid id)
        {
            return db.Account.Count(e => e.AccountID == id) > 0;
        }
    }
}