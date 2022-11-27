//
//  ViewController.swift
//  Proj1_AhmedH
//
//  Created by Ahmed Hussein on 10/15/22.
//
//Disclaimer: This App is developed as an educational project. Although no copyrighted materials are include, this statement is added for the fair use guidelines:
//
//Certain materials are included under the fair use exemption of the U.S. Copyright Law and have been prepared according to the multimedia fair use guidelines and are restricted from further use. 
//



import UIKit
import AVKit
import AVFoundation



class ViewController: UIViewController {

    
    //Outlets
    
    //Sound Outlet
    var mySoundFile:AVAudioPlayer!
    
    
    @IBOutlet weak var txtDescription: UITextView!
    
    
    @IBOutlet weak var txtHomepageDescription: UITextView!
    
    
    
    
    @IBOutlet weak var txtDescription2: UITextView!
    
    
    @IBOutlet weak var txtSkillsList: UITextView!
    
    @IBOutlet weak var lblPositionName: UILabel!
    
    
    @IBOutlet weak var imgRoleImage: UIImageView!
    
    
    var Roles = ["Database Administrator", "Developer", "Project Manager", "Business Analyst", "Security Analyst"]
    
    
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
    
    var globalHT:Role = Role()
    
    func SetRoles() {
        
        let randomHT = RoleObjects.randomElement()
        globalHT = randomHT!
        
        //Removed QUestion marks after example txtSkillsList?.text
        lblPositionName.text = randomHT?.RoleName
        txtDescription2.text = randomHT?.RoleDescription
        txtSkillsList.text = randomHT?.RoleSkills
        imgRoleImage.image = UIImage(named: randomHT!.RoleImage)
        
        //Sound File
        mySoundFile.play()
        
        //Homepage Text Description
        txtHomepageDescription?.layer.cornerRadius = 15
        txtHomepageDescription?.layer.borderWidth = 3
        txtHomepageDescription?.layer.borderColor = UIColor.black.cgColor
        
        
        //Description Boxes Styling
        txtDescription2?.layer.borderColor = UIColor.black.cgColor
        txtSkillsList?.layer.borderColor = UIColor.black.cgColor
        
        //Position Name Styling
        
        //lblPositionName.textColor.
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let urlObject = URL(fileURLWithPath: Bundle.main.path(forResource: "blocker_hit", ofType: "wav")!)
        
        mySoundFile = try? AVAudioPlayer(contentsOf:urlObject)
        
        InitializeRoles()
        SetRoles()
        
    }
    
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
            imgRoleImage.alpha = 0
            lblPositionName.alpha = 0
            txtDescription2.alpha   = 0
        txtSkillsList.alpha = 0
        }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
            UIView.animate(withDuration:4.0, animations: {
                self.imgRoleImage.alpha = 1
                self.lblPositionName.alpha =  1
                self.txtDescription2.alpha = 1
                self.txtSkillsList.alpha = 1
            } )
            
            SetRoles()
                
        }
    
    
    
    /*
    @IBAction func tchGetStarted(_ sender: Any) {
        
        SetRoles()
        
        
    }
    */
    
    
    
    @IBAction func tchNextPosition(_ sender: Any) {
        
        SetRoles()
    }
    
    
    
    
    @IBAction func btnWebsite(_ sender: Any) {
        let browserApp = UIApplication.shared
        let url = URL(string: globalHT.RoleWebsite)
        browserApp.open(url!)
    }
    
    
    
}

