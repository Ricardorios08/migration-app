VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C0000C04E4C0A}#1.1#0"; "C:\Windows\SysWow64\TABCTL32.OCX"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmParametrosComisionesBancarias
  Caption = "Imputar Comisiones Bancarias"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmParametrosComisionesBancarias.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 15195
  ClientHeight = 11355
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin TabDlg.SSTab SSTab1
    Left = 120
    Top = 6240
    Width = 14415
    Height = 4935
    TabIndex = 20
    OleObjectBlob = "frmParametrosComisionesBancarias.frx":08CA
    Begin MSDataGridLib.DataGrid dgdABMS2
      Left = 120
      Top = 600
      Width = 14175
      Height = 4095
      TabIndex = 21
      OleObjectBlob = "frmParametrosComisionesBancarias.frx":0A44
    End
    Begin MSDataGridLib.DataGrid dgdABMS3
      Left = -74880
      Top = 600
      Width = 14175
      Height = 4095
      TabIndex = 22
      OleObjectBlob = "frmParametrosComisionesBancarias.frx":0BF0
    End
  End
  Begin VB.Frame Frame
    Caption = " Imputar Comisiones Bancarias "
    Left = 120
    Top = 3120
    Width = 14415
    Height = 3015
    TabIndex = 19
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdImputarComBcriasEntesRecaudadores
      Caption = "Comisiones Bancarias Entes Recaudadores"
      Left = 6600
      Top = 2160
      Width = 5055
      Height = 615
      TabIndex = 15
    End
    Begin VB.CommandButton cmdImputarComBcriasTesoreria
      Caption = "Comisiones Bancarias Tesorería"
      Left = 120
      Top = 2160
      Width = 3735
      Height = 615
      TabIndex = 13
    End
    Begin VB.ComboBox cboMes
      Style = 2
      ForeColor = &HFF0000&
      Left = 840
      Top = 577
      Width = 1575
      Height = 420
      TabIndex = 2
      DataField = "Mes"
    End
    Begin MSMask.MaskEdBox ExorImpuMsk
      Left = 11400
      Top = 600
      Width = 2175
      Height = 360
      TabIndex = 6
      OleObjectBlob = "frmParametrosComisionesBancarias.frx":0D9C
      DataField = "ExorImpu"
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 2400
      Top = 1080
      Width = 1575
      Height = 360
      TabIndex = 8
      OleObjectBlob = "frmParametrosComisionesBancarias.frx":0DFC
      DataField = "CodiPart"
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 2400
      Top = 1560
      Width = 1335
      Height = 360
      TabIndex = 11
      OleObjectBlob = "frmParametrosComisionesBancarias.frx":0E84
      DataField = "CodiOrga"
    End
    Begin VB.Label lblFechaDesde
      Left = 3600
      Top = 600
      Width = 1935
      Height = 360
      TabIndex = 24
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label5
      Caption = "Desde:"
      Left = 2760
      Top = 600
      Width = 765
      Height = 300
      TabIndex = 23
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Hasta:"
      Left = 5880
      Top = 600
      Width = 705
      Height = 300
      TabIndex = 3
      AutoSize = -1  'True
    End
    Begin VB.Label lblFechaHasta
      Left = 6720
      Top = 600
      Width = 1935
      Height = 360
      TabIndex = 4
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label lblComiEntes
      Left = 11760
      Top = 2280
      Width = 2415
      Height = 495
      TabIndex = 16
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label lblComiTesoreria
      Left = 3960
      Top = 2280
      Width = 2535
      Height = 495
      TabIndex = 14
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label3
      Caption = "Mes:"
      Left = 210
      Top = 600
      Width = 585
      Height = 315
      TabIndex = 1
      AutoSize = -1  'True
    End
    Begin VB.Label DetaOrgaLbl
      Left = 3840
      Top = 1560
      Width = 6615
      Height = 360
      TabIndex = 12
      BorderStyle = 1 'Fixed Single
      DataField = "DetaOrga"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label20
      Caption = "Oficina:"
      Left = 1560
      Top = 1560
      Width = 795
      Height = 300
      TabIndex = 10
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label4
      Caption = "Partida:"
      Left = 1545
      Top = 1080
      Width = 810
      Height = 300
      TabIndex = 7
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = -1 'True
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DetaPartLbl
      Left = 4020
      Top = 1080
      Width = 6375
      Height = 360
      TabIndex = 9
      BorderStyle = 1 'Fixed Single
      DataField = "DetaPart"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label2
      Caption = "Expediente Original:"
      Left = 9240
      Top = 630
      Width = 2115
      Height = 300
      TabIndex = 5
      AutoSize = -1  'True
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 840
    Width = 14415
    Height = 2175
    TabIndex = 18
    OleObjectBlob = "frmParametrosComisionesBancarias.frx":0F0C
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmParametrosComisionesBancarias.frx":1208
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15195
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmParametrosComisionesBancarias.frx":8D86
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 17
      TabStop = 0   'False
      Picture = "frmParametrosComisionesBancarias.frx":92E2
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmParametrosComisionesBancarias"


