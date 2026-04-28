VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeInsumos
  Caption = "Listado de Insumos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeInsumos.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6960
  ClientHeight = 2535
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2280
    Width = 6960
    Height = 255
    TabIndex = 11
    OleObjectBlob = "rptListadodeInsumos.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5640
    Top = 1320
    Width = 735
    Height = 615
    TabIndex = 9
    Cancel = -1  'True
    Picture = "rptListadodeInsumos.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeInsumos.frx":0B9C
    Left = 6360
    Top = 120
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1080
    Width = 1815
    Height = 1095
    TabIndex = 7
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 8
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1080
    Width = 3015
    Height = 1095
    TabIndex = 4
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 6
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 5
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 6735
    Height = 975
    TabIndex = 0
    Begin VB.TextBox DetaInsuTxt
      Left = 1440
      Top = 360
      Width = 3375
      Height = 285
      TabIndex = 2
      MaxLength = 25
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5280
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.Label Label1
      Caption = "Detalle contiene:"
      Left = 120
      Top = 360
      Width = 1215
      Height = 195
      TabIndex = 1
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5760
    Top = 1560
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 10
    OleObjectBlob = "rptListadodeInsumos.frx":0C00
  End
End

Attribute VB_Name = "rptListadodeInsumos"

Public bGenerado As Boolean


Private Sub cmdSalir_Click() '979C54
  'Data Table: 430998
  loc_979C24: LitVarStr var_94, "Cerrando..."
  loc_979C29: PopAdLdVar
  loc_979C2A: FLdPr Me
  loc_979C2D: VCallAd Control_ID_statusBar
  loc_979C30: FStAdFunc var_A8
  loc_979C33: FLdPr var_A8
  loc_979C36: LateIdSt
  loc_979C3B: FFree1Ad var_A8
  loc_979C3E: ILdRf Me
  loc_979C41: FStAdNoPop
  loc_979C45: ImpAdLdRf MemVar_C44F9C
  loc_979C48: NewIfNullPr Me
  loc_979C4B: Me.Global.Unload from_stack_1
  loc_979C50: FFree1Ad var_A8
  loc_979C53: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '985070
  'Data Table: 430998
  loc_985030: LitI2_Byte 0
  loc_985032: FLdPr Me
  loc_985035: MemStI2 bGenerado
  loc_985038: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_98503D: LitStr vbNullString
  loc_985040: FLdPr Me
  loc_985043: VCallAd Control_ID_DetaInsuTxt
  loc_985046: FStAdFunc var_88
  loc_985049: FLdPr var_88
  loc_98504C: Me.Text = from_stack_1
  loc_985051: FFree1Ad var_88
  loc_985054: Call HabilitarCriterio()
  loc_985059: ILdRf Me
  loc_98505C: CastAd
  loc_98505F: FStAdFunc var_88
  loc_985062: FLdRfVar var_88
  loc_985065: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_98506A: FFree1Ad var_88
  loc_98506D: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '9630DC
  'Data Table: 430998
  loc_9630C4: LitI2_Byte 0
  loc_9630C6: ILdRf Me
  loc_9630C9: CastAd
  loc_9630CC: FStAdFunc var_88
  loc_9630CF: FLdRfVar var_88
  loc_9630D2: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_9630D7: FFree1Ad var_88
  loc_9630DA: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98BA44
  'Data Table: 430998
  loc_98BA0C: FLdPr Me
  loc_98BA0F: VCallAd Control_ID_statusBar
  loc_98BA12: FStAdFunc var_88
  loc_98BA15: FLdPr var_88
  loc_98BA18: LateIdLdVar var_98 DispID_1 0
  loc_98BA1F: CStrVarTmp
  loc_98BA20: CVarStr var_A8
  loc_98BA23: PopAdLdVar
  loc_98BA24: FLdPr Me
  loc_98BA27: VCallAd Control_ID_statusBar
  loc_98BA2A: FStAdFunc var_BC
  loc_98BA2D: FLdPr var_BC
  loc_98BA30: LateIdSt
  loc_98BA35: FFreeAd var_88 = ""
  loc_98BA3C: FFreeVar var_98 = ""
  loc_98BA43: ExitProcHresult
End Sub

Private Sub DetaInsuTxt_GotFocus() '953820
  'Data Table: 430998
  loc_95380C: FLdPr Me
  loc_95380F: VCallAd Control_ID_DetaInsuTxt
  loc_953812: CVarAd
  loc_953816: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95381B: FFree1Var var_94 = ""
  loc_95381E: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '962FAC
  'Data Table: 430998
  loc_962F94: ILdRf Me
  loc_962F97: CastAd
  loc_962F9A: FStAdFunc var_88
  loc_962F9D: FLdRfVar var_88
  loc_962FA0: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_962FA5: FFree1Ad var_88
  loc_962FA8: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '963044
  'Data Table: 430998
  loc_96302C: ILdRf Me
  loc_96302F: CastAd
  loc_963032: FStAdFunc var_88
  loc_963035: FLdRfVar var_88
  loc_963038: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_96303D: FFree1Ad var_88
  loc_963040: ExitProcHresult
End Sub

Private Sub Form_Load() '96CB50
  'Data Table: 430998
  loc_96CB30: LitI2_Byte &HFF
  loc_96CB32: ImpAdStI2 MemVar_C3D840
  loc_96CB35: ILdRf Me
  loc_96CB38: CastAd
  loc_96CB3B: FStAdFunc var_88
  loc_96CB3E: FLdRfVar var_88
  loc_96CB41: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_96CB46: FFree1Ad var_88
  loc_96CB49: Call cmdNueva_Click()
  loc_96CB4E: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '96320C
  'Data Table: 430998
  loc_9631F4: FLdPr Me
  loc_9631F7: VCallAd Control_ID_wbbReporte
  loc_9631FA: FStAdFunc var_88
  loc_9631FD: FLdRfVar var_88
  loc_963200: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_963205: FFree1Ad var_88
  loc_963208: ExitProcHresult
  loc_963209: NeI2
  loc_96320A: AddCy
