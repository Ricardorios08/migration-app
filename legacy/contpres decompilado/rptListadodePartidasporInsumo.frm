VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodePartidasporInsumo
  Caption = "Listado de Bancos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodePartidasporInsumo.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 6450
  ClientHeight = 2520
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2265
    Width = 6450
    Height = 255
    TabIndex = 11
    OleObjectBlob = "rptListadodePartidasporInsumo.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5400
    Top = 1320
    Width = 735
    Height = 615
    TabIndex = 9
    Cancel = -1  'True
    Picture = "rptListadodePartidasporInsumo.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodePartidasporInsumo.frx":0B9C
    Left = 3960
    Top = 0
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
    Width = 6255
    Height = 975
    TabIndex = 0
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1200
      Top = 360
      Width = 1095
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 4680
      Top = 240
      Width = 1335
      Height = 495
      TabIndex = 3
    End
    Begin VB.Label Label3
      Caption = "Periodo:"
      Left = 480
      Top = 360
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 5520
    Top = 1560
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 10
    OleObjectBlob = "rptListadodePartidasporInsumo.frx":0C00
  End
End

Attribute VB_Name = "rptListadodePartidasporInsumo"

Public bGenerado As Boolean

Private Type UDT_1_00575408
  bStruc(16) As Byte ' String fields: 4
End Type


Private Sub cmdSalir_Click() '97A104
  'Data Table: 42BEFC
  loc_97A0D4: LitVarStr var_94, "Cerrando..."
  loc_97A0D9: PopAdLdVar
  loc_97A0DA: FLdPr Me
  loc_97A0DD: VCallAd Control_ID_statusBar
  loc_97A0E0: FStAdFunc var_A8
  loc_97A0E3: FLdPr var_A8
  loc_97A0E6: LateIdSt
  loc_97A0EB: FFree1Ad var_A8
  loc_97A0EE: ILdRf Me
  loc_97A0F1: FStAdNoPop
  loc_97A0F5: ImpAdLdRf MemVar_C44F9C
  loc_97A0F8: NewIfNullPr Me
  loc_97A0FB: Me.Global.Unload from_stack_1
  loc_97A100: FFree1Ad var_A8
  loc_97A103: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '98D0B0
  'Data Table: 42BEFC
  loc_98D068: LitI2_Byte 0
  loc_98D06A: FLdPr Me
  loc_98D06D: MemStI2 bGenerado
  loc_98D070: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_98D075: ImpAdLdI2 MemVar_C3D064
  loc_98D078: CStrUI1
  loc_98D07A: FStStrNoPop var_88
  loc_98D07D: FLdPr Me
  loc_98D080: VCallAd Control_ID_cboPeriodo
  loc_98D083: FStAdFunc var_8C
  loc_98D086: FLdPr var_8C
  loc_98D089: Me.Text = from_stack_1
  loc_98D08E: FFree1Str var_88
  loc_98D091: FFree1Ad var_8C
  loc_98D094: Call HabilitarCriterio()
  loc_98D099: ILdRf Me
  loc_98D09C: CastAd
  loc_98D09F: FStAdFunc var_8C
  loc_98D0A2: FLdRfVar var_8C
  loc_98D0A5: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_98D0AA: FFree1Ad var_8C
  loc_98D0AD: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '963894
  'Data Table: 42BEFC
  loc_96387C: LitI2_Byte 0
  loc_96387E: ILdRf Me
  loc_963881: CastAd
  loc_963884: FStAdFunc var_88
  loc_963887: FLdRfVar var_88
  loc_96388A: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_96388F: FFree1Ad var_88
  loc_963892: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98A70C
  'Data Table: 42BEFC
  loc_98A6D4: FLdPr Me
  loc_98A6D7: VCallAd Control_ID_statusBar
  loc_98A6DA: FStAdFunc var_88
  loc_98A6DD: FLdPr var_88
  loc_98A6E0: LateIdLdVar var_98 DispID_1 0
  loc_98A6E7: CStrVarTmp
  loc_98A6E8: CVarStr var_A8
  loc_98A6EB: PopAdLdVar
  loc_98A6EC: FLdPr Me
  loc_98A6EF: VCallAd Control_ID_statusBar
  loc_98A6F2: FStAdFunc var_BC
  loc_98A6F5: FLdPr var_BC
  loc_98A6F8: LateIdSt
  loc_98A6FD: FFreeAd var_88 = ""
  loc_98A704: FFreeVar var_98 = ""
  loc_98A70B: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '963764
  'Data Table: 42BEFC
  loc_96374C: ILdRf Me
  loc_96374F: CastAd
  loc_963752: FStAdFunc var_88
  loc_963755: FLdRfVar var_88
  loc_963758: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_96375D: FFree1Ad var_88
  loc_963760: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9637FC
  'Data Table: 42BEFC
  loc_9637E4: ILdRf Me
  loc_9637E7: CastAd
  loc_9637EA: FStAdFunc var_88
  loc_9637ED: FLdRfVar var_88
  loc_9637F0: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_9637F5: FFree1Ad var_88
  loc_9637F8: ExitProcHresult
