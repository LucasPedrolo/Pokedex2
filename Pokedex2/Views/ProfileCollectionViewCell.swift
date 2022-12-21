//
//  ProfileCollectionViewCell.swift
//  Pokedex2
//
//  Created by unicred on 19/12/22.
//

import UIKit

class ProfileCollectionViewCell: BaseCell {
    
    var profile: Profile? {
        didSet {
            lblName.text = profile?.name
            lblNumber.text = profile?.number
            imageView.image = UIImage(named: profile?.image ?? "")
            type1(type: profile?.type ?? "")
        }
    }
    
    lazy var container: UIView = {
        let view = UIView()
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.black.cgColor
        view.backgroundColor = .white
        return view
    }()
    
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    lazy var lblName: UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 25)
        return label
    }()
    
    lazy var lblNumber: UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .center
        return label
    }()
    
    
    func type1(type: String) {
        
        lazy var lblTypeG: UILabel = {
                let label = UILabel()
                label.text = "Grass"
                label.textColor = .white
                label.font = UIFont.systemFont(ofSize: 18)
                label.backgroundColor = .green
                label.textAlignment = .center
                label.layer.masksToBounds = true
                label.layer.cornerRadius = 5
                return label
        }()
        
        lazy var lblTypeF: UILabel = {
            let label = UILabel()
            label.text = "Fire"
            label.textColor = .white
            label.font = UIFont.systemFont(ofSize: 18)
            label.backgroundColor = .red
            label.textAlignment = .center
            label.layer.masksToBounds = true
            label.layer.cornerRadius = 5
            return label
        }()
        
        lazy var lblTypeW: UILabel = {
            let label = UILabel()
            label.text = "Water"
            label.textColor = .white
            label.font = UIFont.systemFont(ofSize: 18)
            label.backgroundColor = .blue
            label.textAlignment = .center
            label.layer.masksToBounds = true
            label.layer.cornerRadius = 5
            return label
        }()
        
        lazy var lblTypeFly: UILabel = {
            let label = UILabel()
            label.text = "Fly"
            label.textColor = .white
            label.font = UIFont.systemFont(ofSize: 18)
            label.backgroundColor = .lightGray
            label.textAlignment = .center
            label.layer.masksToBounds = true
            label.layer.cornerRadius = 5
            return label
        }()
        
        lazy var lblTypeP: UILabel = {
            let label = UILabel()
            label.text = "Poison"
            label.textColor = .white
            label.font = UIFont.systemFont(ofSize: 18)
            label.backgroundColor = .purple
            label.textAlignment = .center
            label.layer.masksToBounds = true
            label.layer.cornerRadius = 5
            return label
        }()
        
        lazy var lblTypeN: UILabel = {
            let label = UILabel()
            label.text = "Neutro"
            label.textColor = .white
            label.font = UIFont.systemFont(ofSize: 18)
            label.backgroundColor = .gray
            label.textAlignment = .center
            label.layer.masksToBounds = true
            label.layer.cornerRadius = 5
            return label
        }()
        
        lazy var lblTypePsy: UILabel = {
            let label = UILabel()
            label.text = "Psychic"
            label.textColor = .white
            label.font = UIFont.systemFont(ofSize: 18)
            label.backgroundColor = .purple
            label.textAlignment = .center
            label.layer.masksToBounds = true
            label.layer.cornerRadius = 5
            return label
        }()
        
        lazy var lblTypeGround: UILabel = {
            let label = UILabel()
            label.text = "Ground"
            label.textColor = .white
            label.font = UIFont.systemFont(ofSize: 18)
            label.backgroundColor = .brown
            label.textAlignment = .center
            label.layer.masksToBounds = true
            label.layer.cornerRadius = 5
            return label
        }()
        
        lazy var lblTypeE: UILabel = {
            let label = UILabel()
            label.text = "Eletric"
            label.textColor = .white
            label.font = UIFont.systemFont(ofSize: 18)
            label.backgroundColor = .systemYellow
            label.textAlignment = .center
            label.layer.masksToBounds = true
            label.layer.cornerRadius = 5
            return label
        }()
        
        lazy var lblTypeB: UILabel = {
            let label = UILabel()
            label.text = "Bug"
            label.textColor = .white
            label.font = UIFont.systemFont(ofSize: 18)
            label.backgroundColor = .orange
            label.textAlignment = .center
            label.layer.masksToBounds = true
            label.layer.cornerRadius = 5
            return label
        }()
        
        
        
        container.addSubview(lblTypeF)
        container.addSubview(lblTypeG)
        container.addSubview(lblTypeP)
        container.addSubview(lblTypePsy)
        container.addSubview(lblTypeN)
        container.addSubview(lblTypeFly)
        container.addSubview(lblTypeE)
        container.addSubview(lblTypeGround)
        container.addSubview(lblTypeW)
        container.addSubview(lblTypeB)
    
        
        switch type {

            case "GF":

                lblTypeG.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 2, right: 0), size: .init(width: 55, height: 70))
                lblTypeF.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 60, bottom: 2, right: 0), size: .init(width: 55, height: 70))


            case "F":
                lblTypeF.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 2, right: 0), size: .init(width: 55, height: 70))


            case "G":
                lblTypeG.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 2, right: 0), size: .init(width: 55, height: 70))


            case "W":
                lblTypeW.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 2, right: 0), size: .init(width: 55, height: 70))


            case "P":
                lblTypeP.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 2, right: 0), size: .init(width: 55, height: 70))


            case "E":
                lblTypeE.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 2, right: 0), size: .init(width: 55, height: 70))


            case "N":
                lblTypeN.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 2, right: 0), size: .init(width: 55, height: 70))


            case "Ground":
                lblTypeGround.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: lblName.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 2, right: 0), size: .init(width: 80, height: 70))


            case "Psy":
                lblTypePsy.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 2, right: 0), size: .init(width: 55, height: 70))


            case "Fly":
                lblTypeFly.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 2, right: 0), size: .init(width: 55, height: 70))


            case "B":
                lblTypeP.removeFromSuperview()
                lblTypeB.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 2, right: 0), size: .init(width: 55, height: 70))


            case "GP":
                lblTypeG.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 2, right: 0), size: .init(width: 55, height: 70))
                lblTypeP.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 60, bottom: 2, right: 0), size: .init(width: 55, height: 70))


            case "FF":
                lblTypeFly.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 60, bottom: 2, right: 0), size: .init(width: 55, height: 70))
                lblTypeF.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 2, right: 0), size: .init(width: 55, height: 70))


            case "BFly":
                lblTypeB.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 2, right: 0), size: .init(width: 55, height: 70))
                lblTypeFly.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 60, bottom: 2, right: 0), size: .init(width: 55, height: 70))


            case "BP":
                lblTypeB.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 2, right: 0), size: .init(width: 55, height: 70))
                lblTypeP.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 60, bottom: 2, right: 0), size: .init(width: 55, height: 70))


            case "NFly":
                lblTypeN.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 2, right: 0), size: .init(width: 55, height: 70))
                lblTypeFly.anchor(top: lblName.bottomAnchor, leading: lblName.leadingAnchor, bottom: imageView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 60, bottom: 2, right: 0), size: .init(width: 55, height: 70))

        default:
            print("deu errado")
        }
    }
    
    override func addSubviews() {
        addSubview(container)
        container.addSubview(imageView)
        container.addSubview(lblName)
        container.addSubview(lblNumber)
    }
    
    
    override func addConstraints() {
        container.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor, padding: .init(top: 10, left: 0, bottom: 10, right: 0), size: .init(width: frame.width, height: 80))
        
        imageView.anchor(top: container.topAnchor, leading: container.leadingAnchor, bottom: container.bottomAnchor, trailing: nil, padding: .init(top: 10, left: -40, bottom: 10, right: 0), size: .init(width: 200, height: 200))
        
        lblName.anchor(top: imageView.topAnchor, leading: imageView.trailingAnchor, bottom: imageView.topAnchor, trailing: nil, padding: .init(top: 2, left: -15, bottom: 10, right: 0), size: .init(width: 200, height: 30))
        
        lblNumber.anchor(top: container.topAnchor, leading: nil, bottom: container.bottomAnchor, trailing: container.trailingAnchor, padding: .init(top: 50, left: 305, bottom: 0, right: 10), size: .init(width: 40, height: 70))
    }
}
