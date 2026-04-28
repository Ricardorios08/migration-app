VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptA2988AnexoX
  Caption = "Acuerdo 2988 - Anexo X"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptA2988AnexoX.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9285
  ClientHeight = 2655
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 2400
    Width = 9285
    Height = 255
    TabIndex = 13
    OleObjectBlob = "rptA2988AnexoX.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 8040
    Top = 360
    Width = 735
    Height = 615
    TabIndex = 4
    Cancel = -1  'True
    Picture = "rptA2988AnexoX.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptA2988AnexoX.frx":0B9C
    Left = 3120
    Top = 360
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 1200
    Width = 5895
    Height = 1095
    TabIndex = 9
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 3000
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 12
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 11
    End
    Begin VB.CommandButton cmdHtml
      Caption = "&HTML"
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 10
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 1200
    Width = 3015
    Height = 1095
    TabIndex = 6
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 8
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 7
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 7455
    Height = 1095
    TabIndex = 0
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 3840
      Top = 330
      Width = 2655
      Height = 495
      TabIndex = 3
    End
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1575
      Top = 420
      Width = 975
      Height = 315
      TabIndex = 2
    End
    Begin VB.Label Label1
      Caption = "Periodo:"
      Left = 855
      Top = 480
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8160
    Top = 480
    Width = 495
    Height = 375
    TabStop = 0   'False
    TabIndex = 5
    OleObjectBlob = "rptA2988AnexoX.frx":0C00
  End
End

Attribute VB_Name = "rptA2988AnexoX"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00588C34
  bStruc(44) As Byte ' String fields: 11
End Type


Private Sub cmdSalir_Click() '976DD8
  'Data Table: 43E594
  loc_976DA8: LitVarStr var_94, "Cerrando..."
  loc_976DAD: PopAdLdVar
  loc_976DAE: FLdPr Me
  loc_976DB1: VCallAd Control_ID_statusBar
  loc_976DB4: FStAdFunc var_A8
  loc_976DB7: FLdPr var_A8
  loc_976DBA: LateIdSt
  loc_976DBF: FFree1Ad var_A8
  loc_976DC2: ILdRf Me
  loc_976DC5: FStAdNoPop
  loc_976DC9: ImpAdLdRf MemVar_C44F9C
  loc_976DCC: NewIfNullPr Me
  loc_976DCF: Me.Global.Unload from_stack_1
  loc_976DD4: FFree1Ad var_A8
  loc_976DD7: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96B30C
  'Data Table: 43E594
  loc_96B2F0: LitI2_Byte &HFF
  loc_96B2F2: LitI2_Byte 0
  loc_96B2F4: ILdRf Me
  loc_96B2F7: CastAd
  loc_96B2FA: FStAdFunc var_88
  loc_96B2FD: FLdRfVar var_88
  loc_96B300: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96B305: FFree1Ad var_88
  loc_96B308: ExitProcHresult
  loc_96B309: DestructRecord
End Sub

Private Sub cmdHtml_Click() '956F98
  'Data Table: 43E594
  loc_956F80: ILdRf Me
  loc_956F83: CastAd
  loc_956F86: FStAdFunc var_88
  loc_956F89: FLdRfVar var_88
  loc_956F8C: ImpAdCallFPR4 Proc_263_5_9C6568()
  loc_956F91: FFree1Ad var_88
  loc_956F94: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '992264
  'Data Table: 43E594
  loc_992214: LitI2_Byte 0
  loc_992216: FLdPr Me
  loc_992219: MemStI2 bGenerado
  loc_99221C: LitI2_Byte &HFF
  loc_99221E: FLdPr Me
  loc_992221: MemStI2 bLogos
  loc_992224: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_992229: ImpAdLdI2 MemVar_C3D064
  loc_99222C: CStrUI1
  loc_99222E: FStStrNoPop var_88
  loc_992231: FLdPr Me
  loc_992234: VCallAd Control_ID_cboPeriodo
  loc_992237: FStAdFunc var_8C
  loc_99223A: FLdPr var_8C
  loc_99223D: Me.Text = from_stack_1
  loc_992242: FFree1Str var_88
  loc_992245: FFree1Ad var_8C
  loc_992248: Call HabilitarCriterio()
  loc_99224D: ILdRf Me
  loc_992250: CastAd
  loc_992253: FStAdFunc var_8C
  loc_992256: FLdRfVar var_8C
  loc_992259: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_99225E: FFree1Ad var_8C
  loc_992261: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '95EEF4
  'Data Table: 43E594
  loc_95EEDC: ILdRf Me
  loc_95EEDF: CastAd
  loc_95EEE2: FStAdFunc var_88
  loc_95EEE5: FLdRfVar var_88
  loc_95EEE8: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_95EEED: FFree1Ad var_88
  loc_95EEF0: ExitProcHresult
  loc_95EEF1: StAryMove
End Sub

Private Sub cmdPdf_Click() '98F7C0
  'Data Table: 43E594
  loc_98F778: LitStr "Acuerdo 2988 Anexo X "
  loc_98F77B: FLdRfVar var_8C
  loc_98F77E: FLdPr Me
  loc_98F781: VCallAd Control_ID_cboPeriodo
  loc_98F784: FStAdFunc var_88
  loc_98F787: FLdPr var_88
  loc_98F78A:  = Me.Text
  loc_98F78F: ILdRf var_8C
  loc_98F792: ConcatStr
  loc_98F793: FStStrNoPop var_90
  loc_98F796: FLdPr Me
  loc_98F799: Me.Tag = from_stack_1
  loc_98F79E: FFreeStr var_8C = ""
  loc_98F7A5: FFree1Ad var_88
  loc_98F7A8: LitI2_Byte 0
  loc_98F7AA: ILdRf Me
  loc_98F7AD: CastAd
  loc_98F7B0: FStAdFunc var_88
  loc_98F7B3: FLdRfVar var_88
  loc_98F7B6: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_98F7BB: FFree1Ad var_88
  loc_98F7BE: ExitProcHresult
  loc_98F7BF: PopAdLdVar
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '988BDC
  'Data Table: 43E594
  loc_988BA4: FLdPr Me
  loc_988BA7: VCallAd Control_ID_statusBar
  loc_988BAA: FStAdFunc var_88
  loc_988BAD: FLdPr var_88
  loc_988BB0: LateIdLdVar var_98 DispID_1 0
  loc_988BB7: CStrVarTmp
  loc_988BB8: CVarStr var_A8
  loc_988BBB: PopAdLdVar
  loc_988BBC: FLdPr Me
  loc_988BBF: VCallAd Control_ID_statusBar
  loc_988BC2: FStAdFunc var_BC
  loc_988BC5: FLdPr var_BC
  loc_988BC8: LateIdSt
  loc_988BCD: FFreeAd var_88 = ""
  loc_988BD4: FFreeVar var_98 = ""
  loc_988BDB: ExitProcHresult
End Sub

Private Sub cmdPrevia_Click() '956B70
  'Data Table: 43E594
  loc_956B58: ILdRf Me
  loc_956B5B: CastAd
  loc_956B5E: FStAdFunc var_88
  loc_956B61: FLdRfVar var_88
  loc_956B64: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_956B69: FFree1Ad var_88
  loc_956B6C: ExitProcHresult
  loc_956B6D: BranchF loc_956BE8
End Sub

Private Sub Form_Load() '9CFBAC
  'Data Table: 43E594
  loc_9CFAD4: LitI2_Byte &HFF
  loc_9CFAD6: ImpAdStI2 MemVar_C3D840
  loc_9CFAD9: ILdRf Me
  loc_9CFADC: CastAd
  loc_9CFADF: FStAdFunc var_8C
  loc_9CFAE2: FLdRfVar var_8C
  loc_9CFAE5: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9CFAEA: FFree1Ad var_8C
  loc_9CFAED: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9CFAF0: FLdRfVar var_88
  loc_9CFAF3: NewIfNullPr clsperiodo
  loc_9CFAF6: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9CFAFB: FLdRfVar var_90
  loc_9CFAFE: FLdRfVar var_88
  loc_9CFB01: NewIfNullPr clsperiodo
  loc_9CFB04: from_stack_1 = clsperiodo.RecordCount
  loc_9CFB09: ILdRf var_90
  loc_9CFB0C: LitI4 0
  loc_9CFB11: GtI4
  loc_9CFB12: BranchF loc_9CFBA5
  loc_9CFB15: FLdRfVar var_88
  loc_9CFB18: NewIfNullPr clsperiodo
  loc_9CFB1B: Call clsperiodo.MoveFirst()
  loc_9CFB20: FLdRfVar var_92
  loc_9CFB23: FLdRfVar var_88
  loc_9CFB26: NewIfNullPr clsperiodo
  loc_9CFB29: from_stack_1 = clsperiodo.EOF
  loc_9CFB2E: FLdI2 var_92
  loc_9CFB31: NotI4
  loc_9CFB32: BranchF loc_9CFBA5
  loc_9CFB35: LitVar_Missing var_D0
  loc_9CFB38: PopAdLdVar
  loc_9CFB39: FLdRfVar var_BC
  loc_9CFB3C: FLdRfVar var_AC
  loc_9CFB3F: LitVarStr var_A8, "PeriInfo"
  loc_9CFB44: PopAdLdVar
  loc_9CFB45: FLdRfVar var_98
  loc_9CFB48: FLdRfVar var_8C
  loc_9CFB4B: FLdRfVar var_88
  loc_9CFB4E: NewIfNullPr clsperiodo
  loc_9CFB51: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9CFB56: FLdPr var_8C
  loc_9CFB59:  = Me.Fields
  loc_9CFB5E: FLdPr var_98
  loc_9CFB61: from_stack_2 = Me.Item(from_stack_1)
  loc_9CFB66: FLdPr var_AC
  loc_9CFB69:  = Me.Value
  loc_9CFB6E: FLdRfVar var_BC
  loc_9CFB71: CStrVarTmp
  loc_9CFB72: FStStrNoPop var_C0
  loc_9CFB75: FLdPr Me
  loc_9CFB78: VCallAd Control_ID_cboPeriodo
  loc_9CFB7B: FStAdFunc var_D4
  loc_9CFB7E: FLdPr var_D4
  loc_9CFB81: Me.AddItem from_stack_1, from_stack_2
  loc_9CFB86: FFree1Str var_C0
  loc_9CFB89: FFreeAd var_8C = "": var_98 = "": var_AC = ""
  loc_9CFB94: FFree1Var var_BC = ""
  loc_9CFB97: FLdRfVar var_88
  loc_9CFB9A: NewIfNullPr clsperiodo
  loc_9CFB9D: Call clsperiodo.MoveSiguiente()
  loc_9CFBA2: Branch loc_9CFB20
  loc_9CFBA5: Call cmdNueva_Click()
  loc_9CFBAA: ExitProcHresult
End Sub

Private Sub Form_Unload(Cancel As Integer) '966B58
  'Data Table: 43E594
  loc_966B40: FLdPr Me
  loc_966B43: VCallAd Control_ID_wbbReporte
  loc_966B46: FStAdFunc var_88
  loc_966B49: FLdRfVar var_88
  loc_966B4C: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_966B51: FFree1Ad var_88
  loc_966B54: ExitProcHresult
End Sub

Public Function htmFileGet() '43F114
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '43F123
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '43F132
  htmFile = Value
End Sub

Public Function bLogosGet() '43F141
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '43F150
  bLogos = Value
End Sub

Public Function bGeneradoGet() '43F15F
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '43F16E
  bGenerado = Value
End Sub