End Sub

Private Sub Form_Load() '9D206C
  'Data Table: 42BEFC
  loc_9D1F94: LitI2_Byte &HFF
  loc_9D1F96: ImpAdStI2 MemVar_C3D840
  loc_9D1F99: ILdRf Me
  loc_9D1F9C: CastAd
  loc_9D1F9F: FStAdFunc var_8C
  loc_9D1FA2: FLdRfVar var_8C
  loc_9D1FA5: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D1FAA: FFree1Ad var_8C
  loc_9D1FAD: FLdRfVar var_88
  loc_9D1FB0: NewIfNullAd
  loc_9D1FB3: FStAd var_90 
  loc_9D1FB7: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D1FBA: FLdPr var_90
  loc_9D1FBD: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9D1FC2: FLdRfVar var_94
  loc_9D1FC5: FLdPr var_90
  loc_9D1FC8: from_stack_1 = clsperiodo.RecordCount
  loc_9D1FCD: ILdRf var_94
  loc_9D1FD0: LitI4 0
  loc_9D1FD5: GtI4
  loc_9D1FD6: BranchF loc_9D205D
  loc_9D1FD9: FLdPr var_90
  loc_9D1FDC: Call clsperiodo.MoveFirst()
  loc_9D1FE1: FLdRfVar var_96
  loc_9D1FE4: FLdPr var_90
  loc_9D1FE7: from_stack_1 = clsperiodo.EOF
  loc_9D1FEC: FLdI2 var_96
  loc_9D1FEF: NotI4
  loc_9D1FF0: BranchF loc_9D205D
  loc_9D1FF3: LitVar_Missing var_D4
  loc_9D1FF6: PopAdLdVar
  loc_9D1FF7: FLdRfVar var_C0
  loc_9D1FFA: FLdRfVar var_B0
  loc_9D1FFD: LitVarStr var_AC, "PeriInfo"
  loc_9D2002: PopAdLdVar
  loc_9D2003: FLdRfVar var_9C
  loc_9D2006: FLdRfVar var_8C
  loc_9D2009: FLdPr var_90
  loc_9D200C: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9D2011: FLdPr var_8C
  loc_9D2014:  = Me.Fields
  loc_9D2019: FLdPr var_9C
  loc_9D201C: from_stack_2 = Me.Item(from_stack_1)
  loc_9D2021: FLdPr var_B0
  loc_9D2024:  = Me.Value
  loc_9D2029: FLdRfVar var_C0
  loc_9D202C: CStrVarTmp
  loc_9D202D: FStStrNoPop var_C4
  loc_9D2030: FLdPr Me
  loc_9D2033: VCallAd Control_ID_cboPeriodo
  loc_9D2036: FStAdFunc var_D8
  loc_9D2039: FLdPr var_D8
  loc_9D203C: Me.AddItem from_stack_1, from_stack_2
  loc_9D2041: FFree1Str var_C4
  loc_9D2044: FFreeAd var_8C = "": var_9C = "": var_B0 = ""
  loc_9D204F: FFree1Var var_C0 = ""
  loc_9D2052: FLdPr var_90
  loc_9D2055: Call clsperiodo.MoveSiguiente()
  loc_9D205A: Branch loc_9D1FE1
  loc_9D205D: LitNothing
  loc_9D205F: FStAd var_90 
  loc_9D2063: Call cmdNueva_Click()
  loc_9D2068: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '96392C
  'Data Table: 42BEFC
  loc_963914: FLdPr Me
  loc_963917: VCallAd Control_ID_wbbReporte
  loc_96391A: FStAdFunc var_88
  loc_96391D: FLdRfVar var_88
  loc_963920: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_963925: FFree1Ad var_88
  loc_963928: ExitProcHresult
  loc_963929: LeCyR8
  loc_96392A: FStStrNoPop var_7C00
End Sub

