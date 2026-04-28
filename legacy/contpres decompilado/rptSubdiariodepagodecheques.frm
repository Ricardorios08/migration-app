VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C908002B2F49FB}#1.2#0"; "C:\WINDOWS\SysWOW64\comdlg32.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{EAB22AC0-30C1-11CF-A7EB0000C05BAE0B}#1.1#0"; "C:\Windows\SysWOW64\ieframe.dll"
Begin VB.Form rptSubdiariodepagodecheques
  Caption = "Subdiario de pago de cheques"
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "rptSubdiariodepagodecheques.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  ClientLeft = 2760
  ClientTop = 3750
  ClientWidth = 9645
  ClientHeight = 4575
  StartUpPosition = 2 'CenterScreen
  Begin MSComctlLib.StatusBar statusBar
    Left = 0
    Top = 4320
    Width = 9645
    Height = 255
    TabIndex = 21
    OleObjectBlob = "rptSubdiariodepagodecheques.frx":08CA
  End
  Begin VB.CommandButton cmdSalir
    Left = 7920
    Top = 3240
    Width = 735
    Height = 615
    TabIndex = 19
    Cancel = -1  'True
    Picture = "rptSubdiariodepagodecheques.frx":094A
    Style = 1
    CausesValidation = 0   'False
  End
  Begin MSComDlg.CommonDialog cdlGuardar
    OleObjectBlob = "rptSubdiariodepagodecheques.frx":0B9C
    Left = 5520
    Top = 0
  End
  Begin VB.Frame Frame3
    Caption = "Exportar"
    Left = 3240
    Top = 3000
    Width = 3495
    Height = 1095
    TabIndex = 17
    Begin VB.CommandButton cmdXLS
      Caption = "&XLS"
      Left = 1800
      Top = 360
      Width = 1335
      Height = 495
      Enabled = 0   'False
      TabIndex = 22
    End
    Begin VB.CommandButton cmdPdf
      Caption = "P&DF"
      Left = 240
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 18
    End
  End
  Begin VB.Frame Frame2
    Caption = "Imprimir"
    Left = 120
    Top = 3000
    Width = 3015
    Height = 1095
    TabIndex = 14
    Begin VB.CommandButton cmdPredeterminada
      Caption = "&Predeterminada"
      Left = 1560
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 16
    End
    Begin VB.CommandButton cmdPrevia
      Caption = "&Vista previa..."
      Left = 120
      Top = 360
      Width = 1335
      Height = 495
      TabIndex = 15
    End
  End
  Begin VB.Frame Frame1
    Left = 120
    Top = 0
    Width = 9375
    Height = 2775
    TabIndex = 0
    Begin VB.ComboBox cboPeriodo
      Style = 2
      ForeColor = &HFF0000&
      Left = 1485
      Top = 480
      Width = 1095
      Height = 315
      TabIndex = 2
    End
    Begin VB.CommandButton cmdCalHasta
      Left = 2685
      Top = 1440
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "rptSubdiariodepagodecheques.frx":0C00
      Style = 1
    End
    Begin VB.CommandButton cmdCalDesde
      Left = 2685
      Top = 960
      Width = 375
      Height = 375
      TabIndex = 6
      Picture = "rptSubdiariodepagodecheques.frx":1142
      Style = 1
    End
    Begin VB.CommandButton cmdCodiCuco
      Left = 3165
      Top = 1920
      Width = 375
      Height = 375
      TabIndex = 12
      Picture = "rptSubdiariodepagodecheques.frx":1684
      Style = 1
    End
    Begin VB.CommandButton cmdNueva
      Caption = "&Nueva búsqueda"
      Left = 5640
      Top = 840
      Width = 1335
      Height = 495
      TabIndex = 5
    End
    Begin MSMask.MaskEdBox mskDesde
      Left = 1485
      Top = 960
      Width = 1095
      Height = 285
      TabIndex = 4
      OleObjectBlob = "rptSubdiariodepagodecheques.frx":177E
    End
    Begin MSMask.MaskEdBox mskHasta
      Left = 1485
      Top = 1440
      Width = 1095
      Height = 285
      TabIndex = 8
      OleObjectBlob = "rptSubdiariodepagodecheques.frx":1806
    End
    Begin MSMask.MaskEdBox mskCodiCuco
      Left = 1485
      Top = 1920
      Width = 1575
      Height = 285
      TabIndex = 11
      OleObjectBlob = "rptSubdiariodepagodecheques.frx":188E
    End
    Begin VB.Label Label3
      Caption = "Periodo:"
      Left = 765
      Top = 480
      Width = 585
      Height = 195
      TabIndex = 1
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Hasta:"
      Left = 885
      Top = 1440
      Width = 465
      Height = 195
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Desde:"
      Left = 840
      Top = 960
      Width = 510
      Height = 195
      TabIndex = 3
      AutoSize = -1  'True
    End
    Begin VB.Label Label5
      Caption = "Cuenta Contable:"
      Left = 120
      Top = 1920
      Width = 1230
      Height = 195
      TabIndex = 10
    End
    Begin VB.Label lblDetaCuco
      Left = 3645
      Top = 1920
      Width = 5535
      Height = 375
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
    End
  End
  Begin SHDocVwCtl.WebBrowser wbbReporte
    Left = 8040
    Top = 3360
    Width = 495
    Height = 255
    TabStop = 0   'False
    TabIndex = 20
    OleObjectBlob = "rptSubdiariodepagodecheques.frx":190E
  End
End

Attribute VB_Name = "rptSubdiariodepagodecheques"

Public htmFile As Variant
Public bLogos As Boolean
Public bGenerado As Boolean

Private Type UDT_1_00589EAC
  bStruc(36) As Byte ' String fields: 9
End Type

Private Type UDT_2_00619ED0
  bStruc(20) As Byte ' String fields: 5
End Type


Private Sub Form_Load() '9D62B8
  'Data Table: 492F40
  loc_9D61CC: LitI2_Byte &HFF
  loc_9D61CE: ImpAdStI2 MemVar_C3D840
  loc_9D61D1: ILdRf Me
  loc_9D61D4: CastAd
  loc_9D61D7: FStAdFunc var_88
  loc_9D61DA: FLdRfVar var_88
  loc_9D61DD: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_9D61E2: FFree1Ad var_88
  loc_9D61E5: LitStr "SELECT * FROM infogov.periodo ORDER BY PeriInfo"
  loc_9D61E8: FLdPr Me
  loc_9D61EB: MemLdRfVar from_stack_1.global_72
  loc_9D61EE: NewIfNullPr clsperiodo
  loc_9D61F1: Call clsperiodo.RedefineRS(from_stack_1v)
  loc_9D61F6: FLdRfVar var_8C
  loc_9D61F9: FLdPr Me
  loc_9D61FC: MemLdRfVar from_stack_1.global_72
  loc_9D61FF: NewIfNullPr clsperiodo
  loc_9D6202: from_stack_1 = clsperiodo.RecordCount
  loc_9D6207: ILdRf var_8C
  loc_9D620A: LitI4 0
  loc_9D620F: GtI4
  loc_9D6210: BranchF loc_9D62AF
  loc_9D6213: FLdPr Me
  loc_9D6216: MemLdRfVar from_stack_1.global_72
  loc_9D6219: NewIfNullPr clsperiodo
  loc_9D621C: Call clsperiodo.MoveFirst()
  loc_9D6221: FLdRfVar var_8E
  loc_9D6224: FLdPr Me
  loc_9D6227: MemLdRfVar from_stack_1.global_72
  loc_9D622A: NewIfNullPr clsperiodo
  loc_9D622D: from_stack_1 = clsperiodo.EOF
  loc_9D6232: FLdI2 var_8E
  loc_9D6235: NotI4
  loc_9D6236: BranchF loc_9D62AF
  loc_9D6239: LitVar_Missing var_CC
  loc_9D623C: PopAdLdVar
  loc_9D623D: FLdRfVar var_B8
  loc_9D6240: FLdRfVar var_A8
  loc_9D6243: LitVarStr var_A4, "PeriInfo"
  loc_9D6248: PopAdLdVar
  loc_9D6249: FLdRfVar var_94
  loc_9D624C: FLdRfVar var_88
  loc_9D624F: FLdPr Me
  loc_9D6252: MemLdRfVar from_stack_1.global_72
  loc_9D6255: NewIfNullPr clsperiodo
  loc_9D6258: from_stack_1v = clsperiodo.RsFrmGet()
  loc_9D625D: FLdPr var_88
  loc_9D6260:  = Me.Fields
  loc_9D6265: FLdPr var_94
  loc_9D6268: from_stack_2 = Me.Item(from_stack_1)
  loc_9D626D: FLdPr var_A8
  loc_9D6270:  = Me.Value
  loc_9D6275: FLdRfVar var_B8
  loc_9D6278: CStrVarTmp
  loc_9D6279: FStStrNoPop var_BC
  loc_9D627C: FLdPr Me
  loc_9D627F: VCallAd Control_ID_cboPeriodo
  loc_9D6282: FStAdFunc var_D0
  loc_9D6285: FLdPr var_D0
  loc_9D6288: Me.AddItem from_stack_1, from_stack_2
  loc_9D628D: FFree1Str var_BC
  loc_9D6290: FFreeAd var_88 = "": var_94 = "": var_A8 = ""
  loc_9D629B: FFree1Var var_B8 = ""
  loc_9D629E: FLdPr Me
  loc_9D62A1: MemLdRfVar from_stack_1.global_72
  loc_9D62A4: NewIfNullPr clsperiodo
  loc_9D62A7: Call clsperiodo.MoveSiguiente()
  loc_9D62AC: Branch loc_9D6221
  loc_9D62AF: Call cmdNueva_Click()
  loc_9D62B4: ExitProcHresult
  loc_9D62B5: GeCyR8
  loc_9D62B6: ExitProcR8
End Sub

Private Sub Form_Unload(Cancel As Integer) '953AC0
  'Data Table: 492F40
  loc_953AA8: FLdPr Me
  loc_953AAB: VCallAd Control_ID_wbbReporte
  loc_953AAE: FStAdFunc var_88
  loc_953AB1: FLdRfVar var_88
  loc_953AB4: ImpAdCallFPR4 Proc_263_22_98CC50()
  loc_953AB9: FFree1Ad var_88
  loc_953ABC: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_0 '952E48
  'Data Table: 492F40
  loc_952E34: FLdPr Me
  loc_952E37: VCallAd Control_ID_mskDesde
  loc_952E3A: CVarAd
  loc_952E3E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952E43: FFree1Var var_94 = ""
  loc_952E46: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_1 '9E1D48
  'Data Table: 492F40
  loc_9E1C4C: FLdPr Me
  loc_9E1C4F: VCallAd Control_ID_mskDesde
  loc_9E1C52: FStAdFunc var_88
  loc_9E1C55: FLdPr var_88
  loc_9E1C58: LateIdLdVar var_98 DispID_22 0
  loc_9E1C5F: CStrVarTmp
  loc_9E1C60: FStStrNoPop var_9C
  loc_9E1C63: LitStr vbNullString
  loc_9E1C66: NeStr
  loc_9E1C68: FLdPr Me
  loc_9E1C6B: VCallAd Control_ID_mskHasta
  loc_9E1C6E: FStAdFunc var_A0
  loc_9E1C71: FLdPr var_A0
  loc_9E1C74: LateIdLdVar var_B0 DispID_22 0
  loc_9E1C7B: CStrVarTmp
  loc_9E1C7C: FStStrNoPop var_B4
  loc_9E1C7F: LitStr vbNullString
  loc_9E1C82: NeStr
  loc_9E1C84: AndI4
  loc_9E1C85: FFreeStr var_9C = ""
  loc_9E1C8C: FFreeAd var_88 = ""
  loc_9E1C93: FFreeVar var_98 = ""
  loc_9E1C9A: BranchF loc_9E1D47
  loc_9E1C9D: FLdPr Me
  loc_9E1CA0: VCallAd Control_ID_mskDesde
  loc_9E1CA3: FStAdFunc var_88
  loc_9E1CA6: FLdPr var_88
  loc_9E1CA9: LateIdLdVar var_98 DispID_15 0
  loc_9E1CB0: CStrVarTmp
  loc_9E1CB1: FStStrNoPop var_9C
  loc_9E1CB4: FLdPr Me
  loc_9E1CB7: VCallAd Control_ID_mskHasta
  loc_9E1CBA: FStAdFunc var_A0
  loc_9E1CBD: FLdPr var_A0
  loc_9E1CC0: LateIdLdVar var_B0 DispID_15 0
  loc_9E1CC7: CStrVarTmp
  loc_9E1CC8: FStStrNoPop var_B4
  loc_9E1CCB: GtStr
  loc_9E1CCD: FFreeStr var_9C = ""
  loc_9E1CD4: FFreeAd var_88 = ""
  loc_9E1CDB: FFreeVar var_98 = ""
  loc_9E1CE2: BranchF loc_9E1D47
  loc_9E1CE5: LitI4 0
  loc_9E1CEA: LitStr "Debe ingresar una fecha menor o igual que "
  loc_9E1CED: FLdPr Me
  loc_9E1CF0: VCallAd Control_ID_mskHasta
  loc_9E1CF3: FStAdFunc var_88
  loc_9E1CF6: FLdPr var_88
  loc_9E1CF9: LateIdLdVar var_98 DispID_15 0
  loc_9E1D00: CStrVarTmp
  loc_9E1D01: FStStrNoPop var_9C
  loc_9E1D04: ConcatStr
  loc_9E1D05: FStStrNoPop var_B4
  loc_9E1D08: LitStr "."
  loc_9E1D0B: ConcatStr
  loc_9E1D0C: FStStrNoPop var_B8
  loc_9E1D0F: LitStr vbCrLf
  loc_9E1D12: ConcatStr
  loc_9E1D13: FStStrNoPop var_BC
  loc_9E1D16: LitStr "O bien, dejarlo vacío."
  loc_9E1D19: ConcatStr
  loc_9E1D1A: FStStrNoPop var_C0
  loc_9E1D1D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9E1D22: FFreeStr var_9C = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_9E1D2F: FFree1Ad var_88
  loc_9E1D32: FFree1Var var_98 = ""
  loc_9E1D35: FLdPr Me
  loc_9E1D38: VCallAd Control_ID_mskDesde
  loc_9E1D3B: CVarAd
  loc_9E1D3F: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_9E1D44: FFree1Var var_98 = ""
  loc_9E1D47: ExitProcHresult
End Sub

Private Sub mskDesde_UnknownEvent_8 '9C3778
  'Data Table: 492F40
  loc_9C36B4: FLdPr Me
  loc_9C36B7: VCallAd Control_ID_mskDesde
  loc_9C36BA: FStAdFunc var_88
  loc_9C36BD: FLdPr var_88
  loc_9C36C0: LateIdLdVar var_98 DispID_22 0
  loc_9C36C7: CStrVarTmp
  loc_9C36C8: FStStrNoPop var_9C
  loc_9C36CB: LitStr vbNullString
  loc_9C36CE: NeStr
  loc_9C36D0: FFree1Str var_9C
  loc_9C36D3: FFree1Ad var_88
  loc_9C36D6: FFree1Var var_98 = ""
  loc_9C36D9: BranchF loc_9C3774
  loc_9C36DC: FLdPr Me
  loc_9C36DF: VCallAd Control_ID_mskDesde
  loc_9C36E2: FStAdFunc var_88
  loc_9C36E5: FLdPr var_88
  loc_9C36E8: LateIdLdVar var_98 DispID_15 0
  loc_9C36EF: PopAd
  loc_9C36F1: FLdPr Me
  loc_9C36F4: VCallAd Control_ID_mskDesde
  loc_9C36F7: FStAdFunc var_AC
  loc_9C36FA: LitI2_Byte &HFF
  loc_9C36FC: PopTmpLdAd2 var_A2
  loc_9C36FF: FLdZeroAd var_AC
  loc_9C3702: FStAdFunc var_A0
  loc_9C3705: FLdRfVar var_A0
  loc_9C3708: LitStr vbNullString
  loc_9C370B: LitI2_Byte 0
  loc_9C370D: LitI2_Byte 0
  loc_9C370F: FLdRfVar var_98
  loc_9C3712: CStrVarTmp
  loc_9C3713: FStStrNoPop var_9C
  loc_9C3716: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C371B: FStStrNoPop var_A8
  loc_9C371E: FLdPr Me
  loc_9C3721: MemStStrCopy
  loc_9C3725: FFreeStr var_9C = ""
  loc_9C372C: FFreeAd var_88 = "": var_A0 = ""
  loc_9C3735: FFree1Var var_98 = ""
  loc_9C3738: FLdPr Me
  loc_9C373B: VCallAd Control_ID_mskDesde
  loc_9C373E: FStAdFunc var_B0
  loc_9C3741: LitNothing
  loc_9C3743: CastAd
  loc_9C3746: FStAdFunc var_AC
  loc_9C3749: FLdRfVar var_AC
  loc_9C374C: FLdZeroAd var_B0
  loc_9C374F: FStAdFuncNoPop
  loc_9C3752: CastAd
  loc_9C3755: FStAdFunc var_A0
  loc_9C3758: FLdRfVar var_A0
  loc_9C375B: FLdPr Me
  loc_9C375E: MemLdRfVar from_stack_1.global_120
  loc_9C3761: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C3766: IStI2 Cancel
  loc_9C3769: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9C3774: ExitProcHresult
End Sub

