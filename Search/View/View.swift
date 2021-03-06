import SnapKit
import UIComponents
import UIKit

final class View: UIView, ErrorPresentable {
    private(set) lazy var tableView: UITableView = {
        let view = UITableView(frame: .zero, style: .plain)
        view.tableFooterView = UIView()
        return view
    }()

    init() {
        super.init(frame: .zero)

        backgroundColor = .white

        addSubview(tableView)
        tableView.snp.makeConstraints {
            $0.edges.equalTo(self.safeAreaLayoutGuide)
        }
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