End Sub

Public Function bGeneradoGet() '43130C
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '43131B
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '984BDC
  'Data Table: 430998
  loc_984BA8: LitI4 0
  loc_984BAD: LitI4 0
  loc_984BB2: FLdRfVar var_88
  loc_984BB5: Redim
  loc_984BBF: FLdPr Me
  loc_984BC2: VCallAd Control_ID_DetaInsuTxt
  loc_984BC5: CVarAd
  loc_984BC9: ParmAry1St
  loc_984BCF: FLdRfVar var_88
  loc_984BD2: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_984BD7: FLdRfVar var_88
  loc_984BDA: Erase
  loc_984BDB: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'A13760
  'Data Table: 430998
  loc_A135F0: OnErrorGoto loc_A136FD
  loc_A135F3: FLdPr Me
  loc_A135F6: MemLdI2 bGenerado
  loc_A135F9: BranchF loc_A135FD
  loc_A135FC: ExitProcHresult
  loc_A135FD: LitVarStr var_98, "Generando reporte..."
  loc_A13602: PopAdLdVar
  loc_A13603: FLdPr Me
  loc_A13606: VCallAd Control_ID_statusBar
  loc_A13609: FStAdFunc var_AC
  loc_A1360C: FLdPr var_AC
  loc_A1360F: LateIdSt
  loc_A13614: FFree1Ad var_AC
  loc_A13617: LitI4 &HB
  loc_A1361C: CI2I4
  loc_A1361D: FLdPr Me
  loc_A13620: Me.MousePointer = from_stack_1
  loc_A13625: FLdRfVar var_B0
  loc_A13628: FLdPr Me
  loc_A1362B: VCallAd Control_ID_DetaInsuTxt
  loc_A1362E: FStAdFunc var_AC
  loc_A13631: FLdPr var_AC
  loc_A13634:  = Me.Text
  loc_A13639: ILdRf var_B0
  loc_A1363C: LitStr vbNullString
  loc_A1363F: NeStr
  loc_A13641: FFree1Str var_B0
  loc_A13644: FFree1Ad var_AC
  loc_A13647: BranchF loc_A13679
  loc_A1364A: LitStr " AND DetaInsu LIKE '" & Chr(37)
  loc_A1364D: FLdRfVar var_B0
  loc_A13650: FLdPr Me
  loc_A13653: VCallAd Control_ID_DetaInsuTxt
  loc_A13656: FStAdFunc var_AC
  loc_A13659: FLdPr var_AC
  loc_A1365C:  = Me.Text
  loc_A13661: ILdRf var_B0
  loc_A13664: ConcatStr
  loc_A13665: FStStrNoPop var_B4
  loc_A13668: LitStr Chr(37) & "'"
  loc_A1366B: ConcatStr
  loc_A1366C: FStStr var_88
  loc_A1366F: FFreeStr var_B0 = ""
  loc_A13676: FFree1Ad var_AC
  loc_A13679: LitStr "SELECT CodiInsu, DetaInsu, UlprInsu, AltaUsua FROM infogov.insumo WHERE TRUE "
  loc_A1367C: ILdRf var_88
  loc_A1367F: ConcatStr
  loc_A13680: FStStrNoPop var_B0
  loc_A13683: LitStr "ORDER BY DetaInsu"
  loc_A13686: ConcatStr
  loc_A13687: FStStrNoPop var_B4
  loc_A1368A: FLdPr Me
  loc_A1368D: MemLdRfVar from_stack_1.global_56
  loc_A13690: NewIfNullPr clsinsumo
  loc_A13693: Call clsinsumo.RedefineRS(from_stack_1v)
  loc_A13698: FFreeStr var_B0 = ""
  loc_A1369F: FLdRfVar var_B8
  loc_A136A2: FLdPr Me
  loc_A136A5: MemLdRfVar from_stack_1.global_56
  loc_A136A8: NewIfNullPr clsinsumo
  loc_A136AB: from_stack_1 = clsinsumo.RecordCount
  loc_A136B0: ILdRf var_B8
  loc_A136B3: LitI4 0
  loc_A136B8: EqI4
  loc_A136B9: BranchF loc_A136CC
  loc_A136BC: LitI4 0
  loc_A136C1: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_A136C4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A136C9: Branch loc_A136D4
  loc_A136CC: LitI2_Byte &HFF
  loc_A136CE: FLdPr Me
  loc_A136D1: MemStI2 bGenerado
  loc_A136D4: LitI4 0
  loc_A136D9: CI2I4
  loc_A136DA: FLdPr Me
  loc_A136DD: Me.MousePointer = from_stack_1
  loc_A136E2: LitVarStr var_98, vbNullString
  loc_A136E7: PopAdLdVar
  loc_A136E8: FLdPr Me
  loc_A136EB: VCallAd Control_ID_statusBar
  loc_A136EE: FStAdFunc var_AC
  loc_A136F1: FLdPr var_AC
  loc_A136F4: LateIdSt
  loc_A136F9: FFree1Ad var_AC
  loc_A136FC: ExitProcHresult
  loc_A136FD: LitI4 0
  loc_A13702: LitStr "Error "
  loc_A13705: FLdRfVar var_B8
  loc_A13708: ImpAdCallI2 Err 'rtcErrObj
  loc_A1370D: FStAdFunc var_AC
  loc_A13710: FLdPr var_AC
  loc_A13713:  = Err.Number
  loc_A13718: ILdRf var_B8
  loc_A1371B: CStrI4
  loc_A1371D: FStStrNoPop var_B0
  loc_A13720: ConcatStr
  loc_A13721: FStStrNoPop var_B4
  loc_A13724: LitStr ": "
  loc_A13727: ConcatStr
  loc_A13728: FStStrNoPop var_C4
  loc_A1372B: FLdRfVar var_C0
  loc_A1372E: ImpAdCallI2 Err 'rtcErrObj
  loc_A13733: FStAdFunc var_BC
  loc_A13736: FLdPr var_BC
  loc_A13739:  = Err.Description
  loc_A1373E: ILdRf var_C0
  loc_A13741: ConcatStr
  loc_A13742: FStStrNoPop var_C8
  loc_A13745: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A1374A: FFreeStr var_B0 = "": var_B4 = "": var_C4 = "": var_C0 = ""
  loc_A13757: FFreeAd var_AC = ""
  loc_A1375E: ExitProcHresult
  loc_A1375F: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A44030
  'Data Table: 430998
  loc_A43DC8: FLdRfVar var_88
  loc_A43DCB: LitI2_Byte 0
  loc_A43DCD: LitI2_Byte &HFF
  loc_A43DCF: ImpAdLdI4 MemVar_C3D83C
  loc_A43DD2: FLdPr Me
  loc_A43DD5: MemLdRfVar from_stack_1.global_60
  loc_A43DD8: NewIfNullPr IFileSystem3
  loc_A43DDB: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A43DE0: ILdRf var_88
  loc_A43DE3: FLdPr Me
  loc_A43DE6: MemStVarAd
  loc_A43DEA: FFree1Ad var_88
  loc_A43DED: Call Proc_194_14_ABC8F8()
  loc_A43DF2: FLdPr Me
  loc_A43DF5: MemLdRfVar from_stack_1.global_56
  loc_A43DF8: NewIfNullAd
  loc_A43DFB: FStAd var_8C 
  loc_A43DFF: FLdPr var_8C
  loc_A43E02: Call clsinsumo.MoveFirst()
  loc_A43E07: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A43E0C: PopAdLdVar
  loc_A43E0D: FLdPr Me
  loc_A43E10: MemLdRfVar from_stack_1.global_64
  loc_A43E13: LdPrVar
  loc_A43E15: LateMemCall
  loc_A43E1B: FLdRfVar var_C4
  loc_A43E1E: FLdRfVar var_B4
  loc_A43E21: LitVarStr var_9C, "CodiInsu"
  loc_A43E26: PopAdLdVar
  loc_A43E27: FLdRfVar var_B0
  loc_A43E2A: FLdRfVar var_88
  loc_A43E2D: FLdPr var_8C
  loc_A43E30: from_stack_1v = clsinsumo.RsFrmGet()
  loc_A43E35: FLdPr var_88
  loc_A43E38:  = Me.Fields
  loc_A43E3D: FLdPr var_B0
  loc_A43E40: from_stack_2 = Me.Item(from_stack_1)
  loc_A43E45: FLdPr var_B4
  loc_A43E48:  = Me.Value
  loc_A43E4D: LitI4 0
  loc_A43E52: LitI4 0
  loc_A43E57: LitI2_Byte 0
  loc_A43E59: LitStr "center"
  loc_A43E5C: FLdRfVar var_C4
  loc_A43E5F: CStrVarTmp
  loc_A43E60: FStStrNoPop var_C8
  loc_A43E63: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A43E68: CVarStr var_D8
  loc_A43E6B: PopAdLdVar
  loc_A43E6C: FLdPr Me
  loc_A43E6F: MemLdRfVar from_stack_1.global_64
  loc_A43E72: LdPrVar
  loc_A43E74: LateMemCall
  loc_A43E7A: FFree1Str var_C8
  loc_A43E7D: FFreeAd var_88 = "": var_B0 = ""
  loc_A43E86: FFreeVar var_C4 = ""
  loc_A43E8D: FLdRfVar var_C4
  loc_A43E90: FLdRfVar var_B4
  loc_A43E93: LitVarStr var_9C, "DetaInsu"
  loc_A43E98: PopAdLdVar
  loc_A43E99: FLdRfVar var_B0
  loc_A43E9C: FLdRfVar var_88
  loc_A43E9F: FLdPr var_8C
  loc_A43EA2: from_stack_1v = clsinsumo.RsFrmGet()
  loc_A43EA7: FLdPr var_88
  loc_A43EAA:  = Me.Fields
  loc_A43EAF: FLdPr var_B0
  loc_A43EB2: from_stack_2 = Me.Item(from_stack_1)
  loc_A43EB7: FLdPr var_B4
  loc_A43EBA:  = Me.Value
  loc_A43EBF: LitI4 0
  loc_A43EC4: LitI4 0
  loc_A43EC9: LitI2_Byte 0
  loc_A43ECB: LitStr "left"
  loc_A43ECE: FLdRfVar var_C4
  loc_A43ED1: CStrVarTmp
  loc_A43ED2: FStStrNoPop var_C8
  loc_A43ED5: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A43EDA: CVarStr var_D8
  loc_A43EDD: PopAdLdVar
  loc_A43EDE: FLdPr Me
  loc_A43EE1: MemLdRfVar from_stack_1.global_64
  loc_A43EE4: LdPrVar
  loc_A43EE6: LateMemCall
  loc_A43EEC: FFree1Str var_C8
  loc_A43EEF: FFreeAd var_88 = "": var_B0 = ""
  loc_A43EF8: FFreeVar var_C4 = ""
  loc_A43EFF: FLdRfVar var_C4
  loc_A43F02: FLdRfVar var_B4
  loc_A43F05: LitVarStr var_9C, "UlprInsu"
  loc_A43F0A: PopAdLdVar
  loc_A43F0B: FLdRfVar var_B0
  loc_A43F0E: FLdRfVar var_88
  loc_A43F11: FLdPr var_8C
  loc_A43F14: from_stack_1v = clsinsumo.RsFrmGet()
  loc_A43F19: FLdPr var_88
  loc_A43F1C:  = Me.Fields
  loc_A43F21: FLdPr var_B0
  loc_A43F24: from_stack_2 = Me.Item(from_stack_1)
  loc_A43F29: FLdPr var_B4
  loc_A43F2C:  = Me.Value
  loc_A43F31: LitI4 0
  loc_A43F36: LitI4 0
  loc_A43F3B: LitI2_Byte 0
  loc_A43F3D: LitStr "right"
  loc_A43F40: FLdRfVar var_C4
  loc_A43F43: CStrVarTmp
  loc_A43F44: FStStrNoPop var_C8
  loc_A43F47: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A43F4C: CVarStr var_D8
  loc_A43F4F: PopAdLdVar
  loc_A43F50: FLdPr Me
  loc_A43F53: MemLdRfVar from_stack_1.global_64
  loc_A43F56: LdPrVar
  loc_A43F58: LateMemCall
  loc_A43F5E: FFree1Str var_C8
  loc_A43F61: FFreeAd var_88 = "": var_B0 = ""
  loc_A43F6A: FFreeVar var_C4 = ""
  loc_A43F71: FLdRfVar var_C4
  loc_A43F74: FLdRfVar var_B4
  loc_A43F77: LitVarStr var_9C, "AltaUsua"
  loc_A43F7C: PopAdLdVar
  loc_A43F7D: FLdRfVar var_B0
  loc_A43F80: FLdRfVar var_88
  loc_A43F83: FLdPr var_8C
  loc_A43F86: from_stack_1v = clsinsumo.RsFrmGet()
  loc_A43F8B: FLdPr var_88
  loc_A43F8E:  = Me.Fields
  loc_A43F93: FLdPr var_B0
  loc_A43F96: from_stack_2 = Me.Item(from_stack_1)
  loc_A43F9B: FLdPr var_B4
  loc_A43F9E:  = Me.Value
  loc_A43FA3: LitI4 0
  loc_A43FA8: LitI4 0
  loc_A43FAD: LitI2_Byte 0
  loc_A43FAF: LitStr "center"
  loc_A43FB2: FLdRfVar var_C4
  loc_A43FB5: CStrVarTmp
  loc_A43FB6: FStStrNoPop var_C8
  loc_A43FB9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A43FBE: CVarStr var_D8
  loc_A43FC1: PopAdLdVar
  loc_A43FC2: FLdPr Me
  loc_A43FC5: MemLdRfVar from_stack_1.global_64
  loc_A43FC8: LdPrVar
  loc_A43FCA: LateMemCall
  loc_A43FD0: FFree1Str var_C8
  loc_A43FD3: FFreeAd var_88 = "": var_B0 = ""
  loc_A43FDC: FFreeVar var_C4 = ""
  loc_A43FE3: LitVarStr var_9C, "    </tr>"
  loc_A43FE8: PopAdLdVar
  loc_A43FE9: FLdPr Me
  loc_A43FEC: MemLdRfVar from_stack_1.global_64
  loc_A43FEF: LdPrVar
  loc_A43FF1: LateMemCall
  loc_A43FF7: FLdPr var_8C
  loc_A43FFA: Call clsinsumo.MoveSiguiente()
  loc_A43FFF: FLdRfVar var_DA
  loc_A44002: FLdPr var_8C
  loc_A44005: from_stack_1 = clsinsumo.EOF
  loc_A4400A: FLdI2 var_DA
  loc_A4400D: NotI4
  loc_A4400E: BranchT loc_A43E07
  loc_A44011: LitNothing
  loc_A44013: FStAd var_8C 
  loc_A44017: Call Proc_194_15_984610()
  loc_A4401C: FLdPr Me
  loc_A4401F: MemLdRfVar from_stack_1.global_64
  loc_A44022: LdPrVar
  loc_A44024: LateMemCall
  loc_A4402A: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A4402F: ExitProcHresult