Private Sub cboPeriodo_Click() '9D2C30
  'Data Table: 492F40
  loc_9D2B48: FLdRfVar var_8C
  loc_9D2B4B: FLdPr Me
  loc_9D2B4E: VCallAd Control_ID_cboPeriodo
  loc_9D2B51: FStAdFunc var_88
  loc_9D2B54: FLdPr var_88
  loc_9D2B57:  = Me.Text
  loc_9D2B5C: LitI2_Byte 1
  loc_9D2B5E: LitI2_Byte 1
  loc_9D2B60: ILdRf var_8C
  loc_9D2B63: CI2Str
  loc_9D2B65: FLdRfVar var_9C
  loc_9D2B68: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D2B6D: FLdRfVar var_9C
  loc_9D2B70: CStrVarTmp
  loc_9D2B71: CVarStr var_AC
  loc_9D2B74: PopAdLdVar
  loc_9D2B75: FLdPr Me
  loc_9D2B78: VCallAd Control_ID_mskDesde
  loc_9D2B7B: FStAdFunc var_C0
  loc_9D2B7E: FLdPr var_C0
  loc_9D2B81: LateIdSt
  loc_9D2B86: FFree1Str var_8C
  loc_9D2B89: FFreeAd var_88 = ""
  loc_9D2B90: FFreeVar var_9C = ""
  loc_9D2B97: FLdRfVar var_8C
  loc_9D2B9A: FLdPr Me
  loc_9D2B9D: VCallAd Control_ID_cboPeriodo
  loc_9D2BA0: FStAdFunc var_88
  loc_9D2BA3: FLdPr var_88
  loc_9D2BA6:  = Me.Text
  loc_9D2BAB: ILdRf var_8C
  loc_9D2BAE: CI2Str
  loc_9D2BB0: ImpAdLdI2 MemVar_C3D064
  loc_9D2BB3: LtI2
  loc_9D2BB4: FFree1Str var_8C
  loc_9D2BB7: FFree1Ad var_88
  loc_9D2BBA: BranchF loc_9D2C0F
  loc_9D2BBD: FLdRfVar var_8C
  loc_9D2BC0: FLdPr Me
  loc_9D2BC3: VCallAd Control_ID_cboPeriodo
  loc_9D2BC6: FStAdFunc var_88
  loc_9D2BC9: FLdPr var_88
  loc_9D2BCC:  = Me.Text
  loc_9D2BD1: LitI2_Byte &H1F
  loc_9D2BD3: LitI2_Byte &HC
  loc_9D2BD5: ILdRf var_8C
  loc_9D2BD8: CI2Str
  loc_9D2BDA: FLdRfVar var_9C
  loc_9D2BDD: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D2BE2: FLdRfVar var_9C
  loc_9D2BE5: CStrVarTmp
  loc_9D2BE6: CVarStr var_AC
  loc_9D2BE9: PopAdLdVar
  loc_9D2BEA: FLdPr Me
  loc_9D2BED: VCallAd Control_ID_mskHasta
  loc_9D2BF0: FStAdFunc var_C0
  loc_9D2BF3: FLdPr var_C0
  loc_9D2BF6: LateIdSt
  loc_9D2BFB: FFree1Str var_8C
  loc_9D2BFE: FFreeAd var_88 = ""
  loc_9D2C05: FFreeVar var_9C = ""
  loc_9D2C0C: Branch loc_9D2C2F
  loc_9D2C0F: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D2C12: CStrDate
  loc_9D2C14: CVarStr var_9C
  loc_9D2C17: PopAdLdVar
  loc_9D2C18: FLdPr Me
  loc_9D2C1B: VCallAd Control_ID_mskHasta
  loc_9D2C1E: FStAdFunc var_88
  loc_9D2C21: FLdPr var_88
  loc_9D2C24: LateIdSt
  loc_9D2C29: FFree1Ad var_88
  loc_9D2C2C: FFree1Var var_9C = ""
  loc_9D2C2F: ExitProcHresult
End Sub

Private Sub cmdXLS_Click() '96A4FC
  'Data Table: 492F40
  loc_96A4E0: LitI2_Byte &HFF
  loc_96A4E2: LitI2_Byte 0
  loc_96A4E4: ILdRf Me
  loc_96A4E7: CastAd
  loc_96A4EA: FStAdFunc var_88
  loc_96A4ED: FLdRfVar var_88
  loc_96A4F0: ImpAdCallFPR4 Proc_263_4_A28DF0(, , )
  loc_96A4F5: FFree1Ad var_88
  loc_96A4F8: ExitProcHresult
End Sub

Private Sub cmdNueva_Click() '9D2FB0
  'Data Table: 492F40
  loc_9D2ECC: LitI2_Byte 0
  loc_9D2ECE: FLdPr Me
  loc_9D2ED1: MemStI2 bGenerado
  loc_9D2ED4: LitI2_Byte &HFF
  loc_9D2ED6: FLdPr Me
  loc_9D2ED9: MemStI2 bLogos
  loc_9D2EDC: ImpAdCallFPR4 Proc_261_50_9B5324()
  loc_9D2EE1: ImpAdLdI2 MemVar_C3D064
  loc_9D2EE4: CStrUI1
  loc_9D2EE6: FStStrNoPop var_88
  loc_9D2EE9: FLdPr Me
  loc_9D2EEC: VCallAd Control_ID_cboPeriodo
  loc_9D2EEF: FStAdFunc var_8C
  loc_9D2EF2: FLdPr var_8C
  loc_9D2EF5: Me.Text = from_stack_1
  loc_9D2EFA: FFree1Str var_88
  loc_9D2EFD: FFree1Ad var_8C
  loc_9D2F00: ImpAdLdRf MemVar_C3D04C
  loc_9D2F03: CVarRef
  loc_9D2F08: FLdRfVar var_AC
  loc_9D2F0B: ImpAdCallFPR4  = Year()
  loc_9D2F10: ImpAdLdRf MemVar_C3D04C
  loc_9D2F13: CVarRef
  loc_9D2F18: FLdRfVar var_CC
  loc_9D2F1B: ImpAdCallFPR4  = Month()
  loc_9D2F20: LitI2_Byte 1
  loc_9D2F22: FLdRfVar var_CC
  loc_9D2F25: CI2Var
  loc_9D2F26: FLdRfVar var_AC
  loc_9D2F29: CI2Var
  loc_9D2F2A: FLdRfVar var_DC
  loc_9D2F2D: ImpAdCallFPR4  = DateSerial(, , )
  loc_9D2F32: FLdRfVar var_DC
  loc_9D2F35: CStrVarTmp
  loc_9D2F36: CVarStr var_EC
  loc_9D2F39: PopAdLdVar
  loc_9D2F3A: FLdPr Me
  loc_9D2F3D: VCallAd Control_ID_mskDesde
  loc_9D2F40: FStAdFunc var_8C
  loc_9D2F43: FLdPr var_8C
  loc_9D2F46: LateIdSt
  loc_9D2F4B: FFree1Ad var_8C
  loc_9D2F4E: FFreeVar var_AC = "": var_CC = "": var_DC = ""
  loc_9D2F59: ImpAdLdFPR8 MemVar_C3D04C
  loc_9D2F5C: CStrDate
  loc_9D2F5E: CVarStr var_AC
  loc_9D2F61: PopAdLdVar
  loc_9D2F62: FLdPr Me
  loc_9D2F65: VCallAd Control_ID_mskHasta
  loc_9D2F68: FStAdFunc var_8C
  loc_9D2F6B: FLdPr var_8C
  loc_9D2F6E: LateIdSt
  loc_9D2F73: FFree1Ad var_8C
  loc_9D2F76: FFree1Var var_AC = ""
  loc_9D2F79: LitVarStr var_9C, vbNullString
  loc_9D2F7E: PopAdLdVar
  loc_9D2F7F: FLdPr Me
  loc_9D2F82: VCallAd Control_ID_mskCodiCuco
  loc_9D2F85: FStAdFunc var_8C
  loc_9D2F88: FLdPr var_8C
  loc_9D2F8B: LateIdSt
  loc_9D2F90: FFree1Ad var_8C
  loc_9D2F93: Call HabilitarCriterio()
  loc_9D2F98: ILdRf Me
  loc_9D2F9B: CastAd
  loc_9D2F9E: FStAdFunc var_8C
  loc_9D2FA1: FLdRfVar var_8C
  loc_9D2FA4: ImpAdCallFPR4 Proc_263_12_9C9114()
  loc_9D2FA9: FFree1Ad var_8C
  loc_9D2FAC: ExitProcHresult
End Sub

Private Sub cmdPdf_Click() '953BF0
  'Data Table: 492F40
  loc_953BD8: LitI2_Byte 0
  loc_953BDA: ILdRf Me
  loc_953BDD: CastAd
  loc_953BE0: FStAdFunc var_88
  loc_953BE3: FLdRfVar var_88
  loc_953BE6: ImpAdCallFPR4 Proc_263_2_A3B50C(, )
  loc_953BEB: FFree1Ad var_88
  loc_953BEE: ExitProcHresult
End Sub

Private Sub cmdSalir_Click() '97AD20
  'Data Table: 492F40
  loc_97ACF0: LitVarStr var_94, "Cerrando..."
  loc_97ACF5: PopAdLdVar
  loc_97ACF6: FLdPr Me
  loc_97ACF9: VCallAd Control_ID_statusBar
  loc_97ACFC: FStAdFunc var_A8
  loc_97ACFF: FLdPr var_A8
  loc_97AD02: LateIdSt
  loc_97AD07: FFree1Ad var_A8
  loc_97AD0A: ILdRf Me
  loc_97AD0D: FStAdNoPop
  loc_97AD11: ImpAdLdRf MemVar_C44F9C
  loc_97AD14: NewIfNullPr Me
  loc_97AD17: Me.Global.Unload from_stack_1
  loc_97AD1C: FFree1Ad var_A8
  loc_97AD1F: ExitProcHresult
End Sub

Private Sub mskCodiCuco_UnknownEvent_0 '952FF8
  'Data Table: 492F40
  loc_952FE4: FLdPr Me
  loc_952FE7: VCallAd Control_ID_mskCodiCuco
  loc_952FEA: CVarAd
  loc_952FEE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952FF3: FFree1Var var_94 = ""
  loc_952FF6: ExitProcHresult
End Sub

Private Sub mskCodiCuco_UnknownEvent_1 'A0FE44
  'Data Table: 492F40
  loc_A0FCEC: LitStr "SELECT DetaCuco FROM infogov.cuentacontable WHERE PeriInfo = "
  loc_A0FCEF: FLdRfVar var_8C
  loc_A0FCF2: FLdPr Me
  loc_A0FCF5: VCallAd Control_ID_cboPeriodo
  loc_A0FCF8: FStAdFunc var_88
  loc_A0FCFB: FLdPr var_88
  loc_A0FCFE:  = Me.Text
  loc_A0FD03: ILdRf var_8C
  loc_A0FD06: ConcatStr
  loc_A0FD07: FStStrNoPop var_90
  loc_A0FD0A: LitStr " AND CodiCuco LIKE '"
  loc_A0FD0D: ConcatStr
  loc_A0FD0E: FStStrNoPop var_A8
  loc_A0FD11: FLdPr Me
  loc_A0FD14: VCallAd Control_ID_mskCodiCuco
  loc_A0FD17: FStAdFunc var_94
  loc_A0FD1A: FLdPr var_94
  loc_A0FD1D: LateIdLdVar var_A4 DispID_20 0
  loc_A0FD24: CStrVarTmp
  loc_A0FD25: FStStrNoPop var_AC
  loc_A0FD28: ConcatStr
  loc_A0FD29: FStStrNoPop var_B0
  loc_A0FD2C: LitStr Chr(37) & "'"
  loc_A0FD2F: ConcatStr
  loc_A0FD30: FStStrNoPop var_B4
  loc_A0FD33: FLdPr Me
  loc_A0FD36: MemLdRfVar from_stack_1.global_76
  loc_A0FD39: NewIfNullPr clscuentacontable
  loc_A0FD3C: Call clscuentacontable.RedefineRS(from_stack_1v)
  loc_A0FD41: FFreeStr var_8C = "": var_90 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_A0FD50: FFreeAd var_88 = ""
  loc_A0FD57: FFree1Var var_A4 = ""
  loc_A0FD5A: FLdRfVar var_B8
  loc_A0FD5D: FLdPr Me
  loc_A0FD60: MemLdRfVar from_stack_1.global_76
  loc_A0FD63: NewIfNullPr clscuentacontable
  loc_A0FD66: from_stack_1 = clscuentacontable.RecordCount
  loc_A0FD6B: ILdRf var_B8
  loc_A0FD6E: FStR4 var_BC
  loc_A0FD71: ILdRf var_BC
  loc_A0FD74: LitI4 0
  loc_A0FD79: EqI4
  loc_A0FD7A: BranchF loc_A0FD97
  loc_A0FD7D: LitStr vbNullString
  loc_A0FD80: FLdPr Me
  loc_A0FD83: VCallAd Control_ID_lblDetaCuco
  loc_A0FD86: FStAdFunc var_88
  loc_A0FD89: FLdPr var_88
  loc_A0FD8C: Me.Caption = from_stack_1
  loc_A0FD91: FFree1Ad var_88
  loc_A0FD94: Branch loc_A0FE42
  loc_A0FD97: ILdRf var_BC
  loc_A0FD9A: LitI4 1
  loc_A0FD9F: EqI4
  loc_A0FDA0: BranchF loc_A0FE07
  loc_A0FDA3: FLdRfVar var_A4
  loc_A0FDA6: FLdRfVar var_D0
  loc_A0FDA9: LitVarStr var_CC, "DetaCuco"
  loc_A0FDAE: PopAdLdVar
  loc_A0FDAF: FLdRfVar var_94
  loc_A0FDB2: FLdRfVar var_88
  loc_A0FDB5: FLdPr Me
  loc_A0FDB8: MemLdRfVar from_stack_1.global_76
  loc_A0FDBB: NewIfNullPr clscuentacontable
  loc_A0FDBE: from_stack_1v = clscuentacontable.RsFrmGet()
  loc_A0FDC3: FLdPr var_88
  loc_A0FDC6:  = Me.Fields
  loc_A0FDCB: FLdPr var_94
  loc_A0FDCE: from_stack_2 = Me.Item(from_stack_1)
  loc_A0FDD3: FLdPr var_D0
  loc_A0FDD6:  = Me.Value
  loc_A0FDDB: FLdRfVar var_A4
  loc_A0FDDE: CStrVarTmp
  loc_A0FDDF: FStStrNoPop var_8C
  loc_A0FDE2: FLdPr Me
  loc_A0FDE5: VCallAd Control_ID_lblDetaCuco
  loc_A0FDE8: FStAdFunc var_D4
  loc_A0FDEB: FLdPr var_D4
  loc_A0FDEE: Me.Caption = from_stack_1
  loc_A0FDF3: FFree1Str var_8C
  loc_A0FDF6: FFreeAd var_88 = "": var_94 = "": var_D0 = ""
  loc_A0FE01: FFree1Var var_A4 = ""
  loc_A0FE04: Branch loc_A0FE42
  loc_A0FE07: FLdRfVar var_B8
  loc_A0FE0A: FLdPr Me
  loc_A0FE0D: MemLdRfVar from_stack_1.global_76
  loc_A0FE10: NewIfNullPr clscuentacontable
  loc_A0FE13: from_stack_1 = clscuentacontable.RecordCount
  loc_A0FE18: ILdRf var_B8
  loc_A0FE1B: CStrI4
  loc_A0FE1D: FStStrNoPop var_8C
  loc_A0FE20: LitStr " cuentas encontradas"
  loc_A0FE23: ConcatStr
  loc_A0FE24: FStStrNoPop var_90
  loc_A0FE27: FLdPr Me
  loc_A0FE2A: VCallAd Control_ID_lblDetaCuco
  loc_A0FE2D: FStAdFunc var_88
  loc_A0FE30: FLdPr var_88
  loc_A0FE33: Me.Caption = from_stack_1
  loc_A0FE38: FFreeStr var_8C = ""
  loc_A0FE3F: FFree1Ad var_88
  loc_A0FE42: ExitProcHresult
  loc_A0FE43: CStr2Ansi
End Sub

Private Sub cmdPrevia_Click() '953CD4
  'Data Table: 492F40
  loc_953CBC: ILdRf Me
  loc_953CBF: CastAd
  loc_953CC2: FStAdFunc var_88
  loc_953CC5: FLdRfVar var_88
  loc_953CC8: ImpAdCallFPR4 Proc_263_0_9C6454()
  loc_953CCD: FFree1Ad var_88
  loc_953CD0: ExitProcHresult
  loc_953CD1: FStStr arg_364
End Sub