Public Sub HabilitarCriterio() '984C50
  'Data Table: 43E594
  loc_984C1C: LitI4 0
  loc_984C21: LitI4 0
  loc_984C26: FLdRfVar var_88
  loc_984C29: Redim
  loc_984C33: FLdPr Me
  loc_984C36: VCallAd Control_ID_cboPeriodo
  loc_984C39: CVarAd
  loc_984C3D: ParmAry1St
  loc_984C43: FLdRfVar var_88
  loc_984C46: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_984C4B: FLdRfVar var_88
  loc_984C4E: Erase
  loc_984C4F: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B5B374
  'Data Table: 43E594
  loc_B5A8B4: FLdPr Me
  loc_B5A8B7: MemLdI2 bGenerado
  loc_B5A8BA: BranchF loc_B5A8BE
  loc_B5A8BD: ExitProcHresult
  loc_B5A8BE: LitVarStr var_98, "Generando reporte..."
  loc_B5A8C3: PopAdLdVar
  loc_B5A8C4: FLdPr Me
  loc_B5A8C7: VCallAd Control_ID_statusBar
  loc_B5A8CA: FStAdFunc var_AC
  loc_B5A8CD: FLdPr var_AC
  loc_B5A8D0: LateIdSt
  loc_B5A8D5: FFree1Ad var_AC
  loc_B5A8D8: LitI4 &HB
  loc_B5A8DD: CI2I4
  loc_B5A8DE: FLdPr Me
  loc_B5A8E1: Me.MousePointer = from_stack_1
  loc_B5A8E6: FLdPr Me
  loc_B5A8E9: MemLdRfVar from_stack_1.global_72
  loc_B5A8EC: NewIfNullAd
  loc_B5A8EF: FStAd var_B0 
  loc_B5A8F3: LitStr "SELECT ParpPaco, CcrpPaco"
  loc_B5A8F6: LitStr " FROM paraconta"
  loc_B5A8F9: ConcatStr
  loc_B5A8FA: FStStrNoPop var_B4
  loc_B5A8FD: LitStr " WHERE PeriInfo = "
  loc_B5A900: ConcatStr
  loc_B5A901: FStStrNoPop var_BC
  loc_B5A904: FLdRfVar var_B8
  loc_B5A907: FLdPr Me
  loc_B5A90A: VCallAd Control_ID_cboPeriodo
  loc_B5A90D: FStAdFunc var_AC
  loc_B5A910: FLdPr var_AC
  loc_B5A913:  = Me.Text
  loc_B5A918: ILdRf var_B8
  loc_B5A91B: ConcatStr
  loc_B5A91C: FStStrNoPop var_C0
  loc_B5A91F: FLdPr var_B0
  loc_B5A922: Call clsbase.RedefineRS(from_stack_1v)
  loc_B5A927: FFreeStr var_B4 = "": var_BC = "": var_B8 = ""
  loc_B5A932: FFree1Ad var_AC
  loc_B5A935: FLdRfVar var_D8
  loc_B5A938: FLdRfVar var_C8
  loc_B5A93B: LitVarStr var_98, "ParpPaco"
  loc_B5A940: PopAdLdVar
  loc_B5A941: FLdRfVar var_C4
  loc_B5A944: FLdRfVar var_AC
  loc_B5A947: FLdPr var_B0
  loc_B5A94A: from_stack_1v = clsbase.RsFrmGet()
  loc_B5A94F: FLdPr var_AC
  loc_B5A952:  = Me.Fields
  loc_B5A957: FLdPr var_C4
  loc_B5A95A: from_stack_2 = Me.Item(from_stack_1)
  loc_B5A95F: FLdPr var_C8
  loc_B5A962:  = Me.Value
  loc_B5A967: FLdRfVar var_D8
  loc_B5A96A: LitVarStr var_A8, vbNullString
  loc_B5A96F: HardType
  loc_B5A970: NeVarBool
  loc_B5A972: FFreeAd var_AC = "": var_C4 = ""
  loc_B5A97B: FFree1Var var_D8 = ""
  loc_B5A97E: BranchF loc_B5ABA6
  loc_B5A981: FLdRfVar var_D8
  loc_B5A984: FLdRfVar var_C8
  loc_B5A987: LitVarStr var_98, "ParpPaco"
  loc_B5A98C: PopAdLdVar
  loc_B5A98D: FLdRfVar var_C4
  loc_B5A990: FLdRfVar var_AC
  loc_B5A993: FLdPr var_B0
  loc_B5A996: from_stack_1v = clsbase.RsFrmGet()
  loc_B5A99B: FLdPr var_AC
  loc_B5A99E:  = Me.Fields
  loc_B5A9A3: FLdPr var_C4
  loc_B5A9A6: from_stack_2 = Me.Item(from_stack_1)
  loc_B5A9AB: FLdPr var_C8
  loc_B5A9AE:  = Me.Value
  loc_B5A9B3: FLdRfVar var_D8
  loc_B5A9B6: CStrVarTmp
  loc_B5A9B7: FStStr var_88
  loc_B5A9BA: FFreeAd var_AC = "": var_C4 = ""
  loc_B5A9C3: FFree1Var var_D8 = ""
  loc_B5A9C6: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_B5A9C9: LitStr " CREATE TEMPORARY TABLE movi` ("
  loc_B5A9CC: ConcatStr
  loc_B5A9CD: FStStrNoPop var_B4
  loc_B5A9D0: LitStr "  eriInfo` year(4) NOT NULL default '0000',"
  loc_B5A9D3: ConcatStr
  loc_B5A9D4: FStStrNoPop var_B8
  loc_B5A9D7: LitStr "  xpeImpu` varchar(15) NOT NULL default '',"
  loc_B5A9DA: ConcatStr
  loc_B5A9DB: FStStrNoPop var_BC
  loc_B5A9DE: LitStr "  ucuPers` bigint(11) unsigned NOT NULL default '0',"
  loc_B5A9E1: ConcatStr
  loc_B5A9E2: FStStrNoPop var_C0
  loc_B5A9E5: LitStr "  aldInic` decimal(14,2) NOT NULL default '0.00',"
  loc_B5A9E8: ConcatStr
  loc_B5A9E9: FStStrNoPop var_EC
  loc_B5A9EC: LitStr "  jusSain` decimal(14,2) NOT NULL default '0.00',"
  loc_B5A9EF: ConcatStr
  loc_B5A9F0: FStStrNoPop var_F0
  loc_B5A9F3: LitStr "  umeOrpa` int(4) NOT NULL default '0',"
  loc_B5A9F6: ConcatStr
  loc_B5A9F7: FStStrNoPop var_F4
  loc_B5A9FA: LitStr "  apaImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_B5A9FD: ConcatStr
  loc_B5A9FE: FStStrNoPop var_F8
  loc_B5AA01: LitStr "  earOrpa` date default NULL,"
  loc_B5AA04: ConcatStr
  loc_B5AA05: FStStrNoPop var_FC
  loc_B5AA08: LitStr "  agaImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_B5AA0B: ConcatStr
  loc_B5AA0C: FStStrNoPop var_100
  loc_B5AA0F: LitStr "   KEY dxtmp2` (`PeriInfo`,`ExpeImpu`,`CucuPers`)"
  loc_B5AA12: ConcatStr
  loc_B5AA13: FStStrNoPop var_104
  loc_B5AA16: LitStr " ) ENGINE=MyISAM ;"
  loc_B5AA19: ConcatStr
  loc_B5AA1A: FStStrNoPop var_108
  loc_B5AA1D: FLdPr var_B0
  loc_B5AA20: Call clsbase.RedefineRS(from_stack_1v)
  loc_B5AA25: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_B5AA40: LitStr "INSERT INTO tmovi (PeriInfo,ExpeImpu,CucuPers,SaldInic,AjusSain)"
  loc_B5AA43: LitStr " SELECT i.PeriInfo, i.ExpeImpu, i.CucuPers, Sum(If(AjrpDeve=0,DeveImpu,0)) SaldInic, Sum(If(AjciDeve=1,DeveImpu,0)) AjusSain"
  loc_B5AA46: ConcatStr
  loc_B5AA47: FStStrNoPop var_B4
  loc_B5AA4A: LitStr " FROM imputacion i"
  loc_B5AA4D: ConcatStr
  loc_B5AA4E: FStStrNoPop var_B8
  loc_B5AA51: LitStr " INNER JOIN devengado d ON d.PeriInfo = i.PeriInfo AND d.IdImpu = i.IdImpu"
  loc_B5AA54: ConcatStr
  loc_B5AA55: FStStrNoPop var_BC
  loc_B5AA58: LitStr " WHERE i.PeriInfo = "
  loc_B5AA5B: ConcatStr
  loc_B5AA5C: FStStrNoPop var_EC
  loc_B5AA5F: FLdRfVar var_C0
  loc_B5AA62: FLdPr Me
  loc_B5AA65: VCallAd Control_ID_cboPeriodo
  loc_B5AA68: FStAdFunc var_AC
  loc_B5AA6B: FLdPr var_AC
  loc_B5AA6E:  = Me.Text
  loc_B5AA73: ILdRf var_C0
  loc_B5AA76: ConcatStr
  loc_B5AA77: FStStrNoPop var_F0
  loc_B5AA7A: LitStr " AND i.CodiPart = '"
  loc_B5AA7D: ConcatStr
  loc_B5AA7E: FStStrNoPop var_F4
  loc_B5AA81: ILdRf var_88
  loc_B5AA84: ConcatStr
  loc_B5AA85: FStStrNoPop var_F8
  loc_B5AA88: LitStr "'"
  loc_B5AA8B: ConcatStr
  loc_B5AA8C: FStStrNoPop var_FC
  loc_B5AA8F: LitStr " GROUP BY PeriInfo, ExpeImpu, CucuPers"
  loc_B5AA92: ConcatStr
  loc_B5AA93: FStStrNoPop var_100
  loc_B5AA96: LitStr " HAVING SaldInic > 0 ORDER BY ExpeImpu;"
  loc_B5AA99: ConcatStr
  loc_B5AA9A: FStStrNoPop var_104
  loc_B5AA9D: FLdPr var_B0
  loc_B5AAA0: Call clsbase.RedefineRS(from_stack_1v)
  loc_B5AAA5: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_EC = "": var_C0 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = ""
  loc_B5AABE: FFree1Ad var_AC
  loc_B5AAC1: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi2;"
  loc_B5AAC4: LitStr " CREATE TEMPORARY TABLE tmovi2"
  loc_B5AAC7: ConcatStr
  loc_B5AAC8: FStStrNoPop var_B4
  loc_B5AACB: LitStr " SELECT * FROM tmovi;"
  loc_B5AACE: ConcatStr
  loc_B5AACF: FStStrNoPop var_B8
  loc_B5AAD2: LitStr " ALTER TABLE movi2` ADD INDEX `idxtmp2` (`PeriInfo`, `ExpeImpu`, `CucuPers`);"
  loc_B5AAD5: ConcatStr
  loc_B5AAD6: FStStrNoPop var_BC
  loc_B5AAD9: LitStr " INSERT INTO tmovi (PeriInfo, ExpeImpu, CucuPers, NumeOrpa, MapaImpu)"
  loc_B5AADC: ConcatStr
  loc_B5AADD: FStStrNoPop var_C0
  loc_B5AAE0: LitStr " SELECT tmovi2.PeriInfo, tmovi2.ExpeImpu, tmovi2.CucuPers, mp.NumeOrpa, Sum(mp.MapaImpu)"
  loc_B5AAE3: ConcatStr
  loc_B5AAE4: FStStrNoPop var_EC
  loc_B5AAE7: LitStr " FROM tmovi2"
  loc_B5AAEA: ConcatStr
  loc_B5AAEB: FStStrNoPop var_F0
  loc_B5AAEE: LitStr " INNER JOIN imputacion mp ON mp.PeriInfo = tmovi2.PeriInfo AND mp.ExpeImpu = tmovi2.ExpeImpu AND mp.CucuPers = tmovi2.CucuPers AND mp.CodiPart = '"
  loc_B5AAF1: ConcatStr
  loc_B5AAF2: FStStrNoPop var_F4
  loc_B5AAF5: ILdRf var_88
  loc_B5AAF8: ConcatStr
  loc_B5AAF9: FStStrNoPop var_F8
  loc_B5AAFC: LitStr "'"
  loc_B5AAFF: ConcatStr
  loc_B5AB00: FStStrNoPop var_FC
  loc_B5AB03: LitStr " INNER JOIN ordenpago ON ordenpago.PeriInfo = mp.PeriInfo AND ordenpago.NumeOrpa = mp.NumeOrpa AND FeanOrpa IS NULL"
  loc_B5AB06: ConcatStr
  loc_B5AB07: FStStrNoPop var_100
  loc_B5AB0A: LitStr " GROUP BY PeriInfo, ExpeImpu, CucuPers;"
  loc_B5AB0D: ConcatStr
  loc_B5AB0E: FStStrNoPop var_104
  loc_B5AB11: LitStr " INSERT INTO tmovi (PeriInfo, ExpeImpu, CucuPers, FearOrpa, PagaImpu)"
  loc_B5AB14: ConcatStr
  loc_B5AB15: FStStrNoPop var_108
  loc_B5AB18: LitStr " SELECT tmovi2.PeriInfo, tmovi2.ExpeImpu, tmovi2.CucuPers, ordenpago.FearOrpa, Sum(mp.PagaImpu)"
  loc_B5AB1B: ConcatStr
  loc_B5AB1C: FStStrNoPop var_10C
  loc_B5AB1F: LitStr " FROM tmovi2"
  loc_B5AB22: ConcatStr
  loc_B5AB23: FStStrNoPop var_110
  loc_B5AB26: LitStr " INNER JOIN imputacion mp ON mp.PeriInfo = tmovi2.PeriInfo AND mp.ExpeImpu = tmovi2.ExpeImpu AND mp.CucuPers = tmovi2.CucuPers AND mp.CodiPart = '"
  loc_B5AB29: ConcatStr
  loc_B5AB2A: FStStrNoPop var_114
  loc_B5AB2D: ILdRf var_88
  loc_B5AB30: ConcatStr
  loc_B5AB31: FStStrNoPop var_118
  loc_B5AB34: LitStr "'"
  loc_B5AB37: ConcatStr
  loc_B5AB38: FStStrNoPop var_11C
  loc_B5AB3B: LitStr " INNER JOIN ordenpago ON ordenpago.PeriInfo = mp.PeriInfo AND ordenpago.NumeOrpa = mp.NumeOrpa AND FeanOrpa IS NULL"
  loc_B5AB3E: ConcatStr
  loc_B5AB3F: FStStrNoPop var_120
  loc_B5AB42: LitStr " GROUP BY PeriInfo, ExpeImpu, CucuPers;"
  loc_B5AB45: ConcatStr
  loc_B5AB46: FStStrNoPop var_124
  loc_B5AB49: FLdPr var_B0
  loc_B5AB4C: Call clsbase.RedefineRS(from_stack_1v)
  loc_B5AB51: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_B5AB7A: LitStr "SELECT PeriInfo, ExpeImpu, tmovi.CucuPers, DetaProv, Sum(SaldInic) SaldInic, Sum(AjusSain) AjusSain, Sum(NumeOrpa) NumeOrpa, Sum(MapaImpu) MapaImpu, CAST(IFNULL(Max(FearOrpa),'') AS DATE) FearOrpa, Sum(PagaImpu) PagaImpu, Sum(MapaImpu)-Sum(PagaImpu) DeexImpu, Sum(SaldInic)+Sum(AjusSain)-Sum(MapaImpu) RepaImpu"
  loc_B5AB7D: LitStr " FROM tmovi"
  loc_B5AB80: ConcatStr
  loc_B5AB81: FStStrNoPop var_B4
  loc_B5AB84: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = tmovi.CucuPers"
  loc_B5AB87: ConcatStr
  loc_B5AB88: FStStrNoPop var_B8
  loc_B5AB8B: LitStr " GROUP BY PeriInfo, ExpeImpu, CucuPers"
  loc_B5AB8E: ConcatStr
  loc_B5AB8F: FStStrNoPop var_BC
  loc_B5AB92: FLdPr var_B0
  loc_B5AB95: Call clsbase.RedefineRS(from_stack_1v)
  loc_B5AB9A: FFreeStr var_B4 = "": var_B8 = ""
  loc_B5ABA3: Branch loc_B5AE1D
  loc_B5ABA6: FLdRfVar var_D8
  loc_B5ABA9: FLdRfVar var_C8
  loc_B5ABAC: LitVarStr var_98, "CcrpPaco"
  loc_B5ABB1: PopAdLdVar
  loc_B5ABB2: FLdRfVar var_C4
  loc_B5ABB5: FLdRfVar var_AC
  loc_B5ABB8: FLdPr var_B0
  loc_B5ABBB: from_stack_1v = clsbase.RsFrmGet()
  loc_B5ABC0: FLdPr var_AC
  loc_B5ABC3:  = Me.Fields
  loc_B5ABC8: FLdPr var_C4
  loc_B5ABCB: from_stack_2 = Me.Item(from_stack_1)
  loc_B5ABD0: FLdPr var_C8
  loc_B5ABD3:  = Me.Value
  loc_B5ABD8: FLdRfVar var_D8
  loc_B5ABDB: LitVarStr var_A8, vbNullString
  loc_B5ABE0: HardType
  loc_B5ABE1: NeVarBool
  loc_B5ABE3: FFreeAd var_AC = "": var_C4 = ""
  loc_B5ABEC: FFree1Var var_D8 = ""
  loc_B5ABEF: BranchF loc_B5AE1D
  loc_B5ABF2: FLdRfVar var_D8
  loc_B5ABF5: FLdRfVar var_C8
  loc_B5ABF8: LitVarStr var_98, "CcrpPaco"
  loc_B5ABFD: PopAdLdVar
  loc_B5ABFE: FLdRfVar var_C4
  loc_B5AC01: FLdRfVar var_AC
  loc_B5AC04: FLdPr var_B0
  loc_B5AC07: from_stack_1v = clsbase.RsFrmGet()
  loc_B5AC0C: FLdPr var_AC
  loc_B5AC0F:  = Me.Fields
  loc_B5AC14: FLdPr var_C4
  loc_B5AC17: from_stack_2 = Me.Item(from_stack_1)
  loc_B5AC1C: FLdPr var_C8
  loc_B5AC1F:  = Me.Value
  loc_B5AC24: FLdRfVar var_D8
  loc_B5AC27: CStrVarTmp
  loc_B5AC28: FStStr var_88
  loc_B5AC2B: FFreeAd var_AC = "": var_C4 = ""
  loc_B5AC34: FFree1Var var_D8 = ""
  loc_B5AC37: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi;"
  loc_B5AC3A: LitStr " CREATE TEMPORARY TABLE movi` ("
  loc_B5AC3D: ConcatStr
  loc_B5AC3E: FStStrNoPop var_B4
  loc_B5AC41: LitStr "  eriInfo` year(4) NOT NULL default '0000',"
  loc_B5AC44: ConcatStr
  loc_B5AC45: FStStrNoPop var_B8
  loc_B5AC48: LitStr "  xpeImpu` varchar(15) NOT NULL default '',"
  loc_B5AC4B: ConcatStr
  loc_B5AC4C: FStStrNoPop var_BC
  loc_B5AC4F: LitStr "  ucuPers` bigint(11) unsigned NOT NULL default '0',"
  loc_B5AC52: ConcatStr
  loc_B5AC53: FStStrNoPop var_C0
  loc_B5AC56: LitStr "  aldInic` decimal(14,2) NOT NULL default '0.00',"
  loc_B5AC59: ConcatStr
  loc_B5AC5A: FStStrNoPop var_EC
  loc_B5AC5D: LitStr "  jusSain` decimal(14,2) NOT NULL default '0.00',"
  loc_B5AC60: ConcatStr
  loc_B5AC61: FStStrNoPop var_F0
  loc_B5AC64: LitStr "  umeOrpa` int(4) NOT NULL default '0',"
  loc_B5AC67: ConcatStr
  loc_B5AC68: FStStrNoPop var_F4
  loc_B5AC6B: LitStr "  apaImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_B5AC6E: ConcatStr
  loc_B5AC6F: FStStrNoPop var_F8
  loc_B5AC72: LitStr "  earOrpa` date default NULL,"
  loc_B5AC75: ConcatStr
  loc_B5AC76: FStStrNoPop var_FC
  loc_B5AC79: LitStr "  agaImpu` decimal(14,2) NOT NULL default '0.00',"
  loc_B5AC7C: ConcatStr
  loc_B5AC7D: FStStrNoPop var_100
  loc_B5AC80: LitStr "   KEY dxtmp2` (`PeriInfo`,`ExpeImpu`,`CucuPers`)"
  loc_B5AC83: ConcatStr
  loc_B5AC84: FStStrNoPop var_104
  loc_B5AC87: LitStr " ) "
  loc_B5AC8A: ConcatStr
  loc_B5AC8B: FStStrNoPop var_108
  loc_B5AC8E: FLdPr var_B0
  loc_B5AC91: Call clsbase.RedefineRS(from_stack_1v)
  loc_B5AC96: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_B5ACB1: LitStr "INSERT INTO tmovi (PeriInfo,ExpeImpu,CucuPers,SaldInic,AjusSain)"
  loc_B5ACB4: LitStr " SELECT d.PeriInfo, d.ExpeImpu, d.CucuPers"
  loc_B5ACB7: ConcatStr
  loc_B5ACB8: FStStrNoPop var_B4
  loc_B5ACBB: LitStr ", Sum(ImpoDebi) SaldInic, Sum(If(AjrpDebi=1,ImpoDebi,0)) AjusSain"
  loc_B5ACBE: ConcatStr
  loc_B5ACBF: FStStrNoPop var_B8
  loc_B5ACC2: LitStr " FROM debito d"
  loc_B5ACC5: ConcatStr
  loc_B5ACC6: FStStrNoPop var_BC
  loc_B5ACC9: LitStr " WHERE d.PeriInfo = "
  loc_B5ACCC: ConcatStr
  loc_B5ACCD: FStStrNoPop var_EC
  loc_B5ACD0: FLdRfVar var_C0
  loc_B5ACD3: FLdPr Me
  loc_B5ACD6: VCallAd Control_ID_cboPeriodo
  loc_B5ACD9: FStAdFunc var_AC
  loc_B5ACDC: FLdPr var_AC
  loc_B5ACDF:  = Me.Text
  loc_B5ACE4: ILdRf var_C0
  loc_B5ACE7: ConcatStr
  loc_B5ACE8: FStStrNoPop var_F0
  loc_B5ACEB: LitStr " AND d.CodiCuco = '"
  loc_B5ACEE: ConcatStr
  loc_B5ACEF: FStStrNoPop var_F4
  loc_B5ACF2: ILdRf var_88
  loc_B5ACF5: ConcatStr
  loc_B5ACF6: FStStrNoPop var_F8
  loc_B5ACF9: LitStr "'"
  loc_B5ACFC: ConcatStr
  loc_B5ACFD: FStStrNoPop var_FC
  loc_B5AD00: LitStr " AND (FeanDebi IS NULL OR AjrpDebi = 1)"
  loc_B5AD03: ConcatStr
  loc_B5AD04: FStStrNoPop var_100
  loc_B5AD07: LitStr " GROUP BY PeriInfo, ExpeImpu, CucuPers"
  loc_B5AD0A: ConcatStr
  loc_B5AD0B: FStStrNoPop var_104
  loc_B5AD0E: LitStr " ORDER BY ExpeImpu;"
  loc_B5AD11: ConcatStr
  loc_B5AD12: FStStrNoPop var_108
  loc_B5AD15: FLdPr var_B0
  loc_B5AD18: Call clsbase.RedefineRS(from_stack_1v)
  loc_B5AD1D: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_EC = "": var_C0 = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_B5AD38: FFree1Ad var_AC
  loc_B5AD3B: LitStr "DROP TEMPORARY TABLE IF EXISTS tmovi2;"
  loc_B5AD3E: LitStr " CREATE TEMPORARY TABLE tmovi2"
  loc_B5AD41: ConcatStr
  loc_B5AD42: FStStrNoPop var_B4
  loc_B5AD45: LitStr " SELECT * FROM tmovi;"
  loc_B5AD48: ConcatStr
  loc_B5AD49: FStStrNoPop var_B8
  loc_B5AD4C: LitStr " ALTER TABLE movi2` ADD INDEX `idxtmp2` (`PeriInfo`, `ExpeImpu`, `CucuPers`);"
  loc_B5AD4F: ConcatStr
  loc_B5AD50: FStStrNoPop var_BC
  loc_B5AD53: LitStr " INSERT INTO tmovi (PeriInfo, ExpeImpu, CucuPers, NumeOrpa, MapaImpu)"
  loc_B5AD56: ConcatStr
  loc_B5AD57: FStStrNoPop var_C0
  loc_B5AD5A: LitStr " SELECT tmovi2.PeriInfo, tmovi2.ExpeImpu, tmovi2.CucuPers, o.NumeOrpa, Sum(ld.ImpoImpu)"
  loc_B5AD5D: ConcatStr
  loc_B5AD5E: FStStrNoPop var_EC
  loc_B5AD61: LitStr " FROM tmovi2"
  loc_B5AD64: ConcatStr
  loc_B5AD65: FStStrNoPop var_F0
  loc_B5AD68: LitStr " INNER JOIN liquidadeta ld ON ld.PeriInfo = tmovi2.PeriInfo AND ld.ExpeImpu = tmovi2.ExpeImpu AND ld.CucuPers = tmovi2.CucuPers AND ld.CodiCuco = '"
  loc_B5AD6B: ConcatStr
  loc_B5AD6C: FStStrNoPop var_F4
  loc_B5AD6F: ILdRf var_88
  loc_B5AD72: ConcatStr
  loc_B5AD73: FStStrNoPop var_F8
  loc_B5AD76: LitStr "' AND ld.FeanLide IS NULL"
  loc_B5AD79: ConcatStr
  loc_B5AD7A: FStStrNoPop var_FC
  loc_B5AD7D: LitStr " INNER JOIN ordenpago o ON o.PeriInfo = ld.PeriInfo AND o.ExpeImpu = ld.ExpeImpu AND o.NumeLiqu = ld.NumeLiqu AND o.FeanOrpa IS NULL"
  loc_B5AD80: ConcatStr
  loc_B5AD81: FStStrNoPop var_100
  loc_B5AD84: LitStr " GROUP BY PeriInfo, ExpeImpu, CucuPers;"
  loc_B5AD87: ConcatStr
  loc_B5AD88: FStStrNoPop var_104
  loc_B5AD8B: LitStr " INSERT INTO tmovi (PeriInfo, ExpeImpu, CucuPers, FearOrpa, PagaImpu)"
  loc_B5AD8E: ConcatStr
  loc_B5AD8F: FStStrNoPop var_108
  loc_B5AD92: LitStr " SELECT tmovi2.PeriInfo, tmovi2.ExpeImpu, tmovi2.CucuPers, o.FearOrpa, Sum(ld.ImpoImpu)"
  loc_B5AD95: ConcatStr
  loc_B5AD96: FStStrNoPop var_10C
  loc_B5AD99: LitStr " FROM tmovi2"
  loc_B5AD9C: ConcatStr
  loc_B5AD9D: FStStrNoPop var_110
  loc_B5ADA0: LitStr " INNER JOIN liquidadeta ld ON ld.PeriInfo = tmovi2.PeriInfo AND ld.ExpeImpu = tmovi2.ExpeImpu AND ld.CucuPers = tmovi2.CucuPers AND ld.CodiCuco = '"
  loc_B5ADA3: ConcatStr
  loc_B5ADA4: FStStrNoPop var_114
  loc_B5ADA7: ILdRf var_88
  loc_B5ADAA: ConcatStr
  loc_B5ADAB: FStStrNoPop var_118
  loc_B5ADAE: LitStr "' AND ld.FeanLide IS NULL"
  loc_B5ADB1: ConcatStr
  loc_B5ADB2: FStStrNoPop var_11C
  loc_B5ADB5: LitStr " INNER JOIN ordenpago o ON o.PeriInfo = ld.PeriInfo AND o.ExpeImpu = ld.ExpeImpu AND o.NumeLiqu = ld.NumeLiqu AND o.FeanOrpa IS NULL AND o.FearOrpa IS NOT NULL"
  loc_B5ADB8: ConcatStr
  loc_B5ADB9: FStStrNoPop var_120
  loc_B5ADBC: LitStr " GROUP BY PeriInfo, ExpeImpu, CucuPers;"
  loc_B5ADBF: ConcatStr
  loc_B5ADC0: FStStrNoPop var_124
  loc_B5ADC3: FLdPr var_B0
  loc_B5ADC6: Call clsbase.RedefineRS(from_stack_1v)
  loc_B5ADCB: FFreeStr var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = "": var_118 = "": var_11C = "": var_120 = ""
  loc_B5ADF4: LitStr "SELECT PeriInfo, ExpeImpu, tmovi.CucuPers, DetaProv, Sum(SaldInic) SaldInic, Sum(AjusSain) AjusSain, Sum(NumeOrpa) NumeOrpa, Sum(MapaImpu) MapaImpu, CAST(IFNULL(Max(FearOrpa),'') AS DATE) FearOrpa, Sum(PagaImpu) PagaImpu, Sum(MapaImpu)-Sum(PagaImpu) DeexImpu, Sum(SaldInic)-Sum(AjusSain)-Sum(MapaImpu) RepaImpu"
  loc_B5ADF7: LitStr " FROM tmovi"
  loc_B5ADFA: ConcatStr
  loc_B5ADFB: FStStrNoPop var_B4
  loc_B5ADFE: LitStr " INNER JOIN proveedor ON proveedor.CucuPers = tmovi.CucuPers"
  loc_B5AE01: ConcatStr
  loc_B5AE02: FStStrNoPop var_B8
  loc_B5AE05: LitStr " GROUP BY PeriInfo, ExpeImpu, CucuPers"
  loc_B5AE08: ConcatStr
  loc_B5AE09: FStStrNoPop var_BC
  loc_B5AE0C: FLdPr var_B0
  loc_B5AE0F: Call clsbase.RedefineRS(from_stack_1v)
  loc_B5AE14: FFreeStr var_B4 = "": var_B8 = ""
  loc_B5AE1D: FLdRfVar var_128
  loc_B5AE20: FLdPr var_B0
  loc_B5AE23: from_stack_1 = clsbase.RecordCount
  loc_B5AE28: ILdRf var_128
  loc_B5AE2B: LitI4 0
  loc_B5AE30: EqI4
  loc_B5AE31: BranchF loc_B5AE44
  loc_B5AE34: LitI4 0
  loc_B5AE39: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B5AE3C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B5AE41: Branch loc_B5B34C
  loc_B5AE44: LitI4 0
  loc_B5AE49: FLdRfVar var_128
  loc_B5AE4C: FLdPr var_B0
  loc_B5AE4F: from_stack_1 = clsbase.RecordCount
  loc_B5AE54: ILdRf var_128
  loc_B5AE57: FLdPr Me
  loc_B5AE5A: MemLdRfVar from_stack_1.global_80
  loc_B5AE5D: Redim
  loc_B5AE67: LitI4 0
  loc_B5AE6C: LitI4 1
  loc_B5AE71: FLdPr Me
  loc_B5AE74: MemLdRfVar from_stack_1.global_88
  loc_B5AE77: Redim
  loc_B5AE81: LitI4 1
  loc_B5AE86: FLdPr Me
  loc_B5AE89: MemLdRfVar from_stack_1.global_84
  loc_B5AE8C: FLdPr Me
  loc_B5AE8F: MemLdStr global_80
  loc_B5AE92: LitI2_Byte 1
  loc_B5AE94: FnUBound
  loc_B5AE96: ForI4 var_130
  loc_B5AE9C: FLdRfVar var_C8
  loc_B5AE9F: LitVarStr var_98, "ExpeImpu"
  loc_B5AEA4: PopAdLdVar
  loc_B5AEA5: FLdRfVar var_C4
  loc_B5AEA8: FLdRfVar var_AC
  loc_B5AEAB: FLdPr var_B0
  loc_B5AEAE: from_stack_1v = clsbase.RsFrmGet()
  loc_B5AEB3: FLdPr var_AC
  loc_B5AEB6:  = Me.Fields
  loc_B5AEBB: FLdPr var_C4
  loc_B5AEBE: from_stack_2 = Me.Item(from_stack_1)
  loc_B5AEC3: LitI2_Byte 0
  loc_B5AEC5: LitVar_Missing var_E8
  loc_B5AEC8: LitI2_Byte 0
  loc_B5AECA: FLdZeroAd var_C8
  loc_B5AECD: CVarAd
  loc_B5AED1: PopAdLdVar
  loc_B5AED2: FLdPr Me
  loc_B5AED5: MemLdStr global_84
  loc_B5AED8: FLdPr Me
  loc_B5AEDB: MemLdStr global_80
  loc_B5AEDE: AryLock
  loc_B5AEE1: Ary1LdPr
  loc_B5AEE2: MemLdRfVar from_stack_1.global_0
  loc_B5AEE5: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B5AEEA: AryUnlock
  loc_B5AEED: FFreeAd var_AC = ""
  loc_B5AEF4: FFreeVar var_D8 = ""
  loc_B5AEFB: FLdRfVar var_C8
  loc_B5AEFE: LitVarStr var_98, "CucuPers"
  loc_B5AF03: PopAdLdVar
  loc_B5AF04: FLdRfVar var_C4
  loc_B5AF07: FLdRfVar var_AC
  loc_B5AF0A: FLdPr var_B0
  loc_B5AF0D: from_stack_1v = clsbase.RsFrmGet()
  loc_B5AF12: FLdPr var_AC
  loc_B5AF15:  = Me.Fields
  loc_B5AF1A: FLdPr var_C4
  loc_B5AF1D: from_stack_2 = Me.Item(from_stack_1)
  loc_B5AF22: LitI2_Byte 0
  loc_B5AF24: LitVar_Missing var_E8
  loc_B5AF27: LitI2_Byte 0
  loc_B5AF29: FLdZeroAd var_C8
  loc_B5AF2C: CVarAd
  loc_B5AF30: PopAdLdVar
  loc_B5AF31: FLdPr Me
  loc_B5AF34: MemLdStr global_84
  loc_B5AF37: FLdPr Me
  loc_B5AF3A: MemLdStr global_80
  loc_B5AF3D: AryLock
  loc_B5AF40: Ary1LdPr
  loc_B5AF41: MemLdRfVar from_stack_1.global_4
  loc_B5AF44: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B5AF49: AryUnlock
  loc_B5AF4C: FFreeAd var_AC = ""
  loc_B5AF53: FFreeVar var_D8 = ""
  loc_B5AF5A: FLdRfVar var_C8
  loc_B5AF5D: LitVarStr var_98, "DetaProv"
  loc_B5AF62: PopAdLdVar
  loc_B5AF63: FLdRfVar var_C4
  loc_B5AF66: FLdRfVar var_AC
  loc_B5AF69: FLdPr var_B0
  loc_B5AF6C: from_stack_1v = clsbase.RsFrmGet()
  loc_B5AF71: FLdPr var_AC
  loc_B5AF74:  = Me.Fields
  loc_B5AF79: FLdPr var_C4
  loc_B5AF7C: from_stack_2 = Me.Item(from_stack_1)
  loc_B5AF81: LitI2_Byte 0
  loc_B5AF83: LitVar_Missing var_E8
  loc_B5AF86: LitI2_Byte 0
  loc_B5AF88: FLdZeroAd var_C8
  loc_B5AF8B: CVarAd
  loc_B5AF8F: PopAdLdVar
  loc_B5AF90: FLdPr Me
  loc_B5AF93: MemLdStr global_84
  loc_B5AF96: FLdPr Me
  loc_B5AF99: MemLdStr global_80
  loc_B5AF9C: AryLock
  loc_B5AF9F: Ary1LdPr
  loc_B5AFA0: MemLdRfVar from_stack_1.global_8
  loc_B5AFA3: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B5AFA8: AryUnlock
  loc_B5AFAB: FFreeAd var_AC = ""
  loc_B5AFB2: FFreeVar var_D8 = ""
  loc_B5AFB9: FLdRfVar var_C8
  loc_B5AFBC: LitVarStr var_98, "SaldInic"
  loc_B5AFC1: PopAdLdVar
  loc_B5AFC2: FLdRfVar var_C4
  loc_B5AFC5: FLdRfVar var_AC
  loc_B5AFC8: FLdPr var_B0
  loc_B5AFCB: from_stack_1v = clsbase.RsFrmGet()
  loc_B5AFD0: FLdPr var_AC
  loc_B5AFD3:  = Me.Fields
  loc_B5AFD8: FLdPr var_C4
  loc_B5AFDB: from_stack_2 = Me.Item(from_stack_1)
  loc_B5AFE0: LitI2_Byte 0
  loc_B5AFE2: LitI4 1
  loc_B5AFE7: FLdPr Me
  loc_B5AFEA: MemLdStr global_88
  loc_B5AFED: AryLock
  loc_B5AFF0: Ary1LdPr
  loc_B5AFF1: MemLdRfVar from_stack_1.global_12
  loc_B5AFF4: CVarRef
  loc_B5AFF9: LitI2_Byte &HFF
  loc_B5AFFB: FLdZeroAd var_C8
  loc_B5AFFE: CVarAd
  loc_B5B002: PopAdLdVar
  loc_B5B003: FLdPr Me
  loc_B5B006: MemLdStr global_84
  loc_B5B009: FLdPr Me
  loc_B5B00C: MemLdStr global_80
  loc_B5B00F: AryLock
  loc_B5B012: Ary1LdPr
  loc_B5B013: MemLdRfVar from_stack_1.global_12
  loc_B5B016: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B5B01B: AryUnlock
  loc_B5B01E: AryUnlock
  loc_B5B021: FFreeAd var_AC = ""
  loc_B5B028: FFree1Var var_D8 = ""
  loc_B5B02B: FLdRfVar var_C8
  loc_B5B02E: LitVarStr var_98, "AjusSain"
  loc_B5B033: PopAdLdVar
  loc_B5B034: FLdRfVar var_C4
  loc_B5B037: FLdRfVar var_AC
  loc_B5B03A: FLdPr var_B0
  loc_B5B03D: from_stack_1v = clsbase.RsFrmGet()
  loc_B5B042: FLdPr var_AC
  loc_B5B045:  = Me.Fields
  loc_B5B04A: FLdPr var_C4
  loc_B5B04D: from_stack_2 = Me.Item(from_stack_1)
  loc_B5B052: LitI2_Byte 0
  loc_B5B054: LitI4 1
  loc_B5B059: FLdPr Me
  loc_B5B05C: MemLdStr global_88
  loc_B5B05F: AryLock
  loc_B5B062: Ary1LdPr
  loc_B5B063: MemLdRfVar from_stack_1.global_16
  loc_B5B066: CVarRef
  loc_B5B06B: LitI2_Byte &HFF
  loc_B5B06D: FLdZeroAd var_C8
  loc_B5B070: CVarAd
  loc_B5B074: PopAdLdVar
  loc_B5B075: FLdPr Me
  loc_B5B078: MemLdStr global_84
  loc_B5B07B: FLdPr Me
  loc_B5B07E: MemLdStr global_80
  loc_B5B081: AryLock
  loc_B5B084: Ary1LdPr
  loc_B5B085: MemLdRfVar from_stack_1.global_16
  loc_B5B088: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B5B08D: AryUnlock
  loc_B5B090: AryUnlock
  loc_B5B093: FFreeAd var_AC = ""
  loc_B5B09A: FFree1Var var_D8 = ""
  loc_B5B09D: FLdRfVar var_C8
  loc_B5B0A0: LitVarStr var_98, "NumeOrpa"
  loc_B5B0A5: PopAdLdVar
  loc_B5B0A6: FLdRfVar var_C4
  loc_B5B0A9: FLdRfVar var_AC
  loc_B5B0AC: FLdPr var_B0
  loc_B5B0AF: from_stack_1v = clsbase.RsFrmGet()
  loc_B5B0B4: FLdPr var_AC
  loc_B5B0B7:  = Me.Fields
  loc_B5B0BC: FLdPr var_C4
  loc_B5B0BF: from_stack_2 = Me.Item(from_stack_1)
  loc_B5B0C4: LitI2_Byte 0
  loc_B5B0C6: LitVar_Missing var_E8
  loc_B5B0C9: LitI2_Byte 0
  loc_B5B0CB: FLdZeroAd var_C8
  loc_B5B0CE: CVarAd
  loc_B5B0D2: PopAdLdVar
  loc_B5B0D3: FLdPr Me
  loc_B5B0D6: MemLdStr global_84
  loc_B5B0D9: FLdPr Me
  loc_B5B0DC: MemLdStr global_80
  loc_B5B0DF: AryLock
  loc_B5B0E2: Ary1LdPr
  loc_B5B0E3: MemLdRfVar from_stack_1.global_20
  loc_B5B0E6: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B5B0EB: AryUnlock
  loc_B5B0EE: FFreeAd var_AC = ""
  loc_B5B0F5: FFreeVar var_D8 = ""
  loc_B5B0FC: FLdRfVar var_C8
  loc_B5B0FF: LitVarStr var_98, "MapaImpu"
  loc_B5B104: PopAdLdVar
  loc_B5B105: FLdRfVar var_C4
  loc_B5B108: FLdRfVar var_AC
  loc_B5B10B: FLdPr var_B0
  loc_B5B10E: from_stack_1v = clsbase.RsFrmGet()
  loc_B5B113: FLdPr var_AC
  loc_B5B116:  = Me.Fields
  loc_B5B11B: FLdPr var_C4
  loc_B5B11E: from_stack_2 = Me.Item(from_stack_1)
  loc_B5B123: LitI2_Byte 0
  loc_B5B125: LitI4 1
  loc_B5B12A: FLdPr Me
  loc_B5B12D: MemLdStr global_88
  loc_B5B130: AryLock
  loc_B5B133: Ary1LdPr
  loc_B5B134: MemLdRfVar from_stack_1.global_24
  loc_B5B137: CVarRef
  loc_B5B13C: LitI2_Byte &HFF
  loc_B5B13E: FLdZeroAd var_C8
  loc_B5B141: CVarAd
  loc_B5B145: PopAdLdVar
  loc_B5B146: FLdPr Me
  loc_B5B149: MemLdStr global_84
  loc_B5B14C: FLdPr Me
  loc_B5B14F: MemLdStr global_80
  loc_B5B152: AryLock
  loc_B5B155: Ary1LdPr
  loc_B5B156: MemLdRfVar from_stack_1.global_24
  loc_B5B159: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B5B15E: AryUnlock
  loc_B5B161: AryUnlock
  loc_B5B164: FFreeAd var_AC = ""
  loc_B5B16B: FFree1Var var_D8 = ""
  loc_B5B16E: FLdRfVar var_C8
  loc_B5B171: LitVarStr var_98, "FearOrpa"
  loc_B5B176: PopAdLdVar
  loc_B5B177: FLdRfVar var_C4
  loc_B5B17A: FLdRfVar var_AC
  loc_B5B17D: FLdPr var_B0
  loc_B5B180: from_stack_1v = clsbase.RsFrmGet()
  loc_B5B185: FLdPr var_AC
  loc_B5B188:  = Me.Fields
  loc_B5B18D: FLdPr var_C4
  loc_B5B190: from_stack_2 = Me.Item(from_stack_1)
  loc_B5B195: LitI2_Byte 0
  loc_B5B197: LitVar_Missing var_E8
  loc_B5B19A: LitI2_Byte 0
  loc_B5B19C: FLdZeroAd var_C8
  loc_B5B19F: CVarAd
  loc_B5B1A3: PopAdLdVar
  loc_B5B1A4: FLdPr Me
  loc_B5B1A7: MemLdStr global_84
  loc_B5B1AA: FLdPr Me
  loc_B5B1AD: MemLdStr global_80
  loc_B5B1B0: AryLock
  loc_B5B1B3: Ary1LdPr
  loc_B5B1B4: MemLdRfVar from_stack_1.global_28
  loc_B5B1B7: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B5B1BC: AryUnlock
  loc_B5B1BF: FFreeAd var_AC = ""
  loc_B5B1C6: FFreeVar var_D8 = ""
  loc_B5B1CD: FLdRfVar var_C8
  loc_B5B1D0: LitVarStr var_98, "PagaImpu"
  loc_B5B1D5: PopAdLdVar
  loc_B5B1D6: FLdRfVar var_C4
  loc_B5B1D9: FLdRfVar var_AC
  loc_B5B1DC: FLdPr var_B0
  loc_B5B1DF: from_stack_1v = clsbase.RsFrmGet()
  loc_B5B1E4: FLdPr var_AC
  loc_B5B1E7:  = Me.Fields
  loc_B5B1EC: FLdPr var_C4
  loc_B5B1EF: from_stack_2 = Me.Item(from_stack_1)
  loc_B5B1F4: LitI2_Byte 0
  loc_B5B1F6: LitI4 1
  loc_B5B1FB: FLdPr Me
  loc_B5B1FE: MemLdStr global_88
  loc_B5B201: AryLock
  loc_B5B204: Ary1LdPr
  loc_B5B205: MemLdRfVar from_stack_1.global_32
  loc_B5B208: CVarRef
  loc_B5B20D: LitI2_Byte &HFF
  loc_B5B20F: FLdZeroAd var_C8
  loc_B5B212: CVarAd
  loc_B5B216: PopAdLdVar
  loc_B5B217: FLdPr Me
  loc_B5B21A: MemLdStr global_84
  loc_B5B21D: FLdPr Me
  loc_B5B220: MemLdStr global_80
  loc_B5B223: AryLock
  loc_B5B226: Ary1LdPr
  loc_B5B227: MemLdRfVar from_stack_1.global_32
  loc_B5B22A: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B5B22F: AryUnlock
  loc_B5B232: AryUnlock
  loc_B5B235: FFreeAd var_AC = ""
  loc_B5B23C: FFree1Var var_D8 = ""
  loc_B5B23F: FLdRfVar var_C8
  loc_B5B242: LitVarStr var_98, "DeexImpu"
  loc_B5B247: PopAdLdVar
  loc_B5B248: FLdRfVar var_C4
  loc_B5B24B: FLdRfVar var_AC
  loc_B5B24E: FLdPr var_B0
  loc_B5B251: from_stack_1v = clsbase.RsFrmGet()
  loc_B5B256: FLdPr var_AC
  loc_B5B259:  = Me.Fields
  loc_B5B25E: FLdPr var_C4
  loc_B5B261: from_stack_2 = Me.Item(from_stack_1)
  loc_B5B266: LitI2_Byte 0
  loc_B5B268: LitI4 1
  loc_B5B26D: FLdPr Me
  loc_B5B270: MemLdStr global_88
  loc_B5B273: AryLock
  loc_B5B276: Ary1LdPr
  loc_B5B277: MemLdRfVar from_stack_1.global_36
  loc_B5B27A: CVarRef
  loc_B5B27F: LitI2_Byte &HFF
  loc_B5B281: FLdZeroAd var_C8
  loc_B5B284: CVarAd
  loc_B5B288: PopAdLdVar
  loc_B5B289: FLdPr Me
  loc_B5B28C: MemLdStr global_84
  loc_B5B28F: FLdPr Me
  loc_B5B292: MemLdStr global_80
  loc_B5B295: AryLock
  loc_B5B298: Ary1LdPr
  loc_B5B299: MemLdRfVar from_stack_1.global_36
  loc_B5B29C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B5B2A1: AryUnlock
  loc_B5B2A4: AryUnlock
  loc_B5B2A7: FFreeAd var_AC = ""
  loc_B5B2AE: FFree1Var var_D8 = ""
  loc_B5B2B1: FLdRfVar var_C8
  loc_B5B2B4: LitVarStr var_98, "RepaImpu"
  loc_B5B2B9: PopAdLdVar
  loc_B5B2BA: FLdRfVar var_C4
  loc_B5B2BD: FLdRfVar var_AC
  loc_B5B2C0: FLdPr var_B0
  loc_B5B2C3: from_stack_1v = clsbase.RsFrmGet()
  loc_B5B2C8: FLdPr var_AC
  loc_B5B2CB:  = Me.Fields
  loc_B5B2D0: FLdPr var_C4
  loc_B5B2D3: from_stack_2 = Me.Item(from_stack_1)
  loc_B5B2D8: LitI2_Byte 0
  loc_B5B2DA: LitI4 1
  loc_B5B2DF: FLdPr Me
  loc_B5B2E2: MemLdStr global_88
  loc_B5B2E5: AryLock
  loc_B5B2E8: Ary1LdPr
  loc_B5B2E9: MemLdRfVar from_stack_1.global_40
  loc_B5B2EC: CVarRef
  loc_B5B2F1: LitI2_Byte &HFF
  loc_B5B2F3: FLdZeroAd var_C8
  loc_B5B2F6: CVarAd
  loc_B5B2FA: PopAdLdVar
  loc_B5B2FB: FLdPr Me
  loc_B5B2FE: MemLdStr global_84
  loc_B5B301: FLdPr Me
  loc_B5B304: MemLdStr global_80
  loc_B5B307: AryLock
  loc_B5B30A: Ary1LdPr
  loc_B5B30B: MemLdRfVar from_stack_1.global_40
  loc_B5B30E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B5B313: AryUnlock
  loc_B5B316: AryUnlock
  loc_B5B319: FFreeAd var_AC = ""
  loc_B5B320: FFree1Var var_D8 = ""
  loc_B5B323: LitI4 1
  loc_B5B328: PopTmpLdAdStr var_128
  loc_B5B32B: FLdPr var_B0
  loc_B5B32E: Call clsbase.Mover(from_stack_1v)
  loc_B5B333: FLdPr Me
  loc_B5B336: MemLdRfVar from_stack_1.global_84
  loc_B5B339: NextI4 var_130, loc_B5AE9C
  loc_B5B33E: LitNothing
  loc_B5B340: FStAd var_B0 
  loc_B5B344: LitI2_Byte &HFF
  loc_B5B346: FLdPr Me
  loc_B5B349: MemStI2 bGenerado
  loc_B5B34C: LitI2_Byte 0
  loc_B5B34E: FLdPr Me
  loc_B5B351: Me.MousePointer = from_stack_1
  loc_B5B356: LitVarStr var_98, vbNullString
  loc_B5B35B: PopAdLdVar
  loc_B5B35C: FLdPr Me
  loc_B5B35F: VCallAd Control_ID_statusBar
  loc_B5B362: FStAdFunc var_AC
  loc_B5B365: FLdPr var_AC
  loc_B5B368: LateIdSt
  loc_B5B36D: FFree1Ad var_AC
  loc_B5B370: ExitProcHresult
  loc_B5B371: ExitProcR4
  loc_B5B372: GeCyR8
