// Init sql search(Exit or null)
		String sql = "FROM MstCustomerDTO m "
						+ "WHERE m.CUSTOMER_NAME LIKE ? "							// where CUSTOMER_NAME 		| 1?
							+ "AND m.SEX = CASE ? WHEN '' THEN m.SEX ELSE ? END "	//where SEX					| 2?
							+ "AND (m.BIRTHDAY >= ? OR (m.BIRTHDAY = m.BIRTHDAY AND ? = '')) " //where BIRTHDAY	FROM | 2?
							+ "AND (m.BIRTHDAY <= ? OR (m.BIRTHDAY = m.BIRTHDAY AND ? = '')) " //where BIRTHDAY	TO  	| 2?
							+ "AND m.DELETE_YMD IS NULL "
							+ "ORDER BY m.CUSTOMER_ID";
							
// SQL  Case When...........
public function FindProduct($key,$page){
        $key = trim($key);
    	$list = $this->dbGetlist("SELECT * FROM product 
    								WHERE 
                                        name LIKE ( CASE
                                            WHEN
                                                '$key' != ''
                                                THEN  '%$key%'
                                            ELSE  
                                                'Giày Thể Thao XSPORT Ni.ke Air Force 1 Full Trắng SF'
                                            END) 
                                        OR description LIKE ( CASE
                                                                WHEN
                                                                    '$key' != ''
                                                                    THEN  '%$key%'
                                                                ELSE  
                                                                'Giày Thể Thao XSPORT Ni.ke Air Force 1 Full Trắng SF'
                                                                END)
                                        OR product.category 
                                            IN (SELECT category_level2.id 
                                                FROM category_level2 
                                                    WHERE category_level2.categoryLevel1 
                                                        IN (SELECT category_level1.id 
                                                                FROM category_level1 
                                                                    WHERE category_level1.name
                                                                        LIKE ( CASE
                                                                                    WHEN
                                                                                        '$key' != ''
                                                                                        THEN  '%$key%'
                                                                                    ELSE  
                                                                                    'Giày Thể Thao XSPORT Ni.ke Air Force 1 Full Trắng SF'
                                                                                    END)))
                                        OR product.category 
                                            IN (SELECT category_level2.id
                                                    FROM category_level2
                                                        WHERE category_level2.name 
                                                            LIKE ( CASE
                                                                    WHEN
                                                                        '$key' != ''
                                                                        THEN  '%$key%'
                                                                    ELSE  
                                                                    'Giày Thể Thao XSPORT Ni.ke Air Force 1 Full Trắng SF'
                                                                    END))                                           
                                        AND status != '0'
                                        ORDER BY price
                                        LIMIT $page, 20							
    							");
    	return $list;
    }