Private Sub cmdCodiCuco_Click() '9FD5C8
  'Data Table: 492F40
  loc_9FD484: FLdRfVar var_8C
  loc_9FD487: FLdPr Me
  loc_9FD48A: VCallAd Control_ID_cboPeriodo
  loc_9FD48D: FStAdFunc var_88
  loc_9FD490: FLdPr var_88
  loc_9FD493:  = Me.Text
  loc_9FD498: ILdRf var_8C
  loc_9FD49B: CI2Str
  loc_9FD49D: ImpAdLdRf MemVar_C3D6C0
  loc_9FD4A0: NewIfNullPr bscCuentaContable
  loc_9FD4A3: Call bscCuentaContable.iPeriInfoPut(from_stack_1v)
  loc_9FD4A8: FFree1Str var_8C
  loc_9FD4AB: FFree1Ad var_88
  loc_9FD4AE: LitVar_Missing var_AC
  loc_9FD4B1: PopAdLdVar
  loc_9FD4B2: LitVarI4
  loc_9FD4BA: PopAdLdVar
  loc_9FD4BB: ImpAdLdRf MemVar_C3D6C0
  loc_9FD4BE: NewIfNullPr bscCuentaContable
  loc_9FD4C1: bscCuentaContable.Show from_stack_1, from_stack_2
  loc_9FD4C6: FLdRfVar var_B0
  loc_9FD4C9: FLdRfVar var_88
  loc_9FD4CC: ImpAdLdRf MemVar_C3D6C0
  loc_9FD4CF: NewIfNullPr bscCuentaContable
  loc_9FD4D2: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9FD4D7: FLdPr var_88
  loc_9FD4DA: from_stack_1 = clsbase.RecordCount
  loc_9FD4DF: ILdRf var_B0
  loc_9FD4E2: LitI4 0
  loc_9FD4E7: GtI4
  loc_9FD4E8: FFree1Ad var_88
  loc_9FD4EB: BranchF loc_9FD5C6
  loc_9FD4EE: FLdRfVar var_CC
  loc_9FD4F1: FLdRfVar var_BC
  loc_9FD4F4: LitVarStr var_9C, "CodiCuco"
  loc_9FD4F9: PopAdLdVar
  loc_9FD4FA: FLdRfVar var_B8
  loc_9FD4FD: FLdRfVar var_B4
  loc_9FD500: FLdRfVar var_88
  loc_9FD503: ImpAdLdRf MemVar_C3D6C0
  loc_9FD506: NewIfNullPr bscCuentaContable
  loc_9FD509: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9FD50E: FLdPr var_88
  loc_9FD511: from_stack_1v = clsbase.RsFrmGet()
  loc_9FD516: FLdPr var_B4
  loc_9FD519:  = Me.Fields
  loc_9FD51E: FLdPr var_B8
  loc_9FD521: from_stack_2 = Me.Item(from_stack_1)
  loc_9FD526: FLdPr var_BC
  loc_9FD529:  = Me.Value
  loc_9FD52E: FLdRfVar var_CC
  loc_9FD531: CStrVarTmp
  loc_9FD532: CVarStr var_DC
  loc_9FD535: PopAdLdVar
  loc_9FD536: FLdPr Me
  loc_9FD539: VCallAd Control_ID_mskCodiCuco
  loc_9FD53C: FStAdFunc var_E0
  loc_9FD53F: FLdPr var_E0
  loc_9FD542: LateIdSt
  loc_9FD547: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_9FD554: FFreeVar var_CC = ""
  loc_9FD55B: FLdRfVar var_CC
  loc_9FD55E: FLdRfVar var_BC
  loc_9FD561: LitVarStr var_9C, "DetaCuco"
  loc_9FD566: PopAdLdVar
  loc_9FD567: FLdRfVar var_B8
  loc_9FD56A: FLdRfVar var_B4
  loc_9FD56D: FLdRfVar var_88
  loc_9FD570: ImpAdLdRf MemVar_C3D6C0
  loc_9FD573: NewIfNullPr bscCuentaContable
  loc_9FD576: from_stack_1v = bscCuentaContable.global_4334344Get()
  loc_9FD57B: FLdPr var_88
  loc_9FD57E: from_stack_1v = clsbase.RsFrmGet()
  loc_9FD583: FLdPr var_B4
  loc_9FD586:  = Me.Fields
  loc_9FD58B: FLdPr var_B8
  loc_9FD58E: from_stack_2 = Me.Item(from_stack_1)
  loc_9FD593: FLdPr var_BC
  loc_9FD596:  = Me.Value
  loc_9FD59B: FLdRfVar var_CC
  loc_9FD59E: CStrVarTmp
  loc_9FD59F: FStStrNoPop var_8C
  loc_9FD5A2: FLdPr Me
  loc_9FD5A5: VCallAd Control_ID_lblDetaCuco
  loc_9FD5A8: FStAdFunc var_E0
  loc_9FD5AB: FLdPr var_E0
  loc_9FD5AE: Me.Caption = from_stack_1
  loc_9FD5B3: FFree1Str var_8C
  loc_9FD5B6: FFreeAd var_88 = "": var_B4 = "": var_B8 = "": var_BC = ""
  loc_9FD5C3: FFree1Var var_CC = ""
  loc_9FD5C6: ExitProcHresult
End Sub

Private Sub statusBar_MouseMove(Button As Integer, Shift As Integer, x As OLE_XPOS_PIXELS, y As OLE_YPOS_PIXELS) '98B4A4
  'Data Table: 492F40
  loc_98B46C: FLdPr Me
  loc_98B46F: VCallAd Control_ID_statusBar
  loc_98B472: FStAdFunc var_88
  loc_98B475: FLdPr var_88
  loc_98B478: LateIdLdVar var_98 DispID_1 0
  loc_98B47F: CStrVarTmp
  loc_98B480: CVarStr var_A8
  loc_98B483: PopAdLdVar
  loc_98B484: FLdPr Me
  loc_98B487: VCallAd Control_ID_statusBar
  loc_98B48A: FStAdFunc var_BC
  loc_98B48D: FLdPr var_BC
  loc_98B490: LateIdSt
  loc_98B495: FFreeAd var_88 = ""
  loc_98B49C: FFreeVar var_98 = ""
  loc_98B4A3: ExitProcHresult
End Sub

Private Sub cmdCalDesde_Click() '97CEB8
  'Data Table: 492F40
  loc_97CE84: LitVar_Missing var_A4
  loc_97CE87: PopAdLdVar
  loc_97CE88: LitVarI4
  loc_97CE90: PopAdLdVar
  loc_97CE91: ImpAdLdRf MemVar_C3D9A8
  loc_97CE94: NewIfNullPr frmCalendario
  loc_97CE97: frmCalendario.Show from_stack_1, from_stack_2
  loc_97CE9C: ImpAdLdRf MemVar_C3D038
  loc_97CE9F: CDargRef
  loc_97CEA3: FLdPr Me
  loc_97CEA6: VCallAd Control_ID_mskDesde
  loc_97CEA9: FStAdFunc var_A8
  loc_97CEAC: FLdPr var_A8
  loc_97CEAF: LateIdSt
  loc_97CEB4: FFree1Ad var_A8
  loc_97CEB7: ExitProcHresult
End Sub

Private Sub cmdCalHasta_Click() '97C560
  'Data Table: 492F40
  loc_97C52C: LitVar_Missing var_A4
  loc_97C52F: PopAdLdVar
  loc_97C530: LitVarI4
  loc_97C538: PopAdLdVar
  loc_97C539: ImpAdLdRf MemVar_C3D9A8
  loc_97C53C: NewIfNullPr frmCalendario
  loc_97C53F: frmCalendario.Show from_stack_1, from_stack_2
  loc_97C544: ImpAdLdRf MemVar_C3D038
  loc_97C547: CDargRef
  loc_97C54B: FLdPr Me
  loc_97C54E: VCallAd Control_ID_mskHasta
  loc_97C551: FStAdFunc var_A8
  loc_97C554: FLdPr var_A8
  loc_97C557: LateIdSt
  loc_97C55C: FFree1Ad var_A8
  loc_97C55F: ExitProcHresult
End Sub

Private Sub cmdPredeterminada_Click() '953D20
  'Data Table: 492F40
  loc_953D08: ILdRf Me
  loc_953D0B: CastAd
  loc_953D0E: FStAdFunc var_88
  loc_953D11: FLdRfVar var_88
  loc_953D14: ImpAdCallFPR4 Proc_263_1_9AD9D4()
  loc_953D19: FFree1Ad var_88
  loc_953D1C: ExitProcHresult
  loc_953D1D: FLdI2 arg_358
End Sub

Private Sub mskHasta_UnknownEvent_0 '952D70
  'Data Table: 492F40
  loc_952D5C: FLdPr Me
  loc_952D5F: VCallAd Control_ID_mskHasta
  loc_952D62: CVarAd
  loc_952D66: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_952D6B: FFree1Var var_94 = ""
  loc_952D6E: ExitProcHresult
End Sub

Private Sub mskHasta_UnknownEvent_1 'A16538
  'Data Table: 492F40
  loc_A163E4: FLdPr Me
  loc_A163E7: VCallAd Control_ID_mskDesde
  loc_A163EA: FStAdFunc var_88
  loc_A163ED: FLdPr var_88
  loc_A163F0: LateIdLdVar var_98 DispID_22 0
  loc_A163F7: CStrVarTmp
  loc_A163F8: FStStrNoPop var_9C
  loc_A163FB: LitStr vbNullString
  loc_A163FE: NeStr
  loc_A16400: FLdPr Me
  loc_A16403: VCallAd Control_ID_mskHasta
  loc_A16406: FStAdFunc var_A0
  loc_A16409: FLdPr var_A0
  loc_A1640C: LateIdLdVar var_B0 DispID_22 0
  loc_A16413: CStrVarTmp
  loc_A16414: FStStrNoPop var_B4
  loc_A16417: LitStr vbNullString
  loc_A1641A: NeStr
  loc_A1641C: AndI4
  loc_A1641D: CVarBoolI2 var_110
  loc_A16421: FLdRfVar var_BC
  loc_A16424: FLdRfVar var_B8
  loc_A16427: ImpAdLdRf MemVar_C44F9C
  loc_A1642A: NewIfNullPr Me
  loc_A1642D:  = Me.Global.Screen
  loc_A16432: FLdPr var_B8
  loc_A16435:  = Screen.ActiveControl
  loc_A1643A: FLdPr var_BC
  loc_A1643D: LateIdLdVar var_F0 DispID_0 0
  loc_A16444: FLdPr Me
  loc_A16447: VCallAd Control_ID_mskDesde
  loc_A1644A: FStAdFunc var_C0
  loc_A1644D: FLdPr var_C0
  loc_A16450: LateIdLdVar var_D0 DispID_0 0
  loc_A16457: CStrVarTmp
  loc_A16458: CVarStr var_E0
  loc_A1645B: HardType
  loc_A1645C: NeVar var_100
  loc_A16460: AndVar var_120
  loc_A16464: CBoolVarNull
  loc_A16466: FFreeStr var_9C = ""
  loc_A1646D: FFreeAd var_88 = "": var_A0 = "": var_B8 = "": var_C0 = ""
  loc_A1647A: FFreeVar var_98 = "": var_B0 = "": var_D0 = "": var_F0 = "": var_E0 = ""
  loc_A16489: BranchF loc_A16536
  loc_A1648C: FLdPr Me
  loc_A1648F: VCallAd Control_ID_mskDesde
  loc_A16492: FStAdFunc var_88
  loc_A16495: FLdPr var_88
  loc_A16498: LateIdLdVar var_98 DispID_15 0
  loc_A1649F: CStrVarTmp
  loc_A164A0: FStStrNoPop var_9C
  loc_A164A3: FLdPr Me
  loc_A164A6: VCallAd Control_ID_mskHasta
  loc_A164A9: FStAdFunc var_A0
  loc_A164AC: FLdPr var_A0
  loc_A164AF: LateIdLdVar var_B0 DispID_15 0
  loc_A164B6: CStrVarTmp
  loc_A164B7: FStStrNoPop var_B4
  loc_A164BA: GtStr
  loc_A164BC: FFreeStr var_9C = ""
  loc_A164C3: FFreeAd var_88 = ""
  loc_A164CA: FFreeVar var_98 = ""
  loc_A164D1: BranchF loc_A16536
  loc_A164D4: LitI4 0
  loc_A164D9: LitStr "Debe ingresar una fecha mayor o igual que "
  loc_A164DC: FLdPr Me
  loc_A164DF: VCallAd Control_ID_mskDesde
  loc_A164E2: FStAdFunc var_88
  loc_A164E5: FLdPr var_88
  loc_A164E8: LateIdLdVar var_98 DispID_15 0
  loc_A164EF: CStrVarTmp
  loc_A164F0: FStStrNoPop var_9C
  loc_A164F3: ConcatStr
  loc_A164F4: FStStrNoPop var_B4
  loc_A164F7: LitStr "."
  loc_A164FA: ConcatStr
  loc_A164FB: FStStrNoPop var_124
  loc_A164FE: LitStr vbCrLf
  loc_A16501: ConcatStr
  loc_A16502: FStStrNoPop var_128
  loc_A16505: LitStr "O bien, dejarlo vacío."
  loc_A16508: ConcatStr
  loc_A16509: FStStrNoPop var_12C
  loc_A1650C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A16511: FFreeStr var_9C = "": var_B4 = "": var_124 = "": var_128 = ""
  loc_A1651E: FFree1Ad var_88
  loc_A16521: FFree1Var var_98 = ""
  loc_A16524: FLdPr Me
  loc_A16527: VCallAd Control_ID_mskHasta
  loc_A1652A: CVarAd
  loc_A1652E: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_A16533: FFree1Var var_98 = ""
  loc_A16536: ExitProcHresult
End Sub

Private Function mskHasta_UnknownEvent_8(arg_C) '9B24CC
  'Data Table: 492F40
  loc_9B2430: FLdPr Me
  loc_9B2433: VCallAd Control_ID_mskHasta
  loc_9B2436: FStAdFunc var_88
  loc_9B2439: FLdPr var_88
  loc_9B243C: LateIdLdVar var_98 DispID_15 0
  loc_9B2443: PopAd
  loc_9B2445: FLdPr Me
  loc_9B2448: VCallAd Control_ID_mskHasta
  loc_9B244B: FStAdFunc var_AC
  loc_9B244E: LitI2_Byte &HFF
  loc_9B2450: PopTmpLdAd2 var_A2
  loc_9B2453: FLdZeroAd var_AC
  loc_9B2456: FStAdFunc var_A0
  loc_9B2459: FLdRfVar var_A0
  loc_9B245C: LitStr vbNullString
  loc_9B245F: LitI2_Byte 0
  loc_9B2461: LitI2_Byte 0
  loc_9B2463: FLdRfVar var_98
  loc_9B2466: CStrVarTmp
  loc_9B2467: FStStrNoPop var_9C
  loc_9B246A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9B246F: FStStrNoPop var_A8
  loc_9B2472: FLdPr Me
  loc_9B2475: MemStStrCopy
  loc_9B2479: FFreeStr var_9C = ""
  loc_9B2480: FFreeAd var_88 = "": var_A0 = ""
  loc_9B2489: FFree1Var var_98 = ""
  loc_9B248C: FLdPr Me
  loc_9B248F: VCallAd Control_ID_mskHasta
  loc_9B2492: FStAdFunc var_B0
  loc_9B2495: LitNothing
  loc_9B2497: CastAd
  loc_9B249A: FStAdFunc var_AC
  loc_9B249D: FLdRfVar var_AC
  loc_9B24A0: FLdZeroAd var_B0
  loc_9B24A3: FStAdFuncNoPop
  loc_9B24A6: CastAd
  loc_9B24A9: FStAdFunc var_A0
  loc_9B24AC: FLdRfVar var_A0
  loc_9B24AF: FLdPr Me
  loc_9B24B2: MemLdRfVar from_stack_1.global_120
  loc_9B24B5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B24BA: IStI2 arg_C
  loc_9B24BD: FFreeAd var_88 = "": var_A0 = "": var_AC = ""
  loc_9B24C8: ExitProcHresult
End Function

Public Function htmFileGet() '493FD0
  htmFileGet = htmFile
End Function

Public Sub htmFilePut(Value) '493FDF
  htmFile = Value
End Sub

Public Sub htmFileSet(Value) '493FEE
  htmFile = Value
End Sub

Public Function bLogosGet() '493FFD
  bLogosGet = bLogos
End Function

Public Sub bLogosPut(Value) '49400C
  bLogos = Value
End Sub

Public Function bGeneradoGet() '49401B
  bGeneradoGet = bGenerado
End Function

Public Sub bGeneradoPut(Value) '49402A
  bGenerado = Value
End Sub

