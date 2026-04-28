
Private Function Proc_283_0_A21944() 'A21944
  'Data Table: 4022D8
  loc_A21798: LitStr "server"
  loc_A2179B: LitStr "rootvpn"
  loc_A2179E: EqStr
  loc_A217A0: BranchF loc_A217B6
  loc_A217A3: LitStr "10.8.0.229"
  loc_A217A6: FMemStStrCopy
  loc_A217AB: LitStr "3306"
  loc_A217AE: FMemStStrCopy
  loc_A217B3: Branch loc_A218B3
  loc_A217B6: LitStr "server"
  loc_A217B9: LitStr "rootlocal"
  loc_A217BC: EqStr
  loc_A217BE: BranchF loc_A217D4
  loc_A217C1: LitStr "10.8.0.229"
  loc_A217C4: FMemStStrCopy
  loc_A217C9: LitStr "3316"
  loc_A217CC: FMemStStrCopy
  loc_A217D1: Branch loc_A218B3
  loc_A217D4: LitStr "server"
  loc_A217D7: LitStr "server"
  loc_A217DA: EqStr
  loc_A217DC: BranchF loc_A218A4
  loc_A217DF: ImpAdLdRf MemVar_C3DB88
  loc_A217E2: NewIfNullPr MdiContPres
  loc_A217E5: VCallAd Control_ID_Winsock
  loc_A217E8: FStAdFunc var_8C
  loc_A217EB: FLdPr var_8C
  loc_A217EE: LateIdLdVar var_9C DispID_6 0
  loc_A217F5: PopAd
  loc_A217F7: LitI4 &HC
  loc_A217FC: FLdRfVar var_9C
  loc_A217FF: CStrVarTmp
  loc_A21800: CVarStr var_AC
  loc_A21803: FLdRfVar var_BC
  loc_A21806: ImpAdCallFPR4  = Left(, )
  loc_A2180B: FLdRfVar var_BC
  loc_A2180E: LitVarStr var_CC, "192.168.211."
  loc_A21813: HardType
  loc_A21814: EqVarBool
  loc_A21816: FFree1Ad var_8C
  loc_A21819: FFreeVar var_9C = "": var_AC = ""
  loc_A21822: BranchF loc_A21838
  loc_A21825: LitStr "192.168.40.54"
  loc_A21828: FMemStStrCopy
  loc_A2182D: LitStr "3306"
  loc_A21830: FMemStStrCopy
  loc_A21835: Branch loc_A218A1
  loc_A21838: ImpAdLdRf MemVar_C3DB88
  loc_A2183B: NewIfNullPr MdiContPres
  loc_A2183E: VCallAd Control_ID_Winsock
  loc_A21841: FStAdFunc var_8C
  loc_A21844: FLdPr var_8C
  loc_A21847: LateIdLdVar var_9C DispID_6 0
  loc_A2184E: PopAd
  loc_A21850: LitI4 &HA
  loc_A21855: FLdRfVar var_9C
  loc_A21858: CStrVarTmp
  loc_A21859: CVarStr var_AC
  loc_A2185C: FLdRfVar var_BC
  loc_A2185F: ImpAdCallFPR4  = Left(, )
  loc_A21864: FLdRfVar var_BC
  loc_A21867: LitVarStr var_CC, "192.168.0."
  loc_A2186C: HardType
  loc_A2186D: EqVarBool
  loc_A2186F: FFree1Ad var_8C
  loc_A21872: FFreeVar var_9C = "": var_AC = ""
  loc_A2187B: BranchF loc_A21891
  loc_A2187E: LitStr "192.168.40.54"
  loc_A21881: FMemStStrCopy
  loc_A21886: LitStr "3306"
  loc_A21889: FMemStStrCopy
  loc_A2188E: Branch loc_A218A1
  loc_A21891: LitStr "192.168.40.54"
  loc_A21894: FMemStStrCopy
  loc_A21899: LitStr "3306"
  loc_A2189C: FMemStStrCopy
  loc_A218A1: Branch loc_A218B3
  loc_A218A4: LitI4 0
  loc_A218A9: LitStr "Error en la conexión. Consulte con el Administrador..."
  loc_A218AC: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A218B1: End
  loc_A218B3: LitStr "HKEY_CURRENT_USER\Software\ODBC\ODBC.INI\mycontpres-guaymallen\"
  loc_A218B6: FStStrCopy var_88
  loc_A218B9: LitStr "1"
  loc_A218BC: LitStr "AUTO_RECONNECT"
  loc_A218BF: ILdRf var_88
  loc_A218C2: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A218C7: LitStr "1"
  loc_A218CA: LitStr "BIG_PACKETS"
  loc_A218CD: ILdRf var_88
  loc_A218D0: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A218D5: LitStr "1"
  loc_A218D8: LitStr "COMPRESSED_PROTO"
  loc_A218DB: ILdRf var_88
  loc_A218DE: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A218E3: LitStr "myodbc5.dll"
  loc_A218E6: LitStr "Driver"
  loc_A218E9: ILdRf var_88
  loc_A218EC: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A218F1: LitStr "1"
  loc_A218F4: LitStr "FOUND_ROWS"
  loc_A218F7: ILdRf var_88
  loc_A218FA: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A218FF: LitStr "1"
  loc_A21902: LitStr "MULTI_STATEMENTS"
  loc_A21905: ILdRf var_88
  loc_A21908: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A2190D: FMemLdR4 arg_8(4)
  loc_A21912: LitStr "PORT"
  loc_A21915: ILdRf var_88
  loc_A21918: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A2191D: FMemLdR4 arg_8(0)
  loc_A21922: LitStr "SERVER"
  loc_A21925: ILdRf var_88
  loc_A21928: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A2192D: LitStr "HKEY_CURRENT_USER\Software\ODBC\ODBC.INI\ODBC Data Sources\"
  loc_A21930: FStStrCopy var_88
  loc_A21933: LitStr "MySQL ODBC 5.1 Driver"
  loc_A21936: LitStr "mycontpres-guaymallen"
  loc_A21939: ILdRf var_88
  loc_A2193C: ImpAdCallFPR4 Proc_263_19_9AA028(, , )
  loc_A21941: ExitProc
