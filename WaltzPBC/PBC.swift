//
//  PBC.swift
//  PBC
//
//  Created by Guillaume Vachon on 2018-06-21.
//  Copyright © 2018 Waltz. All rights reserved.
//

import Foundation
import PBCNative

public class PBCNative {
    
    public class func pairing_t_Swift() -> pairing_t {
        return pairing_t()
    }
    
    public class func element_t_Swift() -> element_t {
        return element_t()
    }
    
    public class func pairing_clear_Swift(pairing: inout pairing_t) {
        pairing_clear(&pairing)
    }
    
    public class func element_clear_Swift(element: inout element_t) {
        element_clear(&element)
    }
    
    public class func pairing_init_set_str_Swift(pairing: inout pairing_t, string: [CChar]) {
        pairing_init_set_str(&pairing, string)
    }
    
    public class func element_init_G1_Swift(element: inout element_t, pairing: inout pairing_t) {
        element_init_G1(&element, &pairing)
    }
    
    public class func element_from_hash_Swift(element: inout element_t, bytes: inout [UInt8], size: Int32) {
        element_from_hash(&element, &bytes, size)
    }
    public class func element_init_Zr_Swift(element: inout element_t, pairing: inout pairing_t) {
        element_init_Zr(&element, &pairing)
    }
    
    public class func element_set_str_Swift(element: inout element_t, string: [CChar], base: Int32) {
        element_set_str(&element, string, base)
    }
    
    public class func element_pow_zn_Swift(element1: inout element_t, element2: inout element_t, element3: inout element_t) {
        element_pow_zn(&element1, &element2, &element3)
    }

    public class func element_to_bytes_compressed_Swift(bytes: inout [UInt8], element: inout element_t) {
        element_to_bytes_compressed(&bytes, &element)
    }
    
    public class func element_random_Swift(element: inout element_t) {
        element_random(&element)
    }
    
    public class func element_init_G2_Swift(element: inout element_t, pairing: inout pairing_t) {
        element_init_G2(&element, &pairing)
    }
    
    public class func elementToString(_ element: inout element_t) -> String {
        
        var cChar = [CChar](repeating: 0, count: 1024)
        let _ = element_snprint(&cChar, 1024, &element)
        
        return String(cString: cChar)
    }
}