Public Sub GeneraHTML() 'B09738
  'Data Table: 492F40
  loc_B08F3C: FLdRfVar var_88
  loc_B08F3F: LitI2_Byte 0
  loc_B08F41: LitI2_Byte &HFF
  loc_B08F43: ImpAdLdI4 MemVar_C3D83C
  loc_B08F46: FLdPr Me
  loc_B08F49: MemLdRfVar from_stack_1.global_84
  loc_B08F4C: NewIfNullPr IFileSystem3
  loc_B08F4F: from_stack_4 = IFileSystem3.IFileSystem.CreateTextFile(from_stack_1v, from_stack_2b, from_stack_3b)
  loc_B08F54: ILdRf var_88
  loc_B08F57: FLdPr Me
  loc_B08F5A: MemStVarAd
  loc_B08F5E: FFree1Ad var_88
  loc_B08F61: Call Proc_247_32_A9B244()
  loc_B08F66: LitI2_Byte 0
  loc_B08F68: CStrUI1
  loc_B08F6A: FStStrNoPop var_8C
  loc_B08F6D: FLdPr Me
  loc_B08F70: MemStStrCopy
  loc_B08F74: FFree1Str var_8C
  loc_B08F77: LitI2_Byte 0
  loc_B08F79: CStrUI1
  loc_B08F7B: FStStrNoPop var_8C
  loc_B08F7E: FLdPr Me
  loc_B08F81: MemStStrCopy
  loc_B08F85: FFree1Str var_8C
  loc_B08F88: LitI2_Byte 0
  loc_B08F8A: CStrUI1
  loc_B08F8C: FStStrNoPop var_8C
  loc_B08F8F: FLdPr Me
  loc_B08F92: MemStStrCopy
  loc_B08F96: FFree1Str var_8C
  loc_B08F99: LitI2_Byte 0
  loc_B08F9B: CStrUI1
  loc_B08F9D: FStStrNoPop var_8C
  loc_B08FA0: FLdPr Me
  loc_B08FA3: MemStStrCopy
  loc_B08FA7: FFree1Str var_8C
  loc_B08FAA: LitStr vbNullString
  loc_B08FAD: FLdPr Me
  loc_B08FB0: MemStStrCopy
  loc_B08FB4: FLdPr Me
  loc_B08FB7: MemLdRfVar from_stack_1.global_80
  loc_B08FBA: NewIfNullPr clsbase
  loc_B08FBD: Call clsbase.MoveFirst()
  loc_B08FC2: FLdRfVar var_8E
  loc_B08FC5: FLdPr Me
  loc_B08FC8: MemLdRfVar from_stack_1.global_80
  loc_B08FCB: NewIfNullPr clsbase
  loc_B08FCE: from_stack_1 = clsbase.EOF
  loc_B08FD3: FLdI2 var_8E
  loc_B08FD6: NotI4
  loc_B08FD7: BranchF loc_B095FE
  loc_B08FDA: FLdRfVar var_88
  loc_B08FDD: FLdPr Me
  loc_B08FE0: MemLdRfVar from_stack_1.global_80
  loc_B08FE3: NewIfNullPr clsbase
  loc_B08FE6: from_stack_1v = clsbase.RsFrmGet()
  loc_B08FEB: FLdZeroAd var_88
  loc_B08FEE: FStAdFunc var_94
  loc_B08FF1: FLdPr Me
  loc_B08FF4: MemLdStr global_108
  loc_B08FF7: LitStr vbNullString
  loc_B08FFA: NeStr
  loc_B08FFC: BranchF loc_B09117
  loc_B08FFF: LitVarStr var_A4, "  <tr>"
  loc_B09004: PopAdLdVar
  loc_B09005: FLdPr Me
  loc_B09008: MemLdRfVar from_stack_1.htmFile
  loc_B0900B: LdPrVar
  loc_B0900D: LateMemCall
  loc_B09013: LitVarStr var_A4, "    <th colspan=""5"" align=""left"">&nbsp;</th>"
  loc_B09018: PopAdLdVar
  loc_B09019: FLdPr Me
  loc_B0901C: MemLdRfVar from_stack_1.htmFile
  loc_B0901F: LdPrVar
  loc_B09021: LateMemCall
  loc_B09027: LitVarStr var_A4, "    <td align=""right"" class=""Totales"">Subtotal:</td>"
  loc_B0902C: PopAdLdVar
  loc_B0902D: FLdPr Me
  loc_B09030: MemLdRfVar from_stack_1.htmFile
  loc_B09033: LdPrVar
  loc_B09035: LateMemCall
  loc_B0903B: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B0903E: LitI4 1
  loc_B09043: LitI4 1
  loc_B09048: LitVarStr var_B4, "currency"
  loc_B0904D: FStVarCopyObj var_C4
  loc_B09050: FLdRfVar var_C4
  loc_B09053: FLdPr Me
  loc_B09056: MemLdRfVar from_stack_1.global_100
  loc_B09059: CVarRef
  loc_B0905E: ImpAdCallI2 Format$(, )
  loc_B09063: FStStrNoPop var_8C
  loc_B09066: ConcatStr
  loc_B09067: FStStrNoPop var_C8
  loc_B0906A: LitStr "</td>"
  loc_B0906D: ConcatStr
  loc_B0906E: CVarStr var_D8
  loc_B09071: PopAdLdVar
  loc_B09072: FLdPr Me
  loc_B09075: MemLdRfVar from_stack_1.htmFile
  loc_B09078: LdPrVar
  loc_B0907A: LateMemCall
  loc_B09080: FFreeStr var_8C = ""
  loc_B09087: FFreeVar var_C4 = ""
  loc_B0908E: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B09091: LitI4 1
  loc_B09096: LitI4 1
  loc_B0909B: LitVarStr var_B4, "currency"
  loc_B090A0: FStVarCopyObj var_C4
  loc_B090A3: FLdRfVar var_C4
  loc_B090A6: FLdPr Me
  loc_B090A9: MemLdRfVar from_stack_1.global_104
  loc_B090AC: CVarRef
  loc_B090B1: ImpAdCallI2 Format$(, )
  loc_B090B6: FStStrNoPop var_8C
  loc_B090B9: ConcatStr
  loc_B090BA: FStStrNoPop var_C8
  loc_B090BD: LitStr "</td>"
  loc_B090C0: ConcatStr
  loc_B090C1: CVarStr var_D8
  loc_B090C4: PopAdLdVar
  loc_B090C5: FLdPr Me
  loc_B090C8: MemLdRfVar from_stack_1.htmFile
  loc_B090CB: LdPrVar
  loc_B090CD: LateMemCall
  loc_B090D3: FFreeStr var_8C = ""
  loc_B090DA: FFreeVar var_C4 = ""
  loc_B090E1: LitVarStr var_A4, "  </tr>"
  loc_B090E6: PopAdLdVar
  loc_B090E7: FLdPr Me
  loc_B090EA: MemLdRfVar from_stack_1.htmFile
  loc_B090ED: LdPrVar
  loc_B090EF: LateMemCall
  loc_B090F5: LitI2_Byte 0
  loc_B090F7: CStrUI1
  loc_B090F9: FStStrNoPop var_8C
  loc_B090FC: FLdPr Me
  loc_B090FF: MemStStrCopy
  loc_B09103: FFree1Str var_8C
  loc_B09106: LitI2_Byte 0
  loc_B09108: CStrUI1
  loc_B0910A: FStStrNoPop var_8C
  loc_B0910D: FLdPr Me
  loc_B09110: MemStStrCopy
  loc_B09114: FFree1Str var_8C
  loc_B09117: LitVarStr var_A4, "    <tr valign=""top"" class=""LineaDato"">"
  loc_B0911C: PopAdLdVar
  loc_B0911D: FLdPr Me
  loc_B09120: MemLdRfVar from_stack_1.htmFile
  loc_B09123: LdPrVar
  loc_B09125: LateMemCall
  loc_B0912B: FLdRfVar var_C4
  loc_B0912E: FLdRfVar var_EC
  loc_B09131: LitVarStr var_A4, "FechCaja"
  loc_B09136: PopAdLdVar
  loc_B09137: FLdRfVar var_88
  loc_B0913A: FLdPr var_94
  loc_B0913D:  = Me.Fields
  loc_B09142: FLdPr var_88
  loc_B09145: from_stack_2 = Me.Item(from_stack_1)
  loc_B0914A: FLdPr var_EC
  loc_B0914D:  = Me.Value
  loc_B09152: LitI4 0
  loc_B09157: LitI4 0
  loc_B0915C: LitI2_Byte 0
  loc_B0915E: LitStr "center"
  loc_B09161: FLdRfVar var_C4
  loc_B09164: CStrVarTmp
  loc_B09165: FStStrNoPop var_8C
  loc_B09168: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0916D: CVarStr var_D8
  loc_B09170: PopAdLdVar
  loc_B09171: FLdPr Me
  loc_B09174: MemLdRfVar from_stack_1.htmFile
  loc_B09177: LdPrVar
  loc_B09179: LateMemCall
  loc_B0917F: FFree1Str var_8C
  loc_B09182: FFreeAd var_88 = ""
  loc_B09189: FFreeVar var_C4 = ""
  loc_B09190: FLdRfVar var_C4
  loc_B09193: FLdRfVar var_EC
  loc_B09196: LitVarStr var_A4, "ExpeImpu"
  loc_B0919B: PopAdLdVar
  loc_B0919C: FLdRfVar var_88
  loc_B0919F: FLdPr var_94
  loc_B091A2:  = Me.Fields
  loc_B091A7: FLdPr var_88
  loc_B091AA: from_stack_2 = Me.Item(from_stack_1)
  loc_B091AF: FLdPr var_EC
  loc_B091B2:  = Me.Value
  loc_B091B7: LitI4 0
  loc_B091BC: LitI4 0
  loc_B091C1: LitI2_Byte 0
  loc_B091C3: LitStr "left"
  loc_B091C6: FLdRfVar var_C4
  loc_B091C9: CStrVarTmp
  loc_B091CA: FStStrNoPop var_8C
  loc_B091CD: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B091D2: CVarStr var_D8
  loc_B091D5: PopAdLdVar
  loc_B091D6: FLdPr Me
  loc_B091D9: MemLdRfVar from_stack_1.htmFile
  loc_B091DC: LdPrVar
  loc_B091DE: LateMemCall
  loc_B091E4: FFree1Str var_8C
  loc_B091E7: FFreeAd var_88 = ""
  loc_B091EE: FFreeVar var_C4 = ""
  loc_B091F5: FLdRfVar var_C4
  loc_B091F8: FLdRfVar var_EC
  loc_B091FB: LitVarStr var_A4, "NumeLiqu"
  loc_B09200: PopAdLdVar
  loc_B09201: FLdRfVar var_88
  loc_B09204: FLdPr var_94
  loc_B09207:  = Me.Fields
  loc_B0920C: FLdPr var_88
  loc_B0920F: from_stack_2 = Me.Item(from_stack_1)
  loc_B09214: FLdPr var_EC
  loc_B09217:  = Me.Value
  loc_B0921C: LitI4 0
  loc_B09221: LitI4 0
  loc_B09226: LitI2_Byte 0
  loc_B09228: LitStr "right"
  loc_B0922B: FLdRfVar var_C4
  loc_B0922E: CStrVarTmp
  loc_B0922F: FStStrNoPop var_8C
  loc_B09232: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B09237: CVarStr var_D8
  loc_B0923A: PopAdLdVar
  loc_B0923B: FLdPr Me
  loc_B0923E: MemLdRfVar from_stack_1.htmFile
  loc_B09241: LdPrVar
  loc_B09243: LateMemCall
  loc_B09249: FFree1Str var_8C
  loc_B0924C: FFreeAd var_88 = ""
  loc_B09253: FFreeVar var_C4 = ""
  loc_B0925A: FLdRfVar var_C4
  loc_B0925D: FLdRfVar var_EC
  loc_B09260: LitVarStr var_A4, "CucuPers"
  loc_B09265: PopAdLdVar
  loc_B09266: FLdRfVar var_88
  loc_B09269: FLdPr var_94
  loc_B0926C:  = Me.Fields
  loc_B09271: FLdPr var_88
  loc_B09274: from_stack_2 = Me.Item(from_stack_1)
  loc_B09279: FLdPr var_EC
  loc_B0927C:  = Me.Value
  loc_B09281: LitI4 0
  loc_B09286: LitI4 0
  loc_B0928B: LitI2_Byte 0
  loc_B0928D: LitStr "right"
  loc_B09290: FLdRfVar var_C4
  loc_B09293: CStrVarTmp
  loc_B09294: FStStrNoPop var_8C
  loc_B09297: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B0929C: CVarStr var_D8
  loc_B0929F: PopAdLdVar
  loc_B092A0: FLdPr Me
  loc_B092A3: MemLdRfVar from_stack_1.htmFile
  loc_B092A6: LdPrVar
  loc_B092A8: LateMemCall
  loc_B092AE: FFree1Str var_8C
  loc_B092B1: FFreeAd var_88 = ""
  loc_B092B8: FFreeVar var_C4 = ""
  loc_B092BF: FLdRfVar var_C4
  loc_B092C2: FLdRfVar var_EC
  loc_B092C5: LitVarStr var_A4, "CodiBanc"
  loc_B092CA: PopAdLdVar
  loc_B092CB: FLdRfVar var_88
  loc_B092CE: FLdPr var_94
  loc_B092D1:  = Me.Fields
  loc_B092D6: FLdPr var_88
  loc_B092D9: from_stack_2 = Me.Item(from_stack_1)
  loc_B092DE: FLdPr var_EC
  loc_B092E1:  = Me.Value
  loc_B092E6: LitI4 0
  loc_B092EB: LitI4 0
  loc_B092F0: LitI2_Byte 0
  loc_B092F2: LitStr "right"
  loc_B092F5: FLdRfVar var_C4
  loc_B092F8: CStrVarTmp
  loc_B092F9: FStStrNoPop var_8C
  loc_B092FC: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B09301: CVarStr var_D8
  loc_B09304: PopAdLdVar
  loc_B09305: FLdPr Me
  loc_B09308: MemLdRfVar from_stack_1.htmFile
  loc_B0930B: LdPrVar
  loc_B0930D: LateMemCall
  loc_B09313: FFree1Str var_8C
  loc_B09316: FFreeAd var_88 = ""
  loc_B0931D: FFreeVar var_C4 = ""
  loc_B09324: FLdRfVar var_C4
  loc_B09327: FLdRfVar var_EC
  loc_B0932A: LitVarStr var_A4, "NumeMoba"
  loc_B0932F: PopAdLdVar
  loc_B09330: FLdRfVar var_88
  loc_B09333: FLdPr var_94
  loc_B09336:  = Me.Fields
  loc_B0933B: FLdPr var_88
  loc_B0933E: from_stack_2 = Me.Item(from_stack_1)
  loc_B09343: FLdPr var_EC
  loc_B09346:  = Me.Value
  loc_B0934B: LitI4 0
  loc_B09350: LitI4 0
  loc_B09355: LitI2_Byte 0
  loc_B09357: LitStr "right"
  loc_B0935A: FLdRfVar var_C4
  loc_B0935D: CStrVarTmp
  loc_B0935E: FStStrNoPop var_8C
  loc_B09361: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B09366: CVarStr var_D8
  loc_B09369: PopAdLdVar
  loc_B0936A: FLdPr Me
  loc_B0936D: MemLdRfVar from_stack_1.htmFile
  loc_B09370: LdPrVar
  loc_B09372: LateMemCall
  loc_B09378: FFree1Str var_8C
  loc_B0937B: FFreeAd var_88 = ""
  loc_B09382: FFreeVar var_C4 = ""
  loc_B09389: FLdRfVar var_EC
  loc_B0938C: LitVarStr var_A4, "DebeCaja"
  loc_B09391: PopAdLdVar
  loc_B09392: FLdRfVar var_88
  loc_B09395: FLdPr var_94
  loc_B09398:  = Me.Fields
  loc_B0939D: FLdPr var_88
  loc_B093A0: from_stack_2 = Me.Item(from_stack_1)
  loc_B093A5: LitI4 1
  loc_B093AA: LitI4 1
  loc_B093AF: LitVarStr var_B4, "currency"
  loc_B093B4: FStVarCopyObj var_D8
  loc_B093B7: FLdRfVar var_D8
  loc_B093BA: FLdZeroAd var_EC
  loc_B093BD: CVarAd
  loc_B093C1: ImpAdCallI2 Format$(, )
  loc_B093C6: FStStr var_C8
  loc_B093C9: LitI4 0
  loc_B093CE: LitI4 0
  loc_B093D3: LitI2_Byte 0
  loc_B093D5: LitStr "right"
  loc_B093D8: FLdZeroAd var_C8
  loc_B093DB: FStStrNoPop var_8C
  loc_B093DE: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B093E3: CVarStr var_FC
  loc_B093E6: PopAdLdVar
  loc_B093E7: FLdPr Me
  loc_B093EA: MemLdRfVar from_stack_1.htmFile
  loc_B093ED: LdPrVar
  loc_B093EF: LateMemCall
  loc_B093F5: FFreeStr var_8C = ""
  loc_B093FC: FFree1Ad var_88
  loc_B093FF: FFreeVar var_C4 = "": var_D8 = ""
  loc_B09408: FLdRfVar var_EC
  loc_B0940B: LitVarStr var_A4, "HabeCaja"
  loc_B09410: PopAdLdVar
  loc_B09411: FLdRfVar var_88
  loc_B09414: FLdPr var_94
  loc_B09417:  = Me.Fields
  loc_B0941C: FLdPr var_88
  loc_B0941F: from_stack_2 = Me.Item(from_stack_1)
  loc_B09424: LitI4 1
  loc_B09429: LitI4 1
  loc_B0942E: LitVarStr var_B4, "currency"
  loc_B09433: FStVarCopyObj var_D8
  loc_B09436: FLdRfVar var_D8
  loc_B09439: FLdZeroAd var_EC
  loc_B0943C: CVarAd
  loc_B09440: ImpAdCallI2 Format$(, )
  loc_B09445: FStStr var_C8
  loc_B09448: LitI4 0
  loc_B0944D: LitI4 0
  loc_B09452: LitI2_Byte 0
  loc_B09454: LitStr "right"
  loc_B09457: FLdZeroAd var_C8
  loc_B0945A: FStStrNoPop var_8C
  loc_B0945D: ImpAdCallI2 Proc_261_21_A09A9C(, , , , )
  loc_B09462: CVarStr var_FC
  loc_B09465: PopAdLdVar
  loc_B09466: FLdPr Me
  loc_B09469: MemLdRfVar from_stack_1.htmFile
  loc_B0946C: LdPrVar
  loc_B0946E: LateMemCall
  loc_B09474: FFreeStr var_8C = ""
  loc_B0947B: FFree1Ad var_88
  loc_B0947E: FFreeVar var_C4 = "": var_D8 = ""
  loc_B09487: LitVarStr var_A4, "  </tr>"
  loc_B0948C: PopAdLdVar
  loc_B0948D: FLdPr Me
  loc_B09490: MemLdRfVar from_stack_1.htmFile
  loc_B09493: LdPrVar
  loc_B09495: LateMemCall
  loc_B0949B: FLdPr Me
  loc_B0949E: MemLdStr global_92
  loc_B094A1: CVarStr var_B4
  loc_B094A4: FLdRfVar var_C4
  loc_B094A7: FLdRfVar var_EC
  loc_B094AA: LitVarStr var_A4, "DebeCaja"
  loc_B094AF: PopAdLdVar
  loc_B094B0: FLdRfVar var_88
  loc_B094B3: FLdPr var_94
  loc_B094B6:  = Me.Fields
  loc_B094BB: FLdPr var_88
  loc_B094BE: from_stack_2 = Me.Item(from_stack_1)
  loc_B094C3: FLdPr var_EC
  loc_B094C6:  = Me.Value
  loc_B094CB: FLdRfVar var_C4
  loc_B094CE: AddVar var_D8
  loc_B094D2: CStrVarTmp
  loc_B094D3: FStStrNoPop var_8C
  loc_B094D6: FLdPr Me
  loc_B094D9: MemStStrCopy
  loc_B094DD: FFree1Str var_8C
  loc_B094E0: FFreeAd var_88 = ""
  loc_B094E7: FFreeVar var_C4 = ""
  loc_B094EE: FLdPr Me
  loc_B094F1: MemLdStr global_96
  loc_B094F4: CVarStr var_B4
  loc_B094F7: FLdRfVar var_C4
  loc_B094FA: FLdRfVar var_EC
  loc_B094FD: LitVarStr var_A4, "HabeCaja"
  loc_B09502: PopAdLdVar
  loc_B09503: FLdRfVar var_88
  loc_B09506: FLdPr var_94
  loc_B09509:  = Me.Fields
  loc_B0950E: FLdPr var_88
  loc_B09511: from_stack_2 = Me.Item(from_stack_1)
  loc_B09516: FLdPr var_EC
  loc_B09519:  = Me.Value
  loc_B0951E: FLdRfVar var_C4
  loc_B09521: AddVar var_D8
  loc_B09525: CStrVarTmp
  loc_B09526: FStStrNoPop var_8C
  loc_B09529: FLdPr Me
  loc_B0952C: MemStStrCopy
  loc_B09530: FFree1Str var_8C
  loc_B09533: FFreeAd var_88 = ""
  loc_B0953A: FFreeVar var_C4 = ""
  loc_B09541: FLdPr Me
  loc_B09544: MemLdStr global_100
  loc_B09547: CVarStr var_B4
  loc_B0954A: FLdRfVar var_C4
  loc_B0954D: FLdRfVar var_EC
  loc_B09550: LitVarStr var_A4, "DebeCaja"
  loc_B09555: PopAdLdVar
  loc_B09556: FLdRfVar var_88
  loc_B09559: FLdPr var_94
  loc_B0955C:  = Me.Fields
  loc_B09561: FLdPr var_88
  loc_B09564: from_stack_2 = Me.Item(from_stack_1)
  loc_B09569: FLdPr var_EC
  loc_B0956C:  = Me.Value
  loc_B09571: FLdRfVar var_C4
  loc_B09574: AddVar var_D8
  loc_B09578: CStrVarTmp
  loc_B09579: FStStrNoPop var_8C
  loc_B0957C: FLdPr Me
  loc_B0957F: MemStStrCopy
  loc_B09583: FFree1Str var_8C
  loc_B09586: FFreeAd var_88 = ""
  loc_B0958D: FFreeVar var_C4 = ""
  loc_B09594: FLdPr Me
  loc_B09597: MemLdStr global_104
  loc_B0959A: CVarStr var_B4
  loc_B0959D: FLdRfVar var_C4
  loc_B095A0: FLdRfVar var_EC
  loc_B095A3: LitVarStr var_A4, "HabeCaja"
  loc_B095A8: PopAdLdVar
  loc_B095A9: FLdRfVar var_88
  loc_B095AC: FLdPr var_94
  loc_B095AF:  = Me.Fields
  loc_B095B4: FLdPr var_88
  loc_B095B7: from_stack_2 = Me.Item(from_stack_1)
  loc_B095BC: FLdPr var_EC
  loc_B095BF:  = Me.Value
  loc_B095C4: FLdRfVar var_C4
  loc_B095C7: AddVar var_D8
  loc_B095CB: CStrVarTmp
  loc_B095CC: FStStrNoPop var_8C
  loc_B095CF: FLdPr Me
  loc_B095D2: MemStStrCopy
  loc_B095D6: FFree1Str var_8C
  loc_B095D9: FFreeAd var_88 = ""
  loc_B095E0: FFreeVar var_C4 = ""
  loc_B095E7: LitNothing
  loc_B095E9: FStAd var_94 
  loc_B095ED: FLdPr Me
  loc_B095F0: MemLdRfVar from_stack_1.global_80
  loc_B095F3: NewIfNullPr clsbase
  loc_B095F6: Call clsbase.MoveSiguiente()
  loc_B095FB: Branch loc_B08FC2
  loc_B095FE: LitVarStr var_A4, "  <tr><td colspan=""8"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_B09603: PopAdLdVar
  loc_B09604: FLdPr Me
  loc_B09607: MemLdRfVar from_stack_1.htmFile
  loc_B0960A: LdPrVar
  loc_B0960C: LateMemCall
  loc_B09612: LitVarStr var_A4, "  <tr>"
  loc_B09617: PopAdLdVar
  loc_B09618: FLdPr Me
  loc_B0961B: MemLdRfVar from_stack_1.htmFile
  loc_B0961E: LdPrVar
  loc_B09620: LateMemCall
  loc_B09626: LitVarStr var_A4, "    <td colspan=""5"" align=""left"">&nbsp;</th>"
  loc_B0962B: PopAdLdVar
  loc_B0962C: FLdPr Me
  loc_B0962F: MemLdRfVar from_stack_1.htmFile
  loc_B09632: LdPrVar
  loc_B09634: LateMemCall
  loc_B0963A: LitVarStr var_A4, "    <td align=""right"" class=""Totales"">Total:</td>"
  loc_B0963F: PopAdLdVar
  loc_B09640: FLdPr Me
  loc_B09643: MemLdRfVar from_stack_1.htmFile
  loc_B09646: LdPrVar
  loc_B09648: LateMemCall
  loc_B0964E: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B09651: LitI4 1
  loc_B09656: LitI4 1
  loc_B0965B: LitVarStr var_B4, "currency"
  loc_B09660: FStVarCopyObj var_C4
  loc_B09663: FLdRfVar var_C4
  loc_B09666: FLdPr Me
  loc_B09669: MemLdRfVar from_stack_1.global_92
  loc_B0966C: CVarRef
  loc_B09671: ImpAdCallI2 Format$(, )
  loc_B09676: FStStrNoPop var_8C
  loc_B09679: ConcatStr
  loc_B0967A: FStStrNoPop var_C8
  loc_B0967D: LitStr "</td>"
  loc_B09680: ConcatStr
  loc_B09681: CVarStr var_D8
  loc_B09684: PopAdLdVar
  loc_B09685: FLdPr Me
  loc_B09688: MemLdRfVar from_stack_1.htmFile
  loc_B0968B: LdPrVar
  loc_B0968D: LateMemCall
  loc_B09693: FFreeStr var_8C = ""
  loc_B0969A: FFreeVar var_C4 = ""
  loc_B096A1: LitStr "    <td align=""right"" class=""Totales"">"
  loc_B096A4: LitI4 1
  loc_B096A9: LitI4 1
  loc_B096AE: LitVarStr var_B4, "currency"
  loc_B096B3: FStVarCopyObj var_C4
  loc_B096B6: FLdRfVar var_C4
  loc_B096B9: FLdPr Me
  loc_B096BC: MemLdRfVar from_stack_1.global_96
  loc_B096BF: CVarRef
  loc_B096C4: ImpAdCallI2 Format$(, )
  loc_B096C9: FStStrNoPop var_8C
  loc_B096CC: ConcatStr
  loc_B096CD: FStStrNoPop var_C8
  loc_B096D0: LitStr "</td>"
  loc_B096D3: ConcatStr
  loc_B096D4: CVarStr var_D8
  loc_B096D7: PopAdLdVar
  loc_B096D8: FLdPr Me
  loc_B096DB: MemLdRfVar from_stack_1.htmFile
  loc_B096DE: LdPrVar
  loc_B096E0: LateMemCall
  loc_B096E6: FFreeStr var_8C = ""
  loc_B096ED: FFreeVar var_C4 = ""
  loc_B096F4: LitVarStr var_A4, "  </tr>"
  loc_B096F9: PopAdLdVar
  loc_B096FA: FLdPr Me
  loc_B096FD: MemLdRfVar from_stack_1.htmFile
  loc_B09700: LdPrVar
  loc_B09702: LateMemCall
  loc_B09708: LitVarStr var_A4, "  <tr><td colspan=""8"" align=""left"" class=""Encabezado"">&nbsp</td></tr>"
  loc_B0970D: PopAdLdVar
  loc_B0970E: FLdPr Me
  loc_B09711: MemLdRfVar from_stack_1.htmFile
  loc_B09714: LdPrVar
  loc_B09716: LateMemCall
  loc_B0971C: Call Proc_247_33_983730()
  loc_B09721: FLdPr Me
  loc_B09724: MemLdRfVar from_stack_1.htmFile
  loc_B09727: LdPrVar
  loc_B09729: LateMemCall
  loc_B0972F: ImpAdCallFPR4 Proc_261_47_A94EA0()
  loc_B09734: ExitProcHresult
  loc_B09735: IStR8 arg_368