End Function

Private Function Proc_283_1_9C9B04(arg_C, arg_10, arg_14) '9C9B04
  'Data Table: 4022D8
  loc_9C9A54: ILdRf arg_C
  loc_9C9A57: FStStrCopy var_8C
  loc_9C9A5A: ILdRf arg_10
  loc_9C9A5D: FStStrCopy var_90
  loc_9C9A60: ILdRf arg_14
  loc_9C9A63: FStStrCopy var_94
  loc_9C9A66: OnErrorGoto loc_9C9A87
  loc_9C9A69: ILdRf var_94
  loc_9C9A6C: LitStr vbNullString
  loc_9C9A6F: NeStr
  loc_9C9A71: BranchF loc_9C9A7D
  loc_9C9A74: ILdRf var_94
  loc_9C9A77: FStStrCopy var_88
  loc_9C9A7A: Branch loc_9C9A83
  loc_9C9A7D: ILdRf var_90
  loc_9C9A80: FStStrCopy var_88
  loc_9C9A83: On Error GoTo 0
  loc_9C9A86: ExitProc
  loc_9C9A87: LitVar_Missing var_128
  loc_9C9A8A: LitVar_Missing var_108
  loc_9C9A8D: LitVar_Missing var_E8
  loc_9C9A90: LitI4 0
  loc_9C9A95: LitStr "Error "
  loc_9C9A98: FLdRfVar var_A0
  loc_9C9A9B: ImpAdCallI2 Err 'rtcErrObj
  loc_9C9AA0: FStAdFunc var_9C
  loc_9C9AA3: FLdPr var_9C
  loc_9C9AA6:  = Err.Number
  loc_9C9AAB: ILdRf var_A0
  loc_9C9AAE: CStrI4
  loc_9C9AB0: FStStrNoPop var_A4
  loc_9C9AB3: ConcatStr
  loc_9C9AB4: FStStrNoPop var_A8
  loc_9C9AB7: LitStr " ("
  loc_9C9ABA: ConcatStr
  loc_9C9ABB: FStStrNoPop var_B4
  loc_9C9ABE: FLdRfVar var_B0
  loc_9C9AC1: ImpAdCallI2 Err 'rtcErrObj
  loc_9C9AC6: FStAdFunc var_AC
  loc_9C9AC9: FLdPr var_AC
  loc_9C9ACC:  = Err.Description
  loc_9C9AD1: ILdRf var_B0
  loc_9C9AD4: ConcatStr
  loc_9C9AD5: FStStrNoPop var_B8
  loc_9C9AD8: LitStr ") in procedure GeneraExpeImpu of Módulo DatosCliente"
  loc_9C9ADB: ConcatStr
  loc_9C9ADC: CVarStr var_C8
  loc_9C9ADF: ImpAdCallFPR4 MsgBox(, , , , )
  loc_9C9AE4: FFreeStr var_A4 = "": var_A8 = "": var_B4 = "": var_B0 = ""
  loc_9C9AF1: FFreeAd var_9C = ""
  loc_9C9AF8: FFreeVar var_C8 = "": var_E8 = "": var_108 = ""
  loc_9C9B03: ExitProc
