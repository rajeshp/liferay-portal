/**
 * Copyright (c) 2000-2010 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

package com.liferay.portal.dao.orm.hibernate;

import com.liferay.portal.kernel.dao.orm.Criterion;

/**
 * <a href="CriterionImpl.java.html"><b><i>View Source</i></b></a>
 *
 * @author Brian Wing Shun Chan
 */
public class CriterionImpl implements Criterion {

	public CriterionImpl(org.hibernate.criterion.Criterion criterion) {
		_arguments = new String[0];
		_criterion = criterion;
	}

	public CriterionImpl(
		org.hibernate.criterion.Criterion criterion, String[] arguments) {

		_arguments = arguments;
		_criterion = criterion;
	}

	public String[] getArguments() {
		return _arguments;
	}

	public org.hibernate.criterion.Criterion getWrappedCriterion() {
		return _criterion;
	}

	private String[] _arguments;
	private org.hibernate.criterion.Criterion _criterion;

}