Private Sub cmdCancelar_Click() 'A173B4
  'Data Table: 49CE84
  loc_A17238: LitI2_Byte 0
  loc_A1723A: CUI1I2
  loc_A1723C: FLdPr Me
  loc_A1723F: MemStUI1
  loc_A17243: ILdRf Me
  loc_A17246: CastAd
  loc_A17249: FStAdFunc var_88
  loc_A1724C: FLdRfVar var_88
  loc_A1724F: ImpAdCallFPR4  = Proc_261_1_AC96D8()
  loc_A17254: FFree1Ad var_88
  loc_A17257: LitI2_Byte 0
  loc_A17259: FLdRfVar var_C0
  loc_A1725C: LitVarI2 var_B8, 1
  loc_A17261: FLdPr Me
  loc_A17264: VCallAd Control_ID_tlbABMS
  loc_A17267: FStAdFunc var_88
  loc_A1726A: FLdPr var_88
  loc_A1726D: LateIdLdVar var_98 DispID_3 0
  loc_A17274: CastAdVar Me
  loc_A17278: FStAdFunc var_BC
  loc_A1727B: FLdPr var_BC
  loc_A1727E:  = Me.Buttons.ControlDefault
  loc_A17283: FLdPr var_C0
  loc_A17286: Me.Enabled = from_stack_1b
  loc_A1728B: FFreeAd var_88 = "": var_BC = ""
  loc_A17294: FFreeVar var_98 = ""
  loc_A1729B: LitI2_Byte 0
  loc_A1729D: FLdRfVar var_C0
  loc_A172A0: LitVarI2 var_B8, 2
  loc_A172A5: FLdPr Me
  loc_A172A8: VCallAd Control_ID_tlbABMS
  loc_A172AB: FStAdFunc var_88
  loc_A172AE: FLdPr var_88
  loc_A172B1: LateIdLdVar var_98 DispID_3 0
  loc_A172B8: CastAdVar Me
  loc_A172BC: FStAdFunc var_BC
  loc_A172BF: FLdPr var_BC
  loc_A172C2:  = Me.Buttons.ControlDefault
  loc_A172C7: FLdPr var_C0
  loc_A172CA: Me.Enabled = from_stack_1b
  loc_A172CF: FFreeAd var_88 = "": var_BC = ""
  loc_A172D8: FFreeVar var_98 = ""
  loc_A172DF: LitI2_Byte 0
  loc_A172E1: FLdRfVar var_C0
  loc_A172E4: LitVarI2 var_B8, 3
  loc_A172E9: FLdPr Me
  loc_A172EC: VCallAd Control_ID_tlbABMS
  loc_A172EF: FStAdFunc var_88
  loc_A172F2: FLdPr var_88
  loc_A172F5: LateIdLdVar var_98 DispID_3 0
  loc_A172FC: CastAdVar Me
  loc_A17300: FStAdFunc var_BC
  loc_A17303: FLdPr var_BC
  loc_A17306:  = Me.Buttons.ControlDefault
  loc_A1730B: FLdPr var_C0
  loc_A1730E: Me.Enabled = from_stack_1b
  loc_A17313: FFreeAd var_88 = "": var_BC = ""
  loc_A1731C: FFreeVar var_98 = ""
  loc_A17323: LitI4 0
  loc_A17328: LitI4 0
  loc_A1732D: FLdRfVar var_C4
  loc_A17330: Redim
  loc_A1733A: FLdPr Me
  loc_A1733D: VCallAd Control_ID_dgdABMS
  loc_A17340: CVarAd
  loc_A17344: ParmAry1St
  loc_A1734A: FLdRfVar var_C4
  loc_A1734D: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A17352: FLdRfVar var_C4
  loc_A17355: Erase
  loc_A17356: FLdPr Me
  loc_A17359: MemLdRfVar from_stack_1.global_52
  loc_A1735C: NewIfNullAd
  loc_A1735F: FStAd var_BC 
  loc_A17363: FLdRfVar var_BC
  loc_A17366: CVarRef
  loc_A1736B: ILdRf Me
  loc_A1736E: CastAd
  loc_A17371: FStAdFunc var_88
  loc_A17374: FLdRfVar var_88
  loc_A17377: ImpAdCallFPR4  = Proc_261_8_9C2398()
  loc_A1737C: ILdRf var_BC
  loc_A1737F: CastAd
  loc_A17382: FLdPr Me
  loc_A17385: MemStAdFunc
  loc_A17389: FFreeAd var_88 = ""
  loc_A17390: ILdRf Me
  loc_A17393: CastAd
  loc_A17396: FStAdFunc var_88
  loc_A17399: FLdRfVar var_88
  loc_A1739C: ImpAdCallFPR4  = Proc_261_14_9D98D4()
  loc_A173A1: FFree1Ad var_88
  loc_A173A4: LitI2_Byte 0
  loc_A173A6: LitVarI2 var_98, 0
  loc_A173AB: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A173B0: FFree1Var var_98 = ""
  loc_A173B3: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '999DB0
  'Data Table: 49CE84
  loc_999D54: FLdRfVar var_B4
  loc_999D57: FLdRfVar var_B0
  loc_999D5A: FLdI2 ColIndex
  loc_999D5D: CVarI2 var_A8
  loc_999D60: PopAdLdVar
  loc_999D61: FLdPr Me
  loc_999D64: VCallAd Control_ID_dgdABMS
  loc_999D67: FStAdFunc var_88
  loc_999D6A: FLdPr var_88
  loc_999D6D: LateIdLdVar var_98 DispID_105 0
  loc_999D74: CastAdVar Me
  loc_999D78: FStAdFunc var_AC
  loc_999D7B: FLdPr var_AC
  loc_999D7E: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_999D83: FLdPr var_B0
  loc_999D86:  = Me.DataField
  loc_999D8B: FLdZeroAd var_B4
  loc_999D8E: PopTmpLdAdStr
  loc_999D92: FLdPr Me
  loc_999D95: MemLdRfVar from_stack_1.global_52
  loc_999D98: NewIfNullPr clsparacomi
  loc_999D9B: Call clsparacomi.Sort(from_stack_1v)
  loc_999DA0: FFree1Str var_B8
  loc_999DA3: FFreeAd var_88 = "": var_AC = ""
  loc_999DAC: FFree1Var var_98 = ""
  loc_999DAF: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'B82150
  'Data Table: 49CE84
  loc_B8144C: LitStr "Municipalidad de Guaymallén"
  loc_B8144F: FStStrCopy var_A0
  loc_B81452: ILdRf var_A0
  loc_B81455: LitStr "Municipalidad de Guaymallén"
  loc_B81458: EqStr
  loc_B8145A: BranchF loc_B8153A
  loc_B8145D: LitI2_Byte &HE
  loc_B8145F: FStI2 var_86
  loc_B81462: LitI2_Byte &H13
  loc_B81464: FLdPr Me
  loc_B81467: MemStI2 global_100
  loc_B8146A: LitI2_Byte &H19
  loc_B8146C: FLdPr Me
  loc_B8146F: MemStI2 global_102
  loc_B81472: LitStr "SELECT * FROM tipomovibanco tmb WHERE tmb.PeriInfo = "
  loc_B81475: ImpAdLdI2 MemVar_C3D064
  loc_B81478: CStrUI1
  loc_B8147A: FStStrNoPop var_A4
  loc_B8147D: ConcatStr
  loc_B8147E: FStStrNoPop var_A8
  loc_B81481: LitStr " AND tmb.CodiTimb = "
  loc_B81484: ConcatStr
  loc_B81485: FStStrNoPop var_AC
  loc_B81488: FLdI2 var_86
  loc_B8148B: CStrUI1
  loc_B8148D: FStStrNoPop var_B0
  loc_B81490: ConcatStr
  loc_B81491: FStStrNoPop var_B4
  loc_B81494: LitStr ";"
  loc_B81497: ConcatStr
  loc_B81498: FStStrNoPop var_B8
  loc_B8149B: FLdPr Me
  loc_B8149E: MemLdRfVar from_stack_1.global_56
  loc_B814A1: NewIfNullPr clsparacomi
  loc_B814A4: Call clsparacomi.RedefineRS(from_stack_1v)
  loc_B814A9: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_B814B8: FLdRfVar var_BC
  loc_B814BB: FLdPr Me
  loc_B814BE: MemLdRfVar from_stack_1.global_56
  loc_B814C1: NewIfNullPr clsparacomi
  loc_B814C4: from_stack_1 = clsparacomi.RecordCount
  loc_B814C9: ILdRf var_BC
  loc_B814CC: LitI4 0
  loc_B814D1: GtI4
  loc_B814D2: BranchF loc_B8152D
  loc_B814D5: FLdRfVar var_E8
  loc_B814D8: FLdRfVar var_D8
  loc_B814DB: LitVarStr var_D4, "CodiCuco"
  loc_B814E0: PopAdLdVar
  loc_B814E1: FLdRfVar var_C4
  loc_B814E4: FLdRfVar var_C0
  loc_B814E7: FLdPr Me
  loc_B814EA: MemLdRfVar from_stack_1.global_56
  loc_B814ED: NewIfNullPr clsparacomi
  loc_B814F0: from_stack_1v = clsparacomi.RsFrmGet()
  loc_B814F5: FLdPr var_C0
  loc_B814F8:  = Me.Fields
  loc_B814FD: FLdPr var_C4
  loc_B81500: from_stack_2 = Me.Item(from_stack_1)
  loc_B81505: FLdPr var_D8
  loc_B81508:  = Me.Value
  loc_B8150D: FLdRfVar var_E8
  loc_B81510: CStrVarTmp
  loc_B81511: FStStrNoPop var_A4
  loc_B81514: FLdPr Me
  loc_B81517: MemStStrCopy
  loc_B8151B: FFree1Str var_A4
  loc_B8151E: FFreeAd var_C0 = "": var_C4 = ""
  loc_B81527: FFree1Var var_E8 = ""
  loc_B8152A: Branch loc_B81537
  loc_B8152D: LitStr vbNullString
  loc_B81530: FLdPr Me
  loc_B81533: MemStStrCopy
  loc_B81537: Branch loc_B8161F
  loc_B8153A: ILdRf var_A0
  loc_B8153D: LitStr "Municipalidad de Tunuyán"
  loc_B81540: EqStr
  loc_B81542: BranchF loc_B8161F
  loc_B81545: LitI2_Byte &HE
  loc_B81547: FStI2 var_86
  loc_B8154A: LitI2_Byte &H13
  loc_B8154C: FLdPr Me
  loc_B8154F: MemStI2 global_100
  loc_B81552: LitI2_Byte &H19
  loc_B81554: FLdPr Me
  loc_B81557: MemStI2 global_102
  loc_B8155A: LitStr "SELECT * FROM tipomovibanco tmb WHERE tmb.PeriInfo = "
  loc_B8155D: ImpAdLdI2 MemVar_C3D064
  loc_B81560: CStrUI1
  loc_B81562: FStStrNoPop var_A4
  loc_B81565: ConcatStr
  loc_B81566: FStStrNoPop var_A8
  loc_B81569: LitStr " AND tmb.CodiTimb = "
  loc_B8156C: ConcatStr
  loc_B8156D: FStStrNoPop var_AC
  loc_B81570: FLdI2 var_86
  loc_B81573: CStrUI1
  loc_B81575: FStStrNoPop var_B0
  loc_B81578: ConcatStr
  loc_B81579: FStStrNoPop var_B4
  loc_B8157C: LitStr ";"
  loc_B8157F: ConcatStr
  loc_B81580: FStStrNoPop var_B8
  loc_B81583: FLdPr Me
  loc_B81586: MemLdRfVar from_stack_1.global_56
  loc_B81589: NewIfNullPr clsparacomi
  loc_B8158C: Call clsparacomi.RedefineRS(from_stack_1v)
  loc_B81591: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_B815A0: FLdRfVar var_BC
  loc_B815A3: FLdPr Me
  loc_B815A6: MemLdRfVar from_stack_1.global_56
  loc_B815A9: NewIfNullPr clsparacomi
  loc_B815AC: from_stack_1 = clsparacomi.RecordCount
  loc_B815B1: ILdRf var_BC
  loc_B815B4: LitI4 0
  loc_B815B9: GtI4
  loc_B815BA: BranchF loc_B81615
  loc_B815BD: FLdRfVar var_E8
  loc_B815C0: FLdRfVar var_D8
  loc_B815C3: LitVarStr var_D4, "CodiCuco"
  loc_B815C8: PopAdLdVar
  loc_B815C9: FLdRfVar var_C4
  loc_B815CC: FLdRfVar var_C0
  loc_B815CF: FLdPr Me
  loc_B815D2: MemLdRfVar from_stack_1.global_56
  loc_B815D5: NewIfNullPr clsparacomi
  loc_B815D8: from_stack_1v = clsparacomi.RsFrmGet()
  loc_B815DD: FLdPr var_C0
  loc_B815E0:  = Me.Fields
  loc_B815E5: FLdPr var_C4
  loc_B815E8: from_stack_2 = Me.Item(from_stack_1)
  loc_B815ED: FLdPr var_D8
  loc_B815F0:  = Me.Value
  loc_B815F5: FLdRfVar var_E8
  loc_B815F8: CStrVarTmp
  loc_B815F9: FStStrNoPop var_A4
  loc_B815FC: FLdPr Me
  loc_B815FF: MemStStrCopy
  loc_B81603: FFree1Str var_A4
  loc_B81606: FFreeAd var_C0 = "": var_C4 = ""
  loc_B8160F: FFree1Var var_E8 = ""
  loc_B81612: Branch loc_B8161F
  loc_B81615: LitStr vbNullString
  loc_B81618: FLdPr Me
  loc_B8161B: MemStStrCopy
  loc_B8161F: LitI2_Byte &HFF
  loc_B81621: FLdPr Me
  loc_B81624: VCallAd Control_ID_cmdImputarComBcriasTesoreria
  loc_B81627: FStAdFunc var_C0
  loc_B8162A: FLdPr var_C0
  loc_B8162D: Me.Enabled = from_stack_1b
  loc_B81632: FFree1Ad var_C0
  loc_B81635: LitStr "0"
  loc_B81638: FLdPr Me
  loc_B8163B: VCallAd Control_ID_lblComiTesoreria
  loc_B8163E: FStAdFunc var_C0
  loc_B81641: FLdPr var_C0
  loc_B81644: Me.Caption = from_stack_1
  loc_B81649: FFree1Ad var_C0
  loc_B8164C: LitI2_Byte &HFF
  loc_B8164E: FLdPr Me
  loc_B81651: VCallAd Control_ID_cmdImputarComBcriasEntesRecaudadores
  loc_B81654: FStAdFunc var_C0
  loc_B81657: FLdPr var_C0
  loc_B8165A: Me.Enabled = from_stack_1b
  loc_B8165F: FFree1Ad var_C0
  loc_B81662: LitStr "0"
  loc_B81665: FLdPr Me
  loc_B81668: VCallAd Control_ID_lblComiEntes
  loc_B8166B: FStAdFunc var_C0
  loc_B8166E: FLdPr var_C0
  loc_B81671: Me.Caption = from_stack_1
  loc_B81676: FFree1Ad var_C0
  loc_B81679: FLdRfVar var_BC
  loc_B8167C: FLdPr Me
  loc_B8167F: MemLdRfVar from_stack_1.global_52
  loc_B81682: NewIfNullPr clsparacomi
  loc_B81685: from_stack_1 = clsparacomi.RecordCount
  loc_B8168A: ILdRf var_BC
  loc_B8168D: LitI4 0
  loc_B81692: GtI4
  loc_B81693: BranchF loc_B8214C
  loc_B81696: ImpAdLdI2 MemVar_C3D064
  loc_B81699: LitI2 2023
  loc_B8169C: EqI2
  loc_B8169D: LitStr "Municipalidad de Guaymallén"
  loc_B816A0: LitStr "Municipalidad de Guaymallénnn"
  loc_B816A3: EqStr
  loc_B816A5: AndI4
  loc_B816A6: BranchF loc_B816DA
  loc_B816A9: LitStr "2023/04/18"
  loc_B816AC: FLdPr Me
  loc_B816AF: VCallAd Control_ID_lblFechaDesde
  loc_B816B2: FStAdFunc var_C0
  loc_B816B5: FLdPr var_C0
  loc_B816B8: Me.Caption = from_stack_1
  loc_B816BD: FFree1Ad var_C0
  loc_B816C0: LitStr "2023/04/30"
  loc_B816C3: FLdPr Me
  loc_B816C6: VCallAd Control_ID_lblFechaHasta
  loc_B816C9: FStAdFunc var_C0
  loc_B816CC: FLdPr var_C0
  loc_B816CF: Me.Caption = from_stack_1
  loc_B816D4: FFree1Ad var_C0
  loc_B816D7: Branch loc_B818D1
  loc_B816DA: FLdRfVar var_E8
  loc_B816DD: FLdRfVar var_D8
  loc_B816E0: LitVarStr var_D4, "MesPaco"
  loc_B816E5: PopAdLdVar
  loc_B816E6: FLdRfVar var_C4
  loc_B816E9: FLdRfVar var_C0
  loc_B816EC: FLdPr Me
  loc_B816EF: MemLdRfVar from_stack_1.global_52
  loc_B816F2: NewIfNullPr clsparacomi
  loc_B816F5: from_stack_1v = clsparacomi.RsFrmGet()
  loc_B816FA: FLdPr var_C0
  loc_B816FD:  = Me.Fields
  loc_B81702: FLdPr var_C4
  loc_B81705: from_stack_2 = Me.Item(from_stack_1)
  loc_B8170A: FLdPr var_D8
  loc_B8170D:  = Me.Value
  loc_B81712: LitI2_Byte 1
  loc_B81714: FLdRfVar var_E8
  loc_B81717: CI2Var
  loc_B81718: ImpAdLdI2 MemVar_C3D064
  loc_B8171B: FLdRfVar var_F8
  loc_B8171E: ImpAdCallFPR4  = DateSerial(, , )
  loc_B81723: FLdRfVar var_F8
  loc_B81726: CStrVarVal var_A4
  loc_B8172A: FLdPr Me
  loc_B8172D: VCallAd Control_ID_lblFechaDesde
  loc_B81730: FStAdFunc var_FC
  loc_B81733: FLdPr var_FC
  loc_B81736: Me.Caption = from_stack_1
  loc_B8173B: FFree1Str var_A4
  loc_B8173E: FFreeAd var_C0 = "": var_C4 = "": var_D8 = ""
  loc_B81749: FFreeVar var_E8 = ""
  loc_B81750: FLdRfVar var_E8
  loc_B81753: FLdRfVar var_D8
  loc_B81756: LitVarStr var_D4, "MesPaco"
  loc_B8175B: PopAdLdVar
  loc_B8175C: FLdRfVar var_C4
  loc_B8175F: FLdRfVar var_C0
  loc_B81762: FLdPr Me
  loc_B81765: MemLdRfVar from_stack_1.global_52
  loc_B81768: NewIfNullPr clsparacomi
  loc_B8176B: from_stack_1v = clsparacomi.RsFrmGet()
  loc_B81770: FLdPr var_C0
  loc_B81773:  = Me.Fields
  loc_B81778: FLdPr var_C4
  loc_B8177B: from_stack_2 = Me.Item(from_stack_1)
  loc_B81780: FLdPr var_D8
  loc_B81783:  = Me.Value
  loc_B81788: FLdRfVar var_E8
  loc_B8178B: LitVarI2 var_10C, 11
  loc_B81790: HardType
  loc_B81791: LeVarBool
  loc_B81793: FFreeAd var_C0 = "": var_C4 = ""
  loc_B8179C: FFree1Var var_E8 = ""
  loc_B8179F: BranchF loc_B81836
  loc_B817A2: FLdRfVar var_E8
  loc_B817A5: FLdRfVar var_D8
  loc_B817A8: LitVarStr var_D4, "MesPaco"
  loc_B817AD: PopAdLdVar
  loc_B817AE: FLdRfVar var_C4
  loc_B817B1: FLdRfVar var_C0
  loc_B817B4: FLdPr Me
  loc_B817B7: MemLdRfVar from_stack_1.global_52
  loc_B817BA: NewIfNullPr clsparacomi
  loc_B817BD: from_stack_1v = clsparacomi.RsFrmGet()
  loc_B817C2: FLdPr var_C0
  loc_B817C5:  = Me.Fields
  loc_B817CA: FLdPr var_C4
  loc_B817CD: from_stack_2 = Me.Item(from_stack_1)
  loc_B817D2: FLdPr var_D8
  loc_B817D5:  = Me.Value
  loc_B817DA: LitI2_Byte 1
  loc_B817DC: FLdRfVar var_E8
  loc_B817DF: LitVarI2 var_10C, 1
  loc_B817E4: AddVar var_F8
  loc_B817E8: CI2Var
  loc_B817E9: ImpAdLdI2 MemVar_C3D064
  loc_B817EC: FLdRfVar var_11C
  loc_B817EF: ImpAdCallFPR4  = DateSerial(, , )
  loc_B817F4: FLdRfVar var_11C
  loc_B817F7: CStrVarTmp
  loc_B817F8: FStStr var_9C
  loc_B817FB: FFreeAd var_C0 = "": var_C4 = ""
  loc_B81804: FFreeVar var_E8 = "": var_F8 = ""
  loc_B8180D: ILdRf var_9C
  loc_B81810: CDateStr
  loc_B81812: LitI2_Byte 1
  loc_B81814: CR8I2
  loc_B81815: SubR4
  loc_B81816: CDateR8
  loc_B81817: CStrDate
  loc_B81819: FStStr var_9C
  loc_B8181C: ILdRf var_9C
  loc_B8181F: FLdPr Me
  loc_B81822: VCallAd Control_ID_lblFechaHasta
  loc_B81825: FStAdFunc var_C0
  loc_B81828: FLdPr var_C0
  loc_B8182B: Me.Caption = from_stack_1
  loc_B81830: FFree1Ad var_C0
  loc_B81833: Branch loc_B81866
  loc_B81836: LitI2_Byte &H1F
  loc_B81838: LitI2_Byte &HC
  loc_B8183A: ImpAdLdI2 MemVar_C3D064
  loc_B8183D: FLdRfVar var_E8
  loc_B81840: ImpAdCallFPR4  = DateSerial(, , )
  loc_B81845: FLdRfVar var_E8
  loc_B81848: CStrVarVal var_A4
  loc_B8184C: FLdPr Me
  loc_B8184F: VCallAd Control_ID_lblFechaHasta
  loc_B81852: FStAdFunc var_C0
  loc_B81855: FLdPr var_C0
  loc_B81858: Me.Caption = from_stack_1
  loc_B8185D: FFree1Str var_A4
  loc_B81860: FFree1Ad var_C0
  loc_B81863: FFree1Var var_E8 = ""
  loc_B81866: FLdRfVar var_E8
  loc_B81869: FLdRfVar var_D8
  loc_B8186C: LitVarStr var_D4, "MesPaco"
  loc_B81871: PopAdLdVar
  loc_B81872: FLdRfVar var_C4
  loc_B81875: FLdRfVar var_C0
  loc_B81878: FLdPr Me
  loc_B8187B: MemLdRfVar from_stack_1.global_52
  loc_B8187E: NewIfNullPr clsparacomi
  loc_B81881: from_stack_1v = clsparacomi.RsFrmGet()
  loc_B81886: FLdPr var_C0
  loc_B81889:  = Me.Fields
  loc_B8188E: FLdPr var_C4
  loc_B81891: from_stack_2 = Me.Item(from_stack_1)
  loc_B81896: FLdPr var_D8
  loc_B81899:  = Me.Value
  loc_B8189E: LitI2_Byte 1
  loc_B818A0: FLdRfVar var_E8
  loc_B818A3: LitVarI2 var_10C, 1
  loc_B818A8: AddVar var_F8
  loc_B818AC: CI2Var
  loc_B818AD: ImpAdLdI2 MemVar_C3D064
  loc_B818B0: FLdRfVar var_11C
  loc_B818B3: ImpAdCallFPR4  = DateSerial(, , )
  loc_B818B8: FLdRfVar var_11C
  loc_B818BB: CStrVarTmp
  loc_B818BC: FStStr var_9C
  loc_B818BF: FFreeAd var_C0 = "": var_C4 = ""
  loc_B818C8: FFreeVar var_E8 = "": var_F8 = ""
  loc_B818D1: FLdRfVar var_1A4
  loc_B818D4: FLdPr Me
  loc_B818D7: VCallAd Control_ID_lblFechaDesde
  loc_B818DA: FStAdFunc var_FC
  loc_B818DD: FLdPr var_FC
  loc_B818E0:  = Me.Caption
  loc_B818E5: FLdRfVar var_21C
  loc_B818E8: FLdPr Me
  loc_B818EB: VCallAd Control_ID_lblFechaHasta
  loc_B818EE: FStAdFunc var_218
  loc_B818F1: FLdPr var_218
  loc_B818F4:  = Me.Caption
  loc_B818F9: LitStr "SELECT CodiBanc, CodiTimb, NumeMoba, FechMoba, DebeMoba, HabeMoba, DetaMoba"
  loc_B818FC: LitStr " FROM movibanco mb"
  loc_B818FF: ConcatStr
  loc_B81900: FStStrNoPop var_A4
  loc_B81903: LitStr " WHERE mb.PeriInfo = "
  loc_B81906: ConcatStr
  loc_B81907: FStStrNoPop var_A8
  loc_B8190A: ImpAdLdI2 MemVar_C3D064
  loc_B8190D: CStrUI1
  loc_B8190F: FStStrNoPop var_AC
  loc_B81912: ConcatStr
  loc_B81913: FStStrNoPop var_B0
  loc_B81916: LitStr " AND CodiTimb = "
  loc_B81919: ConcatStr
  loc_B8191A: FStStrNoPop var_B4
  loc_B8191D: FLdI2 var_86
  loc_B81920: CStrUI1
  loc_B81922: FStStrNoPop var_B8
  loc_B81925: ConcatStr
  loc_B81926: FStStrNoPop var_120
  loc_B81929: LitStr " AND Month(FechMoba) = "
  loc_B8192C: ConcatStr
  loc_B8192D: CVarStr var_F8
  loc_B81930: FLdRfVar var_E8
  loc_B81933: FLdRfVar var_D8
  loc_B81936: LitVarStr var_D4, "MesPaco"
  loc_B8193B: PopAdLdVar
  loc_B8193C: FLdRfVar var_C4
  loc_B8193F: FLdRfVar var_C0
  loc_B81942: FLdPr Me
  loc_B81945: MemLdRfVar from_stack_1.global_52
  loc_B81948: NewIfNullPr clsparacomi
  loc_B8194B: from_stack_1v = clsparacomi.RsFrmGet()
  loc_B81950: FLdPr var_C0
  loc_B81953:  = Me.Fields
  loc_B81958: FLdPr var_C4
  loc_B8195B: from_stack_2 = Me.Item(from_stack_1)
  loc_B81960: FLdPr var_D8
  loc_B81963:  = Me.Value
  loc_B81968: FLdRfVar var_E8
  loc_B8196B: ConcatVar var_11C
  loc_B8196F: LitVarStr var_10C, " AND FechMoba <= "
  loc_B81974: ConcatVar var_130
  loc_B81978: LitI4 1
  loc_B8197D: LitI4 1
  loc_B81982: LitVarStr var_150, "'yyyy-mm-dd'"
  loc_B81987: FStVarCopyObj var_160
  loc_B8198A: FLdRfVar var_160
  loc_B8198D: ImpAdLdRf MemVar_C3D04C
  loc_B81990: CVarRef
  loc_B81995: FLdRfVar var_170
  loc_B81998: ImpAdCallFPR4  = Format(, )
  loc_B8199D: FLdRfVar var_170
  loc_B819A0: ConcatVar var_180
  loc_B819A4: LitVarStr var_190, " AND FechMoba >= "
  loc_B819A9: ConcatVar var_1A0
  loc_B819AD: LitI4 1
  loc_B819B2: LitI4 1
  loc_B819B7: LitVarStr var_1C4, "'yyyy-mm-dd'"
  loc_B819BC: FStVarCopyObj var_1D4
  loc_B819BF: FLdRfVar var_1D4
  loc_B819C2: FLdZeroAd var_1A4
  loc_B819C5: CVarStr var_1B4
  loc_B819C8: FLdRfVar var_1E4
  loc_B819CB: ImpAdCallFPR4  = Format(, )
  loc_B819D0: FLdRfVar var_1E4
  loc_B819D3: ConcatVar var_1F4
  loc_B819D7: LitVarStr var_204, " AND FechMoba <= "
  loc_B819DC: ConcatVar var_214
  loc_B819E0: LitI4 1
  loc_B819E5: LitI4 1
  loc_B819EA: LitVarStr var_23C, "'yyyy-mm-dd'"
  loc_B819EF: FStVarCopyObj var_24C
  loc_B819F2: FLdRfVar var_24C
  loc_B819F5: FLdZeroAd var_21C
  loc_B819F8: CVarStr var_22C
  loc_B819FB: FLdRfVar var_25C
  loc_B819FE: ImpAdCallFPR4  = Format(, )
  loc_B81A03: FLdRfVar var_25C
  loc_B81A06: ConcatVar var_26C
  loc_B81A0A: LitVarStr var_27C, ";"
  loc_B81A0F: ConcatVar var_28C
  loc_B81A13: CStrVarVal var_290
  loc_B81A17: FLdPr Me
  loc_B81A1A: MemLdRfVar from_stack_1.global_56
  loc_B81A1D: NewIfNullPr clsparacomi
  loc_B81A20: Call clsparacomi.RedefineRS(from_stack_1v)
  loc_B81A25: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_120 = ""
  loc_B81A38: FFreeAd var_C0 = "": var_C4 = "": var_D8 = "": var_FC = ""
  loc_B81A45: FFreeVar var_F8 = "": var_E8 = "": var_11C = "": var_160 = "": var_130 = "": var_170 = "": var_180 = "": var_1B4 = "": var_1D4 = "": var_1A0 = "": var_1E4 = "": var_1F4 = "": var_22C = "": var_24C = "": var_214 = "": var_25C = "": var_26C = ""
  loc_B81A6C: FLdRfVar var_BC
  loc_B81A6F: FLdPr Me
  loc_B81A72: MemLdRfVar from_stack_1.global_56
  loc_B81A75: NewIfNullPr clsparacomi
  loc_B81A78: from_stack_1 = clsparacomi.RecordCount
  loc_B81A7D: ILdRf var_BC
  loc_B81A80: LitI4 0
  loc_B81A85: GtI4
  loc_B81A86: BranchF loc_B81D2E
  loc_B81A89: FLdRfVar var_11C
  loc_B81A8C: FLdRfVar var_D8
  loc_B81A8F: LitVarStr var_D4, "MesPaco"
  loc_B81A94: PopAdLdVar
  loc_B81A95: FLdRfVar var_C4
  loc_B81A98: FLdRfVar var_C0
  loc_B81A9B: FLdPr Me
  loc_B81A9E: MemLdRfVar from_stack_1.global_52
  loc_B81AA1: NewIfNullPr clsparacomi
  loc_B81AA4: from_stack_1v = clsparacomi.RsFrmGet()
  loc_B81AA9: FLdPr var_C0
  loc_B81AAC:  = Me.Fields
  loc_B81AB1: FLdPr var_C4
  loc_B81AB4: from_stack_2 = Me.Item(from_stack_1)
  loc_B81AB9: FLdPr var_D8
  loc_B81ABC:  = Me.Value
  loc_B81AC1: FLdRfVar var_11C
  loc_B81AC4: ImpAdLdI2 MemVar_C3D064
  loc_B81AC7: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_B81ACC: CVarStr var_E8
  loc_B81ACF: FLdRfVar var_F8
  loc_B81AD2: ImpAdCallFPR4  = Month()
  loc_B81AD7: FLdRfVar var_F8
  loc_B81ADA: GtVarBool
  loc_B81ADC: FFreeAd var_C0 = "": var_C4 = ""
  loc_B81AE5: FFreeVar var_E8 = "": var_11C = ""
  loc_B81AEE: BranchF loc_B81B20
  loc_B81AF1: LitI2_Byte &HFF
  loc_B81AF3: FLdPr Me
  loc_B81AF6: VCallAd Control_ID_cmdImputarComBcriasTesoreria
  loc_B81AF9: FStAdFunc var_C0
  loc_B81AFC: FLdPr var_C0
  loc_B81AFF: Me.Enabled = from_stack_1b
  loc_B81B04: FFree1Ad var_C0
  loc_B81B07: LitI2_Byte &HFF
  loc_B81B09: FLdPr Me
  loc_B81B0C: VCallAd Control_ID_cmdImputarComBcriasEntesRecaudadores
  loc_B81B0F: FStAdFunc var_C0
  loc_B81B12: FLdPr var_C0
  loc_B81B15: Me.Enabled = from_stack_1b
  loc_B81B1A: FFree1Ad var_C0
  loc_B81B1D: Branch loc_B81BFB
  loc_B81B20: FLdRfVar var_E8
  loc_B81B23: FLdRfVar var_D8
  loc_B81B26: LitVarStr var_D4, "MesPaco"
  loc_B81B2B: PopAdLdVar
  loc_B81B2C: FLdRfVar var_C4
  loc_B81B2F: FLdRfVar var_C0
  loc_B81B32: FLdPr Me
  loc_B81B35: MemLdRfVar from_stack_1.global_52
  loc_B81B38: NewIfNullPr clsparacomi
  loc_B81B3B: from_stack_1v = clsparacomi.RsFrmGet()
  loc_B81B40: FLdPr var_C0
  loc_B81B43:  = Me.Fields
  loc_B81B48: FLdPr var_C4
  loc_B81B4B: from_stack_2 = Me.Item(from_stack_1)
  loc_B81B50: FLdPr var_D8
  loc_B81B53:  = Me.Value
  loc_B81B58: FLdRfVar var_E8
  loc_B81B5B: LitVarI2 var_10C, 1
  loc_B81B60: HardType
  loc_B81B61: EqVar var_F8
  loc_B81B65: ImpAdLdI2 MemVar_C3D064
  loc_B81B68: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_B81B6D: CVarStr var_11C
  loc_B81B70: FLdRfVar var_130
  loc_B81B73: ImpAdCallFPR4  = Month()
  loc_B81B78: FLdRfVar var_130
  loc_B81B7B: LitVarI2 var_140, 12
  loc_B81B80: HardType
  loc_B81B81: EqVar var_160
  loc_B81B85: AndVar var_170
  loc_B81B89: CBoolVarNull
  loc_B81B8B: FFreeAd var_C0 = "": var_C4 = ""
  loc_B81B94: FFreeVar var_E8 = "": var_11C = ""
  loc_B81B9D: BranchF loc_B81BCF
  loc_B81BA0: LitI2_Byte &HFF
  loc_B81BA2: FLdPr Me
  loc_B81BA5: VCallAd Control_ID_cmdImputarComBcriasTesoreria
  loc_B81BA8: FStAdFunc var_C0
  loc_B81BAB: FLdPr var_C0
  loc_B81BAE: Me.Enabled = from_stack_1b
  loc_B81BB3: FFree1Ad var_C0
  loc_B81BB6: LitI2_Byte &HFF
  loc_B81BB8: FLdPr Me
  loc_B81BBB: VCallAd Control_ID_cmdImputarComBcriasEntesRecaudadores
  loc_B81BBE: FStAdFunc var_C0
  loc_B81BC1: FLdPr var_C0
  loc_B81BC4: Me.Enabled = from_stack_1b
  loc_B81BC9: FFree1Ad var_C0
  loc_B81BCC: Branch loc_B81BFB
  loc_B81BCF: LitI2_Byte 0
  loc_B81BD1: FLdPr Me
  loc_B81BD4: VCallAd Control_ID_cmdImputarComBcriasTesoreria
  loc_B81BD7: FStAdFunc var_C0
  loc_B81BDA: FLdPr var_C0
  loc_B81BDD: Me.Enabled = from_stack_1b
  loc_B81BE2: FFree1Ad var_C0
  loc_B81BE5: LitI2_Byte 0
  loc_B81BE7: FLdPr Me
  loc_B81BEA: VCallAd Control_ID_cmdImputarComBcriasEntesRecaudadores
  loc_B81BED: FStAdFunc var_C0
  loc_B81BF0: FLdPr var_C0
  loc_B81BF3: Me.Enabled = from_stack_1b
  loc_B81BF8: FFree1Ad var_C0
  loc_B81BFB: LitI2_Byte 0
  loc_B81BFD: CR8I2
  loc_B81BFE: FStFPR8 var_90
  loc_B81C01: FLdPr Me
  loc_B81C04: MemLdRfVar from_stack_1.global_56
  loc_B81C07: NewIfNullPr clsparacomi
  loc_B81C0A: Call clsparacomi.MoveFirst()
  loc_B81C0F: FLdRfVar var_292
  loc_B81C12: FLdPr Me
  loc_B81C15: MemLdRfVar from_stack_1.global_56
  loc_B81C18: NewIfNullPr clsparacomi
  loc_B81C1B: from_stack_1 = clsparacomi.EOF
  loc_B81C20: FLdI2 var_292
  loc_B81C23: NotI4
  loc_B81C24: BranchF loc_B81CD0
  loc_B81C27: FLdRfVar var_E8
  loc_B81C2A: FLdRfVar var_D8
  loc_B81C2D: LitVarStr var_D4, "HabeMoba"
  loc_B81C32: PopAdLdVar
  loc_B81C33: FLdRfVar var_C4
  loc_B81C36: FLdRfVar var_C0
  loc_B81C39: FLdPr Me
  loc_B81C3C: MemLdRfVar from_stack_1.global_56
  loc_B81C3F: NewIfNullPr clsparacomi
  loc_B81C42: from_stack_1v = clsparacomi.RsFrmGet()
  loc_B81C47: FLdPr var_C0
  loc_B81C4A:  = Me.Fields
  loc_B81C4F: FLdPr var_C4
  loc_B81C52: from_stack_2 = Me.Item(from_stack_1)
  loc_B81C57: FLdPr var_D8
  loc_B81C5A:  = Me.Value
  loc_B81C5F: FLdRfVar var_F8
  loc_B81C62: FLdRfVar var_298
  loc_B81C65: LitVarStr var_10C, "DebeMoba"
  loc_B81C6A: PopAdLdVar
  loc_B81C6B: FLdRfVar var_218
  loc_B81C6E: FLdRfVar var_FC
  loc_B81C71: FLdPr Me
  loc_B81C74: MemLdRfVar from_stack_1.global_56
  loc_B81C77: NewIfNullPr clsparacomi
  loc_B81C7A: from_stack_1v = clsparacomi.RsFrmGet()
  loc_B81C7F: FLdPr var_FC
  loc_B81C82:  = Me.Fields
  loc_B81C87: FLdPr var_218
  loc_B81C8A: from_stack_2 = Me.Item(from_stack_1)
  loc_B81C8F: FLdPr var_298
  loc_B81C92:  = Me.Value
  loc_B81C97: FLdFPR8 var_90
  loc_B81C9A: FLdRfVar var_E8
  loc_B81C9D: FnCDblVar
  loc_B81C9F: AddR8
  loc_B81CA0: FLdRfVar var_F8
  loc_B81CA3: FnCDblVar
  loc_B81CA5: SubR4
  loc_B81CA6: FStFPR8 var_90
  loc_B81CA9: FFreeAd var_C0 = "": var_C4 = "": var_D8 = "": var_FC = "": var_218 = ""
  loc_B81CB8: FFreeVar var_E8 = ""
  loc_B81CBF: FLdPr Me
  loc_B81CC2: MemLdRfVar from_stack_1.global_56
  loc_B81CC5: NewIfNullPr clsparacomi
  loc_B81CC8: Call clsparacomi.MoveSiguiente()
  loc_B81CCD: Branch loc_B81C0F
  loc_B81CD0: LitI4 2
  loc_B81CD5: FLdRfVar var_90
  loc_B81CD8: CVarRef
  loc_B81CDD: FLdRfVar var_E8
  loc_B81CE0: ImpAdCallFPR4  = Round(, )
  loc_B81CE5: FLdRfVar var_E8
  loc_B81CE8: CR4Var
  loc_B81CE9: FStFPR8 var_90
  loc_B81CEC: FFree1Var var_E8 = ""
  loc_B81CEF: LitI4 1
  loc_B81CF4: LitI4 1
  loc_B81CF9: LitVarStr var_10C, "currency"
  loc_B81CFE: FStVarCopyObj var_E8
  loc_B81D01: FLdRfVar var_E8
  loc_B81D04: FLdRfVar var_90
  loc_B81D07: CVarRef
  loc_B81D0C: ImpAdCallI2 Format$(, )
  loc_B81D11: FStStrNoPop var_A4
  loc_B81D14: FLdPr Me
  loc_B81D17: VCallAd Control_ID_lblComiTesoreria
  loc_B81D1A: FStAdFunc var_C0
  loc_B81D1D: FLdPr var_C0
  loc_B81D20: Me.Caption = from_stack_1
  loc_B81D25: FFree1Str var_A4
  loc_B81D28: FFree1Ad var_C0
  loc_B81D2B: FFree1Var var_E8 = ""
  loc_B81D2E: FLdRfVar var_B8
  loc_B81D31: FLdPr Me
  loc_B81D34: VCallAd Control_ID_lblFechaDesde
  loc_B81D37: FStAdFunc var_FC
  loc_B81D3A: FLdPr var_FC
  loc_B81D3D:  = Me.Caption
  loc_B81D42: FLdRfVar var_120
  loc_B81D45: FLdPr Me
  loc_B81D48: VCallAd Control_ID_lblFechaHasta
  loc_B81D4B: FStAdFunc var_218
  loc_B81D4E: FLdPr var_218
  loc_B81D51:  = Me.Caption
  loc_B81D56: LitStr "SELECT CodiBanc, CodiTimb, NumeMoba, FechMoba, DebeMoba, HabeMoba, ComiMoba, IvaMoba, DetaMoba"
  loc_B81D59: LitStr " FROM movibanco mb"
  loc_B81D5C: ConcatStr
  loc_B81D5D: FStStrNoPop var_A4
  loc_B81D60: LitStr " WHERE mb.PeriInfo = "
  loc_B81D63: ConcatStr
  loc_B81D64: FStStrNoPop var_A8
  loc_B81D67: ImpAdLdI2 MemVar_C3D064
  loc_B81D6A: CStrUI1
  loc_B81D6C: FStStrNoPop var_AC
  loc_B81D6F: ConcatStr
  loc_B81D70: FStStrNoPop var_B0
  loc_B81D73: LitStr " AND (mb.ComiMoba != 0 OR mb.IvaMoba != 0)"
  loc_B81D76: ConcatStr
  loc_B81D77: FStStrNoPop var_B4
  loc_B81D7A: LitStr " AND Month(FechMoba) = "
  loc_B81D7D: ConcatStr
  loc_B81D7E: CVarStr var_F8
  loc_B81D81: FLdRfVar var_E8
  loc_B81D84: FLdRfVar var_D8
  loc_B81D87: LitVarStr var_D4, "MesPaco"
  loc_B81D8C: PopAdLdVar
  loc_B81D8D: FLdRfVar var_C4
  loc_B81D90: FLdRfVar var_C0
  loc_B81D93: FLdPr Me
  loc_B81D96: MemLdRfVar from_stack_1.global_52
  loc_B81D99: NewIfNullPr clsparacomi
  loc_B81D9C: from_stack_1v = clsparacomi.RsFrmGet()
  loc_B81DA1: FLdPr var_C0
  loc_B81DA4:  = Me.Fields
  loc_B81DA9: FLdPr var_C4
  loc_B81DAC: from_stack_2 = Me.Item(from_stack_1)
  loc_B81DB1: FLdPr var_D8
  loc_B81DB4:  = Me.Value
  loc_B81DB9: FLdRfVar var_E8
  loc_B81DBC: ConcatVar var_11C
  loc_B81DC0: LitVarStr var_10C, " AND FechMoba <= "
  loc_B81DC5: ConcatVar var_130
  loc_B81DC9: LitI4 1
  loc_B81DCE: LitI4 1
  loc_B81DD3: LitVarStr var_150, "'yyyy-mm-dd'"
  loc_B81DD8: FStVarCopyObj var_160
  loc_B81DDB: FLdRfVar var_160
  loc_B81DDE: ImpAdLdRf MemVar_C3D04C
  loc_B81DE1: CVarRef
  loc_B81DE6: FLdRfVar var_170
  loc_B81DE9: ImpAdCallFPR4  = Format(, )
  loc_B81DEE: FLdRfVar var_170
  loc_B81DF1: ConcatVar var_180
  loc_B81DF5: LitVarStr var_190, " AND FechMoba >= "
  loc_B81DFA: ConcatVar var_1A0
  loc_B81DFE: LitI4 1
  loc_B81E03: LitI4 1
  loc_B81E08: LitVarStr var_1C4, "'yyyy-mm-dd'"
  loc_B81E0D: FStVarCopyObj var_1D4
  loc_B81E10: FLdRfVar var_1D4
  loc_B81E13: FLdZeroAd var_B8
  loc_B81E16: CVarStr var_1B4
  loc_B81E19: FLdRfVar var_1E4
  loc_B81E1C: ImpAdCallFPR4  = Format(, )
  loc_B81E21: FLdRfVar var_1E4
  loc_B81E24: ConcatVar var_1F4
  loc_B81E28: LitVarStr var_204, " AND FechMoba <= "
  loc_B81E2D: ConcatVar var_214
  loc_B81E31: LitI4 1
  loc_B81E36: LitI4 1
  loc_B81E3B: LitVarStr var_23C, "'yyyy-mm-dd'"
  loc_B81E40: FStVarCopyObj var_24C
  loc_B81E43: FLdRfVar var_24C
  loc_B81E46: FLdZeroAd var_120
  loc_B81E49: CVarStr var_22C
  loc_B81E4C: FLdRfVar var_25C
  loc_B81E4F: ImpAdCallFPR4  = Format(, )
  loc_B81E54: FLdRfVar var_25C
  loc_B81E57: ConcatVar var_26C
  loc_B81E5B: LitVarStr var_27C, ";"
  loc_B81E60: ConcatVar var_28C
  loc_B81E64: CStrVarVal var_1A4
  loc_B81E68: FLdPr Me
  loc_B81E6B: MemLdRfVar from_stack_1.global_60
  loc_B81E6E: NewIfNullPr clsparacomi
  loc_B81E71: Call clsparacomi.RedefineRS(from_stack_1v)
  loc_B81E76: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = ""
  loc_B81E85: FFreeAd var_C0 = "": var_C4 = "": var_D8 = "": var_FC = ""
  loc_B81E92: FFreeVar var_F8 = "": var_E8 = "": var_11C = "": var_160 = "": var_130 = "": var_170 = "": var_180 = "": var_1B4 = "": var_1D4 = "": var_1A0 = "": var_1E4 = "": var_1F4 = "": var_22C = "": var_24C = "": var_214 = "": var_25C = "": var_26C = ""
  loc_B81EB9: FLdRfVar var_BC
  loc_B81EBC: FLdPr Me
  loc_B81EBF: MemLdRfVar from_stack_1.global_60
  loc_B81EC2: NewIfNullPr clsparacomi
  loc_B81EC5: from_stack_1 = clsparacomi.RecordCount
  loc_B81ECA: ILdRf var_BC
  loc_B81ECD: LitI4 0
  loc_B81ED2: GtI4
  loc_B81ED3: BranchF loc_B8214C
  loc_B81ED6: FLdRfVar var_11C
  loc_B81ED9: FLdRfVar var_D8
  loc_B81EDC: LitVarStr var_D4, "MesPaco"
  loc_B81EE1: PopAdLdVar
  loc_B81EE2: FLdRfVar var_C4
  loc_B81EE5: FLdRfVar var_C0
  loc_B81EE8: FLdPr Me
  loc_B81EEB: MemLdRfVar from_stack_1.global_52
  loc_B81EEE: NewIfNullPr clsparacomi
  loc_B81EF1: from_stack_1v = clsparacomi.RsFrmGet()
  loc_B81EF6: FLdPr var_C0
  loc_B81EF9:  = Me.Fields
  loc_B81EFE: FLdPr var_C4
  loc_B81F01: from_stack_2 = Me.Item(from_stack_1)
  loc_B81F06: FLdPr var_D8
  loc_B81F09:  = Me.Value
  loc_B81F0E: FLdRfVar var_11C
  loc_B81F11: ImpAdLdI2 MemVar_C3D064
  loc_B81F14: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_B81F19: CVarStr var_E8
  loc_B81F1C: FLdRfVar var_F8
  loc_B81F1F: ImpAdCallFPR4  = Month()
  loc_B81F24: FLdRfVar var_F8
  loc_B81F27: GtVarBool
  loc_B81F29: FFreeAd var_C0 = "": var_C4 = ""
  loc_B81F32: FFreeVar var_E8 = "": var_11C = ""
  loc_B81F3B: BranchF loc_B81F6D
  loc_B81F3E: LitI2_Byte &HFF
  loc_B81F40: FLdPr Me
  loc_B81F43: VCallAd Control_ID_cmdImputarComBcriasTesoreria
  loc_B81F46: FStAdFunc var_C0
  loc_B81F49: FLdPr var_C0
  loc_B81F4C: Me.Enabled = from_stack_1b
  loc_B81F51: FFree1Ad var_C0
  loc_B81F54: LitI2_Byte &HFF
  loc_B81F56: FLdPr Me
  loc_B81F59: VCallAd Control_ID_cmdImputarComBcriasEntesRecaudadores
  loc_B81F5C: FStAdFunc var_C0
  loc_B81F5F: FLdPr var_C0
  loc_B81F62: Me.Enabled = from_stack_1b
  loc_B81F67: FFree1Ad var_C0
  loc_B81F6A: Branch loc_B82019
  loc_B81F6D: FLdRfVar var_E8
  loc_B81F70: FLdRfVar var_D8
  loc_B81F73: LitVarStr var_D4, "MesPaco"
  loc_B81F78: PopAdLdVar
  loc_B81F79: FLdRfVar var_C4
  loc_B81F7C: FLdRfVar var_C0
  loc_B81F7F: FLdPr Me
  loc_B81F82: MemLdRfVar from_stack_1.global_52
  loc_B81F85: NewIfNullPr clsparacomi
  loc_B81F88: from_stack_1v = clsparacomi.RsFrmGet()
  loc_B81F8D: FLdPr var_C0
  loc_B81F90:  = Me.Fields
  loc_B81F95: FLdPr var_C4
  loc_B81F98: from_stack_2 = Me.Item(from_stack_1)
  loc_B81F9D: FLdPr var_D8
  loc_B81FA0:  = Me.Value
  loc_B81FA5: FLdRfVar var_E8
  loc_B81FA8: LitVarI2 var_10C, 1
  loc_B81FAD: HardType
  loc_B81FAE: EqVar var_F8
  loc_B81FB2: ImpAdLdI2 MemVar_C3D064
  loc_B81FB5: ImpAdCallI2 Proc_259_0_9B97D0()
  loc_B81FBA: CVarStr var_11C
  loc_B81FBD: FLdRfVar var_130
  loc_B81FC0: ImpAdCallFPR4  = Month()
  loc_B81FC5: FLdRfVar var_130
  loc_B81FC8: LitVarI2 var_140, 12
  loc_B81FCD: HardType
  loc_B81FCE: EqVar var_160
  loc_B81FD2: AndVar var_170
  loc_B81FD6: CBoolVarNull
  loc_B81FD8: FFreeAd var_C0 = "": var_C4 = ""
  loc_B81FE1: FFreeVar var_E8 = "": var_11C = ""
  loc_B81FEA: BranchF loc_B82019
  loc_B81FED: LitI2_Byte &HFF
  loc_B81FEF: FLdPr Me
  loc_B81FF2: VCallAd Control_ID_cmdImputarComBcriasTesoreria
  loc_B81FF5: FStAdFunc var_C0
  loc_B81FF8: FLdPr var_C0
  loc_B81FFB: Me.Enabled = from_stack_1b
  loc_B82000: FFree1Ad var_C0
  loc_B82003: LitI2_Byte &HFF
  loc_B82005: FLdPr Me
  loc_B82008: VCallAd Control_ID_cmdImputarComBcriasEntesRecaudadores
  loc_B8200B: FStAdFunc var_C0
  loc_B8200E: FLdPr var_C0
  loc_B82011: Me.Enabled = from_stack_1b
  loc_B82016: FFree1Ad var_C0
  loc_B82019: LitI2_Byte 0
  loc_B8201B: CR8I2
  loc_B8201C: FStFPR8 var_98
  loc_B8201F: FLdPr Me
  loc_B82022: MemLdRfVar from_stack_1.global_60
  loc_B82025: NewIfNullPr clsparacomi
  loc_B82028: Call clsparacomi.MoveFirst()
  loc_B8202D: FLdRfVar var_292
  loc_B82030: FLdPr Me
  loc_B82033: MemLdRfVar from_stack_1.global_60
  loc_B82036: NewIfNullPr clsparacomi
  loc_B82039: from_stack_1 = clsparacomi.EOF
  loc_B8203E: FLdI2 var_292
  loc_B82041: NotI4
  loc_B82042: BranchF loc_B820EE
  loc_B82045: FLdRfVar var_E8
  loc_B82048: FLdRfVar var_D8
  loc_B8204B: LitVarStr var_D4, "ComiMoba"
  loc_B82050: PopAdLdVar
  loc_B82051: FLdRfVar var_C4
  loc_B82054: FLdRfVar var_C0
  loc_B82057: FLdPr Me
  loc_B8205A: MemLdRfVar from_stack_1.global_60
  loc_B8205D: NewIfNullPr clsparacomi
  loc_B82060: from_stack_1v = clsparacomi.RsFrmGet()
  loc_B82065: FLdPr var_C0
  loc_B82068:  = Me.Fields
  loc_B8206D: FLdPr var_C4
  loc_B82070: from_stack_2 = Me.Item(from_stack_1)
  loc_B82075: FLdPr var_D8
  loc_B82078:  = Me.Value
  loc_B8207D: FLdRfVar var_F8
  loc_B82080: FLdRfVar var_298
  loc_B82083: LitVarStr var_10C, "IvaMoba"
  loc_B82088: PopAdLdVar
  loc_B82089: FLdRfVar var_218
  loc_B8208C: FLdRfVar var_FC
  loc_B8208F: FLdPr Me
  loc_B82092: MemLdRfVar from_stack_1.global_60
  loc_B82095: NewIfNullPr clsparacomi
  loc_B82098: from_stack_1v = clsparacomi.RsFrmGet()
  loc_B8209D: FLdPr var_FC
  loc_B820A0:  = Me.Fields
  loc_B820A5: FLdPr var_218
  loc_B820A8: from_stack_2 = Me.Item(from_stack_1)
  loc_B820AD: FLdPr var_298
  loc_B820B0:  = Me.Value
  loc_B820B5: FLdFPR8 var_98
  loc_B820B8: FLdRfVar var_E8
  loc_B820BB: FnCDblVar
  loc_B820BD: AddR8
  loc_B820BE: FLdRfVar var_F8
  loc_B820C1: FnCDblVar
  loc_B820C3: AddR8
  loc_B820C4: FStFPR8 var_98
  loc_B820C7: FFreeAd var_C0 = "": var_C4 = "": var_D8 = "": var_FC = "": var_218 = ""
  loc_B820D6: FFreeVar var_E8 = ""
  loc_B820DD: FLdPr Me
  loc_B820E0: MemLdRfVar from_stack_1.global_60
  loc_B820E3: NewIfNullPr clsparacomi
  loc_B820E6: Call clsparacomi.MoveSiguiente()
  loc_B820EB: Branch loc_B8202D
  loc_B820EE: LitI4 2
  loc_B820F3: FLdRfVar var_98
  loc_B820F6: CVarRef
  loc_B820FB: FLdRfVar var_E8
  loc_B820FE: ImpAdCallFPR4  = Round(, )
  loc_B82103: FLdRfVar var_E8
  loc_B82106: CR4Var
  loc_B82107: FStFPR8 var_98
  loc_B8210A: FFree1Var var_E8 = ""
  loc_B8210D: LitI4 1
  loc_B82112: LitI4 1
  loc_B82117: LitVarStr var_10C, "currency"
  loc_B8211C: FStVarCopyObj var_E8
  loc_B8211F: FLdRfVar var_E8
  loc_B82122: FLdRfVar var_98
  loc_B82125: CVarRef
  loc_B8212A: ImpAdCallI2 Format$(, )
  loc_B8212F: FStStrNoPop var_A4
  loc_B82132: FLdPr Me
  loc_B82135: VCallAd Control_ID_lblComiEntes
  loc_B82138: FStAdFunc var_C0
  loc_B8213B: FLdPr var_C0
  loc_B8213E: Me.Caption = from_stack_1
  loc_B82143: FFree1Str var_A4
  loc_B82146: FFree1Ad var_C0
  loc_B82149: FFree1Var var_E8 = ""
  loc_B8214C: ExitProcHresult