End Sub

Public Sub GeneraXLS() '953434
  'Data Table: 492F40
  loc_95341C: LitI2_Byte 0
  loc_95341E: FLdPr Me
  loc_953421: MemStI2 bLogos
  loc_953424: Call GeneraHTML()
  loc_953429: LitI2_Byte &HFF
  loc_95342B: FLdPr Me
  loc_95342E: MemStI2 bLogos
  loc_953431: ExitProcHresult
End Sub

Public Sub GeneraReporte() 'B285C8
  'Data Table: 492F40
  loc_B27CB8: LitStr vbNullString
  loc_B27CBB: FLdPr Me
  loc_B27CBE: MemStStrCopy
  loc_B27CC2: LitI2_Byte 0
  loc_B27CC4: PopTmpLdAd2 var_92
  loc_B27CC7: Call mskDesde_UnknownEvent_8()
  loc_B27CCC: FLdPr Me
  loc_B27CCF: MemLdStr global_120
  loc_B27CD2: LitStr vbNullString
  loc_B27CD5: NeStr
  loc_B27CD7: BranchF loc_B27CDD
  loc_B27CDA: Branch loc_B2859E
  loc_B27CDD: LitI2_Byte 0
  loc_B27CDF: PopTmpLdAd2 var_92
  loc_B27CE2: from_stack_2v = mskHasta_UnknownEvent_8(from_stack_1v)
  loc_B27CE7: FLdPr Me
  loc_B27CEA: MemLdStr global_120
  loc_B27CED: LitStr vbNullString
  loc_B27CF0: NeStr
  loc_B27CF2: BranchF loc_B27CF8
  loc_B27CF5: Branch loc_B2859E
  loc_B27CF8: FLdPr Me
  loc_B27CFB: MemLdI2 bGenerado
  loc_B27CFE: BranchF loc_B27D02
  loc_B27D01: ExitProcHresult
  loc_B27D02: LitVarStr var_A4, "Generando reporte..."
  loc_B27D07: PopAdLdVar
  loc_B27D08: FLdPr Me
  loc_B27D0B: VCallAd Control_ID_statusBar
  loc_B27D0E: FStAdFunc var_B8
  loc_B27D11: FLdPr var_B8
  loc_B27D14: LateIdSt
  loc_B27D19: FFree1Ad var_B8
  loc_B27D1C: LitI4 &HB
  loc_B27D21: CI2I4
  loc_B27D22: FLdPr Me
  loc_B27D25: Me.MousePointer = from_stack_1
  loc_B27D2A: FLdPr Me
  loc_B27D2D: VCallAd Control_ID_mskDesde
  loc_B27D30: FStAdFunc var_B8
  loc_B27D33: FLdPr var_B8
  loc_B27D36: LateIdLdVar var_C8 DispID_22 0
  loc_B27D3D: CStrVarTmp
  loc_B27D3E: FStStrNoPop var_CC
  loc_B27D41: LitStr vbNullString
  loc_B27D44: NeStr
  loc_B27D46: FFree1Str var_CC
  loc_B27D49: FFree1Ad var_B8
  loc_B27D4C: FFree1Var var_C8 = ""
  loc_B27D4F: BranchF loc_B27DA1
  loc_B27D52: FLdPr Me
  loc_B27D55: VCallAd Control_ID_mskDesde
  loc_B27D58: FStAdFunc var_B8
  loc_B27D5B: FLdPr var_B8
  loc_B27D5E: LateIdLdVar var_C8 DispID_15 0
  loc_B27D65: PopAd
  loc_B27D67: LitStr " AND FechCaja >= "
  loc_B27D6A: LitI4 1
  loc_B27D6F: LitI4 1
  loc_B27D74: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_B27D79: FStVarCopyObj var_EC
  loc_B27D7C: FLdRfVar var_EC
  loc_B27D7F: FLdRfVar var_C8
  loc_B27D82: CStrVarTmp
  loc_B27D83: CVarStr var_DC
  loc_B27D86: ImpAdCallI2 Format$(, )
  loc_B27D8B: FStStrNoPop var_CC
  loc_B27D8E: ConcatStr
  loc_B27D8F: FStStr var_88
  loc_B27D92: FFree1Str var_CC
  loc_B27D95: FFree1Ad var_B8
  loc_B27D98: FFreeVar var_C8 = "": var_DC = ""
  loc_B27DA1: FLdPr Me
  loc_B27DA4: VCallAd Control_ID_mskHasta
  loc_B27DA7: FStAdFunc var_B8
  loc_B27DAA: FLdPr var_B8
  loc_B27DAD: LateIdLdVar var_C8 DispID_22 0
  loc_B27DB4: CStrVarTmp
  loc_B27DB5: FStStrNoPop var_CC
  loc_B27DB8: LitStr vbNullString
  loc_B27DBB: NeStr
  loc_B27DBD: FFree1Str var_CC
  loc_B27DC0: FFree1Ad var_B8
  loc_B27DC3: FFree1Var var_C8 = ""
  loc_B27DC6: BranchF loc_B27E18
  loc_B27DC9: FLdPr Me
  loc_B27DCC: VCallAd Control_ID_mskHasta
  loc_B27DCF: FStAdFunc var_B8
  loc_B27DD2: FLdPr var_B8
  loc_B27DD5: LateIdLdVar var_C8 DispID_15 0
  loc_B27DDC: PopAd
  loc_B27DDE: LitStr " AND FechCaja <= "
  loc_B27DE1: LitI4 1
  loc_B27DE6: LitI4 1
  loc_B27DEB: LitVarStr var_A4, "'yyyy-mm-dd'"
  loc_B27DF0: FStVarCopyObj var_EC
  loc_B27DF3: FLdRfVar var_EC
  loc_B27DF6: FLdRfVar var_C8
  loc_B27DF9: CStrVarTmp
  loc_B27DFA: CVarStr var_DC
  loc_B27DFD: ImpAdCallI2 Format$(, )
  loc_B27E02: FStStrNoPop var_CC
  loc_B27E05: ConcatStr
  loc_B27E06: FStStr var_8C
  loc_B27E09: FFree1Str var_CC
  loc_B27E0C: FFree1Ad var_B8
  loc_B27E0F: FFreeVar var_C8 = "": var_DC = ""
  loc_B27E18: FLdPr Me
  loc_B27E1B: VCallAd Control_ID_mskCodiCuco
  loc_B27E1E: FStAdFunc var_B8
  loc_B27E21: FLdPr var_B8
  loc_B27E24: LateIdLdVar var_C8 DispID_22 0
  loc_B27E2B: CStrVarTmp
  loc_B27E2C: FStStrNoPop var_CC
  loc_B27E2F: LitStr vbNullString
  loc_B27E32: NeStr
  loc_B27E34: FFree1Str var_CC
  loc_B27E37: FFree1Ad var_B8
  loc_B27E3A: FFree1Var var_C8 = ""
  loc_B27E3D: BranchF loc_B27E72
  loc_B27E40: LitStr " HAVING CodiCuco LIKE '"
  loc_B27E43: FLdPr Me
  loc_B27E46: VCallAd Control_ID_mskCodiCuco
  loc_B27E49: FStAdFunc var_B8
  loc_B27E4C: FLdPr var_B8
  loc_B27E4F: LateIdLdVar var_C8 DispID_20 0
  loc_B27E56: CStrVarTmp
  loc_B27E57: FStStrNoPop var_CC
  loc_B27E5A: ConcatStr
  loc_B27E5B: FStStrNoPop var_F0
  loc_B27E5E: LitStr Chr(37) & "'"
  loc_B27E61: ConcatStr
  loc_B27E62: FStStr var_90
  loc_B27E65: FFreeStr var_CC = ""
  loc_B27E6C: FFree1Ad var_B8
  loc_B27E6F: FFree1Var var_C8 = ""
  loc_B27E72: FLdPr Me
  loc_B27E75: MemLdRfVar from_stack_1.global_80
  loc_B27E78: NewIfNullAd
  loc_B27E7B: FStAd var_F4 
  loc_B27E7F: LitStr "SELECT IF(sub.DebeCuco != '',sub.DebeCuco,sub.HabeCuco) CodiCuco, DetaCuco"
  loc_B27E82: LitStr " FROM subdpagoimpu sub"
  loc_B27E85: ConcatStr
  loc_B27E86: FStStrNoPop var_CC
  loc_B27E89: LitStr " INNER JOIN infogov.cuentacontable cc ON cc.PeriInfo = "
  loc_B27E8C: ConcatStr
  loc_B27E8D: FStStrNoPop var_F0
  loc_B27E90: ImpAdLdI2 MemVar_C3D064
  loc_B27E93: CStrUI1
  loc_B27E95: FStStrNoPop var_F8
  loc_B27E98: ConcatStr
  loc_B27E99: FStStrNoPop var_FC
  loc_B27E9C: LitStr " AND (cc.CodiCuco = sub.DebeCuco or cc.CodiCuco = sub.HabeCuco)"
  loc_B27E9F: ConcatStr
  loc_B27EA0: FStStrNoPop var_100
  loc_B27EA3: LitStr " WHERE TRUE "
  loc_B27EA6: ConcatStr
  loc_B27EA7: FStStrNoPop var_104
  loc_B27EAA: ILdRf var_88
  loc_B27EAD: ConcatStr
  loc_B27EAE: FStStrNoPop var_108
  loc_B27EB1: ILdRf var_8C
  loc_B27EB4: ConcatStr
  loc_B27EB5: FStStrNoPop var_10C
  loc_B27EB8: LitStr " GROUP BY sub.DebeCuco, sub.HabeCuco"
  loc_B27EBB: ConcatStr
  loc_B27EBC: FStStrNoPop var_110
  loc_B27EBF: ILdRf var_90
  loc_B27EC2: ConcatStr
  loc_B27EC3: FStStrNoPop var_114
  loc_B27EC6: LitStr " ORDER BY CodiCuco;"
  loc_B27EC9: ConcatStr
  loc_B27ECA: FStStrNoPop var_118
  loc_B27ECD: FLdPr var_F4
  loc_B27ED0: Call clsbase.RedefineRS(from_stack_1v)
  loc_B27ED5: FFreeStr var_CC = "": var_F0 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = "": var_114 = ""
  loc_B27EEE: FLdRfVar var_11C
  loc_B27EF1: FLdPr var_F4
  loc_B27EF4: from_stack_1 = clsbase.RecordCount
  loc_B27EF9: ILdRf var_11C
  loc_B27EFC: LitI4 0
  loc_B27F01: EqI4
  loc_B27F02: BranchF loc_B27F15
  loc_B27F05: LitI4 0
  loc_B27F0A: LitStr "No existen registros para el criterio de búsqueda especificado"
  loc_B27F0D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B27F12: Branch loc_B2859E
  loc_B27F15: LitI2_Byte 0
  loc_B27F17: CStrUI1
  loc_B27F19: FStStrNoPop var_CC
  loc_B27F1C: FLdPr Me
  loc_B27F1F: MemStStrCopy
  loc_B27F23: FFree1Str var_CC
  loc_B27F26: LitI2_Byte 0
  loc_B27F28: CStrUI1
  loc_B27F2A: FStStrNoPop var_CC
  loc_B27F2D: FLdPr Me
  loc_B27F30: MemStStrCopy
  loc_B27F34: FFree1Str var_CC
  loc_B27F37: LitI4 1
  loc_B27F3C: FLdRfVar var_11C
  loc_B27F3F: FLdPr Me
  loc_B27F42: MemLdRfVar from_stack_1.global_80
  loc_B27F45: NewIfNullPr clsbase
  loc_B27F48: from_stack_1 = clsbase.RecordCount
  loc_B27F4D: ILdRf var_11C
  loc_B27F50: FLdPr Me
  loc_B27F53: MemLdRfVar from_stack_1.global_88
  loc_B27F56: Redim
  loc_B27F60: FLdPr var_F4
  loc_B27F63: Call clsbase.MoveFirst()
  loc_B27F68: LitI2_Byte 1
  loc_B27F6A: FLdPr Me
  loc_B27F6D: MemLdRfVar from_stack_1.global_112
  loc_B27F70: FLdPr Me
  loc_B27F73: MemLdStr global_88
  loc_B27F76: LitI2_Byte 1
  loc_B27F78: FnUBound
  loc_B27F7A: CI2I4
  loc_B27F7B: ForI2 var_120
  loc_B27F81: FLdRfVar var_128
  loc_B27F84: LitVarStr var_A4, "CodiCuco"
  loc_B27F89: PopAdLdVar
  loc_B27F8A: FLdRfVar var_124
  loc_B27F8D: FLdRfVar var_B8
  loc_B27F90: FLdPr var_F4
  loc_B27F93: from_stack_1v = clsbase.RsFrmGet()
  loc_B27F98: FLdPr var_B8
  loc_B27F9B:  = Me.Fields
  loc_B27FA0: FLdPr var_124
  loc_B27FA3: from_stack_2 = Me.Item(from_stack_1)
  loc_B27FA8: LitI2_Byte 0
  loc_B27FAA: LitVar_Missing var_DC
  loc_B27FAD: LitI2_Byte 0
  loc_B27FAF: FLdZeroAd var_128
  loc_B27FB2: CVarAd
  loc_B27FB6: PopAdLdVar
  loc_B27FB7: FLdPr Me
  loc_B27FBA: MemLdI2 global_112
  loc_B27FBD: CI4UI1
  loc_B27FBE: FLdPr Me
  loc_B27FC1: MemLdStr global_88
  loc_B27FC4: AryLock
  loc_B27FC7: Ary1LdPr
  loc_B27FC8: MemLdRfVar from_stack_1.global_0
  loc_B27FCB: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B27FD0: AryUnlock
  loc_B27FD3: FFreeAd var_B8 = ""
  loc_B27FDA: FFreeVar var_C8 = ""
  loc_B27FE1: FLdRfVar var_128
  loc_B27FE4: LitVarStr var_A4, "DetaCuco"
  loc_B27FE9: PopAdLdVar
  loc_B27FEA: FLdRfVar var_124
  loc_B27FED: FLdRfVar var_B8
  loc_B27FF0: FLdPr var_F4
  loc_B27FF3: from_stack_1v = clsbase.RsFrmGet()
  loc_B27FF8: FLdPr var_B8
  loc_B27FFB:  = Me.Fields
  loc_B28000: FLdPr var_124
  loc_B28003: from_stack_2 = Me.Item(from_stack_1)
  loc_B28008: LitI2_Byte 0
  loc_B2800A: LitVar_Missing var_DC
  loc_B2800D: LitI2_Byte 0
  loc_B2800F: FLdZeroAd var_128
  loc_B28012: CVarAd
  loc_B28016: PopAdLdVar
  loc_B28017: FLdPr Me
  loc_B2801A: MemLdI2 global_112
  loc_B2801D: CI4UI1
  loc_B2801E: FLdPr Me
  loc_B28021: MemLdStr global_88
  loc_B28024: AryLock
  loc_B28027: Ary1LdPr
  loc_B28028: MemLdRfVar from_stack_1.global_4
  loc_B2802B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B28030: AryUnlock
  loc_B28033: FFreeAd var_B8 = ""
  loc_B2803A: FFreeVar var_C8 = ""
  loc_B28041: FLdPr var_F4
  loc_B28044: Call clsbase.MoveSiguiente()
  loc_B28049: FLdPr Me
  loc_B2804C: MemLdRfVar from_stack_1.global_112
  loc_B2804F: NextI2 var_120, loc_B27F81
  loc_B28054: LitI2_Byte 1
  loc_B28056: FLdPr Me
  loc_B28059: MemLdRfVar from_stack_1.global_112
  loc_B2805C: FLdPr Me
  loc_B2805F: MemLdStr global_88
  loc_B28062: LitI2_Byte 1
  loc_B28064: FnUBound
  loc_B28066: CI2I4
  loc_B28067: ForI2 var_130
  loc_B2806D: LitStr "SELECT ExpeImpu, NumeLiqu, CucuPers, CodiBanc, NumeMoba, FechCaja, DebeCaja, HabeCaja"
  loc_B28070: LitStr " FROM subdpagoimpu"
  loc_B28073: ConcatStr
  loc_B28074: FStStrNoPop var_CC
  loc_B28077: LitStr " WHERE (DebeCuco = '"
  loc_B2807A: ConcatStr
  loc_B2807B: FStStrNoPop var_F0
  loc_B2807E: FLdPr Me
  loc_B28081: MemLdI2 global_112
  loc_B28084: CI4UI1
  loc_B28085: FLdPr Me
  loc_B28088: MemLdStr global_88
  loc_B2808B: Ary1LdPr
  loc_B2808C: MemLdStr global_0
  loc_B2808F: ConcatStr
  loc_B28090: FStStrNoPop var_F8
  loc_B28093: LitStr "'"
  loc_B28096: ConcatStr
  loc_B28097: FStStrNoPop var_FC
  loc_B2809A: LitStr " OR HabeCuco = '"
  loc_B2809D: ConcatStr
  loc_B2809E: FStStrNoPop var_100
  loc_B280A1: FLdPr Me
  loc_B280A4: MemLdI2 global_112
  loc_B280A7: CI4UI1
  loc_B280A8: FLdPr Me
  loc_B280AB: MemLdStr global_88
  loc_B280AE: Ary1LdPr
  loc_B280AF: MemLdStr global_0
  loc_B280B2: ConcatStr
  loc_B280B3: FStStrNoPop var_104
  loc_B280B6: LitStr "')"
  loc_B280B9: ConcatStr
  loc_B280BA: FStStrNoPop var_108
  loc_B280BD: ILdRf var_88
  loc_B280C0: ConcatStr
  loc_B280C1: FStStrNoPop var_10C
  loc_B280C4: ILdRf var_8C
  loc_B280C7: ConcatStr
  loc_B280C8: FStStrNoPop var_110
  loc_B280CB: LitStr " ORDER BY FechCaja, ExpeImpu, NumeLiqu, CucuPers, CodiBanc, NumeMoba"
  loc_B280CE: ConcatStr
  loc_B280CF: FStStrNoPop var_114
  loc_B280D2: FLdPr var_F4
  loc_B280D5: Call clsbase.RedefineRS(from_stack_1v)
  loc_B280DA: FFreeStr var_CC = "": var_F0 = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_B280F1: FLdRfVar var_11C
  loc_B280F4: FLdPr var_F4
  loc_B280F7: from_stack_1 = clsbase.RecordCount
  loc_B280FC: ILdRf var_11C
  loc_B280FF: LitI4 0
  loc_B28104: GtI4
  loc_B28105: BranchF loc_B28527
  loc_B28108: FLdRfVar var_11C
  loc_B2810B: FLdPr var_F4
  loc_B2810E: from_stack_1 = clsbase.RecordCount
  loc_B28113: LitI4 1
  loc_B28118: ILdRf var_11C
  loc_B2811B: FLdPr Me
  loc_B2811E: MemLdI2 global_112
  loc_B28121: CI4UI1
  loc_B28122: FLdPr Me
  loc_B28125: MemLdStr global_88
  loc_B28128: Ary1LdPr
  loc_B28129: MemLdRfVar from_stack_1.global_8
  loc_B2812C: Redim
  loc_B28136: FLdPr var_F4
  loc_B28139: Call clsbase.MoveFirst()
  loc_B2813E: LitI2_Byte 1
  loc_B28140: FLdPr Me
  loc_B28143: MemLdRfVar from_stack_1.global_114
  loc_B28146: FLdPr Me
  loc_B28149: MemLdI2 global_112
  loc_B2814C: CI4UI1
  loc_B2814D: FLdPr Me
  loc_B28150: MemLdStr global_88
  loc_B28153: Ary1LdPr
  loc_B28154: MemLdStr global_8
  loc_B28157: LitI2_Byte 1
  loc_B28159: FnUBound
  loc_B2815B: CI2I4
  loc_B2815C: ForI2 var_134
  loc_B28162: FLdRfVar var_128
  loc_B28165: LitVarStr var_A4, "FechCaja"
  loc_B2816A: PopAdLdVar
  loc_B2816B: FLdRfVar var_124
  loc_B2816E: FLdRfVar var_B8
  loc_B28171: FLdPr var_F4
  loc_B28174: from_stack_1v = clsbase.RsFrmGet()
  loc_B28179: FLdPr var_B8
  loc_B2817C:  = Me.Fields
  loc_B28181: FLdPr var_124
  loc_B28184: from_stack_2 = Me.Item(from_stack_1)
  loc_B28189: LitI2_Byte 0
  loc_B2818B: LitVar_Missing var_DC
  loc_B2818E: LitI2_Byte 0
  loc_B28190: FLdZeroAd var_128
  loc_B28193: CVarAd
  loc_B28197: PopAdLdVar
  loc_B28198: FLdPr Me
  loc_B2819B: MemLdI2 global_114
  loc_B2819E: CI4UI1
  loc_B2819F: FLdPr Me
  loc_B281A2: MemLdI2 global_112
  loc_B281A5: CI4UI1
  loc_B281A6: FLdPr Me
  loc_B281A9: MemLdStr global_88
  loc_B281AC: AryLock
  loc_B281AF: Ary1LdPr
  loc_B281B0: MemLdStr global_8
  loc_B281B3: AryLock
  loc_B281B6: Ary1LdPr
  loc_B281B7: MemLdRfVar from_stack_1.global_4
  loc_B281BA: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B281BF: AryUnlock
  loc_B281C2: AryUnlock
  loc_B281C5: FFreeAd var_B8 = ""
  loc_B281CC: FFreeVar var_C8 = ""
  loc_B281D3: FLdRfVar var_128
  loc_B281D6: LitVarStr var_A4, "ExpeImpu"
  loc_B281DB: PopAdLdVar
  loc_B281DC: FLdRfVar var_124
  loc_B281DF: FLdRfVar var_B8
  loc_B281E2: FLdPr var_F4
  loc_B281E5: from_stack_1v = clsbase.RsFrmGet()
  loc_B281EA: FLdPr var_B8
  loc_B281ED:  = Me.Fields
  loc_B281F2: FLdPr var_124
  loc_B281F5: from_stack_2 = Me.Item(from_stack_1)
  loc_B281FA: LitI2_Byte 0
  loc_B281FC: LitVar_Missing var_DC
  loc_B281FF: LitI2_Byte 0
  loc_B28201: FLdZeroAd var_128
  loc_B28204: CVarAd
  loc_B28208: PopAdLdVar
  loc_B28209: FLdPr Me
  loc_B2820C: MemLdI2 global_114
  loc_B2820F: CI4UI1
  loc_B28210: FLdPr Me
  loc_B28213: MemLdI2 global_112
  loc_B28216: CI4UI1
  loc_B28217: FLdPr Me
  loc_B2821A: MemLdStr global_88
  loc_B2821D: AryLock
  loc_B28220: Ary1LdPr
  loc_B28221: MemLdStr global_8
  loc_B28224: AryLock
  loc_B28227: Ary1LdPr
  loc_B28228: MemLdRfVar from_stack_1.global_8
  loc_B2822B: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B28230: AryUnlock
  loc_B28233: AryUnlock
  loc_B28236: FFreeAd var_B8 = ""
  loc_B2823D: FFreeVar var_C8 = ""
  loc_B28244: FLdRfVar var_128
  loc_B28247: LitVarStr var_A4, "NumeLiqu"
  loc_B2824C: PopAdLdVar
  loc_B2824D: FLdRfVar var_124
  loc_B28250: FLdRfVar var_B8
  loc_B28253: FLdPr var_F4
  loc_B28256: from_stack_1v = clsbase.RsFrmGet()
  loc_B2825B: FLdPr var_B8
  loc_B2825E:  = Me.Fields
  loc_B28263: FLdPr var_124
  loc_B28266: from_stack_2 = Me.Item(from_stack_1)
  loc_B2826B: LitI2_Byte 0
  loc_B2826D: LitVar_Missing var_DC
  loc_B28270: LitI2_Byte 0
  loc_B28272: FLdZeroAd var_128
  loc_B28275: CVarAd
  loc_B28279: PopAdLdVar
  loc_B2827A: FLdPr Me
  loc_B2827D: MemLdI2 global_114
  loc_B28280: CI4UI1
  loc_B28281: FLdPr Me
  loc_B28284: MemLdI2 global_112
  loc_B28287: CI4UI1
  loc_B28288: FLdPr Me
  loc_B2828B: MemLdStr global_88
  loc_B2828E: AryLock
  loc_B28291: Ary1LdPr
  loc_B28292: MemLdStr global_8
  loc_B28295: AryLock
  loc_B28298: Ary1LdPr
  loc_B28299: MemLdRfVar from_stack_1.global_12
  loc_B2829C: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B282A1: AryUnlock
  loc_B282A4: AryUnlock
  loc_B282A7: FFreeAd var_B8 = ""
  loc_B282AE: FFreeVar var_C8 = ""
  loc_B282B5: FLdRfVar var_128
  loc_B282B8: LitVarStr var_A4, "CucuPers"
  loc_B282BD: PopAdLdVar
  loc_B282BE: FLdRfVar var_124
  loc_B282C1: FLdRfVar var_B8
  loc_B282C4: FLdPr var_F4
  loc_B282C7: from_stack_1v = clsbase.RsFrmGet()
  loc_B282CC: FLdPr var_B8
  loc_B282CF:  = Me.Fields
  loc_B282D4: FLdPr var_124
  loc_B282D7: from_stack_2 = Me.Item(from_stack_1)
  loc_B282DC: LitI2_Byte 0
  loc_B282DE: LitVar_Missing var_DC
  loc_B282E1: LitI2_Byte 0
  loc_B282E3: FLdZeroAd var_128
  loc_B282E6: CVarAd
  loc_B282EA: PopAdLdVar
  loc_B282EB: FLdPr Me
  loc_B282EE: MemLdI2 global_114
  loc_B282F1: CI4UI1
  loc_B282F2: FLdPr Me
  loc_B282F5: MemLdI2 global_112
  loc_B282F8: CI4UI1
  loc_B282F9: FLdPr Me
  loc_B282FC: MemLdStr global_88
  loc_B282FF: AryLock
  loc_B28302: Ary1LdPr
  loc_B28303: MemLdStr global_8
  loc_B28306: AryLock
  loc_B28309: Ary1LdPr
  loc_B2830A: MemLdRfVar from_stack_1.global_16
  loc_B2830D: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B28312: AryUnlock
  loc_B28315: AryUnlock
  loc_B28318: FFreeAd var_B8 = ""
  loc_B2831F: FFreeVar var_C8 = ""
  loc_B28326: FLdRfVar var_128
  loc_B28329: LitVarStr var_A4, "CodiBanc"
  loc_B2832E: PopAdLdVar
  loc_B2832F: FLdRfVar var_124
  loc_B28332: FLdRfVar var_B8
  loc_B28335: FLdPr var_F4
  loc_B28338: from_stack_1v = clsbase.RsFrmGet()
  loc_B2833D: FLdPr var_B8
  loc_B28340:  = Me.Fields
  loc_B28345: FLdPr var_124
  loc_B28348: from_stack_2 = Me.Item(from_stack_1)
  loc_B2834D: LitI2_Byte 0
  loc_B2834F: LitVar_Missing var_DC
  loc_B28352: LitI2_Byte 0
  loc_B28354: FLdZeroAd var_128
  loc_B28357: CVarAd
  loc_B2835B: PopAdLdVar
  loc_B2835C: FLdPr Me
  loc_B2835F: MemLdI2 global_114
  loc_B28362: CI4UI1
  loc_B28363: FLdPr Me
  loc_B28366: MemLdI2 global_112
  loc_B28369: CI4UI1
  loc_B2836A: FLdPr Me
  loc_B2836D: MemLdStr global_88
  loc_B28370: AryLock
  loc_B28373: Ary1LdPr
  loc_B28374: MemLdStr global_8
  loc_B28377: AryLock
  loc_B2837A: Ary1LdPr
  loc_B2837B: MemLdRfVar from_stack_1.global_20
  loc_B2837E: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B28383: AryUnlock
  loc_B28386: AryUnlock
  loc_B28389: FFreeAd var_B8 = ""
  loc_B28390: FFreeVar var_C8 = ""
  loc_B28397: FLdRfVar var_128
  loc_B2839A: LitVarStr var_A4, "NumeMoba"
  loc_B2839F: PopAdLdVar
  loc_B283A0: FLdRfVar var_124
  loc_B283A3: FLdRfVar var_B8
  loc_B283A6: FLdPr var_F4
  loc_B283A9: from_stack_1v = clsbase.RsFrmGet()
  loc_B283AE: FLdPr var_B8
  loc_B283B1:  = Me.Fields
  loc_B283B6: FLdPr var_124
  loc_B283B9: from_stack_2 = Me.Item(from_stack_1)
  loc_B283BE: LitI2_Byte 0
  loc_B283C0: LitVar_Missing var_DC
  loc_B283C3: LitI2_Byte 0
  loc_B283C5: FLdZeroAd var_128
  loc_B283C8: CVarAd
  loc_B283CC: PopAdLdVar
  loc_B283CD: FLdPr Me
  loc_B283D0: MemLdI2 global_114
  loc_B283D3: CI4UI1
  loc_B283D4: FLdPr Me
  loc_B283D7: MemLdI2 global_112
  loc_B283DA: CI4UI1
  loc_B283DB: FLdPr Me
  loc_B283DE: MemLdStr global_88
  loc_B283E1: AryLock
  loc_B283E4: Ary1LdPr
  loc_B283E5: MemLdStr global_8
  loc_B283E8: AryLock
  loc_B283EB: Ary1LdPr
  loc_B283EC: MemLdRfVar from_stack_1.global_24
  loc_B283EF: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B283F4: AryUnlock
  loc_B283F7: AryUnlock
  loc_B283FA: FFreeAd var_B8 = ""
  loc_B28401: FFreeVar var_C8 = ""
  loc_B28408: FLdRfVar var_128
  loc_B2840B: LitVarStr var_A4, "DebeCaja"
  loc_B28410: PopAdLdVar
  loc_B28411: FLdRfVar var_124
  loc_B28414: FLdRfVar var_B8
  loc_B28417: FLdPr var_F4
  loc_B2841A: from_stack_1v = clsbase.RsFrmGet()
  loc_B2841F: FLdPr var_B8
  loc_B28422:  = Me.Fields
  loc_B28427: FLdPr var_124
  loc_B2842A: from_stack_2 = Me.Item(from_stack_1)
  loc_B2842F: LitI2_Byte 0
  loc_B28431: FLdPr Me
  loc_B28434: MemLdI2 global_112
  loc_B28437: CI4UI1
  loc_B28438: FLdPr Me
  loc_B2843B: MemLdStr global_88
  loc_B2843E: AryLock
  loc_B28441: Ary1LdPr
  loc_B28442: MemLdRfVar from_stack_1.global_12
  loc_B28445: CVarRef
  loc_B2844A: LitI2_Byte &HFF
  loc_B2844C: FLdZeroAd var_128
  loc_B2844F: CVarAd
  loc_B28453: PopAdLdVar
  loc_B28454: FLdPr Me
  loc_B28457: MemLdI2 global_114
  loc_B2845A: CI4UI1
  loc_B2845B: FLdPr Me
  loc_B2845E: MemLdI2 global_112
  loc_B28461: CI4UI1
  loc_B28462: FLdPr Me
  loc_B28465: MemLdStr global_88
  loc_B28468: AryLock
  loc_B2846B: Ary1LdPr
  loc_B2846C: MemLdStr global_8
  loc_B2846F: AryLock
  loc_B28472: Ary1LdPr
  loc_B28473: MemLdRfVar from_stack_1.global_28
  loc_B28476: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B2847B: AryUnlock
  loc_B2847E: AryUnlock
  loc_B28481: AryUnlock
  loc_B28484: FFreeAd var_B8 = ""
  loc_B2848B: FFree1Var var_C8 = ""
  loc_B2848E: FLdRfVar var_128
  loc_B28491: LitVarStr var_A4, "HabeCaja"
  loc_B28496: PopAdLdVar
  loc_B28497: FLdRfVar var_124
  loc_B2849A: FLdRfVar var_B8
  loc_B2849D: FLdPr var_F4
  loc_B284A0: from_stack_1v = clsbase.RsFrmGet()
  loc_B284A5: FLdPr var_B8
  loc_B284A8:  = Me.Fields
  loc_B284AD: FLdPr var_124
  loc_B284B0: from_stack_2 = Me.Item(from_stack_1)
  loc_B284B5: LitI2_Byte 0
  loc_B284B7: FLdPr Me
  loc_B284BA: MemLdI2 global_112
  loc_B284BD: CI4UI1
  loc_B284BE: FLdPr Me
  loc_B284C1: MemLdStr global_88
  loc_B284C4: AryLock
  loc_B284C7: Ary1LdPr
  loc_B284C8: MemLdRfVar from_stack_1.global_16
  loc_B284CB: CVarRef
  loc_B284D0: LitI2_Byte &HFF
  loc_B284D2: FLdZeroAd var_128
  loc_B284D5: CVarAd
  loc_B284D9: PopAdLdVar
  loc_B284DA: FLdPr Me
  loc_B284DD: MemLdI2 global_114
  loc_B284E0: CI4UI1
  loc_B284E1: FLdPr Me
  loc_B284E4: MemLdI2 global_112
  loc_B284E7: CI4UI1
  loc_B284E8: FLdPr Me
  loc_B284EB: MemLdStr global_88
  loc_B284EE: AryLock
  loc_B284F1: Ary1LdPr
  loc_B284F2: MemLdStr global_8
  loc_B284F5: AryLock
  loc_B284F8: Ary1LdPr
  loc_B284F9: MemLdRfVar from_stack_1.global_32
  loc_B284FC: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B28501: AryUnlock
  loc_B28504: AryUnlock
  loc_B28507: AryUnlock
  loc_B2850A: FFreeAd var_B8 = ""
  loc_B28511: FFree1Var var_C8 = ""
  loc_B28514: FLdPr var_F4
  loc_B28517: Call clsbase.MoveSiguiente()
  loc_B2851C: FLdPr Me
  loc_B2851F: MemLdRfVar from_stack_1.global_114
  loc_B28522: NextI2 var_134, loc_B28162
  loc_B28527: LitI2_Byte 0
  loc_B28529: FLdPr Me
  loc_B2852C: MemLdRfVar from_stack_1.global_92
  loc_B2852F: CVarRef
  loc_B28534: LitI2_Byte &HFF
  loc_B28536: FLdPr Me
  loc_B28539: MemLdI2 global_112
  loc_B2853C: CI4UI1
  loc_B2853D: FLdPr Me
  loc_B28540: MemLdStr global_88
  loc_B28543: Ary1LdPr
  loc_B28544: MemLdStr global_12
  loc_B28547: CVarStr var_A4
  loc_B2854A: PopAdLdVar
  loc_B2854B: FLdPr Me
  loc_B2854E: MemLdRfVar from_stack_1.global_116
  loc_B28551: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B28556: LitI2_Byte 0
  loc_B28558: FLdPr Me
  loc_B2855B: MemLdRfVar from_stack_1.global_96
  loc_B2855E: CVarRef
  loc_B28563: LitI2_Byte &HFF
  loc_B28565: FLdPr Me
  loc_B28568: MemLdI2 global_112
  loc_B2856B: CI4UI1
  loc_B2856C: FLdPr Me
  loc_B2856F: MemLdStr global_88
  loc_B28572: Ary1LdPr
  loc_B28573: MemLdStr global_16
  loc_B28576: CVarStr var_A4
  loc_B28579: PopAdLdVar
  loc_B2857A: FLdPr Me
  loc_B2857D: MemLdRfVar from_stack_1.global_116
  loc_B28580: ImpAdCallFPR4 Proc_261_19_A15E40(, , , , , , , )
  loc_B28585: FLdPr Me
  loc_B28588: MemLdRfVar from_stack_1.global_112
  loc_B2858B: NextI2 var_130, loc_B2806D
  loc_B28590: LitNothing
  loc_B28592: FStAd var_F4 
  loc_B28596: LitI2_Byte &HFF
  loc_B28598: FLdPr Me
  loc_B2859B: MemStI2 bGenerado
  loc_B2859E: LitI4 0
  loc_B285A3: CI2I4
  loc_B285A4: FLdPr Me
  loc_B285A7: Me.MousePointer = from_stack_1
  loc_B285AC: LitVarStr var_A4, vbNullString
  loc_B285B1: PopAdLdVar
  loc_B285B2: FLdPr Me
  loc_B285B5: VCallAd Control_ID_statusBar
  loc_B285B8: FStAdFunc var_B8
  loc_B285BB: FLdPr var_B8
  loc_B285BE: LateIdSt
  loc_B285C3: FFree1Ad var_B8
  loc_B285C6: ExitProcHresult
