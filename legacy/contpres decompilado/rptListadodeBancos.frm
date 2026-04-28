VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptListadodeBancos
  Caption = "Listado de Bancos"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptListadodeBancos.frx":0000
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
    OleObjectBlob = "rptListadodeBancos.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 5400
    Top = 1320
    Width = 735
    Height = 615
    TabIndex = 9
    Cancel = -1  'True
    Picture = "rptListadodeBancos.frx":094A
    Style = 1
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptListadodeBancos.frx":0B9C
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
    OleObjectBlob = "rptListadodeBancos.frx":0C00
  End
End

Attribute VB_Name = "rptListadodeBancos"

Public bGenerado As Boolean

Private Type UDT_1_005A7200
  bStruc(28) As Byte ' String fields: 7
End Type


Private Sub cmdSalir_Click() '97AFDC
  'Data Table: 431FE4
  loc_97AFAC: LitVarStr var_94, "Cerrando..."
  loc_97AFB1: PopAdLdVar
  loc_97AFB2: FLdPr Me
  loc_97AFB5: VCallAd Control_ID_statusBar
  loc_97AFB8: FStAdFunc var_A8
  loc_97AFBB: FLdPr var_A8
  loc_97AFBE: LateIdSt
  loc_97AFC3: FFree1Ad var_A8
  loc_97AFC6: ILdRf Me
  loc_97AFC9: FStAdNoPop
  loc_97AFCD: ImpAdLdRf MemVar_C44F9C
  loc_97AFD0: NewIfNullPr Me
  loc_97AFD3: Me.Global.Unload from_stack_1
  loc_97AFD8: FFree1Ad var_A8
  loc_97AFDB: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '98D830
  'Data Table: 431FE4
  loc_98D7E8: LitI2_Byte 0
  loc_98D7EA: FLdPr Me
  loc_98D7ED: MemStI2 bGenerado
  loc_98D7F0: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_98D7F5: ImpAdLdI2 MemVar_C3D064
  loc_98D7F8: CStrUI1
  loc_98D7FA: FStStrNoPop var_88
  loc_98D7FD: FLdPr Me
  loc_98D800: VCallAd Control_ID_cboPeriodo
  loc_98D803: FStAdFunc var_8C
  loc_98D806: FLdPr var_8C
  loc_98D809: Me.Text = from_stack_1
  loc_98D80E: FFree1Str var_88
  loc_98D811: FFree1Ad var_8C
  loc_98D814: Call HabilitarCriterio()
  loc_98D819: ILdRf Me
  loc_98D81C: CastAd
  loc_98D81F: FStAdFunc var_8C
  loc_98D822: FLdRfVar var_8C
  loc_98D825: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_98D82A: FFree1Ad var_8C
  loc_98D82D: ExitProcHresult
  loc_98D82E: FFree1Var arg_6C64 = ""
End Sub

Private Sub cmdPdf_Click() '960454
  'Data Table: 431FE4
  loc_96043C: LitI2_Byte 0
  loc_96043E: ILdRf Me
  loc_960441: CastAd
  loc_960444: FStAdFunc var_88
  loc_960447: FLdRfVar var_88
  loc_96044A: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_96044F: FFree1Ad var_88
  loc_960452: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '9895B4
  'Data Table: 431FE4
  loc_98957C: FLdPr Me
  loc_98957F: VCallAd Control_ID_statusBar
  loc_989582: FStAdFunc var_88
  loc_989585: FLdPr var_88
  loc_989588: LateIdLdVar var_98 DispID_1 0
  loc_98958F: CStrVarTmp
  loc_989590: CVarStr var_A8
  loc_989593: PopAdLdVar
  loc_989594: FLdPr Me
  loc_989597: VCallAd Control_ID_statusBar
  loc_98959A: FStAdFunc var_BC
  loc_98959D: FLdPr var_BC
  loc_9895A0: LateIdSt
  loc_9895A5: FFreeAd var_88 = ""
  loc_9895AC: FFreeVar var_98 = ""
  loc_9895B3: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '96028C
  'Data Table: 431FE4
  loc_960274: ILdRf Me
  loc_960277: CastAd
  loc_96027A: FStAdFunc var_88
  loc_96027D: FLdRfVar var_88
  loc_960280: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_960285: FFree1Ad var_88
  loc_960288: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '9603BC
  'Data Table: 431FE4
  loc_9603A4: ILdRf Me
  loc_9603A7: CastAd
  loc_9603AA: FStAdFunc var_88
  loc_9603AD: FLdRfVar var_88
  loc_9603B0: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_9603B5: FFree1Ad var_88
  loc_9603B8: ExitProcHresult
  loc_9603B9: ILdRf Me00
End Sub

Private Sub Form_Load() '9CB1A4
  'Data Table: 431FE4
  loc_9CB0D4: ILdRf Me
  loc_9CB0D7: CastAd
  loc_9CB0DA: FStAdFunc var_8C
  loc_9CB0DD: FLdRfVar var_8C
  loc_9CB0E0: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9CB0E5: FFree1Ad var_8C
  loc_9CB0E8: FLdRfVar var_88
  loc_9CB0EB: NewIfNullAd
  loc_9CB0EE: FStAd var_90 
  loc_9CB0F2: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9CB0F5: FLdPr var_90
  loc_9CB0F8: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9CB0FD: FLdRfVar var_94
  loc_9CB100: FLdPr var_90
  loc_9CB103: from_stack_1 = clsperiodo.RecordCount
  loc_9CB108: ILdRf var_94
  loc_9CB10B: LitI4 0
  loc_9CB110: GtI4
  loc_9CB111: BranchF loc_9CB198
  loc_9CB114: FLdPr var_90
  loc_9CB117: Call clsperiodo.MoveFirst()
  loc_9CB11C: FLdRfVar var_96
  loc_9CB11F: FLdPr var_90
  loc_9CB122: from_stack_1 = clsperiodo.EOF
  loc_9CB127: FLdI2 var_96
  loc_9CB12A: NotI4
  loc_9CB12B: BranchF loc_9CB198
  loc_9CB12E: LitVar_Missing var_D4
  loc_9CB131: PopAdLdVar
  loc_9CB132: FLdRfVar var_C0
  loc_9CB135: FLdRfVar var_B0
  loc_9CB138: LitVarStr var_AC, "PeriInfo"
  loc_9CB13D: PopAdLdVar
  loc_9CB13E: FLdRfVar var_9C
  loc_9CB141: FLdRfVar var_8C
  loc_9CB144: FLdPr var_90
  loc_9CB147: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9CB14C: FLdPr var_8C
  loc_9CB14F:  = Me.Fields
  loc_9CB154: FLdPr var_9C
  loc_9CB157: from_stack_2 = Me.Item(from_stack_1)
  loc_9CB15C: FLdPr var_B0
  loc_9CB15F:  = Me.Value
  loc_9CB164: FLdRfVar var_C0
  loc_9CB167: CStrVarTmp
  loc_9CB168: FStStrNoPop var_C4
  loc_9CB16B: FLdPr Me
  loc_9CB16E: VCallAd Control_ID_cboPeriodo
  loc_9CB171: FStAdFunc var_D8
  loc_9CB174: FLdPr var_D8
  loc_9CB177: Me.AddItem from_stack_1, from_stack_2
  loc_9CB17C: FFree1Str var_C4
  loc_9CB17F: FFreeAd var_8C = "": var_9C = "": var_B0 = ""
  loc_9CB18A: FFree1Var var_C0 = ""
  loc_9CB18D: FLdPr var_90
  loc_9CB190: Call clsperiodo.MoveSiguiente()
  loc_9CB195: Branch loc_9CB11C
  loc_9CB198: LitNothing
  loc_9CB19A: FStAd var_90 
  loc_9CB19E: Call cmdNueva_Click()
  loc_9CB1A3: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9604A0
  'Data Table: 431FE4
  loc_960488: FLdPr Me
  loc_96048B: VCallAd Control_ID_wbbReporte
  loc_96048E: FStAdFunc var_88
  loc_960491: FLdRfVar var_88
  loc_960494: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_960499: FFree1Ad var_88
  loc_96049C: ExitProcHresult
