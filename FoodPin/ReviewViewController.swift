//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by 유정욱 on 2016. 12. 29..
//  Copyright © 2016년 AppCoda. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var containerView: UIView!
    @IBOutlet var restaurantImageView: UIImageView!
    var restaurant: Restaurant!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // To apply a blurring effect to the background image view
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        // To animate container view
        let scaleTransform = CGAffineTransform.init(scaleX: 0, y: 0)
        let translateTransform = CGAffineTransform.init(translationX: 0, y: -1000)
        let combineTransform = scaleTransform.concatenating(translateTransform)
        containerView.transform = combineTransform
        
        restaurantImageView.image = UIImage(named: restaurant.image)
    }

    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.2, options: .curveEaseInOut, animations: {
            self.containerView.transform = CGAffineTransform.identity
        }, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
