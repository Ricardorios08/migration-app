VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodetiposdecuentascontables
  Caption = "Listado de tipos de cuentas contables"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodetiposdecuentascontables.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6435
  ClientHeight = 1560
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 1305
    Width = 6435
    Height = 255
    TabIndex = 7
    OleObjectBlob = "rptListadodetiposdecuentascontables.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5400
    Top = 360
    Width = 735
    Height = 615
    TabIndex = 5
    Cancel = -1  'True
    Picture = "rptListadodetiposdecuentascontables.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodetiposdecuentascontables.frx":0B9C
    Left = 4560
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 120
    Width = 1815
    Height = 1095
    TabIndex = 3
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 4
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 120
    Width = 3015
    Height = 1095
    TabIndex = 0
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 2
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 1
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5520
    Top = 600
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 6
    OleObjectBlob = "rptListadodetiposdecuentascontables.frx":0C00
  End
End

Attribute VB_Name = "rptListadodetiposdecuentascontables"

Public bGenerado As Boolean

Private Type UDT_1_005785A4
  bStruc(8) As Byte ' String fields: 2
End Type


Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98566C
  'Data Table: 424A68
  loc_985634: FLdPr Me
  loc_985637: VCallAd Control_ID_statusBar
  loc_98563A: FStAdFunc var_88
  loc_98563D: FLdPr var_88
  loc_985640: LateIdLdVar var_98 DispID_1 0
  loc_985647: CStrVarTmp
  loc_985648: CVarStr var_A8
  loc_98564B: PopAdLdVar
  loc_98564C: FLdPr Me
  loc_98564F: VCallAd Control_ID_statusBar
  loc_985652: FStAdFunc var_BC
  loc_985655: FLdPr var_BC
  loc_985658: LateIdSt
  loc_98565D: FFreeAd var_88 = ""
  loc_985664: FFreeVar var_98 = ""
  loc_98566B: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9642AC
  'Data Table: 424A68
  loc_964294: ILdRf Me
  loc_964297: CastAd
  loc_96429A: FStAdFunc var_88
  loc_96429D: FLdRfVar var_88
  loc_9642A0: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_9642A5: FFree1Ad var_88
  loc_9642A8: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97A870
  'Data Table: 424A68
  loc_97A840: LitVarStr var_94, "Cerrando..."
  loc_97A845: PopAdLdVar
  loc_97A846: FLdPr Me
  loc_97A849: VCallAd Control_ID_statusBar
  loc_97A84C: FStAdFunc var_A8
  loc_97A84F: FLdPr var_A8
  loc_97A852: LateIdSt
  loc_97A857: FFree1Ad var_A8
  loc_97A85A: ILdRf Me
  loc_97A85D: FStAdNoPop
  loc_97A861: ImpAdLdRf MemVar_C44F9C
  loc_97A864: NewIfNullPr Me
  loc_97A867: Me.Global.Unload from_stack_1
  loc_97A86C: FFree1Ad var_A8
  loc_97A86F: ExitProcHresult
End Sub

Private Sub Form_Load() '96A09C
  'Data Table: 424A68
  loc_96A080: LitI2_Byte &HFF
  loc_96A082: ImpAdStI2 MemVar_C3D840
  loc_96A085: ILdRf Me
  loc_96A088: CastAd
  loc_96A08B: FStAdFunc var_88
  loc_96A08E: FLdRfVar var_88
  loc_96A091: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_96A096: FFree1Ad var_88
  loc_96A099: ExitProcHresult
  loc_96A09A: FLdPrThis
End Sub

Private Sub Form_Unload(Cancel As Integer) '9646D4
  'Data Table: 424A68
  loc_9646BC: FLdPr Me
  loc_9646BF: VCallAd Control_ID_wbbReporte
  loc_9646C2: FStAdFunc var_88
  loc_9646C5: FLdRfVar var_88
  loc_9646C8: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_9646CD: FFree1Ad var_88
  loc_9646D0: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9643DC
  'Data Table: 424A68
  loc_9643C4: ILdRf Me
  loc_9643C7: CastAd
  loc_9643CA: FStAdFunc var_88
  loc_9643CD: FLdRfVar var_88
  loc_9643D0: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_9643D5: FFree1Ad var_88
  loc_9643D8: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '964474
  'Data Table: 424A68
  loc_96445C: LitI2_Byte 0
  loc_96445E: ILdRf Me
  loc_964461: CastAd
  loc_964464: FStAdFunc var_88
  loc_964467: FLdRfVar var_88
  loc_96446A: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_96446F: FFree1Ad var_88
  loc_964472: ExitProcHresult
End Sub

Public Function bGeneradoGet() '425158
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '425167
  bGenerado = Value
End Sub

