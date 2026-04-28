VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptCertificadodeProveedores
  Caption = "Certificado para Proveedores"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptCertificadodeProveedores.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 10908
  ClientHeight = 2664
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2415
    Width = 10905
    Height = 255
    TabIndex = 8
    OleObjectBlob = "rptCertificadodeProveedores.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 9720
    Top = 1440
    Width = 855
    Height = 735
    TabIndex = 5
    Cancel = -1  'True
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Picture = "rptCertificadodeProveedores.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptCertificadodeProveedores.frx":0B9C
    Left = 6480
    Top = 1440
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 4320
    Top = 1080
    Width = 1815
    Height = 1215
    TabIndex = 3
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 615
      TabIndex = 4
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1080
    Width = 4095
    Height = 1215
    TabIndex = 0
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1920
      Top = 360
      Width = 2055
      Height = 615
      TabIndex = 2
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1695
      Height = 615
      TabIndex = 1
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 10695
    Height = 975
    TabIndex = 6
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 7,8
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox CucuPersTxt
      ForeColor = &HFF0000&
      Left = 1080
      Top = 360
      Width = 1815
      Height = 345
      TabIndex = 11
      MaxLength = 11
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 9000
      Top = 240
      Width = 1575
      Height = 615
      TabIndex = 10
    End
    Begin VB.Label Label1
      Caption = "C.U.I.T.:"
      Left = 120
      Top = 360
      Width = 855
      Height = 300
      TabIndex = 9
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 9480
    Top = 1560
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 7
    OleObjectBlob = "rptCertificadodeProveedores.frx":0C00
  End
End

Attribute VB_Name = "rptCertificadodeProveedores"

Public bGenerado As Boolean

Private Type UDT_1_00562DC4
  bStruc(40) As Byte ' String fields: 10
End Type


Private Sub cmdNueva_Click() 'A35AAC
  'Data Table: 458D10
  loc_A35A5C: LitI2_Byte 0
  loc_A35A5E: FLdPr Me
  loc_A35A61: MemStI2 bGenerado
  loc_A35A64: LitI2_Byte 0
  loc_A35A66: ILdRf Me
  loc_A35A69: CastAd
  loc_A35A6C: FStAdFunc var_88
  loc_A35A6F: FLdRfVar var_88
  loc_A35A72: ImpAdCallFPR4 Proc_272_46_B065FC(, )
  loc_A35A77: FFree1Ad var_88
  loc_A35A7A: LitStr vbNullString
  loc_A35A7D: FLdPr Me
  loc_A35A80: VCallAd Control_ID_CucuPersTxt
  loc_A35A83: FStAdFunc var_88
  loc_A35A86: FLdPr var_88
  loc_A35A89: Me.Text = from_stack_1
  loc_A35A8E: FFree1Ad var_88
  loc_A35A91: Call HabilitarCriterio()
  loc_A35A96: ILdRf Me
  loc_A35A99: CastAd
  loc_A35A9C: FStAdFunc var_88
  loc_A35A9F: FLdRfVar var_88
  loc_A35AA2: ImpAdCallFPR4  = Proc_57_15_AB7DC4()
  loc_A35AA7: FFree1Ad var_88
  loc_A35AAA: ExitProcHresult
End Sub

Private Sub Form_Load() '9E41FC
  'Data Table: 458D10
  loc_9E41E0: ILdRf Me
  loc_9E41E3: CastAd
  loc_9E41E6: FStAdFunc var_88
  loc_9E41E9: FLdRfVar var_88
  loc_9E41EC: ImpAdCallFPR4 Proc_272_43_A93498()
  loc_9E41F1: FFree1Ad var_88
  loc_9E41F4: Call cmdNueva_Click()
  loc_9E41F9: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '9D3F70
  'Data Table: 458D10
  loc_9D3F58: FLdPr Me
  loc_9D3F5B: VCallAd Control_ID_wbbReporte
  loc_9D3F5E: FStAdFunc var_88
  loc_9D3F61: FLdRfVar var_88
  loc_9D3F64: ImpAdCallFPR4  = Proc_57_52_A24864()
  loc_9D3F69: FFree1Ad var_88
  loc_9D3F6C: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() 'A41F10
  'Data Table: 458D10
  loc_A41EBC: LitI2_Byte 0
  loc_A41EBE: ILdRf Me
  loc_A41EC1: CastAd
  loc_A41EC4: FStAdFunc var_88
  loc_A41EC7: FLdRfVar var_88
  loc_A41ECA: ImpAdCallFPR4 Proc_57_1_AA9124(, )
  loc_A41ECF: FFree1Ad var_88
  loc_A41ED2: FLdRfVar var_8A
  loc_A41ED5: FLdPr Me
  loc_A41ED8: VCallAd Control_ID_cmdPredeterminada
  loc_A41EDB: FStAdFunc var_88
  loc_A41EDE: FLdPr var_88
  loc_A41EE1:  = Me.Enabled
  loc_A41EE6: FLdI2 var_8A
  loc_A41EE9: NotI4
  loc_A41EEA: FFree1Ad var_88
  loc_A41EED: BranchF loc_A41EF8
  loc_A41EF0: ImpAdCallFPR4 DoEvents()
  loc_A41EF5: Branch loc_A41ED2
  loc_A41EF8: ILdRf Me
  loc_A41EFB: FStAdNoPop
  loc_A41EFF: ImpAdLdRf MemVar_D9C5D8
  loc_A41F02: NewIfNullPr Global
  loc_A41F05: Global.Unload from_stack_1
  loc_A41F0A: FFree1Ad var_88
  loc_A41F0D: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() 'A028EC
  'Data Table: 458D10
  loc_A028BC: LitVarStr var_94, "Cerrando..."
  loc_A028C1: PopAdLdVar
  loc_A028C2: FLdPr Me
  loc_A028C5: VCallAd Control_ID_statusBar
  loc_A028C8: FStAdFunc var_A8
  loc_A028CB: FLdPr var_A8
  loc_A028CE: LateIdSt
  loc_A028D3: FFree1Ad var_A8
  loc_A028D6: ILdRf Me
  loc_A028D9: FStAdNoPop
  loc_A028DD: ImpAdLdRf MemVar_D9C5D8
  loc_A028E0: NewIfNullPr Global
  loc_A028E3: Global.Unload from_stack_1
  loc_A028E8: FFree1Ad var_A8
  loc_A028EB: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '9D5AC0
  'Data Table: 458D10
  loc_9D5AA8: ILdRf Me
  loc_9D5AAB: CastAd
  loc_9D5AAE: FStAdFunc var_88
  loc_9D5AB1: FLdRfVar var_88
  loc_9D5AB4: ImpAdCallFPR4 Proc_57_0_AB1718()
  loc_9D5AB9: FFree1Ad var_88
  loc_9D5ABC: ExitProcHresult
  loc_9D5ABD: PopAdLdVar
  loc_9D5ABE: FLdPr var_67E0
End Sub

Private Sub cmdPdf_Click() '9E43DC
  'Data Table: 458D10
  loc_9E43C0: LitI2_Byte 0
  loc_9E43C2: PopTmpLdAd2 var_8A
  loc_9E43C5: ILdRf Me
  loc_9E43C8: CastAd
  loc_9E43CB: FStAdFunc var_88
  loc_9E43CE: FLdRfVar var_88
  loc_9E43D1: ImpAdCallFPR4 Proc_57_2_B14778(, )
  loc_9E43D6: FFree1Ad var_88
  loc_9E43D9: ExitProcHresult
  loc_9E43DA: PopAdLdVar
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) 'A1A800
  'Data Table: 458D10
  loc_A1A7C8: FLdPr Me
  loc_A1A7CB: VCallAd Control_ID_statusBar
  loc_A1A7CE: FStAdFunc var_88
  loc_A1A7D1: FLdPr var_88
  loc_A1A7D4: LateIdLdVar var_98 DispID_1 0
  loc_A1A7DB: CStrVarTmp
  loc_A1A7DC: CVarStr var_A8
  loc_A1A7DF: PopAdLdVar
  loc_A1A7E0: FLdPr Me
  loc_A1A7E3: VCallAd Control_ID_statusBar
  loc_A1A7E6: FStAdFunc var_BC
  loc_A1A7E9: FLdPr var_BC
  loc_A1A7EC: LateIdSt
  loc_A1A7F1: FFreeAd var_88 = ""
  loc_A1A7F8: FFreeVar var_98 = ""
  loc_A1A7FF: ExitProcHresult
End Sub

Private Sub CucuPersTxt_GotFocus() '9C0320
  'Data Table: 458D10
  loc_9C030C: FLdPr Me
  loc_9C030F: VCallAd Control_ID_CucuPersTxt
  loc_9C0312: CVarAd
  loc_9C0316: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9C031B: FFree1Var var_94 = ""
  loc_9C031E: ExitProcHresult
End Sub