End Sub

Private Sub cboMes_Validate(Cancel As Boolean) '9A9814
  'Data Table: 49CE84
  loc_9A9788: FLdRfVar var_8A
  loc_9A978B: FLdPr Me
  loc_9A978E: VCallAd Control_ID_cboMes
  loc_9A9791: FStAdFunc var_88
  loc_9A9794: FLdPr var_88
  loc_9A9797:  = Me.ListIndex
  loc_9A979C: FLdRfVar var_94
  loc_9A979F: FLdI2 var_8A
  loc_9A97A2: FLdPr Me
  loc_9A97A5: VCallAd Control_ID_cboMes
  loc_9A97A8: FStAdFunc var_90
  loc_9A97AB: FLdPr var_90
  loc_9A97AE:  = Me.ItemData
  loc_9A97B3: ILdRf var_94
  loc_9A97B6: CUI1I4
  loc_9A97B8: ImpAdLdI2 MemVar_C3D064
  loc_9A97BB: ImpAdCallI2  = Proc_266_31_9BB10C()
  loc_9A97C0: FStStrNoPop var_98
  loc_9A97C3: FLdPr Me
  loc_9A97C6: MemStStrCopy
  loc_9A97CA: FFree1Str var_98
  loc_9A97CD: FFreeAd var_88 = ""
  loc_9A97D4: FLdPr Me
  loc_9A97D7: VCallAd Control_ID_cboMes
  loc_9A97DA: FStAdFunc var_A0
  loc_9A97DD: LitNothing
  loc_9A97DF: CastAd
  loc_9A97E2: FStAdFunc var_9C
  loc_9A97E5: FLdRfVar var_9C
  loc_9A97E8: FLdZeroAd var_A0
  loc_9A97EB: FStAdFuncNoPop
  loc_9A97EE: CastAd
  loc_9A97F1: FStAdFunc var_90
  loc_9A97F4: FLdRfVar var_90
  loc_9A97F7: FLdPr Me
  loc_9A97FA: MemLdRfVar from_stack_1.global_72
  loc_9A97FD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9A9802: IStI2 Cancel
  loc_9A9805: FFreeAd var_88 = "": var_90 = "": var_9C = ""
  loc_9A9810: ExitProcHresult
  loc_9A9811: AndI4
  loc_9A9812: LeCy
End Sub

