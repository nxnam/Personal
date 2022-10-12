//
//  PersonalBuilder.swift
//  Fima
//
//  Created by Nam Nguyễn on 12/10/2022.
//  Copyright © 2022 Fima. All rights reserved.
//

import RIBs

protocol PersonalDependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
}

final class PersonalComponent: Component<PersonalDependency> {

    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder

protocol PersonalBuildable: Buildable {
    func build(withListener listener: PersonalListener) -> PersonalRouting
}

final class PersonalBuilder: Builder<PersonalDependency>, PersonalBuildable {

    override init(dependency: PersonalDependency) {
        super.init(dependency: dependency)
    }

    func build(withListener listener: PersonalListener) -> PersonalRouting {
        let component = PersonalComponent(dependency: dependency)
        let viewController = PersonalViewController()
        let interactor = PersonalInteractor(presenter: viewController)
        interactor.listener = listener
        return PersonalRouter(interactor: interactor, viewController: viewController)
    }
}
