
Private Function Proc_16_0_A7DA84() 'A7DA84
  'Data Table: 402194
  loc_A7D9F8: LitStr "HKEY_CURRENT_USER\Software\ODBC\ODBC.INI\myrecaudacion-guaymallen\"
  loc_A7D9FB: FStStrCopy var_88
  loc_A7D9FE: LitStr "1"
  loc_A7DA01: LitStr "AUTO_RECONNECT"
  loc_A7DA04: ILdRf var_88
  loc_A7DA07: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A7DA0C: LitStr "1"
  loc_A7DA0F: LitStr "BIG_PACKETS"
  loc_A7DA12: ILdRf var_88
  loc_A7DA15: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A7DA1A: LitStr "1"
  loc_A7DA1D: LitStr "COMPRESSED_PROTO"
  loc_A7DA20: ILdRf var_88
  loc_A7DA23: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A7DA28: LitStr "myodbc5.dll"
  loc_A7DA2B: LitStr "Driver"
  loc_A7DA2E: ILdRf var_88
  loc_A7DA31: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A7DA36: LitStr "1"
  loc_A7DA39: LitStr "FOUND_ROWS"
  loc_A7DA3C: ILdRf var_88
  loc_A7DA3F: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A7DA44: LitStr "1"
  loc_A7DA47: LitStr "MULTI_STATEMENTS"
  loc_A7DA4A: ILdRf var_88
  loc_A7DA4D: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A7DA52: LitStr "3306"
  loc_A7DA55: LitStr "PORT"
  loc_A7DA58: ILdRf var_88
  loc_A7DA5B: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A7DA60: LitStr "192.168.40.54"
  loc_A7DA63: LitStr "SERVER"
  loc_A7DA66: ILdRf var_88
  loc_A7DA69: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A7DA6E: LitStr "HKEY_CURRENT_USER\Software\ODBC\ODBC.INI\ODBC Data Sources\"
  loc_A7DA71: FStStrCopy var_88
  loc_A7DA74: LitStr "MySQL ODBC 5.1 Driver"
  loc_A7DA77: LitStr "myrecaudacion-guaymallen"
  loc_A7DA7A: ILdRf var_88
  loc_A7DA7D: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A7DA82: ExitProc
End Function

Private Function Proc_16_1_A7DF04() 'A7DF04
  'Data Table: 402194
  loc_A7DE78: LitStr "HKEY_CURRENT_USER\Software\ODBC\ODBC.INI\myrecaudacion-guaymallen-gis\"
  loc_A7DE7B: FStStrCopy var_88
  loc_A7DE7E: LitStr "1"
  loc_A7DE81: LitStr "AUTO_RECONNECT"
  loc_A7DE84: ILdRf var_88
  loc_A7DE87: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A7DE8C: LitStr "1"
  loc_A7DE8F: LitStr "BIG_PACKETS"
  loc_A7DE92: ILdRf var_88
  loc_A7DE95: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A7DE9A: LitStr "1"
  loc_A7DE9D: LitStr "COMPRESSED_PROTO"
  loc_A7DEA0: ILdRf var_88
  loc_A7DEA3: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A7DEA8: LitStr "myodbc5.dll"
  loc_A7DEAB: LitStr "Driver"
  loc_A7DEAE: ILdRf var_88
  loc_A7DEB1: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A7DEB6: LitStr "1"
  loc_A7DEB9: LitStr "FOUND_ROWS"
  loc_A7DEBC: ILdRf var_88
  loc_A7DEBF: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A7DEC4: LitStr "1"
  loc_A7DEC7: LitStr "MULTI_STATEMENTS"
  loc_A7DECA: ILdRf var_88
  loc_A7DECD: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A7DED2: LitStr "3306"
  loc_A7DED5: LitStr "PORT"
  loc_A7DED8: ILdRf var_88
  loc_A7DEDB: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A7DEE0: LitStr "192.168.40.135"
  loc_A7DEE3: LitStr "SERVER"
  loc_A7DEE6: ILdRf var_88
  loc_A7DEE9: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A7DEEE: LitStr "HKEY_CURRENT_USER\Software\ODBC\ODBC.INI\ODBC Data Sources\"
  loc_A7DEF1: FStStrCopy var_88
  loc_A7DEF4: LitStr "MySQL ODBC 5.1 Driver"
  loc_A7DEF7: LitStr "myrecaudacion-guaymallen-gis"
  loc_A7DEFA: ILdRf var_88
  loc_A7DEFD: ImpAdCallFPR4 Proc_57_23_A88228(, , )
  loc_A7DF02: ExitProc
End Function
