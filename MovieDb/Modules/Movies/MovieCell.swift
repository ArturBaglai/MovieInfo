import UIKit
import SnapKit


class MovieCell: UITableViewCell {
    
    let iconImageView: UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        return view
    }()
     let titleLabel: UILabel = {
        let view = UILabel()
         view.textAlignment = .left
         view.font = UIFont.boldSystemFont(ofSize: 20.0)
        return view
    }()
    
    static let closure: (String) -> UILabel = { (text: String) in
        let view = UILabel()
        view.text = text
        view.textAlignment = .left
        return view
    }
    

    let descriptionLabel: UILabel = { (text: String) in
        let view = UILabel()
        view.text = text
        view.textAlignment = .left
        view.textColor = .gray
        view.numberOfLines = 2
        
        return view
    }("Initial descriptionLabel text")
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview(iconImageView)
        self.addSubview(titleLabel)
        self.addSubview(descriptionLabel)
        
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        
        
        let closure = { (make: ConstraintMaker) -> Void in
            make.leading.top.trailing.equalToSuperview().inset(16)
            make.width.equalTo(self.iconImageView.snp.height).multipliedBy(1.79)
        }
        iconImageView.snp.makeConstraints(closure)
        iconImageView.setContentHuggingPriority(.required, for: .vertical)
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(iconImageView.snp.bottom).offset(16)
            make.leading.trailing.equalToSuperview().inset(16)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
            make.leading.trailing.equalToSuperview().inset(16)
            make.bottom.equalToSuperview().inset(16)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    weak var delegate: MovieCellDelegate?
}
protocol MovieCellDelegate: AnyObject {
    func didTapActionButton()
}