Private Sub cmdImputarComBcriasTesoreria_Click() 'A5A5DC
  'Data Table: 49CE84
  loc_A5A328: FLdRfVar var_88
  loc_A5A32B: ImpAdLdI2 MemVar_C3D064
  loc_A5A32E: FLdPr Me
  loc_A5A331: MemLdRfVar from_stack_1.global_64
  loc_A5A334: NewIfNullPr clsimputacion
  loc_A5A337: from_stack_2v = clsimputacion.BuscaAjusImpu(from_stack_1v)
  loc_A5A33C: ILdRf var_88
  loc_A5A33F: FLdPr Me
  loc_A5A342: MemStI4 global_92
  loc_A5A345: LitStr "SELECT Min(IdImpu) IdImpu, Sum(PrevImpu-DefiImpu) SaldoPrev"
  loc_A5A348: LitStr " FROM imputacion"
  loc_A5A34B: ConcatStr
  loc_A5A34C: FStStrNoPop var_8C
  loc_A5A34F: LitStr " WHERE PeriInfo = "
  loc_A5A352: ConcatStr
  loc_A5A353: FStStrNoPop var_90
  loc_A5A356: ImpAdLdI2 MemVar_C3D064
  loc_A5A359: CStrUI1
  loc_A5A35B: FStStrNoPop var_94
  loc_A5A35E: ConcatStr
  loc_A5A35F: FStStrNoPop var_98
  loc_A5A362: LitStr " AND CodiPart = '"
  loc_A5A365: ConcatStr
  loc_A5A366: CVarStr var_D4
  loc_A5A369: FLdRfVar var_C4
  loc_A5A36C: FLdRfVar var_B4
  loc_A5A36F: LitVarStr var_B0, "CodiPart"
  loc_A5A374: PopAdLdVar
  loc_A5A375: FLdRfVar var_A0
  loc_A5A378: FLdRfVar var_9C
  loc_A5A37B: FLdPr Me
  loc_A5A37E: MemLdRfVar from_stack_1.global_52
  loc_A5A381: NewIfNullPr clsparacomi
  loc_A5A384: from_stack_1v = clsparacomi.RsFrmGet()
  loc_A5A389: FLdPr var_9C
  loc_A5A38C:  = Me.Fields
  loc_A5A391: FLdPr var_A0
  loc_A5A394: from_stack_2 = Me.Item(from_stack_1)
  loc_A5A399: FLdPr var_B4
  loc_A5A39C:  = Me.Value
  loc_A5A3A1: FLdRfVar var_C4
  loc_A5A3A4: ConcatVar var_E4
  loc_A5A3A8: LitVarStr var_F4, "' AND CodiOrga = '"
  loc_A5A3AD: ConcatVar var_104
  loc_A5A3B1: FLdRfVar var_130
  loc_A5A3B4: FLdRfVar var_120
  loc_A5A3B7: LitVarStr var_11C, "CodiOrga"
  loc_A5A3BC: PopAdLdVar
  loc_A5A3BD: FLdRfVar var_10C
  loc_A5A3C0: FLdRfVar var_108
  loc_A5A3C3: FLdPr Me
  loc_A5A3C6: MemLdRfVar from_stack_1.global_52
  loc_A5A3C9: NewIfNullPr clsparacomi
  loc_A5A3CC: from_stack_1v = clsparacomi.RsFrmGet()
  loc_A5A3D1: FLdPr var_108
  loc_A5A3D4:  = Me.Fields
  loc_A5A3D9: FLdPr var_10C
  loc_A5A3DC: from_stack_2 = Me.Item(from_stack_1)
  loc_A5A3E1: FLdPr var_120
  loc_A5A3E4:  = Me.Value
  loc_A5A3E9: FLdRfVar var_130
  loc_A5A3EC: ConcatVar var_140
  loc_A5A3F0: LitVarStr var_150, "' AND ExorImpu = '"
  loc_A5A3F5: ConcatVar var_160
  loc_A5A3F9: FLdRfVar var_18C
  loc_A5A3FC: FLdRfVar var_17C
  loc_A5A3FF: LitVarStr var_178, "ExorImpu"
  loc_A5A404: PopAdLdVar
  loc_A5A405: FLdRfVar var_168
  loc_A5A408: FLdRfVar var_164
  loc_A5A40B: FLdPr Me
  loc_A5A40E: MemLdRfVar from_stack_1.global_52
  loc_A5A411: NewIfNullPr clsparacomi
  loc_A5A414: from_stack_1v = clsparacomi.RsFrmGet()
  loc_A5A419: FLdPr var_164
  loc_A5A41C:  = Me.Fields
  loc_A5A421: FLdPr var_168
  loc_A5A424: from_stack_2 = Me.Item(from_stack_1)
  loc_A5A429: FLdPr var_17C
  loc_A5A42C:  = Me.Value
  loc_A5A431: FLdRfVar var_18C
  loc_A5A434: ConcatVar var_19C
  loc_A5A438: LitVarStr var_1AC, "' AND (PrevImpu != 0 OR DefiImpu != 0);"
  loc_A5A43D: ConcatVar var_1BC
  loc_A5A441: CStrVarVal var_1C0
  loc_A5A445: FLdPr Me
  loc_A5A448: MemLdRfVar from_stack_1.global_64
  loc_A5A44B: NewIfNullPr clsimputacion
  loc_A5A44E: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_A5A453: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A5A460: FFreeAd var_9C = "": var_A0 = "": var_B4 = "": var_108 = "": var_10C = "": var_120 = "": var_164 = "": var_168 = ""
  loc_A5A475: FFreeVar var_D4 = "": var_C4 = "": var_E4 = "": var_104 = "": var_130 = "": var_140 = "": var_160 = "": var_18C = "": var_19C = ""
  loc_A5A48C: FLdRfVar var_C4
  loc_A5A48F: FLdRfVar var_108
  loc_A5A492: LitVarStr var_B0, "SaldoPrev"
  loc_A5A497: PopAdLdVar
  loc_A5A498: FLdRfVar var_B4
  loc_A5A49B: FLdRfVar var_A0
  loc_A5A49E: FLdPr Me
  loc_A5A4A1: MemLdRfVar from_stack_1.global_64
  loc_A5A4A4: NewIfNullPr clsimputacion
  loc_A5A4A7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A5A4AC: FLdPr var_A0
  loc_A5A4AF:  = Me.Fields
  loc_A5A4B4: FLdPr var_B4
  loc_A5A4B7: from_stack_2 = Me.Item(from_stack_1)
  loc_A5A4BC: FLdPr var_108
  loc_A5A4BF:  = Me.Value
  loc_A5A4C4: FLdRfVar var_8C
  loc_A5A4C7: FLdPr Me
  loc_A5A4CA: VCallAd Control_ID_lblComiTesoreria
  loc_A5A4CD: FStAdFunc var_9C
  loc_A5A4D0: FLdPr var_9C
  loc_A5A4D3:  = Me.Caption
  loc_A5A4D8: ILdRf var_8C
  loc_A5A4DB: CR8Str
  loc_A5A4DD: FLdRfVar var_C4
  loc_A5A4E0: FnCDblVar
  loc_A5A4E2: GtR4
  loc_A5A4E3: FFree1Str var_8C
  loc_A5A4E6: FFreeAd var_9C = "": var_A0 = "": var_B4 = ""
  loc_A5A4F1: FFree1Var var_C4 = ""
  loc_A5A4F4: BranchF loc_A5A507
  loc_A5A4F7: LitI4 0
  loc_A5A4FC: LitStr "El Total de comisiones Tesorería es mayor al Saldo de la preventiva. Verifique..."
  loc_A5A4FF: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A5A504: Branch loc_A5A5DA
  loc_A5A507: LitI4 0
  loc_A5A50C: LitStr "Comienzan las imputaciones de las comisiones..."
  loc_A5A50F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A5A514: FLdRfVar var_C4
  loc_A5A517: FLdRfVar var_B4
  loc_A5A51A: LitVarStr var_B0, "IdImpu"
  loc_A5A51F: PopAdLdVar
  loc_A5A520: FLdRfVar var_A0
  loc_A5A523: FLdRfVar var_9C
  loc_A5A526: FLdPr Me
  loc_A5A529: MemLdRfVar from_stack_1.global_64
  loc_A5A52C: NewIfNullPr clsimputacion
  loc_A5A52F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A5A534: FLdPr var_9C
  loc_A5A537:  = Me.Fields
  loc_A5A53C: FLdPr var_A0
  loc_A5A53F: from_stack_2 = Me.Item(from_stack_1)
  loc_A5A544: FLdPr var_B4
  loc_A5A547:  = Me.Value
  loc_A5A54C: FLdRfVar var_8C
  loc_A5A54F: FLdPr Me
  loc_A5A552: VCallAd Control_ID_lblFechaHasta
  loc_A5A555: FStAdFunc var_108
  loc_A5A558: FLdPr var_108
  loc_A5A55B:  = Me.Caption
  loc_A5A560: FLdRfVar var_90
  loc_A5A563: FLdPr Me
  loc_A5A566: VCallAd Control_ID_lblComiTesoreria
  loc_A5A569: FStAdFunc var_10C
  loc_A5A56C: FLdPr var_10C
  loc_A5A56F:  = Me.Caption
  loc_A5A574: FLdRfVar var_88
  loc_A5A577: LitI2_Byte 0
  loc_A5A579: FLdPr Me
  loc_A5A57C: MemLdStr global_96
  loc_A5A57F: FLdPr Me
  loc_A5A582: MemLdStr global_92
  loc_A5A585: ILdRf var_90
  loc_A5A588: ILdRf var_8C
  loc_A5A58B: FLdRfVar var_C4
  loc_A5A58E: CI4Var
  loc_A5A590: FLdPr Me
  loc_A5A593: MemLdRfVar from_stack_1.global_64
  loc_A5A596: NewIfNullPr clsimputacion
  loc_A5A599: from_stack_7v = clsimputacion.ImputarComisionesBcriasTesoreria(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_A5A59E: ILdRf var_88
  loc_A5A5A1: FLdPr Me
  loc_A5A5A4: MemStI4 global_88
  loc_A5A5A7: FFreeStr var_8C = ""
  loc_A5A5AE: FFreeAd var_9C = "": var_A0 = "": var_108 = "": var_10C = ""
  loc_A5A5BB: FFree1Var var_C4 = ""
  loc_A5A5BE: FLdPr Me
  loc_A5A5C1: MemLdStr global_88
  loc_A5A5C4: LitI4 0
  loc_A5A5C9: GtI4
  loc_A5A5CA: BranchF loc_A5A5DA
  loc_A5A5CD: LitI4 0
  loc_A5A5D2: LitStr "Terminaron las imputaciones Tesorería..."
  loc_A5A5D5: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A5A5DA: ExitProcHresult
End Sub

Private Sub cmdImputarComBcriasEntesRecaudadores_Click() 'A6108C
  'Data Table: 49CE84
  loc_A60DB0: FLdRfVar var_88
  loc_A60DB3: ImpAdLdI2 MemVar_C3D064
  loc_A60DB6: FLdPr Me
  loc_A60DB9: MemLdRfVar from_stack_1.global_64
  loc_A60DBC: NewIfNullPr clsimputacion
  loc_A60DBF: from_stack_2v = clsimputacion.BuscaAjusImpu(from_stack_1v)
  loc_A60DC4: ILdRf var_88
  loc_A60DC7: FLdPr Me
  loc_A60DCA: MemStI4 global_92
  loc_A60DCD: LitStr "SELECT Min(IdImpu) IdImpu, Sum(PrevImpu-DefiImpu) SaldoPrev"
  loc_A60DD0: LitStr " FROM imputacion"
  loc_A60DD3: ConcatStr
  loc_A60DD4: FStStrNoPop var_8C
  loc_A60DD7: LitStr " WHERE PeriInfo = "
  loc_A60DDA: ConcatStr
  loc_A60DDB: FStStrNoPop var_90
  loc_A60DDE: ImpAdLdI2 MemVar_C3D064
  loc_A60DE1: CStrUI1
  loc_A60DE3: FStStrNoPop var_94
  loc_A60DE6: ConcatStr
  loc_A60DE7: FStStrNoPop var_98
  loc_A60DEA: LitStr " AND CodiPart = '"
  loc_A60DED: ConcatStr
  loc_A60DEE: CVarStr var_D4
  loc_A60DF1: FLdRfVar var_C4
  loc_A60DF4: FLdRfVar var_B4
  loc_A60DF7: LitVarStr var_B0, "CodiPart"
  loc_A60DFC: PopAdLdVar
  loc_A60DFD: FLdRfVar var_A0
  loc_A60E00: FLdRfVar var_9C
  loc_A60E03: FLdPr Me
  loc_A60E06: MemLdRfVar from_stack_1.global_52
  loc_A60E09: NewIfNullPr clsparacomi
  loc_A60E0C: from_stack_1v = clsparacomi.RsFrmGet()
  loc_A60E11: FLdPr var_9C
  loc_A60E14:  = Me.Fields
  loc_A60E19: FLdPr var_A0
  loc_A60E1C: from_stack_2 = Me.Item(from_stack_1)
  loc_A60E21: FLdPr var_B4
  loc_A60E24:  = Me.Value
  loc_A60E29: FLdRfVar var_C4
  loc_A60E2C: ConcatVar var_E4
  loc_A60E30: LitVarStr var_F4, "' AND CodiOrga = '"
  loc_A60E35: ConcatVar var_104
  loc_A60E39: FLdRfVar var_130
  loc_A60E3C: FLdRfVar var_120
  loc_A60E3F: LitVarStr var_11C, "CodiOrga"
  loc_A60E44: PopAdLdVar
  loc_A60E45: FLdRfVar var_10C
  loc_A60E48: FLdRfVar var_108
  loc_A60E4B: FLdPr Me
  loc_A60E4E: MemLdRfVar from_stack_1.global_52
  loc_A60E51: NewIfNullPr clsparacomi
  loc_A60E54: from_stack_1v = clsparacomi.RsFrmGet()
  loc_A60E59: FLdPr var_108
  loc_A60E5C:  = Me.Fields
  loc_A60E61: FLdPr var_10C
  loc_A60E64: from_stack_2 = Me.Item(from_stack_1)
  loc_A60E69: FLdPr var_120
  loc_A60E6C:  = Me.Value
  loc_A60E71: FLdRfVar var_130
  loc_A60E74: ConcatVar var_140
  loc_A60E78: LitVarStr var_150, "' AND ExorImpu = '"
  loc_A60E7D: ConcatVar var_160
  loc_A60E81: FLdRfVar var_18C
  loc_A60E84: FLdRfVar var_17C
  loc_A60E87: LitVarStr var_178, "ExorImpu"
  loc_A60E8C: PopAdLdVar
  loc_A60E8D: FLdRfVar var_168
  loc_A60E90: FLdRfVar var_164
  loc_A60E93: FLdPr Me
  loc_A60E96: MemLdRfVar from_stack_1.global_52
  loc_A60E99: NewIfNullPr clsparacomi
  loc_A60E9C: from_stack_1v = clsparacomi.RsFrmGet()
  loc_A60EA1: FLdPr var_164
  loc_A60EA4:  = Me.Fields
  loc_A60EA9: FLdPr var_168
  loc_A60EAC: from_stack_2 = Me.Item(from_stack_1)
  loc_A60EB1: FLdPr var_17C
  loc_A60EB4:  = Me.Value
  loc_A60EB9: FLdRfVar var_18C
  loc_A60EBC: ConcatVar var_19C
  loc_A60EC0: LitVarStr var_1AC, "' AND (PrevImpu != 0 OR DefiImpu != 0);"
  loc_A60EC5: ConcatVar var_1BC
  loc_A60EC9: CStrVarVal var_1C0
  loc_A60ECD: FLdPr Me
  loc_A60ED0: MemLdRfVar from_stack_1.global_64
  loc_A60ED3: NewIfNullPr clsimputacion
  loc_A60ED6: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_A60EDB: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_A60EE8: FFreeAd var_9C = "": var_A0 = "": var_B4 = "": var_108 = "": var_10C = "": var_120 = "": var_164 = "": var_168 = ""
  loc_A60EFD: FFreeVar var_D4 = "": var_C4 = "": var_E4 = "": var_104 = "": var_130 = "": var_140 = "": var_160 = "": var_18C = "": var_19C = ""
  loc_A60F14: FLdRfVar var_C4
  loc_A60F17: FLdRfVar var_108
  loc_A60F1A: LitVarStr var_B0, "SaldoPrev"
  loc_A60F1F: PopAdLdVar
  loc_A60F20: FLdRfVar var_B4
  loc_A60F23: FLdRfVar var_A0
  loc_A60F26: FLdPr Me
  loc_A60F29: MemLdRfVar from_stack_1.global_64
  loc_A60F2C: NewIfNullPr clsimputacion
  loc_A60F2F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A60F34: FLdPr var_A0
  loc_A60F37:  = Me.Fields
  loc_A60F3C: FLdPr var_B4
  loc_A60F3F: from_stack_2 = Me.Item(from_stack_1)
  loc_A60F44: FLdPr var_108
  loc_A60F47:  = Me.Value
  loc_A60F4C: FLdRfVar var_8C
  loc_A60F4F: FLdPr Me
  loc_A60F52: VCallAd Control_ID_lblComiEntes
  loc_A60F55: FStAdFunc var_9C
  loc_A60F58: FLdPr var_9C
  loc_A60F5B:  = Me.Caption
  loc_A60F60: ILdRf var_8C
  loc_A60F63: CR8Str
  loc_A60F65: FLdRfVar var_C4
  loc_A60F68: FnCDblVar
  loc_A60F6A: GtR4
  loc_A60F6B: FFree1Str var_8C
  loc_A60F6E: FFreeAd var_9C = "": var_A0 = "": var_B4 = ""
  loc_A60F79: FFree1Var var_C4 = ""
  loc_A60F7C: BranchF loc_A60F8F
  loc_A60F7F: LitI4 0
  loc_A60F84: LitStr "El Total de comisiones Entes Recaudadores es mayor al Saldo de la preventiva. Verifique..."
  loc_A60F87: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A60F8C: Branch loc_A61089
  loc_A60F8F: LitI4 0
  loc_A60F94: LitStr "Comienzan las imputaciones de las comisiones Entes Recaudadores..."
  loc_A60F97: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A60F9C: FLdRfVar var_C4
  loc_A60F9F: FLdRfVar var_B4
  loc_A60FA2: LitVarStr var_B0, "IdImpu"
  loc_A60FA7: PopAdLdVar
  loc_A60FA8: FLdRfVar var_A0
  loc_A60FAB: FLdRfVar var_9C
  loc_A60FAE: FLdPr Me
  loc_A60FB1: MemLdRfVar from_stack_1.global_64
  loc_A60FB4: NewIfNullPr clsimputacion
  loc_A60FB7: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A60FBC: FLdPr var_9C
  loc_A60FBF:  = Me.Fields
  loc_A60FC4: FLdPr var_A0
  loc_A60FC7: from_stack_2 = Me.Item(from_stack_1)
  loc_A60FCC: FLdPr var_B4
  loc_A60FCF:  = Me.Value
  loc_A60FD4: FLdRfVar var_8C
  loc_A60FD7: FLdPr Me
  loc_A60FDA: VCallAd Control_ID_lblFechaDesde
  loc_A60FDD: FStAdFunc var_108
  loc_A60FE0: FLdPr var_108
  loc_A60FE3:  = Me.Caption
  loc_A60FE8: FLdRfVar var_90
  loc_A60FEB: FLdPr Me
  loc_A60FEE: VCallAd Control_ID_lblFechaHasta
  loc_A60FF1: FStAdFunc var_10C
  loc_A60FF4: FLdPr var_10C
  loc_A60FF7:  = Me.Caption
  loc_A60FFC: FLdRfVar var_94
  loc_A60FFF: FLdPr Me
  loc_A61002: VCallAd Control_ID_lblComiEntes
  loc_A61005: FStAdFunc var_120
  loc_A61008: FLdPr var_120
  loc_A6100B:  = Me.Caption
  loc_A61010: FLdRfVar var_88
  loc_A61013: LitI2_Byte 0
  loc_A61015: FLdPr Me
  loc_A61018: MemLdI2 global_102
  loc_A6101B: FLdPr Me
  loc_A6101E: MemLdI2 global_100
  loc_A61021: FLdPr Me
  loc_A61024: MemLdStr global_96
  loc_A61027: FLdPr Me
  loc_A6102A: MemLdStr global_92
  loc_A6102D: ILdRf var_94
  loc_A61030: ILdRf var_90
  loc_A61033: ILdRf var_8C
  loc_A61036: FLdRfVar var_C4
  loc_A61039: CI4Var
  loc_A6103B: FLdPr Me
  loc_A6103E: MemLdRfVar from_stack_1.global_64
  loc_A61041: NewIfNullPr clsimputacion
  loc_A61044: from_stack_10v = clsimputacion.ImputarComisionesEntesRecaudadores(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v)
  loc_A61049: ILdRf var_88
  loc_A6104C: FLdPr Me
  loc_A6104F: MemStI4 global_88
  loc_A61052: FFreeStr var_8C = "": var_90 = ""
  loc_A6105B: FFreeAd var_9C = "": var_A0 = "": var_108 = "": var_10C = "": var_120 = ""
  loc_A6106A: FFree1Var var_C4 = ""
  loc_A6106D: FLdPr Me
  loc_A61070: MemLdStr global_88
  loc_A61073: LitI4 0
  loc_A61078: GtI4
  loc_A61079: BranchF loc_A61089
  loc_A6107C: LitI4 0
  loc_A61081: LitStr "Terminaron las imputaciones Entes Recaudadores..."
  loc_A61084: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A61089: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'A9A2FC
  'Data Table: 49CE84
  loc_A99E70: ILdRf Button
  loc_A99E73: FStAd var_88 
  loc_A99E77: FLdRfVar var_8C
  loc_A99E7A: FLdPr var_88
  loc_A99E7D:  = Me.Key
  loc_A99E82: FLdZeroAd var_8C
  loc_A99E85: FStStr var_90
  loc_A99E88: ILdRf var_90
  loc_A99E8B: LitStr "btnCrear"
  loc_A99E8E: EqStr
  loc_A99E90: BranchF loc_A99F34
  loc_A99E93: LitI2_Byte 1
  loc_A99E95: FLdPr Me
  loc_A99E98: MemStUI1
  loc_A99E9C: ILdRf Me
  loc_A99E9F: CastAd
  loc_A99EA2: FStAdFunc var_94
  loc_A99EA5: FLdRfVar var_94
  loc_A99EA8: ImpAdCallFPR4  = Proc_261_2_A55348()
  loc_A99EAD: FFree1Ad var_94
  loc_A99EB0: LitI4 0
  loc_A99EB5: LitI4 0
  loc_A99EBA: FLdRfVar var_98
  loc_A99EBD: Redim
  loc_A99EC7: FLdPr Me
  loc_A99ECA: VCallAd Control_ID_dgdABMS
  loc_A99ECD: CVarAd
  loc_A99ED1: ParmAry1St
  loc_A99ED7: FLdRfVar var_98
  loc_A99EDA: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A99EDF: FLdRfVar var_98
  loc_A99EE2: Erase
  loc_A99EE3: ILdRf Me
  loc_A99EE6: CastAd
  loc_A99EE9: FStAdFunc var_94
  loc_A99EEC: FLdRfVar var_94
  loc_A99EEF: ImpAdCallFPR4  = Proc_261_10_99CABC()
  loc_A99EF4: FFree1Ad var_94
  loc_A99EF7: ILdRf Me
  loc_A99EFA: CastAd
  loc_A99EFD: FStAdFunc var_94
  loc_A99F00: FLdRfVar var_94
  loc_A99F03: ImpAdCallFPR4  = Proc_261_15_A16E38()
  loc_A99F08: FFree1Ad var_94
  loc_A99F0B: ILdRf Me
  loc_A99F0E: CastAd
  loc_A99F11: FStAdFunc var_94
  loc_A99F14: FLdRfVar var_94
  loc_A99F17: ImpAdCallFPR4  = Proc_261_12_A04B24()
  loc_A99F1C: FFree1Ad var_94
  loc_A99F1F: FLdPr Me
  loc_A99F22: VCallAd Control_ID_cboMes
  loc_A99F25: CVarAd
  loc_A99F29: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_A99F2E: FFree1Var var_A8 = ""
  loc_A99F31: Branch loc_A9A2FB
  loc_A99F34: ILdRf var_90
  loc_A99F37: LitStr "btnModificar"
  loc_A99F3A: EqStr
  loc_A99F3C: BranchF loc_A99FCD
  loc_A99F3F: LitI2_Byte 0
  loc_A99F41: ImpAdLdI2 MemVar_C3D064
  loc_A99F44: FLdPr Me
  loc_A99F47: MemLdRfVar from_stack_1.global_52
  loc_A99F4A: NewIfNullPr clsparacomi
  loc_A99F4D: Call clsparacomi.Encontrar(from_stack_1v, from_stack_2v)
  loc_A99F52: LitI2_Byte 2
  loc_A99F54: FLdPr Me
  loc_A99F57: MemStUI1
  loc_A99F5B: ILdRf Me
  loc_A99F5E: CastAd
  loc_A99F61: FStAdFunc var_94
  loc_A99F64: FLdRfVar var_94
  loc_A99F67: ImpAdCallFPR4  = Proc_261_2_A55348()
  loc_A99F6C: FFree1Ad var_94
  loc_A99F6F: LitI4 0
  loc_A99F74: LitI4 0
  loc_A99F79: FLdRfVar var_98
  loc_A99F7C: Redim
  loc_A99F86: FLdPr Me
  loc_A99F89: VCallAd Control_ID_dgdABMS
  loc_A99F8C: CVarAd
  loc_A99F90: ParmAry1St
  loc_A99F96: FLdRfVar var_98
  loc_A99F99: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A99F9E: FLdRfVar var_98
  loc_A99FA1: Erase
  loc_A99FA2: ILdRf Me
  loc_A99FA5: CastAd
  loc_A99FA8: FStAdFunc var_94
  loc_A99FAB: FLdRfVar var_94
  loc_A99FAE: ImpAdCallFPR4  = Proc_261_10_99CABC()
  loc_A99FB3: FFree1Ad var_94
  loc_A99FB6: ILdRf Me
  loc_A99FB9: CastAd
  loc_A99FBC: FStAdFunc var_94
  loc_A99FBF: FLdRfVar var_94
  loc_A99FC2: ImpAdCallFPR4  = Proc_261_12_A04B24()
  loc_A99FC7: FFree1Ad var_94
  loc_A99FCA: Branch loc_A9A2FB
  loc_A99FCD: ILdRf var_90
  loc_A99FD0: LitStr "btnEliminar"
  loc_A99FD3: EqStr
  loc_A99FD5: BranchF loc_A99FDB
  loc_A99FD8: Branch loc_A9A2FB
  loc_A99FDB: ILdRf var_90
  loc_A99FDE: LitStr "btnGuardar"
  loc_A99FE1: EqStr
  loc_A99FE3: BranchF loc_A9A1F7
  loc_A99FE6: LitStr vbNullString
  loc_A99FE9: FLdPr Me
  loc_A99FEC: MemStStrCopy
  loc_A99FF0: LitI2_Byte 0
  loc_A99FF2: PopTmpLdAd2 var_AA
  loc_A99FF5: Call cboMes_Validate(from_stack_1v)
  loc_A99FFA: FLdPr Me
  loc_A99FFD: MemLdStr global_72
  loc_A9A000: LitStr vbNullString
  loc_A9A003: NeStr
  loc_A9A005: BranchF loc_A9A009
  loc_A9A008: ExitProcHresult
  loc_A9A009: LitI2_Byte 0
  loc_A9A00B: PopTmpLdAd2 var_AA
  loc_A9A00E: Call ExorImpuMsk_UnknownEvent_8()
  loc_A9A013: FLdPr Me
  loc_A9A016: MemLdStr global_72
  loc_A9A019: LitStr vbNullString
  loc_A9A01C: NeStr
  loc_A9A01E: BranchF loc_A9A022
  loc_A9A021: ExitProcHresult
  loc_A9A022: LitI2_Byte 0
  loc_A9A024: PopTmpLdAd2 var_AA
  loc_A9A027: Call CodiPartMsk_UnknownEvent_8()
  loc_A9A02C: FLdPr Me
  loc_A9A02F: MemLdStr global_72
  loc_A9A032: LitStr vbNullString
  loc_A9A035: NeStr
  loc_A9A037: BranchF loc_A9A03B
  loc_A9A03A: ExitProcHresult
  loc_A9A03B: LitI2_Byte 0
  loc_A9A03D: PopTmpLdAd2 var_AA
  loc_A9A040: Call CodiOrgaMsk_UnknownEvent_8()
  loc_A9A045: FLdPr Me
  loc_A9A048: MemLdStr global_72
  loc_A9A04B: LitStr vbNullString
  loc_A9A04E: NeStr
  loc_A9A050: BranchF loc_A9A054
  loc_A9A053: ExitProcHresult
  loc_A9A054: FLdPr Me
  loc_A9A057: MemLdUI1 global_68
  loc_A9A05B: FStUI1 var_AC
  loc_A9A05F: FLdUI1
  loc_A9A063: LitI2_Byte 1
  loc_A9A065: EqI2
  loc_A9A066: BranchF loc_A9A12A
  loc_A9A069: FLdRfVar var_AA
  loc_A9A06C: FLdPr Me
  loc_A9A06F: VCallAd Control_ID_cboMes
  loc_A9A072: FStAdFunc var_94
  loc_A9A075: FLdPr var_94
  loc_A9A078:  = Me.ListIndex
  loc_A9A07D: FLdRfVar var_B4
  loc_A9A080: FLdI2 var_AA
  loc_A9A083: FLdPr Me
  loc_A9A086: VCallAd Control_ID_cboMes
  loc_A9A089: FStAdFunc var_B0
  loc_A9A08C: FLdPr var_B0
  loc_A9A08F:  = Me.ItemData
  loc_A9A094: FLdPr Me
  loc_A9A097: VCallAd Control_ID_ExorImpuMsk
  loc_A9A09A: FStAdFunc var_B8
  loc_A9A09D: FLdPr var_B8
  loc_A9A0A0: LateIdLdVar var_A8 DispID_22 0
  loc_A9A0A7: PopAd
  loc_A9A0A9: FLdPr Me
  loc_A9A0AC: VCallAd Control_ID_CodiPartMsk
  loc_A9A0AF: FStAdFunc var_BC
  loc_A9A0B2: FLdPr var_BC
  loc_A9A0B5: LateIdLdVar var_CC DispID_22 0
  loc_A9A0BC: PopAd
  loc_A9A0BE: FLdPr Me
  loc_A9A0C1: VCallAd Control_ID_CodiOrgaMsk
  loc_A9A0C4: FStAdFunc var_D0
  loc_A9A0C7: FLdPr var_D0
  loc_A9A0CA: LateIdLdVar var_E0 DispID_22 0
  loc_A9A0D1: PopAd
  loc_A9A0D3: FLdRfVar var_F0
  loc_A9A0D6: FLdRfVar var_E0
  loc_A9A0D9: CStrVarTmp
  loc_A9A0DA: FStStrNoPop var_EC
  loc_A9A0DD: FLdRfVar var_CC
  loc_A9A0E0: CStrVarTmp
  loc_A9A0E1: FStStrNoPop var_E8
  loc_A9A0E4: FLdRfVar var_A8
  loc_A9A0E7: CStrVarTmp
  loc_A9A0E8: FStStrNoPop var_E4
  loc_A9A0EB: ILdRf var_B4
  loc_A9A0EE: CStrI4
  loc_A9A0F0: FStStrNoPop var_8C
  loc_A9A0F3: ImpAdLdI2 MemVar_C3D064
  loc_A9A0F6: FLdPr Me
  loc_A9A0F9: MemLdRfVar from_stack_1.global_52
  loc_A9A0FC: NewIfNullPr clsparacomi
  loc_A9A0FF: from_stack_6v = clsparacomi.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_A9A104: FFreeStr var_8C = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_A9A111: FFreeAd var_94 = "": var_B0 = "": var_B8 = "": var_BC = ""
  loc_A9A11E: FFreeVar var_A8 = "": var_CC = ""
  loc_A9A127: Branch loc_A9A1EF
  loc_A9A12A: FLdUI1
  loc_A9A12E: LitI2_Byte 2
  loc_A9A130: EqI2
  loc_A9A131: BranchF loc_A9A1EF
  loc_A9A134: FLdRfVar var_AA
  loc_A9A137: FLdPr Me
  loc_A9A13A: VCallAd Control_ID_cboMes
  loc_A9A13D: FStAdFunc var_94
  loc_A9A140: FLdPr var_94
  loc_A9A143:  = Me.ListIndex
  loc_A9A148: FLdRfVar var_B4
  loc_A9A14B: FLdI2 var_AA
  loc_A9A14E: FLdPr Me
  loc_A9A151: VCallAd Control_ID_cboMes
  loc_A9A154: FStAdFunc var_B0
  loc_A9A157: FLdPr var_B0
  loc_A9A15A:  = Me.ItemData
  loc_A9A15F: FLdPr Me
  loc_A9A162: VCallAd Control_ID_ExorImpuMsk
  loc_A9A165: FStAdFunc var_B8
  loc_A9A168: FLdPr var_B8
  loc_A9A16B: LateIdLdVar var_A8 DispID_22 0
  loc_A9A172: PopAd
  loc_A9A174: FLdPr Me
  loc_A9A177: VCallAd Control_ID_CodiPartMsk
  loc_A9A17A: FStAdFunc var_BC
  loc_A9A17D: FLdPr var_BC
  loc_A9A180: LateIdLdVar var_CC DispID_22 0
  loc_A9A187: PopAd
  loc_A9A189: FLdPr Me
  loc_A9A18C: VCallAd Control_ID_CodiOrgaMsk
  loc_A9A18F: FStAdFunc var_D0
  loc_A9A192: FLdPr var_D0
  loc_A9A195: LateIdLdVar var_E0 DispID_22 0
  loc_A9A19C: CStrVarTmp
  loc_A9A19D: FStStrNoPop var_F0
  loc_A9A1A0: FLdRfVar var_CC
  loc_A9A1A3: CStrVarTmp
  loc_A9A1A4: FStStrNoPop var_EC
  loc_A9A1A7: FLdRfVar var_A8
  loc_A9A1AA: CStrVarTmp
  loc_A9A1AB: FStStrNoPop var_E8
  loc_A9A1AE: ILdRf var_B4
  loc_A9A1B1: CStrI4
  loc_A9A1B3: FStStrNoPop var_E4
  loc_A9A1B6: ImpAdLdI2 MemVar_C3D064
  loc_A9A1B9: CStrUI1
  loc_A9A1BB: FStStrNoPop var_8C
  loc_A9A1BE: FLdPr Me
  loc_A9A1C1: MemLdRfVar from_stack_1.global_52
  loc_A9A1C4: NewIfNullPr clsparacomi
  loc_A9A1C7: Call clsparacomi.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v)
  loc_A9A1CC: FFreeStr var_8C = "": var_E4 = "": var_E8 = "": var_EC = ""
  loc_A9A1D9: FFreeAd var_94 = "": var_B0 = "": var_B8 = "": var_BC = ""
  loc_A9A1E6: FFreeVar var_A8 = "": var_CC = ""
  loc_A9A1EF: Call cmdCancelar_Click()
  loc_A9A1F4: Branch loc_A9A2FB
  loc_A9A1F7: ILdRf var_90
  loc_A9A1FA: LitStr "btnCancelar"
  loc_A9A1FD: EqStr
  loc_A9A1FF: BranchF loc_A9A20A
  loc_A9A202: Call cmdCancelar_Click()
  loc_A9A207: Branch loc_A9A2FB
  loc_A9A20A: ILdRf var_90
  loc_A9A20D: LitStr "btnPrimero"
  loc_A9A210: EqStr
  loc_A9A212: BranchF loc_A9A226
  loc_A9A215: FLdPr Me
  loc_A9A218: MemLdRfVar from_stack_1.global_52
  loc_A9A21B: NewIfNullPr clsparacomi
  loc_A9A21E: Call clsparacomi.MoveFirst()
  loc_A9A223: Branch loc_A9A2FB
  loc_A9A226: ILdRf var_90
  loc_A9A229: LitStr "btnAnterior"
  loc_A9A22C: EqStr
  loc_A9A22E: BranchF loc_A9A242
  loc_A9A231: FLdPr Me
  loc_A9A234: MemLdRfVar from_stack_1.global_52
  loc_A9A237: NewIfNullPr clsparacomi
  loc_A9A23A: Call clsparacomi.MovePrevious()
  loc_A9A23F: Branch loc_A9A2FB
  loc_A9A242: ILdRf var_90
  loc_A9A245: LitStr "btnSiguiente"
  loc_A9A248: EqStr
  loc_A9A24A: BranchF loc_A9A25E
  loc_A9A24D: FLdPr Me
  loc_A9A250: MemLdRfVar from_stack_1.global_52
  loc_A9A253: NewIfNullPr clsparacomi
  loc_A9A256: Call clsparacomi.MoveNext()
  loc_A9A25B: Branch loc_A9A2FB
  loc_A9A25E: ILdRf var_90
  loc_A9A261: LitStr "btnUltimo"
  loc_A9A264: EqStr
  loc_A9A266: BranchF loc_A9A27A
  loc_A9A269: FLdPr Me
  loc_A9A26C: MemLdRfVar from_stack_1.global_52
  loc_A9A26F: NewIfNullPr clsparacomi
  loc_A9A272: Call clsparacomi.MoveLast()
  loc_A9A277: Branch loc_A9A2FB
  loc_A9A27A: ILdRf var_90
  loc_A9A27D: LitStr "btnFiltrar"
  loc_A9A280: EqStr
  loc_A9A282: BranchF loc_A9A288
  loc_A9A285: Branch loc_A9A2FB
  loc_A9A288: ILdRf var_90
  loc_A9A28B: LitStr "btnBuscar"
  loc_A9A28E: EqStr
  loc_A9A290: BranchF loc_A9A296
  loc_A9A293: Branch loc_A9A2FB
  loc_A9A296: ILdRf var_90
  loc_A9A299: LitStr "btnImprimir"
  loc_A9A29C: EqStr
  loc_A9A29E: BranchF loc_A9A2A4
  loc_A9A2A1: Branch loc_A9A2FB
  loc_A9A2A4: ILdRf var_90
  loc_A9A2A7: LitStr "btnAyuda"
  loc_A9A2AA: EqStr
  loc_A9A2AC: BranchF loc_A9A2DB
  loc_A9A2AF: LitVar_Missing var_140
  loc_A9A2B2: LitVar_Missing var_E0
  loc_A9A2B5: LitVar_Missing var_CC
  loc_A9A2B8: LitI4 0
  loc_A9A2BD: LitVarStr var_100, "Opcion no disponible en esta version."
  loc_A9A2C2: FStVarCopyObj var_A8
  loc_A9A2C5: FLdRfVar var_A8
  loc_A9A2C8: ImpAdCallFPR4 MsgBox(, , , , )
  loc_A9A2CD: FFreeVar var_A8 = "": var_CC = "": var_E0 = ""
  loc_A9A2D8: Branch loc_A9A2FB
  loc_A9A2DB: ILdRf var_90
  loc_A9A2DE: LitStr "btnSalir"
  loc_A9A2E1: EqStr
  loc_A9A2E3: BranchF loc_A9A2FB
  loc_A9A2E6: ILdRf Me
  loc_A9A2E9: FStAdNoPop
  loc_A9A2ED: ImpAdLdRf MemVar_C44F9C
  loc_A9A2F0: NewIfNullPr Me
  loc_A9A2F3: Me.Global.Unload from_stack_1
  loc_A9A2F8: FFree1Ad var_94
  loc_A9A2FB: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_0 '9A0CC4
  'Data Table: 49CE84
  loc_9A0C54: LitVarStr var_94, vbNullString
  loc_9A0C59: PopAdLdVar
  loc_9A0C5A: FLdPr Me
  loc_9A0C5D: VCallAd Control_ID_CodiPartMsk
  loc_9A0C60: FStAdFunc var_A8
  loc_9A0C63: FLdPr var_A8
  loc_9A0C66: LateIdSt
  loc_9A0C6B: FFree1Ad var_A8
  loc_9A0C6E: FLdPr Me
  loc_9A0C71: VCallAd Control_ID_CodiPartMsk
  loc_9A0C74: FStAdFunc var_A8
  loc_9A0C77: FLdPr var_A8
  loc_9A0C7A: LateIdLdVar var_B8 DispID_22 0
  loc_9A0C81: CStrVarTmp
  loc_9A0C82: FStStrNoPop var_BC
  loc_9A0C85: LitStr "_._._._.__.__"
  loc_9A0C88: EqStr
  loc_9A0C8A: FFree1Str var_BC
  loc_9A0C8D: FFree1Ad var_A8
  loc_9A0C90: FFree1Var var_B8 = ""
  loc_9A0C93: BranchF loc_9A0CB0
  loc_9A0C96: LitVarStr var_94, vbNullString
  loc_9A0C9B: PopAdLdVar
  loc_9A0C9C: FLdPr Me
  loc_9A0C9F: VCallAd Control_ID_CodiPartMsk
  loc_9A0CA2: FStAdFunc var_A8
  loc_9A0CA5: FLdPr var_A8
  loc_9A0CA8: LateIdSt
  loc_9A0CAD: FFree1Ad var_A8
  loc_9A0CB0: FLdPr Me
  loc_9A0CB3: VCallAd Control_ID_CodiPartMsk
  loc_9A0CB6: CVarAd
  loc_9A0CBA: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9A0CBF: FFree1Var var_B8 = ""
  loc_9A0CC2: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_1 '969B4C
  'Data Table: 49CE84
  loc_969B30: LitVarStr var_94, "#.#.#.#.##.##"
  loc_969B35: PopAdLdVar
  loc_969B36: FLdPr Me
  loc_969B39: VCallAd Control_ID_CodiPartMsk
  loc_969B3C: FStAdFunc var_A8
  loc_969B3F: FLdPr var_A8
  loc_969B42: LateIdSt
  loc_969B47: FFree1Ad var_A8
  loc_969B4A: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 'B52C9C
  'Data Table: 49CE84
  loc_B521D0: FLdRfVar var_8A
  loc_B521D3: FLdPr Me
  loc_B521D6: VCallAd Control_ID_cmdCancelar
  loc_B521D9: FStAdFunc var_88
  loc_B521DC: FLdPr var_88
  loc_B521DF:  = Me.Value
  loc_B521E4: FLdI2 var_8A
  loc_B521E7: NotI4
  loc_B521E8: FLdPr Me
  loc_B521EB: VCallAd Control_ID_CodiPartMsk
  loc_B521EE: FStAdFunc var_90
  loc_B521F1: FLdPr var_90
  loc_B521F4: LateIdLdVar var_A0 DispID_13 -32767
  loc_B521FB: CBoolVar
  loc_B521FD: AndI4
  loc_B521FE: FFreeAd var_88 = ""
  loc_B52205: FFree1Var var_A0 = ""
  loc_B52208: BranchF loc_B52C9B
  loc_B5220B: FLdPr Me
  loc_B5220E: VCallAd Control_ID_CodiPartMsk
  loc_B52211: FStAdFunc var_88
  loc_B52214: FLdPr var_88
  loc_B52217: LateIdLdVar var_A0 DispID_22 0
  loc_B5221E: CStrVarTmp
  loc_B5221F: FStStrNoPop var_A4
  loc_B52222: ImpAdCallI2 Trim$()
  loc_B52227: FStStrNoPop var_A8
  loc_B5222A: LitStr vbNullString
  loc_B5222D: NeStr
  loc_B5222F: FFreeStr var_A4 = ""
  loc_B52236: FFree1Ad var_88
  loc_B52239: FFree1Var var_A0 = ""
  loc_B5223C: BranchF loc_B52AB6
  loc_B5223F: FLdPr Me
  loc_B52242: VCallAd Control_ID_CodiPartMsk
  loc_B52245: FStAdFunc var_88
  loc_B52248: FLdRfVar var_88
  loc_B5224B: ImpAdCallI2  = Proc_266_40_A1E128()
  loc_B52250: FFree1Ad var_88
  loc_B52253: BranchF loc_B52686
  loc_B52256: FLdPr Me
  loc_B52259: VCallAd Control_ID_CodiPartMsk
  loc_B5225C: FStAdFunc var_88
  loc_B5225F: FLdPr var_88
  loc_B52262: LateIdLdVar var_A0 DispID_22 0
  loc_B52269: PopAd
  loc_B5226B: LitStr " AND partida.CodiPart LIKE '"
  loc_B5226E: LitI4 0
  loc_B52273: LitI4 -1
  loc_B52278: LitI4 1
  loc_B5227D: LitStr vbNullString
  loc_B52280: LitStr "."
  loc_B52283: FLdRfVar var_A0
  loc_B52286: CStrVarTmp
  loc_B52287: FStStrNoPop var_A4
  loc_B5228A: ImpAdCallI2 Replace(, , , , , )
  loc_B5228F: FStStrNoPop var_A8
  loc_B52292: ConcatStr
  loc_B52293: FStStrNoPop var_AC
  loc_B52296: LitStr Chr(37) & "' ORDER BY partida.CodiPart"
  loc_B52299: ConcatStr
  loc_B5229A: FStStrNoPop var_B4
  loc_B5229D: LitI2_Byte 1
  loc_B5229F: CStrUI1
  loc_B522A1: FStStrNoPop var_B0
  loc_B522A4: ImpAdLdI2 MemVar_C3D064
  loc_B522A7: ImpAdLdRf MemVar_C3D724
  loc_B522AA: NewIfNullPr bscPartida
  loc_B522AD: Call bscPartida.Constructor(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B522B2: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_B522BF: FFree1Ad var_88
  loc_B522C2: FFree1Var var_A0 = ""
  loc_B522C5: FLdRfVar var_B8
  loc_B522C8: FLdRfVar var_90
  loc_B522CB: FLdRfVar var_88
  loc_B522CE: ImpAdLdRf MemVar_C3D724
  loc_B522D1: NewIfNullPr bscPartida
  loc_B522D4: from_stack_1v = bscPartida.global_4332396Get()
  loc_B522D9: FLdPr var_88
  loc_B522DC: from_stack_1v = clsbase.RsFrmGet()
  loc_B522E1: FLdPr var_90
  loc_B522E4:  = Me.RecordCount
  loc_B522E9: ILdRf var_B8
  loc_B522EC: LitI4 1
  loc_B522F1: EqI4
  loc_B522F2: FFreeAd var_88 = ""
  loc_B522F9: BranchF loc_B52420
  loc_B522FC: FLdRfVar var_A0
  loc_B522FF: FLdRfVar var_D0
  loc_B52302: LitVarStr var_CC, "CodiPart"
  loc_B52307: PopAdLdVar
  loc_B52308: FLdRfVar var_BC
  loc_B5230B: FLdRfVar var_90
  loc_B5230E: FLdRfVar var_88
  loc_B52311: ImpAdLdRf MemVar_C3D724
  loc_B52314: NewIfNullPr bscPartida
  loc_B52317: from_stack_1v = bscPartida.global_4332396Get()
  loc_B5231C: FLdPr var_88
  loc_B5231F: from_stack_1v = clsbase.RsFrmGet()
  loc_B52324: FLdPr var_90
  loc_B52327:  = Me.Fields
  loc_B5232C: FLdPr var_BC
  loc_B5232F: from_stack_2 = Me.Item(from_stack_1)
  loc_B52334: FLdPr var_D0
  loc_B52337:  = Me.Value
  loc_B5233C: FLdRfVar var_A4
  loc_B5233F: FLdPr Me
  loc_B52342:  = Me.Name
  loc_B52347: FLdPr Me
  loc_B5234A: MemLdRfVar from_stack_1.global_76
  loc_B5234D: NewIfNullRf
  loc_B52351: ILdRf var_A4
  loc_B52354: LitI2_Byte &HFF
  loc_B52356: FLdRfVar var_A0
  loc_B52359: CStrVarTmp
  loc_B5235A: FStStrNoPop var_A8
  loc_B5235D: ImpAdLdI2 MemVar_C3D064
  loc_B52360: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_B52365: FStStrNoPop var_AC
  loc_B52368: FLdPr Me
  loc_B5236B: MemStStrCopy
  loc_B5236F: FFreeStr var_A8 = "": var_A4 = ""
  loc_B52378: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B52383: FFree1Var var_A0 = ""
  loc_B52386: FLdRfVar var_A4
  loc_B52389: FLdPr Me
  loc_B5238C: MemLdRfVar from_stack_1.global_76
  loc_B5238F: NewIfNullPr tblpartida
  loc_B52392: from_stack_1v = tblpartida.CodiPartGet()
  loc_B52397: FLdZeroAd var_A4
  loc_B5239A: CVarStr var_A0
  loc_B5239D: PopAdLdVar
  loc_B5239E: FLdPr Me
  loc_B523A1: VCallAd Control_ID_CodiPartMsk
  loc_B523A4: FStAdFunc var_88
  loc_B523A7: FLdPr var_88
  loc_B523AA: LateIdSt
  loc_B523AF: FFree1Ad var_88
  loc_B523B2: FFree1Var var_A0 = ""
  loc_B523B5: FLdRfVar var_A4
  loc_B523B8: FLdPr Me
  loc_B523BB: MemLdRfVar from_stack_1.global_76
  loc_B523BE: NewIfNullPr tblpartida
  loc_B523C1: from_stack_1v = tblpartida.DetaPartGet()
  loc_B523C6: ILdRf var_A4
  loc_B523C9: FLdPr Me
  loc_B523CC: VCallAd Control_ID_DetaPartLbl
  loc_B523CF: FStAdFunc var_88
  loc_B523D2: FLdPr var_88
  loc_B523D5: Me.Caption = from_stack_1
  loc_B523DA: FFree1Str var_A4
  loc_B523DD: FFree1Ad var_88
  loc_B523E0: FLdPr Me
  loc_B523E3: VCallAd Control_ID_CodiPartMsk
  loc_B523E6: FStAdFunc var_D0
  loc_B523E9: FLdPr Me
  loc_B523EC: VCallAd Control_ID_DetaPartLbl
  loc_B523EF: FStAdFunc var_BC
  loc_B523F2: FLdRfVar var_BC
  loc_B523F5: FLdZeroAd var_D0
  loc_B523F8: FStAdFuncNoPop
  loc_B523FB: CastAd
  loc_B523FE: FStAdFunc var_90
  loc_B52401: FLdRfVar var_90
  loc_B52404: FLdPr Me
  loc_B52407: MemLdRfVar from_stack_1.global_72
  loc_B5240A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5240F: IStI2 Button
  loc_B52412: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5241D: Branch loc_B52683
  loc_B52420: FLdRfVar var_B8
  loc_B52423: FLdRfVar var_90
  loc_B52426: FLdRfVar var_88
  loc_B52429: ImpAdLdRf MemVar_C3D724
  loc_B5242C: NewIfNullPr bscPartida
  loc_B5242F: from_stack_1v = bscPartida.global_4332396Get()
  loc_B52434: FLdPr var_88
  loc_B52437: from_stack_1v = clsbase.RsFrmGet()
  loc_B5243C: FLdPr var_90
  loc_B5243F:  = Me.RecordCount
  loc_B52444: ILdRf var_B8
  loc_B52447: LitI4 1
  loc_B5244C: GtI4
  loc_B5244D: FFreeAd var_88 = ""
  loc_B52454: BranchF loc_B52605
  loc_B52457: LitVar_Missing var_E0
  loc_B5245A: PopAdLdVar
  loc_B5245B: LitVarI4
  loc_B52463: PopAdLdVar
  loc_B52464: ImpAdLdRf MemVar_C3D724
  loc_B52467: NewIfNullPr bscPartida
  loc_B5246A: bscPartida.Show from_stack_1, from_stack_2
  loc_B5246F: FLdRfVar var_B8
  loc_B52472: FLdRfVar var_88
  loc_B52475: ImpAdLdRf MemVar_C3D724
  loc_B52478: NewIfNullPr bscPartida
  loc_B5247B: from_stack_1v = bscPartida.global_4332396Get()
  loc_B52480: FLdPr var_88
  loc_B52483: from_stack_1 = clsbase.RecordCount
  loc_B52488: ILdRf var_B8
  loc_B5248B: LitI4 0
  loc_B52490: GtI4
  loc_B52491: FFree1Ad var_88
  loc_B52494: BranchF loc_B525BB
  loc_B52497: FLdRfVar var_A0
  loc_B5249A: FLdRfVar var_D0
  loc_B5249D: LitVarStr var_CC, "CodiPart"
  loc_B524A2: PopAdLdVar
  loc_B524A3: FLdRfVar var_BC
  loc_B524A6: FLdRfVar var_90
  loc_B524A9: FLdRfVar var_88
  loc_B524AC: ImpAdLdRf MemVar_C3D724
  loc_B524AF: NewIfNullPr bscPartida
  loc_B524B2: from_stack_1v = bscPartida.global_4332396Get()
  loc_B524B7: FLdPr var_88
  loc_B524BA: from_stack_1v = clsbase.RsFrmGet()
  loc_B524BF: FLdPr var_90
  loc_B524C2:  = Me.Fields
  loc_B524C7: FLdPr var_BC
  loc_B524CA: from_stack_2 = Me.Item(from_stack_1)
  loc_B524CF: FLdPr var_D0
  loc_B524D2:  = Me.Value
  loc_B524D7: FLdRfVar var_A4
  loc_B524DA: FLdPr Me
  loc_B524DD:  = Me.Name
  loc_B524E2: FLdPr Me
  loc_B524E5: MemLdRfVar from_stack_1.global_76
  loc_B524E8: NewIfNullRf
  loc_B524EC: ILdRf var_A4
  loc_B524EF: LitI2_Byte &HFF
  loc_B524F1: FLdRfVar var_A0
  loc_B524F4: CStrVarTmp
  loc_B524F5: FStStrNoPop var_A8
  loc_B524F8: ImpAdLdI2 MemVar_C3D064
  loc_B524FB: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_B52500: FStStrNoPop var_AC
  loc_B52503: FLdPr Me
  loc_B52506: MemStStrCopy
  loc_B5250A: FFreeStr var_A8 = "": var_A4 = ""
  loc_B52513: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5251E: FFree1Var var_A0 = ""
  loc_B52521: FLdRfVar var_A4
  loc_B52524: FLdPr Me
  loc_B52527: MemLdRfVar from_stack_1.global_76
  loc_B5252A: NewIfNullPr tblpartida
  loc_B5252D: from_stack_1v = tblpartida.CodiPartGet()
  loc_B52532: FLdZeroAd var_A4
  loc_B52535: CVarStr var_A0
  loc_B52538: PopAdLdVar
  loc_B52539: FLdPr Me
  loc_B5253C: VCallAd Control_ID_CodiPartMsk
  loc_B5253F: FStAdFunc var_88
  loc_B52542: FLdPr var_88
  loc_B52545: LateIdSt
  loc_B5254A: FFree1Ad var_88
  loc_B5254D: FFree1Var var_A0 = ""
  loc_B52550: FLdRfVar var_A4
  loc_B52553: FLdPr Me
  loc_B52556: MemLdRfVar from_stack_1.global_76
  loc_B52559: NewIfNullPr tblpartida
  loc_B5255C: from_stack_1v = tblpartida.DetaPartGet()
  loc_B52561: ILdRf var_A4
  loc_B52564: FLdPr Me
  loc_B52567: VCallAd Control_ID_DetaPartLbl
  loc_B5256A: FStAdFunc var_88
  loc_B5256D: FLdPr var_88
  loc_B52570: Me.Caption = from_stack_1
  loc_B52575: FFree1Str var_A4
  loc_B52578: FFree1Ad var_88
  loc_B5257B: FLdPr Me
  loc_B5257E: VCallAd Control_ID_CodiPartMsk
  loc_B52581: FStAdFunc var_D0
  loc_B52584: FLdPr Me
  loc_B52587: VCallAd Control_ID_DetaPartLbl
  loc_B5258A: FStAdFunc var_BC
  loc_B5258D: FLdRfVar var_BC
  loc_B52590: FLdZeroAd var_D0
  loc_B52593: FStAdFuncNoPop
  loc_B52596: CastAd
  loc_B52599: FStAdFunc var_90
  loc_B5259C: FLdRfVar var_90
  loc_B5259F: FLdPr Me
  loc_B525A2: MemLdRfVar from_stack_1.global_72
  loc_B525A5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B525AA: IStI2 Button
  loc_B525AD: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B525B8: Branch loc_B52602
  loc_B525BB: LitStr "La Partida NO EXISTE. Verifique..."
  loc_B525BE: FLdPr Me
  loc_B525C1: MemStStrCopy
  loc_B525C5: FLdPr Me
  loc_B525C8: VCallAd Control_ID_CodiPartMsk
  loc_B525CB: FStAdFunc var_D0
  loc_B525CE: FLdPr Me
  loc_B525D1: VCallAd Control_ID_DetaPartLbl
  loc_B525D4: FStAdFunc var_BC
  loc_B525D7: FLdRfVar var_BC
  loc_B525DA: FLdZeroAd var_D0
  loc_B525DD: FStAdFuncNoPop
  loc_B525E0: CastAd
  loc_B525E3: FStAdFunc var_90
  loc_B525E6: FLdRfVar var_90
  loc_B525E9: FLdPr Me
  loc_B525EC: MemLdRfVar from_stack_1.global_72
  loc_B525EF: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B525F4: IStI2 Button
  loc_B525F7: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B52602: Branch loc_B52683
  loc_B52605: FLdRfVar var_B8
  loc_B52608: FLdRfVar var_90
  loc_B5260B: FLdRfVar var_88
  loc_B5260E: ImpAdLdRf MemVar_C3D724
  loc_B52611: NewIfNullPr bscPartida
  loc_B52614: from_stack_1v = bscPartida.global_4332396Get()
  loc_B52619: FLdPr var_88
  loc_B5261C: from_stack_1v = clsbase.RsFrmGet()
  loc_B52621: FLdPr var_90
  loc_B52624:  = Me.RecordCount
  loc_B52629: ILdRf var_B8
  loc_B5262C: LitI4 1
  loc_B52631: LtI4
  loc_B52632: FFreeAd var_88 = ""
  loc_B52639: BranchF loc_B52683
  loc_B5263C: LitStr "La Partida NO EXISTE. Verifique..."
  loc_B5263F: FLdPr Me
  loc_B52642: MemStStrCopy
  loc_B52646: FLdPr Me
  loc_B52649: VCallAd Control_ID_CodiPartMsk
  loc_B5264C: FStAdFunc var_D0
  loc_B5264F: FLdPr Me
  loc_B52652: VCallAd Control_ID_DetaPartLbl
  loc_B52655: FStAdFunc var_BC
  loc_B52658: FLdRfVar var_BC
  loc_B5265B: FLdZeroAd var_D0
  loc_B5265E: FStAdFuncNoPop
  loc_B52661: CastAd
  loc_B52664: FStAdFunc var_90
  loc_B52667: FLdRfVar var_90
  loc_B5266A: FLdPr Me
  loc_B5266D: MemLdRfVar from_stack_1.global_72
  loc_B52670: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B52675: IStI2 Button
  loc_B52678: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B52683: Branch loc_B52AB3
  loc_B52686: FLdPr Me
  loc_B52689: VCallAd Control_ID_CodiPartMsk
  loc_B5268C: FStAdFunc var_88
  loc_B5268F: FLdPr var_88
  loc_B52692: LateIdLdVar var_A0 DispID_22 0
  loc_B52699: PopAd
  loc_B5269B: LitStr " AND DetaPart LIKE '" & Chr(37)
  loc_B5269E: LitI4 0
  loc_B526A3: LitI4 -1
  loc_B526A8: LitI4 1
  loc_B526AD: LitStr Chr(37)
  loc_B526B0: LitStr " "
  loc_B526B3: FLdRfVar var_A0
  loc_B526B6: CStrVarTmp
  loc_B526B7: FStStrNoPop var_A4
  loc_B526BA: ImpAdCallI2 Replace(, , , , , )
  loc_B526BF: FStStrNoPop var_A8
  loc_B526C2: ConcatStr
  loc_B526C3: FStStrNoPop var_AC
  loc_B526C6: LitStr Chr(37) & "' ORDER BY DetaPart"
  loc_B526C9: ConcatStr
  loc_B526CA: FStStrNoPop var_B4
  loc_B526CD: LitI2_Byte 1
  loc_B526CF: CStrUI1
  loc_B526D1: FStStrNoPop var_B0
  loc_B526D4: ImpAdLdI2 MemVar_C3D064
  loc_B526D7: ImpAdLdRf MemVar_C3D724
  loc_B526DA: NewIfNullPr bscPartida
  loc_B526DD: Call bscPartida.Constructor(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_B526E2: FFreeStr var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_B526EF: FFree1Ad var_88
  loc_B526F2: FFree1Var var_A0 = ""
  loc_B526F5: FLdRfVar var_B8
  loc_B526F8: FLdRfVar var_90
  loc_B526FB: FLdRfVar var_88
  loc_B526FE: ImpAdLdRf MemVar_C3D724
  loc_B52701: NewIfNullPr bscPartida
  loc_B52704: from_stack_1v = bscPartida.global_4332396Get()
  loc_B52709: FLdPr var_88
  loc_B5270C: from_stack_1v = clsbase.RsFrmGet()
  loc_B52711: FLdPr var_90
  loc_B52714:  = Me.RecordCount
  loc_B52719: ILdRf var_B8
  loc_B5271C: LitI4 1
  loc_B52721: EqI4
  loc_B52722: FFreeAd var_88 = ""
  loc_B52729: BranchF loc_B52850
  loc_B5272C: FLdRfVar var_A0
  loc_B5272F: FLdRfVar var_D0
  loc_B52732: LitVarStr var_CC, "CodiPart"
  loc_B52737: PopAdLdVar
  loc_B52738: FLdRfVar var_BC
  loc_B5273B: FLdRfVar var_90
  loc_B5273E: FLdRfVar var_88
  loc_B52741: ImpAdLdRf MemVar_C3D724
  loc_B52744: NewIfNullPr bscPartida
  loc_B52747: from_stack_1v = bscPartida.global_4332396Get()
  loc_B5274C: FLdPr var_88
  loc_B5274F: from_stack_1v = clsbase.RsFrmGet()
  loc_B52754: FLdPr var_90
  loc_B52757:  = Me.Fields
  loc_B5275C: FLdPr var_BC
  loc_B5275F: from_stack_2 = Me.Item(from_stack_1)
  loc_B52764: FLdPr var_D0
  loc_B52767:  = Me.Value
  loc_B5276C: FLdRfVar var_A4
  loc_B5276F: FLdPr Me
  loc_B52772:  = Me.Name
  loc_B52777: FLdPr Me
  loc_B5277A: MemLdRfVar from_stack_1.global_76
  loc_B5277D: NewIfNullRf
  loc_B52781: ILdRf var_A4
  loc_B52784: LitI2_Byte &HFF
  loc_B52786: FLdRfVar var_A0
  loc_B52789: CStrVarTmp
  loc_B5278A: FStStrNoPop var_A8
  loc_B5278D: ImpAdLdI2 MemVar_C3D064
  loc_B52790: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_B52795: FStStrNoPop var_AC
  loc_B52798: FLdPr Me
  loc_B5279B: MemStStrCopy
  loc_B5279F: FFreeStr var_A8 = "": var_A4 = ""
  loc_B527A8: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B527B3: FFree1Var var_A0 = ""
  loc_B527B6: FLdRfVar var_A4
  loc_B527B9: FLdPr Me
  loc_B527BC: MemLdRfVar from_stack_1.global_76
  loc_B527BF: NewIfNullPr tblpartida
  loc_B527C2: from_stack_1v = tblpartida.CodiPartGet()
  loc_B527C7: FLdZeroAd var_A4
  loc_B527CA: CVarStr var_A0
  loc_B527CD: PopAdLdVar
  loc_B527CE: FLdPr Me
  loc_B527D1: VCallAd Control_ID_CodiPartMsk
  loc_B527D4: FStAdFunc var_88
  loc_B527D7: FLdPr var_88
  loc_B527DA: LateIdSt
  loc_B527DF: FFree1Ad var_88
  loc_B527E2: FFree1Var var_A0 = ""
  loc_B527E5: FLdRfVar var_A4
  loc_B527E8: FLdPr Me
  loc_B527EB: MemLdRfVar from_stack_1.global_76
  loc_B527EE: NewIfNullPr tblpartida
  loc_B527F1: from_stack_1v = tblpartida.DetaPartGet()
  loc_B527F6: ILdRf var_A4
  loc_B527F9: FLdPr Me
  loc_B527FC: VCallAd Control_ID_DetaPartLbl
  loc_B527FF: FStAdFunc var_88
  loc_B52802: FLdPr var_88
  loc_B52805: Me.Caption = from_stack_1
  loc_B5280A: FFree1Str var_A4
  loc_B5280D: FFree1Ad var_88
  loc_B52810: FLdPr Me
  loc_B52813: VCallAd Control_ID_CodiPartMsk
  loc_B52816: FStAdFunc var_D0
  loc_B52819: FLdPr Me
  loc_B5281C: VCallAd Control_ID_DetaPartLbl
  loc_B5281F: FStAdFunc var_BC
  loc_B52822: FLdRfVar var_BC
  loc_B52825: FLdZeroAd var_D0
  loc_B52828: FStAdFuncNoPop
  loc_B5282B: CastAd
  loc_B5282E: FStAdFunc var_90
  loc_B52831: FLdRfVar var_90
  loc_B52834: FLdPr Me
  loc_B52837: MemLdRfVar from_stack_1.global_72
  loc_B5283A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5283F: IStI2 Button
  loc_B52842: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5284D: Branch loc_B52AB3
  loc_B52850: FLdRfVar var_B8
  loc_B52853: FLdRfVar var_90
  loc_B52856: FLdRfVar var_88
  loc_B52859: ImpAdLdRf MemVar_C3D724
  loc_B5285C: NewIfNullPr bscPartida
  loc_B5285F: from_stack_1v = bscPartida.global_4332396Get()
  loc_B52864: FLdPr var_88
  loc_B52867: from_stack_1v = clsbase.RsFrmGet()
  loc_B5286C: FLdPr var_90
  loc_B5286F:  = Me.RecordCount
  loc_B52874: ILdRf var_B8
  loc_B52877: LitI4 1
  loc_B5287C: GtI4
  loc_B5287D: FFreeAd var_88 = ""
  loc_B52884: BranchF loc_B52A35
  loc_B52887: LitVar_Missing var_E0
  loc_B5288A: PopAdLdVar
  loc_B5288B: LitVarI4
  loc_B52893: PopAdLdVar
  loc_B52894: ImpAdLdRf MemVar_C3D724
  loc_B52897: NewIfNullPr bscPartida
  loc_B5289A: bscPartida.Show from_stack_1, from_stack_2
  loc_B5289F: FLdRfVar var_B8
  loc_B528A2: FLdRfVar var_88
  loc_B528A5: ImpAdLdRf MemVar_C3D724
  loc_B528A8: NewIfNullPr bscPartida
  loc_B528AB: from_stack_1v = bscPartida.global_4332396Get()
  loc_B528B0: FLdPr var_88
  loc_B528B3: from_stack_1 = clsbase.RecordCount
  loc_B528B8: ILdRf var_B8
  loc_B528BB: LitI4 0
  loc_B528C0: GtI4
  loc_B528C1: FFree1Ad var_88
  loc_B528C4: BranchF loc_B529EB
  loc_B528C7: FLdRfVar var_A0
  loc_B528CA: FLdRfVar var_D0
  loc_B528CD: LitVarStr var_CC, "CodiPart"
  loc_B528D2: PopAdLdVar
  loc_B528D3: FLdRfVar var_BC
  loc_B528D6: FLdRfVar var_90
  loc_B528D9: FLdRfVar var_88
  loc_B528DC: ImpAdLdRf MemVar_C3D724
  loc_B528DF: NewIfNullPr bscPartida
  loc_B528E2: from_stack_1v = bscPartida.global_4332396Get()
  loc_B528E7: FLdPr var_88
  loc_B528EA: from_stack_1v = clsbase.RsFrmGet()
  loc_B528EF: FLdPr var_90
  loc_B528F2:  = Me.Fields
  loc_B528F7: FLdPr var_BC
  loc_B528FA: from_stack_2 = Me.Item(from_stack_1)
  loc_B528FF: FLdPr var_D0
  loc_B52902:  = Me.Value
  loc_B52907: FLdRfVar var_A4
  loc_B5290A: FLdPr Me
  loc_B5290D:  = Me.Name
  loc_B52912: FLdPr Me
  loc_B52915: MemLdRfVar from_stack_1.global_76
  loc_B52918: NewIfNullRf
  loc_B5291C: ILdRf var_A4
  loc_B5291F: LitI2_Byte &HFF
  loc_B52921: FLdRfVar var_A0
  loc_B52924: CStrVarTmp
  loc_B52925: FStStrNoPop var_A8
  loc_B52928: ImpAdLdI2 MemVar_C3D064
  loc_B5292B: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_B52930: FStStrNoPop var_AC
  loc_B52933: FLdPr Me
  loc_B52936: MemStStrCopy
  loc_B5293A: FFreeStr var_A8 = "": var_A4 = ""
  loc_B52943: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B5294E: FFree1Var var_A0 = ""
  loc_B52951: FLdRfVar var_A4
  loc_B52954: FLdPr Me
  loc_B52957: MemLdRfVar from_stack_1.global_76
  loc_B5295A: NewIfNullPr tblpartida
  loc_B5295D: from_stack_1v = tblpartida.CodiPartGet()
  loc_B52962: FLdZeroAd var_A4
  loc_B52965: CVarStr var_A0
  loc_B52968: PopAdLdVar
  loc_B52969: FLdPr Me
  loc_B5296C: VCallAd Control_ID_CodiPartMsk
  loc_B5296F: FStAdFunc var_88
  loc_B52972: FLdPr var_88
  loc_B52975: LateIdSt
  loc_B5297A: FFree1Ad var_88
  loc_B5297D: FFree1Var var_A0 = ""
  loc_B52980: FLdRfVar var_A4
  loc_B52983: FLdPr Me
  loc_B52986: MemLdRfVar from_stack_1.global_76
  loc_B52989: NewIfNullPr tblpartida
  loc_B5298C: from_stack_1v = tblpartida.DetaPartGet()
  loc_B52991: ILdRf var_A4
  loc_B52994: FLdPr Me
  loc_B52997: VCallAd Control_ID_DetaPartLbl
  loc_B5299A: FStAdFunc var_88
  loc_B5299D: FLdPr var_88
  loc_B529A0: Me.Caption = from_stack_1
  loc_B529A5: FFree1Str var_A4
  loc_B529A8: FFree1Ad var_88
  loc_B529AB: FLdPr Me
  loc_B529AE: VCallAd Control_ID_CodiPartMsk
  loc_B529B1: FStAdFunc var_D0
  loc_B529B4: FLdPr Me
  loc_B529B7: VCallAd Control_ID_DetaPartLbl
  loc_B529BA: FStAdFunc var_BC
  loc_B529BD: FLdRfVar var_BC
  loc_B529C0: FLdZeroAd var_D0
  loc_B529C3: FStAdFuncNoPop
  loc_B529C6: CastAd
  loc_B529C9: FStAdFunc var_90
  loc_B529CC: FLdRfVar var_90
  loc_B529CF: FLdPr Me
  loc_B529D2: MemLdRfVar from_stack_1.global_72
  loc_B529D5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B529DA: IStI2 Button
  loc_B529DD: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B529E8: Branch loc_B52A32
  loc_B529EB: LitStr "La Partida NO EXISTE. Verique..."
  loc_B529EE: FLdPr Me
  loc_B529F1: MemStStrCopy
  loc_B529F5: FLdPr Me
  loc_B529F8: VCallAd Control_ID_CodiPartMsk
  loc_B529FB: FStAdFunc var_D0
  loc_B529FE: FLdPr Me
  loc_B52A01: VCallAd Control_ID_DetaPartLbl
  loc_B52A04: FStAdFunc var_BC
  loc_B52A07: FLdRfVar var_BC
  loc_B52A0A: FLdZeroAd var_D0
  loc_B52A0D: FStAdFuncNoPop
  loc_B52A10: CastAd
  loc_B52A13: FStAdFunc var_90
  loc_B52A16: FLdRfVar var_90
  loc_B52A19: FLdPr Me
  loc_B52A1C: MemLdRfVar from_stack_1.global_72
  loc_B52A1F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B52A24: IStI2 Button
  loc_B52A27: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B52A32: Branch loc_B52AB3
  loc_B52A35: FLdRfVar var_B8
  loc_B52A38: FLdRfVar var_90
  loc_B52A3B: FLdRfVar var_88
  loc_B52A3E: ImpAdLdRf MemVar_C3D724
  loc_B52A41: NewIfNullPr bscPartida
  loc_B52A44: from_stack_1v = bscPartida.global_4332396Get()
  loc_B52A49: FLdPr var_88
  loc_B52A4C: from_stack_1v = clsbase.RsFrmGet()
  loc_B52A51: FLdPr var_90
  loc_B52A54:  = Me.RecordCount
  loc_B52A59: ILdRf var_B8
  loc_B52A5C: LitI4 1
  loc_B52A61: LtI4
  loc_B52A62: FFreeAd var_88 = ""
  loc_B52A69: BranchF loc_B52AB3
  loc_B52A6C: LitStr "La Partida NO EXISTE. Verique..."
  loc_B52A6F: FLdPr Me
  loc_B52A72: MemStStrCopy
  loc_B52A76: FLdPr Me
  loc_B52A79: VCallAd Control_ID_CodiPartMsk
  loc_B52A7C: FStAdFunc var_D0
  loc_B52A7F: FLdPr Me
  loc_B52A82: VCallAd Control_ID_DetaPartLbl
  loc_B52A85: FStAdFunc var_BC
  loc_B52A88: FLdRfVar var_BC
  loc_B52A8B: FLdZeroAd var_D0
  loc_B52A8E: FStAdFuncNoPop
  loc_B52A91: CastAd
  loc_B52A94: FStAdFunc var_90
  loc_B52A97: FLdRfVar var_90
  loc_B52A9A: FLdPr Me
  loc_B52A9D: MemLdRfVar from_stack_1.global_72
  loc_B52AA0: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B52AA5: IStI2 Button
  loc_B52AA8: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B52AB3: Branch loc_B52C77
  loc_B52AB6: LitNothing
  loc_B52AB8: CastAd
  loc_B52ABB: FStAdFuncNoPop
  loc_B52ABE: ImpAdLdRf MemVar_C3D724
  loc_B52AC1: NewIfNullPr bscPartida
  loc_B52AC4: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_B52AC9: FFree1Ad var_88
  loc_B52ACC: LitVar_Missing var_E0
  loc_B52ACF: PopAdLdVar
  loc_B52AD0: LitVarI4
  loc_B52AD8: PopAdLdVar
  loc_B52AD9: ImpAdLdRf MemVar_C3D724
  loc_B52ADC: NewIfNullPr bscPartida
  loc_B52ADF: bscPartida.Show from_stack_1, from_stack_2
  loc_B52AE4: FLdRfVar var_B8
  loc_B52AE7: FLdRfVar var_88
  loc_B52AEA: ImpAdLdRf MemVar_C3D724
  loc_B52AED: NewIfNullPr bscPartida
  loc_B52AF0: from_stack_1v = bscPartida.global_4332396Get()
  loc_B52AF5: FLdPr var_88
  loc_B52AF8: from_stack_1 = clsbase.RecordCount
  loc_B52AFD: ILdRf var_B8
  loc_B52B00: LitI4 0
  loc_B52B05: GtI4
  loc_B52B06: FFree1Ad var_88
  loc_B52B09: BranchF loc_B52C30
  loc_B52B0C: FLdRfVar var_A0
  loc_B52B0F: FLdRfVar var_D0
  loc_B52B12: LitVarStr var_CC, "CodiPart"
  loc_B52B17: PopAdLdVar
  loc_B52B18: FLdRfVar var_BC
  loc_B52B1B: FLdRfVar var_90
  loc_B52B1E: FLdRfVar var_88
  loc_B52B21: ImpAdLdRf MemVar_C3D724
  loc_B52B24: NewIfNullPr bscPartida
  loc_B52B27: from_stack_1v = bscPartida.global_4332396Get()
  loc_B52B2C: FLdPr var_88
  loc_B52B2F: from_stack_1v = clsbase.RsFrmGet()
  loc_B52B34: FLdPr var_90
  loc_B52B37:  = Me.Fields
  loc_B52B3C: FLdPr var_BC
  loc_B52B3F: from_stack_2 = Me.Item(from_stack_1)
  loc_B52B44: FLdPr var_D0
  loc_B52B47:  = Me.Value
  loc_B52B4C: FLdRfVar var_A4
  loc_B52B4F: FLdPr Me
  loc_B52B52:  = Me.Name
  loc_B52B57: FLdPr Me
  loc_B52B5A: MemLdRfVar from_stack_1.global_76
  loc_B52B5D: NewIfNullRf
  loc_B52B61: ILdRf var_A4
  loc_B52B64: LitI2_Byte &HFF
  loc_B52B66: FLdRfVar var_A0
  loc_B52B69: CStrVarTmp
  loc_B52B6A: FStStrNoPop var_A8
  loc_B52B6D: ImpAdLdI2 MemVar_C3D064
  loc_B52B70: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_B52B75: FStStrNoPop var_AC
  loc_B52B78: FLdPr Me
  loc_B52B7B: MemStStrCopy
  loc_B52B7F: FFreeStr var_A8 = "": var_A4 = ""
  loc_B52B88: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B52B93: FFree1Var var_A0 = ""
  loc_B52B96: FLdRfVar var_A4
  loc_B52B99: FLdPr Me
  loc_B52B9C: MemLdRfVar from_stack_1.global_76
  loc_B52B9F: NewIfNullPr tblpartida
  loc_B52BA2: from_stack_1v = tblpartida.CodiPartGet()
  loc_B52BA7: FLdZeroAd var_A4
  loc_B52BAA: CVarStr var_A0
  loc_B52BAD: PopAdLdVar
  loc_B52BAE: FLdPr Me
  loc_B52BB1: VCallAd Control_ID_CodiPartMsk
  loc_B52BB4: FStAdFunc var_88
  loc_B52BB7: FLdPr var_88
  loc_B52BBA: LateIdSt
  loc_B52BBF: FFree1Ad var_88
  loc_B52BC2: FFree1Var var_A0 = ""
  loc_B52BC5: FLdRfVar var_A4
  loc_B52BC8: FLdPr Me
  loc_B52BCB: MemLdRfVar from_stack_1.global_76
  loc_B52BCE: NewIfNullPr tblpartida
  loc_B52BD1: from_stack_1v = tblpartida.DetaPartGet()
  loc_B52BD6: ILdRf var_A4
  loc_B52BD9: FLdPr Me
  loc_B52BDC: VCallAd Control_ID_DetaPartLbl
  loc_B52BDF: FStAdFunc var_88
  loc_B52BE2: FLdPr var_88
  loc_B52BE5: Me.Caption = from_stack_1
  loc_B52BEA: FFree1Str var_A4
  loc_B52BED: FFree1Ad var_88
  loc_B52BF0: FLdPr Me
  loc_B52BF3: VCallAd Control_ID_CodiPartMsk
  loc_B52BF6: FStAdFunc var_D0
  loc_B52BF9: FLdPr Me
  loc_B52BFC: VCallAd Control_ID_DetaPartLbl
  loc_B52BFF: FStAdFunc var_BC
  loc_B52C02: FLdRfVar var_BC
  loc_B52C05: FLdZeroAd var_D0
  loc_B52C08: FStAdFuncNoPop
  loc_B52C0B: CastAd
  loc_B52C0E: FStAdFunc var_90
  loc_B52C11: FLdRfVar var_90
  loc_B52C14: FLdPr Me
  loc_B52C17: MemLdRfVar from_stack_1.global_72
  loc_B52C1A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B52C1F: IStI2 Button
  loc_B52C22: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B52C2D: Branch loc_B52C77
  loc_B52C30: LitStr "La Partida NO EXISTE. Verifique..."
  loc_B52C33: FLdPr Me
  loc_B52C36: MemStStrCopy
  loc_B52C3A: FLdPr Me
  loc_B52C3D: VCallAd Control_ID_CodiPartMsk
  loc_B52C40: FStAdFunc var_D0
  loc_B52C43: FLdPr Me
  loc_B52C46: VCallAd Control_ID_DetaPartLbl
  loc_B52C49: FStAdFunc var_BC
  loc_B52C4C: FLdRfVar var_BC
  loc_B52C4F: FLdZeroAd var_D0
  loc_B52C52: FStAdFuncNoPop
  loc_B52C55: CastAd
  loc_B52C58: FStAdFunc var_90
  loc_B52C5B: FLdRfVar var_90
  loc_B52C5E: FLdPr Me
  loc_B52C61: MemLdRfVar from_stack_1.global_72
  loc_B52C64: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B52C69: IStI2 Button
  loc_B52C6C: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_B52C77: ILdI2 Button
  loc_B52C7A: NotI4
  loc_B52C7B: BranchF loc_B52C81
  loc_B52C7E: Branch loc_B52C9B
  loc_B52C81: LitVarStr var_CC, vbNullString
  loc_B52C86: PopAdLdVar
  loc_B52C87: FLdPr Me
  loc_B52C8A: VCallAd Control_ID_CodiPartMsk
  loc_B52C8D: FStAdFunc var_88
  loc_B52C90: FLdPr var_88
  loc_B52C93: LateIdSt
  loc_B52C98: FFree1Ad var_88
  loc_B52C9B: ExitProcHresult
End Sub

Private Sub CodiPartMsk_KeyPress(KeyAscii As Integer) '9AE894
  'Data Table: 49CE84
  loc_9AE7F4: FLdPr Me
  loc_9AE7F7: VCallAd Control_ID_CodiPartMsk
  loc_9AE7FA: FStAdFunc var_88
  loc_9AE7FD: FLdPr var_88
  loc_9AE800: LateIdLdVar var_98 DispID_22 0
  loc_9AE807: PopAd
  loc_9AE809: LitI4 0
  loc_9AE80E: LitI4 -1
  loc_9AE813: LitI4 1
  loc_9AE818: LitStr vbNullString
  loc_9AE81B: LitStr "."
  loc_9AE81E: FLdRfVar var_98
  loc_9AE821: CStrVarTmp
  loc_9AE822: FStStrNoPop var_9C
  loc_9AE825: ImpAdCallI2 Replace(, , , , , )
  loc_9AE82A: FStStrNoPop var_A0
  loc_9AE82D: FnLenStr
  loc_9AE82E: LitI2_Byte 8
  loc_9AE830: CI2UI1
  loc_9AE832: LitI2_Byte 1
  loc_9AE834: SubI2
  loc_9AE835: CI4UI1
  loc_9AE836: GtI4
  loc_9AE837: FFreeStr var_9C = ""
  loc_9AE83E: FFree1Ad var_88
  loc_9AE841: FFree1Var var_98 = ""
  loc_9AE844: BranchF loc_9AE892
  loc_9AE847: FLdPr Me
  loc_9AE84A: VCallAd Control_ID_CodiPartMsk
  loc_9AE84D: FStAdFunc var_88
  loc_9AE850: FLdRfVar var_88
  loc_9AE853: ImpAdCallI2  = Proc_266_40_A1E128()
  loc_9AE858: FFree1Ad var_88
  loc_9AE85B: BranchF loc_9AE892
  loc_9AE85E: ILdI2 KeyAscii
  loc_9AE861: CI4UI1
  loc_9AE862: LitI4 8
  loc_9AE867: NeI4
  loc_9AE868: FLdPr Me
  loc_9AE86B: VCallAd Control_ID_CodiPartMsk
  loc_9AE86E: FStAdFunc var_88
  loc_9AE871: FLdPr var_88
  loc_9AE874: LateIdLdVar var_98 DispID_17 0
  loc_9AE87B: CI4Var
  loc_9AE87D: LitI4 0
  loc_9AE882: EqI4
  loc_9AE883: AndI4
  loc_9AE884: FFree1Ad var_88
  loc_9AE887: FFree1Var var_98 = ""
  loc_9AE88A: BranchF loc_9AE892
  loc_9AE88D: LitI2_Byte 0
  loc_9AE88F: IStI2 KeyAscii
  loc_9AE892: ExitProcHresult
End Sub

Private Sub CodiPartMsk_KeyUp(KeyCode As Integer, Shift As Integer) 'A077A4
  'Data Table: 49CE84
  loc_A0764C: ILdI2 Shift
  loc_A0764F: CI4UI1
  loc_A07650: LitI4 2
  loc_A07655: EqI4
  loc_A07656: ILdI2 KeyCode
  loc_A07659: CI4UI1
  loc_A0765A: LitI4 &H42
  loc_A0765F: EqI4
  loc_A07660: AndI4
  loc_A07661: BranchF loc_A077A2
  loc_A07664: LitI4 1
  loc_A07669: ImpAdLdRf MemVar_C3D724
  loc_A0766C: NewIfNullPr bscPartida
  loc_A0766F: Call bscPartida.iCodiInsuPut(from_stack_1v)
  loc_A07674: LitNothing
  loc_A07676: CastAd
  loc_A07679: FStAdFuncNoPop
  loc_A0767C: ImpAdLdRf MemVar_C3D724
  loc_A0767F: NewIfNullPr bscPartida
  loc_A07682: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_A07687: FFree1Ad var_88
  loc_A0768A: LitVar_Missing var_A8
  loc_A0768D: PopAdLdVar
  loc_A0768E: LitVarI4
  loc_A07696: PopAdLdVar
  loc_A07697: ImpAdLdRf MemVar_C3D724
  loc_A0769A: NewIfNullPr bscPartida
  loc_A0769D: bscPartida.Show from_stack_1, from_stack_2
  loc_A076A2: FLdRfVar var_AC
  loc_A076A5: FLdRfVar var_88
  loc_A076A8: ImpAdLdRf MemVar_C3D724
  loc_A076AB: NewIfNullPr bscPartida
  loc_A076AE: from_stack_1v = bscPartida.global_4332396Get()
  loc_A076B3: FLdPr var_88
  loc_A076B6: from_stack_1 = clsbase.RecordCount
  loc_A076BB: ILdRf var_AC
  loc_A076BE: LitI4 0
  loc_A076C3: GtI4
  loc_A076C4: FFree1Ad var_88
  loc_A076C7: BranchF loc_A077A2
  loc_A076CA: FLdRfVar var_C8
  loc_A076CD: FLdRfVar var_B8
  loc_A076D0: LitVarStr var_98, "CodiPart"
  loc_A076D5: PopAdLdVar
  loc_A076D6: FLdRfVar var_B4
  loc_A076D9: FLdRfVar var_B0
  loc_A076DC: FLdRfVar var_88
  loc_A076DF: ImpAdLdRf MemVar_C3D724
  loc_A076E2: NewIfNullPr bscPartida
  loc_A076E5: from_stack_1v = bscPartida.global_4332396Get()
  loc_A076EA: FLdPr var_88
  loc_A076ED: from_stack_1v = clsbase.RsFrmGet()
  loc_A076F2: FLdPr var_B0
  loc_A076F5:  = Me.Fields
  loc_A076FA: FLdPr var_B4
  loc_A076FD: from_stack_2 = Me.Item(from_stack_1)
  loc_A07702: FLdPr var_B8
  loc_A07705:  = Me.Value
  loc_A0770A: FLdRfVar var_C8
  loc_A0770D: CStrVarTmp
  loc_A0770E: CVarStr var_D8
  loc_A07711: PopAdLdVar
  loc_A07712: FLdPr Me
  loc_A07715: VCallAd Control_ID_CodiPartMsk
  loc_A07718: FStAdFunc var_DC
  loc_A0771B: FLdPr var_DC
  loc_A0771E: LateIdSt
  loc_A07723: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A07730: FFreeVar var_C8 = ""
  loc_A07737: FLdRfVar var_C8
  loc_A0773A: FLdRfVar var_B8
  loc_A0773D: LitVarStr var_98, "DetaPart"
  loc_A07742: PopAdLdVar
  loc_A07743: FLdRfVar var_B4
  loc_A07746: FLdRfVar var_B0
  loc_A07749: FLdRfVar var_88
  loc_A0774C: ImpAdLdRf MemVar_C3D724
  loc_A0774F: NewIfNullPr bscPartida
  loc_A07752: from_stack_1v = bscPartida.global_4332396Get()
  loc_A07757: FLdPr var_88
  loc_A0775A: from_stack_1v = clsbase.RsFrmGet()
  loc_A0775F: FLdPr var_B0
  loc_A07762:  = Me.Fields
  loc_A07767: FLdPr var_B4
  loc_A0776A: from_stack_2 = Me.Item(from_stack_1)
  loc_A0776F: FLdPr var_B8
  loc_A07772:  = Me.Value
  loc_A07777: FLdRfVar var_C8
  loc_A0777A: CStrVarTmp
  loc_A0777B: FStStrNoPop var_E0
  loc_A0777E: FLdPr Me
  loc_A07781: VCallAd Control_ID_DetaPartLbl
  loc_A07784: FStAdFunc var_DC
  loc_A07787: FLdPr var_DC
  loc_A0778A: Me.Caption = from_stack_1
  loc_A0778F: FFree1Str var_E0
  loc_A07792: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A0779F: FFree1Var var_C8 = ""
  loc_A077A2: ExitProcHresult
End Sub

Private Sub Form_Load() 'A42D50
  'Data Table: 49CE84
  loc_A42B10: LitI2_Byte 0
  loc_A42B12: CR8I2
  loc_A42B13: PopFPR4
  loc_A42B14: FLdPr Me
  loc_A42B17: Me.Left = from_stack_1s
  loc_A42B1C: LitI2_Byte 0
  loc_A42B1E: CR8I2
  loc_A42B1F: PopFPR4
  loc_A42B20: FLdPr Me
  loc_A42B23: Me.Top = from_stack_1s
  loc_A42B28: LitStr " Imputar Comisiones Bancarias "
  loc_A42B2B: ImpAdLdI2 MemVar_C3D064
  loc_A42B2E: CStrUI1
  loc_A42B30: FStStrNoPop var_88
  loc_A42B33: ConcatStr
  loc_A42B34: FStStrNoPop var_8C
  loc_A42B37: FLdPr Me
  loc_A42B3A: VCallAd Control_ID_Frame
  loc_A42B3D: FStAdFunc var_90
  loc_A42B40: FLdPr var_90
  loc_A42B43: Me.Caption = from_stack_1
  loc_A42B48: FFreeStr var_88 = ""
  loc_A42B4F: FFree1Ad var_90
  loc_A42B52: LitStr "SELECT pc.*, DetaPart, DetaOrga"
  loc_A42B55: LitStr ", CASE MesPaco WHEN 1 THEN 'Enero' WHEN 2 THEN 'Febrero' WHEN 3 THEN 'Marzo' WHEN 4 THEN 'Abril' WHEN 5 THEN 'Mayo' WHEN 6 THEN 'Junio' WHEN 7 THEN 'Julio' WHEN 8 THEN 'Agosto' WHEN 9 THEN 'Septiembre' WHEN 10 THEN 'Octubre' WHEN 11 THEN 'Noviembre' WHEN 12 THEN 'Diciembre' END Mes"
  loc_A42B58: ConcatStr
  loc_A42B59: FStStrNoPop var_88
  loc_A42B5C: LitStr " FROM paracomi pc"
  loc_A42B5F: ConcatStr
  loc_A42B60: FStStrNoPop var_8C
  loc_A42B63: LitStr " INNER JOIN partida p ON p.PeriInfo = pc.PeriInfo AND p.CodiPart = pc.CodiPart"
  loc_A42B66: ConcatStr
  loc_A42B67: FStStrNoPop var_94
  loc_A42B6A: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = pc.PeriInfo AND o.CodiOrga = pc.CodiOrga"
  loc_A42B6D: ConcatStr
  loc_A42B6E: FStStrNoPop var_98
  loc_A42B71: LitStr " WHERE pc.PeriInfo = "
  loc_A42B74: ConcatStr
  loc_A42B75: FStStrNoPop var_9C
  loc_A42B78: ImpAdLdI2 MemVar_C3D064
  loc_A42B7B: CStrUI1
  loc_A42B7D: FStStrNoPop var_A0
  loc_A42B80: ConcatStr
  loc_A42B81: FStStrNoPop var_A4
  loc_A42B84: LitStr " ORDER BY MesPaco;"
  loc_A42B87: ConcatStr
  loc_A42B88: FStStrNoPop var_A8
  loc_A42B8B: FLdPr Me
  loc_A42B8E: MemLdRfVar from_stack_1.global_52
  loc_A42B91: NewIfNullPr clsparacomi
  loc_A42B94: Call clsparacomi.RedefineRS(from_stack_1v)
  loc_A42B99: FFreeStr var_88 = "": var_8C = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A42BAC: LitI2_Byte 1
  loc_A42BAE: CUI1I2
  loc_A42BB0: FLdPr Me
  loc_A42BB3: MemLdRfVar from_stack_1.global_84
  loc_A42BB6: LitI2_Byte &HC
  loc_A42BB8: CUI1I2
  loc_A42BBA: ForUI1 var_AC
  loc_A42BC0: LitVar_Missing var_BC
  loc_A42BC3: PopAdLdVar
  loc_A42BC4: LitI2_Byte 0
  loc_A42BC6: FLdPr Me
  loc_A42BC9: MemLdUI1 global_84
  loc_A42BCD: CI4UI1
  loc_A42BCE: ImpAdCallI2 MonthName(, )
  loc_A42BD3: FStStrNoPop var_88
  loc_A42BD6: FLdPr Me
  loc_A42BD9: VCallAd Control_ID_cboMes
  loc_A42BDC: FStAdFunc var_90
  loc_A42BDF: FLdPr var_90
  loc_A42BE2: Me.AddItem from_stack_1, from_stack_2
  loc_A42BE7: FFree1Str var_88
  loc_A42BEA: FFree1Ad var_90
  loc_A42BED: FLdPr Me
  loc_A42BF0: MemLdUI1 global_84
  loc_A42BF4: CI4UI1
  loc_A42BF5: FLdRfVar var_BE
  loc_A42BF8: FLdPr Me
  loc_A42BFB: VCallAd Control_ID_cboMes
  loc_A42BFE: FStAdFunc var_90
  loc_A42C01: FLdPr var_90
  loc_A42C04:  = Me.NewIndex
  loc_A42C09: FLdI2 var_BE
  loc_A42C0C: FLdPr Me
  loc_A42C0F: VCallAd Control_ID_cboMes
  loc_A42C12: FStAdFunc var_C4
  loc_A42C15: FLdPr var_C4
  loc_A42C18: Me.ItemData = from_stack_1
  loc_A42C1D: FFreeAd var_90 = ""
  loc_A42C24: FLdPr Me
  loc_A42C27: MemLdRfVar from_stack_1.global_84
  loc_A42C2A: NextUI1
  loc_A42C30: Call cmdCancelar_Click()
  loc_A42C35: LitI4 0
  loc_A42C3A: LitI4 1
  loc_A42C3F: FLdRfVar var_C8
  loc_A42C42: Redim
  loc_A42C4C: FLdPr Me
  loc_A42C4F: MemLdRfVar from_stack_1.global_52
  loc_A42C52: NewIfNullAd
  loc_A42C55: FStAd var_90 
  loc_A42C59: FLdRfVar var_90
  loc_A42C5C: CVarRef
  loc_A42C61: ParmAry1St
  loc_A42C67: FLdPr Me
  loc_A42C6A: VCallAd Control_ID_dgdABMS
  loc_A42C6D: CVarAd
  loc_A42C71: ParmAry1St
  loc_A42C77: FLdRfVar var_C8
  loc_A42C7A: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A42C7F: ILdRf var_90
  loc_A42C82: CastAd
  loc_A42C85: FLdPr Me
  loc_A42C88: MemStAdFunc
  loc_A42C8C: FLdRfVar var_C8
  loc_A42C8F: Erase
  loc_A42C90: FFree1Ad var_90
  loc_A42C93: LitI4 0
  loc_A42C98: LitI4 1
  loc_A42C9D: FLdRfVar var_C8
  loc_A42CA0: Redim
  loc_A42CAA: FLdPr Me
  loc_A42CAD: MemLdRfVar from_stack_1.global_56
  loc_A42CB0: NewIfNullAd
  loc_A42CB3: FStAd var_90 
  loc_A42CB7: FLdRfVar var_90
  loc_A42CBA: CVarRef
  loc_A42CBF: ParmAry1St
  loc_A42CC5: FLdPr Me
  loc_A42CC8: VCallAd Control_ID_dgdABMS2
  loc_A42CCB: CVarAd
  loc_A42CCF: ParmAry1St
  loc_A42CD5: FLdRfVar var_C8
  loc_A42CD8: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A42CDD: ILdRf var_90
  loc_A42CE0: CastAd
  loc_A42CE3: FLdPr Me
  loc_A42CE6: MemStAdFunc
  loc_A42CEA: FLdRfVar var_C8
  loc_A42CED: Erase
  loc_A42CEE: FFree1Ad var_90
  loc_A42CF1: LitI4 0
  loc_A42CF6: LitI4 1
  loc_A42CFB: FLdRfVar var_C8
  loc_A42CFE: Redim
  loc_A42D08: FLdPr Me
  loc_A42D0B: MemLdRfVar from_stack_1.global_60
  loc_A42D0E: NewIfNullAd
  loc_A42D11: FStAd var_90 
  loc_A42D15: FLdRfVar var_90
  loc_A42D18: CVarRef
  loc_A42D1D: ParmAry1St
  loc_A42D23: FLdPr Me
  loc_A42D26: VCallAd Control_ID_dgdABMS3
  loc_A42D29: CVarAd
  loc_A42D2D: ParmAry1St
  loc_A42D33: FLdRfVar var_C8
  loc_A42D36: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A42D3B: ILdRf var_90
  loc_A42D3E: CastAd
  loc_A42D41: FLdPr Me
  loc_A42D44: MemStAdFunc
  loc_A42D48: FLdRfVar var_C8
  loc_A42D4B: Erase
  loc_A42D4C: FFree1Ad var_90
  loc_A42D4F: ExitProcHresult
End Sub

Private Sub Form_Activate() '99897C
  'Data Table: 49CE84
  loc_998920: FLdRfVar var_C2
  loc_998923: FLdRfVar var_C0
  loc_998926: LitVarI2 var_B8, 1
  loc_99892B: FLdPr Me
  loc_99892E: VCallAd Control_ID_tlbABMS
  loc_998931: FStAdFunc var_88
  loc_998934: FLdPr var_88
  loc_998937: LateIdLdVar var_98 DispID_3 0
  loc_99893E: CastAdVar Me
  loc_998942: FStAdFunc var_BC
  loc_998945: FLdPr var_BC
  loc_998948:  = Me.Buttons.ControlDefault
  loc_99894D: FLdPr var_C0
  loc_998950:  = Me.Enabled
  loc_998955: FLdI2 var_C2
  loc_998958: FFreeAd var_88 = "": var_BC = ""
  loc_998961: FFreeVar var_98 = ""
  loc_998968: BranchF loc_998979
  loc_99896B: FLdPr Me
  loc_99896E: MemLdRfVar from_stack_1.global_52
  loc_998971: NewIfNullPr clsparacomi
  loc_998974: Call clsparacomi.Requery()
  loc_998979: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '953E04
  'Data Table: 49CE84
  loc_953DEC: ILdI2 KeyCode
  loc_953DEF: ILdRf Me
  loc_953DF2: CastAd
  loc_953DF5: FStAdFunc var_88
  loc_953DF8: FLdRfVar var_88
  loc_953DFB: ImpAdCallFPR4  = Proc_261_3_A7CAFC()
  loc_953E00: FFree1Ad var_88
  loc_953E03: ExitProcHresult
End Sub

Private Sub ExorImpuMsk_UnknownEvent_0 '94CB90
  'Data Table: 49CE84
  loc_94CB7C: FLdPr Me
  loc_94CB7F: VCallAd Control_ID_ExorImpuMsk
  loc_94CB82: CVarAd
  loc_94CB86: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94CB8B: FFree1Var var_94 = ""
  loc_94CB8E: ExitProcHresult
End Sub

Private Sub ExorImpuMsk_UnknownEvent_8 '9C4768
  'Data Table: 49CE84
  loc_9C46A4: FLdRfVar var_8A
  loc_9C46A7: FLdPr Me
  loc_9C46AA: VCallAd Control_ID_cmdCancelar
  loc_9C46AD: FStAdFunc var_88
  loc_9C46B0: FLdPr var_88
  loc_9C46B3:  = Me.Value
  loc_9C46B8: FLdI2 var_8A
  loc_9C46BB: NotI4
  loc_9C46BC: FLdPr Me
  loc_9C46BF: VCallAd Control_ID_ExorImpuMsk
  loc_9C46C2: FStAdFunc var_90
  loc_9C46C5: FLdPr var_90
  loc_9C46C8: LateIdLdVar var_A0 DispID_13 -32767
  loc_9C46CF: CBoolVar
  loc_9C46D1: AndI4
  loc_9C46D2: FFreeAd var_88 = ""
  loc_9C46D9: FFree1Var var_A0 = ""
  loc_9C46DC: BranchF loc_9C4765
  loc_9C46DF: FLdPr Me
  loc_9C46E2: VCallAd Control_ID_ExorImpuMsk
  loc_9C46E5: FStAdFunc var_88
  loc_9C46E8: FLdPr var_88
  loc_9C46EB: LateIdLdVar var_A0 DispID_15 0
  loc_9C46F2: PopAd
  loc_9C46F4: LitI2_Byte 0
  loc_9C46F6: PopTmpLdAd2 var_A8
  loc_9C46F9: LitI2_Byte 0
  loc_9C46FB: PopTmpLdAd2 var_A6
  loc_9C46FE: LitI2_Byte 0
  loc_9C4700: PopTmpLdAd2 var_8A
  loc_9C4703: FLdRfVar var_A0
  loc_9C4706: CStrVarTmp
  loc_9C4707: FStStrNoPop var_A4
  loc_9C470A: LitStr "Expediente Original"
  loc_9C470D: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9C4712: FStStrNoPop var_AC
  loc_9C4715: FLdPr Me
  loc_9C4718: MemStStrCopy
  loc_9C471C: FFreeStr var_A4 = ""
  loc_9C4723: FFree1Ad var_88
  loc_9C4726: FFree1Var var_A0 = ""
  loc_9C4729: FLdPr Me
  loc_9C472C: VCallAd Control_ID_ExorImpuMsk
  loc_9C472F: FStAdFunc var_B4
  loc_9C4732: LitNothing
  loc_9C4734: CastAd
  loc_9C4737: FStAdFunc var_B0
  loc_9C473A: FLdRfVar var_B0
  loc_9C473D: FLdZeroAd var_B4
  loc_9C4740: FStAdFuncNoPop
  loc_9C4743: CastAd
  loc_9C4746: FStAdFunc var_90
  loc_9C4749: FLdRfVar var_90
  loc_9C474C: FLdPr Me
  loc_9C474F: MemLdRfVar from_stack_1.global_72
  loc_9C4752: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C4757: IStI2 KeyCode
  loc_9C475A: FFreeAd var_88 = "": var_90 = "": var_B0 = ""
  loc_9C4765: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '9A0AC0
  'Data Table: 49CE84
  loc_9A0A50: LitVarStr var_94, vbNullString
  loc_9A0A55: PopAdLdVar
  loc_9A0A56: FLdPr Me
  loc_9A0A59: VCallAd Control_ID_CodiOrgaMsk
  loc_9A0A5C: FStAdFunc var_A8
  loc_9A0A5F: FLdPr var_A8
  loc_9A0A62: LateIdSt
  loc_9A0A67: FFree1Ad var_A8
  loc_9A0A6A: FLdPr Me
  loc_9A0A6D: VCallAd Control_ID_CodiOrgaMsk
  loc_9A0A70: FStAdFunc var_A8
  loc_9A0A73: FLdPr var_A8
  loc_9A0A76: LateIdLdVar var_B8 DispID_22 0
  loc_9A0A7D: CStrVarTmp
  loc_9A0A7E: FStStrNoPop var_BC
  loc_9A0A81: LitStr vbNullString
  loc_9A0A84: EqStr
  loc_9A0A86: FFree1Str var_BC
  loc_9A0A89: FFree1Ad var_A8
  loc_9A0A8C: FFree1Var var_B8 = ""
  loc_9A0A8F: BranchF loc_9A0AAC
  loc_9A0A92: LitVarStr var_94, vbNullString
  loc_9A0A97: PopAdLdVar
  loc_9A0A98: FLdPr Me
  loc_9A0A9B: VCallAd Control_ID_CodiOrgaMsk
  loc_9A0A9E: FStAdFunc var_A8
  loc_9A0AA1: FLdPr var_A8
  loc_9A0AA4: LateIdSt
  loc_9A0AA9: FFree1Ad var_A8
  loc_9A0AAC: FLdPr Me
  loc_9A0AAF: VCallAd Control_ID_CodiOrgaMsk
  loc_9A0AB2: CVarAd
  loc_9A0AB6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9A0ABB: FFree1Var var_B8 = ""
  loc_9A0ABE: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_1 '969B9C
  'Data Table: 49CE84
  loc_969B80: LitVarStr var_94, "######"
  loc_969B85: PopAdLdVar
  loc_969B86: FLdPr Me
  loc_969B89: VCallAd Control_ID_CodiOrgaMsk
  loc_969B8C: FStAdFunc var_A8
  loc_969B8F: FLdPr var_A8
  loc_969B92: LateIdSt
  loc_969B97: FFree1Ad var_A8
  loc_969B9A: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'B55980
  'Data Table: 49CE84
  loc_B54E98: FLdRfVar var_8A
  loc_B54E9B: FLdPr Me
  loc_B54E9E: VCallAd Control_ID_cmdCancelar
  loc_B54EA1: FStAdFunc var_88
  loc_B54EA4: FLdPr var_88
  loc_B54EA7:  = Me.Value
  loc_B54EAC: FLdI2 var_8A
  loc_B54EAF: NotI4
  loc_B54EB0: FLdPr Me
  loc_B54EB3: VCallAd Control_ID_CodiOrgaMsk
  loc_B54EB6: FStAdFunc var_90
  loc_B54EB9: FLdPr var_90
  loc_B54EBC: LateIdLdVar var_A0 DispID_13 -32767
  loc_B54EC3: CBoolVar
  loc_B54EC5: AndI4
  loc_B54EC6: FFreeAd var_88 = ""
  loc_B54ECD: FFree1Var var_A0 = ""
  loc_B54ED0: BranchF loc_B5597F
  loc_B54ED3: FLdPr Me
  loc_B54ED6: VCallAd Control_ID_CodiOrgaMsk
  loc_B54ED9: FStAdFunc var_88
  loc_B54EDC: FLdPr var_88
  loc_B54EDF: LateIdLdVar var_A0 DispID_22 0
  loc_B54EE6: CStrVarTmp
  loc_B54EE7: FStStrNoPop var_A4
  loc_B54EEA: ImpAdCallI2 Trim$()
  loc_B54EEF: FStStrNoPop var_A8
  loc_B54EF2: LitStr vbNullString
  loc_B54EF5: NeStr
  loc_B54EF7: FFreeStr var_A4 = ""
  loc_B54EFE: FFree1Ad var_88
  loc_B54F01: FFree1Var var_A0 = ""
  loc_B54F04: BranchF loc_B55764
  loc_B54F07: FLdPr Me
  loc_B54F0A: VCallAd Control_ID_CodiOrgaMsk
  loc_B54F0D: FStAdFunc var_88
  loc_B54F10: FLdRfVar var_88
  loc_B54F13: ImpAdCallI2  = Proc_266_40_A1E128()
  loc_B54F18: FFree1Ad var_88
  loc_B54F1B: BranchF loc_B55341
  loc_B54F1E: FLdPr Me
  loc_B54F21: VCallAd Control_ID_CodiOrgaMsk
  loc_B54F24: FStAdFunc var_88
  loc_B54F27: FLdPr var_88
  loc_B54F2A: LateIdLdVar var_A0 DispID_22 0
  loc_B54F31: PopAd
  loc_B54F33: LitStr " AND o.CodiOrga = '"
  loc_B54F36: LitI4 0
  loc_B54F3B: LitI4 -1
  loc_B54F40: LitI4 1
  loc_B54F45: LitStr vbNullString
  loc_B54F48: LitStr "."
  loc_B54F4B: FLdRfVar var_A0
  loc_B54F4E: CStrVarTmp
  loc_B54F4F: FStStrNoPop var_A4
  loc_B54F52: ImpAdCallI2 Replace(, , , , , )
  loc_B54F57: FStStrNoPop var_A8
  loc_B54F5A: ConcatStr
  loc_B54F5B: FStStrNoPop var_AC
  loc_B54F5E: LitStr "'"
  loc_B54F61: ConcatStr
  loc_B54F62: FStStrNoPop var_B0
  loc_B54F65: ImpAdLdI2 MemVar_C3D064
  loc_B54F68: ImpAdLdRf MemVar_C3D710
  loc_B54F6B: NewIfNullPr bscOrganigrama
  loc_B54F6E: Call bscOrganigrama.Constructor(from_stack_1v, from_stack_2v)
  loc_B54F73: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_B54F7E: FFree1Ad var_88
  loc_B54F81: FFree1Var var_A0 = ""
  loc_B54F84: FLdRfVar var_B4
  loc_B54F87: FLdRfVar var_90
  loc_B54F8A: FLdRfVar var_88
  loc_B54F8D: ImpAdLdRf MemVar_C3D710
  loc_B54F90: NewIfNullPr bscOrganigrama
  loc_B54F93: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B54F98: FLdPr var_88
  loc_B54F9B: from_stack_1v = clsbase.RsFrmGet()
  loc_B54FA0: FLdPr var_90
  loc_B54FA3:  = Me.RecordCount
  loc_B54FA8: ILdRf var_B4
  loc_B54FAB: LitI4 1
  loc_B54FB0: EqI4
  loc_B54FB1: FFreeAd var_88 = ""
  loc_B54FB8: BranchF loc_B550DD
  loc_B54FBB: FLdRfVar var_A0
  loc_B54FBE: FLdRfVar var_CC
  loc_B54FC1: LitVarStr var_C8, "CodiOrga"
  loc_B54FC6: PopAdLdVar
  loc_B54FC7: FLdRfVar var_B8
  loc_B54FCA: FLdRfVar var_90
  loc_B54FCD: FLdRfVar var_88
  loc_B54FD0: ImpAdLdRf MemVar_C3D710
  loc_B54FD3: NewIfNullPr bscOrganigrama
  loc_B54FD6: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B54FDB: FLdPr var_88
  loc_B54FDE: from_stack_1v = clsbase.RsFrmGet()
  loc_B54FE3: FLdPr var_90
  loc_B54FE6:  = Me.Fields
  loc_B54FEB: FLdPr var_B8
  loc_B54FEE: from_stack_2 = Me.Item(from_stack_1)
  loc_B54FF3: FLdPr var_CC
  loc_B54FF6:  = Me.Value
  loc_B54FFB: FLdRfVar var_A4
  loc_B54FFE: FLdPr Me
  loc_B55001:  = Me.Name
  loc_B55006: FLdPr Me
  loc_B55009: MemLdRfVar from_stack_1.global_80
  loc_B5500C: NewIfNullRf
  loc_B55010: ILdRf var_A4
  loc_B55013: FLdRfVar var_A0
  loc_B55016: CStrVarTmp
  loc_B55017: FStStrNoPop var_A8
  loc_B5501A: ImpAdLdI2 MemVar_C3D064
  loc_B5501D: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B55022: FStStrNoPop var_AC
  loc_B55025: FLdPr Me
  loc_B55028: MemStStrCopy
  loc_B5502C: FFreeStr var_A8 = "": var_A4 = ""
  loc_B55035: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B55040: FFree1Var var_A0 = ""
  loc_B55043: FLdRfVar var_A4
  loc_B55046: FLdPr Me
  loc_B55049: MemLdRfVar from_stack_1.global_80
  loc_B5504C: NewIfNullPr tblorganigrama
  loc_B5504F: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B55054: FLdZeroAd var_A4
  loc_B55057: CVarStr var_A0
  loc_B5505A: PopAdLdVar
  loc_B5505B: FLdPr Me
  loc_B5505E: VCallAd Control_ID_CodiOrgaMsk
  loc_B55061: FStAdFunc var_88
  loc_B55064: FLdPr var_88
  loc_B55067: LateIdSt
  loc_B5506C: FFree1Ad var_88
  loc_B5506F: FFree1Var var_A0 = ""
  loc_B55072: FLdRfVar var_A4
  loc_B55075: FLdPr Me
  loc_B55078: MemLdRfVar from_stack_1.global_80
  loc_B5507B: NewIfNullPr tblorganigrama
  loc_B5507E: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B55083: ILdRf var_A4
  loc_B55086: FLdPr Me
  loc_B55089: VCallAd Control_ID_DetaOrgaLbl
  loc_B5508C: FStAdFunc var_88
  loc_B5508F: FLdPr var_88
  loc_B55092: Me.Caption = from_stack_1
  loc_B55097: FFree1Str var_A4
  loc_B5509A: FFree1Ad var_88
  loc_B5509D: FLdPr Me
  loc_B550A0: VCallAd Control_ID_CodiOrgaMsk
  loc_B550A3: FStAdFunc var_CC
  loc_B550A6: FLdPr Me
  loc_B550A9: VCallAd Control_ID_DetaOrgaLbl
  loc_B550AC: FStAdFunc var_B8
  loc_B550AF: FLdRfVar var_B8
  loc_B550B2: FLdZeroAd var_CC
  loc_B550B5: FStAdFuncNoPop
  loc_B550B8: CastAd
  loc_B550BB: FStAdFunc var_90
  loc_B550BE: FLdRfVar var_90
  loc_B550C1: FLdPr Me
  loc_B550C4: MemLdRfVar from_stack_1.global_72
  loc_B550C7: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B550CC: IStI2 KeyCode
  loc_B550CF: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B550DA: Branch loc_B5533E
  loc_B550DD: FLdRfVar var_B4
  loc_B550E0: FLdRfVar var_90
  loc_B550E3: FLdRfVar var_88
  loc_B550E6: ImpAdLdRf MemVar_C3D710
  loc_B550E9: NewIfNullPr bscOrganigrama
  loc_B550EC: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B550F1: FLdPr var_88
  loc_B550F4: from_stack_1v = clsbase.RsFrmGet()
  loc_B550F9: FLdPr var_90
  loc_B550FC:  = Me.RecordCount
  loc_B55101: ILdRf var_B4
  loc_B55104: LitI4 1
  loc_B55109: GtI4
  loc_B5510A: FFreeAd var_88 = ""
  loc_B55111: BranchF loc_B552C0
  loc_B55114: LitVar_Missing var_DC
  loc_B55117: PopAdLdVar
  loc_B55118: LitVarI4
  loc_B55120: PopAdLdVar
  loc_B55121: ImpAdLdRf MemVar_C3D710
  loc_B55124: NewIfNullPr bscOrganigrama
  loc_B55127: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B5512C: FLdRfVar var_B4
  loc_B5512F: FLdRfVar var_88
  loc_B55132: ImpAdLdRf MemVar_C3D710
  loc_B55135: NewIfNullPr bscOrganigrama
  loc_B55138: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B5513D: FLdPr var_88
  loc_B55140: from_stack_1 = clsbase.RecordCount
  loc_B55145: ILdRf var_B4
  loc_B55148: LitI4 0
  loc_B5514D: GtI4
  loc_B5514E: FFree1Ad var_88
  loc_B55151: BranchF loc_B55276
  loc_B55154: FLdRfVar var_A0
  loc_B55157: FLdRfVar var_CC
  loc_B5515A: LitVarStr var_C8, "CodiOrga"
  loc_B5515F: PopAdLdVar
  loc_B55160: FLdRfVar var_B8
  loc_B55163: FLdRfVar var_90
  loc_B55166: FLdRfVar var_88
  loc_B55169: ImpAdLdRf MemVar_C3D710
  loc_B5516C: NewIfNullPr bscOrganigrama
  loc_B5516F: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B55174: FLdPr var_88
  loc_B55177: from_stack_1v = clsbase.RsFrmGet()
  loc_B5517C: FLdPr var_90
  loc_B5517F:  = Me.Fields
  loc_B55184: FLdPr var_B8
  loc_B55187: from_stack_2 = Me.Item(from_stack_1)
  loc_B5518C: FLdPr var_CC
  loc_B5518F:  = Me.Value
  loc_B55194: FLdRfVar var_A4
  loc_B55197: FLdPr Me
  loc_B5519A:  = Me.Name
  loc_B5519F: FLdPr Me
  loc_B551A2: MemLdRfVar from_stack_1.global_80
  loc_B551A5: NewIfNullRf
  loc_B551A9: ILdRf var_A4
  loc_B551AC: FLdRfVar var_A0
  loc_B551AF: CStrVarTmp
  loc_B551B0: FStStrNoPop var_A8
  loc_B551B3: ImpAdLdI2 MemVar_C3D064
  loc_B551B6: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B551BB: FStStrNoPop var_AC
  loc_B551BE: FLdPr Me
  loc_B551C1: MemStStrCopy
  loc_B551C5: FFreeStr var_A8 = "": var_A4 = ""
  loc_B551CE: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B551D9: FFree1Var var_A0 = ""
  loc_B551DC: FLdRfVar var_A4
  loc_B551DF: FLdPr Me
  loc_B551E2: MemLdRfVar from_stack_1.global_80
  loc_B551E5: NewIfNullPr tblorganigrama
  loc_B551E8: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B551ED: FLdZeroAd var_A4
  loc_B551F0: CVarStr var_A0
  loc_B551F3: PopAdLdVar
  loc_B551F4: FLdPr Me
  loc_B551F7: VCallAd Control_ID_CodiOrgaMsk
  loc_B551FA: FStAdFunc var_88
  loc_B551FD: FLdPr var_88
  loc_B55200: LateIdSt
  loc_B55205: FFree1Ad var_88
  loc_B55208: FFree1Var var_A0 = ""
  loc_B5520B: FLdRfVar var_A4
  loc_B5520E: FLdPr Me
  loc_B55211: MemLdRfVar from_stack_1.global_80
  loc_B55214: NewIfNullPr tblorganigrama
  loc_B55217: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B5521C: ILdRf var_A4
  loc_B5521F: FLdPr Me
  loc_B55222: VCallAd Control_ID_DetaOrgaLbl
  loc_B55225: FStAdFunc var_88
  loc_B55228: FLdPr var_88
  loc_B5522B: Me.Caption = from_stack_1
  loc_B55230: FFree1Str var_A4
  loc_B55233: FFree1Ad var_88
  loc_B55236: FLdPr Me
  loc_B55239: VCallAd Control_ID_CodiOrgaMsk
  loc_B5523C: FStAdFunc var_CC
  loc_B5523F: FLdPr Me
  loc_B55242: VCallAd Control_ID_DetaOrgaLbl
  loc_B55245: FStAdFunc var_B8
  loc_B55248: FLdRfVar var_B8
  loc_B5524B: FLdZeroAd var_CC
  loc_B5524E: FStAdFuncNoPop
  loc_B55251: CastAd
  loc_B55254: FStAdFunc var_90
  loc_B55257: FLdRfVar var_90
  loc_B5525A: FLdPr Me
  loc_B5525D: MemLdRfVar from_stack_1.global_72
  loc_B55260: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B55265: IStI2 KeyCode
  loc_B55268: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B55273: Branch loc_B552BD
  loc_B55276: LitStr "El Organigrama NO EXISTE. Verifique..."
  loc_B55279: FLdPr Me
  loc_B5527C: MemStStrCopy
  loc_B55280: FLdPr Me
  loc_B55283: VCallAd Control_ID_CodiOrgaMsk
  loc_B55286: FStAdFunc var_CC
  loc_B55289: FLdPr Me
  loc_B5528C: VCallAd Control_ID_DetaOrgaLbl
  loc_B5528F: FStAdFunc var_B8
  loc_B55292: FLdRfVar var_B8
  loc_B55295: FLdZeroAd var_CC
  loc_B55298: FStAdFuncNoPop
  loc_B5529B: CastAd
  loc_B5529E: FStAdFunc var_90
  loc_B552A1: FLdRfVar var_90
  loc_B552A4: FLdPr Me
  loc_B552A7: MemLdRfVar from_stack_1.global_72
  loc_B552AA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B552AF: IStI2 KeyCode
  loc_B552B2: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B552BD: Branch loc_B5533E
  loc_B552C0: FLdRfVar var_B4
  loc_B552C3: FLdRfVar var_90
  loc_B552C6: FLdRfVar var_88
  loc_B552C9: ImpAdLdRf MemVar_C3D710
  loc_B552CC: NewIfNullPr bscOrganigrama
  loc_B552CF: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B552D4: FLdPr var_88
  loc_B552D7: from_stack_1v = clsbase.RsFrmGet()
  loc_B552DC: FLdPr var_90
  loc_B552DF:  = Me.RecordCount
  loc_B552E4: ILdRf var_B4
  loc_B552E7: LitI4 1
  loc_B552EC: LtI4
  loc_B552ED: FFreeAd var_88 = ""
  loc_B552F4: BranchF loc_B5533E
  loc_B552F7: LitStr "El Organigrama NO EXISTE. Verifique..."
  loc_B552FA: FLdPr Me
  loc_B552FD: MemStStrCopy
  loc_B55301: FLdPr Me
  loc_B55304: VCallAd Control_ID_CodiOrgaMsk
  loc_B55307: FStAdFunc var_CC
  loc_B5530A: FLdPr Me
  loc_B5530D: VCallAd Control_ID_DetaOrgaLbl
  loc_B55310: FStAdFunc var_B8
  loc_B55313: FLdRfVar var_B8
  loc_B55316: FLdZeroAd var_CC
  loc_B55319: FStAdFuncNoPop
  loc_B5531C: CastAd
  loc_B5531F: FStAdFunc var_90
  loc_B55322: FLdRfVar var_90
  loc_B55325: FLdPr Me
  loc_B55328: MemLdRfVar from_stack_1.global_72
  loc_B5532B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B55330: IStI2 KeyCode
  loc_B55333: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B5533E: Branch loc_B55761
  loc_B55341: FLdPr Me
  loc_B55344: VCallAd Control_ID_CodiOrgaMsk
  loc_B55347: FStAdFunc var_88
  loc_B5534A: FLdPr var_88
  loc_B5534D: LateIdLdVar var_A0 DispID_22 0
  loc_B55354: PopAd
  loc_B55356: LitStr " AND o.DetaOrga LIKE '" & Chr(37)
  loc_B55359: LitI4 0
  loc_B5535E: LitI4 -1
  loc_B55363: LitI4 1
  loc_B55368: LitStr Chr(37)
  loc_B5536B: LitStr " "
  loc_B5536E: FLdRfVar var_A0
  loc_B55371: CStrVarTmp
  loc_B55372: FStStrNoPop var_A4
  loc_B55375: ImpAdCallI2 Replace(, , , , , )
  loc_B5537A: FStStrNoPop var_A8
  loc_B5537D: ConcatStr
  loc_B5537E: FStStrNoPop var_AC
  loc_B55381: LitStr Chr(37) & "'"
  loc_B55384: ConcatStr
  loc_B55385: FStStrNoPop var_B0
  loc_B55388: ImpAdLdI2 MemVar_C3D064
  loc_B5538B: ImpAdLdRf MemVar_C3D710
  loc_B5538E: NewIfNullPr bscOrganigrama
  loc_B55391: Call bscOrganigrama.Constructor(from_stack_1v, from_stack_2v)
  loc_B55396: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_B553A1: FFree1Ad var_88
  loc_B553A4: FFree1Var var_A0 = ""
  loc_B553A7: FLdRfVar var_B4
  loc_B553AA: FLdRfVar var_90
  loc_B553AD: FLdRfVar var_88
  loc_B553B0: ImpAdLdRf MemVar_C3D710
  loc_B553B3: NewIfNullPr bscOrganigrama
  loc_B553B6: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B553BB: FLdPr var_88
  loc_B553BE: from_stack_1v = clsbase.RsFrmGet()
  loc_B553C3: FLdPr var_90
  loc_B553C6:  = Me.RecordCount
  loc_B553CB: ILdRf var_B4
  loc_B553CE: LitI4 1
  loc_B553D3: EqI4
  loc_B553D4: FFreeAd var_88 = ""
  loc_B553DB: BranchF loc_B55500
  loc_B553DE: FLdRfVar var_A0
  loc_B553E1: FLdRfVar var_CC
  loc_B553E4: LitVarStr var_C8, "CodiOrga"
  loc_B553E9: PopAdLdVar
  loc_B553EA: FLdRfVar var_B8
  loc_B553ED: FLdRfVar var_90
  loc_B553F0: FLdRfVar var_88
  loc_B553F3: ImpAdLdRf MemVar_C3D710
  loc_B553F6: NewIfNullPr bscOrganigrama
  loc_B553F9: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B553FE: FLdPr var_88
  loc_B55401: from_stack_1v = clsbase.RsFrmGet()
  loc_B55406: FLdPr var_90
  loc_B55409:  = Me.Fields
  loc_B5540E: FLdPr var_B8
  loc_B55411: from_stack_2 = Me.Item(from_stack_1)
  loc_B55416: FLdPr var_CC
  loc_B55419:  = Me.Value
  loc_B5541E: FLdRfVar var_A4
  loc_B55421: FLdPr Me
  loc_B55424:  = Me.Name
  loc_B55429: FLdPr Me
  loc_B5542C: MemLdRfVar from_stack_1.global_80
  loc_B5542F: NewIfNullRf
  loc_B55433: ILdRf var_A4
  loc_B55436: FLdRfVar var_A0
  loc_B55439: CStrVarTmp
  loc_B5543A: FStStrNoPop var_A8
  loc_B5543D: ImpAdLdI2 MemVar_C3D064
  loc_B55440: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B55445: FStStrNoPop var_AC
  loc_B55448: FLdPr Me
  loc_B5544B: MemStStrCopy
  loc_B5544F: FFreeStr var_A8 = "": var_A4 = ""
  loc_B55458: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B55463: FFree1Var var_A0 = ""
  loc_B55466: FLdRfVar var_A4
  loc_B55469: FLdPr Me
  loc_B5546C: MemLdRfVar from_stack_1.global_80
  loc_B5546F: NewIfNullPr tblorganigrama
  loc_B55472: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B55477: FLdZeroAd var_A4
  loc_B5547A: CVarStr var_A0
  loc_B5547D: PopAdLdVar
  loc_B5547E: FLdPr Me
  loc_B55481: VCallAd Control_ID_CodiOrgaMsk
  loc_B55484: FStAdFunc var_88
  loc_B55487: FLdPr var_88
  loc_B5548A: LateIdSt
  loc_B5548F: FFree1Ad var_88
  loc_B55492: FFree1Var var_A0 = ""
  loc_B55495: FLdRfVar var_A4
  loc_B55498: FLdPr Me
  loc_B5549B: MemLdRfVar from_stack_1.global_80
  loc_B5549E: NewIfNullPr tblorganigrama
  loc_B554A1: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B554A6: ILdRf var_A4
  loc_B554A9: FLdPr Me
  loc_B554AC: VCallAd Control_ID_DetaOrgaLbl
  loc_B554AF: FStAdFunc var_88
  loc_B554B2: FLdPr var_88
  loc_B554B5: Me.Caption = from_stack_1
  loc_B554BA: FFree1Str var_A4
  loc_B554BD: FFree1Ad var_88
  loc_B554C0: FLdPr Me
  loc_B554C3: VCallAd Control_ID_CodiOrgaMsk
  loc_B554C6: FStAdFunc var_CC
  loc_B554C9: FLdPr Me
  loc_B554CC: VCallAd Control_ID_DetaOrgaLbl
  loc_B554CF: FStAdFunc var_B8
  loc_B554D2: FLdRfVar var_B8
  loc_B554D5: FLdZeroAd var_CC
  loc_B554D8: FStAdFuncNoPop
  loc_B554DB: CastAd
  loc_B554DE: FStAdFunc var_90
  loc_B554E1: FLdRfVar var_90
  loc_B554E4: FLdPr Me
  loc_B554E7: MemLdRfVar from_stack_1.global_72
  loc_B554EA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B554EF: IStI2 KeyCode
  loc_B554F2: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B554FD: Branch loc_B55761
  loc_B55500: FLdRfVar var_B4
  loc_B55503: FLdRfVar var_90
  loc_B55506: FLdRfVar var_88
  loc_B55509: ImpAdLdRf MemVar_C3D710
  loc_B5550C: NewIfNullPr bscOrganigrama
  loc_B5550F: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B55514: FLdPr var_88
  loc_B55517: from_stack_1v = clsbase.RsFrmGet()
  loc_B5551C: FLdPr var_90
  loc_B5551F:  = Me.RecordCount
  loc_B55524: ILdRf var_B4
  loc_B55527: LitI4 1
  loc_B5552C: GtI4
  loc_B5552D: FFreeAd var_88 = ""
  loc_B55534: BranchF loc_B556E3
  loc_B55537: LitVar_Missing var_DC
  loc_B5553A: PopAdLdVar
  loc_B5553B: LitVarI4
  loc_B55543: PopAdLdVar
  loc_B55544: ImpAdLdRf MemVar_C3D710
  loc_B55547: NewIfNullPr bscOrganigrama
  loc_B5554A: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B5554F: FLdRfVar var_B4
  loc_B55552: FLdRfVar var_88
  loc_B55555: ImpAdLdRf MemVar_C3D710
  loc_B55558: NewIfNullPr bscOrganigrama
  loc_B5555B: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B55560: FLdPr var_88
  loc_B55563: from_stack_1 = clsbase.RecordCount
  loc_B55568: ILdRf var_B4
  loc_B5556B: LitI4 0
  loc_B55570: GtI4
  loc_B55571: FFree1Ad var_88
  loc_B55574: BranchF loc_B55699
  loc_B55577: FLdRfVar var_A0
  loc_B5557A: FLdRfVar var_CC
  loc_B5557D: LitVarStr var_C8, "CodiOrga"
  loc_B55582: PopAdLdVar
  loc_B55583: FLdRfVar var_B8
  loc_B55586: FLdRfVar var_90
  loc_B55589: FLdRfVar var_88
  loc_B5558C: ImpAdLdRf MemVar_C3D710
  loc_B5558F: NewIfNullPr bscOrganigrama
  loc_B55592: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B55597: FLdPr var_88
  loc_B5559A: from_stack_1v = clsbase.RsFrmGet()
  loc_B5559F: FLdPr var_90
  loc_B555A2:  = Me.Fields
  loc_B555A7: FLdPr var_B8
  loc_B555AA: from_stack_2 = Me.Item(from_stack_1)
  loc_B555AF: FLdPr var_CC
  loc_B555B2:  = Me.Value
  loc_B555B7: FLdRfVar var_A4
  loc_B555BA: FLdPr Me
  loc_B555BD:  = Me.Name
  loc_B555C2: FLdPr Me
  loc_B555C5: MemLdRfVar from_stack_1.global_80
  loc_B555C8: NewIfNullRf
  loc_B555CC: ILdRf var_A4
  loc_B555CF: FLdRfVar var_A0
  loc_B555D2: CStrVarTmp
  loc_B555D3: FStStrNoPop var_A8
  loc_B555D6: ImpAdLdI2 MemVar_C3D064
  loc_B555D9: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B555DE: FStStrNoPop var_AC
  loc_B555E1: FLdPr Me
  loc_B555E4: MemStStrCopy
  loc_B555E8: FFreeStr var_A8 = "": var_A4 = ""
  loc_B555F1: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B555FC: FFree1Var var_A0 = ""
  loc_B555FF: FLdRfVar var_A4
  loc_B55602: FLdPr Me
  loc_B55605: MemLdRfVar from_stack_1.global_80
  loc_B55608: NewIfNullPr tblorganigrama
  loc_B5560B: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B55610: FLdZeroAd var_A4
  loc_B55613: CVarStr var_A0
  loc_B55616: PopAdLdVar
  loc_B55617: FLdPr Me
  loc_B5561A: VCallAd Control_ID_CodiOrgaMsk
  loc_B5561D: FStAdFunc var_88
  loc_B55620: FLdPr var_88
  loc_B55623: LateIdSt
  loc_B55628: FFree1Ad var_88
  loc_B5562B: FFree1Var var_A0 = ""
  loc_B5562E: FLdRfVar var_A4
  loc_B55631: FLdPr Me
  loc_B55634: MemLdRfVar from_stack_1.global_80
  loc_B55637: NewIfNullPr tblorganigrama
  loc_B5563A: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B5563F: ILdRf var_A4
  loc_B55642: FLdPr Me
  loc_B55645: VCallAd Control_ID_DetaOrgaLbl
  loc_B55648: FStAdFunc var_88
  loc_B5564B: FLdPr var_88
  loc_B5564E: Me.Caption = from_stack_1
  loc_B55653: FFree1Str var_A4
  loc_B55656: FFree1Ad var_88
  loc_B55659: FLdPr Me
  loc_B5565C: VCallAd Control_ID_CodiOrgaMsk
  loc_B5565F: FStAdFunc var_CC
  loc_B55662: FLdPr Me
  loc_B55665: VCallAd Control_ID_DetaOrgaLbl
  loc_B55668: FStAdFunc var_B8
  loc_B5566B: FLdRfVar var_B8
  loc_B5566E: FLdZeroAd var_CC
  loc_B55671: FStAdFuncNoPop
  loc_B55674: CastAd
  loc_B55677: FStAdFunc var_90
  loc_B5567A: FLdRfVar var_90
  loc_B5567D: FLdPr Me
  loc_B55680: MemLdRfVar from_stack_1.global_72
  loc_B55683: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B55688: IStI2 KeyCode
  loc_B5568B: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B55696: Branch loc_B556E0
  loc_B55699: LitStr "El Organigrama NO EXISTE. Verique..."
  loc_B5569C: FLdPr Me
  loc_B5569F: MemStStrCopy
  loc_B556A3: FLdPr Me
  loc_B556A6: VCallAd Control_ID_CodiOrgaMsk
  loc_B556A9: FStAdFunc var_CC
  loc_B556AC: FLdPr Me
  loc_B556AF: VCallAd Control_ID_DetaOrgaLbl
  loc_B556B2: FStAdFunc var_B8
  loc_B556B5: FLdRfVar var_B8
  loc_B556B8: FLdZeroAd var_CC
  loc_B556BB: FStAdFuncNoPop
  loc_B556BE: CastAd
  loc_B556C1: FStAdFunc var_90
  loc_B556C4: FLdRfVar var_90
  loc_B556C7: FLdPr Me
  loc_B556CA: MemLdRfVar from_stack_1.global_72
  loc_B556CD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B556D2: IStI2 KeyCode
  loc_B556D5: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B556E0: Branch loc_B55761
  loc_B556E3: FLdRfVar var_B4
  loc_B556E6: FLdRfVar var_90
  loc_B556E9: FLdRfVar var_88
  loc_B556EC: ImpAdLdRf MemVar_C3D710
  loc_B556EF: NewIfNullPr bscOrganigrama
  loc_B556F2: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B556F7: FLdPr var_88
  loc_B556FA: from_stack_1v = clsbase.RsFrmGet()
  loc_B556FF: FLdPr var_90
  loc_B55702:  = Me.RecordCount
  loc_B55707: ILdRf var_B4
  loc_B5570A: LitI4 1
  loc_B5570F: LtI4
  loc_B55710: FFreeAd var_88 = ""
  loc_B55717: BranchF loc_B55761
  loc_B5571A: LitStr "El organigrama NO EXISTE. Verique..."
  loc_B5571D: FLdPr Me
  loc_B55720: MemStStrCopy
  loc_B55724: FLdPr Me
  loc_B55727: VCallAd Control_ID_CodiOrgaMsk
  loc_B5572A: FStAdFunc var_CC
  loc_B5572D: FLdPr Me
  loc_B55730: VCallAd Control_ID_DetaOrgaLbl
  loc_B55733: FStAdFunc var_B8
  loc_B55736: FLdRfVar var_B8
  loc_B55739: FLdZeroAd var_CC
  loc_B5573C: FStAdFuncNoPop
  loc_B5573F: CastAd
  loc_B55742: FStAdFunc var_90
  loc_B55745: FLdRfVar var_90
  loc_B55748: FLdPr Me
  loc_B5574B: MemLdRfVar from_stack_1.global_72
  loc_B5574E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B55753: IStI2 KeyCode
  loc_B55756: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B55761: Branch loc_B55930
  loc_B55764: LitI2_Byte 0
  loc_B55766: ImpAdLdRf MemVar_C3D710
  loc_B55769: NewIfNullPr bscOrganigrama
  loc_B5576C: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_B55771: LitNothing
  loc_B55773: CastAd
  loc_B55776: FStAdFuncNoPop
  loc_B55779: ImpAdLdRf MemVar_C3D710
  loc_B5577C: NewIfNullPr bscOrganigrama
  loc_B5577F: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_B55784: FFree1Ad var_88
  loc_B55787: LitVar_Missing var_DC
  loc_B5578A: PopAdLdVar
  loc_B5578B: LitVarI4
  loc_B55793: PopAdLdVar
  loc_B55794: ImpAdLdRf MemVar_C3D710
  loc_B55797: NewIfNullPr bscOrganigrama
  loc_B5579A: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B5579F: FLdRfVar var_B4
  loc_B557A2: FLdRfVar var_88
  loc_B557A5: ImpAdLdRf MemVar_C3D710
  loc_B557A8: NewIfNullPr bscOrganigrama
  loc_B557AB: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B557B0: FLdPr var_88
  loc_B557B3: from_stack_1 = clsbase.RecordCount
  loc_B557B8: ILdRf var_B4
  loc_B557BB: LitI4 0
  loc_B557C0: GtI4
  loc_B557C1: FFree1Ad var_88
  loc_B557C4: BranchF loc_B558E9
  loc_B557C7: FLdRfVar var_A0
  loc_B557CA: FLdRfVar var_CC
  loc_B557CD: LitVarStr var_C8, "CodiOrga"
  loc_B557D2: PopAdLdVar
  loc_B557D3: FLdRfVar var_B8
  loc_B557D6: FLdRfVar var_90
  loc_B557D9: FLdRfVar var_88
  loc_B557DC: ImpAdLdRf MemVar_C3D710
  loc_B557DF: NewIfNullPr bscOrganigrama
  loc_B557E2: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B557E7: FLdPr var_88
  loc_B557EA: from_stack_1v = clsbase.RsFrmGet()
  loc_B557EF: FLdPr var_90
  loc_B557F2:  = Me.Fields
  loc_B557F7: FLdPr var_B8
  loc_B557FA: from_stack_2 = Me.Item(from_stack_1)
  loc_B557FF: FLdPr var_CC
  loc_B55802:  = Me.Value
  loc_B55807: FLdRfVar var_A4
  loc_B5580A: FLdPr Me
  loc_B5580D:  = Me.Name
  loc_B55812: FLdPr Me
  loc_B55815: MemLdRfVar from_stack_1.global_80
  loc_B55818: NewIfNullRf
  loc_B5581C: ILdRf var_A4
  loc_B5581F: FLdRfVar var_A0
  loc_B55822: CStrVarTmp
  loc_B55823: FStStrNoPop var_A8
  loc_B55826: ImpAdLdI2 MemVar_C3D064
  loc_B55829: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B5582E: FStStrNoPop var_AC
  loc_B55831: FLdPr Me
  loc_B55834: MemStStrCopy
  loc_B55838: FFreeStr var_A8 = "": var_A4 = ""
  loc_B55841: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B5584C: FFree1Var var_A0 = ""
  loc_B5584F: FLdRfVar var_A4
  loc_B55852: FLdPr Me
  loc_B55855: MemLdRfVar from_stack_1.global_80
  loc_B55858: NewIfNullPr tblorganigrama
  loc_B5585B: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B55860: FLdZeroAd var_A4
  loc_B55863: CVarStr var_A0
  loc_B55866: PopAdLdVar
  loc_B55867: FLdPr Me
  loc_B5586A: VCallAd Control_ID_CodiOrgaMsk
  loc_B5586D: FStAdFunc var_88
  loc_B55870: FLdPr var_88
  loc_B55873: LateIdSt
  loc_B55878: FFree1Ad var_88
  loc_B5587B: FFree1Var var_A0 = ""
  loc_B5587E: FLdRfVar var_A4
  loc_B55881: FLdPr Me
  loc_B55884: MemLdRfVar from_stack_1.global_80
  loc_B55887: NewIfNullPr tblorganigrama
  loc_B5588A: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B5588F: ILdRf var_A4
  loc_B55892: FLdPr Me
  loc_B55895: VCallAd Control_ID_DetaOrgaLbl
  loc_B55898: FStAdFunc var_88
  loc_B5589B: FLdPr var_88
  loc_B5589E: Me.Caption = from_stack_1
  loc_B558A3: FFree1Str var_A4
  loc_B558A6: FFree1Ad var_88
  loc_B558A9: FLdPr Me
  loc_B558AC: VCallAd Control_ID_CodiOrgaMsk
  loc_B558AF: FStAdFunc var_CC
  loc_B558B2: FLdPr Me
  loc_B558B5: VCallAd Control_ID_DetaOrgaLbl
  loc_B558B8: FStAdFunc var_B8
  loc_B558BB: FLdRfVar var_B8
  loc_B558BE: FLdZeroAd var_CC
  loc_B558C1: FStAdFuncNoPop
  loc_B558C4: CastAd
  loc_B558C7: FStAdFunc var_90
  loc_B558CA: FLdRfVar var_90
  loc_B558CD: FLdPr Me
  loc_B558D0: MemLdRfVar from_stack_1.global_72
  loc_B558D3: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B558D8: IStI2 KeyCode
  loc_B558DB: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B558E6: Branch loc_B55930
  loc_B558E9: LitStr "El organigrama NO EXISTE. Verifique..."
  loc_B558EC: FLdPr Me
  loc_B558EF: MemStStrCopy
  loc_B558F3: FLdPr Me
  loc_B558F6: VCallAd Control_ID_CodiOrgaMsk
  loc_B558F9: FStAdFunc var_CC
  loc_B558FC: FLdPr Me
  loc_B558FF: VCallAd Control_ID_DetaOrgaLbl
  loc_B55902: FStAdFunc var_B8
  loc_B55905: FLdRfVar var_B8
  loc_B55908: FLdZeroAd var_CC
  loc_B5590B: FStAdFuncNoPop
  loc_B5590E: CastAd
  loc_B55911: FStAdFunc var_90
  loc_B55914: FLdRfVar var_90
  loc_B55917: FLdPr Me
  loc_B5591A: MemLdRfVar from_stack_1.global_72
  loc_B5591D: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B55922: IStI2 KeyCode
  loc_B55925: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B55930: ILdI2 KeyCode
  loc_B55933: NotI4
  loc_B55934: BranchF loc_B55965
  loc_B55937: FLdRfVar var_A4
  loc_B5593A: FLdPr Me
  loc_B5593D: MemLdRfVar from_stack_1.global_80
  loc_B55940: NewIfNullPr tblorganigrama
  loc_B55943: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B55948: ILdRf var_A4
  loc_B5594B: FLdPr Me
  loc_B5594E: VCallAd Control_ID_DetaOrgaLbl
  loc_B55951: FStAdFunc var_88
  loc_B55954: FLdPr var_88
  loc_B55957: Me.Caption = from_stack_1
  loc_B5595C: FFree1Str var_A4
  loc_B5595F: FFree1Ad var_88
  loc_B55962: Branch loc_B5597F
  loc_B55965: LitVarStr var_C8, vbNullString
  loc_B5596A: PopAdLdVar
  loc_B5596B: FLdPr Me
  loc_B5596E: VCallAd Control_ID_CodiOrgaMsk
  loc_B55971: FStAdFunc var_88
  loc_B55974: FLdPr var_88
  loc_B55977: LateIdSt
  loc_B5597C: FFree1Ad var_88
  loc_B5597F: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_KeyPress(KeyAscii As Integer) '9ACCE8
  'Data Table: 49CE84
  loc_9ACC4C: FLdPr Me
  loc_9ACC4F: VCallAd Control_ID_CodiOrgaMsk
  loc_9ACC52: FStAdFunc var_88
  loc_9ACC55: FLdPr var_88
  loc_9ACC58: LateIdLdVar var_98 DispID_22 0
  loc_9ACC5F: PopAd
  loc_9ACC61: LitI4 0
  loc_9ACC66: LitI4 -1
  loc_9ACC6B: LitI4 1
  loc_9ACC70: LitStr vbNullString
  loc_9ACC73: LitStr "."
  loc_9ACC76: FLdRfVar var_98
  loc_9ACC79: CStrVarTmp
  loc_9ACC7A: FStStrNoPop var_9C
  loc_9ACC7D: ImpAdCallI2 Replace(, , , , , )
  loc_9ACC82: FStStrNoPop var_A0
  loc_9ACC85: FnLenStr
  loc_9ACC86: LitI4 5
  loc_9ACC8B: GtI4
  loc_9ACC8C: FFreeStr var_9C = ""
  loc_9ACC93: FFree1Ad var_88
  loc_9ACC96: FFree1Var var_98 = ""
  loc_9ACC99: BranchF loc_9ACCE7
  loc_9ACC9C: FLdPr Me
  loc_9ACC9F: VCallAd Control_ID_CodiOrgaMsk
  loc_9ACCA2: FStAdFunc var_88
  loc_9ACCA5: FLdRfVar var_88
  loc_9ACCA8: ImpAdCallI2  = Proc_266_40_A1E128()
  loc_9ACCAD: FFree1Ad var_88
  loc_9ACCB0: BranchF loc_9ACCE7
  loc_9ACCB3: ILdI2 KeyAscii
  loc_9ACCB6: CI4UI1
  loc_9ACCB7: LitI4 8
  loc_9ACCBC: NeI4
  loc_9ACCBD: FLdPr Me
  loc_9ACCC0: VCallAd Control_ID_CodiOrgaMsk
  loc_9ACCC3: FStAdFunc var_88
  loc_9ACCC6: FLdPr var_88
  loc_9ACCC9: LateIdLdVar var_98 DispID_17 0
  loc_9ACCD0: CI4Var
  loc_9ACCD2: LitI4 0
  loc_9ACCD7: EqI4
  loc_9ACCD8: AndI4
  loc_9ACCD9: FFree1Ad var_88
  loc_9ACCDC: FFree1Var var_98 = ""
  loc_9ACCDF: BranchF loc_9ACCE7
  loc_9ACCE2: LitI2_Byte 0
  loc_9ACCE4: IStI2 KeyAscii
  loc_9ACCE7: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_KeyUp(KeyCode As Integer, Shift As Integer) 'A068CC
  'Data Table: 49CE84
  loc_A06778: ILdI2 Shift
  loc_A0677B: CI4UI1
  loc_A0677C: LitI4 2
  loc_A06781: EqI4
  loc_A06782: ILdI2 KeyCode
  loc_A06785: CI4UI1
  loc_A06786: LitI4 &H42
  loc_A0678B: EqI4
  loc_A0678C: AndI4
  loc_A0678D: BranchF loc_A068CB
  loc_A06790: LitI2_Byte 0
  loc_A06792: ImpAdLdRf MemVar_C3D710
  loc_A06795: NewIfNullPr bscOrganigrama
  loc_A06798: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_A0679D: LitNothing
  loc_A0679F: CastAd
  loc_A067A2: FStAdFuncNoPop
  loc_A067A5: ImpAdLdRf MemVar_C3D710
  loc_A067A8: NewIfNullPr bscOrganigrama
  loc_A067AB: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_A067B0: FFree1Ad var_88
  loc_A067B3: LitVar_Missing var_A8
  loc_A067B6: PopAdLdVar
  loc_A067B7: LitVarI4
  loc_A067BF: PopAdLdVar
  loc_A067C0: ImpAdLdRf MemVar_C3D710
  loc_A067C3: NewIfNullPr bscOrganigrama
  loc_A067C6: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_A067CB: FLdRfVar var_AC
  loc_A067CE: FLdRfVar var_88
  loc_A067D1: ImpAdLdRf MemVar_C3D710
  loc_A067D4: NewIfNullPr bscOrganigrama
  loc_A067D7: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A067DC: FLdPr var_88
  loc_A067DF: from_stack_1 = clsbase.RecordCount
  loc_A067E4: ILdRf var_AC
  loc_A067E7: LitI4 0
  loc_A067EC: GtI4
  loc_A067ED: FFree1Ad var_88
  loc_A067F0: BranchF loc_A068CB
  loc_A067F3: FLdRfVar var_C8
  loc_A067F6: FLdRfVar var_B8
  loc_A067F9: LitVarStr var_98, "CodiOrga"
  loc_A067FE: PopAdLdVar
  loc_A067FF: FLdRfVar var_B4
  loc_A06802: FLdRfVar var_B0
  loc_A06805: FLdRfVar var_88
  loc_A06808: ImpAdLdRf MemVar_C3D710
  loc_A0680B: NewIfNullPr bscOrganigrama
  loc_A0680E: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A06813: FLdPr var_88
  loc_A06816: from_stack_1v = clsbase.RsFrmGet()
  loc_A0681B: FLdPr var_B0
  loc_A0681E:  = Me.Fields
  loc_A06823: FLdPr var_B4
  loc_A06826: from_stack_2 = Me.Item(from_stack_1)
  loc_A0682B: FLdPr var_B8
  loc_A0682E:  = Me.Value
  loc_A06833: FLdRfVar var_C8
  loc_A06836: CStrVarTmp
  loc_A06837: CVarStr var_D8
  loc_A0683A: PopAdLdVar
  loc_A0683B: FLdPr Me
  loc_A0683E: VCallAd Control_ID_CodiOrgaMsk
  loc_A06841: FStAdFunc var_DC
  loc_A06844: FLdPr var_DC
  loc_A06847: LateIdSt
  loc_A0684C: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A06859: FFreeVar var_C8 = ""
  loc_A06860: FLdRfVar var_C8
  loc_A06863: FLdRfVar var_B8
  loc_A06866: LitVarStr var_98, "DetaOrga"
  loc_A0686B: PopAdLdVar
  loc_A0686C: FLdRfVar var_B4
  loc_A0686F: FLdRfVar var_B0
  loc_A06872: FLdRfVar var_88
  loc_A06875: ImpAdLdRf MemVar_C3D710
  loc_A06878: NewIfNullPr bscOrganigrama
  loc_A0687B: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A06880: FLdPr var_88
  loc_A06883: from_stack_1v = clsbase.RsFrmGet()
  loc_A06888: FLdPr var_B0
  loc_A0688B:  = Me.Fields
  loc_A06890: FLdPr var_B4
  loc_A06893: from_stack_2 = Me.Item(from_stack_1)
  loc_A06898: FLdPr var_B8
  loc_A0689B:  = Me.Value
  loc_A068A0: FLdRfVar var_C8
  loc_A068A3: CStrVarTmp
  loc_A068A4: FStStrNoPop var_E0
  loc_A068A7: FLdPr Me
  loc_A068AA: VCallAd Control_ID_DetaOrgaLbl
  loc_A068AD: FStAdFunc var_DC
  loc_A068B0: FLdPr var_DC
  loc_A068B3: Me.Caption = from_stack_1
  loc_A068B8: FFree1Str var_E0
  loc_A068BB: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A068C8: FFree1Var var_C8 = ""
  loc_A068CB: ExitProcHresult
End Sub
