// Init sql search(Exit or null)
		String sql = "FROM MstCustomerDTO m "
						+ "WHERE m.CUSTOMER_NAME LIKE ? "							// where CUSTOMER_NAME 		| 1?
							+ "AND m.SEX = CASE ? WHEN '' THEN m.SEX ELSE ? END "	//where SEX					| 2?
							+ "AND (m.BIRTHDAY >= ? OR (m.BIRTHDAY = m.BIRTHDAY AND ? = '')) " //where BIRTHDAY	FROM | 2?
							+ "AND (m.BIRTHDAY <= ? OR (m.BIRTHDAY = m.BIRTHDAY AND ? = '')) " //where BIRTHDAY	TO  	| 2?
							+ "AND m.DELETE_YMD IS NULL "
							+ "ORDER BY m.CUSTOMER_ID";