End Sub

Private Function Proc_194_14_ABC8F8() 'ABC8F8
  'Data Table: 430998
  loc_ABC344: LitVarStr var_94, "<html>"
  loc_ABC349: PopAdLdVar
  loc_ABC34A: FLdPr Me
  loc_ABC34D: MemLdRfVar from_stack_1.global_64
  loc_ABC350: LdPrVar
  loc_ABC352: LateMemCall
  loc_ABC358: LitVarStr var_94, "<head>"
  loc_ABC35D: PopAdLdVar
  loc_ABC35E: FLdPr Me
  loc_ABC361: MemLdRfVar from_stack_1.global_64
  loc_ABC364: LdPrVar
  loc_ABC366: LateMemCall
  loc_ABC36C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_ABC371: PopAdLdVar
  loc_ABC372: FLdPr Me
  loc_ABC375: MemLdRfVar from_stack_1.global_64
  loc_ABC378: LdPrVar
  loc_ABC37A: LateMemCall
  loc_ABC380: LitStr "<title>"
  loc_ABC383: FLdRfVar var_A8
  loc_ABC386: FLdPr Me
  loc_ABC389:  = Me.Caption
  loc_ABC38E: ILdRf var_A8
  loc_ABC391: ConcatStr
  loc_ABC392: FStStrNoPop var_AC
  loc_ABC395: LitStr "</title>"
  loc_ABC398: ConcatStr
  loc_ABC399: CVarStr var_BC
  loc_ABC39C: PopAdLdVar
  loc_ABC39D: FLdPr Me
  loc_ABC3A0: MemLdRfVar from_stack_1.global_64
  loc_ABC3A3: LdPrVar
  loc_ABC3A5: LateMemCall
  loc_ABC3AB: FFreeStr var_A8 = ""
  loc_ABC3B2: FFree1Var var_BC = ""
  loc_ABC3B5: LitVarStr var_94, "<style type=""text/css"">"
  loc_ABC3BA: PopAdLdVar
  loc_ABC3BB: FLdPr Me
  loc_ABC3BE: MemLdRfVar from_stack_1.global_64
  loc_ABC3C1: LdPrVar
  loc_ABC3C3: LateMemCall
  loc_ABC3C9: LitVarStr var_94, ".Titulo1 {"
  loc_ABC3CE: PopAdLdVar
  loc_ABC3CF: FLdPr Me
  loc_ABC3D2: MemLdRfVar from_stack_1.global_64
  loc_ABC3D5: LdPrVar
  loc_ABC3D7: LateMemCall
  loc_ABC3DD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ABC3E2: PopAdLdVar
  loc_ABC3E3: FLdPr Me
  loc_ABC3E6: MemLdRfVar from_stack_1.global_64
  loc_ABC3E9: LdPrVar
  loc_ABC3EB: LateMemCall
  loc_ABC3F1: LitVarStr var_94, " font-size: 18px;"
  loc_ABC3F6: PopAdLdVar
  loc_ABC3F7: FLdPr Me
  loc_ABC3FA: MemLdRfVar from_stack_1.global_64
  loc_ABC3FD: LdPrVar
  loc_ABC3FF: LateMemCall
  loc_ABC405: LitVarStr var_94, " font-weight: bold;"
  loc_ABC40A: PopAdLdVar
  loc_ABC40B: FLdPr Me
  loc_ABC40E: MemLdRfVar from_stack_1.global_64
  loc_ABC411: LdPrVar
  loc_ABC413: LateMemCall
  loc_ABC419: LitVarStr var_94, "}"
  loc_ABC41E: PopAdLdVar
  loc_ABC41F: FLdPr Me
  loc_ABC422: MemLdRfVar from_stack_1.global_64
  loc_ABC425: LdPrVar
  loc_ABC427: LateMemCall
  loc_ABC42D: LitVarStr var_94, ".Titulo2 {"
  loc_ABC432: PopAdLdVar
  loc_ABC433: FLdPr Me
  loc_ABC436: MemLdRfVar from_stack_1.global_64
  loc_ABC439: LdPrVar
  loc_ABC43B: LateMemCall
  loc_ABC441: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ABC446: PopAdLdVar
  loc_ABC447: FLdPr Me
  loc_ABC44A: MemLdRfVar from_stack_1.global_64
  loc_ABC44D: LdPrVar
  loc_ABC44F: LateMemCall
  loc_ABC455: LitVarStr var_94, " font-size: 14px;"
  loc_ABC45A: PopAdLdVar
  loc_ABC45B: FLdPr Me
  loc_ABC45E: MemLdRfVar from_stack_1.global_64
  loc_ABC461: LdPrVar
  loc_ABC463: LateMemCall
  loc_ABC469: LitVarStr var_94, " font-weight: bold;"
  loc_ABC46E: PopAdLdVar
  loc_ABC46F: FLdPr Me
  loc_ABC472: MemLdRfVar from_stack_1.global_64
  loc_ABC475: LdPrVar
  loc_ABC477: LateMemCall
  loc_ABC47D: LitVarStr var_94, "}"
  loc_ABC482: PopAdLdVar
  loc_ABC483: FLdPr Me
  loc_ABC486: MemLdRfVar from_stack_1.global_64
  loc_ABC489: LdPrVar
  loc_ABC48B: LateMemCall
  loc_ABC491: LitVarStr var_94, ".Normal {"
  loc_ABC496: PopAdLdVar
  loc_ABC497: FLdPr Me
  loc_ABC49A: MemLdRfVar from_stack_1.global_64
  loc_ABC49D: LdPrVar
  loc_ABC49F: LateMemCall
  loc_ABC4A5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ABC4AA: PopAdLdVar
  loc_ABC4AB: FLdPr Me
  loc_ABC4AE: MemLdRfVar from_stack_1.global_64
  loc_ABC4B1: LdPrVar
  loc_ABC4B3: LateMemCall
  loc_ABC4B9: LitVarStr var_94, " font-size: 14px;"
  loc_ABC4BE: PopAdLdVar
  loc_ABC4BF: FLdPr Me
  loc_ABC4C2: MemLdRfVar from_stack_1.global_64
  loc_ABC4C5: LdPrVar
  loc_ABC4C7: LateMemCall
  loc_ABC4CD: LitVarStr var_94, " font-style: normal;"
  loc_ABC4D2: PopAdLdVar
  loc_ABC4D3: FLdPr Me
  loc_ABC4D6: MemLdRfVar from_stack_1.global_64
  loc_ABC4D9: LdPrVar
  loc_ABC4DB: LateMemCall
  loc_ABC4E1: LitVarStr var_94, " font-weight: normal;"
  loc_ABC4E6: PopAdLdVar
  loc_ABC4E7: FLdPr Me
  loc_ABC4EA: MemLdRfVar from_stack_1.global_64
  loc_ABC4ED: LdPrVar
  loc_ABC4EF: LateMemCall
  loc_ABC4F5: LitVarStr var_94, " font-variant: normal;"
  loc_ABC4FA: PopAdLdVar
  loc_ABC4FB: FLdPr Me
  loc_ABC4FE: MemLdRfVar from_stack_1.global_64
  loc_ABC501: LdPrVar
  loc_ABC503: LateMemCall
  loc_ABC509: LitVarStr var_94, "}"
  loc_ABC50E: PopAdLdVar
  loc_ABC50F: FLdPr Me
  loc_ABC512: MemLdRfVar from_stack_1.global_64
  loc_ABC515: LdPrVar
  loc_ABC517: LateMemCall
  loc_ABC51D: LitVarStr var_94, ".Encabezado {"
  loc_ABC522: PopAdLdVar
  loc_ABC523: FLdPr Me
  loc_ABC526: MemLdRfVar from_stack_1.global_64
  loc_ABC529: LdPrVar
  loc_ABC52B: LateMemCall
  loc_ABC531: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_ABC536: PopAdLdVar
  loc_ABC537: FLdPr Me
  loc_ABC53A: MemLdRfVar from_stack_1.global_64
  loc_ABC53D: LdPrVar
  loc_ABC53F: LateMemCall
  loc_ABC545: LitVarStr var_94, " font-size: 13px;"
  loc_ABC54A: PopAdLdVar
  loc_ABC54B: FLdPr Me
  loc_ABC54E: MemLdRfVar from_stack_1.global_64
  loc_ABC551: LdPrVar
  loc_ABC553: LateMemCall
  loc_ABC559: LitVarStr var_94, " font-weight: bold;"
  loc_ABC55E: PopAdLdVar
  loc_ABC55F: FLdPr Me
  loc_ABC562: MemLdRfVar from_stack_1.global_64
  loc_ABC565: LdPrVar
  loc_ABC567: LateMemCall
  loc_ABC56D: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_ABC572: PopAdLdVar
  loc_ABC573: FLdPr Me
  loc_ABC576: MemLdRfVar from_stack_1.global_64
  loc_ABC579: LdPrVar
  loc_ABC57B: LateMemCall
  loc_ABC581: LitVarStr var_94, "}"
  loc_ABC586: PopAdLdVar
  loc_ABC587: FLdPr Me
  loc_ABC58A: MemLdRfVar from_stack_1.global_64
  loc_ABC58D: LdPrVar
  loc_ABC58F: LateMemCall
  loc_ABC595: LitVarStr var_94, ".LineaDato {"
  loc_ABC59A: PopAdLdVar
  loc_ABC59B: FLdPr Me
  loc_ABC59E: MemLdRfVar from_stack_1.global_64
  loc_ABC5A1: LdPrVar
  loc_ABC5A3: LateMemCall
  loc_ABC5A9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_ABC5AE: PopAdLdVar
  loc_ABC5AF: FLdPr Me
  loc_ABC5B2: MemLdRfVar from_stack_1.global_64
  loc_ABC5B5: LdPrVar
  loc_ABC5B7: LateMemCall
  loc_ABC5BD: LitVarStr var_94, " font-size: 10px;"
  loc_ABC5C2: PopAdLdVar
  loc_ABC5C3: FLdPr Me
  loc_ABC5C6: MemLdRfVar from_stack_1.global_64
  loc_ABC5C9: LdPrVar
  loc_ABC5CB: LateMemCall
  loc_ABC5D1: LitVarStr var_94, "}"
  loc_ABC5D6: PopAdLdVar
  loc_ABC5D7: FLdPr Me
  loc_ABC5DA: MemLdRfVar from_stack_1.global_64
  loc_ABC5DD: LdPrVar
  loc_ABC5DF: LateMemCall
  loc_ABC5E5: LitVarStr var_94, ".Totales {"
  loc_ABC5EA: PopAdLdVar
  loc_ABC5EB: FLdPr Me
  loc_ABC5EE: MemLdRfVar from_stack_1.global_64
  loc_ABC5F1: LdPrVar
  loc_ABC5F3: LateMemCall
  loc_ABC5F9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_ABC5FE: PopAdLdVar
  loc_ABC5FF: FLdPr Me
  loc_ABC602: MemLdRfVar from_stack_1.global_64
  loc_ABC605: LdPrVar
  loc_ABC607: LateMemCall
  loc_ABC60D: LitVarStr var_94, " font-size: 12px;"
  loc_ABC612: PopAdLdVar
  loc_ABC613: FLdPr Me
  loc_ABC616: MemLdRfVar from_stack_1.global_64
  loc_ABC619: LdPrVar
  loc_ABC61B: LateMemCall
  loc_ABC621: LitVarStr var_94, " font-weight: bold;"
  loc_ABC626: PopAdLdVar
  loc_ABC627: FLdPr Me
  loc_ABC62A: MemLdRfVar from_stack_1.global_64
  loc_ABC62D: LdPrVar
  loc_ABC62F: LateMemCall
  loc_ABC635: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_ABC63A: PopAdLdVar
  loc_ABC63B: FLdPr Me
  loc_ABC63E: MemLdRfVar from_stack_1.global_64
  loc_ABC641: LdPrVar
  loc_ABC643: LateMemCall
  loc_ABC649: LitVarStr var_94, "}"
  loc_ABC64E: PopAdLdVar
  loc_ABC64F: FLdPr Me
  loc_ABC652: MemLdRfVar from_stack_1.global_64
  loc_ABC655: LdPrVar
  loc_ABC657: LateMemCall
  loc_ABC65D: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_ABC662: PopAdLdVar
  loc_ABC663: FLdPr Me
  loc_ABC666: MemLdRfVar from_stack_1.global_64
  loc_ABC669: LdPrVar
  loc_ABC66B: LateMemCall
  loc_ABC671: LitVarStr var_94, "</style>"
  loc_ABC676: PopAdLdVar
  loc_ABC677: FLdPr Me
  loc_ABC67A: MemLdRfVar from_stack_1.global_64
  loc_ABC67D: LdPrVar
  loc_ABC67F: LateMemCall
  loc_ABC685: LitI4 0
  loc_ABC68A: FStStrCopy var_AC
  loc_ABC68D: FLdRfVar var_AC
  loc_ABC690: LitI4 0
  loc_ABC695: FStStrCopy var_A8
  loc_ABC698: FLdRfVar var_A8
  loc_ABC69B: LitI2_Byte 0
  loc_ABC69D: PopTmpLdAd2 var_BE
  loc_ABC6A0: FLdPr Me
  loc_ABC6A3: MemLdRfVar from_stack_1.global_64
  loc_ABC6A6: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_ABC6AB: FFreeStr var_A8 = ""
  loc_ABC6B2: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_ABC6B7: PopAdLdVar
  loc_ABC6B8: FLdPr Me
  loc_ABC6BB: MemLdRfVar from_stack_1.global_64
  loc_ABC6BE: LdPrVar
  loc_ABC6C0: LateMemCall
  loc_ABC6C6: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_ABC6CB: PopAdLdVar
  loc_ABC6CC: FLdPr Me
  loc_ABC6CF: MemLdRfVar from_stack_1.global_64
  loc_ABC6D2: LdPrVar
  loc_ABC6D4: LateMemCall
  loc_ABC6DA: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><br>"
  loc_ABC6DF: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_ABC6E4: FStVarCopyObj var_BC
  loc_ABC6E7: FLdRfVar var_BC
  loc_ABC6EA: FLdRfVar var_D0
  loc_ABC6ED: ImpAdCallFPR4  = Ucase()
  loc_ABC6F2: FLdRfVar var_D0
  loc_ABC6F5: ConcatVar var_E0
  loc_ABC6F9: LitVarStr var_F0, "</p>"
  loc_ABC6FE: ConcatVar var_100
  loc_ABC702: PopAdLdVar
  loc_ABC703: FLdPr Me
  loc_ABC706: MemLdRfVar from_stack_1.global_64
  loc_ABC709: LdPrVar
  loc_ABC70B: LateMemCall
  loc_ABC711: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_ABC71C: LitStr "    <p>"
  loc_ABC71F: FLdRfVar var_A8
  loc_ABC722: FLdPr Me
  loc_ABC725:  = Me.Caption
  loc_ABC72A: ILdRf var_A8
  loc_ABC72D: ConcatStr
  loc_ABC72E: FStStrNoPop var_AC
  loc_ABC731: LitStr "</p></th>"
  loc_ABC734: ConcatStr
  loc_ABC735: CVarStr var_BC
  loc_ABC738: PopAdLdVar
  loc_ABC739: FLdPr Me
  loc_ABC73C: MemLdRfVar from_stack_1.global_64
  loc_ABC73F: LdPrVar
  loc_ABC741: LateMemCall
  loc_ABC747: FFreeStr var_A8 = ""
  loc_ABC74E: FFree1Var var_BC = ""
  loc_ABC751: LitVarStr var_94, "  </tr>"
  loc_ABC756: PopAdLdVar
  loc_ABC757: FLdPr Me
  loc_ABC75A: MemLdRfVar from_stack_1.global_64
  loc_ABC75D: LdPrVar
  loc_ABC75F: LateMemCall
  loc_ABC765: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_ABC76A: PopAdLdVar
  loc_ABC76B: FLdPr Me
  loc_ABC76E: MemLdRfVar from_stack_1.global_64
  loc_ABC771: LdPrVar
  loc_ABC773: LateMemCall
  loc_ABC779: LitVarStr var_94, "    <th align=""left"" valign=""bottom""><hr></th>"
  loc_ABC77E: PopAdLdVar
  loc_ABC77F: FLdPr Me
  loc_ABC782: MemLdRfVar from_stack_1.global_64
  loc_ABC785: LdPrVar
  loc_ABC787: LateMemCall
  loc_ABC78D: LitVarStr var_94, "  </tr>"
  loc_ABC792: PopAdLdVar
  loc_ABC793: FLdPr Me
  loc_ABC796: MemLdRfVar from_stack_1.global_64
  loc_ABC799: LdPrVar
  loc_ABC79B: LateMemCall
  loc_ABC7A1: FLdRfVar var_A8
  loc_ABC7A4: FLdPr Me
  loc_ABC7A7: VCallAd Control_ID_DetaInsuTxt
  loc_ABC7AA: FStAdFunc var_114
  loc_ABC7AD: FLdPr var_114
  loc_ABC7B0:  = Me.Text
  loc_ABC7B5: ILdRf var_A8
  loc_ABC7B8: LitStr vbNullString
  loc_ABC7BB: NeStr
  loc_ABC7BD: FFree1Str var_A8
  loc_ABC7C0: FFree1Ad var_114
  loc_ABC7C3: BranchF loc_ABC82F
  loc_ABC7C6: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_ABC7CB: PopAdLdVar
  loc_ABC7CC: FLdPr Me
  loc_ABC7CF: MemLdRfVar from_stack_1.global_64
  loc_ABC7D2: LdPrVar
  loc_ABC7D4: LateMemCall
  loc_ABC7DA: LitStr "    <th align=""left"" valign=""bottom"">Detalle contiene: <span class=""Normal"">"
  loc_ABC7DD: FLdRfVar var_A8
  loc_ABC7E0: FLdPr Me
  loc_ABC7E3: VCallAd Control_ID_DetaInsuTxt
  loc_ABC7E6: FStAdFunc var_114
  loc_ABC7E9: FLdPr var_114
  loc_ABC7EC:  = Me.Text
  loc_ABC7F1: ILdRf var_A8
  loc_ABC7F4: ConcatStr
  loc_ABC7F5: FStStrNoPop var_AC
  loc_ABC7F8: LitStr "</span> </th>"
  loc_ABC7FB: ConcatStr
  loc_ABC7FC: CVarStr var_BC
  loc_ABC7FF: PopAdLdVar
  loc_ABC800: FLdPr Me
  loc_ABC803: MemLdRfVar from_stack_1.global_64
  loc_ABC806: LdPrVar
  loc_ABC808: LateMemCall
  loc_ABC80E: FFreeStr var_A8 = ""
  loc_ABC815: FFree1Ad var_114
  loc_ABC818: FFree1Var var_BC = ""
  loc_ABC81B: LitVarStr var_94, "  </tr>"
  loc_ABC820: PopAdLdVar
  loc_ABC821: FLdPr Me
  loc_ABC824: MemLdRfVar from_stack_1.global_64
  loc_ABC827: LdPrVar
  loc_ABC829: LateMemCall
  loc_ABC82F: LitVarStr var_94, "</table>"
  loc_ABC834: PopAdLdVar
  loc_ABC835: FLdPr Me
  loc_ABC838: MemLdRfVar from_stack_1.global_64
  loc_ABC83B: LdPrVar
  loc_ABC83D: LateMemCall
  loc_ABC843: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_ABC848: PopAdLdVar
  loc_ABC849: FLdPr Me
  loc_ABC84C: MemLdRfVar from_stack_1.global_64
  loc_ABC84F: LdPrVar
  loc_ABC851: LateMemCall
  loc_ABC857: LitVarStr var_94, "  <THEAD>"
  loc_ABC85C: PopAdLdVar
  loc_ABC85D: FLdPr Me
  loc_ABC860: MemLdRfVar from_stack_1.global_64
  loc_ABC863: LdPrVar
  loc_ABC865: LateMemCall
  loc_ABC86B: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_ABC870: PopAdLdVar
  loc_ABC871: FLdPr Me
  loc_ABC874: MemLdRfVar from_stack_1.global_64
  loc_ABC877: LdPrVar
  loc_ABC879: LateMemCall
  loc_ABC87F: LitVarStr var_94, "    <th>C&oacute;digo</th>"
  loc_ABC884: PopAdLdVar
  loc_ABC885: FLdPr Me
  loc_ABC888: MemLdRfVar from_stack_1.global_64
  loc_ABC88B: LdPrVar
  loc_ABC88D: LateMemCall
  loc_ABC893: LitVarStr var_94, "    <th>Detalle</th>"
  loc_ABC898: PopAdLdVar
  loc_ABC899: FLdPr Me
  loc_ABC89C: MemLdRfVar from_stack_1.global_64
  loc_ABC89F: LdPrVar
  loc_ABC8A1: LateMemCall
  loc_ABC8A7: LitVarStr var_94, "    <th>&Uacute;ltimo precio</th>"
  loc_ABC8AC: PopAdLdVar
  loc_ABC8AD: FLdPr Me
  loc_ABC8B0: MemLdRfVar from_stack_1.global_64
  loc_ABC8B3: LdPrVar
  loc_ABC8B5: LateMemCall
  loc_ABC8BB: LitVarStr var_94, "    <th>Usuario</th>"
  loc_ABC8C0: PopAdLdVar
  loc_ABC8C1: FLdPr Me
  loc_ABC8C4: MemLdRfVar from_stack_1.global_64
  loc_ABC8C7: LdPrVar
  loc_ABC8C9: LateMemCall
  loc_ABC8CF: LitVarStr var_94, "  </tr>"
  loc_ABC8D4: PopAdLdVar
  loc_ABC8D5: FLdPr Me
  loc_ABC8D8: MemLdRfVar from_stack_1.global_64
  loc_ABC8DB: LdPrVar
  loc_ABC8DD: LateMemCall
  loc_ABC8E3: LitVarStr var_94, "  </THEAD>"
  loc_ABC8E8: PopAdLdVar
  loc_ABC8E9: FLdPr Me
  loc_ABC8EC: MemLdRfVar from_stack_1.global_64
  loc_ABC8EF: LdPrVar
  loc_ABC8F1: LateMemCall
  loc_ABC8F7: ExitProcHresult
End Function

Private Function Proc_194_15_984610() '984610
  'Data Table: 430998
  loc_9845D0: LitVarStr var_94, "</table>"
  loc_9845D5: PopAdLdVar
  loc_9845D6: FLdPr Me
  loc_9845D9: MemLdRfVar from_stack_1.global_64
  loc_9845DC: LdPrVar
  loc_9845DE: LateMemCall
  loc_9845E4: LitVarStr var_94, "</body>"
  loc_9845E9: PopAdLdVar
  loc_9845EA: FLdPr Me
  loc_9845ED: MemLdRfVar from_stack_1.global_64
  loc_9845F0: LdPrVar
  loc_9845F2: LateMemCall
  loc_9845F8: LitVarStr var_94, "</html>"
  loc_9845FD: PopAdLdVar
  loc_9845FE: FLdPr Me
  loc_984601: MemLdRfVar from_stack_1.global_64
  loc_984604: LdPrVar
  loc_984606: LateMemCall
  loc_98460C: ExitProcHresult
  loc_98460D: EqI4
  loc_98460E: AddI2
End Function