End Sub

Public Function bGeneradoGet() '432970
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '43297F
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '984F7C
  'Data Table: 431FE4
  loc_984F48: LitI4 0
  loc_984F4D: LitI4 0
  loc_984F52: FLdRfVar var_88
  loc_984F55: Redim
  loc_984F5F: FLdPr Me
  loc_984F62: VCallAd Control_ID_cboPeriodo
  loc_984F65: CVarAd
  loc_984F69: ParmAry1St
  loc_984F6F: FLdRfVar var_88
  loc_984F72: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_984F77: FLdRfVar var_88
  loc_984F7A: Erase
  loc_984F7B: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'A8D1C4
  'Data Table: 431FE4
  loc_A8CD74: OnErrorGoto loc_A8D15F
  loc_A8CD77: FLdPr Me
  loc_A8CD7A: MemLdI2 bGenerado
  loc_A8CD7D: BranchF loc_A8CD81
  loc_A8CD80: ExitProcHresult
  loc_A8CD81: LitVarStr var_94, "Generando reporte..."
  loc_A8CD86: PopAdLdVar
  loc_A8CD87: FLdPr Me
  loc_A8CD8A: VCallAd Control_ID_statusBar
  loc_A8CD8D: FStAdFunc var_A8
  loc_A8CD90: FLdPr var_A8
  loc_A8CD93: LateIdSt
  loc_A8CD98: FFree1Ad var_A8
  loc_A8CD9B: LitI4 &HB
  loc_A8CDA0: CI2I4
  loc_A8CDA1: FLdPr Me
  loc_A8CDA4: Me.MousePointer = from_stack_1
  loc_A8CDA9: FLdPr Me
  loc_A8CDAC: MemLdRfVar from_stack_1.global_56
  loc_A8CDAF: NewIfNullAd
  loc_A8CDB2: FStAd var_AC 
  loc_A8CDB6: LitStr "SELECT CodiBanc, DetaBanc, NumeBanc, banco.CodiCuco, ifnull(DetaCuco,'') as DetaCuco, FeanBanc, UlchBanc"
  loc_A8CDB9: LitStr " FROM banco"
  loc_A8CDBC: ConcatStr
  loc_A8CDBD: FStStrNoPop var_B0
  loc_A8CDC0: LitStr " LEFT JOIN infogov.cuentacontable as c ON c.PeriInfo = banco.PeriInfo AND c.CodiCuco = banco.CodiCuco"
  loc_A8CDC3: ConcatStr
  loc_A8CDC4: FStStrNoPop var_B4
  loc_A8CDC7: LitStr " WHERE banco.PeriInfo = "
  loc_A8CDCA: ConcatStr
  loc_A8CDCB: FStStrNoPop var_BC
  loc_A8CDCE: FLdRfVar var_B8
  loc_A8CDD1: FLdPr Me
  loc_A8CDD4: VCallAd Control_ID_cboPeriodo
  loc_A8CDD7: FStAdFunc var_A8
  loc_A8CDDA: FLdPr var_A8
  loc_A8CDDD:  = Me.Text
  loc_A8CDE2: ILdRf var_B8
  loc_A8CDE5: ConcatStr
  loc_A8CDE6: FStStrNoPop var_C0
  loc_A8CDE9: LitStr " ORDER BY CodiBanc"
  loc_A8CDEC: ConcatStr
  loc_A8CDED: FStStrNoPop var_C4
  loc_A8CDF0: FLdPr var_AC
  loc_A8CDF3: Call clsbanco.RedefineRS(from_stack_1v)
  loc_A8CDF8: FFreeStr var_B0 = "": var_B4 = "": var_BC = "": var_B8 = "": var_C0 = ""
  loc_A8CE07: FFree1Ad var_A8
  loc_A8CE0A: FLdRfVar var_C8
  loc_A8CE0D: FLdPr var_AC
  loc_A8CE10: from_stack_1 = clsbanco.RecordCount
  loc_A8CE15: ILdRf var_C8
  loc_A8CE18: LitI4 0
  loc_A8CE1D: EqI4
  loc_A8CE1E: BranchF loc_A8CE31
  loc_A8CE21: LitI4 0
  loc_A8CE26: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_A8CE29: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A8CE2E: Branch loc_A8D136
  loc_A8CE31: FLdPr var_AC
  loc_A8CE34: Call clsbanco.MoveFirst()
  loc_A8CE39: LitI4 0
  loc_A8CE3E: FLdRfVar var_C8
  loc_A8CE41: FLdPr var_AC
  loc_A8CE44: from_stack_1 = clsbanco.RecordCount
  loc_A8CE49: ILdRf var_C8
  loc_A8CE4C: FLdPr Me
  loc_A8CE4F: MemLdRfVar from_stack_1.global_80
  loc_A8CE52: Redim
  loc_A8CE5C: LitI2_Byte 1
  loc_A8CE5E: FLdPr Me
  loc_A8CE61: MemLdRfVar from_stack_1.global_84
  loc_A8CE64: FLdPr Me
  loc_A8CE67: MemLdStr global_80
  loc_A8CE6A: LitI2_Byte 1
  loc_A8CE6C: FnUBound
  loc_A8CE6E: CI2I4
  loc_A8CE6F: ForI2 var_CC
  loc_A8CE75: FLdRfVar var_D4
  loc_A8CE78: LitVarStr var_94, "CodiBanc"
  loc_A8CE7D: PopAdLdVar
  loc_A8CE7E: FLdRfVar var_D0
  loc_A8CE81: FLdRfVar var_A8
  loc_A8CE84: FLdPr var_AC
  loc_A8CE87: from_stack_1v = clsbanco.RsFrmGet()
  loc_A8CE8C: FLdPr var_A8
  loc_A8CE8F:  = Me.Fields
  loc_A8CE94: FLdPr var_D0
  loc_A8CE97: from_stack_2 = Me.Item(from_stack_1)
  loc_A8CE9C: LitI2_Byte 0
  loc_A8CE9E: LitVar_Missing var_F8
  loc_A8CEA1: LitI2_Byte 0
  loc_A8CEA3: FLdZeroAd var_D4
  loc_A8CEA6: CVarAd
  loc_A8CEAA: PopAdLdVar
  loc_A8CEAB: FLdPr Me
  loc_A8CEAE: MemLdI2 global_84
  loc_A8CEB1: CI4UI1
  loc_A8CEB2: FLdPr Me
  loc_A8CEB5: MemLdStr global_80
  loc_A8CEB8: AryLock
  loc_A8CEBB: Ary1LdPr
  loc_A8CEBC: MemLdRfVar from_stack_1.global_0
  loc_A8CEBF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8CEC4: AryUnlock
  loc_A8CEC7: FFreeAd var_A8 = ""
  loc_A8CECE: FFreeVar var_E8 = ""
  loc_A8CED5: FLdRfVar var_D4
  loc_A8CED8: LitVarStr var_94, "DetaBanc"
  loc_A8CEDD: PopAdLdVar
  loc_A8CEDE: FLdRfVar var_D0
  loc_A8CEE1: FLdRfVar var_A8
  loc_A8CEE4: FLdPr var_AC
  loc_A8CEE7: from_stack_1v = clsbanco.RsFrmGet()
  loc_A8CEEC: FLdPr var_A8
  loc_A8CEEF:  = Me.Fields
  loc_A8CEF4: FLdPr var_D0
  loc_A8CEF7: from_stack_2 = Me.Item(from_stack_1)
  loc_A8CEFC: LitI2_Byte 0
  loc_A8CEFE: LitVar_Missing var_F8
  loc_A8CF01: LitI2_Byte 0
  loc_A8CF03: FLdZeroAd var_D4
  loc_A8CF06: CVarAd
  loc_A8CF0A: PopAdLdVar
  loc_A8CF0B: FLdPr Me
  loc_A8CF0E: MemLdI2 global_84
  loc_A8CF11: CI4UI1
  loc_A8CF12: FLdPr Me
  loc_A8CF15: MemLdStr global_80
  loc_A8CF18: AryLock
  loc_A8CF1B: Ary1LdPr
  loc_A8CF1C: MemLdRfVar from_stack_1.global_4
  loc_A8CF1F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8CF24: AryUnlock
  loc_A8CF27: FFreeAd var_A8 = ""
  loc_A8CF2E: FFreeVar var_E8 = ""
  loc_A8CF35: FLdRfVar var_D4
  loc_A8CF38: LitVarStr var_94, "NumeBanc"
  loc_A8CF3D: PopAdLdVar
  loc_A8CF3E: FLdRfVar var_D0
  loc_A8CF41: FLdRfVar var_A8
  loc_A8CF44: FLdPr var_AC
  loc_A8CF47: from_stack_1v = clsbanco.RsFrmGet()
  loc_A8CF4C: FLdPr var_A8
  loc_A8CF4F:  = Me.Fields
  loc_A8CF54: FLdPr var_D0
  loc_A8CF57: from_stack_2 = Me.Item(from_stack_1)
  loc_A8CF5C: LitI2_Byte 0
  loc_A8CF5E: LitVar_Missing var_F8
  loc_A8CF61: LitI2_Byte 0
  loc_A8CF63: FLdZeroAd var_D4
  loc_A8CF66: CVarAd
  loc_A8CF6A: PopAdLdVar
  loc_A8CF6B: FLdPr Me
  loc_A8CF6E: MemLdI2 global_84
  loc_A8CF71: CI4UI1
  loc_A8CF72: FLdPr Me
  loc_A8CF75: MemLdStr global_80
  loc_A8CF78: AryLock
  loc_A8CF7B: Ary1LdPr
  loc_A8CF7C: MemLdRfVar from_stack_1.global_8
  loc_A8CF7F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8CF84: AryUnlock
  loc_A8CF87: FFreeAd var_A8 = ""
  loc_A8CF8E: FFreeVar var_E8 = ""
  loc_A8CF95: FLdRfVar var_D4
  loc_A8CF98: LitVarStr var_94, "CodiCuco"
  loc_A8CF9D: PopAdLdVar
  loc_A8CF9E: FLdRfVar var_D0
  loc_A8CFA1: FLdRfVar var_A8
  loc_A8CFA4: FLdPr var_AC
  loc_A8CFA7: from_stack_1v = clsbanco.RsFrmGet()
  loc_A8CFAC: FLdPr var_A8
  loc_A8CFAF:  = Me.Fields
  loc_A8CFB4: FLdPr var_D0
  loc_A8CFB7: from_stack_2 = Me.Item(from_stack_1)
  loc_A8CFBC: LitI2_Byte 0
  loc_A8CFBE: LitVar_Missing var_F8
  loc_A8CFC1: LitI2_Byte 0
  loc_A8CFC3: FLdZeroAd var_D4
  loc_A8CFC6: CVarAd
  loc_A8CFCA: PopAdLdVar
  loc_A8CFCB: FLdPr Me
  loc_A8CFCE: MemLdI2 global_84
  loc_A8CFD1: CI4UI1
  loc_A8CFD2: FLdPr Me
  loc_A8CFD5: MemLdStr global_80
  loc_A8CFD8: AryLock
  loc_A8CFDB: Ary1LdPr
  loc_A8CFDC: MemLdRfVar from_stack_1.global_12
  loc_A8CFDF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8CFE4: AryUnlock
  loc_A8CFE7: FFreeAd var_A8 = ""
  loc_A8CFEE: FFreeVar var_E8 = ""
  loc_A8CFF5: FLdRfVar var_D4
  loc_A8CFF8: LitVarStr var_94, "DetaCuco"
  loc_A8CFFD: PopAdLdVar
  loc_A8CFFE: FLdRfVar var_D0
  loc_A8D001: FLdRfVar var_A8
  loc_A8D004: FLdPr var_AC
  loc_A8D007: from_stack_1v = clsbanco.RsFrmGet()
  loc_A8D00C: FLdPr var_A8
  loc_A8D00F:  = Me.Fields
  loc_A8D014: FLdPr var_D0
  loc_A8D017: from_stack_2 = Me.Item(from_stack_1)
  loc_A8D01C: LitI2_Byte 0
  loc_A8D01E: LitVar_Missing var_F8
  loc_A8D021: LitI2_Byte 0
  loc_A8D023: FLdZeroAd var_D4
  loc_A8D026: CVarAd
  loc_A8D02A: PopAdLdVar
  loc_A8D02B: FLdPr Me
  loc_A8D02E: MemLdI2 global_84
  loc_A8D031: CI4UI1
  loc_A8D032: FLdPr Me
  loc_A8D035: MemLdStr global_80
  loc_A8D038: AryLock
  loc_A8D03B: Ary1LdPr
  loc_A8D03C: MemLdRfVar from_stack_1.global_16
  loc_A8D03F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8D044: AryUnlock
  loc_A8D047: FFreeAd var_A8 = ""
  loc_A8D04E: FFreeVar var_E8 = ""
  loc_A8D055: FLdRfVar var_D4
  loc_A8D058: LitVarStr var_94, "FeanBanc"
  loc_A8D05D: PopAdLdVar
  loc_A8D05E: FLdRfVar var_D0
  loc_A8D061: FLdRfVar var_A8
  loc_A8D064: FLdPr var_AC
  loc_A8D067: from_stack_1v = clsbanco.RsFrmGet()
  loc_A8D06C: FLdPr var_A8
  loc_A8D06F:  = Me.Fields
  loc_A8D074: FLdPr var_D0
  loc_A8D077: from_stack_2 = Me.Item(from_stack_1)
  loc_A8D07C: LitI2_Byte 0
  loc_A8D07E: LitVar_Missing var_F8
  loc_A8D081: LitI2_Byte 0
  loc_A8D083: FLdZeroAd var_D4
  loc_A8D086: CVarAd
  loc_A8D08A: PopAdLdVar
  loc_A8D08B: FLdPr Me
  loc_A8D08E: MemLdI2 global_84
  loc_A8D091: CI4UI1
  loc_A8D092: FLdPr Me
  loc_A8D095: MemLdStr global_80
  loc_A8D098: AryLock
  loc_A8D09B: Ary1LdPr
  loc_A8D09C: MemLdRfVar from_stack_1.global_20
  loc_A8D09F: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8D0A4: AryUnlock
  loc_A8D0A7: FFreeAd var_A8 = ""
  loc_A8D0AE: FFreeVar var_E8 = ""
  loc_A8D0B5: FLdRfVar var_D4
  loc_A8D0B8: LitVarStr var_94, "UlchBanc"
  loc_A8D0BD: PopAdLdVar
  loc_A8D0BE: FLdRfVar var_D0
  loc_A8D0C1: FLdRfVar var_A8
  loc_A8D0C4: FLdPr var_AC
  loc_A8D0C7: from_stack_1v = clsbanco.RsFrmGet()
  loc_A8D0CC: FLdPr var_A8
  loc_A8D0CF:  = Me.Fields
  loc_A8D0D4: FLdPr var_D0
  loc_A8D0D7: from_stack_2 = Me.Item(from_stack_1)
  loc_A8D0DC: LitI2_Byte 0
  loc_A8D0DE: LitVar_Missing var_F8
  loc_A8D0E1: LitI2_Byte 0
  loc_A8D0E3: FLdZeroAd var_D4
  loc_A8D0E6: CVarAd
  loc_A8D0EA: PopAdLdVar
  loc_A8D0EB: FLdPr Me
  loc_A8D0EE: MemLdI2 global_84
  loc_A8D0F1: CI4UI1
  loc_A8D0F2: FLdPr Me
  loc_A8D0F5: MemLdStr global_80
  loc_A8D0F8: AryLock
  loc_A8D0FB: Ary1LdPr
  loc_A8D0FC: MemLdRfVar from_stack_1.global_24
  loc_A8D0FF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_A8D104: AryUnlock
  loc_A8D107: FFreeAd var_A8 = ""
  loc_A8D10E: FFreeVar var_E8 = ""
  loc_A8D115: FLdPr var_AC
  loc_A8D118: Call clsbanco.MoveSiguiente()
  loc_A8D11D: FLdPr Me
  loc_A8D120: MemLdRfVar from_stack_1.global_84
  loc_A8D123: NextI2 var_CC, loc_A8CE75
  loc_A8D128: LitNothing
  loc_A8D12A: FStAd var_AC 
  loc_A8D12E: LitI2_Byte &HFF
  loc_A8D130: FLdPr Me
  loc_A8D133: MemStI2 bGenerado
  loc_A8D136: LitI4 0
  loc_A8D13B: CI2I4
  loc_A8D13C: FLdPr Me
  loc_A8D13F: Me.MousePointer = from_stack_1
  loc_A8D144: LitVarStr var_94, vbNullString
  loc_A8D149: PopAdLdVar
  loc_A8D14A: FLdPr Me
  loc_A8D14D: VCallAd Control_ID_statusBar
  loc_A8D150: FStAdFunc var_A8
  loc_A8D153: FLdPr var_A8
  loc_A8D156: LateIdSt
  loc_A8D15B: FFree1Ad var_A8
  loc_A8D15E: ExitProcHresult
  loc_A8D15F: LitI4 0
  loc_A8D164: LitStr "Error "
  loc_A8D167: FLdRfVar var_C8
  loc_A8D16A: ImpAdCallI2 Err 'rtcErrObj
  loc_A8D16F: FStAdFunc var_A8
  loc_A8D172: FLdPr var_A8
  loc_A8D175:  = Err.Number
  loc_A8D17A: ILdRf var_C8
  loc_A8D17D: CStrI4
  loc_A8D17F: FStStrNoPop var_B0
  loc_A8D182: ConcatStr
  loc_A8D183: FStStrNoPop var_B4
  loc_A8D186: LitStr ": "
  loc_A8D189: ConcatStr
  loc_A8D18A: FStStrNoPop var_BC
  loc_A8D18D: FLdRfVar var_B8
  loc_A8D190: ImpAdCallI2 Err 'rtcErrObj
  loc_A8D195: FStAdFunc var_D0
  loc_A8D198: FLdPr var_D0
  loc_A8D19B:  = Err.Description
  loc_A8D1A0: ILdRf var_B8
  loc_A8D1A3: ConcatStr
  loc_A8D1A4: FStStrNoPop var_C0
  loc_A8D1A7: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A8D1AC: FFreeStr var_B0 = "": var_B4 = "": var_BC = "": var_B8 = ""
  loc_A8D1B9: FFreeAd var_A8 = ""
  loc_A8D1C0: ExitProcHresult
  loc_A8D1C1: ExitProcHresult
  loc_A8D1C2: FLdPr arg_6C08