End Sub

Public Sub GeneraHTML() 'A89E8C
  'Data Table: 43E594
  loc_A89A34: FLdRfVar var_88
  loc_A89A37: LitI2_Byte 0
  loc_A89A39: LitI2_Byte &HFF
  loc_A89A3B: ImpAdLdI4 MemVar_C3D83C
  loc_A89A3E: FLdPr Me
  loc_A89A41: MemLdRfVar from_stack_1.global_76
  loc_A89A44: NewIfNullPr IFileSystem3
  loc_A89A47: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_A89A4C: ILdRf var_88
  loc_A89A4F: FLdPr Me
  loc_A89A52: MemStVarAd
  loc_A89A56: FFree1Ad var_88
  loc_A89A59: Call Proc_154_21_A65EA8()
  loc_A89A5E: LitI4 1
  loc_A89A63: FLdPr Me
  loc_A89A66: MemLdRfVar from_stack_1.global_84
  loc_A89A69: FLdPr Me
  loc_A89A6C: MemLdStr global_80
  loc_A89A6F: LitI2_Byte 1
  loc_A89A71: FnUBound
  loc_A89A73: ForI4 var_90
  loc_A89A79: LitVarStr var_A0, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A89A7E: PopAdLdVar
  loc_A89A7F: FLdPr Me
  loc_A89A82: MemLdRfVar from_stack_1.htmFile
  loc_A89A85: LdPrVar
  loc_A89A87: LateMemCall
  loc_A89A8D: FLdPr Me
  loc_A89A90: MemLdStr global_84
  loc_A89A93: FLdPr Me
  loc_A89A96: MemLdStr global_80
  loc_A89A99: AryLock
  loc_A89A9C: Ary1LdRf
  loc_A89A9D: FStR4 var_B8
  loc_A89AA0: LitI4 0
  loc_A89AA5: LitI4 0
  loc_A89AAA: LitI2_Byte 0
  loc_A89AAC: LitStr "left"
  loc_A89AAF: FMemLdR4 var_B8(0)
  loc_A89AB4: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89AB9: CVarStr var_C8
  loc_A89ABC: PopAdLdVar
  loc_A89ABD: FLdPr Me
  loc_A89AC0: MemLdRfVar from_stack_1.htmFile
  loc_A89AC3: LdPrVar
  loc_A89AC5: LateMemCall
  loc_A89ACB: FFree1Var var_C8 = ""
  loc_A89ACE: LitI4 0
  loc_A89AD3: LitI4 0
  loc_A89AD8: LitI2_Byte 0
  loc_A89ADA: LitStr "left"
  loc_A89ADD: FMemLdR4 var_B8(4)
  loc_A89AE2: LitStr " - "
  loc_A89AE5: ConcatStr
  loc_A89AE6: FStStrNoPop var_CC
  loc_A89AE9: FMemLdR4 var_B8(8)
  loc_A89AEE: ConcatStr
  loc_A89AEF: FStStrNoPop var_D0
  loc_A89AF2: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89AF7: CVarStr var_C8
  loc_A89AFA: PopAdLdVar
  loc_A89AFB: FLdPr Me
  loc_A89AFE: MemLdRfVar from_stack_1.htmFile
  loc_A89B01: LdPrVar
  loc_A89B03: LateMemCall
  loc_A89B09: FFreeStr var_CC = ""
  loc_A89B10: FFree1Var var_C8 = ""
  loc_A89B13: LitI4 0
  loc_A89B18: LitI4 0
  loc_A89B1D: LitI2_Byte 0
  loc_A89B1F: LitStr "right"
  loc_A89B22: FMemLdR4 var_B8(12)
  loc_A89B27: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89B2C: CVarStr var_C8
  loc_A89B2F: PopAdLdVar
  loc_A89B30: FLdPr Me
  loc_A89B33: MemLdRfVar from_stack_1.htmFile
  loc_A89B36: LdPrVar
  loc_A89B38: LateMemCall
  loc_A89B3E: FFree1Var var_C8 = ""
  loc_A89B41: LitI4 0
  loc_A89B46: LitI4 0
  loc_A89B4B: LitI2_Byte 0
  loc_A89B4D: LitStr "right"
  loc_A89B50: FMemLdR4 var_B8(16)
  loc_A89B55: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89B5A: CVarStr var_C8
  loc_A89B5D: PopAdLdVar
  loc_A89B5E: FLdPr Me
  loc_A89B61: MemLdRfVar from_stack_1.htmFile
  loc_A89B64: LdPrVar
  loc_A89B66: LateMemCall
  loc_A89B6C: FFree1Var var_C8 = ""
  loc_A89B6F: LitI4 0
  loc_A89B74: LitI4 0
  loc_A89B79: LitI2_Byte 0
  loc_A89B7B: LitStr "right"
  loc_A89B7E: FMemLdR4 var_B8(20)
  loc_A89B83: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89B88: CVarStr var_C8
  loc_A89B8B: PopAdLdVar
  loc_A89B8C: FLdPr Me
  loc_A89B8F: MemLdRfVar from_stack_1.htmFile
  loc_A89B92: LdPrVar
  loc_A89B94: LateMemCall
  loc_A89B9A: FFree1Var var_C8 = ""
  loc_A89B9D: LitI4 0
  loc_A89BA2: LitI4 0
  loc_A89BA7: LitI2_Byte 0
  loc_A89BA9: LitStr "right"
  loc_A89BAC: FMemLdR4 var_B8(24)
  loc_A89BB1: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89BB6: CVarStr var_C8
  loc_A89BB9: PopAdLdVar
  loc_A89BBA: FLdPr Me
  loc_A89BBD: MemLdRfVar from_stack_1.htmFile
  loc_A89BC0: LdPrVar
  loc_A89BC2: LateMemCall
  loc_A89BC8: FFree1Var var_C8 = ""
  loc_A89BCB: LitI4 0
  loc_A89BD0: LitI4 0
  loc_A89BD5: LitI2_Byte 0
  loc_A89BD7: LitStr "center"
  loc_A89BDA: FMemLdR4 var_B8(28)
  loc_A89BDF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89BE4: CVarStr var_C8
  loc_A89BE7: PopAdLdVar
  loc_A89BE8: FLdPr Me
  loc_A89BEB: MemLdRfVar from_stack_1.htmFile
  loc_A89BEE: LdPrVar
  loc_A89BF0: LateMemCall
  loc_A89BF6: FFree1Var var_C8 = ""
  loc_A89BF9: LitI4 0
  loc_A89BFE: LitI4 0
  loc_A89C03: LitI2_Byte 0
  loc_A89C05: LitStr "right"
  loc_A89C08: FMemLdR4 var_B8(32)
  loc_A89C0D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89C12: CVarStr var_C8
  loc_A89C15: PopAdLdVar
  loc_A89C16: FLdPr Me
  loc_A89C19: MemLdRfVar from_stack_1.htmFile
  loc_A89C1C: LdPrVar
  loc_A89C1E: LateMemCall
  loc_A89C24: FFree1Var var_C8 = ""
  loc_A89C27: LitI4 0
  loc_A89C2C: LitI4 0
  loc_A89C31: LitI2_Byte 0
  loc_A89C33: LitStr "right"
  loc_A89C36: FMemLdR4 var_B8(36)
  loc_A89C3B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89C40: CVarStr var_C8
  loc_A89C43: PopAdLdVar
  loc_A89C44: FLdPr Me
  loc_A89C47: MemLdRfVar from_stack_1.htmFile
  loc_A89C4A: LdPrVar
  loc_A89C4C: LateMemCall
  loc_A89C52: FFree1Var var_C8 = ""
  loc_A89C55: LitI4 0
  loc_A89C5A: LitI4 0
  loc_A89C5F: LitI2_Byte 0
  loc_A89C61: LitStr "right"
  loc_A89C64: FMemLdR4 var_B8(40)
  loc_A89C69: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89C6E: CVarStr var_C8
  loc_A89C71: PopAdLdVar
  loc_A89C72: FLdPr Me
  loc_A89C75: MemLdRfVar from_stack_1.htmFile
  loc_A89C78: LdPrVar
  loc_A89C7A: LateMemCall
  loc_A89C80: FFree1Var var_C8 = ""
  loc_A89C83: LitI4 0
  loc_A89C88: FStR4 var_B8
  loc_A89C8B: AryUnlock
  loc_A89C8E: LitVarStr var_A0, "     </tr>"
  loc_A89C93: PopAdLdVar
  loc_A89C94: FLdPr Me
  loc_A89C97: MemLdRfVar from_stack_1.htmFile
  loc_A89C9A: LdPrVar
  loc_A89C9C: LateMemCall
  loc_A89CA2: FLdPr Me
  loc_A89CA5: MemLdRfVar from_stack_1.global_84
  loc_A89CA8: NextI4 var_90, loc_A89A79
  loc_A89CAD: LitVarStr var_A0, "    <tr valign=""top"" class=""Totales"" nowrap>"
  loc_A89CB2: PopAdLdVar
  loc_A89CB3: FLdPr Me
  loc_A89CB6: MemLdRfVar from_stack_1.htmFile
  loc_A89CB9: LdPrVar
  loc_A89CBB: LateMemCall
  loc_A89CC1: LitI4 1
  loc_A89CC6: FLdPr Me
  loc_A89CC9: MemLdStr global_88
  loc_A89CCC: AryLock
  loc_A89CCF: Ary1LdRf
  loc_A89CD0: FStR4 var_D8
  loc_A89CD3: LitVarStr var_A0, "   <td colspan=2 align=""right"">TOTALES</td>"
  loc_A89CD8: PopAdLdVar
  loc_A89CD9: FLdPr Me
  loc_A89CDC: MemLdRfVar from_stack_1.htmFile
  loc_A89CDF: LdPrVar
  loc_A89CE1: LateMemCall
  loc_A89CE7: LitI4 0
  loc_A89CEC: LitI4 0
  loc_A89CF1: LitI2_Byte 0
  loc_A89CF3: LitStr "right"
  loc_A89CF6: FMemLdR4 var_D8(12)
  loc_A89CFB: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89D00: CVarStr var_C8
  loc_A89D03: PopAdLdVar
  loc_A89D04: FLdPr Me
  loc_A89D07: MemLdRfVar from_stack_1.htmFile
  loc_A89D0A: LdPrVar
  loc_A89D0C: LateMemCall
  loc_A89D12: FFree1Var var_C8 = ""
  loc_A89D15: LitI4 0
  loc_A89D1A: LitI4 0
  loc_A89D1F: LitI2_Byte 0
  loc_A89D21: LitStr "right"
  loc_A89D24: FMemLdR4 var_D8(16)
  loc_A89D29: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89D2E: CVarStr var_C8
  loc_A89D31: PopAdLdVar
  loc_A89D32: FLdPr Me
  loc_A89D35: MemLdRfVar from_stack_1.htmFile
  loc_A89D38: LdPrVar
  loc_A89D3A: LateMemCall
  loc_A89D40: FFree1Var var_C8 = ""
  loc_A89D43: LitI4 0
  loc_A89D48: LitI4 0
  loc_A89D4D: LitI2_Byte 0
  loc_A89D4F: LitStr "right"
  loc_A89D52: LitStr vbNullString
  loc_A89D55: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89D5A: CVarStr var_C8
  loc_A89D5D: PopAdLdVar
  loc_A89D5E: FLdPr Me
  loc_A89D61: MemLdRfVar from_stack_1.htmFile
  loc_A89D64: LdPrVar
  loc_A89D66: LateMemCall
  loc_A89D6C: FFree1Var var_C8 = ""
  loc_A89D6F: LitI4 0
  loc_A89D74: LitI4 0
  loc_A89D79: LitI2_Byte 0
  loc_A89D7B: LitStr "right"
  loc_A89D7E: FMemLdR4 var_D8(24)
  loc_A89D83: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89D88: CVarStr var_C8
  loc_A89D8B: PopAdLdVar
  loc_A89D8C: FLdPr Me
  loc_A89D8F: MemLdRfVar from_stack_1.htmFile
  loc_A89D92: LdPrVar
  loc_A89D94: LateMemCall
  loc_A89D9A: FFree1Var var_C8 = ""
  loc_A89D9D: LitI4 0
  loc_A89DA2: LitI4 0
  loc_A89DA7: LitI2_Byte 0
  loc_A89DA9: LitStr "center"
  loc_A89DAC: LitStr vbNullString
  loc_A89DAF: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89DB4: CVarStr var_C8
  loc_A89DB7: PopAdLdVar
  loc_A89DB8: FLdPr Me
  loc_A89DBB: MemLdRfVar from_stack_1.htmFile
  loc_A89DBE: LdPrVar
  loc_A89DC0: LateMemCall
  loc_A89DC6: FFree1Var var_C8 = ""
  loc_A89DC9: LitI4 0
  loc_A89DCE: LitI4 0
  loc_A89DD3: LitI2_Byte 0
  loc_A89DD5: LitStr "right"
  loc_A89DD8: FMemLdR4 var_D8(32)
  loc_A89DDD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89DE2: CVarStr var_C8
  loc_A89DE5: PopAdLdVar
  loc_A89DE6: FLdPr Me
  loc_A89DE9: MemLdRfVar from_stack_1.htmFile
  loc_A89DEC: LdPrVar
  loc_A89DEE: LateMemCall
  loc_A89DF4: FFree1Var var_C8 = ""
  loc_A89DF7: LitI4 0
  loc_A89DFC: LitI4 0
  loc_A89E01: LitI2_Byte 0
  loc_A89E03: LitStr "right"
  loc_A89E06: FMemLdR4 var_D8(36)
  loc_A89E0B: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89E10: CVarStr var_C8
  loc_A89E13: PopAdLdVar
  loc_A89E14: FLdPr Me
  loc_A89E17: MemLdRfVar from_stack_1.htmFile
  loc_A89E1A: LdPrVar
  loc_A89E1C: LateMemCall
  loc_A89E22: FFree1Var var_C8 = ""
  loc_A89E25: LitI4 0
  loc_A89E2A: LitI4 0
  loc_A89E2F: LitI2_Byte 0
  loc_A89E31: LitStr "right"
  loc_A89E34: FMemLdR4 var_D8(40)
  loc_A89E39: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_A89E3E: CVarStr var_C8
  loc_A89E41: PopAdLdVar
  loc_A89E42: FLdPr Me
  loc_A89E45: MemLdRfVar from_stack_1.htmFile
  loc_A89E48: LdPrVar
  loc_A89E4A: LateMemCall
  loc_A89E50: FFree1Var var_C8 = ""
  loc_A89E53: LitI4 0
  loc_A89E58: FStR4 var_D8
  loc_A89E5B: AryUnlock
  loc_A89E5E: LitVarStr var_A0, "     </tr>"
  loc_A89E63: PopAdLdVar
  loc_A89E64: FLdPr Me
  loc_A89E67: MemLdRfVar from_stack_1.htmFile
  loc_A89E6A: LdPrVar
  loc_A89E6C: LateMemCall
  loc_A89E72: Call Proc_154_22_A0418C()
  loc_A89E77: FLdPr Me
  loc_A89E7A: MemLdRfVar from_stack_1.htmFile
  loc_A89E7D: LdPrVar
  loc_A89E7F: LateMemCall
  loc_A89E85: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_A89E8A: ExitProcHresult