End Sub

Public Sub HabilitarCriterio() '9B599C
  'Data Table: 492F40
  loc_9B5908: LitI4 0
  loc_9B590D: LitI4 6
  loc_9B5912: FLdRfVar var_88
  loc_9B5915: Redim
  loc_9B591F: FLdPr Me
  loc_9B5922: VCallAd Control_ID_cboPeriodo
  loc_9B5925: CVarAd
  loc_9B5929: ParmAry1St
  loc_9B592F: FLdPr Me
  loc_9B5932: VCallAd Control_ID_mskDesde
  loc_9B5935: CVarAd
  loc_9B5939: ParmAry1St
  loc_9B593F: FLdPr Me
  loc_9B5942: VCallAd Control_ID_cmdCalDesde
  loc_9B5945: CVarAd
  loc_9B5949: ParmAry1St
  loc_9B594F: FLdPr Me
  loc_9B5952: VCallAd Control_ID_mskHasta
  loc_9B5955: CVarAd
  loc_9B5959: ParmAry1St
  loc_9B595F: FLdPr Me
  loc_9B5962: VCallAd Control_ID_cmdCalHasta
  loc_9B5965: CVarAd
  loc_9B5969: ParmAry1St
  loc_9B596F: FLdPr Me
  loc_9B5972: VCallAd Control_ID_mskCodiCuco
  loc_9B5975: CVarAd
  loc_9B5979: ParmAry1St
  loc_9B597F: FLdPr Me
  loc_9B5982: VCallAd Control_ID_cmdCodiCuco
  loc_9B5985: CVarAd
  loc_9B5989: ParmAry1St
  loc_9B598F: FLdRfVar var_88
  loc_9B5992: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9B5997: FLdRfVar var_88
  loc_9B599A: Erase
  loc_9B599B: ExitProcHresult
