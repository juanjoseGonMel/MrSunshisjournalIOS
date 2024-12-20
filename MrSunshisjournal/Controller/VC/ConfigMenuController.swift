//
//  ConfigMenuController.swift
//  MrSunshisjournal
//
//  Created by DISMOV on 11/12/24.
//

import UIKit

//class ConfigMenuController: UITableViewController {

    
class ConfigMenuController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var configCells: [ConfigItem] = []
    
    @IBOutlet var imgPerfil: UIImageView!
    
    @IBOutlet var configMenu: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Inicializar y configurar la UITableView
        configMenu.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        configMenu.delegate = self
        configMenu.dataSource = self
        
        // Configurar los datos
        configCells = [
            ConfigItem(title: "Perfil".localized, segueIdentifier: "showPerfilSettings"),
            ConfigItem(title: "Seguridad".localized, segueIdentifier: "showSeguridadSettings"),
            ConfigItem(title: "Preferencias".localized, segueIdentifier: "showPreferenciasSettings"),
            ConfigItem(title: "Notificaciones".localized, segueIdentifier: "showNotificacionesSettings"),
            ConfigItem(title: "Acerca de".localized, segueIdentifier: "showInfoSettings"),
            ConfigItem(title: "Cerrar sesion".localized, segueIdentifier: "showLogOutSettings")
        ]

        
        
        
        //En caso de que se haga programaticamente
        // Registrar la celda para reutilización
        //configMenu.register(UITableViewCell.self, forCellReuseIdentifier: "configCell")
        // Registrar la celda personalizada
        //configMenu.register(UINib(nibName: "ConfigViewCell", bundle: nil), forCellReuseIdentifier: "configCell")
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int { return 1 }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return configCells.count }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let cell = tableView.dequeueReusableCell(withIdentifier: "configCell", for: indexPath)
        //let conf = configCells[indexPath.row]
        //cell.textLabel?.text = conf.title
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "configCell", for: indexPath) as! ConfigViewCell
        let conf = configCells[indexPath.row]
        cell.cellTitle.text = conf.title
        cell.imgConfig.image = UIImage(systemName: "gear")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let config = configCells[indexPath.row]
        performSegue(withIdentifier: config.segueIdentifier, sender: self)
        
    }
    
    
    // Método para ajustar el espaciado entre celdas
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        cell.contentView.layer.cornerRadius = 10
        cell.contentView.layer.masksToBounds = true
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOpacity = 0.1
        cell.layer.shadowOffset = CGSize(width: 0, height: 2)
        cell.layer.shadowRadius = 4
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: 10).cgPath
        
    }
    
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