End Sub

Public Sub GeneraXLS() '94D1C4
  'Data Table: 43E594
  loc_94D1AC: LitI2_Byte 0
  loc_94D1AE: FLdPr Me
  loc_94D1B1: MemStI2 bLogos
  loc_94D1B4: Call GeneraHTML()
  loc_94D1B9: LitI2_Byte &HFF
  loc_94D1BB: FLdPr Me
  loc_94D1BE: MemStI2 bLogos
  loc_94D1C1: ExitProcHresult
End Sub

Private Function Proc_154_21_A65EA8() 'A65EA8
  'Data Table: 43E594
  loc_A65B54: LitVarStr var_94, "<html>"
  loc_A65B59: PopAdLdVar
  loc_A65B5A: FLdPr Me
  loc_A65B5D: MemLdRfVar from_stack_1.htmFile
  loc_A65B60: LdPrVar
  loc_A65B62: LateMemCall
  loc_A65B68: LitVarStr var_94, "<head>"
  loc_A65B6D: PopAdLdVar
  loc_A65B6E: FLdPr Me
  loc_A65B71: MemLdRfVar from_stack_1.htmFile
  loc_A65B74: LdPrVar
  loc_A65B76: LateMemCall
  loc_A65B7C: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A65B81: PopAdLdVar
  loc_A65B82: FLdPr Me
  loc_A65B85: MemLdRfVar from_stack_1.htmFile
  loc_A65B88: LdPrVar
  loc_A65B8A: LateMemCall
  loc_A65B90: LitStr "<title>"
  loc_A65B93: FLdRfVar var_A8
  loc_A65B96: FLdPr Me
  loc_A65B99:  = Me.Caption
  loc_A65B9E: ILdRf var_A8
  loc_A65BA1: ConcatStr
  loc_A65BA2: FStStrNoPop var_AC
  loc_A65BA5: LitStr " - "
  loc_A65BA8: ConcatStr
  loc_A65BA9: FStStrNoPop var_B0
  loc_A65BAC: LitStr "Municipalidad de Guaymallén"
  loc_A65BAF: ConcatStr
  loc_A65BB0: FStStrNoPop var_B4
  loc_A65BB3: LitStr "</title>"
  loc_A65BB6: ConcatStr
  loc_A65BB7: CVarStr var_C4
  loc_A65BBA: PopAdLdVar
  loc_A65BBB: FLdPr Me
  loc_A65BBE: MemLdRfVar from_stack_1.htmFile
  loc_A65BC1: LdPrVar
  loc_A65BC3: LateMemCall
  loc_A65BC9: FFreeStr var_A8 = "": var_AC = "": var_B0 = ""
  loc_A65BD4: FFree1Var var_C4 = ""
  loc_A65BD7: LitStr vbNullString
  loc_A65BDA: ILdRf Me
  loc_A65BDD: CastAd
  loc_A65BE0: FStAdFunc var_C8
  loc_A65BE3: FLdRfVar var_C8
  loc_A65BE6: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A65BEB: FFree1Ad var_C8
  loc_A65BEE: LitI4 0
  loc_A65BF3: FStStrCopy var_AC
  loc_A65BF6: FLdRfVar var_AC
  loc_A65BF9: LitI4 0
  loc_A65BFE: FStStrCopy var_A8
  loc_A65C01: FLdRfVar var_A8
  loc_A65C04: LitI2_Byte &HFF
  loc_A65C06: PopTmpLdAd2 var_CA
  loc_A65C09: FLdPr Me
  loc_A65C0C: MemLdRfVar from_stack_1.htmFile
  loc_A65C0F: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A65C14: FFreeStr var_A8 = ""
  loc_A65C1B: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"">"
  loc_A65C20: PopAdLdVar
  loc_A65C21: FLdPr Me
  loc_A65C24: MemLdRfVar from_stack_1.htmFile
  loc_A65C27: LdPrVar
  loc_A65C29: LateMemCall
  loc_A65C2F: LitVarStr var_94, "  <tr valign=""center"">"
  loc_A65C34: PopAdLdVar
  loc_A65C35: FLdPr Me
  loc_A65C38: MemLdRfVar from_stack_1.htmFile
  loc_A65C3B: LdPrVar
  loc_A65C3D: LateMemCall
  loc_A65C43: LitVarStr var_94, "    <th colspan=""2"" align=""center"" valign=""center""><p>"
  loc_A65C48: PopAdLdVar
  loc_A65C49: FLdPr Me
  loc_A65C4C: MemLdRfVar from_stack_1.htmFile
  loc_A65C4F: LdPrVar
  loc_A65C51: LateMemCall
  loc_A65C57: FLdPr Me
  loc_A65C5A: MemLdI2 bLogos
  loc_A65C5D: BranchF loc_A65C74
  loc_A65C60: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right""><br>ANEXO X: DE LA EVOLUCIÓN DE LOS RESIDUOS PASIVOS CORRESPONDIENTE AL EJERCICIO ANTERIOR</span class=""Titulo2""></p>"
  loc_A65C65: PopAdLdVar
  loc_A65C66: FLdPr Me
  loc_A65C69: MemLdRfVar from_stack_1.htmFile
  loc_A65C6C: LdPrVar
  loc_A65C6E: LateMemCall
  loc_A65C74: LitVarStr var_94, "    </th>"
  loc_A65C79: PopAdLdVar
  loc_A65C7A: FLdPr Me
  loc_A65C7D: MemLdRfVar from_stack_1.htmFile
  loc_A65C80: LdPrVar
  loc_A65C82: LateMemCall
  loc_A65C88: LitVarStr var_94, "  </tr>"
  loc_A65C8D: PopAdLdVar
  loc_A65C8E: FLdPr Me
  loc_A65C91: MemLdRfVar from_stack_1.htmFile
  loc_A65C94: LdPrVar
  loc_A65C96: LateMemCall
  loc_A65C9C: LitVarStr var_94, "  <tr class=""Titulo2"">"
  loc_A65CA1: PopAdLdVar
  loc_A65CA2: FLdPr Me
  loc_A65CA5: MemLdRfVar from_stack_1.htmFile
  loc_A65CA8: LdPrVar
  loc_A65CAA: LateMemCall
  loc_A65CB0: LitStr "    <td colspan=""2"" align=""left"">Repartición/Organismo: "
  loc_A65CB3: LitStr "Municipalidad de Guaymallén"
  loc_A65CB6: ConcatStr
  loc_A65CB7: FStStrNoPop var_A8
  loc_A65CBA: LitStr "</td>"
  loc_A65CBD: ConcatStr
  loc_A65CBE: CVarStr var_C4
  loc_A65CC1: PopAdLdVar
  loc_A65CC2: FLdPr Me
  loc_A65CC5: MemLdRfVar from_stack_1.htmFile
  loc_A65CC8: LdPrVar
  loc_A65CCA: LateMemCall
  loc_A65CD0: FFree1Str var_A8
  loc_A65CD3: FFree1Var var_C4 = ""
  loc_A65CD6: LitVarStr var_94, "  </tr>"
  loc_A65CDB: PopAdLdVar
  loc_A65CDC: FLdPr Me
  loc_A65CDF: MemLdRfVar from_stack_1.htmFile
  loc_A65CE2: LdPrVar
  loc_A65CE4: LateMemCall
  loc_A65CEA: LitVarStr var_94, "  <tr class=""Titulo2"">"
  loc_A65CEF: PopAdLdVar
  loc_A65CF0: FLdPr Me
  loc_A65CF3: MemLdRfVar from_stack_1.htmFile
  loc_A65CF6: LdPrVar
  loc_A65CF8: LateMemCall
  loc_A65CFE: LitStr "    <td>Ejercicio: "
  loc_A65D01: FLdRfVar var_A8
  loc_A65D04: FLdPr Me
  loc_A65D07: VCallAd Control_ID_cboPeriodo
  loc_A65D0A: FStAdFunc var_C8
  loc_A65D0D: FLdPr var_C8
  loc_A65D10:  = Me.Text
  loc_A65D15: ILdRf var_A8
  loc_A65D18: ConcatStr
  loc_A65D19: FStStrNoPop var_AC
  loc_A65D1C: LitStr "</td>"
  loc_A65D1F: ConcatStr
  loc_A65D20: CVarStr var_C4
  loc_A65D23: PopAdLdVar
  loc_A65D24: FLdPr Me
  loc_A65D27: MemLdRfVar from_stack_1.htmFile
  loc_A65D2A: LdPrVar
  loc_A65D2C: LateMemCall
  loc_A65D32: FFreeStr var_A8 = ""
  loc_A65D39: FFree1Ad var_C8
  loc_A65D3C: FFree1Var var_C4 = ""
  loc_A65D3F: LitVarStr var_94, "    <td>&nbsp;</td>"
  loc_A65D44: PopAdLdVar
  loc_A65D45: FLdPr Me
  loc_A65D48: MemLdRfVar from_stack_1.htmFile
  loc_A65D4B: LdPrVar
  loc_A65D4D: LateMemCall
  loc_A65D53: LitVarStr var_94, "  </tr>"
  loc_A65D58: PopAdLdVar
  loc_A65D59: FLdPr Me
  loc_A65D5C: MemLdRfVar from_stack_1.htmFile
  loc_A65D5F: LdPrVar
  loc_A65D61: LateMemCall
  loc_A65D67: LitVarStr var_94, "</table><br>"
  loc_A65D6C: PopAdLdVar
  loc_A65D6D: FLdPr Me
  loc_A65D70: MemLdRfVar from_stack_1.htmFile
  loc_A65D73: LdPrVar
  loc_A65D75: LateMemCall
  loc_A65D7B: LitVarStr var_94, "<table with=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A65D80: PopAdLdVar
  loc_A65D81: FLdPr Me
  loc_A65D84: MemLdRfVar from_stack_1.htmFile
  loc_A65D87: LdPrVar
  loc_A65D89: LateMemCall
  loc_A65D8F: LitVarStr var_94, "  <THEAD>"
  loc_A65D94: PopAdLdVar
  loc_A65D95: FLdPr Me
  loc_A65D98: MemLdRfVar from_stack_1.htmFile
  loc_A65D9B: LdPrVar
  loc_A65D9D: LateMemCall
  loc_A65DA3: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A65DA8: PopAdLdVar
  loc_A65DA9: FLdPr Me
  loc_A65DAC: MemLdRfVar from_stack_1.htmFile
  loc_A65DAF: LdPrVar
  loc_A65DB1: LateMemCall
  loc_A65DB7: LitVarStr var_94, "     <th rowspan=2>Expediente N&ordm;</th>"
  loc_A65DBC: PopAdLdVar
  loc_A65DBD: FLdPr Me
  loc_A65DC0: MemLdRfVar from_stack_1.htmFile
  loc_A65DC3: LdPrVar
  loc_A65DC5: LateMemCall
  loc_A65DCB: LitVarStr var_94, "     <th rowspan=2>Nombre del Acreedor</th>"
  loc_A65DD0: PopAdLdVar
  loc_A65DD1: FLdPr Me
  loc_A65DD4: MemLdRfVar from_stack_1.htmFile
  loc_A65DD7: LdPrVar
  loc_A65DD9: LateMemCall
  loc_A65DDF: LitVarStr var_94, "     <th width=10" & Chr(37) & " rowspan=2>Saldo Inicial</th>"
  loc_A65DE4: PopAdLdVar
  loc_A65DE5: FLdPr Me
  loc_A65DE8: MemLdRfVar from_stack_1.htmFile
  loc_A65DEB: LdPrVar
  loc_A65DED: LateMemCall
  loc_A65DF3: LitVarStr var_94, "     <th width=10" & Chr(37) & " rowspan=2>Ajustes al Inicio</th>"
  loc_A65DF8: PopAdLdVar
  loc_A65DF9: FLdPr Me
  loc_A65DFC: MemLdRfVar from_stack_1.htmFile
  loc_A65DFF: LdPrVar
  loc_A65E01: LateMemCall
  loc_A65E07: LitVarStr var_94, "     <th width=10" & Chr(37) & " rowspan=2 colspan=2>Orden de Pago</th>"
  loc_A65E0C: PopAdLdVar
  loc_A65E0D: FLdPr Me
  loc_A65E10: MemLdRfVar from_stack_1.htmFile
  loc_A65E13: LdPrVar
  loc_A65E15: LateMemCall
  loc_A65E1B: LitVarStr var_94, "     <th width=10" & Chr(37) & " rowspan=2 colspan=2>Pago</th>"
  loc_A65E20: PopAdLdVar
  loc_A65E21: FLdPr Me
  loc_A65E24: MemLdRfVar from_stack_1.htmFile
  loc_A65E27: LdPrVar
  loc_A65E29: LateMemCall
  loc_A65E2F: LitVarStr var_94, "     <th width=10" & Chr(37) & " rowspan=2>Deuda Exigible</th>"
  loc_A65E34: PopAdLdVar
  loc_A65E35: FLdPr Me
  loc_A65E38: MemLdRfVar from_stack_1.htmFile
  loc_A65E3B: LdPrVar
  loc_A65E3D: LateMemCall
  loc_A65E43: LitVarStr var_94, "     <th width=10" & Chr(37) & " rowspan=2>Residuos Pasivos Perimidos</th>"
  loc_A65E48: PopAdLdVar
  loc_A65E49: FLdPr Me
  loc_A65E4C: MemLdRfVar from_stack_1.htmFile
  loc_A65E4F: LdPrVar
  loc_A65E51: LateMemCall
  loc_A65E57: LitVarStr var_94, "  </tr>"
  loc_A65E5C: PopAdLdVar
  loc_A65E5D: FLdPr Me
  loc_A65E60: MemLdRfVar from_stack_1.htmFile
  loc_A65E63: LdPrVar
  loc_A65E65: LateMemCall
  loc_A65E6B: LitVarStr var_94, "    <tr valign=""top"" class=""LineaDato"">"
  loc_A65E70: PopAdLdVar
  loc_A65E71: FLdPr Me
  loc_A65E74: MemLdRfVar from_stack_1.htmFile
  loc_A65E77: LdPrVar
  loc_A65E79: LateMemCall
  loc_A65E7F: LitVarStr var_94, "     </tr>"
  loc_A65E84: PopAdLdVar
  loc_A65E85: FLdPr Me
  loc_A65E88: MemLdRfVar from_stack_1.htmFile
  loc_A65E8B: LdPrVar
  loc_A65E8D: LateMemCall
  loc_A65E93: LitVarStr var_94, "  </THEAD>"
  loc_A65E98: PopAdLdVar
  loc_A65E99: FLdPr Me
  loc_A65E9C: MemLdRfVar from_stack_1.htmFile
  loc_A65E9F: LdPrVar
  loc_A65EA1: LateMemCall
  loc_A65EA7: ExitProcHresult
