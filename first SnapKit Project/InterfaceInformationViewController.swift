//
import UIKit
import SnapKit

class InterfaceInformationViewController: UIView {

    private lazy var downArrow: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "arrowDown")
return image
    }()
    
    private lazy var profileImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "profile")
return image
    }()
    private lazy var playlistImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "playlist")
return image
    }()
    
    private lazy var playlistLabel: UILabel = {
        let label = UILabel()
        label.text = "Calming  Playlist"
        label.font = UIFont.systemFont(ofSize: 30, weight: .thin)
        label.textColor = .black
        label.textAlignment = .right
        
        
        return label
    }()
    private lazy var mainImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Illustration")
return image
    }()
    
    private lazy var songNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Rain On Glass"
        label.font = UIFont.systemFont(ofSize: 35, weight: .bold)
        label.textColor = .black
        label.textAlignment = .center
        
        
        return label
    }()
    private lazy var autorNameLabel: UILabel = {
        let label = UILabel()
        label.text = "By: Painting with Passion"
        label.font = UIFont.systemFont(ofSize: 16, weight: .thin)
        label.textColor = .gray
        label.textAlignment = .center
        
        
        return label
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        subviewsInterfaceView()
    }
    
    private func subviewsInterfaceView(){
        addSubview(downArrow)
        downArrow.snp.makeConstraints({make in
            make.top.equalToSuperview().offset(50)
            make.left.equalToSuperview().offset(25)
            make.height.width.equalTo(24)
        })
        addSubview(playlistImage)
        playlistImage.snp.makeConstraints({make in
            make.top.equalToSuperview().offset(50)
            make.right.equalToSuperview().offset(-37)
            make.height.width.equalTo(24)
        })
        addSubview(profileImage)
        profileImage.snp.makeConstraints({make in
            make.right.equalTo(playlistImage.snp_leftMargin).offset(-24)
            make.top.equalToSuperview().offset(45)
        })
     
        addSubview(playlistLabel)
        playlistLabel.snp.makeConstraints({make in
            make.left.equalToSuperview().offset(25)
            make.top.equalTo(downArrow.snp_bottomMargin).offset(30)
           
        })
        addSubview(mainImage)
        mainImage.snp.makeConstraints({make in
            make.top.equalTo(playlistLabel.snp_bottomMargin).offset(30)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(300)
           
        })
        addSubview(songNameLabel)
        songNameLabel.snp.makeConstraints({make in
            make.top.equalTo(mainImage.snp_bottomMargin).offset(30)
            make.centerX.equalToSuperview()
        })
        addSubview(autorNameLabel)
        autorNameLabel.snp.makeConstraints({make in
            make.top.equalTo(songNameLabel.snp_bottomMargin).offset(15)
            make.centerX.equalToSuperview()
        })
        
    }
    
    
 
}