End Sub

Private Function Proc_247_32_A9B244() 'A9B244
  'Data Table: 492F40
  loc_A9AD88: LitVarStr var_94, "<html>"
  loc_A9AD8D: PopAdLdVar
  loc_A9AD8E: FLdPr Me
  loc_A9AD91: MemLdRfVar from_stack_1.htmFile
  loc_A9AD94: LdPrVar
  loc_A9AD96: LateMemCall
  loc_A9AD9C: LitVarStr var_94, "<head>"
  loc_A9ADA1: PopAdLdVar
  loc_A9ADA2: FLdPr Me
  loc_A9ADA5: MemLdRfVar from_stack_1.htmFile
  loc_A9ADA8: LdPrVar
  loc_A9ADAA: LateMemCall
  loc_A9ADB0: LitVarStr var_94, "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"" />"
  loc_A9ADB5: PopAdLdVar
  loc_A9ADB6: FLdPr Me
  loc_A9ADB9: MemLdRfVar from_stack_1.htmFile
  loc_A9ADBC: LdPrVar
  loc_A9ADBE: LateMemCall
  loc_A9ADC4: LitStr "<title>"
  loc_A9ADC7: FLdRfVar var_A8
  loc_A9ADCA: FLdPr Me
  loc_A9ADCD:  = Me.Caption
  loc_A9ADD2: ILdRf var_A8
  loc_A9ADD5: ConcatStr
  loc_A9ADD6: FStStrNoPop var_AC
  loc_A9ADD9: LitStr "</title>"
  loc_A9ADDC: ConcatStr
  loc_A9ADDD: CVarStr var_BC
  loc_A9ADE0: PopAdLdVar
  loc_A9ADE1: FLdPr Me
  loc_A9ADE4: MemLdRfVar from_stack_1.htmFile
  loc_A9ADE7: LdPrVar
  loc_A9ADE9: LateMemCall
  loc_A9ADEF: FFreeStr var_A8 = ""
  loc_A9ADF6: FFree1Var var_BC = ""
  loc_A9ADF9: LitStr vbNullString
  loc_A9ADFC: ILdRf Me
  loc_A9ADFF: CastAd
  loc_A9AE02: FStAdFunc var_C0
  loc_A9AE05: FLdRfVar var_C0
  loc_A9AE08: ImpAdCallFPR4 Proc_263_23_B3DAB8(, )
  loc_A9AE0D: FFree1Ad var_C0
  loc_A9AE10: LitI4 0
  loc_A9AE15: FStStrCopy var_AC
  loc_A9AE18: FLdRfVar var_AC
  loc_A9AE1B: LitI4 0
  loc_A9AE20: FStStrCopy var_A8
  loc_A9AE23: FLdRfVar var_A8
  loc_A9AE26: LitI2_Byte 0
  loc_A9AE28: PopTmpLdAd2 var_C2
  loc_A9AE2B: FLdPr Me
  loc_A9AE2E: MemLdRfVar from_stack_1.htmFile
  loc_A9AE31: ImpAdCallFPR4 Proc_263_6_A92790(, , , )
  loc_A9AE36: FFreeStr var_A8 = ""
  loc_A9AE3D: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""0"" align=""center"" class=""Titulo2"">"
  loc_A9AE42: PopAdLdVar
  loc_A9AE43: FLdPr Me
  loc_A9AE46: MemLdRfVar from_stack_1.htmFile
  loc_A9AE49: LdPrVar
  loc_A9AE4B: LateMemCall
  loc_A9AE51: LitVarStr var_94, "  <tr valign=""baseline"">"
  loc_A9AE56: PopAdLdVar
  loc_A9AE57: FLdPr Me
  loc_A9AE5A: MemLdRfVar from_stack_1.htmFile
  loc_A9AE5D: LdPrVar
  loc_A9AE5F: LateMemCall
  loc_A9AE65: LitVarStr var_94, "    <th colspan=""3"" width=""100" & Chr(37) & """ align=""center"" valign=""bottom""><p>"
  loc_A9AE6A: PopAdLdVar
  loc_A9AE6B: FLdPr Me
  loc_A9AE6E: MemLdRfVar from_stack_1.htmFile
  loc_A9AE71: LdPrVar
  loc_A9AE73: LateMemCall
  loc_A9AE79: FLdPr Me
  loc_A9AE7C: MemLdI2 bLogos
  loc_A9AE7F: BranchF loc_A9AE96
  loc_A9AE82: LitVarStr var_94, "    <img src=""l1.jpg"" alt=""Logo"" align=""left""><img src=""l3.jpg"" alt=""Escudo"" align=""right"">"
  loc_A9AE87: PopAdLdVar
  loc_A9AE88: FLdPr Me
  loc_A9AE8B: MemLdRfVar from_stack_1.htmFile
  loc_A9AE8E: LdPrVar
  loc_A9AE90: LateMemCall
  loc_A9AE96: LitVarStr var_A4, "    <br><br>"
  loc_A9AE9B: LitVarStr var_94, "Municipalidad de Guaymallén"
  loc_A9AEA0: FStVarCopyObj var_BC
  loc_A9AEA3: FLdRfVar var_BC
  loc_A9AEA6: FLdRfVar var_D4
  loc_A9AEA9: ImpAdCallFPR4  = Ucase()
  loc_A9AEAE: FLdRfVar var_D4
  loc_A9AEB1: ConcatVar var_E4
  loc_A9AEB5: LitVarStr var_F4, "</p>"
  loc_A9AEBA: ConcatVar var_104
  loc_A9AEBE: PopAdLdVar
  loc_A9AEBF: FLdPr Me
  loc_A9AEC2: MemLdRfVar from_stack_1.htmFile
  loc_A9AEC5: LdPrVar
  loc_A9AEC7: LateMemCall
  loc_A9AECD: FFreeVar var_BC = "": var_D4 = "": var_E4 = ""
  loc_A9AED8: LitStr "    <p>"
  loc_A9AEDB: FLdRfVar var_A8
  loc_A9AEDE: FLdPr Me
  loc_A9AEE1:  = Me.Caption
  loc_A9AEE6: ILdRf var_A8
  loc_A9AEE9: ConcatStr
  loc_A9AEEA: FStStrNoPop var_AC
  loc_A9AEED: LitStr "</p></th>"
  loc_A9AEF0: ConcatStr
  loc_A9AEF1: CVarStr var_BC
  loc_A9AEF4: PopAdLdVar
  loc_A9AEF5: FLdPr Me
  loc_A9AEF8: MemLdRfVar from_stack_1.htmFile
  loc_A9AEFB: LdPrVar
  loc_A9AEFD: LateMemCall
  loc_A9AF03: FFreeStr var_A8 = ""
  loc_A9AF0A: FFree1Var var_BC = ""
  loc_A9AF0D: LitVarStr var_94, "  </tr>"
  loc_A9AF12: PopAdLdVar
  loc_A9AF13: FLdPr Me
  loc_A9AF16: MemLdRfVar from_stack_1.htmFile
  loc_A9AF19: LdPrVar
  loc_A9AF1B: LateMemCall
  loc_A9AF21: LitVarStr var_94, "  <tr><th><hr></th></tr>"
  loc_A9AF26: PopAdLdVar
  loc_A9AF27: FLdPr Me
  loc_A9AF2A: MemLdRfVar from_stack_1.htmFile
  loc_A9AF2D: LdPrVar
  loc_A9AF2F: LateMemCall
  loc_A9AF35: LitVarStr var_94, "  <tr align=""left""><th>"
  loc_A9AF3A: PopAdLdVar
  loc_A9AF3B: FLdPr Me
  loc_A9AF3E: MemLdRfVar from_stack_1.htmFile
  loc_A9AF41: LdPrVar
  loc_A9AF43: LateMemCall
  loc_A9AF49: FLdPr Me
  loc_A9AF4C: VCallAd Control_ID_mskDesde
  loc_A9AF4F: FStAdFunc var_C0
  loc_A9AF52: FLdPr var_C0
  loc_A9AF55: LateIdLdVar var_BC DispID_22 0
  loc_A9AF5C: CStrVarTmp
  loc_A9AF5D: FStStrNoPop var_A8
  loc_A9AF60: LitStr vbNullString
  loc_A9AF63: NeStr
  loc_A9AF65: FFree1Str var_A8
  loc_A9AF68: FFree1Ad var_C0
  loc_A9AF6B: FFree1Var var_BC = ""
  loc_A9AF6E: BranchF loc_A9AFB6
  loc_A9AF71: LitStr "         Desde: <span class=""Normal"">"
  loc_A9AF74: FLdPr Me
  loc_A9AF77: VCallAd Control_ID_mskDesde
  loc_A9AF7A: FStAdFunc var_C0
  loc_A9AF7D: FLdPr var_C0
  loc_A9AF80: LateIdLdVar var_BC DispID_15 0
  loc_A9AF87: CStrVarTmp
  loc_A9AF88: FStStrNoPop var_A8
  loc_A9AF8B: ConcatStr
  loc_A9AF8C: FStStrNoPop var_AC
  loc_A9AF8F: LitStr "</span><br>"
  loc_A9AF92: ConcatStr
  loc_A9AF93: CVarStr var_D4
  loc_A9AF96: PopAdLdVar
  loc_A9AF97: FLdPr Me
  loc_A9AF9A: MemLdRfVar from_stack_1.htmFile
  loc_A9AF9D: LdPrVar
  loc_A9AF9F: LateMemCall
  loc_A9AFA5: FFreeStr var_A8 = ""
  loc_A9AFAC: FFree1Ad var_C0
  loc_A9AFAF: FFreeVar var_BC = ""
  loc_A9AFB6: FLdPr Me
  loc_A9AFB9: VCallAd Control_ID_mskHasta
  loc_A9AFBC: FStAdFunc var_C0
  loc_A9AFBF: FLdPr var_C0
  loc_A9AFC2: LateIdLdVar var_BC DispID_22 0
  loc_A9AFC9: CStrVarTmp
  loc_A9AFCA: FStStrNoPop var_A8
  loc_A9AFCD: LitStr vbNullString
  loc_A9AFD0: NeStr
  loc_A9AFD2: FFree1Str var_A8
  loc_A9AFD5: FFree1Ad var_C0
  loc_A9AFD8: FFree1Var var_BC = ""
  loc_A9AFDB: BranchF loc_A9B023
  loc_A9AFDE: LitStr "         Hasta: <span class=""Normal"">"
  loc_A9AFE1: FLdPr Me
  loc_A9AFE4: VCallAd Control_ID_mskHasta
  loc_A9AFE7: FStAdFunc var_C0
  loc_A9AFEA: FLdPr var_C0
  loc_A9AFED: LateIdLdVar var_BC DispID_15 0
  loc_A9AFF4: CStrVarTmp
  loc_A9AFF5: FStStrNoPop var_A8
  loc_A9AFF8: ConcatStr
  loc_A9AFF9: FStStrNoPop var_AC
  loc_A9AFFC: LitStr "</span><br>"
  loc_A9AFFF: ConcatStr
  loc_A9B000: CVarStr var_D4
  loc_A9B003: PopAdLdVar
  loc_A9B004: FLdPr Me
  loc_A9B007: MemLdRfVar from_stack_1.htmFile
  loc_A9B00A: LdPrVar
  loc_A9B00C: LateMemCall
  loc_A9B012: FFreeStr var_A8 = ""
  loc_A9B019: FFree1Ad var_C0
  loc_A9B01C: FFreeVar var_BC = ""
  loc_A9B023: FLdPr Me
  loc_A9B026: VCallAd Control_ID_mskCodiCuco
  loc_A9B029: FStAdFunc var_C0
  loc_A9B02C: FLdPr var_C0
  loc_A9B02F: LateIdLdVar var_BC DispID_20 0
  loc_A9B036: CStrVarTmp
  loc_A9B037: FStStrNoPop var_A8
  loc_A9B03A: LitStr vbNullString
  loc_A9B03D: NeStr
  loc_A9B03F: FFree1Str var_A8
  loc_A9B042: FFree1Ad var_C0
  loc_A9B045: FFree1Var var_BC = ""
  loc_A9B048: BranchF loc_A9B102
  loc_A9B04B: FLdPr Me
  loc_A9B04E: VCallAd Control_ID_mskCodiCuco
  loc_A9B051: FStAdFunc var_C0
  loc_A9B054: FLdPr var_C0
  loc_A9B057: LateIdLdVar var_BC DispID_20 0
  loc_A9B05E: CStrVarTmp
  loc_A9B05F: FStStrNoPop var_A8
  loc_A9B062: FnLenStr
  loc_A9B063: LitI4 &HA
  loc_A9B068: LtI4
  loc_A9B069: FFree1Str var_A8
  loc_A9B06C: FFree1Ad var_C0
  loc_A9B06F: FFree1Var var_BC = ""
  loc_A9B072: BranchF loc_A9B0BD
  loc_A9B075: LitStr "    Cuenta contable: <span class=""Normal"">Comenzando con "
  loc_A9B078: FLdPr Me
  loc_A9B07B: VCallAd Control_ID_mskCodiCuco
  loc_A9B07E: FStAdFunc var_C0
  loc_A9B081: FLdPr var_C0
  loc_A9B084: LateIdLdVar var_BC DispID_22 0
  loc_A9B08B: CStrVarTmp
  loc_A9B08C: FStStrNoPop var_A8
  loc_A9B08F: ConcatStr
  loc_A9B090: FStStrNoPop var_AC
  loc_A9B093: LitStr "...</span>"
  loc_A9B096: ConcatStr
  loc_A9B097: CVarStr var_D4
  loc_A9B09A: PopAdLdVar
  loc_A9B09B: FLdPr Me
  loc_A9B09E: MemLdRfVar from_stack_1.htmFile
  loc_A9B0A1: LdPrVar
  loc_A9B0A3: LateMemCall
  loc_A9B0A9: FFreeStr var_A8 = ""
  loc_A9B0B0: FFree1Ad var_C0
  loc_A9B0B3: FFreeVar var_BC = ""
  loc_A9B0BA: Branch loc_A9B102
  loc_A9B0BD: LitStr "    Cuenta contable: <span class=""Normal"">"
  loc_A9B0C0: FLdPr Me
  loc_A9B0C3: VCallAd Control_ID_mskCodiCuco
  loc_A9B0C6: FStAdFunc var_C0
  loc_A9B0C9: FLdPr var_C0
  loc_A9B0CC: LateIdLdVar var_BC DispID_22 0
  loc_A9B0D3: CStrVarTmp
  loc_A9B0D4: FStStrNoPop var_A8
  loc_A9B0D7: ConcatStr
  loc_A9B0D8: FStStrNoPop var_AC
  loc_A9B0DB: LitStr "</span>"
  loc_A9B0DE: ConcatStr
  loc_A9B0DF: CVarStr var_D4
  loc_A9B0E2: PopAdLdVar
  loc_A9B0E3: FLdPr Me
  loc_A9B0E6: MemLdRfVar from_stack_1.htmFile
  loc_A9B0E9: LdPrVar
  loc_A9B0EB: LateMemCall
  loc_A9B0F1: FFreeStr var_A8 = ""
  loc_A9B0F8: FFree1Ad var_C0
  loc_A9B0FB: FFreeVar var_BC = ""
  loc_A9B102: LitVarStr var_94, "   </th>"
  loc_A9B107: PopAdLdVar
  loc_A9B108: FLdPr Me
  loc_A9B10B: MemLdRfVar from_stack_1.htmFile
  loc_A9B10E: LdPrVar
  loc_A9B110: LateMemCall
  loc_A9B116: LitVarStr var_94, "  </tr>"
  loc_A9B11B: PopAdLdVar
  loc_A9B11C: FLdPr Me
  loc_A9B11F: MemLdRfVar from_stack_1.htmFile
  loc_A9B122: LdPrVar
  loc_A9B124: LateMemCall
  loc_A9B12A: LitVarStr var_94, "</table>"
  loc_A9B12F: PopAdLdVar
  loc_A9B130: FLdPr Me
  loc_A9B133: MemLdRfVar from_stack_1.htmFile
  loc_A9B136: LdPrVar
  loc_A9B138: LateMemCall
  loc_A9B13E: LitVarStr var_94, "<table width=""100" & Chr(37) & """ border=""1"" align=""center"" cellpadding=""1"" cellspacing=""0"">"
  loc_A9B143: PopAdLdVar
  loc_A9B144: FLdPr Me
  loc_A9B147: MemLdRfVar from_stack_1.htmFile
  loc_A9B14A: LdPrVar
  loc_A9B14C: LateMemCall
  loc_A9B152: LitVarStr var_94, "  <THEAD>"
  loc_A9B157: PopAdLdVar
  loc_A9B158: FLdPr Me
  loc_A9B15B: MemLdRfVar from_stack_1.htmFile
  loc_A9B15E: LdPrVar
  loc_A9B160: LateMemCall
  loc_A9B166: LitVarStr var_94, "  <tr align=""center"" class=""Encabezado"">"
  loc_A9B16B: PopAdLdVar
  loc_A9B16C: FLdPr Me
  loc_A9B16F: MemLdRfVar from_stack_1.htmFile
  loc_A9B172: LdPrVar
  loc_A9B174: LateMemCall
  loc_A9B17A: LitVarStr var_94, "    <th>Fecha</th>"
  loc_A9B17F: PopAdLdVar
  loc_A9B180: FLdPr Me
  loc_A9B183: MemLdRfVar from_stack_1.htmFile
  loc_A9B186: LdPrVar
  loc_A9B188: LateMemCall
  loc_A9B18E: LitVarStr var_94, "    <th>Expediente</th>"
  loc_A9B193: PopAdLdVar
  loc_A9B194: FLdPr Me
  loc_A9B197: MemLdRfVar from_stack_1.htmFile
  loc_A9B19A: LdPrVar
  loc_A9B19C: LateMemCall
  loc_A9B1A2: LitVarStr var_94, "    <th>Liquidación</th>"
  loc_A9B1A7: PopAdLdVar
  loc_A9B1A8: FLdPr Me
  loc_A9B1AB: MemLdRfVar from_stack_1.htmFile
  loc_A9B1AE: LdPrVar
  loc_A9B1B0: LateMemCall
  loc_A9B1B6: LitVarStr var_94, "    <th>Proveedor</th>"
  loc_A9B1BB: PopAdLdVar
  loc_A9B1BC: FLdPr Me
  loc_A9B1BF: MemLdRfVar from_stack_1.htmFile
  loc_A9B1C2: LdPrVar
  loc_A9B1C4: LateMemCall
  loc_A9B1CA: LitVarStr var_94, "    <th>Banco</th>"
  loc_A9B1CF: PopAdLdVar
  loc_A9B1D0: FLdPr Me
  loc_A9B1D3: MemLdRfVar from_stack_1.htmFile
  loc_A9B1D6: LdPrVar
  loc_A9B1D8: LateMemCall
  loc_A9B1DE: LitVarStr var_94, "    <th>Cheque/<br>Retenci&oacute;n</th>"
  loc_A9B1E3: PopAdLdVar
  loc_A9B1E4: FLdPr Me
  loc_A9B1E7: MemLdRfVar from_stack_1.htmFile
  loc_A9B1EA: LdPrVar
  loc_A9B1EC: LateMemCall
  loc_A9B1F2: LitVarStr var_94, "    <th>D E B E</th>"
  loc_A9B1F7: PopAdLdVar
  loc_A9B1F8: FLdPr Me
  loc_A9B1FB: MemLdRfVar from_stack_1.htmFile
  loc_A9B1FE: LdPrVar
  loc_A9B200: LateMemCall
  loc_A9B206: LitVarStr var_94, "    <th>H A B E R</th>"
  loc_A9B20B: PopAdLdVar
  loc_A9B20C: FLdPr Me
  loc_A9B20F: MemLdRfVar from_stack_1.htmFile
  loc_A9B212: LdPrVar
  loc_A9B214: LateMemCall
  loc_A9B21A: LitVarStr var_94, "  </tr>"
  loc_A9B21F: PopAdLdVar
  loc_A9B220: FLdPr Me
  loc_A9B223: MemLdRfVar from_stack_1.htmFile
  loc_A9B226: LdPrVar
  loc_A9B228: LateMemCall
  loc_A9B22E: LitVarStr var_94, "  </THEAD>"
  loc_A9B233: PopAdLdVar
  loc_A9B234: FLdPr Me
  loc_A9B237: MemLdRfVar from_stack_1.htmFile
  loc_A9B23A: LdPrVar
  loc_A9B23C: LateMemCall
  loc_A9B242: ExitProcHresult
End Function

Private Function Proc_247_33_983730() '983730
  'Data Table: 492F40
  loc_9836F0: LitVarStr var_94, "</table>"
  loc_9836F5: PopAdLdVar
  loc_9836F6: FLdPr Me
  loc_9836F9: MemLdRfVar from_stack_1.htmFile
  loc_9836FC: LdPrVar
  loc_9836FE: LateMemCall
  loc_983704: LitVarStr var_94, "</body>"
  loc_983709: PopAdLdVar
  loc_98370A: FLdPr Me
  loc_98370D: MemLdRfVar from_stack_1.htmFile
  loc_983710: LdPrVar
  loc_983712: LateMemCall
  loc_983718: LitVarStr var_94, "</html>"
  loc_98371D: PopAdLdVar
  loc_98371E: FLdPr Me
  loc_983721: MemLdRfVar from_stack_1.htmFile
  loc_983724: LdPrVar
  loc_983726: LateMemCall
  loc_98372C: ExitProcHresult
  loc_98372D: CR8I2
  loc_98372E: Error
End Function