End Sub

Public Sub GeneraHTML() 'A2AB6C
  'Data Table: 431FE4
  loc_A2A990: FLdRfVar var_88
  loc_A2A993: LitI2_Byte 0
  loc_A2A995: LitI2_Byte &HFF
  loc_A2A997: ImpAdLdI4 MemVar_C3D83C
  loc_A2A99A: FLdPr Me
  loc_A2A99D: MemLdRfVar from_stack_1.global_60
  loc_A2A9A0: NewIfNullPr IFileSystem3
  loc_A2A9A3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A2A9A8: ILdRf var_88
  loc_A2A9AB: FLdPr Me
  loc_A2A9AE: MemStVarAd
  loc_A2A9B2: FFree1Ad var_88
  loc_A2A9B5: Call Proc_188_13_ABDAFC()
  loc_A2A9BA: LitI2_Byte 1
  loc_A2A9BC: FLdPr Me
  loc_A2A9BF: MemLdRfVar from_stack_1.global_84
  loc_A2A9C2: FLdPr Me
  loc_A2A9C5: MemLdStr global_80
  loc_A2A9C8: LitI2_Byte 1
  loc_A2A9CA: FnUBound
  loc_A2A9CC: CI2I4
  loc_A2A9CD: ForI2 var_8C
  loc_A2A9D3: LitVarStr var_9C, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A2A9D8: PopAdLdVar
  loc_A2A9D9: FLdPr Me
  loc_A2A9DC: MemLdRfVar from_stack_1.global_64
  loc_A2A9DF: LdPrVar
  loc_A2A9E1: LateMemCall
  loc_A2A9E7: FLdPr Me
  loc_A2A9EA: MemLdI2 global_84
  loc_A2A9ED: CI4UI1
  loc_A2A9EE: FLdPr Me
  loc_A2A9F1: MemLdStr global_80
  loc_A2A9F4: AryLock
  loc_A2A9F7: Ary1LdRf
  loc_A2A9F8: FStR4 var_B4
  loc_A2A9FB: LitI4 0
  loc_A2AA00: LitI4 0
  loc_A2AA05: LitI2_Byte 0
  loc_A2AA07: LitStr "right"
  loc_A2AA0A: FMemLdR4 var_B4(0)
  loc_A2AA0F: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2AA14: CVarStr var_C4
  loc_A2AA17: PopAdLdVar
  loc_A2AA18: FLdPr Me
  loc_A2AA1B: MemLdRfVar from_stack_1.global_64
  loc_A2AA1E: LdPrVar
  loc_A2AA20: LateMemCall
  loc_A2AA26: FFree1Var var_C4 = ""
  loc_A2AA29: LitI4 0
  loc_A2AA2E: LitI4 0
  loc_A2AA33: LitI2_Byte 0
  loc_A2AA35: LitStr "left"
  loc_A2AA38: FMemLdR4 var_B4(4)
  loc_A2AA3D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2AA42: CVarStr var_C4
  loc_A2AA45: PopAdLdVar
  loc_A2AA46: FLdPr Me
  loc_A2AA49: MemLdRfVar from_stack_1.global_64
  loc_A2AA4C: LdPrVar
  loc_A2AA4E: LateMemCall
  loc_A2AA54: FFree1Var var_C4 = ""
  loc_A2AA57: LitI4 0
  loc_A2AA5C: LitI4 0
  loc_A2AA61: LitI2_Byte 0
  loc_A2AA63: LitStr "right"
  loc_A2AA66: FMemLdR4 var_B4(8)
  loc_A2AA6B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2AA70: CVarStr var_C4
  loc_A2AA73: PopAdLdVar
  loc_A2AA74: FLdPr Me
  loc_A2AA77: MemLdRfVar from_stack_1.global_64
  loc_A2AA7A: LdPrVar
  loc_A2AA7C: LateMemCall
  loc_A2AA82: FFree1Var var_C4 = ""
  loc_A2AA85: LitI4 0
  loc_A2AA8A: LitI4 0
  loc_A2AA8F: LitI2_Byte 0
  loc_A2AA91: LitStr "left"
  loc_A2AA94: FMemLdR4 var_B4(12)
  loc_A2AA99: LitStr " - "
  loc_A2AA9C: ConcatStr
  loc_A2AA9D: FStStrNoPop var_C8
  loc_A2AAA0: FMemLdR4 var_B4(16)
  loc_A2AAA5: ConcatStr
  loc_A2AAA6: FStStrNoPop var_CC
  loc_A2AAA9: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2AAAE: CVarStr var_C4
  loc_A2AAB1: PopAdLdVar
  loc_A2AAB2: FLdPr Me
  loc_A2AAB5: MemLdRfVar from_stack_1.global_64
  loc_A2AAB8: LdPrVar
  loc_A2AABA: LateMemCall
  loc_A2AAC0: FFreeStr var_C8 = ""
  loc_A2AAC7: FFree1Var var_C4 = ""
  loc_A2AACA: LitI4 0
  loc_A2AACF: LitI4 0
  loc_A2AAD4: LitI2_Byte 0
  loc_A2AAD6: LitStr "center"
  loc_A2AAD9: FMemLdR4 var_B4(20)
  loc_A2AADE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2AAE3: CVarStr var_C4
  loc_A2AAE6: PopAdLdVar
  loc_A2AAE7: FLdPr Me
  loc_A2AAEA: MemLdRfVar from_stack_1.global_64
  loc_A2AAED: LdPrVar
  loc_A2AAEF: LateMemCall
  loc_A2AAF5: FFree1Var var_C4 = ""
  loc_A2AAF8: LitI4 0
  loc_A2AAFD: LitI4 0
  loc_A2AB02: LitI2_Byte 0
  loc_A2AB04: LitStr "right"
  loc_A2AB07: FMemLdR4 var_B4(24)
  loc_A2AB0C: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A2AB11: CVarStr var_C4
  loc_A2AB14: PopAdLdVar
  loc_A2AB15: FLdPr Me
  loc_A2AB18: MemLdRfVar from_stack_1.global_64
  loc_A2AB1B: LdPrVar
  loc_A2AB1D: LateMemCall
  loc_A2AB23: FFree1Var var_C4 = ""
  loc_A2AB26: LitI4 0
  loc_A2AB2B: FStR4 var_B4
  loc_A2AB2E: AryUnlock
  loc_A2AB31: LitVarStr var_9C, "     </tr>"
  loc_A2AB36: PopAdLdVar
  loc_A2AB37: FLdPr Me
  loc_A2AB3A: MemLdRfVar from_stack_1.global_64
  loc_A2AB3D: LdPrVar
  loc_A2AB3F: LateMemCall
  loc_A2AB45: FLdPr Me
  loc_A2AB48: MemLdRfVar from_stack_1.global_84
  loc_A2AB4B: NextI2 var_8C, loc_A2A9D3
  loc_A2AB50: Call Proc_188_14_982BD0()
  loc_A2AB55: FLdPr Me
  loc_A2AB58: MemLdRfVar from_stack_1.global_64
  loc_A2AB5B: LdPrVar
  loc_A2AB5D: LateMemCall
  loc_A2AB63: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A2AB68: ExitProcHresult
  loc_A2AB69: AryLdPr