Public Function bGeneradoGet() '459764
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '459773
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() 'A11074
  'Data Table: 458D10
  loc_A11040: LitI4 0
  loc_A11045: LitI4 0
  loc_A1104A: FLdRfVar var_88
  loc_A1104D: Redim
  loc_A11057: FLdPr Me
  loc_A1105A: VCallAd Control_ID_CucuPersTxt
  loc_A1105D: CVarAd
  loc_A11061: ParmAry1St
  loc_A11067: FLdRfVar var_88
  loc_A1106A: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_A1106F: FLdRfVar var_88
  loc_A11072: Erase
  loc_A11073: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'BB5530
  'Data Table: 458D10
  loc_BB4EB0: LitStr vbNullString
  loc_BB4EB3: FLdPr Me
  loc_BB4EB6: MemStStrCopy
  loc_BB4EBA: FLdPr Me
  loc_BB4EBD: MemLdI2 bGenerado
  loc_BB4EC0: BranchF loc_BB4EC4
  loc_BB4EC3: ExitProcHresult
  loc_BB4EC4: LitVarStr var_9C, "Generando reporte..."
  loc_BB4EC9: PopAdLdVar
  loc_BB4ECA: FLdPr Me
  loc_BB4ECD: VCallAd Control_ID_statusBar
  loc_BB4ED0: FStAdFunc var_B0
  loc_BB4ED3: FLdPr var_B0
  loc_BB4ED6: LateIdSt
  loc_BB4EDB: FFree1Ad var_B0
  loc_BB4EDE: LitI4 &HB
  loc_BB4EE3: CI2I4
  loc_BB4EE4: FLdPr Me
  loc_BB4EE7: Me.MousePointer = from_stack_1
  loc_BB4EEC: LitI2_Byte 0
  loc_BB4EEE: CR8I2
  loc_BB4EEF: FLdPr Me
  loc_BB4EF2: MemStFPR8 global_76
  loc_BB4EF5: LitI2_Byte 0
  loc_BB4EF7: FLdPr Me
  loc_BB4EFA: MemStI2 global_84
  loc_BB4EFD: LitI2_Byte 1
  loc_BB4EFF: FLdRfVar var_8A
  loc_BB4F02: ImpAdLdRf MemVar_D9375C
  loc_BB4F05: NewIfNullPr frmCuentaCorrienteCuitCuil
  loc_BB4F08: VCallAd Control_ID_ctacteUnicaFlex
  loc_BB4F0B: FStAdFunc var_B0
  loc_BB4F0E: FLdPr var_B0
  loc_BB4F11: LateIdLdVar var_C0 DispID_4 0
  loc_BB4F18: CI4Var
  loc_BB4F1A: LitI4 1
  loc_BB4F1F: SubI4
  loc_BB4F20: CI2I4
  loc_BB4F21: FFree1Ad var_B0
  loc_BB4F24: FFree1Var var_C0 = ""
  loc_BB4F27: ForI2 var_C4
  loc_BB4F2D: FLdI2 var_8A
  loc_BB4F30: CI4UI1
  loc_BB4F31: CVarI4
  loc_BB4F35: PopAdLdVar
  loc_BB4F36: LitVarI4
  loc_BB4F3E: PopAdLdVar
  loc_BB4F3F: ImpAdLdRf MemVar_D9375C
  loc_BB4F42: NewIfNullPr frmCuentaCorrienteCuitCuil
  loc_BB4F45: VCallAd Control_ID_ctacteUnicaFlex
  loc_BB4F48: FStAdFunc var_B0
  loc_BB4F4B: FLdPr var_B0
  loc_BB4F4E: LateIdCallLdVar
  loc_BB4F58: CStrVarTmp
  loc_BB4F59: FStStr var_E8
  loc_BB4F5C: FFree1Ad var_B0
  loc_BB4F5F: FFree1Var var_C0 = ""
  loc_BB4F62: ILdRf var_E8
  loc_BB4F65: LitStr "Inmueble"
  loc_BB4F68: EqStr
  loc_BB4F6A: BranchF loc_BB4F78
  loc_BB4F6D: LitI2_Byte 1
  loc_BB4F6F: CUI1I2
  loc_BB4F71: ImpAdStUI1 MemVar_D93038
  loc_BB4F75: Branch loc_BB4FB7
  loc_BB4F78: ILdRf var_E8
  loc_BB4F7B: LitStr "Comercio"
  loc_BB4F7E: EqStr
  loc_BB4F80: BranchF loc_BB4F8E
  loc_BB4F83: LitI2_Byte 2
  loc_BB4F85: CUI1I2
  loc_BB4F87: ImpAdStUI1 MemVar_D93038
  loc_BB4F8B: Branch loc_BB4FB7
  loc_BB4F8E: ILdRf var_E8
  loc_BB4F91: LitStr "Deudores Varios"
  loc_BB4F94: EqStr
  loc_BB4F96: BranchF loc_BB4FA4
  loc_BB4F99: LitI2_Byte 3
  loc_BB4F9B: CUI1I2
  loc_BB4F9D: ImpAdStUI1 MemVar_D93038
  loc_BB4FA1: Branch loc_BB4FB7
  loc_BB4FA4: ILdRf var_E8
  loc_BB4FA7: LitStr "Cementerio"
  loc_BB4FAA: EqStr
  loc_BB4FAC: BranchF loc_BB4FB7
  loc_BB4FAF: LitI2_Byte 4
  loc_BB4FB1: CUI1I2
  loc_BB4FB3: ImpAdStUI1 MemVar_D93038
  loc_BB4FB7: FLdI2 var_8A
  loc_BB4FBA: CI4UI1
  loc_BB4FBB: CVarI4
  loc_BB4FBF: PopAdLdVar
  loc_BB4FC0: LitVarI4
  loc_BB4FC8: PopAdLdVar
  loc_BB4FC9: ImpAdLdRf MemVar_D9375C
  loc_BB4FCC: NewIfNullPr frmCuentaCorrienteCuitCuil
  loc_BB4FCF: VCallAd Control_ID_ctacteUnicaFlex
  loc_BB4FD2: FStAdFunc var_B0
  loc_BB4FD5: FLdPr var_B0
  loc_BB4FD8: LateIdCallLdVar
  loc_BB4FE2: PopAd
  loc_BB4FE4: FLdRfVar var_F4
  loc_BB4FE7: LitI4 0
  loc_BB4FEC: LitI4 0
  loc_BB4FF1: FLdRfVar var_C0
  loc_BB4FF4: CStrVarTmp
  loc_BB4FF5: FStStrNoPop var_EC
  loc_BB4FF8: ImpAdLdUI1
  loc_BB4FFC: CI2UI1
  loc_BB4FFE: FLdRfVar var_88
  loc_BB5001: NewIfNullPr clsctacte
  loc_BB5004: from_stack_5v = clsctacte.BuscaDeudaParaLibreDeuda(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_BB5009: FLdPr Me
  loc_BB500C: MemLdFPR8 global_76
  loc_BB500F: FLdFPR8 var_F4
  loc_BB5012: AddR8
  loc_BB5013: FLdPr Me
  loc_BB5016: MemStFPR8 global_76
  loc_BB5019: FFree1Str var_EC
  loc_BB501C: FFree1Ad var_B0
  loc_BB501F: FFree1Var var_C0 = ""
  loc_BB5022: FLdI2 var_8A
  loc_BB5025: CI4UI1
  loc_BB5026: CVarI4
  loc_BB502A: PopAdLdVar
  loc_BB502B: LitVarI4
  loc_BB5033: PopAdLdVar
  loc_BB5034: ImpAdLdRf MemVar_D9375C
  loc_BB5037: NewIfNullPr frmCuentaCorrienteCuitCuil
  loc_BB503A: VCallAd Control_ID_ctacteUnicaFlex
  loc_BB503D: FStAdFunc var_B0
  loc_BB5040: FLdPr var_B0
  loc_BB5043: LateIdCallLdVar
  loc_BB504D: PopAd
  loc_BB504F: FLdRfVar var_F6
  loc_BB5052: LitI4 0
  loc_BB5057: FLdRfVar var_C0
  loc_BB505A: CStrVarTmp
  loc_BB505B: FStStrNoPop var_EC
  loc_BB505E: ImpAdLdUI1
  loc_BB5062: CI2UI1
  loc_BB5064: FLdRfVar var_88
  loc_BB5067: NewIfNullPr clsctacte
  loc_BB506A: from_stack_4v = clsctacte.BuscaSiTieneFacilidaddePagoAldia(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BB506F: FLdI2 var_F6
  loc_BB5072: LitI2_Byte &HFF
  loc_BB5074: EqI2
  loc_BB5075: FFree1Str var_EC
  loc_BB5078: FFree1Ad var_B0
  loc_BB507B: FFree1Var var_C0 = ""
  loc_BB507E: BranchF loc_BB5089
  loc_BB5081: LitI2_Byte &HFF
  loc_BB5083: FLdPr Me
  loc_BB5086: MemStI2 global_84
  loc_BB5089: FLdRfVar var_8A
  loc_BB508C: NextI2 var_C4, loc_BB4F2D
  loc_BB5091: LitI4 0
  loc_BB5096: LitI4 1
  loc_BB509B: FLdPr Me
  loc_BB509E: MemLdRfVar from_stack_1.global_92
  loc_BB50A1: Redim
  loc_BB50AB: LitStr "SELECT CucuPers, DetaPers, DecrPers,NurePers,CobrPers,DebrPers,MarePers,CarePers,UbrePers,ColrPers,DelrPers,CoprPers"
  loc_BB50AE: LitStr " FROM infogov.persona WHERE CucuPers = "
  loc_BB50B1: ConcatStr
  loc_BB50B2: FStStrNoPop var_FC
  loc_BB50B5: FLdRfVar var_EC
  loc_BB50B8: FLdPr Me
  loc_BB50BB: VCallAd Control_ID_CucuPersTxt
  loc_BB50BE: FStAdFunc var_B0
  loc_BB50C1: FLdPr var_B0
  loc_BB50C4:  = Me.Text
  loc_BB50C9: ILdRf var_EC
  loc_BB50CC: ConcatStr
  loc_BB50CD: FStStrNoPop var_100
  loc_BB50D0: FLdPr Me
  loc_BB50D3: MemLdRfVar from_stack_1.global_88
  loc_BB50D6: NewIfNullPr clsbase
  loc_BB50D9: Call clsbase.RedefineRS(from_stack_1v)
  loc_BB50DE: FFreeStr var_FC = "": var_EC = ""
  loc_BB50E7: FFree1Ad var_B0
  loc_BB50EA: FLdRfVar var_104
  loc_BB50ED: FLdPr Me
  loc_BB50F0: MemLdRfVar from_stack_1.global_88
  loc_BB50F3: NewIfNullPr clsbase
  loc_BB50F6: from_stack_1 = clsbase.RecordCount
  loc_BB50FB: ILdRf var_104
  loc_BB50FE: LitI4 0
  loc_BB5103: GtI4
  loc_BB5104: BranchF loc_BB54F2
  loc_BB5107: FLdRfVar var_10C
  loc_BB510A: LitVarStr var_9C, "CucuPers"
  loc_BB510F: PopAdLdVar
  loc_BB5110: FLdRfVar var_108
  loc_BB5113: FLdRfVar var_B0
  loc_BB5116: FLdPr Me
  loc_BB5119: MemLdRfVar from_stack_1.global_88
  loc_BB511C: NewIfNullPr clsbase
  loc_BB511F: from_stack_1v = clsbase.RsFrmGet()
  loc_BB5124: FLdPr var_B0
  loc_BB5127:  = Me.Fields
  loc_BB512C: FLdPr var_108
  loc_BB512F: from_stack_2 = Me.Item(from_stack_1)
  loc_BB5134: LitI2_Byte 0
  loc_BB5136: LitVar_Missing var_120
  loc_BB5139: LitI2_Byte 0
  loc_BB513B: FLdZeroAd var_10C
  loc_BB513E: CVarAd
  loc_BB5142: PopAdLdVar
  loc_BB5143: LitI4 1
  loc_BB5148: FLdPr Me
  loc_BB514B: MemLdStr global_92
  loc_BB514E: AryLock
  loc_BB5151: Ary1LdPr
  loc_BB5152: MemLdRfVar from_stack_1.global_0
  loc_BB5155: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB515A: AryUnlock
  loc_BB515D: FFreeAd var_B0 = ""
  loc_BB5164: FFreeVar var_C0 = ""
  loc_BB516B: FLdRfVar var_10C
  loc_BB516E: LitVarStr var_9C, "DetaPers"
  loc_BB5173: PopAdLdVar
  loc_BB5174: FLdRfVar var_108
  loc_BB5177: FLdRfVar var_B0
  loc_BB517A: FLdPr Me
  loc_BB517D: MemLdRfVar from_stack_1.global_88
  loc_BB5180: NewIfNullPr clsbase
  loc_BB5183: from_stack_1v = clsbase.RsFrmGet()
  loc_BB5188: FLdPr var_B0
  loc_BB518B:  = Me.Fields
  loc_BB5190: FLdPr var_108
  loc_BB5193: from_stack_2 = Me.Item(from_stack_1)
  loc_BB5198: LitI2_Byte 0
  loc_BB519A: LitVar_Missing var_120
  loc_BB519D: LitI2_Byte 0
  loc_BB519F: FLdZeroAd var_10C
  loc_BB51A2: CVarAd
  loc_BB51A6: PopAdLdVar
  loc_BB51A7: LitI4 1
  loc_BB51AC: FLdPr Me
  loc_BB51AF: MemLdStr global_92
  loc_BB51B2: AryLock
  loc_BB51B5: Ary1LdPr
  loc_BB51B6: MemLdRfVar from_stack_1.global_4
  loc_BB51B9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB51BE: AryUnlock
  loc_BB51C1: FFreeAd var_B0 = ""
  loc_BB51C8: FFreeVar var_C0 = ""
  loc_BB51CF: FLdRfVar var_10C
  loc_BB51D2: LitVarStr var_9C, "DecrPers"
  loc_BB51D7: PopAdLdVar
  loc_BB51D8: FLdRfVar var_108
  loc_BB51DB: FLdRfVar var_B0
  loc_BB51DE: FLdPr Me
  loc_BB51E1: MemLdRfVar from_stack_1.global_88
  loc_BB51E4: NewIfNullPr clsbase
  loc_BB51E7: from_stack_1v = clsbase.RsFrmGet()
  loc_BB51EC: FLdPr var_B0
  loc_BB51EF:  = Me.Fields
  loc_BB51F4: FLdPr var_108
  loc_BB51F7: from_stack_2 = Me.Item(from_stack_1)
  loc_BB51FC: LitI2_Byte 0
  loc_BB51FE: LitVar_Missing var_120
  loc_BB5201: LitI2_Byte 0
  loc_BB5203: FLdZeroAd var_10C
  loc_BB5206: CVarAd
  loc_BB520A: PopAdLdVar
  loc_BB520B: LitI4 1
  loc_BB5210: FLdPr Me
  loc_BB5213: MemLdStr global_92
  loc_BB5216: AryLock
  loc_BB5219: Ary1LdPr
  loc_BB521A: MemLdRfVar from_stack_1.global_8
  loc_BB521D: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB5222: AryUnlock
  loc_BB5225: FFreeAd var_B0 = ""
  loc_BB522C: FFreeVar var_C0 = ""
  loc_BB5233: FLdRfVar var_10C
  loc_BB5236: LitVarStr var_9C, "NurePers"
  loc_BB523B: PopAdLdVar
  loc_BB523C: FLdRfVar var_108
  loc_BB523F: FLdRfVar var_B0
  loc_BB5242: FLdPr Me
  loc_BB5245: MemLdRfVar from_stack_1.global_88
  loc_BB5248: NewIfNullPr clsbase
  loc_BB524B: from_stack_1v = clsbase.RsFrmGet()
  loc_BB5250: FLdPr var_B0
  loc_BB5253:  = Me.Fields
  loc_BB5258: FLdPr var_108
  loc_BB525B: from_stack_2 = Me.Item(from_stack_1)
  loc_BB5260: LitI2_Byte 0
  loc_BB5262: LitVar_Missing var_120
  loc_BB5265: LitI2_Byte 0
  loc_BB5267: FLdZeroAd var_10C
  loc_BB526A: CVarAd
  loc_BB526E: PopAdLdVar
  loc_BB526F: LitI4 1
  loc_BB5274: FLdPr Me
  loc_BB5277: MemLdStr global_92
  loc_BB527A: AryLock
  loc_BB527D: Ary1LdPr
  loc_BB527E: MemLdRfVar from_stack_1.global_12
  loc_BB5281: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB5286: AryUnlock
  loc_BB5289: FFreeAd var_B0 = ""
  loc_BB5290: FFreeVar var_C0 = ""
  loc_BB5297: FLdRfVar var_10C
  loc_BB529A: LitVarStr var_9C, "DebrPers"
  loc_BB529F: PopAdLdVar
  loc_BB52A0: FLdRfVar var_108
  loc_BB52A3: FLdRfVar var_B0
  loc_BB52A6: FLdPr Me
  loc_BB52A9: MemLdRfVar from_stack_1.global_88
  loc_BB52AC: NewIfNullPr clsbase
  loc_BB52AF: from_stack_1v = clsbase.RsFrmGet()
  loc_BB52B4: FLdPr var_B0
  loc_BB52B7:  = Me.Fields
  loc_BB52BC: FLdPr var_108
  loc_BB52BF: from_stack_2 = Me.Item(from_stack_1)
  loc_BB52C4: LitI2_Byte 0
  loc_BB52C6: LitVar_Missing var_120
  loc_BB52C9: LitI2_Byte 0
  loc_BB52CB: FLdZeroAd var_10C
  loc_BB52CE: CVarAd
  loc_BB52D2: PopAdLdVar
  loc_BB52D3: LitI4 1
  loc_BB52D8: FLdPr Me
  loc_BB52DB: MemLdStr global_92
  loc_BB52DE: AryLock
  loc_BB52E1: Ary1LdPr
  loc_BB52E2: MemLdRfVar from_stack_1.global_16
  loc_BB52E5: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB52EA: AryUnlock
  loc_BB52ED: FFreeAd var_B0 = ""
  loc_BB52F4: FFreeVar var_C0 = ""
  loc_BB52FB: FLdRfVar var_10C
  loc_BB52FE: LitVarStr var_9C, "MarePers"
  loc_BB5303: PopAdLdVar
  loc_BB5304: FLdRfVar var_108
  loc_BB5307: FLdRfVar var_B0
  loc_BB530A: FLdPr Me
  loc_BB530D: MemLdRfVar from_stack_1.global_88
  loc_BB5310: NewIfNullPr clsbase
  loc_BB5313: from_stack_1v = clsbase.RsFrmGet()
  loc_BB5318: FLdPr var_B0
  loc_BB531B:  = Me.Fields
  loc_BB5320: FLdPr var_108
  loc_BB5323: from_stack_2 = Me.Item(from_stack_1)
  loc_BB5328: LitI2_Byte 0
  loc_BB532A: LitVar_Missing var_120
  loc_BB532D: LitI2_Byte 0
  loc_BB532F: FLdZeroAd var_10C
  loc_BB5332: CVarAd
  loc_BB5336: PopAdLdVar
  loc_BB5337: LitI4 1
  loc_BB533C: FLdPr Me
  loc_BB533F: MemLdStr global_92
  loc_BB5342: AryLock
  loc_BB5345: Ary1LdPr
  loc_BB5346: MemLdRfVar from_stack_1.global_20
  loc_BB5349: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB534E: AryUnlock
  loc_BB5351: FFreeAd var_B0 = ""
  loc_BB5358: FFreeVar var_C0 = ""
  loc_BB535F: FLdRfVar var_10C
  loc_BB5362: LitVarStr var_9C, "CarePers"
  loc_BB5367: PopAdLdVar
  loc_BB5368: FLdRfVar var_108
  loc_BB536B: FLdRfVar var_B0
  loc_BB536E: FLdPr Me
  loc_BB5371: MemLdRfVar from_stack_1.global_88
  loc_BB5374: NewIfNullPr clsbase
  loc_BB5377: from_stack_1v = clsbase.RsFrmGet()
  loc_BB537C: FLdPr var_B0
  loc_BB537F:  = Me.Fields
  loc_BB5384: FLdPr var_108
  loc_BB5387: from_stack_2 = Me.Item(from_stack_1)
  loc_BB538C: LitI2_Byte 0
  loc_BB538E: LitVar_Missing var_120
  loc_BB5391: LitI2_Byte 0
  loc_BB5393: FLdZeroAd var_10C
  loc_BB5396: CVarAd
  loc_BB539A: PopAdLdVar
  loc_BB539B: LitI4 1
  loc_BB53A0: FLdPr Me
  loc_BB53A3: MemLdStr global_92
  loc_BB53A6: AryLock
  loc_BB53A9: Ary1LdPr
  loc_BB53AA: MemLdRfVar from_stack_1.global_24
  loc_BB53AD: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB53B2: AryUnlock
  loc_BB53B5: FFreeAd var_B0 = ""
  loc_BB53BC: FFreeVar var_C0 = ""
  loc_BB53C3: FLdRfVar var_10C
  loc_BB53C6: LitVarStr var_9C, "UbrePers"
  loc_BB53CB: PopAdLdVar
  loc_BB53CC: FLdRfVar var_108
  loc_BB53CF: FLdRfVar var_B0
  loc_BB53D2: FLdPr Me
  loc_BB53D5: MemLdRfVar from_stack_1.global_88
  loc_BB53D8: NewIfNullPr clsbase
  loc_BB53DB: from_stack_1v = clsbase.RsFrmGet()
  loc_BB53E0: FLdPr var_B0
  loc_BB53E3:  = Me.Fields
  loc_BB53E8: FLdPr var_108
  loc_BB53EB: from_stack_2 = Me.Item(from_stack_1)
  loc_BB53F0: LitI2_Byte 0
  loc_BB53F2: LitVar_Missing var_120
  loc_BB53F5: LitI2_Byte 0
  loc_BB53F7: FLdZeroAd var_10C
  loc_BB53FA: CVarAd
  loc_BB53FE: PopAdLdVar
  loc_BB53FF: LitI4 1
  loc_BB5404: FLdPr Me
  loc_BB5407: MemLdStr global_92
  loc_BB540A: AryLock
  loc_BB540D: Ary1LdPr
  loc_BB540E: MemLdRfVar from_stack_1.global_28
  loc_BB5411: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB5416: AryUnlock
  loc_BB5419: FFreeAd var_B0 = ""
  loc_BB5420: FFreeVar var_C0 = ""
  loc_BB5427: FLdRfVar var_10C
  loc_BB542A: LitVarStr var_9C, "DelrPers"
  loc_BB542F: PopAdLdVar
  loc_BB5430: FLdRfVar var_108
  loc_BB5433: FLdRfVar var_B0
  loc_BB5436: FLdPr Me
  loc_BB5439: MemLdRfVar from_stack_1.global_88
  loc_BB543C: NewIfNullPr clsbase
  loc_BB543F: from_stack_1v = clsbase.RsFrmGet()
  loc_BB5444: FLdPr var_B0
  loc_BB5447:  = Me.Fields
  loc_BB544C: FLdPr var_108
  loc_BB544F: from_stack_2 = Me.Item(from_stack_1)
  loc_BB5454: LitI2_Byte 0
  loc_BB5456: LitVar_Missing var_120
  loc_BB5459: LitI2_Byte 0
  loc_BB545B: FLdZeroAd var_10C
  loc_BB545E: CVarAd
  loc_BB5462: PopAdLdVar
  loc_BB5463: LitI4 1
  loc_BB5468: FLdPr Me
  loc_BB546B: MemLdStr global_92
  loc_BB546E: AryLock
  loc_BB5471: Ary1LdPr
  loc_BB5472: MemLdRfVar from_stack_1.global_32
  loc_BB5475: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB547A: AryUnlock
  loc_BB547D: FFreeAd var_B0 = ""
  loc_BB5484: FFreeVar var_C0 = ""
  loc_BB548B: FLdRfVar var_10C
  loc_BB548E: LitVarStr var_9C, "CoprPers"
  loc_BB5493: PopAdLdVar
  loc_BB5494: FLdRfVar var_108
  loc_BB5497: FLdRfVar var_B0
  loc_BB549A: FLdPr Me
  loc_BB549D: MemLdRfVar from_stack_1.global_88
  loc_BB54A0: NewIfNullPr clsbase
  loc_BB54A3: from_stack_1v = clsbase.RsFrmGet()
  loc_BB54A8: FLdPr var_B0
  loc_BB54AB:  = Me.Fields
  loc_BB54B0: FLdPr var_108
  loc_BB54B3: from_stack_2 = Me.Item(from_stack_1)
  loc_BB54B8: LitI2_Byte 0
  loc_BB54BA: LitVar_Missing var_120
  loc_BB54BD: LitI2_Byte 0
  loc_BB54BF: FLdZeroAd var_10C
  loc_BB54C2: CVarAd
  loc_BB54C6: PopAdLdVar
  loc_BB54C7: LitI4 1
  loc_BB54CC: FLdPr Me
  loc_BB54CF: MemLdStr global_92
  loc_BB54D2: AryLock
  loc_BB54D5: Ary1LdPr
  loc_BB54D6: MemLdRfVar from_stack_1.global_36
  loc_BB54D9: ImpAdCallFPR4 Proc_272_22_AE2660(, , , , , , , )
  loc_BB54DE: AryUnlock
  loc_BB54E1: FFreeAd var_B0 = ""
  loc_BB54E8: FFreeVar var_C0 = ""
  loc_BB54EF: Branch loc_BB54FD
  loc_BB54F2: LitStr "No existe la persona"
  loc_BB54F5: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BB54FA: Branch loc_BB5505
  loc_BB54FD: LitI2_Byte &HFF
  loc_BB54FF: FLdPr Me
  loc_BB5502: MemStI2 bGenerado
  loc_BB5505: LitI4 0
  loc_BB550A: CI2I4
  loc_BB550B: FLdPr Me
  loc_BB550E: Me.MousePointer = from_stack_1
  loc_BB5513: LitVarStr var_9C, vbNullString
  loc_BB5518: PopAdLdVar
  loc_BB5519: FLdPr Me
  loc_BB551C: VCallAd Control_ID_statusBar
  loc_BB551F: FStAdFunc var_B0
  loc_BB5522: FLdPr var_B0
  loc_BB5525: LateIdSt
  loc_BB552A: FFree1Ad var_B0
  loc_BB552D: ExitProcHresult
End Sub

Public Sub GeneraHTML() 'A35B30
  'Data Table: 458D10
  loc_A35AE0: FLdRfVar var_88
  loc_A35AE3: LitI2_Byte 0
  loc_A35AE5: LitI2_Byte &HFF
  loc_A35AE7: ImpAdLdI4 MemVar_D93C84
  loc_A35AEA: FLdPr Me
  loc_A35AED: MemLdRfVar from_stack_1.global_56
  loc_A35AF0: NewIfNullPr IFileSystem3
  loc_A35AF3: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A35AF8: ILdRf var_88
  loc_A35AFB: FLdPr Me
  loc_A35AFE: MemStVarAd
  loc_A35B02: FFree1Ad var_88
  loc_A35B05: LitI2_Byte 0
  loc_A35B07: ImpAdStI2 MemVar_D93C8A
  loc_A35B0A: Call Proc_258_14_B70014()
  loc_A35B0F: Call Proc_258_15_BC8AAC()
  loc_A35B14: Call Proc_258_16_AF7080()
  loc_A35B19: FLdPr Me
  loc_A35B1C: MemLdRfVar from_stack_1.global_60
  loc_A35B1F: LdPrVar
  loc_A35B21: LateMemCall
  loc_A35B27: LitStr vbNullString
  loc_A35B2A: ImpAdCallFPR4 Proc_272_44_BEFE94()
  loc_A35B2F: ExitProcHresult
End Sub

Private Function Proc_258_14_B70014() 'B70014
  'Data Table: 458D10
  loc_B6FB7C: LitVarStr var_94, "<html>"
  loc_B6FB81: PopAdLdVar
  loc_B6FB82: FLdPr Me
  loc_B6FB85: MemLdRfVar from_stack_1.global_60
  loc_B6FB88: LdPrVar
  loc_B6FB8A: LateMemCall
  loc_B6FB90: LitVarStr var_94, "<head>"
  loc_B6FB95: PopAdLdVar
  loc_B6FB96: FLdPr Me
  loc_B6FB99: MemLdRfVar from_stack_1.global_60
  loc_B6FB9C: LdPrVar
  loc_B6FB9E: LateMemCall
  loc_B6FBA4: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_B6FBA9: PopAdLdVar
  loc_B6FBAA: FLdPr Me
  loc_B6FBAD: MemLdRfVar from_stack_1.global_60
  loc_B6FBB0: LdPrVar
  loc_B6FBB2: LateMemCall
  loc_B6FBB8: LitStr "<title>"
  loc_B6FBBB: FLdRfVar var_A8
  loc_B6FBBE: FLdPr Me
  loc_B6FBC1:  = Me.Caption
  loc_B6FBC6: ILdRf var_A8
  loc_B6FBC9: ConcatStr
  loc_B6FBCA: FStStrNoPop var_AC
  loc_B6FBCD: LitStr "</title>"
  loc_B6FBD0: ConcatStr
  loc_B6FBD1: CVarStr var_BC
  loc_B6FBD4: PopAdLdVar
  loc_B6FBD5: FLdPr Me
  loc_B6FBD8: MemLdRfVar from_stack_1.global_60
  loc_B6FBDB: LdPrVar
  loc_B6FBDD: LateMemCall
  loc_B6FBE3: FFreeStr var_A8 = ""
  loc_B6FBEA: FFree1Var var_BC = ""
  loc_B6FBED: LitVarStr var_94, "<style type=""text/css"">"
  loc_B6FBF2: PopAdLdVar
  loc_B6FBF3: FLdPr Me
  loc_B6FBF6: MemLdRfVar from_stack_1.global_60
  loc_B6FBF9: LdPrVar
  loc_B6FBFB: LateMemCall
  loc_B6FC01: LitVarStr var_94, ".Titulo1 {"
  loc_B6FC06: PopAdLdVar
  loc_B6FC07: FLdPr Me
  loc_B6FC0A: MemLdRfVar from_stack_1.global_60
  loc_B6FC0D: LdPrVar
  loc_B6FC0F: LateMemCall
  loc_B6FC15: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B6FC1A: PopAdLdVar
  loc_B6FC1B: FLdPr Me
  loc_B6FC1E: MemLdRfVar from_stack_1.global_60
  loc_B6FC21: LdPrVar
  loc_B6FC23: LateMemCall
  loc_B6FC29: LitVarStr var_94, " font-size: 22px;"
  loc_B6FC2E: PopAdLdVar
  loc_B6FC2F: FLdPr Me
  loc_B6FC32: MemLdRfVar from_stack_1.global_60
  loc_B6FC35: LdPrVar
  loc_B6FC37: LateMemCall
  loc_B6FC3D: LitVarStr var_94, " font-weight: bold;"
  loc_B6FC42: PopAdLdVar
  loc_B6FC43: FLdPr Me
  loc_B6FC46: MemLdRfVar from_stack_1.global_60
  loc_B6FC49: LdPrVar
  loc_B6FC4B: LateMemCall
  loc_B6FC51: LitVarStr var_94, "}"
  loc_B6FC56: PopAdLdVar
  loc_B6FC57: FLdPr Me
  loc_B6FC5A: MemLdRfVar from_stack_1.global_60
  loc_B6FC5D: LdPrVar
  loc_B6FC5F: LateMemCall
  loc_B6FC65: LitVarStr var_94, ".Titulo2 {"
  loc_B6FC6A: PopAdLdVar
  loc_B6FC6B: FLdPr Me
  loc_B6FC6E: MemLdRfVar from_stack_1.global_60
  loc_B6FC71: LdPrVar
  loc_B6FC73: LateMemCall
  loc_B6FC79: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B6FC7E: PopAdLdVar
  loc_B6FC7F: FLdPr Me
  loc_B6FC82: MemLdRfVar from_stack_1.global_60
  loc_B6FC85: LdPrVar
  loc_B6FC87: LateMemCall
  loc_B6FC8D: LitVarStr var_94, " font-size: 18px;"
  loc_B6FC92: PopAdLdVar
  loc_B6FC93: FLdPr Me
  loc_B6FC96: MemLdRfVar from_stack_1.global_60
  loc_B6FC99: LdPrVar
  loc_B6FC9B: LateMemCall
  loc_B6FCA1: LitVarStr var_94, " font-weight: bold;"
  loc_B6FCA6: PopAdLdVar
  loc_B6FCA7: FLdPr Me
  loc_B6FCAA: MemLdRfVar from_stack_1.global_60
  loc_B6FCAD: LdPrVar
  loc_B6FCAF: LateMemCall
  loc_B6FCB5: LitVarStr var_94, "}"
  loc_B6FCBA: PopAdLdVar
  loc_B6FCBB: FLdPr Me
  loc_B6FCBE: MemLdRfVar from_stack_1.global_60
  loc_B6FCC1: LdPrVar
  loc_B6FCC3: LateMemCall
  loc_B6FCC9: LitVarStr var_94, ".Normal {"
  loc_B6FCCE: PopAdLdVar
  loc_B6FCCF: FLdPr Me
  loc_B6FCD2: MemLdRfVar from_stack_1.global_60
  loc_B6FCD5: LdPrVar
  loc_B6FCD7: LateMemCall
  loc_B6FCDD: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B6FCE2: PopAdLdVar
  loc_B6FCE3: FLdPr Me
  loc_B6FCE6: MemLdRfVar from_stack_1.global_60
  loc_B6FCE9: LdPrVar
  loc_B6FCEB: LateMemCall
  loc_B6FCF1: LitVarStr var_94, " font-size: 18px;"
  loc_B6FCF6: PopAdLdVar
  loc_B6FCF7: FLdPr Me
  loc_B6FCFA: MemLdRfVar from_stack_1.global_60
  loc_B6FCFD: LdPrVar
  loc_B6FCFF: LateMemCall
  loc_B6FD05: LitVarStr var_94, " font-style: normal;"
  loc_B6FD0A: PopAdLdVar
  loc_B6FD0B: FLdPr Me
  loc_B6FD0E: MemLdRfVar from_stack_1.global_60
  loc_B6FD11: LdPrVar
  loc_B6FD13: LateMemCall
  loc_B6FD19: LitVarStr var_94, " font-weight: bold;"
  loc_B6FD1E: PopAdLdVar
  loc_B6FD1F: FLdPr Me
  loc_B6FD22: MemLdRfVar from_stack_1.global_60
  loc_B6FD25: LdPrVar
  loc_B6FD27: LateMemCall
  loc_B6FD2D: LitVarStr var_94, " font-variant: normal;"
  loc_B6FD32: PopAdLdVar
  loc_B6FD33: FLdPr Me
  loc_B6FD36: MemLdRfVar from_stack_1.global_60
  loc_B6FD39: LdPrVar
  loc_B6FD3B: LateMemCall
  loc_B6FD41: LitVarStr var_94, "}"
  loc_B6FD46: PopAdLdVar
  loc_B6FD47: FLdPr Me
  loc_B6FD4A: MemLdRfVar from_stack_1.global_60
  loc_B6FD4D: LdPrVar
  loc_B6FD4F: LateMemCall
  loc_B6FD55: LitVarStr var_94, ".Encabezado {"
  loc_B6FD5A: PopAdLdVar
  loc_B6FD5B: FLdPr Me
  loc_B6FD5E: MemLdRfVar from_stack_1.global_60
  loc_B6FD61: LdPrVar
  loc_B6FD63: LateMemCall
  loc_B6FD69: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B6FD6E: PopAdLdVar
  loc_B6FD6F: FLdPr Me
  loc_B6FD72: MemLdRfVar from_stack_1.global_60
  loc_B6FD75: LdPrVar
  loc_B6FD77: LateMemCall
  loc_B6FD7D: LitVarStr var_94, " font-size: 18px;"
  loc_B6FD82: PopAdLdVar
  loc_B6FD83: FLdPr Me
  loc_B6FD86: MemLdRfVar from_stack_1.global_60
  loc_B6FD89: LdPrVar
  loc_B6FD8B: LateMemCall
  loc_B6FD91: LitVarStr var_94, " font-style: normal;"
  loc_B6FD96: PopAdLdVar
  loc_B6FD97: FLdPr Me
  loc_B6FD9A: MemLdRfVar from_stack_1.global_60
  loc_B6FD9D: LdPrVar
  loc_B6FD9F: LateMemCall
  loc_B6FDA5: LitVarStr var_94, " font-weight: normal;"
  loc_B6FDAA: PopAdLdVar
  loc_B6FDAB: FLdPr Me
  loc_B6FDAE: MemLdRfVar from_stack_1.global_60
  loc_B6FDB1: LdPrVar
  loc_B6FDB3: LateMemCall
  loc_B6FDB9: LitVarStr var_94, " font-variant: normal;"
  loc_B6FDBE: PopAdLdVar
  loc_B6FDBF: FLdPr Me
  loc_B6FDC2: MemLdRfVar from_stack_1.global_60
  loc_B6FDC5: LdPrVar
  loc_B6FDC7: LateMemCall
  loc_B6FDCD: LitVarStr var_94, "}"
  loc_B6FDD2: PopAdLdVar
  loc_B6FDD3: FLdPr Me
  loc_B6FDD6: MemLdRfVar from_stack_1.global_60
  loc_B6FDD9: LdPrVar
  loc_B6FDDB: LateMemCall
  loc_B6FDE1: LitVarStr var_94, ".Recuadro {"
  loc_B6FDE6: PopAdLdVar
  loc_B6FDE7: FLdPr Me
  loc_B6FDEA: MemLdRfVar from_stack_1.global_60
  loc_B6FDED: LdPrVar
  loc_B6FDEF: LateMemCall
  loc_B6FDF5: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B6FDFA: PopAdLdVar
  loc_B6FDFB: FLdPr Me
  loc_B6FDFE: MemLdRfVar from_stack_1.global_60
  loc_B6FE01: LdPrVar
  loc_B6FE03: LateMemCall
  loc_B6FE09: LitVarStr var_94, " font-weight: bold;"
  loc_B6FE0E: PopAdLdVar
  loc_B6FE0F: FLdPr Me
  loc_B6FE12: MemLdRfVar from_stack_1.global_60
  loc_B6FE15: LdPrVar
  loc_B6FE17: LateMemCall
  loc_B6FE1D: LitVarStr var_94, " float: right;"
  loc_B6FE22: PopAdLdVar
  loc_B6FE23: FLdPr Me
  loc_B6FE26: MemLdRfVar from_stack_1.global_60
  loc_B6FE29: LdPrVar
  loc_B6FE2B: LateMemCall
  loc_B6FE31: LitVarStr var_94, " font-size: 13px;"
  loc_B6FE36: PopAdLdVar
  loc_B6FE37: FLdPr Me
  loc_B6FE3A: MemLdRfVar from_stack_1.global_60
  loc_B6FE3D: LdPrVar
  loc_B6FE3F: LateMemCall
  loc_B6FE45: LitVarStr var_94, " border: medium doble #000000;"
  loc_B6FE4A: PopAdLdVar
  loc_B6FE4B: FLdPr Me
  loc_B6FE4E: MemLdRfVar from_stack_1.global_60
  loc_B6FE51: LdPrVar
  loc_B6FE53: LateMemCall
  loc_B6FE59: LitVarStr var_94, "}"
  loc_B6FE5E: PopAdLdVar
  loc_B6FE5F: FLdPr Me
  loc_B6FE62: MemLdRfVar from_stack_1.global_60
  loc_B6FE65: LdPrVar
  loc_B6FE67: LateMemCall
  loc_B6FE6D: LitVarStr var_94, ".Revision {"
  loc_B6FE72: PopAdLdVar
  loc_B6FE73: FLdPr Me
  loc_B6FE76: MemLdRfVar from_stack_1.global_60
  loc_B6FE79: LdPrVar
  loc_B6FE7B: LateMemCall
  loc_B6FE81: LitVarStr var_94, " font-family: Georgia, ""Times New Roman"", Times, serif;"
  loc_B6FE86: PopAdLdVar
  loc_B6FE87: FLdPr Me
  loc_B6FE8A: MemLdRfVar from_stack_1.global_60
  loc_B6FE8D: LdPrVar
  loc_B6FE8F: LateMemCall
  loc_B6FE95: LitVarStr var_94, " font-size: 12px;"
  loc_B6FE9A: PopAdLdVar
  loc_B6FE9B: FLdPr Me
  loc_B6FE9E: MemLdRfVar from_stack_1.global_60
  loc_B6FEA1: LdPrVar
  loc_B6FEA3: LateMemCall
  loc_B6FEA9: LitVarStr var_94, " font-style: normal;"
  loc_B6FEAE: PopAdLdVar
  loc_B6FEAF: FLdPr Me
  loc_B6FEB2: MemLdRfVar from_stack_1.global_60
  loc_B6FEB5: LdPrVar
  loc_B6FEB7: LateMemCall
  loc_B6FEBD: LitVarStr var_94, " font-variant: normal;"
  loc_B6FEC2: PopAdLdVar
  loc_B6FEC3: FLdPr Me
  loc_B6FEC6: MemLdRfVar from_stack_1.global_60
  loc_B6FEC9: LdPrVar
  loc_B6FECB: LateMemCall
  loc_B6FED1: LitVarStr var_94, "}"
  loc_B6FED6: PopAdLdVar
  loc_B6FED7: FLdPr Me
  loc_B6FEDA: MemLdRfVar from_stack_1.global_60
  loc_B6FEDD: LdPrVar
  loc_B6FEDF: LateMemCall
  loc_B6FEE5: LitVarStr var_94, "</style>"
  loc_B6FEEA: PopAdLdVar
  loc_B6FEEB: FLdPr Me
  loc_B6FEEE: MemLdRfVar from_stack_1.global_60
  loc_B6FEF1: LdPrVar
  loc_B6FEF3: LateMemCall
  loc_B6FEF9: LitI4 0
  loc_B6FEFE: FStStrCopy var_AC
  loc_B6FF01: FLdRfVar var_AC
  loc_B6FF04: LitI4 0
  loc_B6FF09: FStStrCopy var_A8
  loc_B6FF0C: FLdRfVar var_A8
  loc_B6FF0F: LitI2_Byte 0
  loc_B6FF11: PopTmpLdAd2 var_BE
  loc_B6FF14: FLdPr Me
  loc_B6FF17: MemLdRfVar from_stack_1.global_60
  loc_B6FF1A: ImpAdCallFPR4  = Proc_57_7_B5E738(, )
  loc_B6FF1F: FFreeStr var_A8 = ""
  loc_B6FF26: LitStr "Municipalidad de Guaymallén"
  loc_B6FF29: LitStr "Municipalidad de Lavalle"
  loc_B6FF2C: EqStr
  loc_B6FF2E: BranchF loc_B6FF48
  loc_B6FF31: LitVarStr var_94, "<table background=""l5.jpg"" width=""725"" height=""1100"" border=""0"" align=""center"" cellpadding=""5"" cellspacing=""0""><tr><td>"
  loc_B6FF36: PopAdLdVar
  loc_B6FF37: FLdPr Me
  loc_B6FF3A: MemLdRfVar from_stack_1.global_60
  loc_B6FF3D: LdPrVar
  loc_B6FF3F: LateMemCall
  loc_B6FF45: Branch loc_B6FF5C
  loc_B6FF48: LitVarStr var_94, "<table background=""l4.jpg"" width=""725"" height=""1100"" border=""0"" align=""center"" cellpadding=""5"" cellspacing=""0""><tr><td>"
  loc_B6FF4D: PopAdLdVar
  loc_B6FF4E: FLdPr Me
  loc_B6FF51: MemLdRfVar from_stack_1.global_60
  loc_B6FF54: LdPrVar
  loc_B6FF56: LateMemCall
  loc_B6FF5C: LitVarStr var_94, "<table width=""91" & Chr(37) & """ height=""1027"" border=""0"" align=""center"" cellpadding=""5"" cellspacing=""0"" class=""Titulo2"">"
  loc_B6FF61: PopAdLdVar
  loc_B6FF62: FLdPr Me
  loc_B6FF65: MemLdRfVar from_stack_1.global_60
  loc_B6FF68: LdPrVar
  loc_B6FF6A: LateMemCall
  loc_B6FF70: LitVarStr var_94, "  <tr align=""center"" valign=""middle"" class=""Titulo1"">"
  loc_B6FF75: PopAdLdVar
  loc_B6FF76: FLdPr Me
  loc_B6FF79: MemLdRfVar from_stack_1.global_60
  loc_B6FF7C: LdPrVar
  loc_B6FF7E: LateMemCall
  loc_B6FF84: LitStr "  <td colspan=""2"" height=""106""><img src=""l1.jpg"" alt=""LOGO"" width="""
  loc_B6FF87: LitI2_Byte &H5F
  loc_B6FF89: CStrUI1
  loc_B6FF8B: FStStrNoPop var_A8
  loc_B6FF8E: ConcatStr
  loc_B6FF8F: FStStrNoPop var_AC
  loc_B6FF92: LitStr """ height="""
  loc_B6FF95: ConcatStr
  loc_B6FF96: FStStrNoPop var_C4
  loc_B6FF99: LitI2_Byte &H3C
  loc_B6FF9B: CStrUI1
  loc_B6FF9D: FStStrNoPop var_C8
  loc_B6FFA0: ConcatStr
  loc_B6FFA1: FStStrNoPop var_CC
  loc_B6FFA4: LitStr """ align=""left""><img src=""l3.jpg"" alt=""Escudo"" width="""
  loc_B6FFA7: ConcatStr
  loc_B6FFA8: FStStrNoPop var_D0
  loc_B6FFAB: LitI2_Byte &H3C
  loc_B6FFAD: CStrUI1
  loc_B6FFAF: FStStrNoPop var_D4
  loc_B6FFB2: ConcatStr
  loc_B6FFB3: FStStrNoPop var_D8
  loc_B6FFB6: LitStr """ height=""51"" align=""right"" valign=""middle"">"
  loc_B6FFB9: ConcatStr
  loc_B6FFBA: FStStrNoPop var_DC
  loc_B6FFBD: LitStr "</span><br><br><br><br><br/>"
  loc_B6FFC0: ConcatStr
  loc_B6FFC1: CVarStr var_BC
  loc_B6FFC4: PopAdLdVar
  loc_B6FFC5: FLdPr Me
  loc_B6FFC8: MemLdRfVar from_stack_1.global_60
  loc_B6FFCB: LdPrVar
  loc_B6FFCD: LateMemCall
  loc_B6FFD3: FFreeStr var_A8 = "": var_AC = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_B6FFE8: FFree1Var var_BC = ""
  loc_B6FFEB: LitVarStr var_94, "   <br>CERTIFICADO PARA PROVEEDORES </em></div></td>"
  loc_B6FFF0: PopAdLdVar
  loc_B6FFF1: FLdPr Me
  loc_B6FFF4: MemLdRfVar from_stack_1.global_60
  loc_B6FFF7: LdPrVar
  loc_B6FFF9: LateMemCall
  loc_B6FFFF: LitVarStr var_94, "  </tr>"
  loc_B70004: PopAdLdVar
  loc_B70005: FLdPr Me
  loc_B70008: MemLdRfVar from_stack_1.global_60
  loc_B7000B: LdPrVar
  loc_B7000D: LateMemCall
  loc_B70013: ExitProcHresult
End Function

Private Function Proc_258_15_BC8AAC() 'BC8AAC
  'Data Table: 458D10
  loc_BC83E4: LitI4 1
  loc_BC83E9: FLdPr Me
  loc_BC83EC: MemLdStr global_92
  loc_BC83EF: AryLock
  loc_BC83F2: Ary1LdRf
  loc_BC83F3: FStR4 var_90
  loc_BC83F6: LitVarStr var_A0, "  <tr>"
  loc_BC83FB: PopAdLdVar
  loc_BC83FC: FLdPr Me
  loc_BC83FF: MemLdRfVar from_stack_1.global_60
  loc_BC8402: LdPrVar
  loc_BC8404: LateMemCall
  loc_BC840A: LitVarStr var_A0, "     <td height=""100"" colspan=""2"" align=""center"" valign=""top""><table border=""0"" cellpadding=""5"" cellspacing=""5"" class=""Encabezado"">"
  loc_BC840F: PopAdLdVar
  loc_BC8410: FLdPr Me
  loc_BC8413: MemLdRfVar from_stack_1.global_60
  loc_BC8416: LdPrVar
  loc_BC8418: LateMemCall
  loc_BC841E: LitVarStr var_A0, "      <tr valign=""top"">"
  loc_BC8423: PopAdLdVar
  loc_BC8424: FLdPr Me
  loc_BC8427: MemLdRfVar from_stack_1.global_60
  loc_BC842A: LdPrVar
  loc_BC842C: LateMemCall
  loc_BC8432: LitVarStr var_A0, "        <td align=""right"" nowrap=""nowrap"">C.U.I.T.:</td>"
  loc_BC8437: PopAdLdVar
  loc_BC8438: FLdPr Me
  loc_BC843B: MemLdRfVar from_stack_1.global_60
  loc_BC843E: LdPrVar
  loc_BC8440: LateMemCall
  loc_BC8446: LitStr "        <td class=""Normal"">"
  loc_BC8449: FMemLdR4 var_90(0)
  loc_BC844E: ConcatStr
  loc_BC844F: FStStrNoPop var_B4
  loc_BC8452: LitStr "</td>"
  loc_BC8455: ConcatStr
  loc_BC8456: CVarStr var_C4
  loc_BC8459: PopAdLdVar
  loc_BC845A: FLdPr Me
  loc_BC845D: MemLdRfVar from_stack_1.global_60
  loc_BC8460: LdPrVar
  loc_BC8462: LateMemCall
  loc_BC8468: FFree1Str var_B4
  loc_BC846B: FFree1Var var_C4 = ""
  loc_BC846E: LitVarStr var_A0, "      </tr>"
  loc_BC8473: PopAdLdVar
  loc_BC8474: FLdPr Me
  loc_BC8477: MemLdRfVar from_stack_1.global_60
  loc_BC847A: LdPrVar
  loc_BC847C: LateMemCall
  loc_BC8482: LitVarStr var_A0, "      <tr valign=""top"">"
  loc_BC8487: PopAdLdVar
  loc_BC8488: FLdPr Me
  loc_BC848B: MemLdRfVar from_stack_1.global_60
  loc_BC848E: LdPrVar
  loc_BC8490: LateMemCall
  loc_BC8496: LitVarStr var_A0, "        <td align=""right"" nowrap=""nowrap"">Contribuyente:</td>"
  loc_BC849B: PopAdLdVar
  loc_BC849C: FLdPr Me
  loc_BC849F: MemLdRfVar from_stack_1.global_60
  loc_BC84A2: LdPrVar
  loc_BC84A4: LateMemCall
  loc_BC84AA: LitStr "        <td class=""Normal"">"
  loc_BC84AD: FMemLdR4 var_90(4)
  loc_BC84B2: ConcatStr
  loc_BC84B3: FStStrNoPop var_B4
  loc_BC84B6: LitStr "</td>"
  loc_BC84B9: ConcatStr
  loc_BC84BA: CVarStr var_C4
  loc_BC84BD: PopAdLdVar
  loc_BC84BE: FLdPr Me
  loc_BC84C1: MemLdRfVar from_stack_1.global_60
  loc_BC84C4: LdPrVar
  loc_BC84C6: LateMemCall
  loc_BC84CC: FFree1Str var_B4
  loc_BC84CF: FFree1Var var_C4 = ""
  loc_BC84D2: LitVarStr var_A0, "      </tr>"
  loc_BC84D7: PopAdLdVar
  loc_BC84D8: FLdPr Me
  loc_BC84DB: MemLdRfVar from_stack_1.global_60
  loc_BC84DE: LdPrVar
  loc_BC84E0: LateMemCall
  loc_BC84E6: LitVarStr var_A0, "      <tr valign=""top"">"
  loc_BC84EB: PopAdLdVar
  loc_BC84EC: FLdPr Me
  loc_BC84EF: MemLdRfVar from_stack_1.global_60
  loc_BC84F2: LdPrVar
  loc_BC84F4: LateMemCall
  loc_BC84FA: LitVarStr var_A0, "        <td align=""right"" nowrap=""nowrap"">Domicilio:</td>"
  loc_BC84FF: PopAdLdVar
  loc_BC8500: FLdPr Me
  loc_BC8503: MemLdRfVar from_stack_1.global_60
  loc_BC8506: LdPrVar
  loc_BC8508: LateMemCall
  loc_BC850E: LitVarStr var_E4, "        <td class=""Normal"">"
  loc_BC8513: FMemLdRf 0
  loc_BC8518: CVarRef
  loc_BC851D: FMemLdRf 0
  loc_BC8522: CVarRef
  loc_BC8527: FMemLdR4 var_90(8)
  loc_BC852C: LitStr " "
  loc_BC852F: NeStr
  loc_BC8531: FMemLdR4 var_90(8)
  loc_BC8536: LitStr vbNullString
  loc_BC8539: NeStr
  loc_BC853B: AndI4
  loc_BC853C: CVarBoolI2 var_A0
  loc_BC8540: FLdRfVar var_C4
  loc_BC8543: ImpAdCallFPR4  = IIf(, , )
  loc_BC8548: FLdRfVar var_C4
  loc_BC854B: ConcatVar var_F4
  loc_BC854F: LitVarStr var_104, "&nbsp;"
  loc_BC8554: ConcatVar var_114
  loc_BC8558: LitVarStr var_144, vbNullString
  loc_BC855D: FStVarCopyObj var_154
  loc_BC8560: FLdRfVar var_154
  loc_BC8563: FMemLdRf 0
  loc_BC8568: CVarRef
  loc_BC856D: FMemLdR4 var_90(12)
  loc_BC8572: LitStr vbNullString
  loc_BC8575: NeStr
  loc_BC8577: CVarBoolI2 var_124
  loc_BC857B: FLdRfVar var_164
  loc_BC857E: ImpAdCallFPR4  = IIf(, , )
  loc_BC8583: FLdRfVar var_164
  loc_BC8586: ConcatVar var_174
  loc_BC858A: LitVarStr var_184, "</td>"
  loc_BC858F: ConcatVar var_194
  loc_BC8593: PopAdLdVar
  loc_BC8594: FLdPr Me
  loc_BC8597: MemLdRfVar from_stack_1.global_60
  loc_BC859A: LdPrVar
  loc_BC859C: LateMemCall
  loc_BC85A2: FFreeVar var_A0 = "": var_C4 = "": var_F4 = "": var_124 = "": var_154 = "": var_114 = "": var_164 = "": var_174 = ""
  loc_BC85B7: LitVarStr var_A0, "      </tr>"
  loc_BC85BC: PopAdLdVar
  loc_BC85BD: FLdPr Me
  loc_BC85C0: MemLdRfVar from_stack_1.global_60
  loc_BC85C3: LdPrVar
  loc_BC85C5: LateMemCall
  loc_BC85CB: FMemLdR4 var_90(16)
  loc_BC85D0: LitStr vbNullString
  loc_BC85D3: NeStr
  loc_BC85D5: BranchF loc_BC872E
  loc_BC85D8: LitVarStr var_A0, "      <tr valign=""top"">"
  loc_BC85DD: PopAdLdVar
  loc_BC85DE: FLdPr Me
  loc_BC85E1: MemLdRfVar from_stack_1.global_60
  loc_BC85E4: LdPrVar
  loc_BC85E6: LateMemCall
  loc_BC85EC: LitVarStr var_A0, "        <td align=""right"" nowrap=""nowrap"">Ubicación:</td>"
  loc_BC85F1: PopAdLdVar
  loc_BC85F2: FLdPr Me
  loc_BC85F5: MemLdRfVar from_stack_1.global_60
  loc_BC85F8: LdPrVar
  loc_BC85FA: LateMemCall
  loc_BC8600: LitStr "        <td class=""Normal"">"
  loc_BC8603: FMemLdR4 var_90(16)
  loc_BC8608: ConcatStr
  loc_BC8609: FStStrNoPop var_B4
  loc_BC860C: LitStr "</td>"
  loc_BC860F: ConcatStr
  loc_BC8610: CVarStr var_C4
  loc_BC8613: PopAdLdVar
  loc_BC8614: FLdPr Me
  loc_BC8617: MemLdRfVar from_stack_1.global_60
  loc_BC861A: LdPrVar
  loc_BC861C: LateMemCall
  loc_BC8622: FFree1Str var_B4
  loc_BC8625: FFree1Var var_C4 = ""
  loc_BC8628: LitVarStr var_A0, "      </tr>"
  loc_BC862D: PopAdLdVar
  loc_BC862E: FLdPr Me
  loc_BC8631: MemLdRfVar from_stack_1.global_60
  loc_BC8634: LdPrVar
  loc_BC8636: LateMemCall
  loc_BC863C: FMemLdR4 var_90(20)
  loc_BC8641: LitStr vbNullString
  loc_BC8644: NeStr
  loc_BC8646: FMemLdR4 var_90(24)
  loc_BC864B: LitStr vbNullString
  loc_BC864E: NeStr
  loc_BC8650: OrI4
  loc_BC8651: BranchF loc_BC872E
  loc_BC8654: LitVarStr var_A0, "      <tr valign=""top"">"
  loc_BC8659: PopAdLdVar
  loc_BC865A: FLdPr Me
  loc_BC865D: MemLdRfVar from_stack_1.global_60
  loc_BC8660: LdPrVar
  loc_BC8662: LateMemCall
  loc_BC8668: LitVarStr var_A0, "        <td align=""right"" nowrap=""nowrap"">&nbsp;</td>"
  loc_BC866D: PopAdLdVar
  loc_BC866E: FLdPr Me
  loc_BC8671: MemLdRfVar from_stack_1.global_60
  loc_BC8674: LdPrVar
  loc_BC8676: LateMemCall
  loc_BC867C: LitVarStr var_D4, "        <td class=""Normal"">"
  loc_BC8681: LitVarStr var_B0, vbNullString
  loc_BC8686: FStVarCopyObj var_F4
  loc_BC8689: FLdRfVar var_F4
  loc_BC868C: LitStr "Manzana:&nbsp;"
  loc_BC868F: FMemLdR4 var_90(20)
  loc_BC8694: ConcatStr
  loc_BC8695: CVarStr var_C4
  loc_BC8698: FMemLdR4 var_90(20)
  loc_BC869D: LitStr vbNullString
  loc_BC86A0: NeStr
  loc_BC86A2: CVarBoolI2 var_A0
  loc_BC86A6: FLdRfVar var_114
  loc_BC86A9: ImpAdCallFPR4  = IIf(, , )
  loc_BC86AE: FLdRfVar var_114
  loc_BC86B1: ConcatVar var_154
  loc_BC86B5: LitVarStr var_104, vbNullString
  loc_BC86BA: FStVarCopyObj var_174
  loc_BC86BD: FLdRfVar var_174
  loc_BC86C0: LitStr " Casa:&nbsp;"
  loc_BC86C3: FMemLdR4 var_90(24)
  loc_BC86C8: ConcatStr
  loc_BC86C9: CVarStr var_164
  loc_BC86CC: FMemLdR4 var_90(24)
  loc_BC86D1: LitStr vbNullString
  loc_BC86D4: NeStr
  loc_BC86D6: CVarBoolI2 var_E4
  loc_BC86DA: FLdRfVar var_194
  loc_BC86DD: ImpAdCallFPR4  = IIf(, , )
  loc_BC86E2: FLdRfVar var_194
  loc_BC86E5: ConcatVar var_1B4
  loc_BC86E9: LitVarStr var_124, "</td>"
  loc_BC86EE: ConcatVar var_1C4
  loc_BC86F2: PopAdLdVar
  loc_BC86F3: FLdPr Me
  loc_BC86F6: MemLdRfVar from_stack_1.global_60
  loc_BC86F9: LdPrVar
  loc_BC86FB: LateMemCall
  loc_BC8701: FFreeVar var_A0 = "": var_C4 = "": var_F4 = "": var_114 = "": var_E4 = "": var_164 = "": var_174 = "": var_154 = "": var_194 = "": var_1B4 = ""
  loc_BC871A: LitVarStr var_A0, "      </tr>"
  loc_BC871F: PopAdLdVar
  loc_BC8720: FLdPr Me
  loc_BC8723: MemLdRfVar from_stack_1.global_60
  loc_BC8726: LdPrVar
  loc_BC8728: LateMemCall
  loc_BC872E: LitVarStr var_A0, "      <tr valign=""top"">"
  loc_BC8733: PopAdLdVar
  loc_BC8734: FLdPr Me
  loc_BC8737: MemLdRfVar from_stack_1.global_60
  loc_BC873A: LdPrVar
  loc_BC873C: LateMemCall
  loc_BC8742: LitVarStr var_A0, "        <td align=""right"" nowrap=""nowrap"">Localidad:</td>"
  loc_BC8747: PopAdLdVar
  loc_BC8748: FLdPr Me
  loc_BC874B: MemLdRfVar from_stack_1.global_60
  loc_BC874E: LdPrVar
  loc_BC8750: LateMemCall
  loc_BC8756: LitStr "        <td class=""Normal"">"
  loc_BC8759: FMemLdR4 var_90(32)
  loc_BC875E: ConcatStr
  loc_BC875F: FStStrNoPop var_B4
  loc_BC8762: LitStr "&nbsp;("
  loc_BC8765: ConcatStr
  loc_BC8766: FStStrNoPop var_1C8
  loc_BC8769: FMemLdR4 var_90(36)
  loc_BC876E: ConcatStr
  loc_BC876F: FStStrNoPop var_1CC
  loc_BC8772: LitStr ")</td>"
  loc_BC8775: ConcatStr
  loc_BC8776: CVarStr var_C4
  loc_BC8779: PopAdLdVar
  loc_BC877A: FLdPr Me
  loc_BC877D: MemLdRfVar from_stack_1.global_60
  loc_BC8780: LdPrVar
  loc_BC8782: LateMemCall
  loc_BC8788: FFreeStr var_B4 = "": var_1C8 = ""
  loc_BC8791: FFree1Var var_C4 = ""
  loc_BC8794: LitVarStr var_A0, "      </tr>"
  loc_BC8799: PopAdLdVar
  loc_BC879A: FLdPr Me
  loc_BC879D: MemLdRfVar from_stack_1.global_60
  loc_BC87A0: LdPrVar
  loc_BC87A2: LateMemCall
  loc_BC87A8: LitVarStr var_A0, "    </table></td>"
  loc_BC87AD: PopAdLdVar
  loc_BC87AE: FLdPr Me
  loc_BC87B1: MemLdRfVar from_stack_1.global_60
  loc_BC87B4: LdPrVar
  loc_BC87B6: LateMemCall
  loc_BC87BC: LitVarStr var_A0, "  </tr>"
  loc_BC87C1: PopAdLdVar
  loc_BC87C2: FLdPr Me
  loc_BC87C5: MemLdRfVar from_stack_1.global_60
  loc_BC87C8: LdPrVar
  loc_BC87CA: LateMemCall
  loc_BC87D0: FLdPr Me
  loc_BC87D3: MemLdFPR8 global_76
  loc_BC87D6: LitI2_Byte 0
  loc_BC87D8: CR8I2
  loc_BC87D9: LeR8
  loc_BC87DA: BranchF loc_BC88E2
  loc_BC87DD: FLdPr Me
  loc_BC87E0: MemLdI2 global_84
  loc_BC87E3: LitI2_Byte &HFF
  loc_BC87E5: EqI2
  loc_BC87E6: BranchF loc_BC883C
  loc_BC87E9: LitVarStr var_A0, "  <tr>"
  loc_BC87EE: PopAdLdVar
  loc_BC87EF: FLdPr Me
  loc_BC87F2: MemLdRfVar from_stack_1.global_60
  loc_BC87F5: LdPrVar
  loc_BC87F7: LateMemCall
  loc_BC87FD: LitVarStr var_A0, "    <td colspan=""2"" valign=""top""><table width=""98" & Chr(37) & """ align=""center""><tr class=""Titulo1""><td>"
  loc_BC8802: PopAdLdVar
  loc_BC8803: FLdPr Me
  loc_BC8806: MemLdRfVar from_stack_1.global_60
  loc_BC8809: LdPrVar
  loc_BC880B: LateMemCall
  loc_BC8811: LitVarStr var_A0, " <p style=""text-indent:150"" align=""justify""> Posee deuda regularizada por una facilidad de pago y se encuentra al día .</p> "
  loc_BC8816: PopAdLdVar
  loc_BC8817: FLdPr Me
  loc_BC881A: MemLdRfVar from_stack_1.global_60
  loc_BC881D: LdPrVar
  loc_BC881F: LateMemCall
  loc_BC8825: LitVarStr var_A0, "  </tr>"
  loc_BC882A: PopAdLdVar
  loc_BC882B: FLdPr Me
  loc_BC882E: MemLdRfVar from_stack_1.global_60
  loc_BC8831: LdPrVar
  loc_BC8833: LateMemCall
  loc_BC8839: Branch loc_BC88DF
  loc_BC883C: LitVarStr var_A0, "  <tr>"
  loc_BC8841: PopAdLdVar
  loc_BC8842: FLdPr Me
  loc_BC8845: MemLdRfVar from_stack_1.global_60
  loc_BC8848: LdPrVar
  loc_BC884A: LateMemCall
  loc_BC8850: LitVarStr var_A0, "    <td colspan=""2"" valign=""top""><table width=""98" & Chr(37) & """ align=""center""><tr class=""Titulo1""><td>"
  loc_BC8855: PopAdLdVar
  loc_BC8856: FLdPr Me
  loc_BC8859: MemLdRfVar from_stack_1.global_60
  loc_BC885C: LdPrVar
  loc_BC885E: LateMemCall
  loc_BC8864: FLdRfVar var_B4
  loc_BC8867: FLdPr Me
  loc_BC886A: VCallAd Control_ID_CucuPersTxt
  loc_BC886D: FStAdFunc var_1D0
  loc_BC8870: FLdPr var_1D0
  loc_BC8873:  = Me.Text
  loc_BC8878: LitStr " <p style=""text-indent:150"" align=""justify""> NO posee deuda en ninguna de las cuentas relacionadas al CUIT: "
  loc_BC887B: LitI4 1
  loc_BC8880: LitI4 1
  loc_BC8885: LitVarStr var_A0, "##-########-#"
  loc_BC888A: FStVarCopyObj var_F4
  loc_BC888D: FLdRfVar var_F4
  loc_BC8890: FLdZeroAd var_B4
  loc_BC8893: CVarStr var_C4
  loc_BC8896: ImpAdCallI2 Format$(, )
  loc_BC889B: FStStrNoPop var_1C8
  loc_BC889E: ConcatStr
  loc_BC889F: FStStrNoPop var_1CC
  loc_BC88A2: LitStr ".</p> "
  loc_BC88A5: ConcatStr
  loc_BC88A6: CVarStr var_114
  loc_BC88A9: PopAdLdVar
  loc_BC88AA: FLdPr Me
  loc_BC88AD: MemLdRfVar from_stack_1.global_60
  loc_BC88B0: LdPrVar
  loc_BC88B2: LateMemCall
  loc_BC88B8: FFreeStr var_1C8 = ""
  loc_BC88BF: FFree1Ad var_1D0
  loc_BC88C2: FFreeVar var_C4 = "": var_F4 = ""
  loc_BC88CB: LitVarStr var_A0, "  </tr>"
  loc_BC88D0: PopAdLdVar
  loc_BC88D1: FLdPr Me
  loc_BC88D4: MemLdRfVar from_stack_1.global_60
  loc_BC88D7: LdPrVar
  loc_BC88D9: LateMemCall
  loc_BC88DF: Branch loc_BC8980
  loc_BC88E2: LitVarStr var_A0, "  <tr>"
  loc_BC88E7: PopAdLdVar
  loc_BC88E8: FLdPr Me
  loc_BC88EB: MemLdRfVar from_stack_1.global_60
  loc_BC88EE: LdPrVar
  loc_BC88F0: LateMemCall
  loc_BC88F6: LitVarStr var_A0, "    <td colspan=""2"" valign=""top""><table width=""98" & Chr(37) & """ align=""center""><tr class=""Titulo1""><td>"
  loc_BC88FB: PopAdLdVar
  loc_BC88FC: FLdPr Me
  loc_BC88FF: MemLdRfVar from_stack_1.global_60
  loc_BC8902: LdPrVar
  loc_BC8904: LateMemCall
  loc_BC890A: LitVarStr var_D4, " <p style=""text-indent:150"" align=""justify""> Según nuestros registros posee una deuda de: $"
  loc_BC890F: LitI4 1
  loc_BC8914: LitI4 1
  loc_BC8919: LitVarStr var_B0, "0.00"
  loc_BC891E: FStVarCopyObj var_C4
  loc_BC8921: FLdRfVar var_C4
  loc_BC8924: FLdPr Me
  loc_BC8927: MemLdRfVar from_stack_1.global_76
  loc_BC892A: CVarRef
  loc_BC892F: FLdRfVar var_F4
  loc_BC8932: ImpAdCallFPR4  = Format(, )
  loc_BC8937: FLdRfVar var_F4
  loc_BC893A: ConcatVar var_114
  loc_BC893E: LitVarStr var_E4, " solo de capital. Debe regularizar situación"
  loc_BC8943: ConcatVar var_154
  loc_BC8947: LitVarStr var_104, ".</p> "
  loc_BC894C: ConcatVar var_164
  loc_BC8950: PopAdLdVar
  loc_BC8951: FLdPr Me
  loc_BC8954: MemLdRfVar from_stack_1.global_60
  loc_BC8957: LdPrVar
  loc_BC8959: LateMemCall
  loc_BC895F: FFreeVar var_C4 = "": var_F4 = "": var_114 = "": var_154 = ""
  loc_BC896C: LitVarStr var_A0, "  </tr>"
  loc_BC8971: PopAdLdVar
  loc_BC8972: FLdPr Me
  loc_BC8975: MemLdRfVar from_stack_1.global_60
  loc_BC8978: LdPrVar
  loc_BC897A: LateMemCall
  loc_BC8980: LitStr "      <p style=""text-indent:150"" align=""justify"">"
  loc_BC8983: ILdRf var_88
  loc_BC8986: ConcatStr
  loc_BC8987: FStStrNoPop var_B4
  loc_BC898A: LitStr ".</p><p>&nbsp;</p><br>"
  loc_BC898D: ConcatStr
  loc_BC898E: CVarStr var_C4
  loc_BC8991: PopAdLdVar
  loc_BC8992: FLdPr Me
  loc_BC8995: MemLdRfVar from_stack_1.global_60
  loc_BC8998: LdPrVar
  loc_BC899A: LateMemCall
  loc_BC89A0: FFree1Str var_B4
  loc_BC89A3: FFree1Var var_C4 = ""
  loc_BC89A6: LitVarStr var_A0, "   </td></tr></table></td>"
  loc_BC89AB: PopAdLdVar
  loc_BC89AC: FLdPr Me
  loc_BC89AF: MemLdRfVar from_stack_1.global_60
  loc_BC89B2: LdPrVar
  loc_BC89B4: LateMemCall
  loc_BC89BA: LitVarStr var_A0, "  </tr>"
  loc_BC89BF: PopAdLdVar
  loc_BC89C0: FLdPr Me
  loc_BC89C3: MemLdRfVar from_stack_1.global_60
  loc_BC89C6: LdPrVar
  loc_BC89C8: LateMemCall
  loc_BC89CE: LitVarStr var_A0, "  <tr> <td align=""center"" width=""100" & Chr(37) & """ colspan=""2"">"
  loc_BC89D3: PopAdLdVar
  loc_BC89D4: FLdPr Me
  loc_BC89D7: MemLdRfVar from_stack_1.global_60
  loc_BC89DA: LdPrVar
  loc_BC89DC: LateMemCall
  loc_BC89E2: LitVarStr var_A0, "  <tr>"
  loc_BC89E7: PopAdLdVar
  loc_BC89E8: FLdPr Me
  loc_BC89EB: MemLdRfVar from_stack_1.global_60
  loc_BC89EE: LdPrVar
  loc_BC89F0: LateMemCall
  loc_BC89F6: LitVarStr var_A0, "    <td colspan=""2"" align=""right"" valign=""top"" height=""31""><table width=""98" & Chr(37) & """ align=""center"">"
  loc_BC89FB: PopAdLdVar
  loc_BC89FC: FLdPr Me
  loc_BC89FF: MemLdRfVar from_stack_1.global_60
  loc_BC8A02: LdPrVar
  loc_BC8A04: LateMemCall
  loc_BC8A0A: LitI2_Byte 0
  loc_BC8A0C: ImpAdCallFPR4 Proc_272_33_AD6ACC()
  loc_BC8A11: FStFPR8 var_1E4
  loc_BC8A14: LitStr "      <tr align=""right"" class=""Normal""><td>"
  loc_BC8A17: LitStr "Guaymallén"
  loc_BC8A1A: ConcatStr
  loc_BC8A1B: FStStrNoPop var_B4
  loc_BC8A1E: LitStr ", "
  loc_BC8A21: ConcatStr
  loc_BC8A22: FStStrNoPop var_1C8
  loc_BC8A25: LitStr "Mendoza"
  loc_BC8A28: ConcatStr
  loc_BC8A29: FStStrNoPop var_1CC
  loc_BC8A2C: LitStr ", "
  loc_BC8A2F: ConcatStr
  loc_BC8A30: FStStrNoPop var_1D4
  loc_BC8A33: LitI4 1
  loc_BC8A38: LitI4 1
  loc_BC8A3D: LitVarStr var_B0, "dddd d \de mmmm \de yyyy"
  loc_BC8A42: FStVarCopyObj var_F4
  loc_BC8A45: FLdRfVar var_F4
  loc_BC8A48: FLdFPR8 var_1E4
  loc_BC8A4B: CVarDate var_C4
  loc_BC8A4F: ImpAdCallI2 Format$(, )
  loc_BC8A54: FStStrNoPop var_1D8
  loc_BC8A57: ConcatStr
  loc_BC8A58: FStStrNoPop var_1DC
  loc_BC8A5B: LitStr ".-</td></tr></table></td>"
  loc_BC8A5E: ConcatStr
  loc_BC8A5F: CVarStr var_114
  loc_BC8A62: PopAdLdVar
  loc_BC8A63: FLdPr Me
  loc_BC8A66: MemLdRfVar from_stack_1.global_60
  loc_BC8A69: LdPrVar
  loc_BC8A6B: LateMemCall
  loc_BC8A71: FFreeStr var_B4 = "": var_1C8 = "": var_1CC = "": var_1D4 = "": var_1D8 = ""
  loc_BC8A80: FFreeVar var_C4 = "": var_F4 = ""
  loc_BC8A89: LitVarStr var_A0, "  </tr>"
  loc_BC8A8E: PopAdLdVar
  loc_BC8A8F: FLdPr Me
  loc_BC8A92: MemLdRfVar from_stack_1.global_60
  loc_BC8A95: LdPrVar
  loc_BC8A97: LateMemCall
  loc_BC8A9D: LitI4 0
  loc_BC8AA2: FStR4 var_90
  loc_BC8AA5: AryUnlock
  loc_BC8AA8: ExitProcHresult
End Function

Private Function Proc_258_16_AF7080() 'AF7080
  'Data Table: 458D10
  loc_AF6ED4: LitVarStr var_94, "  <tr><td colspan=""2"" height=""81""><table align=""center"" border=""1"" width=""98" & Chr(37) & """>"
  loc_AF6ED9: PopAdLdVar
  loc_AF6EDA: FLdPr Me
  loc_AF6EDD: MemLdRfVar from_stack_1.global_60
  loc_AF6EE0: LdPrVar
  loc_AF6EE2: LateMemCall
  loc_AF6EE8: LitVarStr var_94, "  <tr align=""center"" valign=""middle"">"
  loc_AF6EED: PopAdLdVar
  loc_AF6EEE: FLdPr Me
  loc_AF6EF1: MemLdRfVar from_stack_1.global_60
  loc_AF6EF4: LdPrVar
  loc_AF6EF6: LateMemCall
  loc_AF6EFC: LitVarStr var_A4, "     <td height=""50"" class=""Recuadro"">"
  loc_AF6F01: LitVarStr var_94, "Dirección de Rentas"
  loc_AF6F06: FStVarCopyObj var_B4
  loc_AF6F09: FLdRfVar var_B4
  loc_AF6F0C: FLdRfVar var_C4
  loc_AF6F0F: ImpAdCallFPR4  = Ucase()
  loc_AF6F14: FLdRfVar var_C4
  loc_AF6F17: ConcatVar var_D4
  loc_AF6F1B: LitVarStr var_E4, " - "
  loc_AF6F20: ConcatVar var_F4
  loc_AF6F24: LitVarStr var_104, "Municipalidad de Guaymallén"
  loc_AF6F29: FStVarCopyObj var_114
  loc_AF6F2C: FLdRfVar var_114
  loc_AF6F2F: FLdRfVar var_124
  loc_AF6F32: ImpAdCallFPR4  = Ucase()
  loc_AF6F37: FLdRfVar var_124
  loc_AF6F3A: ConcatVar var_134
  loc_AF6F3E: LitVarStr var_144, "<br>"
  loc_AF6F43: ConcatVar var_154
  loc_AF6F47: PopAdLdVar
  loc_AF6F48: FLdPr Me
  loc_AF6F4B: MemLdRfVar from_stack_1.global_60
  loc_AF6F4E: LdPrVar
  loc_AF6F50: LateMemCall
  loc_AF6F56: FFreeVar var_B4 = "": var_C4 = "": var_D4 = "": var_114 = "": var_F4 = "": var_124 = "": var_134 = ""
  loc_AF6F69: LitStr "       "
  loc_AF6F6C: LitStr "Libertad 720 - Villa Nueva"
  loc_AF6F6F: ConcatStr
  loc_AF6F70: FStStrNoPop var_168
  loc_AF6F73: LitStr " - TEL.: "
  loc_AF6F76: ConcatStr
  loc_AF6F77: FStStrNoPop var_16C
  loc_AF6F7A: LitStr "Atención y mejora Continua 4498181 o por Asistencia Virtual vÍa wsp al 2615068885"
  loc_AF6F7D: ConcatStr
  loc_AF6F7E: FStStrNoPop var_170
  loc_AF6F81: LitStr "</td>"
  loc_AF6F84: ConcatStr
  loc_AF6F85: CVarStr var_B4
  loc_AF6F88: PopAdLdVar
  loc_AF6F89: FLdPr Me
  loc_AF6F8C: MemLdRfVar from_stack_1.global_60
  loc_AF6F8F: LdPrVar
  loc_AF6F91: LateMemCall
  loc_AF6F97: FFreeStr var_168 = "": var_16C = ""
  loc_AF6FA0: FFree1Var var_B4 = ""
  loc_AF6FA3: LitVarStr var_94, "  </tr>"
  loc_AF6FA8: PopAdLdVar
  loc_AF6FA9: FLdPr Me
  loc_AF6FAC: MemLdRfVar from_stack_1.global_60
  loc_AF6FAF: LdPrVar
  loc_AF6FB1: LateMemCall
  loc_AF6FB7: LitVarStr var_94, "  </table></td></tr>"
  loc_AF6FBC: PopAdLdVar
  loc_AF6FBD: FLdPr Me
  loc_AF6FC0: MemLdRfVar from_stack_1.global_60
  loc_AF6FC3: LdPrVar
  loc_AF6FC5: LateMemCall
  loc_AF6FCB: LitVarStr var_94, "  <tr class=""Revision"">"
  loc_AF6FD0: PopAdLdVar
  loc_AF6FD1: FLdPr Me
  loc_AF6FD4: MemLdRfVar from_stack_1.global_60
  loc_AF6FD7: LdPrVar
  loc_AF6FD9: LateMemCall
  loc_AF6FDF: LitVarStr var_94, "    <td nowrap=""nowrap"" height=""40"" align=""left"" valign=""bottom"">www.infogov.com.ar</td>"
  loc_AF6FE4: PopAdLdVar
  loc_AF6FE5: FLdPr Me
  loc_AF6FE8: MemLdRfVar from_stack_1.global_60
  loc_AF6FEB: LdPrVar
  loc_AF6FED: LateMemCall
  loc_AF6FF3: LitStr "    <td nowrap=""nowrap"" height=""40"" align=""right"" valign=""bottom"">Usuario: "
  loc_AF6FF6: ImpAdLdI4 MemVar_D9302C
  loc_AF6FF9: ConcatStr
  loc_AF6FFA: FStStrNoPop var_168
  loc_AF6FFD: LitStr "</td>"
  loc_AF7000: ConcatStr
  loc_AF7001: CVarStr var_B4
  loc_AF7004: PopAdLdVar
  loc_AF7005: FLdPr Me
  loc_AF7008: MemLdRfVar from_stack_1.global_60
  loc_AF700B: LdPrVar
  loc_AF700D: LateMemCall
  loc_AF7013: FFree1Str var_168
  loc_AF7016: FFree1Var var_B4 = ""
  loc_AF7019: LitVarStr var_94, "  </tr>"
  loc_AF701E: PopAdLdVar
  loc_AF701F: FLdPr Me
  loc_AF7022: MemLdRfVar from_stack_1.global_60
  loc_AF7025: LdPrVar
  loc_AF7027: LateMemCall
  loc_AF702D: LitVarStr var_94, "</table></td></tr>"
  loc_AF7032: PopAdLdVar
  loc_AF7033: FLdPr Me
  loc_AF7036: MemLdRfVar from_stack_1.global_60
  loc_AF7039: LdPrVar
  loc_AF703B: LateMemCall
  loc_AF7041: LitVarStr var_94, "</table>"
  loc_AF7046: PopAdLdVar
  loc_AF7047: FLdPr Me
  loc_AF704A: MemLdRfVar from_stack_1.global_60
  loc_AF704D: LdPrVar
  loc_AF704F: LateMemCall
  loc_AF7055: LitVarStr var_94, "</body>"
  loc_AF705A: PopAdLdVar
  loc_AF705B: FLdPr Me
  loc_AF705E: MemLdRfVar from_stack_1.global_60
  loc_AF7061: LdPrVar
  loc_AF7063: LateMemCall
  loc_AF7069: LitVarStr var_94, "</html>"
  loc_AF706E: PopAdLdVar
  loc_AF706F: FLdPr Me
  loc_AF7072: MemLdRfVar from_stack_1.global_60
  loc_AF7075: LdPrVar
  loc_AF7077: LateMemCall
  loc_AF707D: ExitProcHresult
End Function