Public Function bGeneradoGet() '42C7CC
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '42C7DB
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '984DAC
  'Data Table: 42BEFC
  loc_984D78: LitI4 0
  loc_984D7D: LitI4 0
  loc_984D82: FLdRfVar var_88
  loc_984D85: Redim
  loc_984D8F: FLdPr Me
  loc_984D92: VCallAd Control_ID_cboPeriodo
  loc_984D95: CVarAd
  loc_984D99: ParmAry1St
  loc_984D9F: FLdRfVar var_88
  loc_984DA2: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_984DA7: FLdRfVar var_88
  loc_984DAA: Erase
  loc_984DAB: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'A5FC54
  'Data Table: 42BEFC
  loc_A5F948: OnErrorGoto loc_A5FBF0
  loc_A5F94B: FLdPr Me
  loc_A5F94E: MemLdI2 bGenerado
  loc_A5F951: BranchF loc_A5F955
  loc_A5F954: ExitProcHresult
  loc_A5F955: LitVarStr var_94, "Generando reporte..."
  loc_A5F95A: PopAdLdVar
  loc_A5F95B: FLdPr Me
  loc_A5F95E: VCallAd Control_ID_statusBar
  loc_A5F961: FStAdFunc var_A8
  loc_A5F964: FLdPr var_A8
  loc_A5F967: LateIdSt
  loc_A5F96C: FFree1Ad var_A8
  loc_A5F96F: LitI4 &HB
  loc_A5F974: CI2I4
  loc_A5F975: FLdPr Me
  loc_A5F978: Me.MousePointer = from_stack_1
  loc_A5F97D: FLdPr Me
  loc_A5F980: MemLdRfVar from_stack_1.global_56
  loc_A5F983: NewIfNullAd
  loc_A5F986: FStAd var_AC 
  loc_A5F98A: LitStr "SELECT insupart.CodiInsu, IFNULL(DetaInsu,'') AS DetaInsu, insupart.CodiPart, IFNULL(DetaPart,'') AS DetaPart FROM insupart"
  loc_A5F98D: LitStr " LEFT JOIN infogov.insumo ON insumo.CodiInsu = insupart.CodiInsu "
  loc_A5F990: ConcatStr
  loc_A5F991: FStStrNoPop var_B0
  loc_A5F994: LitStr " LEFT JOIN partida ON partida.PeriInfo = insupart.PeriInfo AND partida.CodiPart = insupart.CodiPart "
  loc_A5F997: ConcatStr
  loc_A5F998: FStStrNoPop var_B4
  loc_A5F99B: LitStr " WHERE insupart.PeriInfo = "
  loc_A5F99E: ConcatStr
  loc_A5F99F: FStStrNoPop var_BC
  loc_A5F9A2: FLdRfVar var_B8
  loc_A5F9A5: FLdPr Me
  loc_A5F9A8: VCallAd Control_ID_cboPeriodo
  loc_A5F9AB: FStAdFunc var_A8
  loc_A5F9AE: FLdPr var_A8
  loc_A5F9B1:  = Me.Text
  loc_A5F9B6: ILdRf var_B8
  loc_A5F9B9: ConcatStr
  loc_A5F9BA: FStStrNoPop var_C0
  loc_A5F9BD: FLdPr var_AC
  loc_A5F9C0: Call clsinsupart.RedefineRS(from_stack_1v)
  loc_A5F9C5: FFreeStr var_B0 = "": var_B4 = "": var_BC = "": var_B8 = ""
  loc_A5F9D2: FFree1Ad var_A8
  loc_A5F9D5: FLdRfVar var_C4
  loc_A5F9D8: FLdPr var_AC
  loc_A5F9DB: from_stack_1 = clsinsupart.RecordCount
  loc_A5F9E0: ILdRf var_C4
  loc_A5F9E3: LitI4 0
  loc_A5F9E8: EqI4
  loc_A5F9E9: BranchF loc_A5F9FC
  loc_A5F9EC: LitI4 0
  loc_A5F9F1: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_A5F9F4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A5F9F9: Branch loc_A5FBC7
  loc_A5F9FC: FLdPr var_AC
  loc_A5F9FF: Call clsinsupart.MoveFirst()
  loc_A5FA04: LitI4 0
  loc_A5FA09: FLdRfVar var_C4
  loc_A5FA0C: FLdPr var_AC
  loc_A5FA0F: from_stack_1 = clsinsupart.RecordCount
  loc_A5FA14: ILdRf var_C4
  loc_A5FA17: FLdPr Me
  loc_A5FA1A: MemLdRfVar from_stack_1.global_80
  loc_A5FA1D: Redim
  loc_A5FA27: LitI4 1
  loc_A5FA2C: FLdPr Me
  loc_A5FA2F: MemLdRfVar from_stack_1.global_84
  loc_A5FA32: FLdPr Me
  loc_A5FA35: MemLdStr global_80
  loc_A5FA38: LitI2_Byte 1
  loc_A5FA3A: FnUBound
  loc_A5FA3C: ForI4 var_CC
  loc_A5FA42: FLdRfVar var_E4
  loc_A5FA45: FLdRfVar var_D4
  loc_A5FA48: LitVarStr var_94, "CodiInsu"
  loc_A5FA4D: PopAdLdVar
  loc_A5FA4E: FLdRfVar var_D0
  loc_A5FA51: FLdRfVar var_A8
  loc_A5FA54: FLdPr var_AC
  loc_A5FA57: from_stack_1v = clsinsupart.RsFrmGet()
  loc_A5FA5C: FLdPr var_A8
  loc_A5FA5F:  = Me.Fields
  loc_A5FA64: FLdPr var_D0
  loc_A5FA67: from_stack_2 = Me.Item(from_stack_1)
  loc_A5FA6C: FLdPr var_D4
  loc_A5FA6F:  = Me.Value
  loc_A5FA74: FLdRfVar var_E4
  loc_A5FA77: CStrVarTmp
  loc_A5FA78: FStStrNoPop var_B0
  loc_A5FA7B: FLdPr Me
  loc_A5FA7E: MemLdStr global_84
  loc_A5FA81: FLdPr Me
  loc_A5FA84: MemLdStr global_80
  loc_A5FA87: Ary1LdPr
  loc_A5FA88: MemStStrCopy
  loc_A5FA8C: FFree1Str var_B0
  loc_A5FA8F: FFreeAd var_A8 = "": var_D0 = ""
  loc_A5FA98: FFree1Var var_E4 = ""
  loc_A5FA9B: FLdRfVar var_E4
  loc_A5FA9E: FLdRfVar var_D4
  loc_A5FAA1: LitVarStr var_94, "DetaInsu"
  loc_A5FAA6: PopAdLdVar
  loc_A5FAA7: FLdRfVar var_D0
  loc_A5FAAA: FLdRfVar var_A8
  loc_A5FAAD: FLdPr var_AC
  loc_A5FAB0: from_stack_1v = clsinsupart.RsFrmGet()
  loc_A5FAB5: FLdPr var_A8
  loc_A5FAB8:  = Me.Fields
  loc_A5FABD: FLdPr var_D0
  loc_A5FAC0: from_stack_2 = Me.Item(from_stack_1)
  loc_A5FAC5: FLdPr var_D4
  loc_A5FAC8:  = Me.Value
  loc_A5FACD: FLdRfVar var_E4
  loc_A5FAD0: CStrVarTmp
  loc_A5FAD1: FStStrNoPop var_B0
  loc_A5FAD4: FLdPr Me
  loc_A5FAD7: MemLdStr global_84
  loc_A5FADA: FLdPr Me
  loc_A5FADD: MemLdStr global_80
  loc_A5FAE0: Ary1LdPr
  loc_A5FAE1: MemStStrCopy
  loc_A5FAE5: FFree1Str var_B0
  loc_A5FAE8: FFreeAd var_A8 = "": var_D0 = ""
  loc_A5FAF1: FFree1Var var_E4 = ""
  loc_A5FAF4: FLdRfVar var_E4
  loc_A5FAF7: FLdRfVar var_D4
  loc_A5FAFA: LitVarStr var_94, "CodiPart"
  loc_A5FAFF: PopAdLdVar
  loc_A5FB00: FLdRfVar var_D0
  loc_A5FB03: FLdRfVar var_A8
  loc_A5FB06: FLdPr var_AC
  loc_A5FB09: from_stack_1v = clsinsupart.RsFrmGet()
  loc_A5FB0E: FLdPr var_A8
  loc_A5FB11:  = Me.Fields
  loc_A5FB16: FLdPr var_D0
  loc_A5FB19: from_stack_2 = Me.Item(from_stack_1)
  loc_A5FB1E: FLdPr var_D4
  loc_A5FB21:  = Me.Value
  loc_A5FB26: FLdRfVar var_E4
  loc_A5FB29: CStrVarTmp
  loc_A5FB2A: FStStrNoPop var_B0
  loc_A5FB2D: FLdPr Me
  loc_A5FB30: MemLdStr global_84
  loc_A5FB33: FLdPr Me
  loc_A5FB36: MemLdStr global_80
  loc_A5FB39: Ary1LdPr
  loc_A5FB3A: MemStStrCopy
  loc_A5FB3E: FFree1Str var_B0
  loc_A5FB41: FFreeAd var_A8 = "": var_D0 = ""
  loc_A5FB4A: FFree1Var var_E4 = ""
  loc_A5FB4D: FLdRfVar var_E4
  loc_A5FB50: FLdRfVar var_D4
  loc_A5FB53: LitVarStr var_94, "DetaPart"
  loc_A5FB58: PopAdLdVar
  loc_A5FB59: FLdRfVar var_D0
  loc_A5FB5C: FLdRfVar var_A8
  loc_A5FB5F: FLdPr var_AC
  loc_A5FB62: from_stack_1v = clsinsupart.RsFrmGet()
  loc_A5FB67: FLdPr var_A8
  loc_A5FB6A:  = Me.Fields
  loc_A5FB6F: FLdPr var_D0
  loc_A5FB72: from_stack_2 = Me.Item(from_stack_1)
  loc_A5FB77: FLdPr var_D4
  loc_A5FB7A:  = Me.Value
  loc_A5FB7F: FLdRfVar var_E4
  loc_A5FB82: CStrVarTmp
  loc_A5FB83: FStStrNoPop var_B0
  loc_A5FB86: FLdPr Me
  loc_A5FB89: MemLdStr global_84
  loc_A5FB8C: FLdPr Me
  loc_A5FB8F: MemLdStr global_80
  loc_A5FB92: Ary1LdPr
  loc_A5FB93: MemStStrCopy
  loc_A5FB97: FFree1Str var_B0
  loc_A5FB9A: FFreeAd var_A8 = "": var_D0 = ""
  loc_A5FBA3: FFree1Var var_E4 = ""
  loc_A5FBA6: FLdPr var_AC
  loc_A5FBA9: Call clsinsupart.MoveSiguiente()
  loc_A5FBAE: FLdPr Me
  loc_A5FBB1: MemLdRfVar from_stack_1.global_84
  loc_A5FBB4: NextI4 var_CC, loc_A5FA42
  loc_A5FBB9: LitNothing
  loc_A5FBBB: FStAd var_AC 
  loc_A5FBBF: LitI2_Byte &HFF
  loc_A5FBC1: FLdPr Me
  loc_A5FBC4: MemStI2 bGenerado
  loc_A5FBC7: LitI4 0
  loc_A5FBCC: CI2I4
  loc_A5FBCD: FLdPr Me
  loc_A5FBD0: Me.MousePointer = from_stack_1
  loc_A5FBD5: LitVarStr var_94, vbNullString
  loc_A5FBDA: PopAdLdVar
  loc_A5FBDB: FLdPr Me
  loc_A5FBDE: VCallAd Control_ID_statusBar
  loc_A5FBE1: FStAdFunc var_A8
  loc_A5FBE4: FLdPr var_A8
  loc_A5FBE7: LateIdSt
  loc_A5FBEC: FFree1Ad var_A8
  loc_A5FBEF: ExitProcHresult
  loc_A5FBF0: LitI4 0
  loc_A5FBF5: LitStr "Error "
  loc_A5FBF8: FLdRfVar var_C4
  loc_A5FBFB: ImpAdCallI2 Err 'rtcErrObj
  loc_A5FC00: FStAdFunc var_A8
  loc_A5FC03: FLdPr var_A8
  loc_A5FC06:  = Err.Number
  loc_A5FC0B: ILdRf var_C4
  loc_A5FC0E: CStrI4
  loc_A5FC10: FStStrNoPop var_B0
  loc_A5FC13: ConcatStr
  loc_A5FC14: FStStrNoPop var_B4
  loc_A5FC17: LitStr ": "
  loc_A5FC1A: ConcatStr
  loc_A5FC1B: FStStrNoPop var_BC
  loc_A5FC1E: FLdRfVar var_B8
  loc_A5FC21: ImpAdCallI2 Err 'rtcErrObj
  loc_A5FC26: FStAdFunc var_D0
  loc_A5FC29: FLdPr var_D0
  loc_A5FC2C:  = Err.Description
  loc_A5FC31: ILdRf var_B8
  loc_A5FC34: ConcatStr
  loc_A5FC35: FStStrNoPop var_C0
  loc_A5FC38: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A5FC3D: FFreeStr var_B0 = "": var_B4 = "": var_BC = "": var_B8 = ""
  loc_A5FC4A: FFreeAd var_A8 = ""
  loc_A5FC51: ExitProcHresult
  loc_A5FC52: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A1B22C
  'Data Table: 42BEFC
  loc_A1B08C: FLdRfVar var_88
  loc_A1B08F: LitI2_Byte 0
  loc_A1B091: LitI2_Byte &HFF
  loc_A1B093: ImpAdLdI4 MemVar_C3D83C
  loc_A1B096: FLdPr Me
  loc_A1B099: MemLdRfVar from_stack_1.global_60
  loc_A1B09C: NewIfNullPr IFileSystem3
  loc_A1B09F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A1B0A4: ILdRf var_88
  loc_A1B0A7: FLdPr Me
  loc_A1B0AA: MemStVarAd
  loc_A1B0AE: FFree1Ad var_88
  loc_A1B0B1: Call Proc_201_13_A04324()
  loc_A1B0B6: LitI4 1
  loc_A1B0BB: FLdPr Me
  loc_A1B0BE: MemLdRfVar from_stack_1.global_84
  loc_A1B0C1: FLdPr Me
  loc_A1B0C4: MemLdStr global_80
  loc_A1B0C7: LitI2_Byte 1
  loc_A1B0C9: FnUBound
  loc_A1B0CB: ForI4 var_90
  loc_A1B0D1: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A1B0D6: PopAdLdVar
  loc_A1B0D7: FLdPr Me
  loc_A1B0DA: MemLdRfVar from_stack_1.global_64
  loc_A1B0DD: LdPrVar
  loc_A1B0DF: LateMemCall
  loc_A1B0E5: FLdPr Me
  loc_A1B0E8: MemLdStr global_84
  loc_A1B0EB: FLdPr Me
  loc_A1B0EE: MemLdStr global_80
  loc_A1B0F1: AryLock
  loc_A1B0F4: Ary1LdRf
  loc_A1B0F5: FStR4 var_B8
  loc_A1B0F8: LitVarStr var_A0, "<table width=""200"" border=""1"" >"
  loc_A1B0FD: PopAdLdVar
  loc_A1B0FE: FLdPr Me
  loc_A1B101: MemLdRfVar from_stack_1.global_64
  loc_A1B104: LdPrVar
  loc_A1B106: LateMemCall
  loc_A1B10C: LitVarStr var_A0, "<tr>"
  loc_A1B111: PopAdLdVar
  loc_A1B112: FLdPr Me
  loc_A1B115: MemLdRfVar from_stack_1.global_64
  loc_A1B118: LdPrVar
  loc_A1B11A: LateMemCall
  loc_A1B120: LitStr "<td>"
  loc_A1B123: FMemLdR4 var_B8(0)
  loc_A1B128: ConcatStr
  loc_A1B129: FStStrNoPop var_BC
  loc_A1B12C: LitStr "</td>"
  loc_A1B12F: ConcatStr
  loc_A1B130: CVarStr var_CC
  loc_A1B133: PopAdLdVar
  loc_A1B134: FLdPr Me
  loc_A1B137: MemLdRfVar from_stack_1.global_64
  loc_A1B13A: LdPrVar
  loc_A1B13C: LateMemCall
  loc_A1B142: FFree1Str var_BC
  loc_A1B145: FFree1Var var_CC = ""
  loc_A1B148: LitStr "<td>"
  loc_A1B14B: FMemLdR4 var_B8(4)
  loc_A1B150: ConcatStr
  loc_A1B151: FStStrNoPop var_BC
  loc_A1B154: LitStr "</td>"
  loc_A1B157: ConcatStr
  loc_A1B158: CVarStr var_CC
  loc_A1B15B: PopAdLdVar
  loc_A1B15C: FLdPr Me
  loc_A1B15F: MemLdRfVar from_stack_1.global_64
  loc_A1B162: LdPrVar
  loc_A1B164: LateMemCall
  loc_A1B16A: FFree1Str var_BC
  loc_A1B16D: FFree1Var var_CC = ""
  loc_A1B170: LitStr "<td>"
  loc_A1B173: FMemLdR4 var_B8(8)
  loc_A1B178: ConcatStr
  loc_A1B179: FStStrNoPop var_BC
  loc_A1B17C: LitStr "</td>"
  loc_A1B17F: ConcatStr
  loc_A1B180: CVarStr var_CC
  loc_A1B183: PopAdLdVar
  loc_A1B184: FLdPr Me
  loc_A1B187: MemLdRfVar from_stack_1.global_64
  loc_A1B18A: LdPrVar
  loc_A1B18C: LateMemCall
  loc_A1B192: FFree1Str var_BC
  loc_A1B195: FFree1Var var_CC = ""
  loc_A1B198: LitStr "<td>"
  loc_A1B19B: FMemLdR4 var_B8(12)
  loc_A1B1A0: ConcatStr
  loc_A1B1A1: FStStrNoPop var_BC
  loc_A1B1A4: LitStr "</td>"
  loc_A1B1A7: ConcatStr
  loc_A1B1A8: CVarStr var_CC
  loc_A1B1AB: PopAdLdVar
  loc_A1B1AC: FLdPr Me
  loc_A1B1AF: MemLdRfVar from_stack_1.global_64
  loc_A1B1B2: LdPrVar
  loc_A1B1B4: LateMemCall
  loc_A1B1BA: FFree1Str var_BC
  loc_A1B1BD: FFree1Var var_CC = ""
  loc_A1B1C0: LitVarStr var_A0, "</tr>"
  loc_A1B1C5: PopAdLdVar
  loc_A1B1C6: FLdPr Me
  loc_A1B1C9: MemLdRfVar from_stack_1.global_64
  loc_A1B1CC: LdPrVar
  loc_A1B1CE: LateMemCall
  loc_A1B1D4: LitVarStr var_A0, "</table>"
  loc_A1B1D9: PopAdLdVar
  loc_A1B1DA: FLdPr Me
  loc_A1B1DD: MemLdRfVar from_stack_1.global_64
  loc_A1B1E0: LdPrVar
  loc_A1B1E2: LateMemCall
  loc_A1B1E8: LitI4 0
  loc_A1B1ED: FStR4 var_B8
  loc_A1B1F0: AryUnlock
  loc_A1B1F3: LitVarStr var_A0, "     </tr>"
  loc_A1B1F8: PopAdLdVar
  loc_A1B1F9: FLdPr Me
  loc_A1B1FC: MemLdRfVar from_stack_1.global_64
  loc_A1B1FF: LdPrVar
  loc_A1B201: LateMemCall
  loc_A1B207: FLdPr Me
  loc_A1B20A: MemLdRfVar from_stack_1.global_84
  loc_A1B20D: NextI4 var_90, loc_A1B0D1
  loc_A1B212: Call Proc_201_14_9839D0()
  loc_A1B217: FLdPr Me
  loc_A1B21A: MemLdRfVar from_stack_1.global_64
  loc_A1B21D: LdPrVar
  loc_A1B21F: LateMemCall
  loc_A1B225: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A1B22A: ExitProcHresult
