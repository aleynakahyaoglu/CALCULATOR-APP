import UIKit

class ViewController : UIViewController {
    
    var sonucEkraniİlkSayi: Double = 0;
    var ilkSayi: Double = 0;
    var islem = false;
    var mathislem = 0;
 
    
    
    
    @IBOutlet weak var sonucEkrani: UILabel!
    
    @IBOutlet weak var assd: UILabel!
    
    @IBAction func sayilar(_ sender: UIButton) {
        
        if islem == true{
            nnnn.text = String(sender.tag)
            sonucEkraniİlkSayi = Double (nnnn.text!)!
            islem = false
        }
        
        else {
            nnnn.text = nnnn.text! + String (sender.tag)
            sonucEkraniİlkSayi = Double (nnnn.text!)!
        }
       
    }
    
    @IBOutlet weak var nnnn: UILabel!
    
    @IBAction func operateButton(_ sender: UIButton) {
        if nnnn.text != "" && sender.tag != 10{
            if sender.tag == 17{
            nnnn.text = "0"
           
        }

            ilkSayi = Double (nnnn.text!)!
            
            if sender.tag == 11{
                nnnn.text = "+" ;
        }
            if sender.tag == 12 {
                nnnn.text = "-" ;
            }
            if sender.tag == 13 {
                nnnn.text = "X" ;
            }
            if sender.tag == 14 {
                nnnn.text = "/" ;
            }
            if sender.tag == 15 {
                nnnn.text = "%"
            }
            
            if sender.tag == 16 {
                nnnn.text = " - \(nnnn.text!)"
            }
            mathislem = sender.tag
            islem = true ;
            
        }
        else if sender.tag == 10 {
            
            if mathislem == 11 {
                nnnn.text = String(ilkSayi + sonucEkraniİlkSayi)
            }
            
            else if mathislem == 12 {
                nnnn.text = String (ilkSayi - sonucEkraniİlkSayi)
            }
            
            else if mathislem == 13 {
                nnnn.text = String (ilkSayi * sonucEkraniİlkSayi)
            }
            
            else if mathislem == 14 {
                nnnn.text = String (ilkSayi / sonucEkraniİlkSayi)
            }
            
            else if mathislem == 15 {
                nnnn.text = String (ilkSayi * 0.01)
            }
            
            else if mathislem == 16 {
                nnnn.text = String (-ilkSayi)
            }
        }
            
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nnnn.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