End Function

Private Function Proc_154_22_A0418C() 'A0418C
  'Data Table: 43E594
  loc_A04018: LitVarStr var_94, "</table>"
  loc_A0401D: PopAdLdVar
  loc_A0401E: FLdPr Me
  loc_A04021: MemLdRfVar from_stack_1.htmFile
  loc_A04024: LdPrVar
  loc_A04026: LateMemCall
  loc_A0402C: LitVarStr var_94, "<br>"
  loc_A04031: PopAdLdVar
  loc_A04032: FLdPr Me
  loc_A04035: MemLdRfVar from_stack_1.htmFile
  loc_A04038: LdPrVar
  loc_A0403A: LateMemCall
  loc_A04040: LitVarStr var_94, "<table border=""0"" align=""right"">"
  loc_A04045: PopAdLdVar
  loc_A04046: FLdPr Me
  loc_A04049: MemLdRfVar from_stack_1.htmFile
  loc_A0404C: LdPrVar
  loc_A0404E: LateMemCall
  loc_A04054: LitVarStr var_94, "  <tr>"
  loc_A04059: PopAdLdVar
  loc_A0405A: FLdPr Me
  loc_A0405D: MemLdRfVar from_stack_1.htmFile
  loc_A04060: LdPrVar
  loc_A04062: LateMemCall
  loc_A04068: LitVarStr var_94, "    <th rowspan=""2"" scope=""col""><span class=""Titulo2"">CERTIFICO QUE LA INFORMACION PRESENTE SURGE DE REGISTROS CONTABLES LLEVADOS DE ACUERDO A LA NORMATIVA VIGENTE</span></th>"
  loc_A0406D: PopAdLdVar
  loc_A0406E: FLdPr Me
  loc_A04071: MemLdRfVar from_stack_1.htmFile
  loc_A04074: LdPrVar
  loc_A04076: LateMemCall
  loc_A0407C: LitVarStr var_94, "    <th rowspan=""2"" scope=""col"">&nbsp;&nbsp;</th>"
  loc_A04081: PopAdLdVar
  loc_A04082: FLdPr Me
  loc_A04085: MemLdRfVar from_stack_1.htmFile
  loc_A04088: LdPrVar
  loc_A0408A: LateMemCall
  loc_A04090: FLdPr Me
  loc_A04093: MemLdI2 bLogos
  loc_A04096: BranchF loc_A040FD
  loc_A04099: LitVarStr var_94, "    <th valign=""bottom"" scope=""col""><div align=""center""><img src=""l2.jpg"" alt=""InfoGov"" width=""72"" height=""42"" border=""0"" usemap=""#Map"">"
  loc_A0409E: PopAdLdVar
  loc_A0409F: FLdPr Me
  loc_A040A2: MemLdRfVar from_stack_1.htmFile
  loc_A040A5: LdPrVar
  loc_A040A7: LateMemCall
  loc_A040AD: LitVarStr var_94, "          <map name=""Map"">"
  loc_A040B2: PopAdLdVar
  loc_A040B3: FLdPr Me
  loc_A040B6: MemLdRfVar from_stack_1.htmFile
  loc_A040B9: LdPrVar
  loc_A040BB: LateMemCall
  loc_A040C1: LitVarStr var_94, "            <area shape=""rect"" coords=""-1,-9,88,49"" href=""http://www.infogov.com.ar"" target=""_blank"">"
  loc_A040C6: PopAdLdVar
  loc_A040C7: FLdPr Me
  loc_A040CA: MemLdRfVar from_stack_1.htmFile
  loc_A040CD: LdPrVar
  loc_A040CF: LateMemCall
  loc_A040D5: LitVarStr var_94, "          </map>"
  loc_A040DA: PopAdLdVar
  loc_A040DB: FLdPr Me
  loc_A040DE: MemLdRfVar from_stack_1.htmFile
  loc_A040E1: LdPrVar
  loc_A040E3: LateMemCall
  loc_A040E9: LitVarStr var_94, "    </div></th>"
  loc_A040EE: PopAdLdVar
  loc_A040EF: FLdPr Me
  loc_A040F2: MemLdRfVar from_stack_1.htmFile
  loc_A040F5: LdPrVar
  loc_A040F7: LateMemCall
  loc_A040FD: LitVarStr var_94, "  </tr>"
  loc_A04102: PopAdLdVar
  loc_A04103: FLdPr Me
  loc_A04106: MemLdRfVar from_stack_1.htmFile
  loc_A04109: LdPrVar
  loc_A0410B: LateMemCall
  loc_A04111: LitVarStr var_94, "  <tr>"
  loc_A04116: PopAdLdVar
  loc_A04117: FLdPr Me
  loc_A0411A: MemLdRfVar from_stack_1.htmFile
  loc_A0411D: LdPrVar
  loc_A0411F: LateMemCall
  loc_A04125: LitVarStr var_94, "    <td><div align=""center""><a href=""http://www.infogov.com.ar"" target=""_blank"">www.infogov.com.ar</a></div></td>"
  loc_A0412A: PopAdLdVar
  loc_A0412B: FLdPr Me
  loc_A0412E: MemLdRfVar from_stack_1.htmFile
  loc_A04131: LdPrVar
  loc_A04133: LateMemCall
  loc_A04139: LitVarStr var_94, "  </tr>"
  loc_A0413E: PopAdLdVar
  loc_A0413F: FLdPr Me
  loc_A04142: MemLdRfVar from_stack_1.htmFile
  loc_A04145: LdPrVar
  loc_A04147: LateMemCall
  loc_A0414D: LitVarStr var_94, "</table>"
  loc_A04152: PopAdLdVar
  loc_A04153: FLdPr Me
  loc_A04156: MemLdRfVar from_stack_1.htmFile
  loc_A04159: LdPrVar
  loc_A0415B: LateMemCall
  loc_A04161: LitVarStr var_94, "</body>"
  loc_A04166: PopAdLdVar
  loc_A04167: FLdPr Me
  loc_A0416A: MemLdRfVar from_stack_1.htmFile
  loc_A0416D: LdPrVar
  loc_A0416F: LateMemCall
  loc_A04175: LitVarStr var_94, "</html>"
  loc_A0417A: PopAdLdVar
  loc_A0417B: FLdPr Me
  loc_A0417E: MemLdRfVar from_stack_1.htmFile
  loc_A04181: LdPrVar
  loc_A04183: LateMemCall
  loc_A04189: ExitProcHresult
End Function