Public Sub GeneraReporte() 'A400C8
  'Data Table: 424A68
  loc_A3FE90: OnErrorGoto loc_A40062
  loc_A3FE93: FLdPr Me
  loc_A3FE96: MemLdI2 bGenerado
  loc_A3FE99: BranchF loc_A3FE9D
  loc_A3FE9C: ExitProcHresult
  loc_A3FE9D: LitVarStr var_94, "Generando reporte..."
  loc_A3FEA2: PopAdLdVar
  loc_A3FEA3: FLdPr Me
  loc_A3FEA6: VCallAd Control_ID_statusBar
  loc_A3FEA9: FStAdFunc var_A8
  loc_A3FEAC: FLdPr var_A8
  loc_A3FEAF: LateIdSt
  loc_A3FEB4: FFree1Ad var_A8
  loc_A3FEB7: LitI4 &HB
  loc_A3FEBC: CI2I4
  loc_A3FEBD: FLdPr Me
  loc_A3FEC0: Me.MousePointer = from_stack_1
  loc_A3FEC5: LitStr "SELECT CodiTicu, DetaTicu FROM tipocuco ORDER BY CodiTicu, DetaTicu"
  loc_A3FEC8: FLdPr Me
  loc_A3FECB: MemLdRfVar from_stack_1.global_60
  loc_A3FECE: NewIfNullPr clstipocuco
  loc_A3FED1: Call clstipocuco.RedefineRS(from_stack_1v)
  loc_A3FED6: FLdRfVar var_AC
  loc_A3FED9: FLdPr Me
  loc_A3FEDC: MemLdRfVar from_stack_1.global_60
  loc_A3FEDF: NewIfNullPr clstipocuco
  loc_A3FEE2: from_stack_1 = clstipocuco.RecordCount
  loc_A3FEE7: ILdRf var_AC
  loc_A3FEEA: LitI4 0
  loc_A3FEEF: EqI4
  loc_A3FEF0: BranchF loc_A3FF03
  loc_A3FEF3: LitI4 0
  loc_A3FEF8: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_A3FEFB: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A3FF00: Branch loc_A40039
  loc_A3FF03: FLdPr Me
  loc_A3FF06: MemLdRfVar from_stack_1.global_60
  loc_A3FF09: NewIfNullAd
  loc_A3FF0C: FStAd var_B0 
  loc_A3FF10: LitI4 1
  loc_A3FF15: FLdRfVar var_AC
  loc_A3FF18: FLdPr var_B0
  loc_A3FF1B: from_stack_1 = clstipocuco.RecordCount
  loc_A3FF20: ILdRf var_AC
  loc_A3FF23: FLdPr Me
  loc_A3FF26: MemLdRfVar from_stack_1.global_84
  loc_A3FF29: Redim
  loc_A3FF33: FLdPr var_B0
  loc_A3FF36: Call clstipocuco.MoveFirst()
  loc_A3FF3B: LitI2_Byte 1
  loc_A3FF3D: FLdPr Me
  loc_A3FF40: MemLdRfVar from_stack_1.global_88
  loc_A3FF43: FLdRfVar var_AC
  loc_A3FF46: FLdPr var_B0
  loc_A3FF49: from_stack_1 = clstipocuco.RecordCount
  loc_A3FF4E: ILdRf var_AC
  loc_A3FF51: CI2I4
  loc_A3FF52: ForI2 var_B4
  loc_A3FF58: FLdRfVar var_BC
  loc_A3FF5B: LitVarStr var_94, "CodiTicu"
  loc_A3FF60: PopAdLdVar
  loc_A3FF61: FLdRfVar var_B8
  loc_A3FF64: FLdRfVar var_A8
  loc_A3FF67: FLdPr var_B0
  loc_A3FF6A: from_stack_1v = clstipocuco.RsFrmGet()
  loc_A3FF6F: FLdPr var_A8
  loc_A3FF72:  = Me.Fields
  loc_A3FF77: FLdPr var_B8
  loc_A3FF7A: from_stack_2 = Me.Item(from_stack_1)
  loc_A3FF7F: LitI2_Byte 0
  loc_A3FF81: LitVar_Missing var_E0
  loc_A3FF84: LitI2_Byte 0
  loc_A3FF86: FLdZeroAd var_BC
  loc_A3FF89: CVarAd
  loc_A3FF8D: PopAdLdVar
  loc_A3FF8E: FLdPr Me
  loc_A3FF91: MemLdI2 global_88
  loc_A3FF94: CI4UI1
  loc_A3FF95: FLdPr Me
  loc_A3FF98: MemLdStr global_84
  loc_A3FF9B: AryLock
  loc_A3FF9E: Ary1LdPr
  loc_A3FF9F: MemLdRfVar from_stack_1.global_0
  loc_A3FFA2: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A3FFA7: AryUnlock
  loc_A3FFAA: FFreeAd var_A8 = ""
  loc_A3FFB1: FFreeVar var_D0 = ""
  loc_A3FFB8: FLdRfVar var_BC
  loc_A3FFBB: LitVarStr var_94, "DetaTicu"
  loc_A3FFC0: PopAdLdVar
  loc_A3FFC1: FLdRfVar var_B8
  loc_A3FFC4: FLdRfVar var_A8
  loc_A3FFC7: FLdPr var_B0
  loc_A3FFCA: from_stack_1v = clstipocuco.RsFrmGet()
  loc_A3FFCF: FLdPr var_A8
  loc_A3FFD2:  = Me.Fields
  loc_A3FFD7: FLdPr var_B8
  loc_A3FFDA: from_stack_2 = Me.Item(from_stack_1)
  loc_A3FFDF: LitI2_Byte 0
  loc_A3FFE1: LitVar_Missing var_E0
  loc_A3FFE4: LitI2_Byte 0
  loc_A3FFE6: FLdZeroAd var_BC
  loc_A3FFE9: CVarAd
  loc_A3FFED: PopAdLdVar
  loc_A3FFEE: FLdPr Me
  loc_A3FFF1: MemLdI2 global_88
  loc_A3FFF4: CI4UI1
  loc_A3FFF5: FLdPr Me
  loc_A3FFF8: MemLdStr global_84
  loc_A3FFFB: AryLock
  loc_A3FFFE: Ary1LdPr
  loc_A3FFFF: MemLdRfVar from_stack_1.global_4
  loc_A40002: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A40007: AryUnlock
  loc_A4000A: FFreeAd var_A8 = ""
  loc_A40011: FFreeVar var_D0 = ""
  loc_A40018: FLdPr var_B0
  loc_A4001B: Call clstipocuco.MoveSiguiente()
  loc_A40020: FLdPr Me
  loc_A40023: MemLdRfVar from_stack_1.global_88
  loc_A40026: NextI2 var_B4, loc_A3FF58
  loc_A4002B: LitNothing
  loc_A4002D: FStAd var_B0 
  loc_A40031: LitI2_Byte &HFF
  loc_A40033: FLdPr Me
  loc_A40036: MemStI2 bGenerado
  loc_A40039: LitI4 0
  loc_A4003E: CI2I4
  loc_A4003F: FLdPr Me
  loc_A40042: Me.MousePointer = from_stack_1
  loc_A40047: LitVarStr var_94, vbNullString
  loc_A4004C: PopAdLdVar
  loc_A4004D: FLdPr Me
  loc_A40050: VCallAd Control_ID_statusBar
  loc_A40053: FStAdFunc var_A8
  loc_A40056: FLdPr var_A8
  loc_A40059: LateIdSt
  loc_A4005E: FFree1Ad var_A8
  loc_A40061: ExitProcHresult
  loc_A40062: LitI4 0
  loc_A40067: LitStr "Error "
  loc_A4006A: FLdRfVar var_AC
  loc_A4006D: ImpAdCallI2 Err 'rtcErrObj
  loc_A40072: FStAdFunc var_A8
  loc_A40075: FLdPr var_A8
  loc_A40078:  = Err.Number
  loc_A4007D: ILdRf var_AC
  loc_A40080: CStrI4
  loc_A40082: FStStrNoPop var_E4
  loc_A40085: ConcatStr
  loc_A40086: FStStrNoPop var_E8
  loc_A40089: LitStr ": "
  loc_A4008C: ConcatStr
  loc_A4008D: FStStrNoPop var_F0
  loc_A40090: FLdRfVar var_EC
  loc_A40093: ImpAdCallI2 Err 'rtcErrObj
  loc_A40098: FStAdFunc var_B8
  loc_A4009B: FLdPr var_B8
  loc_A4009E:  = Err.Description
  loc_A400A3: ILdRf var_EC
  loc_A400A6: ConcatStr
  loc_A400A7: FStStrNoPop var_F4
  loc_A400AA: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A400AF: FFreeStr var_E4 = "": var_E8 = "": var_F0 = "": var_EC = ""
  loc_A400BC: FFreeAd var_A8 = ""
  loc_A400C3: ExitProcHresult
  loc_A400C4: ExitProcHresult