End Sub

Private Function Proc_201_13_A04324() 'A04324
  'Data Table: 42BEFC
  loc_A041BC: LitVarStr var_94, "<html>"
  loc_A041C1: PopAdLdVar
  loc_A041C2: FLdPr Me
  loc_A041C5: MemLdRfVar from_stack_1.global_64
  loc_A041C8: LdPrVar
  loc_A041CA: LateMemCall
  loc_A041D0: LitVarStr var_94, "<head>"
  loc_A041D5: PopAdLdVar
  loc_A041D6: FLdPr Me
  loc_A041D9: MemLdRfVar from_stack_1.global_64
  loc_A041DC: LdPrVar
  loc_A041DE: LateMemCall
  loc_A041E4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A041E9: PopAdLdVar
  loc_A041EA: FLdPr Me
  loc_A041ED: MemLdRfVar from_stack_1.global_64
  loc_A041F0: LdPrVar
  loc_A041F2: LateMemCall
  loc_A041F8: LitStr "<title>"
  loc_A041FB: FLdRfVar var_A8
  loc_A041FE: FLdPr Me
  loc_A04201:  = Me.Caption
  loc_A04206: ILdRf var_A8
  loc_A04209: ConcatStr
  loc_A0420A: FStStrNoPop var_AC
  loc_A0420D: LitStr "</title>"
  loc_A04210: ConcatStr
  loc_A04211: CVarStr var_BC
  loc_A04214: PopAdLdVar
  loc_A04215: FLdPr Me
  loc_A04218: MemLdRfVar from_stack_1.global_64
  loc_A0421B: LdPrVar
  loc_A0421D: LateMemCall
  loc_A04223: FFreeStr var_A8 = ""
  loc_A0422A: FFree1Var var_BC = ""
  loc_A0422D: LitI4 0
  loc_A04232: FStStrCopy var_AC
  loc_A04235: FLdRfVar var_AC
  loc_A04238: LitI4 0
  loc_A0423D: FStStrCopy var_A8
  loc_A04240: FLdRfVar var_A8
  loc_A04243: LitI2_Byte 0
  loc_A04245: PopTmpLdAd2 var_BE
  loc_A04248: FLdPr Me
  loc_A0424B: MemLdRfVar from_stack_1.global_64
  loc_A0424E: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A04253: FFreeStr var_A8 = ""
  loc_A0425A: LitVarStr var_94, "<table width=""200"" border=""1"" bordercolor=""#0000FF"" bgcolor=""#999999"">"
  loc_A0425F: PopAdLdVar
  loc_A04260: FLdPr Me
  loc_A04263: MemLdRfVar from_stack_1.global_64
  loc_A04266: LdPrVar
  loc_A04268: LateMemCall
  loc_A0426E: LitVarStr var_94, "<tr>"
  loc_A04273: PopAdLdVar
  loc_A04274: FLdPr Me
  loc_A04277: MemLdRfVar from_stack_1.global_64
  loc_A0427A: LdPrVar
  loc_A0427C: LateMemCall
  loc_A04282: LitVarStr var_94, "<td>C&oacute;digo</td>"
  loc_A04287: PopAdLdVar
  loc_A04288: FLdPr Me
  loc_A0428B: MemLdRfVar from_stack_1.global_64
  loc_A0428E: LdPrVar
  loc_A04290: LateMemCall
  loc_A04296: LitVarStr var_94, "<td>Insumo</td>"
  loc_A0429B: PopAdLdVar
  loc_A0429C: FLdPr Me
  loc_A0429F: MemLdRfVar from_stack_1.global_64
  loc_A042A2: LdPrVar
  loc_A042A4: LateMemCall
  loc_A042AA: LitVarStr var_94, "<td>C&oacute;digo</td>"
  loc_A042AF: PopAdLdVar
  loc_A042B0: FLdPr Me
  loc_A042B3: MemLdRfVar from_stack_1.global_64
  loc_A042B6: LdPrVar
  loc_A042B8: LateMemCall
  loc_A042BE: LitVarStr var_94, "<td>Partida</td>"
  loc_A042C3: PopAdLdVar
  loc_A042C4: FLdPr Me
  loc_A042C7: MemLdRfVar from_stack_1.global_64
  loc_A042CA: LdPrVar
  loc_A042CC: LateMemCall
  loc_A042D2: LitVarStr var_94, "</tr>"
  loc_A042D7: PopAdLdVar
  loc_A042D8: FLdPr Me
  loc_A042DB: MemLdRfVar from_stack_1.global_64
  loc_A042DE: LdPrVar
  loc_A042E0: LateMemCall
  loc_A042E6: LitVarStr var_94, "</table>"
  loc_A042EB: PopAdLdVar
  loc_A042EC: FLdPr Me
  loc_A042EF: MemLdRfVar from_stack_1.global_64
  loc_A042F2: LdPrVar
  loc_A042F4: LateMemCall
  loc_A042FA: LitVarStr var_94, "</body>"
  loc_A042FF: PopAdLdVar
  loc_A04300: FLdPr Me
  loc_A04303: MemLdRfVar from_stack_1.global_64
  loc_A04306: LdPrVar
  loc_A04308: LateMemCall
  loc_A0430E: LitVarStr var_94, "</html>"
  loc_A04313: PopAdLdVar
  loc_A04314: FLdPr Me
  loc_A04317: MemLdRfVar from_stack_1.global_64
  loc_A0431A: LdPrVar
  loc_A0431C: LateMemCall
  loc_A04322: ExitProcHresult
End Function

Private Function Proc_201_14_9839D0() '9839D0
  'Data Table: 42BEFC
  loc_983990: LitVarStr var_94, "</table>"
  loc_983995: PopAdLdVar
  loc_983996: FLdPr Me
  loc_983999: MemLdRfVar from_stack_1.global_64
  loc_98399C: LdPrVar
  loc_98399E: LateMemCall
  loc_9839A4: LitVarStr var_94, "</body>"
  loc_9839A9: PopAdLdVar
  loc_9839AA: FLdPr Me
  loc_9839AD: MemLdRfVar from_stack_1.global_64
  loc_9839B0: LdPrVar
  loc_9839B2: LateMemCall
  loc_9839B8: LitVarStr var_94, "</html>"
  loc_9839BD: PopAdLdVar
  loc_9839BE: FLdPr Me
  loc_9839C1: MemLdRfVar from_stack_1.global_64
  loc_9839C4: LdPrVar
  loc_9839C6: LateMemCall
  loc_9839CC: ExitProcHresult
  loc_9839CD: CCyR4
  loc_9839CE: PopTmpLdAdStr var_7BFD
End Function