End Sub

Private Function Proc_188_13_ABDAFC() 'ABDAFC
  'Data Table: 431FE4
  loc_ABD544: LitVarStr var_94, "<html>"
  loc_ABD549: PopAdLdVar
  loc_ABD54A: FLdPr Me
  loc_ABD54D: MemLdRfVar from_stack_1.global_64
  loc_ABD550: LdPrVar
  loc_ABD552: LateMemCall
  loc_ABD558: LitVarStr var_94, "<head>"
  loc_ABD55D: PopAdLdVar
  loc_ABD55E: FLdPr Me
  loc_ABD561: MemLdRfVar from_stack_1.global_64
  loc_ABD564: LdPrVar
  loc_ABD566: LateMemCall
  loc_ABD56C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_ABD571: PopAdLdVar
  loc_ABD572: FLdPr Me
  loc_ABD575: MemLdRfVar from_stack_1.global_64
  loc_ABD578: LdPrVar
  loc_ABD57A: LateMemCall
  loc_ABD580: LitStr "<title>"
  loc_ABD583: FLdRfVar var_A8
  loc_ABD586: FLdPr Me
  loc_ABD589:  = Me.Caption
  loc_ABD58E: ILdRf var_A8
  loc_ABD591: ConcatStr
  loc_ABD592: FStStrNoPop var_AC
  loc_ABD595: LitStr "</title>"
  loc_ABD598: ConcatStr
  loc_ABD599: CVarStr var_BC
  loc_ABD59C: PopAdLdVar
  loc_ABD59D: FLdPr Me
  loc_ABD5A0: MemLdRfVar from_stack_1.global_64
  loc_ABD5A3: LdPrVar
  loc_ABD5A5: LateMemCall
  loc_ABD5AB: FFreeStr var_A8 = ""
  loc_ABD5B2: FFree1Var var_BC = ""
  loc_ABD5B5: LitVarStr var_94, "<style type=""text/css"">"
  loc_ABD5BA: PopAdLdVar
  loc_ABD5BB: FLdPr Me
  loc_ABD5BE: MemLdRfVar from_stack_1.global_64
  loc_ABD5C1: LdPrVar
  loc_ABD5C3: LateMemCall
  loc_ABD5C9: LitVarStr var_94, ".Titulo1 {"
  loc_ABD5CE: PopAdLdVar
  loc_ABD5CF: FLdPr Me
  loc_ABD5D2: MemLdRfVar from_stack_1.global_64
  loc_ABD5D5: LdPrVar
  loc_ABD5D7: LateMemCall
  loc_ABD5DD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ABD5E2: PopAdLdVar
  loc_ABD5E3: FLdPr Me
  loc_ABD5E6: MemLdRfVar from_stack_1.global_64
  loc_ABD5E9: LdPrVar
  loc_ABD5EB: LateMemCall
  loc_ABD5F1: LitVarStr var_94, " font-size: 18px;"
  loc_ABD5F6: PopAdLdVar
  loc_ABD5F7: FLdPr Me
  loc_ABD5FA: MemLdRfVar from_stack_1.global_64
  loc_ABD5FD: LdPrVar
  loc_ABD5FF: LateMemCall
  loc_ABD605: LitVarStr var_94, " font-weight: bold;"
  loc_ABD60A: PopAdLdVar
  loc_ABD60B: FLdPr Me
  loc_ABD60E: MemLdRfVar from_stack_1.global_64
  loc_ABD611: LdPrVar
  loc_ABD613: LateMemCall
  loc_ABD619: LitVarStr var_94, "}"
  loc_ABD61E: PopAdLdVar
  loc_ABD61F: FLdPr Me
  loc_ABD622: MemLdRfVar from_stack_1.global_64
  loc_ABD625: LdPrVar
  loc_ABD627: LateMemCall
  loc_ABD62D: LitVarStr var_94, ".Titulo2 {"
  loc_ABD632: PopAdLdVar
  loc_ABD633: FLdPr Me
  loc_ABD636: MemLdRfVar from_stack_1.global_64
  loc_ABD639: LdPrVar
  loc_ABD63B: LateMemCall
  loc_ABD641: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ABD646: PopAdLdVar
  loc_ABD647: FLdPr Me
  loc_ABD64A: MemLdRfVar from_stack_1.global_64
  loc_ABD64D: LdPrVar
  loc_ABD64F: LateMemCall
  loc_ABD655: LitVarStr var_94, " font-size: 14px;"
  loc_ABD65A: PopAdLdVar
  loc_ABD65B: FLdPr Me
  loc_ABD65E: MemLdRfVar from_stack_1.global_64
  loc_ABD661: LdPrVar
  loc_ABD663: LateMemCall
  loc_ABD669: LitVarStr var_94, " font-weight: bold;"
  loc_ABD66E: PopAdLdVar
  loc_ABD66F: FLdPr Me
  loc_ABD672: MemLdRfVar from_stack_1.global_64
  loc_ABD675: LdPrVar
  loc_ABD677: LateMemCall
  loc_ABD67D: LitVarStr var_94, "}"
  loc_ABD682: PopAdLdVar
  loc_ABD683: FLdPr Me
  loc_ABD686: MemLdRfVar from_stack_1.global_64
  loc_ABD689: LdPrVar
  loc_ABD68B: LateMemCall
  loc_ABD691: LitVarStr var_94, ".Normal {"
  loc_ABD696: PopAdLdVar
  loc_ABD697: FLdPr Me
  loc_ABD69A: MemLdRfVar from_stack_1.global_64
  loc_ABD69D: LdPrVar
  loc_ABD69F: LateMemCall
  loc_ABD6A5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_ABD6AA: PopAdLdVar
  loc_ABD6AB: FLdPr Me
  loc_ABD6AE: MemLdRfVar from_stack_1.global_64
  loc_ABD6B1: LdPrVar
  loc_ABD6B3: LateMemCall
  loc_ABD6B9: LitVarStr var_94, " font-size: 14px;"
  loc_ABD6BE: PopAdLdVar
  loc_ABD6BF: FLdPr Me
  loc_ABD6C2: MemLdRfVar from_stack_1.global_64
  loc_ABD6C5: LdPrVar
  loc_ABD6C7: LateMemCall
  loc_ABD6CD: LitVarStr var_94, " font-style: normal;"
  loc_ABD6D2: PopAdLdVar
  loc_ABD6D3: FLdPr Me
  loc_ABD6D6: MemLdRfVar from_stack_1.global_64
  loc_ABD6D9: LdPrVar
  loc_ABD6DB: LateMemCall
  loc_ABD6E1: LitVarStr var_94, " font-weight: normal;"
  loc_ABD6E6: PopAdLdVar
  loc_ABD6E7: FLdPr Me
  loc_ABD6EA: MemLdRfVar from_stack_1.global_64
  loc_ABD6ED: LdPrVar
  loc_ABD6EF: LateMemCall
  loc_ABD6F5: LitVarStr var_94, " font-variant: normal;"
  loc_ABD6FA: PopAdLdVar
  loc_ABD6FB: FLdPr Me
  loc_ABD6FE: MemLdRfVar from_stack_1.global_64
  loc_ABD701: LdPrVar
  loc_ABD703: LateMemCall
  loc_ABD709: LitVarStr var_94, "}"
  loc_ABD70E: PopAdLdVar
  loc_ABD70F: FLdPr Me
  loc_ABD712: MemLdRfVar from_stack_1.global_64
  loc_ABD715: LdPrVar
  loc_ABD717: LateMemCall
  loc_ABD71D: LitVarStr var_94, ".Encabezado {"
  loc_ABD722: PopAdLdVar
  loc_ABD723: FLdPr Me
  loc_ABD726: MemLdRfVar from_stack_1.global_64
  loc_ABD729: LdPrVar
  loc_ABD72B: LateMemCall
  loc_ABD731: LitVarStr var_94, " font-family: ""Times New Roman"", Times, serif;"
  loc_ABD736: PopAdLdVar
  loc_ABD737: FLdPr Me
  loc_ABD73A: MemLdRfVar from_stack_1.global_64
  loc_ABD73D: LdPrVar
  loc_ABD73F: LateMemCall
  loc_ABD745: LitVarStr var_94, " font-size: 13px;"
  loc_ABD74A: PopAdLdVar
  loc_ABD74B: FLdPr Me
  loc_ABD74E: MemLdRfVar from_stack_1.global_64
  loc_ABD751: LdPrVar
  loc_ABD753: LateMemCall
  loc_ABD759: LitVarStr var_94, " font-weight: bold;"
  loc_ABD75E: PopAdLdVar
  loc_ABD75F: FLdPr Me
  loc_ABD762: MemLdRfVar from_stack_1.global_64
  loc_ABD765: LdPrVar
  loc_ABD767: LateMemCall
  loc_ABD76D: LitVarStr var_94, " background-color: #D3D3D3;"
  loc_ABD772: PopAdLdVar
  loc_ABD773: FLdPr Me
  loc_ABD776: MemLdRfVar from_stack_1.global_64
  loc_ABD779: LdPrVar
  loc_ABD77B: LateMemCall
  loc_ABD781: LitVarStr var_94, "}"
  loc_ABD786: PopAdLdVar
  loc_ABD787: FLdPr Me
  loc_ABD78A: MemLdRfVar from_stack_1.global_64
  loc_ABD78D: LdPrVar
  loc_ABD78F: LateMemCall
  loc_ABD795: LitVarStr var_94, ".LineaDato {"
  loc_ABD79A: PopAdLdVar
  loc_ABD79B: FLdPr Me
  loc_ABD79E: MemLdRfVar from_stack_1.global_64
  loc_ABD7A1: LdPrVar
  loc_ABD7A3: LateMemCall
  loc_ABD7A9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_ABD7AE: PopAdLdVar
  loc_ABD7AF: FLdPr Me
  loc_ABD7B2: MemLdRfVar from_stack_1.global_64
  loc_ABD7B5: LdPrVar
  loc_ABD7B7: LateMemCall
  loc_ABD7BD: LitVarStr var_94, " font-size: 10px;"
  loc_ABD7C2: PopAdLdVar
  loc_ABD7C3: FLdPr Me
  loc_ABD7C6: MemLdRfVar from_stack_1.global_64
  loc_ABD7C9: LdPrVar
  loc_ABD7CB: LateMemCall
  loc_ABD7D1: LitVarStr var_94, "}"
  loc_ABD7D6: PopAdLdVar
  loc_ABD7D7: FLdPr Me
  loc_ABD7DA: MemLdRfVar from_stack_1.global_64
  loc_ABD7DD: LdPrVar
  loc_ABD7DF: LateMemCall
  loc_ABD7E5: LitVarStr var_94, ".Totales {"
  loc_ABD7EA: PopAdLdVar
  loc_ABD7EB: FLdPr Me
  loc_ABD7EE: MemLdRfVar from_stack_1.global_64
  loc_ABD7F1: LdPrVar
  loc_ABD7F3: LateMemCall
  loc_ABD7F9: LitVarStr var_94, " font-family: ""Courier New"", Courier, monospace;"
  loc_ABD7FE: PopAdLdVar
  loc_ABD7FF: FLdPr Me
  loc_ABD802: MemLdRfVar from_stack_1.global_64
  loc_ABD805: LdPrVar
  loc_ABD807: LateMemCall
  loc_ABD80D: LitVarStr var_94, " font-size: 12px;"
  loc_ABD812: PopAdLdVar
  loc_ABD813: FLdPr Me
  loc_ABD816: MemLdRfVar from_stack_1.global_64
  loc_ABD819: LdPrVar
  loc_ABD81B: LateMemCall
  loc_ABD821: LitVarStr var_94, " font-weight: bold;"
  loc_ABD826: PopAdLdVar
  loc_ABD827: FLdPr Me
  loc_ABD82A: MemLdRfVar from_stack_1.global_64
  loc_ABD82D: LdPrVar
  loc_ABD82F: LateMemCall
  loc_ABD835: LitVarStr var_94, " background-color: #7DC3E7;"
  loc_ABD83A: PopAdLdVar
  loc_ABD83B: FLdPr Me
  loc_ABD83E: MemLdRfVar from_stack_1.global_64
  loc_ABD841: LdPrVar
  loc_ABD843: LateMemCall
  loc_ABD849: LitVarStr var_94, "}"
  loc_ABD84E: PopAdLdVar
  loc_ABD84F: FLdPr Me
  loc_ABD852: MemLdRfVar from_stack_1.global_64
  loc_ABD855: LdPrVar
  loc_ABD857: LateMemCall
  loc_ABD85D: LitVarStr var_94, "THEAD { display: table-header-group; }"
  loc_ABD862: PopAdLdVar
  loc_ABD863: FLdPr Me
  loc_ABD866: MemLdRfVar from_stack_1.global_64
  loc_ABD869: LdPrVar
  loc_ABD86B: LateMemCall
  loc_ABD871: LitVarStr var_94, "</style>"
  loc_ABD876: PopAdLdVar
  loc_ABD877: FLdPr Me
  loc_ABD87A: MemLdRfVar from_stack_1.global_64
  loc_ABD87D: LdPrVar
  loc_ABD87F: LateMemCall
  loc_ABD885: LitI4 0
  loc_ABD88A: FStStrCopy var_AC
  loc_ABD88D: FLdRfVar var_AC
  loc_ABD890: LitI4 0
  loc_ABD895: FStStrCopy var_A8
  loc_ABD898: FLdRfVar var_A8
  loc_ABD89B: LitI2_Byte 0
  loc_ABD89D: PopTmpLdAd2 var_BE
  loc_ABD8A0: FLdPr Me
  loc_ABD8A3: MemLdRfVar from_stack_1.global_64
  loc_ABD8A6: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_ABD8AB: FFreeStr var_A8 = ""
  loc_ABD8B2: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_ABD8B7: PopAdLdVar
  loc_ABD8B8: FLdPr Me
  loc_ABD8BB: MemLdRfVar from_stack_1.global_64
  loc_ABD8BE: LdPrVar
  loc_ABD8C0: LateMemCall
  loc_ABD8C6: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_ABD8CB: PopAdLdVar
  loc_ABD8CC: FLdPr Me
  loc_ABD8CF: MemLdRfVar from_stack_1.global_64
  loc_ABD8D2: LdPrVar
  loc_ABD8D4: LateMemCall
  loc_ABD8DA: LitVarStr var_A4, "    <th width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p><img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br><br>"
  loc_ABD8DF: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_ABD8E4: FStVarCopyObj var_BC
  loc_ABD8E7: FLdRfVar var_BC
  loc_ABD8EA: FLdRfVar var_D0
  loc_ABD8ED: ImpAdCallFPR4  = Ucase()
  loc_ABD8F2: FLdRfVar var_D0
  loc_ABD8F5: ConcatVar var_E0
  loc_ABD8F9: LitVarStr var_F0, "</p>"
  loc_ABD8FE: ConcatVar var_100
  loc_ABD902: PopAdLdVar
  loc_ABD903: FLdPr Me
  loc_ABD906: MemLdRfVar from_stack_1.global_64
  loc_ABD909: LdPrVar
  loc_ABD90B: LateMemCall
  loc_ABD911: FFreeVar var_BC = "": var_D0 = "": var_E0 = ""
  loc_ABD91C: LitStr "    <p>"
  loc_ABD91F: FLdRfVar var_A8
  loc_ABD922: FLdPr Me
  loc_ABD925:  = Me.Caption
  loc_ABD92A: ILdRf var_A8
  loc_ABD92D: ConcatStr
  loc_ABD92E: FStStrNoPop var_AC
  loc_ABD931: LitStr "</p></th>"
  loc_ABD934: ConcatStr
  loc_ABD935: CVarStr var_BC
  loc_ABD938: PopAdLdVar
  loc_ABD939: FLdPr Me
  loc_ABD93C: MemLdRfVar from_stack_1.global_64
  loc_ABD93F: LdPrVar
  loc_ABD941: LateMemCall
  loc_ABD947: FFreeStr var_A8 = ""
  loc_ABD94E: FFree1Var var_BC = ""
  loc_ABD951: LitVarStr var_94, "  </tr>"
  loc_ABD956: PopAdLdVar
  loc_ABD957: FLdPr Me
  loc_ABD95A: MemLdRfVar from_stack_1.global_64
  loc_ABD95D: LdPrVar
  loc_ABD95F: LateMemCall
  loc_ABD965: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_ABD96A: PopAdLdVar
  loc_ABD96B: FLdPr Me
  loc_ABD96E: MemLdRfVar from_stack_1.global_64
  loc_ABD971: LdPrVar
  loc_ABD973: LateMemCall
  loc_ABD979: LitVarStr var_94, "    <th align=""left"" valign=""bottom""><hr></th>"
  loc_ABD97E: PopAdLdVar
  loc_ABD97F: FLdPr Me
  loc_ABD982: MemLdRfVar from_stack_1.global_64
  loc_ABD985: LdPrVar
  loc_ABD987: LateMemCall
  loc_ABD98D: LitVarStr var_94, "  </tr>"
  loc_ABD992: PopAdLdVar
  loc_ABD993: FLdPr Me
  loc_ABD996: MemLdRfVar from_stack_1.global_64
  loc_ABD999: LdPrVar
  loc_ABD99B: LateMemCall
  loc_ABD9A1: LitVarStr var_94, "  <tr valign=""top"">"
  loc_ABD9A6: PopAdLdVar
  loc_ABD9A7: FLdPr Me
  loc_ABD9AA: MemLdRfVar from_stack_1.global_64
  loc_ABD9AD: LdPrVar
  loc_ABD9AF: LateMemCall
  loc_ABD9B5: LitStr "    <th align=""left"">Periodo: <span class=""Normal"">"
  loc_ABD9B8: FLdRfVar var_A8
  loc_ABD9BB: FLdPr Me
  loc_ABD9BE: VCallAd Control_ID_cboPeriodo
  loc_ABD9C1: FStAdFunc var_114
  loc_ABD9C4: FLdPr var_114
  loc_ABD9C7:  = Me.Text
  loc_ABD9CC: ILdRf var_A8
  loc_ABD9CF: ConcatStr
  loc_ABD9D0: FStStrNoPop var_AC
  loc_ABD9D3: LitStr "</span></th>"
  loc_ABD9D6: ConcatStr
  loc_ABD9D7: CVarStr var_BC
  loc_ABD9DA: PopAdLdVar
  loc_ABD9DB: FLdPr Me
  loc_ABD9DE: MemLdRfVar from_stack_1.global_64
  loc_ABD9E1: LdPrVar
  loc_ABD9E3: LateMemCall
  loc_ABD9E9: FFreeStr var_A8 = ""
  loc_ABD9F0: FFree1Ad var_114
  loc_ABD9F3: FFree1Var var_BC = ""
  loc_ABD9F6: LitVarStr var_94, "  </tr>"
  loc_ABD9FB: PopAdLdVar
  loc_ABD9FC: FLdPr Me
  loc_ABD9FF: MemLdRfVar from_stack_1.global_64
  loc_ABDA02: LdPrVar
  loc_ABDA04: LateMemCall
  loc_ABDA0A: LitVarStr var_94, "</table>"
  loc_ABDA0F: PopAdLdVar
  loc_ABDA10: FLdPr Me
  loc_ABDA13: MemLdRfVar from_stack_1.global_64
  loc_ABDA16: LdPrVar
  loc_ABDA18: LateMemCall
  loc_ABDA1E: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_ABDA23: PopAdLdVar
  loc_ABDA24: FLdPr Me
  loc_ABDA27: MemLdRfVar from_stack_1.global_64
  loc_ABDA2A: LdPrVar
  loc_ABDA2C: LateMemCall
  loc_ABDA32: LitVarStr var_94, "  <THEAD>"
  loc_ABDA37: PopAdLdVar
  loc_ABDA38: FLdPr Me
  loc_ABDA3B: MemLdRfVar from_stack_1.global_64
  loc_ABDA3E: LdPrVar
  loc_ABDA40: LateMemCall
  loc_ABDA46: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_ABDA4B: PopAdLdVar
  loc_ABDA4C: FLdPr Me
  loc_ABDA4F: MemLdRfVar from_stack_1.global_64
  loc_ABDA52: LdPrVar
  loc_ABDA54: LateMemCall
  loc_ABDA5A: LitVarStr var_94, "    <th>Código</th>"
  loc_ABDA5F: PopAdLdVar
  loc_ABDA60: FLdPr Me
  loc_ABDA63: MemLdRfVar from_stack_1.global_64
  loc_ABDA66: LdPrVar
  loc_ABDA68: LateMemCall
  loc_ABDA6E: LitVarStr var_94, "    <th>Detalle</th>"
  loc_ABDA73: PopAdLdVar
  loc_ABDA74: FLdPr Me
  loc_ABDA77: MemLdRfVar from_stack_1.global_64
  loc_ABDA7A: LdPrVar
  loc_ABDA7C: LateMemCall
  loc_ABDA82: LitVarStr var_94, "    <th>Número</th>"
  loc_ABDA87: PopAdLdVar
  loc_ABDA88: FLdPr Me
  loc_ABDA8B: MemLdRfVar from_stack_1.global_64
  loc_ABDA8E: LdPrVar
  loc_ABDA90: LateMemCall
  loc_ABDA96: LitVarStr var_94, "    <th>Cuenta Contable</th>"
  loc_ABDA9B: PopAdLdVar
  loc_ABDA9C: FLdPr Me
  loc_ABDA9F: MemLdRfVar from_stack_1.global_64
  loc_ABDAA2: LdPrVar
  loc_ABDAA4: LateMemCall
  loc_ABDAAA: LitVarStr var_94, "    <th>Fecha de<br>anulación</th>"
  loc_ABDAAF: PopAdLdVar
  loc_ABDAB0: FLdPr Me
  loc_ABDAB3: MemLdRfVar from_stack_1.global_64
  loc_ABDAB6: LdPrVar
  loc_ABDAB8: LateMemCall
  loc_ABDABE: LitVarStr var_94, "    <th>Último Cheque</th>"
  loc_ABDAC3: PopAdLdVar
  loc_ABDAC4: FLdPr Me
  loc_ABDAC7: MemLdRfVar from_stack_1.global_64
  loc_ABDACA: LdPrVar
  loc_ABDACC: LateMemCall
  loc_ABDAD2: LitVarStr var_94, "  </tr>"
  loc_ABDAD7: PopAdLdVar
  loc_ABDAD8: FLdPr Me
  loc_ABDADB: MemLdRfVar from_stack_1.global_64
  loc_ABDADE: LdPrVar
  loc_ABDAE0: LateMemCall
  loc_ABDAE6: LitVarStr var_94, "  </THEAD>"
  loc_ABDAEB: PopAdLdVar
  loc_ABDAEC: FLdPr Me
  loc_ABDAEF: MemLdRfVar from_stack_1.global_64
  loc_ABDAF2: LdPrVar
  loc_ABDAF4: LateMemCall
  loc_ABDAFA: ExitProcHresult
End Function

Private Function Proc_188_14_982BD0() '982BD0
  'Data Table: 431FE4
  loc_982B90: LitVarStr var_94, "</table>"
  loc_982B95: PopAdLdVar
  loc_982B96: FLdPr Me
  loc_982B99: MemLdRfVar from_stack_1.global_64
  loc_982B9C: LdPrVar
  loc_982B9E: LateMemCall
  loc_982BA4: LitVarStr var_94, "</body>"
  loc_982BA9: PopAdLdVar
  loc_982BAA: FLdPr Me
  loc_982BAD: MemLdRfVar from_stack_1.global_64
  loc_982BB0: LdPrVar
  loc_982BB2: LateMemCall
  loc_982BB8: LitVarStr var_94, "</html>"
  loc_982BBD: PopAdLdVar
  loc_982BBE: FLdPr Me
  loc_982BC1: MemLdRfVar from_stack_1.global_64
  loc_982BC4: LdPrVar
  loc_982BC6: LateMemCall
  loc_982BCC: ExitProcHresult
  loc_982BCD: FLdR8 arg_23
End Function