End Sub

Public Sub GeneraHTML() '9D8660
  'Data Table: 424A68
  loc_9D855C: FLdRfVar var_88
  loc_9D855F: LitI2_Byte 0
  loc_9D8561: LitI2_Byte &HFF
  loc_9D8563: ImpAdLdI4 MemVar_C3D83C
  loc_9D8566: FLdPr Me
  loc_9D8569: MemLdRfVar from_stack_1.global_64
  loc_9D856C: NewIfNullPr IFileSystem3
  loc_9D856F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_9D8574: ILdRf var_88
  loc_9D8577: FLdPr Me
  loc_9D857A: MemStVarAd
  loc_9D857E: FFree1Ad var_88
  loc_9D8581: Call Proc_206_11_A9B754()
  loc_9D8586: LitI2_Byte 1
  loc_9D8588: FLdPr Me
  loc_9D858B: MemLdRfVar from_stack_1.global_88
  loc_9D858E: FLdPr Me
  loc_9D8591: MemLdStr global_84
  loc_9D8594: LitI2_Byte 1
  loc_9D8596: FnUBound
  loc_9D8598: CI2I4
  loc_9D8599: ForI2 var_8C
  loc_9D859F: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_9D85A4: PopAdLdVar
  loc_9D85A5: FLdPr Me
  loc_9D85A8: MemLdRfVar from_stack_1.global_68
  loc_9D85AB: LdPrVar
  loc_9D85AD: LateMemCall
  loc_9D85B3: LitI4 0
  loc_9D85B8: LitI4 0
  loc_9D85BD: LitI2_Byte 0
  loc_9D85BF: LitStr "left"
  loc_9D85C2: FLdPr Me
  loc_9D85C5: MemLdI2 global_88
  loc_9D85C8: CI4UI1
  loc_9D85C9: FLdPr Me
  loc_9D85CC: MemLdStr global_84
  loc_9D85CF: Ary1LdPr
  loc_9D85D0: MemLdStr global_0
  loc_9D85D3: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_9D85D8: CVarStr var_BC
  loc_9D85DB: PopAdLdVar
  loc_9D85DC: FLdPr Me
  loc_9D85DF: MemLdRfVar from_stack_1.global_68
  loc_9D85E2: LdPrVar
  loc_9D85E4: LateMemCall
  loc_9D85EA: FFree1Var var_BC = ""
  loc_9D85ED: LitI4 0
  loc_9D85F2: LitI4 0
  loc_9D85F7: LitI2_Byte 0
  loc_9D85F9: LitStr "left"
  loc_9D85FC: FLdPr Me
  loc_9D85FF: MemLdI2 global_88
  loc_9D8602: CI4UI1
  loc_9D8603: FLdPr Me
  loc_9D8606: MemLdStr global_84
  loc_9D8609: Ary1LdPr
  loc_9D860A: MemLdStr global_4
  loc_9D860D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_9D8612: CVarStr var_BC
  loc_9D8615: PopAdLdVar
  loc_9D8616: FLdPr Me
  loc_9D8619: MemLdRfVar from_stack_1.global_68
  loc_9D861C: LdPrVar
  loc_9D861E: LateMemCall
  loc_9D8624: FFree1Var var_BC = ""
  loc_9D8627: LitVarStr var_9C, "  </tr>"
  loc_9D862C: PopAdLdVar
  loc_9D862D: FLdPr Me
  loc_9D8630: MemLdRfVar from_stack_1.global_68
  loc_9D8633: LdPrVar
  loc_9D8635: LateMemCall
  loc_9D863B: FLdPr Me
  loc_9D863E: MemLdRfVar from_stack_1.global_88
  loc_9D8641: NextI2 var_8C, loc_9D859F
  loc_9D8646: Call Proc_206_12_983CE0()
  loc_9D864B: FLdPr Me
  loc_9D864E: MemLdRfVar from_stack_1.global_68
  loc_9D8651: LdPrVar
  loc_9D8653: LateMemCall
  loc_9D8659: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_9D865E: ExitProcHresult
