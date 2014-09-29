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
    public class PayeesController : ApiController
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: api/Payees
        public IQueryable<Payees> GetPayees()
        {
            return db.Payees;
        }

        // GET: api/Payees/5
        [ResponseType(typeof(Payees))]
        public IHttpActionResult GetPayees(Guid id)
        {
            Payees payees = db.Payees.Find(id);
            if (payees == null)
            {
                return NotFound();
            }

            return Ok(payees);
        }

        // PUT: api/Payees/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutPayees(Guid id, Payees payees)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != payees.PayeesID)
            {
                return BadRequest();
            }

            db.Entry(payees).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!PayeesExists(id))
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

        // POST: api/Payees
        [ResponseType(typeof(Payees))]
        public IHttpActionResult PostPayees(Payees payees)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Payees.Add(payees);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (PayeesExists(payees.PayeesID))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = payees.PayeesID }, payees);
        }

        // DELETE: api/Payees/5
        [ResponseType(typeof(Payees))]
        public IHttpActionResult DeletePayees(Guid id)
        {
            Payees payees = db.Payees.Find(id);
            if (payees == null)
            {
                return NotFound();
            }

            db.Payees.Remove(payees);
            db.SaveChanges();

            return Ok(payees);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool PayeesExists(Guid id)
        {
            return db.Payees.Count(e => e.PayeesID == id) > 0;
        }
    }
}