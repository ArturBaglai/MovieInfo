import UIKit

class MovieDetailsView: UIView {
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
    let adultLabel: UILabel = {
       let view = UILabel()
        view.textAlignment = .left
        view.font = UIFont.boldSystemFont(ofSize: 20.0)
       return view
   }()
    let originCountryLabel: UILabel = {
       let view = UILabel()
        view.textAlignment = .left
        view.font = UIFont.boldSystemFont(ofSize: 20.0)
       return view
   }()
    let languageLabel: UILabel = {
       let view = UILabel()
        view.textAlignment = .left
        view.font = UIFont.boldSystemFont(ofSize: 20.0)
       return view
   }()
    let descriptionLabel: UILabel = {
       let view = UILabel()
        view.textAlignment = .left
        view.font = UIFont.boldSystemFont(ofSize: 20.0)
       return view
   }()
    let papularityLabel: UILabel = {
       let view = UILabel()
        view.textAlignment = .left
        view.font = UIFont.boldSystemFont(ofSize: 20.0)
       return view
   }()
    let dateOfProductionLabel: UILabel = {
       let view = UILabel()
        view.textAlignment = .left
        view.font = UIFont.boldSystemFont(ofSize: 20.0)
       return view
   }()
    let voteAverageLabel: UILabel = {
       let view = UILabel()
        view.textAlignment = .left
        view.font = UIFont.boldSystemFont(ofSize: 20.0)
       return view
   }()
    let voteCountLabel: UILabel = {
       let view = UILabel()
        view.textAlignment = .left
        view.font = UIFont.boldSystemFont(ofSize: 20.0)
       return view
   }()
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupInitialLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupInitialLayout() {
        addSubview(iconImageView)
        addSubview(titleLabel)
        
    }
    
}
