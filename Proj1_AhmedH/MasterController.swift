//
//  MasterController.swift
//  Proj1_AhmedH
//
//  Created by user227477 on 11/19/22.
//

import Foundation
import UIKit

class MasterController : UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        InitializeRoles()
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  RoleObjects.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let rowNum = indexPath.row
        
        let rt = RoleObjects[rowNum]
        
        let cellA = tableView.dequeueReusableCell(withIdentifier: "cellA")
        
        cellA?.textLabel!.text = rt.RoleName
        cellA?.imageView?.image = UIImage(named:"projectmanager.jpg")
        cellA?.detailTextLabel!.text = rt.RoleDescription
        
        /*
         let downloadedImage = convertToimage(urlString: "https://raw.githubusercontent.com/donalmeida/JSONProjectsIT315/master/OldRag.jpg")
         cellA?.imageView?.image = downloadedImage
         cellA?.imageView?.contentMode = UIView.ContentMode.scaleAspectFill
         // Set the size of the Imageview Frame
         cellA?.imageView?.frame.size.width = 200
         cellA?.imageView?.frame.size.height = 200
         // Make Image Corners Rounded
         cellA?.imageView?.layer.cornerRadius = 20
         cellA?.imageView?.clipsToBounds = true
         cellA?.imageView?.layer.borderWidth = 2
         cellA?.imageView?.layer.borderColor = UIColor.darkGray.cgColor
         */
        
        return cellA!
        
    }
    
    var RoleObjects = [Role]()
    
    
    
    func InitializeRoles() {
        
        //Role 1 - Database Administrator
        let r1 = Role()
        r1.RoleName = "Database Administrator"
        r1.RoleDescription = """
                You may be interested in taking up the role of a database administrator (aka a DBA) in your upcoming project.Thats great! A DBA has many responsibilities including managing and ensuring all databases are up and running, approving people to query and work on those databases, and utilizing a large skillset.
        
            Here at GMU, and specifically within the IT major, this role would be best suited for someone concentrating in database technology and programming.
        """
        
        r1.RoleSkills = "Some skills for a Database Administrator include:\n 1) Data Modeling and Database Design\n 2) Backup and Recovery\n 3) Data Security\n 4) General Data Management\n 5)SQL Knowledge"
        r1.RoleImage = "database.jpg"
        r1.RoleWebsite = "https://www.oracle.com/database/what-is-a-dba/"
        RoleObjects.append(r1)
        
        
        
        //Role 2 - Developer
        let r2 = Role()
        r2.RoleName = "Developer"
        r2.RoleDescription = """
                    A developer plays a very important role in technical projects. He/she helps bring the project to life by utilizing a broad range of programming languages and design practices to create working software. Some responsibilities of a developer include designing and building programs, identifying requirements, fixing bugs/errors, and maintaining the codebase.
            
                    If you are someone who likes to solve problems, this role may be for you!
            """
        r2.RoleSkills = "Some skills for a Developer include:\n 1) Software Design and Analysis\n 2) Development in Selected Programming Language\n 3)Time Management\n 5)Critical Thinking"
        r2.RoleImage = "developer.jpg"
        r2.RoleWebsite = "https://in.indeed.com/career-advice/finding-a-job/what-is-a-software-developer"
        RoleObjects.append(r2)
        
        
        
        
        //Role 3 Project Manager
        let r3 = Role()
        r3.RoleName = "Project Manager"
        r3.RoleDescription = """
                    A project manager (PM) can be thought of as the leader of a technical project. They ensure that the project is on task and that all deliverables are being completed in a timely fashion. By following different frameworks and guidelines, PMs can see to it that a project is throughly completed for all stakeholders.
                    
                    If you are someone who is task-oriented and can see the bigger picture, make sure you consider the role of a project manager!
        """
        r3.RoleSkills = "Some skills for a Project Manager Include:\n 1)Communication\n 2)Leadership\n 3)Organization\n 4)Problem Solving\n 5)Detail-Oriented"
        r3.RoleImage = "projectmanager.jpg"
        r3.RoleWebsite = "https://www.teamwork.com/project-management-guide/what-does-a-project-manager-do/"
        RoleObjects.append(r3)
        
        
        //Role 4 Business Analyst
        let r4 = Role()
        r4.RoleName = "Business Analyst"
        r4.RoleDescription = """
                A Business Analyst is can be thought of as the crossroads where business needs and IT meet. Generally, a BA assesses how companies are performing and attempts to predict future business needs. A BA utilizes cutting edge analytical tools including SQL and data mining to generate reports and dashboards.
        
                This position may be right for you if you enjoy SQL and have a business savvy mind!
        """
        r4.RoleSkills = "Some skills for a BA Include:\n 1)SQL and Data Analytics\n 2)Written and Communication Skills\n 3)Report Skills (Including Excel + Office 365)\n 4)Critical Thinking\n 5)Organizational Skills  "
        r4.RoleImage  = "businessanalyst.jpg"
        r4.RoleWebsite = "https://www.indeed.com/hire/c/info/what-does-a-business-analysts-do"
        RoleObjects.append(r4)
        
        
        
        
        //Role 5 Security Analyst
        let r5 = Role()
        r5.RoleName = "Security Analyst"
        r5.RoleDescription = """
                    A security analyst leverages current security policy, frameworks, and best practices to ensure a corportations safety in the cyber domain. As the risk for breaches, DDoS attacks, and phishing attempts rise, corporations have begun to ensure a robust cyber-security presence.
                    
                If IT safety is a big priority for you, you may want to consider a role as a Security Analyst!
        """
        r5.RoleSkills = "Some skills for a SA Include:\n 1)Scripting\n 2)Network Security\n 3)DevOps\n 4)Controls and Frameworks\n 5)Operating Systems"
        r5.RoleImage = "securityanalyst.jpg"
        r5.RoleWebsite = "https://digitalguardian.com/blog/what-security-analyst-responsibilities-qualifications-and-more"
        RoleObjects.append(r5)
        
        
    }
    
}
