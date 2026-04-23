#!/usr/bin/python3

import cgi
import cgitb
import psycopg2
import html

#enables debugging in the html
cgitb.enable()

print('Content-Type: text/html\n')
# -----------------------------
# Faculty Class
# -----------------------------
#Class(object)
class Faculty:
    def __init__(self,faculty_id,name,rank,email,phone,office,research_interest,remarks,lname,fname,mi):
        self.id = faculty_id
        self.name = name
        self.rank = rank
        self.email = email
        self.phone = phone
        self.office = office
        self.research_interest = research_interest
        self.remarks = remarks
        self.lname = lname
        self.fname = fname
        self.mi = mi
    def to_html_row(self):
        return f"""
        <tr>
            <td>{html.escape(self.name or "")}</td>
            <td>{html.escape(self.rank or "")}</td>
            <td>{html.escape(self.email or "" )}</td>
            <td>{html.escape(self.phone or "")}</td>
            <td>{html.escape(self.office or "")}</td>
            <td>{html.escape(self.research_interest or "")}</td>
            <td>{html.escape(self.remarks or "")}</td>
        </tr>
        """
# -----------------------------
# Faculty Directory Class
# -----------------------------
class FacultyDirectory:
    allowed_sorts = {
        "name": "lname",
        "rank": "rank"
    }
    def __init__(self, conn):
        self.conn = conn
    
    def get_faculty(self, search=None, sort=None):
        cursor= self.conn.cursor()

        query = """
            SELECT faculty_id, name, rank, email, phone, office,research_interest, remarks,lname,fname,mi
            FROM   faculty
        """
        params = []
#add search filter BEFORE executing
        if search:
                   query += " WHERE lname ILIKE %s"
                   params.append("%" + search + "%")
#add sorting BEFORE executing
        if sort in self.allowed_sorts:
            query  += f" ORDER BY {self.allowed_sorts[sort]}"

        cursor.execute(query, params)

        faculty_list = []
        row = cursor.fetchone()

        while row:
            faculty_list.append(Faculty(*row))
            row = cursor.fetchone()

        return faculty_list

    @staticmethod 
    def list_to_html(faculty_list):
       rows = "".join(f.to_html_row() for f in faculty_list)
       return f"""
       <table border="1" cellpadding="5">
       <tr>
       <th>Name</th>
       <th>Rank</th>
       <th>Email</th>
       <th>Phone</th>
       <th>Office</th>
       <th>Research Interests</th>
       <th>Remarks</th>
       </tr>
       {rows}
       </table>
       """
def get_fte(conn, prefix, gu, divisor):
    query = """
        SELECT 
            honorific || ' ' || first || ' ' || mi || ' ' || last AS instructor,
            year,
            semester,
            SUM((enrollment * ch) / %s) AS fte
        FROM dept_courses_sched_hist_import h
        JOIN dept_courses_import c
            ON h.prefix = c.prefix
           AND h.number = c.number
        JOIN faculty_import2 f
            ON h.instructor = f.id
        WHERE 
            c.ch > 0
            AND h.prefix = %s
            AND f.currently_employed = 'Yes'
    """
    params = [divisor, prefix]

    if gu is not None:
        query += " AND c.gu = %s"
        params.append(gu)

    query += """
        GROUP BY honorific, first, mi, last, year, semester
        ORDER BY instructor, year, semester;
    """

    with conn.cursor() as cur:
        cur.execute(query, params)
        return cur.fetchall()

def get_dasc_fte(conn):
    query = """
        SELECT 
            honorific || ' ' || first || ' ' || mi || ' ' || last AS instructor,
            year,
            semester,
            SUM((enrollment * ch) / 186.23) AS fte
        FROM dept_courses_sched_hist_import h
        JOIN dept_courses_import c
            ON h.prefix = c.prefix
           AND h.number = c.number
        JOIN faculty_import2 f
            ON h.instructor = f.id
        WHERE 
            c.ch > 0
            AND h.prefix = 'DASC'
            AND f.currently_employed = 'Yes'
        GROUP BY 
            honorific, first, mi, last, year, semester
        ORDER BY 
            instructor, year, semester;
    """

    with conn.cursor() as cur:
        cur.execute(query)
        rows = cur.fetchall()
        cols = [desc[0] for desc in cur.description]

    return rows

#--------------------------
#cgi input
#--------------------------
#Read form data-this is what comes back in the URL when the person enters a name and hits submit
form = cgi.FieldStorage()
lname = form.getvalue("lname")
sort = form.getvalue("sort")
tab = form.getvalue("tab") or "directory"

#--------------------------
#connect to database
#--------------------------
conn = psycopg2.connect(
  dbname="seng3010", user="webuser1",
password="student", host="172.17.0.3",
port=5432)

CSCI_G = get_fte(conn, "CSCI", "G", 186.23)
CSCI_U = get_fte(conn, "CSCI", "U", 406.24)
SENG_G = get_fte(conn, "SENG", "G", 90.17)
SENG_U = get_fte(conn, "SENG", "U", 232.25)
DASC = get_dasc_fte(conn)

directory = FacultyDirectory(conn)
faculty_members = directory.get_faculty(search=lname, sort=sort)

# -----------------------------
# HTML Output
# -----------------------------
print("<html><body>")
print("<h2>Faculty Directory</h2>")
#print("<h2>Faculty Directory</h2>")

print("""
<form method="get">
    Search by last name:
    <input type="text" name="lname">
    <br><br>
    Sort by:
    <select name="sort">
        <option value="">None</option>
        <option value="name">Name</option>
        <option value="rank">Rank</option>
    </select>
    <br><br>
<input type="submit" value="Search">
</form>
<hr>
""")

print(FacultyDirectory.list_to_html(faculty_members))
print("<h2>FTE Results</h2>")

datasets = [
    ("CSCI Graduate", CSCI_G),
    ("CSCI Undergraduate", CSCI_U),
    ("SENG Graduate", SENG_G),
    ("SENG Undergraduate", SENG_U),
    ("DASC", DASC)
]

for title, data in datasets:
    print(f"<h3>{title}</h3>")
    
    for row in data:
        print(f"<p>{row}</p>")

#print("</body></html>")
print("</main></body></html>")
conn.close()