End Function

Private Function Proc_283_2_9B94CC(arg_18) '9B94CC
  'Data Table: 4022D8
  loc_9B9440: ILdRf arg_18
  loc_9B9443: FStStrCopy var_8C
  loc_9B9446: OnErrorGoto loc_9B944D
  loc_9B9449: On Error GoTo 0
  loc_9B944C: ExitProc
  loc_9B944D: LitVar_Missing var_120
  loc_9B9450: LitVar_Missing var_100
  loc_9B9453: LitVar_Missing var_E0
  loc_9B9456: LitI4 0
  loc_9B945B: LitStr "Error "
  loc_9B945E: FLdRfVar var_98
  loc_9B9461: ImpAdCallI2 Err 'rtcErrObj
  loc_9B9466: FStAdFunc var_94
  loc_9B9469: FLdPr var_94
  loc_9B946C:  = Err.Number
  loc_9B9471: ILdRf var_98
  loc_9B9474: CStrI4
  loc_9B9476: FStStrNoPop var_9C
  loc_9B9479: ConcatStr
  loc_9B947A: FStStrNoPop var_A0
  loc_9B947D: LitStr " ("
  loc_9B9480: ConcatStr
  loc_9B9481: FStStrNoPop var_AC
  loc_9B9484: FLdRfVar var_A8
  loc_9B9487: ImpAdCallI2 Err 'rtcErrObj
  loc_9B948C: FStAdFunc var_A4
  loc_9B948F: FLdPr var_A4
  loc_9B9492:  = Err.Description
  loc_9B9497: ILdRf var_A8
  loc_9B949A: ConcatStr
  loc_9B949B: FStStrNoPop var_B0
  loc_9B949E: LitStr ") in procedure ValidaCUITdevengado of Módulo DatosCliente"
  loc_9B94A1: ConcatStr
  loc_9B94A2: CVarStr var_C0
  loc_9B94A5: ImpAdCallFPR4 MsgBox(, , , , )
  loc_9B94AA: FFreeStr var_9C = "": var_A0 = "": var_AC = "": var_A8 = ""
  loc_9B94B7: FFreeAd var_94 = ""
  loc_9B94BE: FFreeVar var_C0 = "": var_E0 = "": var_100 = ""
  loc_9B94C9: ExitProc
End Function
