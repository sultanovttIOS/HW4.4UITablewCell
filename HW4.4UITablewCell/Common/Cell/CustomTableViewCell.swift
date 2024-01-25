//
//  CustomTableViewCell.swift
//  HW4.4UITablewCell
//
//  Created by Alisher Sultanov on 24/1/24.
//

import UIKit
import SnapKit

class CustomTableViewCell: UITableViewCell {
    
    private lazy var itemLabel = MakerView.shared.makerLabel(textColor: UIColor.gray, font: UIFont.systemFont(ofSize: 15, weight: .regular), text: "")
    
    private lazy var titleLabel = MakerView.shared.makerLabel(textColor: UIColor.black, font: UIFont.systemFont(ofSize: 20, weight: .semibold), text: "")
    
    private lazy var cellImage = MakerView.shared.makerImage(cornerRadius: 12, imageName: "")
    
    private lazy var stackView: UIStackView = {
        let cell = UIStackView()
        cell.axis = .vertical
        return cell
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupStackView()
        setupImageView()
        setupTitleLabel()
        setupItemLabel()
    }
    
    private func setupStackView() {
        contentView.addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top)
            make.horizontalEdges.equalToSuperview().inset(16)
            make.bottom.equalTo(contentView.snp.bottom)
            make.height.equalTo(230)
        }
    }
    private func setupImageView() {
        stackView.addArrangedSubview(cellImage)
        cellImage.snp.makeConstraints { make in
            make.top.equalTo(stackView.snp.top)
            make.height.equalTo(120)
        }
    }
    
    private func setupTitleLabel() {
        stackView.addArrangedSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(cellImage.snp.bottom)
            make.height.equalTo(24)
        }
    }
    
    private func setupItemLabel() {
        stackView.addArrangedSubview(itemLabel)
        itemLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom)
            make.height.equalTo(20)
            make.bottom.equalTo(stackView.snp.bottom)
        }
    }
    
    func setCustomData(_ image: String, text: String, item: String) {
        cellImage.image = UIImage(named: image)
        titleLabel.text = text
        itemLabel.text = item
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