End Sub

Private Function Proc_206_11_A9B754() 'A9B754
  'Data Table: 424A68
  loc_A9B290: LitVarStr var_94, "<html>"
  loc_A9B295: PopAdLdVar
  loc_A9B296: FLdPr Me
  loc_A9B299: MemLdRfVar from_stack_1.global_68
  loc_A9B29C: LdPrVar
  loc_A9B29E: LateMemCall
  loc_A9B2A4: LitVarStr var_94, "<head>"
  loc_A9B2A9: PopAdLdVar
  loc_A9B2AA: FLdPr Me
  loc_A9B2AD: MemLdRfVar from_stack_1.global_68
  loc_A9B2B0: LdPrVar
  loc_A9B2B2: LateMemCall
  loc_A9B2B8: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A9B2BD: PopAdLdVar
  loc_A9B2BE: FLdPr Me
  loc_A9B2C1: MemLdRfVar from_stack_1.global_68
  loc_A9B2C4: LdPrVar
  loc_A9B2C6: LateMemCall
  loc_A9B2CC: LitStr "<title>"
  loc_A9B2CF: FLdRfVar var_A8
  loc_A9B2D2: FLdPr Me
  loc_A9B2D5:  = Me.Caption
  loc_A9B2DA: ILdRf var_A8
  loc_A9B2DD: ConcatStr
  loc_A9B2DE: FStStrNoPop var_AC
  loc_A9B2E1: LitStr "</title>"
  loc_A9B2E4: ConcatStr
  loc_A9B2E5: CVarStr var_BC
  loc_A9B2E8: PopAdLdVar
  loc_A9B2E9: FLdPr Me
  loc_A9B2EC: MemLdRfVar from_stack_1.global_68
  loc_A9B2EF: LdPrVar
  loc_A9B2F1: LateMemCall
  loc_A9B2F7: FFreeStr var_A8 = ""
  loc_A9B2FE: FFree1Var var_BC = ""
  loc_A9B301: LitVarStr var_94, "<style type=""text/css"">"
  loc_A9B306: PopAdLdVar
  loc_A9B307: FLdPr Me
  loc_A9B30A: MemLdRfVar from_stack_1.global_68
  loc_A9B30D: LdPrVar
  loc_A9B30F: LateMemCall
  loc_A9B315: LitVarStr var_94, ".Titulo1 {"
  loc_A9B31A: PopAdLdVar
  loc_A9B31B: FLdPr Me
  loc_A9B31E: MemLdRfVar from_stack_1.global_68
  loc_A9B321: LdPrVar
  loc_A9B323: LateMemCall
  loc_A9B329: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_A9B32E: PopAdLdVar
  loc_A9B32F: FLdPr Me
  loc_A9B332: MemLdRfVar from_stack_1.global_68
  loc_A9B335: LdPrVar
  loc_A9B337: LateMemCall
  loc_A9B33D: LitVarStr var_94, " font-size: 18px;"
  loc_A9B342: PopAdLdVar
  loc_A9B343: FLdPr Me
  loc_A9B346: MemLdRfVar from_stack_1.global_68
  loc_A9B349: LdPrVar
  loc_A9B34B: LateMemCall
  loc_A9B351: LitVarStr var_94, " font-weight: bold;"
  loc_A9B356: PopAdLdVar
  loc_A9B357: FLdPr Me
  loc_A9B35A: MemLdRfVar from_stack_1.global_68
  loc_A9B35D: LdPrVar
  loc_A9B35F: LateMemCall
  loc_A9B365: LitVarStr var_94, "}"
  loc_A9B36A: PopAdLdVar
  loc_A9B36B: FLdPr Me
  loc_A9B36E: MemLdRfVar from_stack_1.global_68
  loc_A9B371: LdPrVar
  loc_A9B373: LateMemCall
  loc_A9B379: LitVarStr var_94, ".Titulo2 {"
  loc_A9B37E: PopAdLdVar
  loc_A9B37F: FLdPr Me
  loc_A9B382: MemLdRfVar from_stack_1.global_68
  loc_A9B385: LdPrVar
  loc_A9B387: LateMemCall
  loc_A9B38D: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_A9B392: PopAdLdVar
  loc_A9B393: FLdPr Me
  loc_A9B396: MemLdRfVar from_stack_1.global_68
  loc_A9B399: LdPrVar
  loc_A9B39B: LateMemCall
  loc_A9B3A1: LitVarStr var_94, " font-size: 14px;"
  loc_A9B3A6: PopAdLdVar
  loc_A9B3A7: FLdPr Me
  loc_A9B3AA: MemLdRfVar from_stack_1.global_68
  loc_A9B3AD: LdPrVar
  loc_A9B3AF: LateMemCall
  loc_A9B3B5: LitVarStr var_94, " font-weight: bold;"
  loc_A9B3BA: PopAdLdVar
  loc_A9B3BB: FLdPr Me
  loc_A9B3BE: MemLdRfVar from_stack_1.global_68
  loc_A9B3C1: LdPrVar
  loc_A9B3C3: LateMemCall
  loc_A9B3C9: LitVarStr var_94, "}"
  loc_A9B3CE: PopAdLdVar
  loc_A9B3CF: FLdPr Me
  loc_A9B3D2: MemLdRfVar from_stack_1.global_68
  loc_A9B3D5: LdPrVar
  loc_A9B3D7: LateMemCall
  loc_A9B3DD: LitVarStr var_94, ".Normal {"
  loc_A9B3E2: PopAdLdVar
  loc_A9B3E3: FLdPr Me
  loc_A9B3E6: MemLdRfVar from_stack_1.global_68
  loc_A9B3E9: LdPrVar
  loc_A9B3EB: LateMemCall
  loc_A9B3F1: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_A9B3F6: PopAdLdVar
  loc_A9B3F7: FLdPr Me
  loc_A9B3FA: MemLdRfVar from_stack_1.global_68
  loc_A9B3FD: LdPrVar
  loc_A9B3FF: LateMemCall
  loc_A9B405: LitVarStr var_94, " font-size: 14px;"
  loc_A9B40A: PopAdLdVar
  loc_A9B40B: FLdPr Me
  loc_A9B40E: MemLdRfVar from_stack_1.global_68
  loc_A9B411: LdPrVar
  loc_A9B413: LateMemCall
  loc_A9B419: LitVarStr var_94, " font-style: normal;"
  loc_A9B41E: PopAdLdVar
  loc_A9B41F: FLdPr Me
  loc_A9B422: MemLdRfVar from_stack_1.global_68
  loc_A9B425: LdPrVar
  loc_A9B427: LateMemCall
  loc_A9B42D: LitVarStr var_94, " font-weight: normal;"
  loc_A9B432: PopAdLdVar
  loc_A9B433: FLdPr Me
  loc_A9B436: MemLdRfVar from_stack_1.global_68
  loc_A9B439: LdPrVar
  loc_A9B43B: LateMemCall
  loc_A9B441: LitVarStr var_94, " font-variant: normal;"
  loc_A9B446: PopAdLdVar
  loc_A9B447: FLdPr Me
  loc_A9B44A: MemLdRfVar from_stack_1.global_68
  loc_A9B44D: LdPrVar
  loc_A9B44F: LateMemCall
  loc_A9B455: LitVarStr var_94, "}"
  loc_A9B45A: PopAdLdVar
  loc_A9B45B: FLdPr Me
  loc_A9B45E: MemLdRfVar from_stack_1.global_68
  loc_A9B461: LdPrVar
  loc_A9B463: LateMemCall
  loc_A9B469: LitVarStr var_94, ".Encabezado {"
  loc_A9B46E: PopAdLdVar
  loc_A9B46F: FLdPr Me
  loc_A9B472: MemLdRfVar from_stack_1.global_68
  loc_A9B475: LdPrVar
  loc_A9B477: LateMemCall
  loc_A9B47D: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_A9B482: PopAdLdVar
  loc_A9B483: FLdPr Me
  loc_A9B486: MemLdRfVar from_stack_1.global_68
  loc_A9B489: LdPrVar
  loc_A9B48B: LateMemCall
  loc_A9B491: LitVarStr var_94, " font-size: 13px;"
  loc_A9B496: PopAdLdVar
  loc_A9B497: FLdPr Me
  loc_A9B49A: MemLdRfVar from_stack_1.global_68
  loc_A9B49D: LdPrVar
  loc_A9B49F: LateMemCall
  loc_A9B4A5: LitVarStr var_94, " font-weight: bold;"
  loc_A9B4AA: PopAdLdVar
  loc_A9B4AB: FLdPr Me
  loc_A9B4AE: MemLdRfVar from_stack_1.global_68
  loc_A9B4B1: LdPrVar
  loc_A9B4B3: LateMemCall
  loc_A9B4B9: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_A9B4BE: PopAdLdVar
  loc_A9B4BF: FLdPr Me
  loc_A9B4C2: MemLdRfVar from_stack_1.global_68
  loc_A9B4C5: LdPrVar
  loc_A9B4C7: LateMemCall
  loc_A9B4CD: LitVarStr var_94, "}"
  loc_A9B4D2: PopAdLdVar
  loc_A9B4D3: FLdPr Me
  loc_A9B4D6: MemLdRfVar from_stack_1.global_68
  loc_A9B4D9: LdPrVar
  loc_A9B4DB: LateMemCall
  loc_A9B4E1: LitVarStr var_94, ".LineaDato {"
  loc_A9B4E6: PopAdLdVar
  loc_A9B4E7: FLdPr Me
  loc_A9B4EA: MemLdRfVar from_stack_1.global_68
  loc_A9B4ED: LdPrVar
  loc_A9B4EF: LateMemCall
  loc_A9B4F5: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_A9B4FA: PopAdLdVar
  loc_A9B4FB: FLdPr Me
  loc_A9B4FE: MemLdRfVar from_stack_1.global_68
  loc_A9B501: LdPrVar
  loc_A9B503: LateMemCall
  loc_A9B509: LitVarStr var_94, " font-size: 10px;"
  loc_A9B50E: PopAdLdVar
  loc_A9B50F: FLdPr Me
  loc_A9B512: MemLdRfVar from_stack_1.global_68
  loc_A9B515: LdPrVar
  loc_A9B517: LateMemCall
  loc_A9B51D: LitVarStr var_94, "}"
  loc_A9B522: PopAdLdVar
  loc_A9B523: FLdPr Me
  loc_A9B526: MemLdRfVar from_stack_1.global_68
  loc_A9B529: LdPrVar
  loc_A9B52B: LateMemCall
  loc_A9B531: LitVarStr var_94, ".Totales {"
  loc_A9B536: PopAdLdVar
  loc_A9B537: FLdPr Me
  loc_A9B53A: MemLdRfVar from_stack_1.global_68
  loc_A9B53D: LdPrVar
  loc_A9B53F: LateMemCall
  loc_A9B545: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_A9B54A: PopAdLdVar
  loc_A9B54B: FLdPr Me
  loc_A9B54E: MemLdRfVar from_stack_1.global_68
  loc_A9B551: LdPrVar
  loc_A9B553: LateMemCall
  loc_A9B559: LitVarStr var_94, " font-size: 12px;"
  loc_A9B55E: PopAdLdVar
  loc_A9B55F: FLdPr Me
  loc_A9B562: MemLdRfVar from_stack_1.global_68
  loc_A9B565: LdPrVar
  loc_A9B567: LateMemCall
  loc_A9B56D: LitVarStr var_94, " font-weight: bold;"
  loc_A9B572: PopAdLdVar
  loc_A9B573: FLdPr Me
  loc_A9B576: MemLdRfVar from_stack_1.global_68
  loc_A9B579: LdPrVar
  loc_A9B57B: LateMemCall
  loc_A9B581: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_A9B586: PopAdLdVar
  loc_A9B587: FLdPr Me
  loc_A9B58A: MemLdRfVar from_stack_1.global_68
  loc_A9B58D: LdPrVar
  loc_A9B58F: LateMemCall
  loc_A9B595: LitVarStr var_94, "}"
  loc_A9B59A: PopAdLdVar
  loc_A9B59B: FLdPr Me
  loc_A9B59E: MemLdRfVar from_stack_1.global_68
  loc_A9B5A1: LdPrVar
  loc_A9B5A3: LateMemCall
  loc_A9B5A9: LitVarStr var_94, "</style>"
  loc_A9B5AE: PopAdLdVar
  loc_A9B5AF: FLdPr Me
  loc_A9B5B2: MemLdRfVar from_stack_1.global_68
  loc_A9B5B5: LdPrVar
  loc_A9B5B7: LateMemCall
  loc_A9B5BD: LitI4 0
  loc_A9B5C2: FStStrCopy var_AC
  loc_A9B5C5: FLdRfVar var_AC
  loc_A9B5C8: LitI4 0
  loc_A9B5CD: FStStrCopy var_A8
  loc_A9B5D0: FLdRfVar var_A8
  loc_A9B5D3: LitI2_Byte 0
  loc_A9B5D5: PopTmpLdAd2 var_BE
  loc_A9B5D8: FLdPr Me
  loc_A9B5DB: MemLdRfVar from_stack_1.global_68
  loc_A9B5DE: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A9B5E3: FFreeStr var_A8 = ""
  loc_A9B5EA: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A9B5EF: PopAdLdVar
  loc_A9B5F0: FLdPr Me
  loc_A9B5F3: MemLdRfVar from_stack_1.global_68
  loc_A9B5F6: LdPrVar
  loc_A9B5F8: LateMemCall
  loc_A9B5FE: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A9B603: PopAdLdVar
  loc_A9B604: FLdPr Me
  loc_A9B607: MemLdRfVar from_stack_1.global_68
  loc_A9B60A: LdPrVar
  loc_A9B60C: LateMemCall
  loc_A9B612: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><br>"
  loc_A9B617: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A9B61C: FStVarCopyObj var_BC
  loc_A9B61F: FLdRfVar var_BC
  loc_A9B622: FLdRfVar var_D0
  loc_A9B625: ImpAdCallFPR4  = Ucase()
  loc_A9B62A: FLdRfVar var_D0
  loc_A9B62D: ConcatVar var_E0
  loc_A9B631: LitVarStr var_F0, "</p>"
  loc_A9B636: ConcatVar var_100
  loc_A9B63A: PopAdLdVar
  loc_A9B63B: FLdPr Me
  loc_A9B63E: MemLdRfVar from_stack_1.global_68
  loc_A9B641: LdPrVar
  loc_A9B643: LateMemCall
  loc_A9B649: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_A9B654: LitStr "    <p>"
  loc_A9B657: FLdRfVar var_A8
  loc_A9B65A: FLdPr Me
  loc_A9B65D:  = Me.Caption
  loc_A9B662: ILdRf var_A8
  loc_A9B665: ConcatStr
  loc_A9B666: FStStrNoPop var_AC
  loc_A9B669: LitStr "</p></th>"
  loc_A9B66C: ConcatStr
  loc_A9B66D: CVarStr var_BC
  loc_A9B670: PopAdLdVar
  loc_A9B671: FLdPr Me
  loc_A9B674: MemLdRfVar from_stack_1.global_68
  loc_A9B677: LdPrVar
  loc_A9B679: LateMemCall
  loc_A9B67F: FFreeStr var_A8 = ""
  loc_A9B686: FFree1Var var_BC = ""
  loc_A9B689: LitVarStr var_94, "  </tr>"
  loc_A9B68E: PopAdLdVar
  loc_A9B68F: FLdPr Me
  loc_A9B692: MemLdRfVar from_stack_1.global_68
  loc_A9B695: LdPrVar
  loc_A9B697: LateMemCall
  loc_A9B69D: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A9B6A2: PopAdLdVar
  loc_A9B6A3: FLdPr Me
  loc_A9B6A6: MemLdRfVar from_stack_1.global_68
  loc_A9B6A9: LdPrVar
  loc_A9B6AB: LateMemCall
  loc_A9B6B1: LitVarStr var_94, "    <th align=""left"" valign=""bottom""><hr></th>"
  loc_A9B6B6: PopAdLdVar
  loc_A9B6B7: FLdPr Me
  loc_A9B6BA: MemLdRfVar from_stack_1.global_68
  loc_A9B6BD: LdPrVar
  loc_A9B6BF: LateMemCall
  loc_A9B6C5: LitVarStr var_94, "  </tr>"
  loc_A9B6CA: PopAdLdVar
  loc_A9B6CB: FLdPr Me
  loc_A9B6CE: MemLdRfVar from_stack_1.global_68
  loc_A9B6D1: LdPrVar
  loc_A9B6D3: LateMemCall
  loc_A9B6D9: LitVarStr var_94, "</table>"
  loc_A9B6DE: PopAdLdVar
  loc_A9B6DF: FLdPr Me
  loc_A9B6E2: MemLdRfVar from_stack_1.global_68
  loc_A9B6E5: LdPrVar
  loc_A9B6E7: LateMemCall
  loc_A9B6ED: LitVarStr var_94, "<table width=""65" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A9B6F2: PopAdLdVar
  loc_A9B6F3: FLdPr Me
  loc_A9B6F6: MemLdRfVar from_stack_1.global_68
  loc_A9B6F9: LdPrVar
  loc_A9B6FB: LateMemCall
  loc_A9B701: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A9B706: PopAdLdVar
  loc_A9B707: FLdPr Me
  loc_A9B70A: MemLdRfVar from_stack_1.global_68
  loc_A9B70D: LdPrVar
  loc_A9B70F: LateMemCall
  loc_A9B715: LitVarStr var_94, "    <th>Código</th>"
  loc_A9B71A: PopAdLdVar
  loc_A9B71B: FLdPr Me
  loc_A9B71E: MemLdRfVar from_stack_1.global_68
  loc_A9B721: LdPrVar
  loc_A9B723: LateMemCall
  loc_A9B729: LitVarStr var_94, "    <th>Detalle</th>"
  loc_A9B72E: PopAdLdVar
  loc_A9B72F: FLdPr Me
  loc_A9B732: MemLdRfVar from_stack_1.global_68
  loc_A9B735: LdPrVar
  loc_A9B737: LateMemCall
  loc_A9B73D: LitVarStr var_94, "  </tr>"
  loc_A9B742: PopAdLdVar
  loc_A9B743: FLdPr Me
  loc_A9B746: MemLdRfVar from_stack_1.global_68
  loc_A9B749: LdPrVar
  loc_A9B74B: LateMemCall
  loc_A9B751: ExitProcHresult
  loc_A9B752: Ary1StI2
End Function

Private Function Proc_206_12_983CE0() '983CE0
  'Data Table: 424A68
  loc_983CA0: LitVarStr var_94, "</table>"
  loc_983CA5: PopAdLdVar
  loc_983CA6: FLdPr Me
  loc_983CA9: MemLdRfVar from_stack_1.global_68
  loc_983CAC: LdPrVar
  loc_983CAE: LateMemCall
  loc_983CB4: LitVarStr var_94, "</body>"
  loc_983CB9: PopAdLdVar
  loc_983CBA: FLdPr Me
  loc_983CBD: MemLdRfVar from_stack_1.global_68
  loc_983CC0: LdPrVar
  loc_983CC2: LateMemCall
  loc_983CC8: LitVarStr var_94, "</html>"
  loc_983CCD: PopAdLdVar
  loc_983CCE: FLdPr Me
  loc_983CD1: MemLdRfVar from_stack_1.global_68
  loc_983CD4: LdPrVar
  loc_983CD6: LateMemCall
  loc_983CDC: ExitProcHresult
  loc_983CDD: FLdR8 arg_23
End Function
