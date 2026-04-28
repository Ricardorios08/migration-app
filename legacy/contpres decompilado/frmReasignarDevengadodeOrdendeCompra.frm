VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmReasignarDevengadodeOrdendeCompra
  Caption = "Reasignar Devengado de Orden de Compra"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmReasignarDevengadodeOrdendeCompra.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 15885
  ClientHeight = 9135
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 720
    Width = 10695
    Height = 855
    TabIndex = 0
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 1
    End
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 2
      OleObjectBlob = "frmReasignarDevengadodeOrdendeCompra.frx":08CA
    End
  End
  Begin VB.Frame Frame1
    Caption = " Reasignar Devengado de Orden de Compra "
    Left = 120
    Top = 3720
    Width = 15255
    Height = 5895
    TabIndex = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox CodiUngaTxt
      Left = 2400
      Top = 2400
      Width = 1335
      Height = 360
      TabIndex = 17
      MaxLength = 70
      DataField = "CodiUnga"
    End
    Begin VB.TextBox CucuPersTxt
      Left = 2400
      Top = 4440
      Width = 1815
      Height = 360
      TabIndex = 33
      MaxLength = 70
      DataField = "CucuPers"
    End
    Begin VB.TextBox ImpoImpuTxt
      Left = 9960
      Top = 3960
      Width = 1815
      Height = 360
      TabIndex = 29
      MaxLength = 14
      DataField = "SaldImpu"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
      DataFormat = 38
    End
    Begin VB.TextBox DetaImpuTxt
      Left = 2400
      Top = 5400
      Width = 10935
      Height = 360
      TabIndex = 44
      MaxLength = 100
      DataField = "DetaImpu"
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
    Begin MSMask.MaskEdBox ExorImpuMsk
      Left = 2400
      Top = 457
      Width = 2175
      Height = 360
      TabIndex = 6
      OleObjectBlob = "frmReasignarDevengadodeOrdendeCompra.frx":0952
      DataField = "ExorImpu"
    End
    Begin MSMask.MaskEdBox CodiInsuMsk
      Left = 2400
      Top = 960
      Width = 1335
      Height = 360
      TabIndex = 8
      OleObjectBlob = "frmReasignarDevengadodeOrdendeCompra.frx":09B2
      DataField = "CodiInsu"
    End
    Begin VB.TextBox CantImpuTxt
      Left = 2400
      Top = 3960
      Width = 1815
      Height = 375
      TabIndex = 25
      MaxLength = 14
      DataField = "CantImpu"
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
    Begin VB.TextBox ImunImpuTxt
      Left = 6360
      Top = 3960
      Width = 1815
      Height = 375
      TabIndex = 27
      MaxLength = 14
      DataField = "ImunImpu"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
      DataFormat = 38
    End
    Begin MSMask.MaskEdBox CodiFifuMsk
      Left = 2400
      Top = 2880
      Width = 1575
      Height = 360
      TabIndex = 20
      OleObjectBlob = "frmReasignarDevengadodeOrdendeCompra.frx":0A22
      DataField = "CodiFifu"
    End
    Begin MSMask.MaskEdBox CodiOrgaMsk
      Left = 2400
      Top = 1920
      Width = 1335
      Height = 360
      TabIndex = 14
      OleObjectBlob = "frmReasignarDevengadodeOrdendeCompra.frx":0AAA
      DataField = "CodiOrga"
    End
    Begin MSMask.MaskEdBox CodiPartMsk
      Left = 2400
      Top = 1440
      Width = 1575
      Height = 360
      TabIndex = 11
      OleObjectBlob = "frmReasignarDevengadodeOrdendeCompra.frx":0B32
      DataField = "CodiPart"
    End
    Begin MSMask.MaskEdBox FechImpuMsk
      Left = 2400
      Top = 3450
      Width = 1335
      Height = 360
      TabIndex = 23
      OleObjectBlob = "frmReasignarDevengadodeOrdendeCompra.frx":0BBA
      DataField = "FechImpu"
    End
    Begin VB.Label DetaUngaLbl
      Left = 3855
      Top = 2400
      Width = 6495
      Height = 360
      TabIndex = 18
      BorderStyle = 1 'Fixed Single
      DataField = "DetaUnga"
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
    Begin VB.Label Label19
      Caption = "Unidad de Gasto:"
      Left = 480
      Top = 2400
      Width = 1875
      Height = 300
      TabIndex = 16
      AutoSize = -1  'True
    End
    Begin VB.Label Label16
      Caption = "O.C.:"
      Left = 10500
      Top = 1440
      Width = 525
      Height = 300
      TabIndex = 39
      AutoSize = -1  'True
    End
    Begin VB.Label CodiOrcoLbl
      Left = 11100
      Top = 1440
      Width = 975
      Height = 360
      TabIndex = 40
      BorderStyle = 1 'Fixed Single
      DataField = "CodiOrco"
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
    Begin VB.Label AlteItcoLbl
      Left = 12960
      Top = 1440
      Width = 975
      Height = 360
      TabIndex = 42
      BorderStyle = 1 'Fixed Single
      DataField = "Altern"
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
    Begin VB.Label Label25
      Caption = "Altern:"
      Left = 12120
      Top = 1440
      Width = 690
      Height = 300
      TabIndex = 41
      AutoSize = -1  'True
    End
    Begin VB.Label Label17
      Caption = "N.P.:"
      Left = 10560
      Top = 960
      Width = 495
      Height = 300
      TabIndex = 35
      AutoSize = -1  'True
    End
    Begin VB.Label CodiNopeLbl
      Left = 11145
      Top = 960
      Width = 975
      Height = 360
      TabIndex = 36
      BorderStyle = 1 'Fixed Single
      DataField = "CodiNope"
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
    Begin VB.Label CodiItnoLbl
      Left = 12945
      Top = 960
      Width = 975
      Height = 360
      TabIndex = 38
      BorderStyle = 1 'Fixed Single
      DataField = "Item"
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
    Begin VB.Label Label9
      Caption = "Item:"
      Left = 12345
      Top = 960
      Width = 540
      Height = 300
      TabIndex = 37
      AutoSize = -1  'True
    End
    Begin VB.Label Label18
      Caption = "Detalle:"
      Left = 1500
      Top = 5400
      Width = 810
      Height = 300
      TabIndex = 43
      AutoSize = -1  'True
    End
    Begin VB.Label Label13
      Caption = "Importe Total:"
      Left = 8400
      Top = 3960
      Width = 1470
      Height = 300
      TabIndex = 28
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Expediente Original:"
      Left = 240
      Top = 480
      Width = 2115
      Height = 300
      TabIndex = 5
      AutoSize = -1  'True
    End
    Begin VB.Label Label10
      Caption = "Fecha:"
      Left = 1575
      Top = 3480
      Width = 735
      Height = 300
      TabIndex = 22
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
      Left = 1500
      Top = 1440
      Width = 810
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
    Begin VB.Label Label3
      Caption = "Insumo:"
      Left = 1455
      Top = 960
      Width = 855
      Height = 300
      TabIndex = 7
      AutoSize = -1  'True
    End
    Begin VB.Label Label6
      Caption = "Organigrama:"
      Left = 870
      Top = 1920
      Width = 1440
      Height = 300
      TabIndex = 13
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
    Begin VB.Label Label8
      Caption = "Finalidad-Función:"
      Left = 360
      Top = 2880
      Width = 1950
      Height = 300
      TabIndex = 19
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
    Begin VB.Label Label14
      Caption = "Saldo:"
      Left = 12120
      Top = 3960
      Width = 675
      Height = 300
      TabIndex = 30
      AutoSize = -1  'True
    End
    Begin VB.Label Label15
      Caption = "Proveedor:"
      Left = 1200
      Top = 4440
      Width = 1140
      Height = 300
      TabIndex = 32
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
      Left = 4080
      Top = 1440
      Width = 6255
      Height = 360
      TabIndex = 12
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
    Begin VB.Label DetaOrgaLbl
      Left = 3840
      Top = 1920
      Width = 6495
      Height = 360
      TabIndex = 15
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
    Begin VB.Label DetaFifuLbl
      Left = 4080
      Top = 2880
      Width = 6255
      Height = 360
      TabIndex = 21
      BorderStyle = 1 'Fixed Single
      DataField = "DetaFifu"
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
    Begin VB.Label DetaProvLbl
      Left = 4320
      Top = 4440
      Width = 5655
      Height = 360
      TabIndex = 34
      BorderStyle = 1 'Fixed Single
      DataField = "DetaProv"
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
    Begin VB.Label DetaInsuLbl
      Left = 3840
      Top = 960
      Width = 6495
      Height = 360
      TabIndex = 9
      BorderStyle = 1 'Fixed Single
      DataField = "DetaInsu"
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
    Begin VB.Label SaldImpuLbl
      Left = 12840
      Top = 3960
      Width = 1815
      Height = 360
      TabIndex = 31
      BorderStyle = 1 'Fixed Single
      DataField = "SaldImpu"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
    End
    Begin VB.Label Label11
      Caption = "Cantidad:"
      Left = 1320
      Top = 3960
      Width = 1020
      Height = 300
      TabIndex = 24
      AutoSize = -1  'True
    End
    Begin VB.Label Label12
      Caption = "Importe Unitario:"
      Left = 4500
      Top = 3960
      Width = 1770
      Height = 300
      TabIndex = 26
      AutoSize = -1  'True
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 15255
    Height = 1935
    TabIndex = 3
    OleObjectBlob = "frmReasignarDevengadodeOrdendeCompra.frx":0C6A
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmReasignarDevengadodeOrdendeCompra.frx":14EA
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15885
    Height = 660
    TabIndex = 45
    OleObjectBlob = "frmReasignarDevengadodeOrdendeCompra.frx":9068
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 46
      TabStop = 0   'False
      Picture = "frmReasignarDevengadodeOrdendeCompra.frx":95C4
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmReasignarDevengadodeOrdendeCompra"


Private Sub CodiPartMsk_UnknownEvent_0 '9F01C4
  'Data Table: 4EED48
  loc_9F00AC: FLdPr Me
  loc_9F00AF: VCallAd Control_ID_CodiPartMsk
  loc_9F00B2: FStAdFunc var_88
  loc_9F00B5: FLdPr var_88
  loc_9F00B8: LateIdLdVar var_98 DispID_22 0
  loc_9F00BF: CStrVarTmp
  loc_9F00C0: FStStrNoPop var_9C
  loc_9F00C3: LitStr vbNullString
  loc_9F00C6: EqStr
  loc_9F00C8: FFree1Str var_9C
  loc_9F00CB: FFree1Ad var_88
  loc_9F00CE: FFree1Var var_98 = ""
  loc_9F00D1: BranchF loc_9F01AF
  loc_9F00D4: LitStr "SELECT * FROM insupart WHERE PeriInfo = "
  loc_9F00D7: ImpAdLdI2 MemVar_C3D064
  loc_9F00DA: CStrUI1
  loc_9F00DC: FStStrNoPop var_9C
  loc_9F00DF: ConcatStr
  loc_9F00E0: FStStrNoPop var_A0
  loc_9F00E3: LitStr " AND CodiInsu = '"
  loc_9F00E6: ConcatStr
  loc_9F00E7: FStStrNoPop var_A4
  loc_9F00EA: FLdPr Me
  loc_9F00ED: VCallAd Control_ID_CodiInsuMsk
  loc_9F00F0: FStAdFunc var_88
  loc_9F00F3: FLdPr var_88
  loc_9F00F6: LateIdLdVar var_98 DispID_22 0
  loc_9F00FD: CStrVarTmp
  loc_9F00FE: FStStrNoPop var_A8
  loc_9F0101: ConcatStr
  loc_9F0102: FStStrNoPop var_AC
  loc_9F0105: LitStr "'"
  loc_9F0108: ConcatStr
  loc_9F0109: FStStrNoPop var_B0
  loc_9F010C: FLdPr Me
  loc_9F010F: MemLdRfVar from_stack_1.global_56
  loc_9F0112: NewIfNullPr clsinsupart
  loc_9F0115: Call clsinsupart.RedefineRS(from_stack_1v)
  loc_9F011A: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = ""
  loc_9F0129: FFree1Ad var_88
  loc_9F012C: FFree1Var var_98 = ""
  loc_9F012F: FLdRfVar var_B4
  loc_9F0132: FLdPr Me
  loc_9F0135: MemLdRfVar from_stack_1.global_56
  loc_9F0138: NewIfNullPr clsinsupart
  loc_9F013B: from_stack_1 = clsinsupart.RecordCount
  loc_9F0140: ILdRf var_B4
  loc_9F0143: LitI4 1
  loc_9F0148: EqI4
  loc_9F0149: BranchF loc_9F01AF
  loc_9F014C: FLdRfVar var_98
  loc_9F014F: FLdRfVar var_CC
  loc_9F0152: LitVarStr var_C8, "CodiPart"
  loc_9F0157: PopAdLdVar
  loc_9F0158: FLdRfVar var_B8
  loc_9F015B: FLdRfVar var_88
  loc_9F015E: FLdPr Me
  loc_9F0161: MemLdRfVar from_stack_1.global_56
  loc_9F0164: NewIfNullPr clsinsupart
  loc_9F0167: from_stack_1v = clsinsupart.RsFrmGet()
  loc_9F016C: FLdPr var_88
  loc_9F016F:  = Me.Fields
  loc_9F0174: FLdPr var_B8
  loc_9F0177: from_stack_2 = Me.Item(from_stack_1)
  loc_9F017C: FLdPr var_CC
  loc_9F017F:  = Me.Value
  loc_9F0184: FLdRfVar var_98
  loc_9F0187: CStrVarTmp
  loc_9F0188: CVarStr var_DC
  loc_9F018B: PopAdLdVar
  loc_9F018C: FLdPr Me
  loc_9F018F: VCallAd Control_ID_CodiPartMsk
  loc_9F0192: FStAdFunc var_F0
  loc_9F0195: FLdPr var_F0
  loc_9F0198: LateIdSt
  loc_9F019D: FFreeAd var_88 = "": var_B8 = "": var_CC = ""
  loc_9F01A8: FFreeVar var_98 = ""
  loc_9F01AF: FLdPr Me
  loc_9F01B2: VCallAd Control_ID_CodiPartMsk
  loc_9F01B5: CVarAd
  loc_9F01B9: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9F01BE: FFree1Var var_98 = ""
  loc_9F01C1: ExitProcHresult
End Sub

Private Sub CodiPartMsk_UnknownEvent_8 'AA934C
  'Data Table: 4EED48
  loc_AA8E9C: FLdRfVar var_92
  loc_AA8E9F: FLdPr Me
  loc_AA8EA2: VCallAd Control_ID_cmdCancelar
  loc_AA8EA5: FStAdFunc var_90
  loc_AA8EA8: FLdPr var_90
  loc_AA8EAB:  = Me.Value
  loc_AA8EB0: FLdI2 var_92
  loc_AA8EB3: NotI4
  loc_AA8EB4: FLdPr Me
  loc_AA8EB7: VCallAd Control_ID_CodiPartMsk
  loc_AA8EBA: FStAdFunc var_98
  loc_AA8EBD: FLdPr var_98
  loc_AA8EC0: LateIdLdVar var_A8 DispID_13 -32767
  loc_AA8EC7: CBoolVar
  loc_AA8EC9: AndI4
  loc_AA8ECA: FFreeAd var_90 = ""
  loc_AA8ED1: FFree1Var var_A8 = ""
  loc_AA8ED4: BranchF loc_AA9348
  loc_AA8ED7: FLdPr Me
  loc_AA8EDA: VCallAd Control_ID_CodiPartMsk
  loc_AA8EDD: FStAdFunc var_90
  loc_AA8EE0: FLdRfVar var_90
  loc_AA8EE3: ImpAdCallFPR4  = Proc_261_65_9A9668()
  loc_AA8EE8: FFree1Ad var_90
  loc_AA8EEB: FLdPr Me
  loc_AA8EEE: VCallAd Control_ID_CodiPartMsk
  loc_AA8EF1: FStAdFunc var_90
  loc_AA8EF4: FLdPr var_90
  loc_AA8EF7: LateIdLdVar var_A8 DispID_22 0
  loc_AA8EFE: PopAd
  loc_AA8F00: FLdRfVar var_AC
  loc_AA8F03: FLdPr Me
  loc_AA8F06:  = Me.Name
  loc_AA8F0B: FLdPr Me
  loc_AA8F0E: MemLdRfVar from_stack_1.global_80
  loc_AA8F11: NewIfNullRf
  loc_AA8F15: ILdRf var_AC
  loc_AA8F18: LitI2_Byte 0
  loc_AA8F1A: FLdRfVar var_A8
  loc_AA8F1D: CStrVarTmp
  loc_AA8F1E: FStStrNoPop var_B0
  loc_AA8F21: ImpAdLdI2 MemVar_C3D064
  loc_AA8F24: ImpAdCallI2 Proc_266_8_A41318(, , , , )
  loc_AA8F29: FStStrNoPop var_B4
  loc_AA8F2C: FLdPr Me
  loc_AA8F2F: MemStStrCopy
  loc_AA8F33: FFreeStr var_B0 = "": var_AC = ""
  loc_AA8F3C: FFree1Ad var_90
  loc_AA8F3F: FFree1Var var_A8 = ""
  loc_AA8F42: FLdPr Me
  loc_AA8F45: VCallAd Control_ID_CodiPartMsk
  loc_AA8F48: FStAdFunc var_BC
  loc_AA8F4B: FLdPr Me
  loc_AA8F4E: VCallAd Control_ID_DetaPartLbl
  loc_AA8F51: FStAdFunc var_B8
  loc_AA8F54: FLdRfVar var_B8
  loc_AA8F57: FLdZeroAd var_BC
  loc_AA8F5A: FStAdFuncNoPop
  loc_AA8F5D: CastAd
  loc_AA8F60: FStAdFunc var_98
  loc_AA8F63: FLdRfVar var_98
  loc_AA8F66: FLdPr Me
  loc_AA8F69: MemLdRfVar from_stack_1.global_68
  loc_AA8F6C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_AA8F71: IStI2 Button
  loc_AA8F74: FFreeAd var_90 = "": var_98 = "": var_B8 = ""
  loc_AA8F7F: ILdI2 Button
  loc_AA8F82: NotI4
  loc_AA8F83: BranchF loc_AA9079
  loc_AA8F86: FLdRfVar var_AC
  loc_AA8F89: FLdPr Me
  loc_AA8F8C: MemLdRfVar from_stack_1.global_80
  loc_AA8F8F: NewIfNullPr tblpartida
  loc_AA8F92: from_stack_1v = tblpartida.DetaPartGet()
  loc_AA8F97: ILdRf var_AC
  loc_AA8F9A: FLdPr Me
  loc_AA8F9D: VCallAd Control_ID_DetaPartLbl
  loc_AA8FA0: FStAdFunc var_90
  loc_AA8FA3: FLdPr var_90
  loc_AA8FA6: Me.Caption = from_stack_1
  loc_AA8FAB: FFree1Str var_AC
  loc_AA8FAE: FFree1Ad var_90
  loc_AA8FB1: LitI2_Byte 0
  loc_AA8FB3: BranchF loc_AA9079
  loc_AA8FB6: LitStr "SELECT * FROM insupart WHERE PeriInfo = "
  loc_AA8FB9: ImpAdLdI2 MemVar_C3D064
  loc_AA8FBC: CStrUI1
  loc_AA8FBE: FStStrNoPop var_AC
  loc_AA8FC1: ConcatStr
  loc_AA8FC2: FStStrNoPop var_B0
  loc_AA8FC5: LitStr " AND CodiPart = '"
  loc_AA8FC8: ConcatStr
  loc_AA8FC9: FStStrNoPop var_B4
  loc_AA8FCC: FLdPr Me
  loc_AA8FCF: VCallAd Control_ID_CodiPartMsk
  loc_AA8FD2: FStAdFunc var_90
  loc_AA8FD5: FLdPr var_90
  loc_AA8FD8: LateIdLdVar var_A8 DispID_22 0
  loc_AA8FDF: CStrVarTmp
  loc_AA8FE0: FStStrNoPop var_C0
  loc_AA8FE3: ConcatStr
  loc_AA8FE4: FStStrNoPop var_C4
  loc_AA8FE7: LitStr "' AND CodiInsu = "
  loc_AA8FEA: ConcatStr
  loc_AA8FEB: FStStrNoPop var_D8
  loc_AA8FEE: FLdPr Me
  loc_AA8FF1: VCallAd Control_ID_CodiInsuMsk
  loc_AA8FF4: FStAdFunc var_98
  loc_AA8FF7: FLdPr var_98
  loc_AA8FFA: LateIdLdVar var_D4 DispID_0 0
  loc_AA9001: CStrVarTmp
  loc_AA9002: FStStrNoPop var_DC
  loc_AA9005: ConcatStr
  loc_AA9006: FStStrNoPop var_E0
  loc_AA9009: FLdPr Me
  loc_AA900C: MemLdRfVar from_stack_1.global_56
  loc_AA900F: NewIfNullPr clsinsupart
  loc_AA9012: Call clsinsupart.RedefineRS(from_stack_1v)
  loc_AA9017: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_C0 = "": var_C4 = "": var_D8 = "": var_DC = ""
  loc_AA902A: FFreeAd var_90 = ""
  loc_AA9031: FFreeVar var_A8 = ""
  loc_AA9038: FLdRfVar var_E4
  loc_AA903B: FLdPr Me
  loc_AA903E: MemLdRfVar from_stack_1.global_56
  loc_AA9041: NewIfNullPr clsinsupart
  loc_AA9044: from_stack_1 = clsinsupart.RecordCount
  loc_AA9049: ILdRf var_E4
  loc_AA904C: LitI4 0
  loc_AA9051: EqI4
  loc_AA9052: BranchF loc_AA9079
  loc_AA9055: LitI4 0
  loc_AA905A: LitStr "La Partida NO Corresponde al Insumo. Reintente..."
  loc_AA905D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AA9062: FLdPr Me
  loc_AA9065: VCallAd Control_ID_CodiPartMsk
  loc_AA9068: CVarAd
  loc_AA906C: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_AA9071: FFree1Var var_A8 = ""
  loc_AA9074: LitI2_Byte &HFF
  loc_AA9076: IStI2 Button
  loc_AA9079: ILdI2 Button
  loc_AA907C: NotI4
  loc_AA907D: BranchF loc_AA9348
  loc_AA9080: FLdRfVar var_194
  loc_AA9083: FLdRfVar var_B8
  loc_AA9086: LitVarStr var_F4, "ExorImpu"
  loc_AA908B: PopAdLdVar
  loc_AA908C: FLdRfVar var_98
  loc_AA908F: FLdRfVar var_90
  loc_AA9092: FLdPr Me
  loc_AA9095: MemLdRfVar from_stack_1.global_52
  loc_AA9098: NewIfNullPr clsimputacion
  loc_AA909B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA90A0: FLdPr var_90
  loc_AA90A3:  = Me.Fields
  loc_AA90A8: FLdPr var_98
  loc_AA90AB: from_stack_2 = Me.Item(from_stack_1)
  loc_AA90B0: FLdPr var_B8
  loc_AA90B3:  = Me.Value
  loc_AA90B8: FLdRfVar var_1A4
  loc_AA90BB: FLdRfVar var_10C
  loc_AA90BE: LitVarStr var_108, "CodiNope"
  loc_AA90C3: PopAdLdVar
  loc_AA90C4: FLdRfVar var_F8
  loc_AA90C7: FLdRfVar var_BC
  loc_AA90CA: FLdPr Me
  loc_AA90CD: MemLdRfVar from_stack_1.global_52
  loc_AA90D0: NewIfNullPr clsimputacion
  loc_AA90D3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA90D8: FLdPr var_BC
  loc_AA90DB:  = Me.Fields
  loc_AA90E0: FLdPr var_F8
  loc_AA90E3: from_stack_2 = Me.Item(from_stack_1)
  loc_AA90E8: FLdPr var_10C
  loc_AA90EB:  = Me.Value
  loc_AA90F0: FLdRfVar var_1B4
  loc_AA90F3: FLdRfVar var_128
  loc_AA90F6: LitVarStr var_124, "Item"
  loc_AA90FB: PopAdLdVar
  loc_AA90FC: FLdRfVar var_114
  loc_AA90FF: FLdRfVar var_110
  loc_AA9102: FLdPr Me
  loc_AA9105: MemLdRfVar from_stack_1.global_52
  loc_AA9108: NewIfNullPr clsimputacion
  loc_AA910B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA9110: FLdPr var_110
  loc_AA9113:  = Me.Fields
  loc_AA9118: FLdPr var_114
  loc_AA911B: from_stack_2 = Me.Item(from_stack_1)
  loc_AA9120: FLdPr var_128
  loc_AA9123:  = Me.Value
  loc_AA9128: FLdRfVar var_1C4
  loc_AA912B: FLdRfVar var_144
  loc_AA912E: LitVarStr var_140, "Altern"
  loc_AA9133: PopAdLdVar
  loc_AA9134: FLdRfVar var_130
  loc_AA9137: FLdRfVar var_12C
  loc_AA913A: FLdPr Me
  loc_AA913D: MemLdRfVar from_stack_1.global_52
  loc_AA9140: NewIfNullPr clsimputacion
  loc_AA9143: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA9148: FLdPr var_12C
  loc_AA914B:  = Me.Fields
  loc_AA9150: FLdPr var_130
  loc_AA9153: from_stack_2 = Me.Item(from_stack_1)
  loc_AA9158: FLdPr var_144
  loc_AA915B:  = Me.Value
  loc_AA9160: FLdRfVar var_1D4
  loc_AA9163: FLdRfVar var_160
  loc_AA9166: LitVarStr var_15C, "CodiOrco"
  loc_AA916B: PopAdLdVar
  loc_AA916C: FLdRfVar var_14C
  loc_AA916F: FLdRfVar var_148
  loc_AA9172: FLdPr Me
  loc_AA9175: MemLdRfVar from_stack_1.global_52
  loc_AA9178: NewIfNullPr clsimputacion
  loc_AA917B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA9180: FLdPr var_148
  loc_AA9183:  = Me.Fields
  loc_AA9188: FLdPr var_14C
  loc_AA918B: from_stack_2 = Me.Item(from_stack_1)
  loc_AA9190: FLdPr var_160
  loc_AA9193:  = Me.Value
  loc_AA9198: FLdRfVar var_1E4
  loc_AA919B: FLdRfVar var_17C
  loc_AA919E: LitVarStr var_178, "CodiRece"
  loc_AA91A3: PopAdLdVar
  loc_AA91A4: FLdRfVar var_168
  loc_AA91A7: FLdRfVar var_164
  loc_AA91AA: FLdPr Me
  loc_AA91AD: MemLdRfVar from_stack_1.global_52
  loc_AA91B0: NewIfNullPr clsimputacion
  loc_AA91B3: from_stack_1v = clsimputacion.RsFrmGet()
  loc_AA91B8: FLdPr var_164
  loc_AA91BB:  = Me.Fields
  loc_AA91C0: FLdPr var_168
  loc_AA91C3: from_stack_2 = Me.Item(from_stack_1)
  loc_AA91C8: FLdPr var_17C
  loc_AA91CB:  = Me.Value
  loc_AA91D0: FLdPr Me
  loc_AA91D3: VCallAd Control_ID_CodiPartMsk
  loc_AA91D6: FStAdFunc var_180
  loc_AA91D9: FLdPr var_180
  loc_AA91DC: LateIdLdVar var_A8 DispID_22 0
  loc_AA91E3: PopAd
  loc_AA91E5: FLdPr Me
  loc_AA91E8: VCallAd Control_ID_CodiOrgaMsk
  loc_AA91EB: FStAdFunc var_184
  loc_AA91EE: FLdPr var_184
  loc_AA91F1: LateIdLdVar var_D4 DispID_22 0
  loc_AA91F8: PopAd
  loc_AA91FA: FLdRfVar var_C0
  loc_AA91FD: FLdRfVar var_D4
  loc_AA9200: CStrVarTmp
  loc_AA9201: FStStrNoPop var_B4
  loc_AA9204: FLdRfVar var_A8
  loc_AA9207: CStrVarTmp
  loc_AA9208: FStStrNoPop var_B0
  loc_AA920B: FLdRfVar var_1E4
  loc_AA920E: CI2Var
  loc_AA920F: FLdRfVar var_1D4
  loc_AA9212: CI2Var
  loc_AA9213: FLdRfVar var_1C4
  loc_AA9216: CI2Var
  loc_AA9217: FLdRfVar var_1B4
  loc_AA921A: CI2Var
  loc_AA921B: FLdRfVar var_1A4
  loc_AA921E: CI4Var
  loc_AA9220: FLdRfVar var_194
  loc_AA9223: CStrVarTmp
  loc_AA9224: FStStrNoPop var_AC
  loc_AA9227: LitI2_Byte 1
  loc_AA9229: ImpAdLdI2 MemVar_C3D064
  loc_AA922C: FLdPr Me
  loc_AA922F: MemLdRfVar from_stack_1.global_52
  loc_AA9232: NewIfNullPr clsimputacion
  loc_AA9235: from_stack_11v = clsimputacion.UltimaFechImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_AA923A: ILdRf var_C0
  loc_AA923D: CDateStr
  loc_AA923F: FStFPR8 var_8C
  loc_AA9242: FFreeStr var_AC = "": var_B0 = "": var_B4 = ""
  loc_AA924D: FFreeAd var_90 = "": var_98 = "": var_BC = "": var_F8 = "": var_110 = "": var_114 = "": var_12C = "": var_130 = "": var_148 = "": var_14C = "": var_164 = "": var_168 = "": var_180 = "": var_184 = "": var_B8 = "": var_10C = "": var_128 = "": var_144 = "": var_160 = ""
  loc_AA9278: FFreeVar var_A8 = "": var_D4 = "": var_194 = "": var_1A4 = "": var_1B4 = "": var_1C4 = "": var_1D4 = ""
  loc_AA928B: FLdPr Me
  loc_AA928E: VCallAd Control_ID_FechImpuMsk
  loc_AA9291: FStAdFunc var_90
  loc_AA9294: FLdPr var_90
  loc_AA9297: LateIdLdVar var_A8 DispID_15 0
  loc_AA929E: PopAd
  loc_AA92A0: FLdPr Me
  loc_AA92A3: VCallAd Control_ID_FechImpuMsk
  loc_AA92A6: FStAdFunc var_98
  loc_AA92A9: FLdPr var_98
  loc_AA92AC: LateIdLdVar var_D4 DispID_22 0
  loc_AA92B3: PopAd
  loc_AA92B5: FLdRfVar var_8C
  loc_AA92B8: CVarRef
  loc_AA92BD: FLdRfVar var_D4
  loc_AA92C0: CStrVarTmp
  loc_AA92C1: CVarStr var_194
  loc_AA92C4: FLdRfVar var_A8
  loc_AA92C7: CStrVarTmp
  loc_AA92C8: FStStrNoPop var_AC
  loc_AA92CB: CDateStr
  loc_AA92CD: FLdFPR8 var_8C
  loc_AA92D0: GtR4
  loc_AA92D1: CVarBoolI2 var_F4
  loc_AA92D5: FLdRfVar var_1A4
  loc_AA92D8: ImpAdCallFPR4  = IIf(, , )
  loc_AA92DD: FLdRfVar var_1A4
  loc_AA92E0: CStrVarTmp
  loc_AA92E1: CVarStr var_1B4
  loc_AA92E4: PopAdLdVar
  loc_AA92E5: FLdPr Me
  loc_AA92E8: VCallAd Control_ID_FechImpuMsk
  loc_AA92EB: FStAdFunc var_B8
  loc_AA92EE: FLdPr var_B8
  loc_AA92F1: LateIdSt
  loc_AA92F6: FFree1Str var_AC
  loc_AA92F9: FFreeAd var_90 = "": var_98 = ""
  loc_AA9302: FFreeVar var_A8 = "": var_D4 = "": var_F4 = "": var_194 = "": var_1A4 = ""
  loc_AA9311: FLdPr Me
  loc_AA9314: VCallAd Control_ID_FechImpuMsk
  loc_AA9317: FStAdFunc var_90
  loc_AA931A: FLdPr var_90
  loc_AA931D: LateIdLdVar var_A8 DispID_15 0
  loc_AA9324: CStrVarTmp
  loc_AA9325: CVarStr var_D4
  loc_AA9328: PopAdLdVar
  loc_AA9329: FLdPr Me
  loc_AA932C: VCallAd Control_ID_FechImpuMsk
  loc_AA932F: FStAdFunc var_98
  loc_AA9332: FLdPr var_98
  loc_AA9335: LateIdSt
  loc_AA933A: FFreeAd var_90 = ""
  loc_AA9341: FFreeVar var_A8 = ""
  loc_AA9348: ExitProcHresult
End Sub

Private Sub CodiPartMsk_KeyPress(KeyAscii As Integer) 'A10F68
  'Data Table: 4EED48
  loc_A10E00: ILdI2 KeyAscii
  loc_A10E03: CI4UI1
  loc_A10E04: LitI4 &H20
  loc_A10E09: EqI4
  loc_A10E0A: BranchF loc_A10F67
  loc_A10E0D: FLdPr Me
  loc_A10E10: VCallAd Control_ID_CodiInsuMsk
  loc_A10E13: FStAdFunc var_88
  loc_A10E16: FLdPr var_88
  loc_A10E19: LateIdLdVar var_98 DispID_22 0
  loc_A10E20: CStrVarTmp
  loc_A10E21: FStStrNoPop var_9C
  loc_A10E24: CI4Str
  loc_A10E25: ImpAdLdRf MemVar_C3D724
  loc_A10E28: NewIfNullPr bscPartida
  loc_A10E2B: Call bscPartida.iCodiInsuPut(from_stack_1v)
  loc_A10E30: FFree1Str var_9C
  loc_A10E33: FFree1Ad var_88
  loc_A10E36: FFree1Var var_98 = ""
  loc_A10E39: LitNothing
  loc_A10E3B: CastAd
  loc_A10E3E: FStAdFuncNoPop
  loc_A10E41: ImpAdLdRf MemVar_C3D724
  loc_A10E44: NewIfNullPr bscPartida
  loc_A10E47: Call bscPartida.global_4332396Set(from_stack_1v)
  loc_A10E4C: FFree1Ad var_88
  loc_A10E4F: LitVar_Missing var_BC
  loc_A10E52: PopAdLdVar
  loc_A10E53: LitVarI4
  loc_A10E5B: PopAdLdVar
  loc_A10E5C: ImpAdLdRf MemVar_C3D724
  loc_A10E5F: NewIfNullPr bscPartida
  loc_A10E62: bscPartida.Show from_stack_1, from_stack_2
  loc_A10E67: FLdRfVar var_C0
  loc_A10E6A: FLdRfVar var_88
  loc_A10E6D: ImpAdLdRf MemVar_C3D724
  loc_A10E70: NewIfNullPr bscPartida
  loc_A10E73: from_stack_1v = bscPartida.global_4332396Get()
  loc_A10E78: FLdPr var_88
  loc_A10E7B: from_stack_1 = clsbase.RecordCount
  loc_A10E80: ILdRf var_C0
  loc_A10E83: LitI4 0
  loc_A10E88: GtI4
  loc_A10E89: FFree1Ad var_88
  loc_A10E8C: BranchF loc_A10F67
  loc_A10E8F: FLdRfVar var_98
  loc_A10E92: FLdRfVar var_CC
  loc_A10E95: LitVarStr var_AC, "CodiPart"
  loc_A10E9A: PopAdLdVar
  loc_A10E9B: FLdRfVar var_C8
  loc_A10E9E: FLdRfVar var_C4
  loc_A10EA1: FLdRfVar var_88
  loc_A10EA4: ImpAdLdRf MemVar_C3D724
  loc_A10EA7: NewIfNullPr bscPartida
  loc_A10EAA: from_stack_1v = bscPartida.global_4332396Get()
  loc_A10EAF: FLdPr var_88
  loc_A10EB2: from_stack_1v = clsbase.RsFrmGet()
  loc_A10EB7: FLdPr var_C4
  loc_A10EBA:  = Me.Fields
  loc_A10EBF: FLdPr var_C8
  loc_A10EC2: from_stack_2 = Me.Item(from_stack_1)
  loc_A10EC7: FLdPr var_CC
  loc_A10ECA:  = Me.Value
  loc_A10ECF: FLdRfVar var_98
  loc_A10ED2: CStrVarTmp
  loc_A10ED3: CVarStr var_DC
  loc_A10ED6: PopAdLdVar
  loc_A10ED7: FLdPr Me
  loc_A10EDA: VCallAd Control_ID_CodiPartMsk
  loc_A10EDD: FStAdFunc var_E0
  loc_A10EE0: FLdPr var_E0
  loc_A10EE3: LateIdSt
  loc_A10EE8: FFreeAd var_88 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A10EF5: FFreeVar var_98 = ""
  loc_A10EFC: FLdRfVar var_98
  loc_A10EFF: FLdRfVar var_CC
  loc_A10F02: LitVarStr var_AC, "DetaPart"
  loc_A10F07: PopAdLdVar
  loc_A10F08: FLdRfVar var_C8
  loc_A10F0B: FLdRfVar var_C4
  loc_A10F0E: FLdRfVar var_88
  loc_A10F11: ImpAdLdRf MemVar_C3D724
  loc_A10F14: NewIfNullPr bscPartida
  loc_A10F17: from_stack_1v = bscPartida.global_4332396Get()
  loc_A10F1C: FLdPr var_88
  loc_A10F1F: from_stack_1v = clsbase.RsFrmGet()
  loc_A10F24: FLdPr var_C4
  loc_A10F27:  = Me.Fields
  loc_A10F2C: FLdPr var_C8
  loc_A10F2F: from_stack_2 = Me.Item(from_stack_1)
  loc_A10F34: FLdPr var_CC
  loc_A10F37:  = Me.Value
  loc_A10F3C: FLdRfVar var_98
  loc_A10F3F: CStrVarTmp
  loc_A10F40: FStStrNoPop var_9C
  loc_A10F43: FLdPr Me
  loc_A10F46: VCallAd Control_ID_DetaPartLbl
  loc_A10F49: FStAdFunc var_E0
  loc_A10F4C: FLdPr var_E0
  loc_A10F4F: Me.Caption = from_stack_1
  loc_A10F54: FFree1Str var_9C
  loc_A10F57: FFreeAd var_88 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A10F64: FFree1Var var_98 = ""
  loc_A10F67: ExitProcHresult
End Sub

Private Sub FechImpuMsk_UnknownEvent_0 '94B750
  'Data Table: 4EED48
  loc_94B73C: FLdPr Me
  loc_94B73F: VCallAd Control_ID_FechImpuMsk
  loc_94B742: CVarAd
  loc_94B746: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B74B: FFree1Var var_94 = ""
  loc_94B74E: ExitProcHresult
End Sub

Private Sub FechImpuMsk_UnknownEvent_8 'A30710
  'Data Table: 4EED48
  loc_A3055C: FLdRfVar var_8A
  loc_A3055F: FLdPr Me
  loc_A30562: VCallAd Control_ID_cmdCancelar
  loc_A30565: FStAdFunc var_88
  loc_A30568: FLdPr var_88
  loc_A3056B:  = Me.Value
  loc_A30570: FLdI2 var_8A
  loc_A30573: NotI4
  loc_A30574: FLdPr Me
  loc_A30577: VCallAd Control_ID_FechImpuMsk
  loc_A3057A: FStAdFunc var_90
  loc_A3057D: FLdPr var_90
  loc_A30580: LateIdLdVar var_A0 DispID_13 -32767
  loc_A30587: CBoolVar
  loc_A30589: AndI4
  loc_A3058A: FFreeAd var_88 = ""
  loc_A30591: FFree1Var var_A0 = ""
  loc_A30594: BranchF loc_A3070D
  loc_A30597: FLdPr Me
  loc_A3059A: VCallAd Control_ID_FechImpuMsk
  loc_A3059D: FStAdFunc var_88
  loc_A305A0: FLdPr var_88
  loc_A305A3: LateIdLdVar var_A0 DispID_15 0
  loc_A305AA: PopAd
  loc_A305AC: FLdPr Me
  loc_A305AF: VCallAd Control_ID_FechImpuMsk
  loc_A305B2: FStAdFunc var_90
  loc_A305B5: FLdPr var_90
  loc_A305B8: LateIdLdVar var_B0 DispID_11 -32767
  loc_A305BF: PopAd
  loc_A305C1: FLdRfVar var_E0
  loc_A305C4: FLdRfVar var_D0
  loc_A305C7: LitVarStr var_CC, "FechImpu"
  loc_A305CC: PopAdLdVar
  loc_A305CD: FLdRfVar var_BC
  loc_A305D0: FLdRfVar var_B8
  loc_A305D3: FLdPr Me
  loc_A305D6: MemLdRfVar from_stack_1.global_52
  loc_A305D9: NewIfNullPr clsimputacion
  loc_A305DC: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A305E1: FLdPr var_B8
  loc_A305E4:  = Me.Fields
  loc_A305E9: FLdPr var_BC
  loc_A305EC: from_stack_2 = Me.Item(from_stack_1)
  loc_A305F1: FLdPr var_D0
  loc_A305F4:  = Me.Value
  loc_A305F9: FLdPr Me
  loc_A305FC: VCallAd Control_ID_FechImpuMsk
  loc_A305FF: FStAdFunc var_E4
  loc_A30602: FLdPr var_E4
  loc_A30605: LateIdLdVar var_F4 DispID_11 -32767
  loc_A3060C: PopAd
  loc_A3060E: FLdRfVar var_110
  loc_A30611: LitVarStr var_10C, "FechImpu"
  loc_A30616: PopAdLdVar
  loc_A30617: FLdRfVar var_FC
  loc_A3061A: FLdRfVar var_F8
  loc_A3061D: FLdPr Me
  loc_A30620: MemLdRfVar from_stack_1.global_52
  loc_A30623: NewIfNullPr clsimputacion
  loc_A30626: from_stack_1v = clsimputacion.RsFrmGet()
  loc_A3062B: FLdPr var_F8
  loc_A3062E:  = Me.Fields
  loc_A30633: FLdPr var_FC
  loc_A30636: from_stack_2 = Me.Item(from_stack_1)
  loc_A3063B: FLdZeroAd var_110
  loc_A3063E: CVarAd
  loc_A30642: FLdRfVar var_F4
  loc_A30645: CStrVarTmp
  loc_A30646: CVarStr var_130
  loc_A30649: FLdRfVar var_B0
  loc_A3064C: CStrVarTmp
  loc_A3064D: FStStrNoPop var_B4
  loc_A30650: CDateStr
  loc_A30652: FLdRfVar var_E0
  loc_A30655: FnCDateVar
  loc_A30657: GtR4
  loc_A30658: CVarBoolI2 var_120
  loc_A3065C: FLdRfVar var_150
  loc_A3065F: ImpAdCallFPR4  = IIf(, , )
  loc_A30664: FLdPr Me
  loc_A30667: VCallAd Control_ID_FechImpuMsk
  loc_A3066A: FStAdFunc var_164
  loc_A3066D: LitI2_Byte &HFF
  loc_A3066F: PopTmpLdAd2 var_8A
  loc_A30672: FLdZeroAd var_164
  loc_A30675: FStAdFunc var_15C
  loc_A30678: FLdRfVar var_15C
  loc_A3067B: FLdRfVar var_150
  loc_A3067E: CStrVarVal var_158
  loc_A30682: LitI2_Byte &HFF
  loc_A30684: LitI2_Byte &HFF
  loc_A30686: FLdRfVar var_A0
  loc_A30689: CStrVarTmp
  loc_A3068A: FStStrNoPop var_154
  loc_A3068D: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A30692: FStStrNoPop var_160
  loc_A30695: FLdPr Me
  loc_A30698: MemStStrCopy
  loc_A3069C: FFreeStr var_B4 = "": var_154 = "": var_158 = ""
  loc_A306A7: FFreeAd var_88 = "": var_90 = "": var_B8 = "": var_BC = "": var_D0 = "": var_E4 = "": var_F8 = "": var_FC = "": var_15C = ""
  loc_A306BE: FFreeVar var_A0 = "": var_B0 = "": var_E0 = "": var_F4 = "": var_120 = "": var_130 = "": var_140 = ""
  loc_A306D1: FLdPr Me
  loc_A306D4: VCallAd Control_ID_FechImpuMsk
  loc_A306D7: FStAdFunc var_BC
  loc_A306DA: LitNothing
  loc_A306DC: CastAd
  loc_A306DF: FStAdFunc var_B8
  loc_A306E2: FLdRfVar var_B8
  loc_A306E5: FLdZeroAd var_BC
  loc_A306E8: FStAdFuncNoPop
  loc_A306EB: CastAd
  loc_A306EE: FStAdFunc var_90
  loc_A306F1: FLdRfVar var_90
  loc_A306F4: FLdPr Me
  loc_A306F7: MemLdRfVar from_stack_1.global_68
  loc_A306FA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A306FF: IStI2 KeyAscii
  loc_A30702: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_A3070D: ExitProcHresult
End Sub

Private Sub FechImpuMsk_KeyPress(KeyAscii As Integer) '98A5B0
  'Data Table: 4EED48
  loc_98A56C: ILdI2 KeyAscii
  loc_98A56F: CI4UI1
  loc_98A570: LitI4 &H20
  loc_98A575: EqI4
  loc_98A576: BranchF loc_98A5AC
  loc_98A579: LitVar_Missing var_A4
  loc_98A57C: PopAdLdVar
  loc_98A57D: LitVarI4
  loc_98A585: PopAdLdVar
  loc_98A586: ImpAdLdRf MemVar_C3D9A8
  loc_98A589: NewIfNullPr frmCalendario
  loc_98A58C: frmCalendario.Show from_stack_1, from_stack_2
  loc_98A591: ImpAdLdRf MemVar_C3D038
  loc_98A594: CDargRef
  loc_98A598: FLdPr Me
  loc_98A59B: VCallAd Control_ID_FechImpuMsk
  loc_98A59E: FStAdFunc var_A8
  loc_98A5A1: FLdPr var_A8
  loc_98A5A4: LateIdSt
  loc_98A5A9: FFree1Ad var_A8
  loc_98A5AC: ExitProcHresult
End Sub

Private Sub CantImpuTxt_GotFocus() '98CD40
  'Data Table: 4EED48
  loc_98CD00: FLdPr Me
  loc_98CD03: MemLdUI1 global_64
  loc_98CD07: CI2UI1
  loc_98CD09: LitI2_Byte 3
  loc_98CD0B: EqI2
  loc_98CD0C: BranchF loc_98CD2D
  loc_98CD0F: LitI2_Byte 1
  loc_98CD11: CStrUI1
  loc_98CD13: FStStrNoPop var_88
  loc_98CD16: FLdPr Me
  loc_98CD19: VCallAd Control_ID_CantImpuTxt
  loc_98CD1C: FStAdFunc var_8C
  loc_98CD1F: FLdPr var_8C
  loc_98CD22: Me.Text = from_stack_1
  loc_98CD27: FFree1Str var_88
  loc_98CD2A: FFree1Ad var_8C
  loc_98CD2D: FLdPr Me
  loc_98CD30: VCallAd Control_ID_CantImpuTxt
  loc_98CD33: CVarAd
  loc_98CD37: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_98CD3C: FFree1Var var_9C = ""
  loc_98CD3F: ExitProcHresult
End Sub

Private Sub CantImpuTxt_KeyPress(KeyAscii As Integer) '97DDC0
  'Data Table: 4EED48
  loc_97DD8C: LitStr "1234567890,."
  loc_97DD8F: FStStrCopy var_88
  loc_97DD92: FLdRfVar var_88
  loc_97DD95: ILdRf KeyAscii
  loc_97DD98: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97DD9D: IStI2 KeyAscii
  loc_97DDA0: FFree1Str var_88
  loc_97DDA3: ILdI2 KeyAscii
  loc_97DDA6: LitStr "."
  loc_97DDA9: ImpAdCallI2 Asc()
  loc_97DDAE: EqI2
  loc_97DDAF: BranchF loc_97DDBD
  loc_97DDB2: LitStr ","
  loc_97DDB5: ImpAdCallI2 Asc()
  loc_97DDBA: IStI2 KeyAscii
  loc_97DDBD: ExitProcHresult
End Sub

Private Sub CantImpuTxt_Validate(Cancel As Boolean) '9BCE94
  'Data Table: 4EED48
  loc_9BCDE0: FLdRfVar var_8A
  loc_9BCDE3: FLdPr Me
  loc_9BCDE6: VCallAd Control_ID_cmdCancelar
  loc_9BCDE9: FStAdFunc var_88
  loc_9BCDEC: FLdPr var_88
  loc_9BCDEF:  = Me.Value
  loc_9BCDF4: FLdI2 var_8A
  loc_9BCDF7: NotI4
  loc_9BCDF8: FLdRfVar var_92
  loc_9BCDFB: FLdPr Me
  loc_9BCDFE: VCallAd Control_ID_CantImpuTxt
  loc_9BCE01: FStAdFunc var_90
  loc_9BCE04: FLdPr var_90
  loc_9BCE07:  = Me.Enabled
  loc_9BCE0C: FLdI2 var_92
  loc_9BCE0F: AndI4
  loc_9BCE10: FFreeAd var_88 = ""
  loc_9BCE17: BranchF loc_9BCE92
  loc_9BCE1A: FLdRfVar var_98
  loc_9BCE1D: FLdPr Me
  loc_9BCE20: VCallAd Control_ID_CantImpuTxt
  loc_9BCE23: FStAdFunc var_88
  loc_9BCE26: FLdPr var_88
  loc_9BCE29:  = Me.Text
  loc_9BCE2E: LitStr "0"
  loc_9BCE31: LitI2_Byte &HFF
  loc_9BCE33: LitI2_Byte 0
  loc_9BCE35: LitI2_Byte 0
  loc_9BCE37: ILdRf var_98
  loc_9BCE3A: LitStr "Cantidad"
  loc_9BCE3D: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_9BCE42: FStStrNoPop var_9C
  loc_9BCE45: FLdPr Me
  loc_9BCE48: MemStStrCopy
  loc_9BCE4C: FFreeStr var_98 = ""
  loc_9BCE53: FFree1Ad var_88
  loc_9BCE56: FLdPr Me
  loc_9BCE59: VCallAd Control_ID_CantImpuTxt
  loc_9BCE5C: FStAdFunc var_A4
  loc_9BCE5F: LitNothing
  loc_9BCE61: CastAd
  loc_9BCE64: FStAdFunc var_A0
  loc_9BCE67: FLdRfVar var_A0
  loc_9BCE6A: FLdZeroAd var_A4
  loc_9BCE6D: FStAdFuncNoPop
  loc_9BCE70: CastAd
  loc_9BCE73: FStAdFunc var_90
  loc_9BCE76: FLdRfVar var_90
  loc_9BCE79: FLdPr Me
  loc_9BCE7C: MemLdRfVar from_stack_1.global_68
  loc_9BCE7F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BCE84: IStI2 Cancel
  loc_9BCE87: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9BCE92: ExitProcHresult
End Sub

Private Sub ImunImpuTxt_GotFocus() '9C1F74
  'Data Table: 4EED48
  loc_9C1EB8: FLdRfVar var_8C
  loc_9C1EBB: FLdPr Me
  loc_9C1EBE: VCallAd Control_ID_ImpoImpuTxt
  loc_9C1EC1: FStAdFunc var_88
  loc_9C1EC4: FLdPr var_88
  loc_9C1EC7:  = Me.Text
  loc_9C1ECC: FLdZeroAd var_8C
  loc_9C1ECF: CVarStr var_9C
  loc_9C1ED2: ImpAdCallI2 IsNumeric()
  loc_9C1ED7: FFree1Ad var_88
  loc_9C1EDA: FFree1Var var_9C = ""
  loc_9C1EDD: BranchF loc_9C1F61
  loc_9C1EE0: FLdRfVar var_8C
  loc_9C1EE3: FLdPr Me
  loc_9C1EE6: VCallAd Control_ID_ImpoImpuTxt
  loc_9C1EE9: FStAdFunc var_88
  loc_9C1EEC: FLdPr var_88
  loc_9C1EEF:  = Me.Text
  loc_9C1EF4: ILdRf var_8C
  loc_9C1EF7: CR8Str
  loc_9C1EF9: LitI2_Byte 0
  loc_9C1EFB: CR8I2
  loc_9C1EFC: GtR4
  loc_9C1EFD: FFree1Str var_8C
  loc_9C1F00: FFree1Ad var_88
  loc_9C1F03: BranchF loc_9C1F61
  loc_9C1F06: FLdRfVar var_A4
  loc_9C1F09: FLdPr Me
  loc_9C1F0C: VCallAd Control_ID_CantImpuTxt
  loc_9C1F0F: FStAdFunc var_A0
  loc_9C1F12: FLdPr var_A0
  loc_9C1F15:  = Me.Text
  loc_9C1F1A: FLdRfVar var_8C
  loc_9C1F1D: FLdPr Me
  loc_9C1F20: VCallAd Control_ID_ImpoImpuTxt
  loc_9C1F23: FStAdFunc var_88
  loc_9C1F26: FLdPr var_88
  loc_9C1F29:  = Me.Text
  loc_9C1F2E: ILdRf var_8C
  loc_9C1F31: CR8Str
  loc_9C1F33: ILdRf var_A4
  loc_9C1F36: CR8Str
  loc_9C1F38: DivR8
  loc_9C1F39: CStrR8
  loc_9C1F3B: FStStrNoPop var_A8
  loc_9C1F3E: FLdPr Me
  loc_9C1F41: VCallAd Control_ID_ImunImpuTxt
  loc_9C1F44: FStAdFunc var_AC
  loc_9C1F47: FLdPr var_AC
  loc_9C1F4A: Me.Text = from_stack_1
  loc_9C1F4F: FFreeStr var_8C = "": var_A4 = ""
  loc_9C1F58: FFreeAd var_88 = "": var_A0 = ""
  loc_9C1F61: FLdPr Me
  loc_9C1F64: VCallAd Control_ID_ImunImpuTxt
  loc_9C1F67: CVarAd
  loc_9C1F6B: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9C1F70: FFree1Var var_9C = ""
  loc_9C1F73: ExitProcHresult
End Sub

Private Sub ImunImpuTxt_KeyPress(KeyAscii As Integer) '97E2A0
  'Data Table: 4EED48
  loc_97E26C: LitStr "1234567890,."
  loc_97E26F: FStStrCopy var_88
  loc_97E272: FLdRfVar var_88
  loc_97E275: ILdRf KeyAscii
  loc_97E278: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97E27D: IStI2 KeyAscii
  loc_97E280: FFree1Str var_88
  loc_97E283: ILdI2 KeyAscii
  loc_97E286: LitStr "."
  loc_97E289: ImpAdCallI2 Asc()
  loc_97E28E: EqI2
  loc_97E28F: BranchF loc_97E29D
  loc_97E292: LitStr ","
  loc_97E295: ImpAdCallI2 Asc()
  loc_97E29A: IStI2 KeyAscii
  loc_97E29D: ExitProcHresult
End Sub

Private Sub ImunImpuTxt_Validate(Cancel As Boolean) '9B6A84
  'Data Table: 4EED48
  loc_9B69DC: FLdRfVar var_8A
  loc_9B69DF: FLdPr Me
  loc_9B69E2: VCallAd Control_ID_cmdCancelar
  loc_9B69E5: FStAdFunc var_88
  loc_9B69E8: FLdPr var_88
  loc_9B69EB:  = Me.Value
  loc_9B69F0: FLdI2 var_8A
  loc_9B69F3: NotI4
  loc_9B69F4: FFree1Ad var_88
  loc_9B69F7: BranchF loc_9B6A83
  loc_9B69FA: FLdRfVar var_90
  loc_9B69FD: FLdPr Me
  loc_9B6A00: VCallAd Control_ID_ImunImpuTxt
  loc_9B6A03: FStAdFunc var_88
  loc_9B6A06: FLdPr var_88
  loc_9B6A09:  = Me.Text
  loc_9B6A0E: FLdRfVar var_94
  loc_9B6A11: FLdPr Me
  loc_9B6A14: MemLdUI1 global_64
  loc_9B6A18: FLdPr Me
  loc_9B6A1B: MemLdRfVar from_stack_1.global_80
  loc_9B6A1E: NewIfNullRf
  loc_9B6A22: ILdRf var_90
  loc_9B6A25: FLdPr Me
  loc_9B6A28: MemLdRfVar from_stack_1.global_52
  loc_9B6A2B: NewIfNullPr clsimputacion
  loc_9B6A2E: from_stack_4v = clsimputacion.ValidaImunImpuPreventiva(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_9B6A33: ILdRf var_94
  loc_9B6A36: FLdPr Me
  loc_9B6A39: MemStStrCopy
  loc_9B6A3D: FFreeStr var_90 = ""
  loc_9B6A44: FFree1Ad var_88
  loc_9B6A47: FLdPr Me
  loc_9B6A4A: VCallAd Control_ID_ImunImpuTxt
  loc_9B6A4D: FStAdFunc var_A0
  loc_9B6A50: LitNothing
  loc_9B6A52: CastAd
  loc_9B6A55: FStAdFunc var_9C
  loc_9B6A58: FLdRfVar var_9C
  loc_9B6A5B: FLdZeroAd var_A0
  loc_9B6A5E: FStAdFuncNoPop
  loc_9B6A61: CastAd
  loc_9B6A64: FStAdFunc var_98
  loc_9B6A67: FLdRfVar var_98
  loc_9B6A6A: FLdPr Me
  loc_9B6A6D: MemLdRfVar from_stack_1.global_68
  loc_9B6A70: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9B6A75: IStI2 Cancel
  loc_9B6A78: FFreeAd var_88 = "": var_98 = "": var_9C = ""
  loc_9B6A83: ExitProcHresult
End Sub

Private Sub ImpoImpuTxt_GotFocus() '9A4C2C
  'Data Table: 4EED48
  loc_9A4BBC: FLdRfVar var_94
  loc_9A4BBF: FLdPr Me
  loc_9A4BC2: VCallAd Control_ID_CantImpuTxt
  loc_9A4BC5: FStAdFunc var_90
  loc_9A4BC8: FLdPr var_90
  loc_9A4BCB:  = Me.Text
  loc_9A4BD0: FLdRfVar var_8C
  loc_9A4BD3: FLdPr Me
  loc_9A4BD6: VCallAd Control_ID_ImunImpuTxt
  loc_9A4BD9: FStAdFunc var_88
  loc_9A4BDC: FLdPr var_88
  loc_9A4BDF:  = Me.Text
  loc_9A4BE4: ILdRf var_8C
  loc_9A4BE7: CR8Str
  loc_9A4BE9: ILdRf var_94
  loc_9A4BEC: CR8Str
  loc_9A4BEE: MulR8
  loc_9A4BEF: CStrR8
  loc_9A4BF1: FStStrNoPop var_98
  loc_9A4BF4: FLdPr Me
  loc_9A4BF7: VCallAd Control_ID_ImpoImpuTxt
  loc_9A4BFA: FStAdFunc var_9C
  loc_9A4BFD: FLdPr var_9C
  loc_9A4C00: Me.Text = from_stack_1
  loc_9A4C05: FFreeStr var_8C = "": var_94 = ""
  loc_9A4C0E: FFreeAd var_88 = "": var_90 = ""
  loc_9A4C17: FLdPr Me
  loc_9A4C1A: VCallAd Control_ID_ImpoImpuTxt
  loc_9A4C1D: CVarAd
  loc_9A4C21: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9A4C26: FFree1Var var_AC = ""
  loc_9A4C29: ExitProcHresult
End Sub

Private Sub ImpoImpuTxt_KeyPress(KeyAscii As Integer) '97E100
  'Data Table: 4EED48
  loc_97E0CC: LitStr "1234567890,."
  loc_97E0CF: FStStrCopy var_88
  loc_97E0D2: FLdRfVar var_88
  loc_97E0D5: ILdRf KeyAscii
  loc_97E0D8: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_97E0DD: IStI2 KeyAscii
  loc_97E0E0: FFree1Str var_88
  loc_97E0E3: ILdI2 KeyAscii
  loc_97E0E6: LitStr "."
  loc_97E0E9: ImpAdCallI2 Asc()
  loc_97E0EE: EqI2
  loc_97E0EF: BranchF loc_97E0FD
  loc_97E0F2: LitStr ","
  loc_97E0F5: ImpAdCallI2 Asc()
  loc_97E0FA: IStI2 KeyAscii
  loc_97E0FD: ExitProcHresult
End Sub

Private Sub ImpoImpuTxt_Validate(Cancel As Boolean) 'A11648
  'Data Table: 4EED48
  loc_A114E0: FLdRfVar var_8A
  loc_A114E3: FLdPr Me
  loc_A114E6: VCallAd Control_ID_cmdCancelar
  loc_A114E9: FStAdFunc var_88
  loc_A114EC: FLdPr var_88
  loc_A114EF:  = Me.Value
  loc_A114F4: FLdI2 var_8A
  loc_A114F7: NotI4
  loc_A114F8: FFree1Ad var_88
  loc_A114FB: BranchF loc_A11645
  loc_A114FE: FLdRfVar var_90
  loc_A11501: FLdPr Me
  loc_A11504: VCallAd Control_ID_ImpoImpuTxt
  loc_A11507: FStAdFunc var_88
  loc_A1150A: FLdPr var_88
  loc_A1150D:  = Me.Text
  loc_A11512: FLdPr Me
  loc_A11515: VCallAd Control_ID_FechImpuMsk
  loc_A11518: FStAdFunc var_94
  loc_A1151B: FLdPr var_94
  loc_A1151E: LateIdLdVar var_A4 DispID_15 0
  loc_A11525: PopAd
  loc_A11527: FLdRfVar var_AC
  loc_A1152A: FLdPr Me
  loc_A1152D: VCallAd Control_ID_SaldImpuLbl
  loc_A11530: FStAdFunc var_A8
  loc_A11533: FLdPr var_A8
  loc_A11536:  = Me.Caption
  loc_A1153B: FLdRfVar var_B4
  loc_A1153E: LitI2_Byte 0
  loc_A11540: PopTmpLdAd2 var_8A
  loc_A11543: ILdRf var_AC
  loc_A11546: FLdRfVar var_A4
  loc_A11549: CStrVarTmp
  loc_A1154A: FStStrNoPop var_B0
  loc_A1154D: FLdPr Me
  loc_A11550: MemLdRfVar from_stack_1.global_92
  loc_A11553: NewIfNullRf
  loc_A11557: FLdPr Me
  loc_A1155A: MemLdRfVar from_stack_1.global_88
  loc_A1155D: NewIfNullRf
  loc_A11561: FLdPr Me
  loc_A11564: MemLdRfVar from_stack_1.global_84
  loc_A11567: NewIfNullRf
  loc_A1156B: FLdPr Me
  loc_A1156E: MemLdRfVar from_stack_1.global_80
  loc_A11571: NewIfNullRf
  loc_A11575: ILdRf var_90
  loc_A11578: FLdPr Me
  loc_A1157B: MemLdRfVar from_stack_1.global_52
  loc_A1157E: NewIfNullPr clsimputacion
  loc_A11581: from_stack_9v = clsimputacion.ValidaPrevImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_A11586: ILdRf var_B4
  loc_A11589: FLdPr Me
  loc_A1158C: MemStStrCopy
  loc_A11590: FFreeStr var_90 = "": var_B0 = "": var_AC = ""
  loc_A1159B: FFreeAd var_88 = "": var_94 = ""
  loc_A115A4: FFree1Var var_A4 = ""
  loc_A115A7: FLdPr Me
  loc_A115AA: VCallAd Control_ID_ImpoImpuTxt
  loc_A115AD: FStAdFunc var_B8
  loc_A115B0: LitNothing
  loc_A115B2: CastAd
  loc_A115B5: FStAdFunc var_A8
  loc_A115B8: FLdRfVar var_A8
  loc_A115BB: FLdZeroAd var_B8
  loc_A115BE: FStAdFuncNoPop
  loc_A115C1: CastAd
  loc_A115C4: FStAdFunc var_94
  loc_A115C7: FLdRfVar var_94
  loc_A115CA: FLdPr Me
  loc_A115CD: MemLdRfVar from_stack_1.global_68
  loc_A115D0: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A115D5: IStI2 Cancel
  loc_A115D8: FFreeAd var_88 = "": var_94 = "": var_A8 = ""
  loc_A115E3: ILdI2 Cancel
  loc_A115E6: NotI4
  loc_A115E7: BranchF loc_A11645
  loc_A115EA: FLdRfVar var_AC
  loc_A115ED: FLdPr Me
  loc_A115F0: VCallAd Control_ID_CantImpuTxt
  loc_A115F3: FStAdFunc var_94
  loc_A115F6: FLdPr var_94
  loc_A115F9:  = Me.Text
  loc_A115FE: FLdRfVar var_90
  loc_A11601: FLdPr Me
  loc_A11604: VCallAd Control_ID_ImpoImpuTxt
  loc_A11607: FStAdFunc var_88
  loc_A1160A: FLdPr var_88
  loc_A1160D:  = Me.Text
  loc_A11612: ILdRf var_90
  loc_A11615: CR8Str
  loc_A11617: ILdRf var_AC
  loc_A1161A: CR8Str
  loc_A1161C: DivR8
  loc_A1161D: CStrR8
  loc_A1161F: FStStrNoPop var_B0
  loc_A11622: FLdPr Me
  loc_A11625: VCallAd Control_ID_ImunImpuTxt
  loc_A11628: FStAdFunc var_A8
  loc_A1162B: FLdPr var_A8
  loc_A1162E: Me.Text = from_stack_1
  loc_A11633: FFreeStr var_90 = "": var_AC = ""
  loc_A1163C: FFreeAd var_88 = "": var_94 = ""
  loc_A11645: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_0 '99FDFC
  'Data Table: 4EED48
  loc_99FD8C: LitVarStr var_94, vbNullString
  loc_99FD91: PopAdLdVar
  loc_99FD92: FLdPr Me
  loc_99FD95: VCallAd Control_ID_CodiOrgaMsk
  loc_99FD98: FStAdFunc var_A8
  loc_99FD9B: FLdPr var_A8
  loc_99FD9E: LateIdSt
  loc_99FDA3: FFree1Ad var_A8
  loc_99FDA6: FLdPr Me
  loc_99FDA9: VCallAd Control_ID_CodiOrgaMsk
  loc_99FDAC: FStAdFunc var_A8
  loc_99FDAF: FLdPr var_A8
  loc_99FDB2: LateIdLdVar var_B8 DispID_22 0
  loc_99FDB9: CStrVarTmp
  loc_99FDBA: FStStrNoPop var_BC
  loc_99FDBD: LitStr vbNullString
  loc_99FDC0: EqStr
  loc_99FDC2: FFree1Str var_BC
  loc_99FDC5: FFree1Ad var_A8
  loc_99FDC8: FFree1Var var_B8 = ""
  loc_99FDCB: BranchF loc_99FDE8
  loc_99FDCE: LitVarStr var_94, vbNullString
  loc_99FDD3: PopAdLdVar
  loc_99FDD4: FLdPr Me
  loc_99FDD7: VCallAd Control_ID_CodiOrgaMsk
  loc_99FDDA: FStAdFunc var_A8
  loc_99FDDD: FLdPr var_A8
  loc_99FDE0: LateIdSt
  loc_99FDE5: FFree1Ad var_A8
  loc_99FDE8: FLdPr Me
  loc_99FDEB: VCallAd Control_ID_CodiOrgaMsk
  loc_99FDEE: CVarAd
  loc_99FDF2: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_99FDF7: FFree1Var var_B8 = ""
  loc_99FDFA: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_1 '988030
  'Data Table: 4EED48
  loc_987FEC: ImpAdLdI2 MemVar_C3D064
  loc_987FEF: LitI2 2024
  loc_987FF2: GeI2
  loc_987FF3: BranchF loc_988013
  loc_987FF6: LitVarStr var_94, "###"
  loc_987FFB: PopAdLdVar
  loc_987FFC: FLdPr Me
  loc_987FFF: VCallAd Control_ID_CodiOrgaMsk
  loc_988002: FStAdFunc var_A8
  loc_988005: FLdPr var_A8
  loc_988008: LateIdSt
  loc_98800D: FFree1Ad var_A8
  loc_988010: Branch loc_98802D
  loc_988013: LitVarStr var_94, "######"
  loc_988018: PopAdLdVar
  loc_988019: FLdPr Me
  loc_98801C: VCallAd Control_ID_CodiOrgaMsk
  loc_98801F: FStAdFunc var_A8
  loc_988022: FLdPr var_A8
  loc_988025: LateIdSt
  loc_98802A: FFree1Ad var_A8
  loc_98802D: ExitProcHresult
  loc_98802E: DOC
End Sub

Private Sub CodiOrgaMsk_UnknownEvent_8 'B54308
  'Data Table: 4EED48
  loc_B53820: FLdRfVar var_8A
  loc_B53823: FLdPr Me
  loc_B53826: VCallAd Control_ID_cmdCancelar
  loc_B53829: FStAdFunc var_88
  loc_B5382C: FLdPr var_88
  loc_B5382F:  = Me.Value
  loc_B53834: FLdI2 var_8A
  loc_B53837: NotI4
  loc_B53838: FLdPr Me
  loc_B5383B: VCallAd Control_ID_CodiOrgaMsk
  loc_B5383E: FStAdFunc var_90
  loc_B53841: FLdPr var_90
  loc_B53844: LateIdLdVar var_A0 DispID_13 -32767
  loc_B5384B: CBoolVar
  loc_B5384D: AndI4
  loc_B5384E: FFreeAd var_88 = ""
  loc_B53855: FFree1Var var_A0 = ""
  loc_B53858: BranchF loc_B54307
  loc_B5385B: FLdPr Me
  loc_B5385E: VCallAd Control_ID_CodiOrgaMsk
  loc_B53861: FStAdFunc var_88
  loc_B53864: FLdPr var_88
  loc_B53867: LateIdLdVar var_A0 DispID_22 0
  loc_B5386E: CStrVarTmp
  loc_B5386F: FStStrNoPop var_A4
  loc_B53872: ImpAdCallI2 Trim$()
  loc_B53877: FStStrNoPop var_A8
  loc_B5387A: LitStr vbNullString
  loc_B5387D: NeStr
  loc_B5387F: FFreeStr var_A4 = ""
  loc_B53886: FFree1Ad var_88
  loc_B53889: FFree1Var var_A0 = ""
  loc_B5388C: BranchF loc_B540EC
  loc_B5388F: FLdPr Me
  loc_B53892: VCallAd Control_ID_CodiOrgaMsk
  loc_B53895: FStAdFunc var_88
  loc_B53898: FLdRfVar var_88
  loc_B5389B: ImpAdCallI2  = Proc_266_40_A1E128()
  loc_B538A0: FFree1Ad var_88
  loc_B538A3: BranchF loc_B53CC9
  loc_B538A6: FLdPr Me
  loc_B538A9: VCallAd Control_ID_CodiOrgaMsk
  loc_B538AC: FStAdFunc var_88
  loc_B538AF: FLdPr var_88
  loc_B538B2: LateIdLdVar var_A0 DispID_22 0
  loc_B538B9: PopAd
  loc_B538BB: LitStr " AND o.CodiOrga = '"
  loc_B538BE: LitI4 0
  loc_B538C3: LitI4 -1
  loc_B538C8: LitI4 1
  loc_B538CD: LitStr vbNullString
  loc_B538D0: LitStr "."
  loc_B538D3: FLdRfVar var_A0
  loc_B538D6: CStrVarTmp
  loc_B538D7: FStStrNoPop var_A4
  loc_B538DA: ImpAdCallI2 Replace(, , , , , )
  loc_B538DF: FStStrNoPop var_A8
  loc_B538E2: ConcatStr
  loc_B538E3: FStStrNoPop var_AC
  loc_B538E6: LitStr "'"
  loc_B538E9: ConcatStr
  loc_B538EA: FStStrNoPop var_B0
  loc_B538ED: ImpAdLdI2 MemVar_C3D064
  loc_B538F0: ImpAdLdRf MemVar_C3D710
  loc_B538F3: NewIfNullPr bscOrganigrama
  loc_B538F6: Call bscOrganigrama.Constructor(from_stack_1v, from_stack_2v)
  loc_B538FB: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_B53906: FFree1Ad var_88
  loc_B53909: FFree1Var var_A0 = ""
  loc_B5390C: FLdRfVar var_B4
  loc_B5390F: FLdRfVar var_90
  loc_B53912: FLdRfVar var_88
  loc_B53915: ImpAdLdRf MemVar_C3D710
  loc_B53918: NewIfNullPr bscOrganigrama
  loc_B5391B: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B53920: FLdPr var_88
  loc_B53923: from_stack_1v = clsbase.RsFrmGet()
  loc_B53928: FLdPr var_90
  loc_B5392B:  = Me.RecordCount
  loc_B53930: ILdRf var_B4
  loc_B53933: LitI4 1
  loc_B53938: EqI4
  loc_B53939: FFreeAd var_88 = ""
  loc_B53940: BranchF loc_B53A65
  loc_B53943: FLdRfVar var_A0
  loc_B53946: FLdRfVar var_CC
  loc_B53949: LitVarStr var_C8, "CodiOrga"
  loc_B5394E: PopAdLdVar
  loc_B5394F: FLdRfVar var_B8
  loc_B53952: FLdRfVar var_90
  loc_B53955: FLdRfVar var_88
  loc_B53958: ImpAdLdRf MemVar_C3D710
  loc_B5395B: NewIfNullPr bscOrganigrama
  loc_B5395E: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B53963: FLdPr var_88
  loc_B53966: from_stack_1v = clsbase.RsFrmGet()
  loc_B5396B: FLdPr var_90
  loc_B5396E:  = Me.Fields
  loc_B53973: FLdPr var_B8
  loc_B53976: from_stack_2 = Me.Item(from_stack_1)
  loc_B5397B: FLdPr var_CC
  loc_B5397E:  = Me.Value
  loc_B53983: FLdRfVar var_A4
  loc_B53986: FLdPr Me
  loc_B53989:  = Me.Name
  loc_B5398E: FLdPr Me
  loc_B53991: MemLdRfVar from_stack_1.global_84
  loc_B53994: NewIfNullRf
  loc_B53998: ILdRf var_A4
  loc_B5399B: FLdRfVar var_A0
  loc_B5399E: CStrVarTmp
  loc_B5399F: FStStrNoPop var_A8
  loc_B539A2: ImpAdLdI2 MemVar_C3D064
  loc_B539A5: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B539AA: FStStrNoPop var_AC
  loc_B539AD: FLdPr Me
  loc_B539B0: MemStStrCopy
  loc_B539B4: FFreeStr var_A8 = "": var_A4 = ""
  loc_B539BD: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B539C8: FFree1Var var_A0 = ""
  loc_B539CB: FLdRfVar var_A4
  loc_B539CE: FLdPr Me
  loc_B539D1: MemLdRfVar from_stack_1.global_84
  loc_B539D4: NewIfNullPr tblorganigrama
  loc_B539D7: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B539DC: FLdZeroAd var_A4
  loc_B539DF: CVarStr var_A0
  loc_B539E2: PopAdLdVar
  loc_B539E3: FLdPr Me
  loc_B539E6: VCallAd Control_ID_CodiOrgaMsk
  loc_B539E9: FStAdFunc var_88
  loc_B539EC: FLdPr var_88
  loc_B539EF: LateIdSt
  loc_B539F4: FFree1Ad var_88
  loc_B539F7: FFree1Var var_A0 = ""
  loc_B539FA: FLdRfVar var_A4
  loc_B539FD: FLdPr Me
  loc_B53A00: MemLdRfVar from_stack_1.global_84
  loc_B53A03: NewIfNullPr tblorganigrama
  loc_B53A06: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B53A0B: ILdRf var_A4
  loc_B53A0E: FLdPr Me
  loc_B53A11: VCallAd Control_ID_DetaOrgaLbl
  loc_B53A14: FStAdFunc var_88
  loc_B53A17: FLdPr var_88
  loc_B53A1A: Me.Caption = from_stack_1
  loc_B53A1F: FFree1Str var_A4
  loc_B53A22: FFree1Ad var_88
  loc_B53A25: FLdPr Me
  loc_B53A28: VCallAd Control_ID_CodiOrgaMsk
  loc_B53A2B: FStAdFunc var_CC
  loc_B53A2E: FLdPr Me
  loc_B53A31: VCallAd Control_ID_DetaOrgaLbl
  loc_B53A34: FStAdFunc var_B8
  loc_B53A37: FLdRfVar var_B8
  loc_B53A3A: FLdZeroAd var_CC
  loc_B53A3D: FStAdFuncNoPop
  loc_B53A40: CastAd
  loc_B53A43: FStAdFunc var_90
  loc_B53A46: FLdRfVar var_90
  loc_B53A49: FLdPr Me
  loc_B53A4C: MemLdRfVar from_stack_1.global_68
  loc_B53A4F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B53A54: IStI2 Cancel
  loc_B53A57: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B53A62: Branch loc_B53CC6
  loc_B53A65: FLdRfVar var_B4
  loc_B53A68: FLdRfVar var_90
  loc_B53A6B: FLdRfVar var_88
  loc_B53A6E: ImpAdLdRf MemVar_C3D710
  loc_B53A71: NewIfNullPr bscOrganigrama
  loc_B53A74: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B53A79: FLdPr var_88
  loc_B53A7C: from_stack_1v = clsbase.RsFrmGet()
  loc_B53A81: FLdPr var_90
  loc_B53A84:  = Me.RecordCount
  loc_B53A89: ILdRf var_B4
  loc_B53A8C: LitI4 1
  loc_B53A91: GtI4
  loc_B53A92: FFreeAd var_88 = ""
  loc_B53A99: BranchF loc_B53C48
  loc_B53A9C: LitVar_Missing var_DC
  loc_B53A9F: PopAdLdVar
  loc_B53AA0: LitVarI4
  loc_B53AA8: PopAdLdVar
  loc_B53AA9: ImpAdLdRf MemVar_C3D710
  loc_B53AAC: NewIfNullPr bscOrganigrama
  loc_B53AAF: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B53AB4: FLdRfVar var_B4
  loc_B53AB7: FLdRfVar var_88
  loc_B53ABA: ImpAdLdRf MemVar_C3D710
  loc_B53ABD: NewIfNullPr bscOrganigrama
  loc_B53AC0: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B53AC5: FLdPr var_88
  loc_B53AC8: from_stack_1 = clsbase.RecordCount
  loc_B53ACD: ILdRf var_B4
  loc_B53AD0: LitI4 0
  loc_B53AD5: GtI4
  loc_B53AD6: FFree1Ad var_88
  loc_B53AD9: BranchF loc_B53BFE
  loc_B53ADC: FLdRfVar var_A0
  loc_B53ADF: FLdRfVar var_CC
  loc_B53AE2: LitVarStr var_C8, "CodiOrga"
  loc_B53AE7: PopAdLdVar
  loc_B53AE8: FLdRfVar var_B8
  loc_B53AEB: FLdRfVar var_90
  loc_B53AEE: FLdRfVar var_88
  loc_B53AF1: ImpAdLdRf MemVar_C3D710
  loc_B53AF4: NewIfNullPr bscOrganigrama
  loc_B53AF7: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B53AFC: FLdPr var_88
  loc_B53AFF: from_stack_1v = clsbase.RsFrmGet()
  loc_B53B04: FLdPr var_90
  loc_B53B07:  = Me.Fields
  loc_B53B0C: FLdPr var_B8
  loc_B53B0F: from_stack_2 = Me.Item(from_stack_1)
  loc_B53B14: FLdPr var_CC
  loc_B53B17:  = Me.Value
  loc_B53B1C: FLdRfVar var_A4
  loc_B53B1F: FLdPr Me
  loc_B53B22:  = Me.Name
  loc_B53B27: FLdPr Me
  loc_B53B2A: MemLdRfVar from_stack_1.global_84
  loc_B53B2D: NewIfNullRf
  loc_B53B31: ILdRf var_A4
  loc_B53B34: FLdRfVar var_A0
  loc_B53B37: CStrVarTmp
  loc_B53B38: FStStrNoPop var_A8
  loc_B53B3B: ImpAdLdI2 MemVar_C3D064
  loc_B53B3E: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B53B43: FStStrNoPop var_AC
  loc_B53B46: FLdPr Me
  loc_B53B49: MemStStrCopy
  loc_B53B4D: FFreeStr var_A8 = "": var_A4 = ""
  loc_B53B56: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B53B61: FFree1Var var_A0 = ""
  loc_B53B64: FLdRfVar var_A4
  loc_B53B67: FLdPr Me
  loc_B53B6A: MemLdRfVar from_stack_1.global_84
  loc_B53B6D: NewIfNullPr tblorganigrama
  loc_B53B70: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B53B75: FLdZeroAd var_A4
  loc_B53B78: CVarStr var_A0
  loc_B53B7B: PopAdLdVar
  loc_B53B7C: FLdPr Me
  loc_B53B7F: VCallAd Control_ID_CodiOrgaMsk
  loc_B53B82: FStAdFunc var_88
  loc_B53B85: FLdPr var_88
  loc_B53B88: LateIdSt
  loc_B53B8D: FFree1Ad var_88
  loc_B53B90: FFree1Var var_A0 = ""
  loc_B53B93: FLdRfVar var_A4
  loc_B53B96: FLdPr Me
  loc_B53B99: MemLdRfVar from_stack_1.global_84
  loc_B53B9C: NewIfNullPr tblorganigrama
  loc_B53B9F: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B53BA4: ILdRf var_A4
  loc_B53BA7: FLdPr Me
  loc_B53BAA: VCallAd Control_ID_DetaOrgaLbl
  loc_B53BAD: FStAdFunc var_88
  loc_B53BB0: FLdPr var_88
  loc_B53BB3: Me.Caption = from_stack_1
  loc_B53BB8: FFree1Str var_A4
  loc_B53BBB: FFree1Ad var_88
  loc_B53BBE: FLdPr Me
  loc_B53BC1: VCallAd Control_ID_CodiOrgaMsk
  loc_B53BC4: FStAdFunc var_CC
  loc_B53BC7: FLdPr Me
  loc_B53BCA: VCallAd Control_ID_DetaOrgaLbl
  loc_B53BCD: FStAdFunc var_B8
  loc_B53BD0: FLdRfVar var_B8
  loc_B53BD3: FLdZeroAd var_CC
  loc_B53BD6: FStAdFuncNoPop
  loc_B53BD9: CastAd
  loc_B53BDC: FStAdFunc var_90
  loc_B53BDF: FLdRfVar var_90
  loc_B53BE2: FLdPr Me
  loc_B53BE5: MemLdRfVar from_stack_1.global_68
  loc_B53BE8: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B53BED: IStI2 Cancel
  loc_B53BF0: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B53BFB: Branch loc_B53C45
  loc_B53BFE: LitStr "El Organigrama NO EXISTE. Verifique..."
  loc_B53C01: FLdPr Me
  loc_B53C04: MemStStrCopy
  loc_B53C08: FLdPr Me
  loc_B53C0B: VCallAd Control_ID_CodiOrgaMsk
  loc_B53C0E: FStAdFunc var_CC
  loc_B53C11: FLdPr Me
  loc_B53C14: VCallAd Control_ID_DetaOrgaLbl
  loc_B53C17: FStAdFunc var_B8
  loc_B53C1A: FLdRfVar var_B8
  loc_B53C1D: FLdZeroAd var_CC
  loc_B53C20: FStAdFuncNoPop
  loc_B53C23: CastAd
  loc_B53C26: FStAdFunc var_90
  loc_B53C29: FLdRfVar var_90
  loc_B53C2C: FLdPr Me
  loc_B53C2F: MemLdRfVar from_stack_1.global_68
  loc_B53C32: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B53C37: IStI2 Cancel
  loc_B53C3A: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B53C45: Branch loc_B53CC6
  loc_B53C48: FLdRfVar var_B4
  loc_B53C4B: FLdRfVar var_90
  loc_B53C4E: FLdRfVar var_88
  loc_B53C51: ImpAdLdRf MemVar_C3D710
  loc_B53C54: NewIfNullPr bscOrganigrama
  loc_B53C57: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B53C5C: FLdPr var_88
  loc_B53C5F: from_stack_1v = clsbase.RsFrmGet()
  loc_B53C64: FLdPr var_90
  loc_B53C67:  = Me.RecordCount
  loc_B53C6C: ILdRf var_B4
  loc_B53C6F: LitI4 1
  loc_B53C74: LtI4
  loc_B53C75: FFreeAd var_88 = ""
  loc_B53C7C: BranchF loc_B53CC6
  loc_B53C7F: LitStr "El Organigrama NO EXISTE. Verifique..."
  loc_B53C82: FLdPr Me
  loc_B53C85: MemStStrCopy
  loc_B53C89: FLdPr Me
  loc_B53C8C: VCallAd Control_ID_CodiOrgaMsk
  loc_B53C8F: FStAdFunc var_CC
  loc_B53C92: FLdPr Me
  loc_B53C95: VCallAd Control_ID_DetaOrgaLbl
  loc_B53C98: FStAdFunc var_B8
  loc_B53C9B: FLdRfVar var_B8
  loc_B53C9E: FLdZeroAd var_CC
  loc_B53CA1: FStAdFuncNoPop
  loc_B53CA4: CastAd
  loc_B53CA7: FStAdFunc var_90
  loc_B53CAA: FLdRfVar var_90
  loc_B53CAD: FLdPr Me
  loc_B53CB0: MemLdRfVar from_stack_1.global_68
  loc_B53CB3: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B53CB8: IStI2 Cancel
  loc_B53CBB: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B53CC6: Branch loc_B540E9
  loc_B53CC9: FLdPr Me
  loc_B53CCC: VCallAd Control_ID_CodiOrgaMsk
  loc_B53CCF: FStAdFunc var_88
  loc_B53CD2: FLdPr var_88
  loc_B53CD5: LateIdLdVar var_A0 DispID_22 0
  loc_B53CDC: PopAd
  loc_B53CDE: LitStr " AND o.DetaOrga LIKE '" & Chr(37)
  loc_B53CE1: LitI4 0
  loc_B53CE6: LitI4 -1
  loc_B53CEB: LitI4 1
  loc_B53CF0: LitStr Chr(37)
  loc_B53CF3: LitStr " "
  loc_B53CF6: FLdRfVar var_A0
  loc_B53CF9: CStrVarTmp
  loc_B53CFA: FStStrNoPop var_A4
  loc_B53CFD: ImpAdCallI2 Replace(, , , , , )
  loc_B53D02: FStStrNoPop var_A8
  loc_B53D05: ConcatStr
  loc_B53D06: FStStrNoPop var_AC
  loc_B53D09: LitStr Chr(37) & "'"
  loc_B53D0C: ConcatStr
  loc_B53D0D: FStStrNoPop var_B0
  loc_B53D10: ImpAdLdI2 MemVar_C3D064
  loc_B53D13: ImpAdLdRf MemVar_C3D710
  loc_B53D16: NewIfNullPr bscOrganigrama
  loc_B53D19: Call bscOrganigrama.Constructor(from_stack_1v, from_stack_2v)
  loc_B53D1E: FFreeStr var_A4 = "": var_A8 = "": var_AC = ""
  loc_B53D29: FFree1Ad var_88
  loc_B53D2C: FFree1Var var_A0 = ""
  loc_B53D2F: FLdRfVar var_B4
  loc_B53D32: FLdRfVar var_90
  loc_B53D35: FLdRfVar var_88
  loc_B53D38: ImpAdLdRf MemVar_C3D710
  loc_B53D3B: NewIfNullPr bscOrganigrama
  loc_B53D3E: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B53D43: FLdPr var_88
  loc_B53D46: from_stack_1v = clsbase.RsFrmGet()
  loc_B53D4B: FLdPr var_90
  loc_B53D4E:  = Me.RecordCount
  loc_B53D53: ILdRf var_B4
  loc_B53D56: LitI4 1
  loc_B53D5B: EqI4
  loc_B53D5C: FFreeAd var_88 = ""
  loc_B53D63: BranchF loc_B53E88
  loc_B53D66: FLdRfVar var_A0
  loc_B53D69: FLdRfVar var_CC
  loc_B53D6C: LitVarStr var_C8, "CodiOrga"
  loc_B53D71: PopAdLdVar
  loc_B53D72: FLdRfVar var_B8
  loc_B53D75: FLdRfVar var_90
  loc_B53D78: FLdRfVar var_88
  loc_B53D7B: ImpAdLdRf MemVar_C3D710
  loc_B53D7E: NewIfNullPr bscOrganigrama
  loc_B53D81: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B53D86: FLdPr var_88
  loc_B53D89: from_stack_1v = clsbase.RsFrmGet()
  loc_B53D8E: FLdPr var_90
  loc_B53D91:  = Me.Fields
  loc_B53D96: FLdPr var_B8
  loc_B53D99: from_stack_2 = Me.Item(from_stack_1)
  loc_B53D9E: FLdPr var_CC
  loc_B53DA1:  = Me.Value
  loc_B53DA6: FLdRfVar var_A4
  loc_B53DA9: FLdPr Me
  loc_B53DAC:  = Me.Name
  loc_B53DB1: FLdPr Me
  loc_B53DB4: MemLdRfVar from_stack_1.global_84
  loc_B53DB7: NewIfNullRf
  loc_B53DBB: ILdRf var_A4
  loc_B53DBE: FLdRfVar var_A0
  loc_B53DC1: CStrVarTmp
  loc_B53DC2: FStStrNoPop var_A8
  loc_B53DC5: ImpAdLdI2 MemVar_C3D064
  loc_B53DC8: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B53DCD: FStStrNoPop var_AC
  loc_B53DD0: FLdPr Me
  loc_B53DD3: MemStStrCopy
  loc_B53DD7: FFreeStr var_A8 = "": var_A4 = ""
  loc_B53DE0: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B53DEB: FFree1Var var_A0 = ""
  loc_B53DEE: FLdRfVar var_A4
  loc_B53DF1: FLdPr Me
  loc_B53DF4: MemLdRfVar from_stack_1.global_84
  loc_B53DF7: NewIfNullPr tblorganigrama
  loc_B53DFA: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B53DFF: FLdZeroAd var_A4
  loc_B53E02: CVarStr var_A0
  loc_B53E05: PopAdLdVar
  loc_B53E06: FLdPr Me
  loc_B53E09: VCallAd Control_ID_CodiOrgaMsk
  loc_B53E0C: FStAdFunc var_88
  loc_B53E0F: FLdPr var_88
  loc_B53E12: LateIdSt
  loc_B53E17: FFree1Ad var_88
  loc_B53E1A: FFree1Var var_A0 = ""
  loc_B53E1D: FLdRfVar var_A4
  loc_B53E20: FLdPr Me
  loc_B53E23: MemLdRfVar from_stack_1.global_84
  loc_B53E26: NewIfNullPr tblorganigrama
  loc_B53E29: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B53E2E: ILdRf var_A4
  loc_B53E31: FLdPr Me
  loc_B53E34: VCallAd Control_ID_DetaOrgaLbl
  loc_B53E37: FStAdFunc var_88
  loc_B53E3A: FLdPr var_88
  loc_B53E3D: Me.Caption = from_stack_1
  loc_B53E42: FFree1Str var_A4
  loc_B53E45: FFree1Ad var_88
  loc_B53E48: FLdPr Me
  loc_B53E4B: VCallAd Control_ID_CodiOrgaMsk
  loc_B53E4E: FStAdFunc var_CC
  loc_B53E51: FLdPr Me
  loc_B53E54: VCallAd Control_ID_DetaOrgaLbl
  loc_B53E57: FStAdFunc var_B8
  loc_B53E5A: FLdRfVar var_B8
  loc_B53E5D: FLdZeroAd var_CC
  loc_B53E60: FStAdFuncNoPop
  loc_B53E63: CastAd
  loc_B53E66: FStAdFunc var_90
  loc_B53E69: FLdRfVar var_90
  loc_B53E6C: FLdPr Me
  loc_B53E6F: MemLdRfVar from_stack_1.global_68
  loc_B53E72: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B53E77: IStI2 Cancel
  loc_B53E7A: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B53E85: Branch loc_B540E9
  loc_B53E88: FLdRfVar var_B4
  loc_B53E8B: FLdRfVar var_90
  loc_B53E8E: FLdRfVar var_88
  loc_B53E91: ImpAdLdRf MemVar_C3D710
  loc_B53E94: NewIfNullPr bscOrganigrama
  loc_B53E97: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B53E9C: FLdPr var_88
  loc_B53E9F: from_stack_1v = clsbase.RsFrmGet()
  loc_B53EA4: FLdPr var_90
  loc_B53EA7:  = Me.RecordCount
  loc_B53EAC: ILdRf var_B4
  loc_B53EAF: LitI4 1
  loc_B53EB4: GtI4
  loc_B53EB5: FFreeAd var_88 = ""
  loc_B53EBC: BranchF loc_B5406B
  loc_B53EBF: LitVar_Missing var_DC
  loc_B53EC2: PopAdLdVar
  loc_B53EC3: LitVarI4
  loc_B53ECB: PopAdLdVar
  loc_B53ECC: ImpAdLdRf MemVar_C3D710
  loc_B53ECF: NewIfNullPr bscOrganigrama
  loc_B53ED2: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B53ED7: FLdRfVar var_B4
  loc_B53EDA: FLdRfVar var_88
  loc_B53EDD: ImpAdLdRf MemVar_C3D710
  loc_B53EE0: NewIfNullPr bscOrganigrama
  loc_B53EE3: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B53EE8: FLdPr var_88
  loc_B53EEB: from_stack_1 = clsbase.RecordCount
  loc_B53EF0: ILdRf var_B4
  loc_B53EF3: LitI4 0
  loc_B53EF8: GtI4
  loc_B53EF9: FFree1Ad var_88
  loc_B53EFC: BranchF loc_B54021
  loc_B53EFF: FLdRfVar var_A0
  loc_B53F02: FLdRfVar var_CC
  loc_B53F05: LitVarStr var_C8, "CodiOrga"
  loc_B53F0A: PopAdLdVar
  loc_B53F0B: FLdRfVar var_B8
  loc_B53F0E: FLdRfVar var_90
  loc_B53F11: FLdRfVar var_88
  loc_B53F14: ImpAdLdRf MemVar_C3D710
  loc_B53F17: NewIfNullPr bscOrganigrama
  loc_B53F1A: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B53F1F: FLdPr var_88
  loc_B53F22: from_stack_1v = clsbase.RsFrmGet()
  loc_B53F27: FLdPr var_90
  loc_B53F2A:  = Me.Fields
  loc_B53F2F: FLdPr var_B8
  loc_B53F32: from_stack_2 = Me.Item(from_stack_1)
  loc_B53F37: FLdPr var_CC
  loc_B53F3A:  = Me.Value
  loc_B53F3F: FLdRfVar var_A4
  loc_B53F42: FLdPr Me
  loc_B53F45:  = Me.Name
  loc_B53F4A: FLdPr Me
  loc_B53F4D: MemLdRfVar from_stack_1.global_84
  loc_B53F50: NewIfNullRf
  loc_B53F54: ILdRf var_A4
  loc_B53F57: FLdRfVar var_A0
  loc_B53F5A: CStrVarTmp
  loc_B53F5B: FStStrNoPop var_A8
  loc_B53F5E: ImpAdLdI2 MemVar_C3D064
  loc_B53F61: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B53F66: FStStrNoPop var_AC
  loc_B53F69: FLdPr Me
  loc_B53F6C: MemStStrCopy
  loc_B53F70: FFreeStr var_A8 = "": var_A4 = ""
  loc_B53F79: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B53F84: FFree1Var var_A0 = ""
  loc_B53F87: FLdRfVar var_A4
  loc_B53F8A: FLdPr Me
  loc_B53F8D: MemLdRfVar from_stack_1.global_84
  loc_B53F90: NewIfNullPr tblorganigrama
  loc_B53F93: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B53F98: FLdZeroAd var_A4
  loc_B53F9B: CVarStr var_A0
  loc_B53F9E: PopAdLdVar
  loc_B53F9F: FLdPr Me
  loc_B53FA2: VCallAd Control_ID_CodiOrgaMsk
  loc_B53FA5: FStAdFunc var_88
  loc_B53FA8: FLdPr var_88
  loc_B53FAB: LateIdSt
  loc_B53FB0: FFree1Ad var_88
  loc_B53FB3: FFree1Var var_A0 = ""
  loc_B53FB6: FLdRfVar var_A4
  loc_B53FB9: FLdPr Me
  loc_B53FBC: MemLdRfVar from_stack_1.global_84
  loc_B53FBF: NewIfNullPr tblorganigrama
  loc_B53FC2: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B53FC7: ILdRf var_A4
  loc_B53FCA: FLdPr Me
  loc_B53FCD: VCallAd Control_ID_DetaOrgaLbl
  loc_B53FD0: FStAdFunc var_88
  loc_B53FD3: FLdPr var_88
  loc_B53FD6: Me.Caption = from_stack_1
  loc_B53FDB: FFree1Str var_A4
  loc_B53FDE: FFree1Ad var_88
  loc_B53FE1: FLdPr Me
  loc_B53FE4: VCallAd Control_ID_CodiOrgaMsk
  loc_B53FE7: FStAdFunc var_CC
  loc_B53FEA: FLdPr Me
  loc_B53FED: VCallAd Control_ID_DetaOrgaLbl
  loc_B53FF0: FStAdFunc var_B8
  loc_B53FF3: FLdRfVar var_B8
  loc_B53FF6: FLdZeroAd var_CC
  loc_B53FF9: FStAdFuncNoPop
  loc_B53FFC: CastAd
  loc_B53FFF: FStAdFunc var_90
  loc_B54002: FLdRfVar var_90
  loc_B54005: FLdPr Me
  loc_B54008: MemLdRfVar from_stack_1.global_68
  loc_B5400B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B54010: IStI2 Cancel
  loc_B54013: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B5401E: Branch loc_B54068
  loc_B54021: LitStr "El Organigrama NO EXISTE. Verique..."
  loc_B54024: FLdPr Me
  loc_B54027: MemStStrCopy
  loc_B5402B: FLdPr Me
  loc_B5402E: VCallAd Control_ID_CodiOrgaMsk
  loc_B54031: FStAdFunc var_CC
  loc_B54034: FLdPr Me
  loc_B54037: VCallAd Control_ID_DetaOrgaLbl
  loc_B5403A: FStAdFunc var_B8
  loc_B5403D: FLdRfVar var_B8
  loc_B54040: FLdZeroAd var_CC
  loc_B54043: FStAdFuncNoPop
  loc_B54046: CastAd
  loc_B54049: FStAdFunc var_90
  loc_B5404C: FLdRfVar var_90
  loc_B5404F: FLdPr Me
  loc_B54052: MemLdRfVar from_stack_1.global_68
  loc_B54055: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B5405A: IStI2 Cancel
  loc_B5405D: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B54068: Branch loc_B540E9
  loc_B5406B: FLdRfVar var_B4
  loc_B5406E: FLdRfVar var_90
  loc_B54071: FLdRfVar var_88
  loc_B54074: ImpAdLdRf MemVar_C3D710
  loc_B54077: NewIfNullPr bscOrganigrama
  loc_B5407A: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B5407F: FLdPr var_88
  loc_B54082: from_stack_1v = clsbase.RsFrmGet()
  loc_B54087: FLdPr var_90
  loc_B5408A:  = Me.RecordCount
  loc_B5408F: ILdRf var_B4
  loc_B54092: LitI4 1
  loc_B54097: LtI4
  loc_B54098: FFreeAd var_88 = ""
  loc_B5409F: BranchF loc_B540E9
  loc_B540A2: LitStr "El organigrama NO EXISTE. Verique..."
  loc_B540A5: FLdPr Me
  loc_B540A8: MemStStrCopy
  loc_B540AC: FLdPr Me
  loc_B540AF: VCallAd Control_ID_CodiOrgaMsk
  loc_B540B2: FStAdFunc var_CC
  loc_B540B5: FLdPr Me
  loc_B540B8: VCallAd Control_ID_DetaOrgaLbl
  loc_B540BB: FStAdFunc var_B8
  loc_B540BE: FLdRfVar var_B8
  loc_B540C1: FLdZeroAd var_CC
  loc_B540C4: FStAdFuncNoPop
  loc_B540C7: CastAd
  loc_B540CA: FStAdFunc var_90
  loc_B540CD: FLdRfVar var_90
  loc_B540D0: FLdPr Me
  loc_B540D3: MemLdRfVar from_stack_1.global_68
  loc_B540D6: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B540DB: IStI2 Cancel
  loc_B540DE: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B540E9: Branch loc_B542B8
  loc_B540EC: LitI2_Byte 0
  loc_B540EE: ImpAdLdRf MemVar_C3D710
  loc_B540F1: NewIfNullPr bscOrganigrama
  loc_B540F4: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_B540F9: LitNothing
  loc_B540FB: CastAd
  loc_B540FE: FStAdFuncNoPop
  loc_B54101: ImpAdLdRf MemVar_C3D710
  loc_B54104: NewIfNullPr bscOrganigrama
  loc_B54107: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_B5410C: FFree1Ad var_88
  loc_B5410F: LitVar_Missing var_DC
  loc_B54112: PopAdLdVar
  loc_B54113: LitVarI4
  loc_B5411B: PopAdLdVar
  loc_B5411C: ImpAdLdRf MemVar_C3D710
  loc_B5411F: NewIfNullPr bscOrganigrama
  loc_B54122: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_B54127: FLdRfVar var_B4
  loc_B5412A: FLdRfVar var_88
  loc_B5412D: ImpAdLdRf MemVar_C3D710
  loc_B54130: NewIfNullPr bscOrganigrama
  loc_B54133: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B54138: FLdPr var_88
  loc_B5413B: from_stack_1 = clsbase.RecordCount
  loc_B54140: ILdRf var_B4
  loc_B54143: LitI4 0
  loc_B54148: GtI4
  loc_B54149: FFree1Ad var_88
  loc_B5414C: BranchF loc_B54271
  loc_B5414F: FLdRfVar var_A0
  loc_B54152: FLdRfVar var_CC
  loc_B54155: LitVarStr var_C8, "CodiOrga"
  loc_B5415A: PopAdLdVar
  loc_B5415B: FLdRfVar var_B8
  loc_B5415E: FLdRfVar var_90
  loc_B54161: FLdRfVar var_88
  loc_B54164: ImpAdLdRf MemVar_C3D710
  loc_B54167: NewIfNullPr bscOrganigrama
  loc_B5416A: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_B5416F: FLdPr var_88
  loc_B54172: from_stack_1v = clsbase.RsFrmGet()
  loc_B54177: FLdPr var_90
  loc_B5417A:  = Me.Fields
  loc_B5417F: FLdPr var_B8
  loc_B54182: from_stack_2 = Me.Item(from_stack_1)
  loc_B54187: FLdPr var_CC
  loc_B5418A:  = Me.Value
  loc_B5418F: FLdRfVar var_A4
  loc_B54192: FLdPr Me
  loc_B54195:  = Me.Name
  loc_B5419A: FLdPr Me
  loc_B5419D: MemLdRfVar from_stack_1.global_84
  loc_B541A0: NewIfNullRf
  loc_B541A4: ILdRf var_A4
  loc_B541A7: FLdRfVar var_A0
  loc_B541AA: CStrVarTmp
  loc_B541AB: FStStrNoPop var_A8
  loc_B541AE: ImpAdLdI2 MemVar_C3D064
  loc_B541B1: ImpAdCallI2 Proc_266_7_9E517C(, , , )
  loc_B541B6: FStStrNoPop var_AC
  loc_B541B9: FLdPr Me
  loc_B541BC: MemStStrCopy
  loc_B541C0: FFreeStr var_A8 = "": var_A4 = ""
  loc_B541C9: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B541D4: FFree1Var var_A0 = ""
  loc_B541D7: FLdRfVar var_A4
  loc_B541DA: FLdPr Me
  loc_B541DD: MemLdRfVar from_stack_1.global_84
  loc_B541E0: NewIfNullPr tblorganigrama
  loc_B541E3: from_stack_1v = tblorganigrama.CodiOrgaGet()
  loc_B541E8: FLdZeroAd var_A4
  loc_B541EB: CVarStr var_A0
  loc_B541EE: PopAdLdVar
  loc_B541EF: FLdPr Me
  loc_B541F2: VCallAd Control_ID_CodiOrgaMsk
  loc_B541F5: FStAdFunc var_88
  loc_B541F8: FLdPr var_88
  loc_B541FB: LateIdSt
  loc_B54200: FFree1Ad var_88
  loc_B54203: FFree1Var var_A0 = ""
  loc_B54206: FLdRfVar var_A4
  loc_B54209: FLdPr Me
  loc_B5420C: MemLdRfVar from_stack_1.global_84
  loc_B5420F: NewIfNullPr tblorganigrama
  loc_B54212: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B54217: ILdRf var_A4
  loc_B5421A: FLdPr Me
  loc_B5421D: VCallAd Control_ID_DetaOrgaLbl
  loc_B54220: FStAdFunc var_88
  loc_B54223: FLdPr var_88
  loc_B54226: Me.Caption = from_stack_1
  loc_B5422B: FFree1Str var_A4
  loc_B5422E: FFree1Ad var_88
  loc_B54231: FLdPr Me
  loc_B54234: VCallAd Control_ID_CodiOrgaMsk
  loc_B54237: FStAdFunc var_CC
  loc_B5423A: FLdPr Me
  loc_B5423D: VCallAd Control_ID_DetaOrgaLbl
  loc_B54240: FStAdFunc var_B8
  loc_B54243: FLdRfVar var_B8
  loc_B54246: FLdZeroAd var_CC
  loc_B54249: FStAdFuncNoPop
  loc_B5424C: CastAd
  loc_B5424F: FStAdFunc var_90
  loc_B54252: FLdRfVar var_90
  loc_B54255: FLdPr Me
  loc_B54258: MemLdRfVar from_stack_1.global_68
  loc_B5425B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B54260: IStI2 Cancel
  loc_B54263: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B5426E: Branch loc_B542B8
  loc_B54271: LitStr "El organigrama NO EXISTE. Verifique..."
  loc_B54274: FLdPr Me
  loc_B54277: MemStStrCopy
  loc_B5427B: FLdPr Me
  loc_B5427E: VCallAd Control_ID_CodiOrgaMsk
  loc_B54281: FStAdFunc var_CC
  loc_B54284: FLdPr Me
  loc_B54287: VCallAd Control_ID_DetaOrgaLbl
  loc_B5428A: FStAdFunc var_B8
  loc_B5428D: FLdRfVar var_B8
  loc_B54290: FLdZeroAd var_CC
  loc_B54293: FStAdFuncNoPop
  loc_B54296: CastAd
  loc_B54299: FStAdFunc var_90
  loc_B5429C: FLdRfVar var_90
  loc_B5429F: FLdPr Me
  loc_B542A2: MemLdRfVar from_stack_1.global_68
  loc_B542A5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B542AA: IStI2 Cancel
  loc_B542AD: FFreeAd var_88 = "": var_90 = "": var_B8 = ""
  loc_B542B8: ILdI2 Cancel
  loc_B542BB: NotI4
  loc_B542BC: BranchF loc_B542ED
  loc_B542BF: FLdRfVar var_A4
  loc_B542C2: FLdPr Me
  loc_B542C5: MemLdRfVar from_stack_1.global_84
  loc_B542C8: NewIfNullPr tblorganigrama
  loc_B542CB: from_stack_1v = tblorganigrama.DetaOrgaGet()
  loc_B542D0: ILdRf var_A4
  loc_B542D3: FLdPr Me
  loc_B542D6: VCallAd Control_ID_DetaOrgaLbl
  loc_B542D9: FStAdFunc var_88
  loc_B542DC: FLdPr var_88
  loc_B542DF: Me.Caption = from_stack_1
  loc_B542E4: FFree1Str var_A4
  loc_B542E7: FFree1Ad var_88
  loc_B542EA: Branch loc_B54307
  loc_B542ED: LitVarStr var_C8, vbNullString
  loc_B542F2: PopAdLdVar
  loc_B542F3: FLdPr Me
  loc_B542F6: VCallAd Control_ID_CodiOrgaMsk
  loc_B542F9: FStAdFunc var_88
  loc_B542FC: FLdPr var_88
  loc_B542FF: LateIdSt
  loc_B54304: FFree1Ad var_88
  loc_B54307: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_KeyPress(KeyAscii As Integer) '9AD580
  'Data Table: 4EED48
  loc_9AD4E4: FLdPr Me
  loc_9AD4E7: VCallAd Control_ID_CodiOrgaMsk
  loc_9AD4EA: FStAdFunc var_88
  loc_9AD4ED: FLdPr var_88
  loc_9AD4F0: LateIdLdVar var_98 DispID_22 0
  loc_9AD4F7: PopAd
  loc_9AD4F9: LitI4 0
  loc_9AD4FE: LitI4 -1
  loc_9AD503: LitI4 1
  loc_9AD508: LitStr vbNullString
  loc_9AD50B: LitStr "."
  loc_9AD50E: FLdRfVar var_98
  loc_9AD511: CStrVarTmp
  loc_9AD512: FStStrNoPop var_9C
  loc_9AD515: ImpAdCallI2 Replace(, , , , , )
  loc_9AD51A: FStStrNoPop var_A0
  loc_9AD51D: FnLenStr
  loc_9AD51E: LitI4 5
  loc_9AD523: GtI4
  loc_9AD524: FFreeStr var_9C = ""
  loc_9AD52B: FFree1Ad var_88
  loc_9AD52E: FFree1Var var_98 = ""
  loc_9AD531: BranchF loc_9AD57F
  loc_9AD534: FLdPr Me
  loc_9AD537: VCallAd Control_ID_CodiOrgaMsk
  loc_9AD53A: FStAdFunc var_88
  loc_9AD53D: FLdRfVar var_88
  loc_9AD540: ImpAdCallI2  = Proc_266_40_A1E128()
  loc_9AD545: FFree1Ad var_88
  loc_9AD548: BranchF loc_9AD57F
  loc_9AD54B: ILdI2 KeyAscii
  loc_9AD54E: CI4UI1
  loc_9AD54F: LitI4 8
  loc_9AD554: NeI4
  loc_9AD555: FLdPr Me
  loc_9AD558: VCallAd Control_ID_CodiOrgaMsk
  loc_9AD55B: FStAdFunc var_88
  loc_9AD55E: FLdPr var_88
  loc_9AD561: LateIdLdVar var_98 DispID_17 0
  loc_9AD568: CI4Var
  loc_9AD56A: LitI4 0
  loc_9AD56F: EqI4
  loc_9AD570: AndI4
  loc_9AD571: FFree1Ad var_88
  loc_9AD574: FFree1Var var_98 = ""
  loc_9AD577: BranchF loc_9AD57F
  loc_9AD57A: LitI2_Byte 0
  loc_9AD57C: IStI2 KeyAscii
  loc_9AD57F: ExitProcHresult
End Sub

Private Sub CodiOrgaMsk_KeyUp(KeyCode As Integer, Shift As Integer) 'A04CE8
  'Data Table: 4EED48
  loc_A04B94: ILdI2 Shift
  loc_A04B97: CI4UI1
  loc_A04B98: LitI4 2
  loc_A04B9D: EqI4
  loc_A04B9E: ILdI2 KeyCode
  loc_A04BA1: CI4UI1
  loc_A04BA2: LitI4 &H42
  loc_A04BA7: EqI4
  loc_A04BA8: AndI4
  loc_A04BA9: BranchF loc_A04CE7
  loc_A04BAC: LitI2_Byte 0
  loc_A04BAE: ImpAdLdRf MemVar_C3D710
  loc_A04BB1: NewIfNullPr bscOrganigrama
  loc_A04BB4: Call bscOrganigrama.MuestroAnuladosPut(from_stack_1v)
  loc_A04BB9: LitNothing
  loc_A04BBB: CastAd
  loc_A04BBE: FStAdFuncNoPop
  loc_A04BC1: ImpAdLdRf MemVar_C3D710
  loc_A04BC4: NewIfNullPr bscOrganigrama
  loc_A04BC7: Call bscOrganigrama.global_4318932Set(from_stack_1v)
  loc_A04BCC: FFree1Ad var_88
  loc_A04BCF: LitVar_Missing var_A8
  loc_A04BD2: PopAdLdVar
  loc_A04BD3: LitVarI4
  loc_A04BDB: PopAdLdVar
  loc_A04BDC: ImpAdLdRf MemVar_C3D710
  loc_A04BDF: NewIfNullPr bscOrganigrama
  loc_A04BE2: bscOrganigrama.Show from_stack_1, from_stack_2
  loc_A04BE7: FLdRfVar var_AC
  loc_A04BEA: FLdRfVar var_88
  loc_A04BED: ImpAdLdRf MemVar_C3D710
  loc_A04BF0: NewIfNullPr bscOrganigrama
  loc_A04BF3: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A04BF8: FLdPr var_88
  loc_A04BFB: from_stack_1 = clsbase.RecordCount
  loc_A04C00: ILdRf var_AC
  loc_A04C03: LitI4 0
  loc_A04C08: GtI4
  loc_A04C09: FFree1Ad var_88
  loc_A04C0C: BranchF loc_A04CE7
  loc_A04C0F: FLdRfVar var_C8
  loc_A04C12: FLdRfVar var_B8
  loc_A04C15: LitVarStr var_98, "CodiOrga"
  loc_A04C1A: PopAdLdVar
  loc_A04C1B: FLdRfVar var_B4
  loc_A04C1E: FLdRfVar var_B0
  loc_A04C21: FLdRfVar var_88
  loc_A04C24: ImpAdLdRf MemVar_C3D710
  loc_A04C27: NewIfNullPr bscOrganigrama
  loc_A04C2A: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A04C2F: FLdPr var_88
  loc_A04C32: from_stack_1v = clsbase.RsFrmGet()
  loc_A04C37: FLdPr var_B0
  loc_A04C3A:  = Me.Fields
  loc_A04C3F: FLdPr var_B4
  loc_A04C42: from_stack_2 = Me.Item(from_stack_1)
  loc_A04C47: FLdPr var_B8
  loc_A04C4A:  = Me.Value
  loc_A04C4F: FLdRfVar var_C8
  loc_A04C52: CStrVarTmp
  loc_A04C53: CVarStr var_D8
  loc_A04C56: PopAdLdVar
  loc_A04C57: FLdPr Me
  loc_A04C5A: VCallAd Control_ID_CodiOrgaMsk
  loc_A04C5D: FStAdFunc var_DC
  loc_A04C60: FLdPr var_DC
  loc_A04C63: LateIdSt
  loc_A04C68: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A04C75: FFreeVar var_C8 = ""
  loc_A04C7C: FLdRfVar var_C8
  loc_A04C7F: FLdRfVar var_B8
  loc_A04C82: LitVarStr var_98, "DetaOrga"
  loc_A04C87: PopAdLdVar
  loc_A04C88: FLdRfVar var_B4
  loc_A04C8B: FLdRfVar var_B0
  loc_A04C8E: FLdRfVar var_88
  loc_A04C91: ImpAdLdRf MemVar_C3D710
  loc_A04C94: NewIfNullPr bscOrganigrama
  loc_A04C97: from_stack_1v = bscOrganigrama.global_4318932Get()
  loc_A04C9C: FLdPr var_88
  loc_A04C9F: from_stack_1v = clsbase.RsFrmGet()
  loc_A04CA4: FLdPr var_B0
  loc_A04CA7:  = Me.Fields
  loc_A04CAC: FLdPr var_B4
  loc_A04CAF: from_stack_2 = Me.Item(from_stack_1)
  loc_A04CB4: FLdPr var_B8
  loc_A04CB7:  = Me.Value
  loc_A04CBC: FLdRfVar var_C8
  loc_A04CBF: CStrVarTmp
  loc_A04CC0: FStStrNoPop var_E0
  loc_A04CC3: FLdPr Me
  loc_A04CC6: VCallAd Control_ID_DetaOrgaLbl
  loc_A04CC9: FStAdFunc var_DC
  loc_A04CCC: FLdPr var_DC
  loc_A04CCF: Me.Caption = from_stack_1
  loc_A04CD4: FFree1Str var_E0
  loc_A04CD7: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A04CE4: FFree1Var var_C8 = ""
  loc_A04CE7: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() '99FEB0
  'Data Table: 4EED48
  loc_99FE38: LitVarStr var_94, vbNullString
  loc_99FE3D: PopAdLdVar
  loc_99FE3E: FLdPr Me
  loc_99FE41: VCallAd Control_ID_FiltroMsk
  loc_99FE44: FStAdFunc var_A8
  loc_99FE47: FLdPr var_A8
  loc_99FE4A: LateIdSt
  loc_99FE4F: FFree1Ad var_A8
  loc_99FE52: FLdRfVar var_AA
  loc_99FE55: FLdPr Me
  loc_99FE58: VCallAd Control_ID_FiltroCbo
  loc_99FE5B: FStAdFunc var_A8
  loc_99FE5E: FLdPr var_A8
  loc_99FE61:  = Me.ListIndex
  loc_99FE66: FLdI2 var_AA
  loc_99FE69: FStI2 var_AC
  loc_99FE6C: FFree1Ad var_A8
  loc_99FE6F: FLdI2 var_AC
  loc_99FE72: LitI2_Byte 0
  loc_99FE74: EqI2
  loc_99FE75: BranchF loc_99FE95
  loc_99FE78: LitVarStr var_94, "########"
  loc_99FE7D: PopAdLdVar
  loc_99FE7E: FLdPr Me
  loc_99FE81: VCallAd Control_ID_FiltroMsk
  loc_99FE84: FStAdFunc var_A8
  loc_99FE87: FLdPr var_A8
  loc_99FE8A: LateIdSt
  loc_99FE8F: FFree1Ad var_A8
  loc_99FE92: Branch loc_99FEAF
  loc_99FE95: LitVarStr var_94, vbNullString
  loc_99FE9A: PopAdLdVar
  loc_99FE9B: FLdPr Me
  loc_99FE9E: VCallAd Control_ID_FiltroMsk
  loc_99FEA1: FStAdFunc var_A8
  loc_99FEA4: FLdPr var_A8
  loc_99FEA7: LateIdSt
  loc_99FEAC: FFree1Ad var_A8
  loc_99FEAF: ExitProcHresult
End Sub

Private Sub CodiUngaTxt_GotFocus() '9932A0
  'Data Table: 4EED48
  loc_993250: FLdRfVar var_8C
  loc_993253: FLdPr Me
  loc_993256: VCallAd Control_ID_CodiUngaTxt
  loc_993259: FStAdFunc var_88
  loc_99325C: FLdPr var_88
  loc_99325F:  = Me.Text
  loc_993264: ILdRf var_8C
  loc_993267: LitStr vbNullString
  loc_99326A: EqStr
  loc_99326C: FFree1Str var_8C
  loc_99326F: FFree1Ad var_88
  loc_993272: BranchF loc_99328C
  loc_993275: LitStr "1"
  loc_993278: FLdPr Me
  loc_99327B: VCallAd Control_ID_CodiUngaTxt
  loc_99327E: FStAdFunc var_88
  loc_993281: FLdPr var_88
  loc_993284: Me.Text = from_stack_1
  loc_993289: FFree1Ad var_88
  loc_99328C: FLdPr Me
  loc_99328F: VCallAd Control_ID_CodiUngaTxt
  loc_993292: CVarAd
  loc_993296: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_99329B: FFree1Var var_9C = ""
  loc_99329E: ExitProcHresult
End Sub

Private Sub CodiUngaTxt_KeyUp(KeyCode As Integer, Shift As Integer) 'A02A98
  'Data Table: 4EED48
  loc_A02944: ILdI2 Shift
  loc_A02947: CI4UI1
  loc_A02948: LitI4 2
  loc_A0294D: EqI4
  loc_A0294E: ILdI2 KeyCode
  loc_A02951: CI4UI1
  loc_A02952: LitI4 &H42
  loc_A02957: EqI4
  loc_A02958: AndI4
  loc_A02959: BranchF loc_A02A95
  loc_A0295C: LitI2_Byte 0
  loc_A0295E: ImpAdLdRf MemVar_C3D7D8
  loc_A02961: NewIfNullPr bscUnidadGasto
  loc_A02964: Call bscUnidadGasto.MuestroAnuladosPut(from_stack_1v)
  loc_A02969: LitNothing
  loc_A0296B: CastAd
  loc_A0296E: FStAdFuncNoPop
  loc_A02971: ImpAdLdRf MemVar_C3D7D8
  loc_A02974: NewIfNullPr bscUnidadGasto
  loc_A02977: Call bscUnidadGasto.global_4338300Set(from_stack_1v)
  loc_A0297C: FFree1Ad var_88
  loc_A0297F: LitVar_Missing var_A8
  loc_A02982: PopAdLdVar
  loc_A02983: LitVarI4
  loc_A0298B: PopAdLdVar
  loc_A0298C: ImpAdLdRf MemVar_C3D7D8
  loc_A0298F: NewIfNullPr bscUnidadGasto
  loc_A02992: bscUnidadGasto.Show from_stack_1, from_stack_2
  loc_A02997: FLdRfVar var_AC
  loc_A0299A: FLdRfVar var_88
  loc_A0299D: ImpAdLdRf MemVar_C3D7D8
  loc_A029A0: NewIfNullPr bscUnidadGasto
  loc_A029A3: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_A029A8: FLdPr var_88
  loc_A029AB: from_stack_1 = clsbase.RecordCount
  loc_A029B0: ILdRf var_AC
  loc_A029B3: LitI4 0
  loc_A029B8: GtI4
  loc_A029B9: FFree1Ad var_88
  loc_A029BC: BranchF loc_A02A95
  loc_A029BF: FLdRfVar var_C8
  loc_A029C2: FLdRfVar var_B8
  loc_A029C5: LitVarStr var_98, "CodiUnga"
  loc_A029CA: PopAdLdVar
  loc_A029CB: FLdRfVar var_B4
  loc_A029CE: FLdRfVar var_B0
  loc_A029D1: FLdRfVar var_88
  loc_A029D4: ImpAdLdRf MemVar_C3D7D8
  loc_A029D7: NewIfNullPr bscUnidadGasto
  loc_A029DA: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_A029DF: FLdPr var_88
  loc_A029E2: from_stack_1v = clsbase.RsFrmGet()
  loc_A029E7: FLdPr var_B0
  loc_A029EA:  = Me.Fields
  loc_A029EF: FLdPr var_B4
  loc_A029F2: from_stack_2 = Me.Item(from_stack_1)
  loc_A029F7: FLdPr var_B8
  loc_A029FA:  = Me.Value
  loc_A029FF: FLdRfVar var_C8
  loc_A02A02: CStrVarTmp
  loc_A02A03: FStStrNoPop var_CC
  loc_A02A06: FLdPr Me
  loc_A02A09: VCallAd Control_ID_CodiUngaTxt
  loc_A02A0C: FStAdFunc var_D0
  loc_A02A0F: FLdPr var_D0
  loc_A02A12: Me.Text = from_stack_1
  loc_A02A17: FFree1Str var_CC
  loc_A02A1A: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A02A27: FFree1Var var_C8 = ""
  loc_A02A2A: FLdRfVar var_C8
  loc_A02A2D: FLdRfVar var_B8
  loc_A02A30: LitVarStr var_98, "DetaUnga"
  loc_A02A35: PopAdLdVar
  loc_A02A36: FLdRfVar var_B4
  loc_A02A39: FLdRfVar var_B0
  loc_A02A3C: FLdRfVar var_88
  loc_A02A3F: ImpAdLdRf MemVar_C3D7D8
  loc_A02A42: NewIfNullPr bscUnidadGasto
  loc_A02A45: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_A02A4A: FLdPr var_88
  loc_A02A4D: from_stack_1v = clsbase.RsFrmGet()
  loc_A02A52: FLdPr var_B0
  loc_A02A55:  = Me.Fields
  loc_A02A5A: FLdPr var_B4
  loc_A02A5D: from_stack_2 = Me.Item(from_stack_1)
  loc_A02A62: FLdPr var_B8
  loc_A02A65:  = Me.Value
  loc_A02A6A: FLdRfVar var_C8
  loc_A02A6D: CStrVarTmp
  loc_A02A6E: FStStrNoPop var_CC
  loc_A02A71: FLdPr Me
  loc_A02A74: VCallAd Control_ID_DetaUngaLbl
  loc_A02A77: FStAdFunc var_D0
  loc_A02A7A: FLdPr var_D0
  loc_A02A7D: Me.Caption = from_stack_1
  loc_A02A82: FFree1Str var_CC
  loc_A02A85: FFreeAd var_88 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A02A92: FFree1Var var_C8 = ""
  loc_A02A95: ExitProcHresult
End Sub

Private Sub CodiUngaTxt_Validate(Cancel As Boolean) 'B8F900
  'Data Table: 4EED48
  loc_B8EA80: FLdRfVar var_8A
  loc_B8EA83: FLdPr Me
  loc_B8EA86: VCallAd Control_ID_cmdCancelar
  loc_B8EA89: FStAdFunc var_88
  loc_B8EA8C: FLdPr var_88
  loc_B8EA8F:  = Me.Value
  loc_B8EA94: FLdI2 var_8A
  loc_B8EA97: NotI4
  loc_B8EA98: FLdRfVar var_92
  loc_B8EA9B: FLdPr Me
  loc_B8EA9E: VCallAd Control_ID_CodiUngaTxt
  loc_B8EAA1: FStAdFunc var_90
  loc_B8EAA4: FLdPr var_90
  loc_B8EAA7:  = Me.Enabled
  loc_B8EAAC: FLdI2 var_92
  loc_B8EAAF: AndI4
  loc_B8EAB0: FFreeAd var_88 = ""
  loc_B8EAB7: BranchF loc_B8F8FC
  loc_B8EABA: FLdRfVar var_98
  loc_B8EABD: FLdPr Me
  loc_B8EAC0: VCallAd Control_ID_CodiUngaTxt
  loc_B8EAC3: FStAdFunc var_88
  loc_B8EAC6: FLdPr var_88
  loc_B8EAC9:  = Me.Text
  loc_B8EACE: ILdRf var_98
  loc_B8EAD1: ImpAdCallI2 Trim$()
  loc_B8EAD6: FStStrNoPop var_9C
  loc_B8EAD9: LitStr vbNullString
  loc_B8EADC: NeStr
  loc_B8EADE: FFreeStr var_98 = ""
  loc_B8EAE5: FFree1Ad var_88
  loc_B8EAE8: BranchF loc_B8F5B0
  loc_B8EAEB: FLdPr Me
  loc_B8EAEE: VCallAd Control_ID_CodiUngaTxt
  loc_B8EAF1: FStAdFunc var_88
  loc_B8EAF4: FLdRfVar var_88
  loc_B8EAF7: ImpAdCallI2  = Proc_266_39_9F3844()
  loc_B8EAFC: FFree1Ad var_88
  loc_B8EAFF: BranchF loc_B8EE98
  loc_B8EB02: LitStr " AND ug.CodiUnga = '"
  loc_B8EB05: FLdRfVar var_98
  loc_B8EB08: FLdPr Me
  loc_B8EB0B: VCallAd Control_ID_CodiUngaTxt
  loc_B8EB0E: FStAdFunc var_88
  loc_B8EB11: FLdPr var_88
  loc_B8EB14:  = Me.Text
  loc_B8EB19: ILdRf var_98
  loc_B8EB1C: ConcatStr
  loc_B8EB1D: FStStrNoPop var_9C
  loc_B8EB20: LitStr "' ORDER BY ug.CodiUnga"
  loc_B8EB23: ConcatStr
  loc_B8EB24: FStStrNoPop var_A0
  loc_B8EB27: ImpAdLdRf MemVar_C3D7D8
  loc_B8EB2A: NewIfNullPr bscUnidadGasto
  loc_B8EB2D: Call bscUnidadGasto.Constructor(from_stack_1v)
  loc_B8EB32: FFreeStr var_98 = "": var_9C = ""
  loc_B8EB3B: FFree1Ad var_88
  loc_B8EB3E: FLdRfVar var_A4
  loc_B8EB41: FLdRfVar var_90
  loc_B8EB44: FLdRfVar var_88
  loc_B8EB47: ImpAdLdRf MemVar_C3D7D8
  loc_B8EB4A: NewIfNullPr bscUnidadGasto
  loc_B8EB4D: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8EB52: FLdPr var_88
  loc_B8EB55: from_stack_1v = clsbase.RsFrmGet()
  loc_B8EB5A: FLdPr var_90
  loc_B8EB5D:  = Me.RecordCount
  loc_B8EB62: ILdRf var_A4
  loc_B8EB65: LitI4 1
  loc_B8EB6A: EqI4
  loc_B8EB6B: FFreeAd var_88 = ""
  loc_B8EB72: BranchF loc_B8EE17
  loc_B8EB75: FLdRfVar var_CC
  loc_B8EB78: FLdRfVar var_BC
  loc_B8EB7B: LitVarStr var_B8, "CodiUnga"
  loc_B8EB80: PopAdLdVar
  loc_B8EB81: FLdRfVar var_A8
  loc_B8EB84: FLdRfVar var_90
  loc_B8EB87: FLdRfVar var_88
  loc_B8EB8A: ImpAdLdRf MemVar_C3D7D8
  loc_B8EB8D: NewIfNullPr bscUnidadGasto
  loc_B8EB90: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8EB95: FLdPr var_88
  loc_B8EB98: from_stack_1v = clsbase.RsFrmGet()
  loc_B8EB9D: FLdPr var_90
  loc_B8EBA0:  = Me.Fields
  loc_B8EBA5: FLdPr var_A8
  loc_B8EBA8: from_stack_2 = Me.Item(from_stack_1)
  loc_B8EBAD: FLdPr var_BC
  loc_B8EBB0:  = Me.Value
  loc_B8EBB5: FLdPr Me
  loc_B8EBB8: MemLdRfVar from_stack_1.global_92
  loc_B8EBBB: NewIfNullRf
  loc_B8EBBF: FLdRfVar var_CC
  loc_B8EBC2: CStrVarTmp
  loc_B8EBC3: FStStrNoPop var_9C
  loc_B8EBC6: ImpAdLdI2 MemVar_C3D064
  loc_B8EBC9: CStrUI1
  loc_B8EBCB: FStStrNoPop var_98
  loc_B8EBCE: ImpAdCallI2 Proc_266_15_9A14F8(, , )
  loc_B8EBD3: FStStrNoPop var_A0
  loc_B8EBD6: FLdPr Me
  loc_B8EBD9: MemStStrCopy
  loc_B8EBDD: FFreeStr var_98 = "": var_9C = ""
  loc_B8EBE6: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8EBF1: FFree1Var var_CC = ""
  loc_B8EBF4: FLdRfVar var_98
  loc_B8EBF7: FLdPr Me
  loc_B8EBFA: MemLdRfVar from_stack_1.global_92
  loc_B8EBFD: NewIfNullPr tblunidadgasto
  loc_B8EC00: from_stack_1v = tblunidadgasto.CodiUngaGet()
  loc_B8EC05: ILdRf var_98
  loc_B8EC08: FLdPr Me
  loc_B8EC0B: VCallAd Control_ID_CodiUngaTxt
  loc_B8EC0E: FStAdFunc var_88
  loc_B8EC11: FLdPr var_88
  loc_B8EC14: Me.Text = from_stack_1
  loc_B8EC19: FFree1Str var_98
  loc_B8EC1C: FFree1Ad var_88
  loc_B8EC1F: FLdRfVar var_98
  loc_B8EC22: FLdPr Me
  loc_B8EC25: MemLdRfVar from_stack_1.global_92
  loc_B8EC28: NewIfNullPr tblunidadgasto
  loc_B8EC2B: from_stack_1v = tblunidadgasto.DetaUngaGet()
  loc_B8EC30: ILdRf var_98
  loc_B8EC33: FLdPr Me
  loc_B8EC36: VCallAd Control_ID_DetaUngaLbl
  loc_B8EC39: FStAdFunc var_88
  loc_B8EC3C: FLdPr var_88
  loc_B8EC3F: Me.Caption = from_stack_1
  loc_B8EC44: FFree1Str var_98
  loc_B8EC47: FFree1Ad var_88
  loc_B8EC4A: FLdPr Me
  loc_B8EC4D: VCallAd Control_ID_CodiUngaTxt
  loc_B8EC50: FStAdFunc var_BC
  loc_B8EC53: FLdPr Me
  loc_B8EC56: VCallAd Control_ID_DetaUngaLbl
  loc_B8EC59: FStAdFunc var_A8
  loc_B8EC5C: FLdRfVar var_A8
  loc_B8EC5F: FLdZeroAd var_BC
  loc_B8EC62: FStAdFuncNoPop
  loc_B8EC65: CastAd
  loc_B8EC68: FStAdFunc var_90
  loc_B8EC6B: FLdRfVar var_90
  loc_B8EC6E: FLdPr Me
  loc_B8EC71: MemLdRfVar from_stack_1.global_68
  loc_B8EC74: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8EC79: IStI2 Cancel
  loc_B8EC7C: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8EC87: ILdI2 Cancel
  loc_B8EC8A: NotI4
  loc_B8EC8B: BranchF loc_B8EE14
  loc_B8EC8E: FLdPr Me
  loc_B8EC91: VCallAd Control_ID_CodiOrgaMsk
  loc_B8EC94: FStAdFunc var_88
  loc_B8EC97: FLdPr var_88
  loc_B8EC9A: LateIdLdVar var_CC DispID_22 0
  loc_B8ECA1: CStrVarTmp
  loc_B8ECA2: FStStrNoPop var_98
  loc_B8ECA5: LitStr vbNullString
  loc_B8ECA8: EqStr
  loc_B8ECAA: FFree1Str var_98
  loc_B8ECAD: FFree1Ad var_88
  loc_B8ECB0: FFree1Var var_CC = ""
  loc_B8ECB3: BranchF loc_B8ED10
  loc_B8ECB6: FLdRfVar var_98
  loc_B8ECB9: FLdPr Me
  loc_B8ECBC: MemLdRfVar from_stack_1.global_92
  loc_B8ECBF: NewIfNullPr tblunidadgasto
  loc_B8ECC2: from_stack_1v = tblunidadgasto.CodiOrgaGet()
  loc_B8ECC7: FLdZeroAd var_98
  loc_B8ECCA: CVarStr var_CC
  loc_B8ECCD: PopAdLdVar
  loc_B8ECCE: FLdPr Me
  loc_B8ECD1: VCallAd Control_ID_CodiOrgaMsk
  loc_B8ECD4: FStAdFunc var_88
  loc_B8ECD7: FLdPr var_88
  loc_B8ECDA: LateIdSt
  loc_B8ECDF: FFree1Ad var_88
  loc_B8ECE2: FFree1Var var_CC = ""
  loc_B8ECE5: FLdRfVar var_98
  loc_B8ECE8: FLdPr Me
  loc_B8ECEB: MemLdRfVar from_stack_1.global_92
  loc_B8ECEE: NewIfNullPr tblunidadgasto
  loc_B8ECF1: from_stack_1v = tblunidadgasto.DetaOrgaGet()
  loc_B8ECF6: ILdRf var_98
  loc_B8ECF9: FLdPr Me
  loc_B8ECFC: VCallAd Control_ID_DetaOrgaLbl
  loc_B8ECFF: FStAdFunc var_88
  loc_B8ED02: FLdPr var_88
  loc_B8ED05: Me.Caption = from_stack_1
  loc_B8ED0A: FFree1Str var_98
  loc_B8ED0D: FFree1Ad var_88
  loc_B8ED10: FLdPr Me
  loc_B8ED13: VCallAd Control_ID_CodiPartMsk
  loc_B8ED16: FStAdFunc var_88
  loc_B8ED19: FLdPr var_88
  loc_B8ED1C: LateIdLdVar var_CC DispID_22 0
  loc_B8ED23: CStrVarTmp
  loc_B8ED24: FStStrNoPop var_98
  loc_B8ED27: LitStr vbNullString
  loc_B8ED2A: EqStr
  loc_B8ED2C: FFree1Str var_98
  loc_B8ED2F: FFree1Ad var_88
  loc_B8ED32: FFree1Var var_CC = ""
  loc_B8ED35: BranchF loc_B8ED92
  loc_B8ED38: FLdRfVar var_98
  loc_B8ED3B: FLdPr Me
  loc_B8ED3E: MemLdRfVar from_stack_1.global_92
  loc_B8ED41: NewIfNullPr tblunidadgasto
  loc_B8ED44: from_stack_1v = tblunidadgasto.CodiPartGet()
  loc_B8ED49: FLdZeroAd var_98
  loc_B8ED4C: CVarStr var_CC
  loc_B8ED4F: PopAdLdVar
  loc_B8ED50: FLdPr Me
  loc_B8ED53: VCallAd Control_ID_CodiPartMsk
  loc_B8ED56: FStAdFunc var_88
  loc_B8ED59: FLdPr var_88
  loc_B8ED5C: LateIdSt
  loc_B8ED61: FFree1Ad var_88
  loc_B8ED64: FFree1Var var_CC = ""
  loc_B8ED67: FLdRfVar var_98
  loc_B8ED6A: FLdPr Me
  loc_B8ED6D: MemLdRfVar from_stack_1.global_92
  loc_B8ED70: NewIfNullPr tblunidadgasto
  loc_B8ED73: from_stack_1v = tblunidadgasto.DetaPartGet()
  loc_B8ED78: ILdRf var_98
  loc_B8ED7B: FLdPr Me
  loc_B8ED7E: VCallAd Control_ID_DetaPartLbl
  loc_B8ED81: FStAdFunc var_88
  loc_B8ED84: FLdPr var_88
  loc_B8ED87: Me.Caption = from_stack_1
  loc_B8ED8C: FFree1Str var_98
  loc_B8ED8F: FFree1Ad var_88
  loc_B8ED92: FLdPr Me
  loc_B8ED95: VCallAd Control_ID_CodiFifuMsk
  loc_B8ED98: FStAdFunc var_88
  loc_B8ED9B: FLdPr var_88
  loc_B8ED9E: LateIdLdVar var_CC DispID_22 0
  loc_B8EDA5: CStrVarTmp
  loc_B8EDA6: FStStrNoPop var_98
  loc_B8EDA9: LitStr vbNullString
  loc_B8EDAC: EqStr
  loc_B8EDAE: FFree1Str var_98
  loc_B8EDB1: FFree1Ad var_88
  loc_B8EDB4: FFree1Var var_CC = ""
  loc_B8EDB7: BranchF loc_B8EE14
  loc_B8EDBA: FLdRfVar var_98
  loc_B8EDBD: FLdPr Me
  loc_B8EDC0: MemLdRfVar from_stack_1.global_92
  loc_B8EDC3: NewIfNullPr tblunidadgasto
  loc_B8EDC6: from_stack_1v = tblunidadgasto.CodiFifuGet()
  loc_B8EDCB: FLdZeroAd var_98
  loc_B8EDCE: CVarStr var_CC
  loc_B8EDD1: PopAdLdVar
  loc_B8EDD2: FLdPr Me
  loc_B8EDD5: VCallAd Control_ID_CodiFifuMsk
  loc_B8EDD8: FStAdFunc var_88
  loc_B8EDDB: FLdPr var_88
  loc_B8EDDE: LateIdSt
  loc_B8EDE3: FFree1Ad var_88
  loc_B8EDE6: FFree1Var var_CC = ""
  loc_B8EDE9: FLdRfVar var_98
  loc_B8EDEC: FLdPr Me
  loc_B8EDEF: MemLdRfVar from_stack_1.global_92
  loc_B8EDF2: NewIfNullPr tblunidadgasto
  loc_B8EDF5: from_stack_1v = tblunidadgasto.DetaFifuGet()
  loc_B8EDFA: ILdRf var_98
  loc_B8EDFD: FLdPr Me
  loc_B8EE00: VCallAd Control_ID_DetaFifuLbl
  loc_B8EE03: FStAdFunc var_88
  loc_B8EE06: FLdPr var_88
  loc_B8EE09: Me.Caption = from_stack_1
  loc_B8EE0E: FFree1Str var_98
  loc_B8EE11: FFree1Ad var_88
  loc_B8EE14: Branch loc_B8EE95
  loc_B8EE17: FLdRfVar var_A4
  loc_B8EE1A: FLdRfVar var_90
  loc_B8EE1D: FLdRfVar var_88
  loc_B8EE20: ImpAdLdRf MemVar_C3D7D8
  loc_B8EE23: NewIfNullPr bscUnidadGasto
  loc_B8EE26: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8EE2B: FLdPr var_88
  loc_B8EE2E: from_stack_1v = clsbase.RsFrmGet()
  loc_B8EE33: FLdPr var_90
  loc_B8EE36:  = Me.RecordCount
  loc_B8EE3B: ILdRf var_A4
  loc_B8EE3E: LitI4 1
  loc_B8EE43: LtI4
  loc_B8EE44: FFreeAd var_88 = ""
  loc_B8EE4B: BranchF loc_B8EE95
  loc_B8EE4E: LitStr "La Unidad de Gasto NO EXISTE. Verifique..."
  loc_B8EE51: FLdPr Me
  loc_B8EE54: MemStStrCopy
  loc_B8EE58: FLdPr Me
  loc_B8EE5B: VCallAd Control_ID_CodiUngaTxt
  loc_B8EE5E: FStAdFunc var_BC
  loc_B8EE61: FLdPr Me
  loc_B8EE64: VCallAd Control_ID_DetaUngaLbl
  loc_B8EE67: FStAdFunc var_A8
  loc_B8EE6A: FLdRfVar var_A8
  loc_B8EE6D: FLdZeroAd var_BC
  loc_B8EE70: FStAdFuncNoPop
  loc_B8EE73: CastAd
  loc_B8EE76: FStAdFunc var_90
  loc_B8EE79: FLdRfVar var_90
  loc_B8EE7C: FLdPr Me
  loc_B8EE7F: MemLdRfVar from_stack_1.global_68
  loc_B8EE82: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8EE87: IStI2 Cancel
  loc_B8EE8A: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8EE95: Branch loc_B8F5AD
  loc_B8EE98: FLdRfVar var_98
  loc_B8EE9B: FLdPr Me
  loc_B8EE9E: VCallAd Control_ID_CodiUngaTxt
  loc_B8EEA1: FStAdFunc var_88
  loc_B8EEA4: FLdPr var_88
  loc_B8EEA7:  = Me.Text
  loc_B8EEAC: LitStr " AND DetaUnga LIKE '" & Chr(37)
  loc_B8EEAF: LitI4 0
  loc_B8EEB4: LitI4 -1
  loc_B8EEB9: LitI4 1
  loc_B8EEBE: LitStr Chr(37)
  loc_B8EEC1: LitStr " "
  loc_B8EEC4: ILdRf var_98
  loc_B8EEC7: ImpAdCallI2 Replace(, , , , , )
  loc_B8EECC: FStStrNoPop var_9C
  loc_B8EECF: ConcatStr
  loc_B8EED0: FStStrNoPop var_A0
  loc_B8EED3: LitStr Chr(37) & "' ORDER BY DetaUnga"
  loc_B8EED6: ConcatStr
  loc_B8EED7: FStStrNoPop var_D0
  loc_B8EEDA: ImpAdLdRf MemVar_C3D7D8
  loc_B8EEDD: NewIfNullPr bscUnidadGasto
  loc_B8EEE0: Call bscUnidadGasto.Constructor(from_stack_1v)
  loc_B8EEE5: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_B8EEF0: FFree1Ad var_88
  loc_B8EEF3: FLdRfVar var_A4
  loc_B8EEF6: FLdRfVar var_90
  loc_B8EEF9: FLdRfVar var_88
  loc_B8EEFC: ImpAdLdRf MemVar_C3D7D8
  loc_B8EEFF: NewIfNullPr bscUnidadGasto
  loc_B8EF02: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8EF07: FLdPr var_88
  loc_B8EF0A: from_stack_1v = clsbase.RsFrmGet()
  loc_B8EF0F: FLdPr var_90
  loc_B8EF12:  = Me.RecordCount
  loc_B8EF17: ILdRf var_A4
  loc_B8EF1A: LitI4 1
  loc_B8EF1F: EqI4
  loc_B8EF20: FFreeAd var_88 = ""
  loc_B8EF27: BranchF loc_B8F1CC
  loc_B8EF2A: FLdRfVar var_CC
  loc_B8EF2D: FLdRfVar var_BC
  loc_B8EF30: LitVarStr var_B8, "CodiUnga"
  loc_B8EF35: PopAdLdVar
  loc_B8EF36: FLdRfVar var_A8
  loc_B8EF39: FLdRfVar var_90
  loc_B8EF3C: FLdRfVar var_88
  loc_B8EF3F: ImpAdLdRf MemVar_C3D7D8
  loc_B8EF42: NewIfNullPr bscUnidadGasto
  loc_B8EF45: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8EF4A: FLdPr var_88
  loc_B8EF4D: from_stack_1v = clsbase.RsFrmGet()
  loc_B8EF52: FLdPr var_90
  loc_B8EF55:  = Me.Fields
  loc_B8EF5A: FLdPr var_A8
  loc_B8EF5D: from_stack_2 = Me.Item(from_stack_1)
  loc_B8EF62: FLdPr var_BC
  loc_B8EF65:  = Me.Value
  loc_B8EF6A: FLdPr Me
  loc_B8EF6D: MemLdRfVar from_stack_1.global_92
  loc_B8EF70: NewIfNullRf
  loc_B8EF74: FLdRfVar var_CC
  loc_B8EF77: CStrVarTmp
  loc_B8EF78: FStStrNoPop var_9C
  loc_B8EF7B: ImpAdLdI2 MemVar_C3D064
  loc_B8EF7E: CStrUI1
  loc_B8EF80: FStStrNoPop var_98
  loc_B8EF83: ImpAdCallI2 Proc_266_15_9A14F8(, , )
  loc_B8EF88: FStStrNoPop var_A0
  loc_B8EF8B: FLdPr Me
  loc_B8EF8E: MemStStrCopy
  loc_B8EF92: FFreeStr var_98 = "": var_9C = ""
  loc_B8EF9B: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8EFA6: FFree1Var var_CC = ""
  loc_B8EFA9: FLdRfVar var_98
  loc_B8EFAC: FLdPr Me
  loc_B8EFAF: MemLdRfVar from_stack_1.global_92
  loc_B8EFB2: NewIfNullPr tblunidadgasto
  loc_B8EFB5: from_stack_1v = tblunidadgasto.CodiUngaGet()
  loc_B8EFBA: ILdRf var_98
  loc_B8EFBD: FLdPr Me
  loc_B8EFC0: VCallAd Control_ID_CodiUngaTxt
  loc_B8EFC3: FStAdFunc var_88
  loc_B8EFC6: FLdPr var_88
  loc_B8EFC9: Me.Text = from_stack_1
  loc_B8EFCE: FFree1Str var_98
  loc_B8EFD1: FFree1Ad var_88
  loc_B8EFD4: FLdRfVar var_98
  loc_B8EFD7: FLdPr Me
  loc_B8EFDA: MemLdRfVar from_stack_1.global_92
  loc_B8EFDD: NewIfNullPr tblunidadgasto
  loc_B8EFE0: from_stack_1v = tblunidadgasto.DetaUngaGet()
  loc_B8EFE5: ILdRf var_98
  loc_B8EFE8: FLdPr Me
  loc_B8EFEB: VCallAd Control_ID_DetaUngaLbl
  loc_B8EFEE: FStAdFunc var_88
  loc_B8EFF1: FLdPr var_88
  loc_B8EFF4: Me.Caption = from_stack_1
  loc_B8EFF9: FFree1Str var_98
  loc_B8EFFC: FFree1Ad var_88
  loc_B8EFFF: FLdPr Me
  loc_B8F002: VCallAd Control_ID_CodiUngaTxt
  loc_B8F005: FStAdFunc var_BC
  loc_B8F008: FLdPr Me
  loc_B8F00B: VCallAd Control_ID_DetaUngaLbl
  loc_B8F00E: FStAdFunc var_A8
  loc_B8F011: FLdRfVar var_A8
  loc_B8F014: FLdZeroAd var_BC
  loc_B8F017: FStAdFuncNoPop
  loc_B8F01A: CastAd
  loc_B8F01D: FStAdFunc var_90
  loc_B8F020: FLdRfVar var_90
  loc_B8F023: FLdPr Me
  loc_B8F026: MemLdRfVar from_stack_1.global_68
  loc_B8F029: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8F02E: IStI2 Cancel
  loc_B8F031: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8F03C: ILdI2 Cancel
  loc_B8F03F: NotI4
  loc_B8F040: BranchF loc_B8F1C9
  loc_B8F043: FLdPr Me
  loc_B8F046: VCallAd Control_ID_CodiOrgaMsk
  loc_B8F049: FStAdFunc var_88
  loc_B8F04C: FLdPr var_88
  loc_B8F04F: LateIdLdVar var_CC DispID_22 0
  loc_B8F056: CStrVarTmp
  loc_B8F057: FStStrNoPop var_98
  loc_B8F05A: LitStr vbNullString
  loc_B8F05D: EqStr
  loc_B8F05F: FFree1Str var_98
  loc_B8F062: FFree1Ad var_88
  loc_B8F065: FFree1Var var_CC = ""
  loc_B8F068: BranchF loc_B8F0C5
  loc_B8F06B: FLdRfVar var_98
  loc_B8F06E: FLdPr Me
  loc_B8F071: MemLdRfVar from_stack_1.global_92
  loc_B8F074: NewIfNullPr tblunidadgasto
  loc_B8F077: from_stack_1v = tblunidadgasto.CodiOrgaGet()
  loc_B8F07C: FLdZeroAd var_98
  loc_B8F07F: CVarStr var_CC
  loc_B8F082: PopAdLdVar
  loc_B8F083: FLdPr Me
  loc_B8F086: VCallAd Control_ID_CodiOrgaMsk
  loc_B8F089: FStAdFunc var_88
  loc_B8F08C: FLdPr var_88
  loc_B8F08F: LateIdSt
  loc_B8F094: FFree1Ad var_88
  loc_B8F097: FFree1Var var_CC = ""
  loc_B8F09A: FLdRfVar var_98
  loc_B8F09D: FLdPr Me
  loc_B8F0A0: MemLdRfVar from_stack_1.global_92
  loc_B8F0A3: NewIfNullPr tblunidadgasto
  loc_B8F0A6: from_stack_1v = tblunidadgasto.DetaOrgaGet()
  loc_B8F0AB: ILdRf var_98
  loc_B8F0AE: FLdPr Me
  loc_B8F0B1: VCallAd Control_ID_DetaOrgaLbl
  loc_B8F0B4: FStAdFunc var_88
  loc_B8F0B7: FLdPr var_88
  loc_B8F0BA: Me.Caption = from_stack_1
  loc_B8F0BF: FFree1Str var_98
  loc_B8F0C2: FFree1Ad var_88
  loc_B8F0C5: FLdPr Me
  loc_B8F0C8: VCallAd Control_ID_CodiPartMsk
  loc_B8F0CB: FStAdFunc var_88
  loc_B8F0CE: FLdPr var_88
  loc_B8F0D1: LateIdLdVar var_CC DispID_22 0
  loc_B8F0D8: CStrVarTmp
  loc_B8F0D9: FStStrNoPop var_98
  loc_B8F0DC: LitStr vbNullString
  loc_B8F0DF: EqStr
  loc_B8F0E1: FFree1Str var_98
  loc_B8F0E4: FFree1Ad var_88
  loc_B8F0E7: FFree1Var var_CC = ""
  loc_B8F0EA: BranchF loc_B8F147
  loc_B8F0ED: FLdRfVar var_98
  loc_B8F0F0: FLdPr Me
  loc_B8F0F3: MemLdRfVar from_stack_1.global_92
  loc_B8F0F6: NewIfNullPr tblunidadgasto
  loc_B8F0F9: from_stack_1v = tblunidadgasto.CodiPartGet()
  loc_B8F0FE: FLdZeroAd var_98
  loc_B8F101: CVarStr var_CC
  loc_B8F104: PopAdLdVar
  loc_B8F105: FLdPr Me
  loc_B8F108: VCallAd Control_ID_CodiPartMsk
  loc_B8F10B: FStAdFunc var_88
  loc_B8F10E: FLdPr var_88
  loc_B8F111: LateIdSt
  loc_B8F116: FFree1Ad var_88
  loc_B8F119: FFree1Var var_CC = ""
  loc_B8F11C: FLdRfVar var_98
  loc_B8F11F: FLdPr Me
  loc_B8F122: MemLdRfVar from_stack_1.global_92
  loc_B8F125: NewIfNullPr tblunidadgasto
  loc_B8F128: from_stack_1v = tblunidadgasto.DetaPartGet()
  loc_B8F12D: ILdRf var_98
  loc_B8F130: FLdPr Me
  loc_B8F133: VCallAd Control_ID_DetaPartLbl
  loc_B8F136: FStAdFunc var_88
  loc_B8F139: FLdPr var_88
  loc_B8F13C: Me.Caption = from_stack_1
  loc_B8F141: FFree1Str var_98
  loc_B8F144: FFree1Ad var_88
  loc_B8F147: FLdPr Me
  loc_B8F14A: VCallAd Control_ID_CodiFifuMsk
  loc_B8F14D: FStAdFunc var_88
  loc_B8F150: FLdPr var_88
  loc_B8F153: LateIdLdVar var_CC DispID_22 0
  loc_B8F15A: CStrVarTmp
  loc_B8F15B: FStStrNoPop var_98
  loc_B8F15E: LitStr vbNullString
  loc_B8F161: EqStr
  loc_B8F163: FFree1Str var_98
  loc_B8F166: FFree1Ad var_88
  loc_B8F169: FFree1Var var_CC = ""
  loc_B8F16C: BranchF loc_B8F1C9
  loc_B8F16F: FLdRfVar var_98
  loc_B8F172: FLdPr Me
  loc_B8F175: MemLdRfVar from_stack_1.global_92
  loc_B8F178: NewIfNullPr tblunidadgasto
  loc_B8F17B: from_stack_1v = tblunidadgasto.CodiFifuGet()
  loc_B8F180: FLdZeroAd var_98
  loc_B8F183: CVarStr var_CC
  loc_B8F186: PopAdLdVar
  loc_B8F187: FLdPr Me
  loc_B8F18A: VCallAd Control_ID_CodiFifuMsk
  loc_B8F18D: FStAdFunc var_88
  loc_B8F190: FLdPr var_88
  loc_B8F193: LateIdSt
  loc_B8F198: FFree1Ad var_88
  loc_B8F19B: FFree1Var var_CC = ""
  loc_B8F19E: FLdRfVar var_98
  loc_B8F1A1: FLdPr Me
  loc_B8F1A4: MemLdRfVar from_stack_1.global_92
  loc_B8F1A7: NewIfNullPr tblunidadgasto
  loc_B8F1AA: from_stack_1v = tblunidadgasto.DetaFifuGet()
  loc_B8F1AF: ILdRf var_98
  loc_B8F1B2: FLdPr Me
  loc_B8F1B5: VCallAd Control_ID_DetaFifuLbl
  loc_B8F1B8: FStAdFunc var_88
  loc_B8F1BB: FLdPr var_88
  loc_B8F1BE: Me.Caption = from_stack_1
  loc_B8F1C3: FFree1Str var_98
  loc_B8F1C6: FFree1Ad var_88
  loc_B8F1C9: Branch loc_B8F5AD
  loc_B8F1CC: FLdRfVar var_A4
  loc_B8F1CF: FLdRfVar var_90
  loc_B8F1D2: FLdRfVar var_88
  loc_B8F1D5: ImpAdLdRf MemVar_C3D7D8
  loc_B8F1D8: NewIfNullPr bscUnidadGasto
  loc_B8F1DB: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8F1E0: FLdPr var_88
  loc_B8F1E3: from_stack_1v = clsbase.RsFrmGet()
  loc_B8F1E8: FLdPr var_90
  loc_B8F1EB:  = Me.RecordCount
  loc_B8F1F0: ILdRf var_A4
  loc_B8F1F3: LitI4 1
  loc_B8F1F8: GtI4
  loc_B8F1F9: FFreeAd var_88 = ""
  loc_B8F200: BranchF loc_B8F52F
  loc_B8F203: LitVar_Missing var_E0
  loc_B8F206: PopAdLdVar
  loc_B8F207: LitVarI4
  loc_B8F20F: PopAdLdVar
  loc_B8F210: ImpAdLdRf MemVar_C3D7D8
  loc_B8F213: NewIfNullPr bscUnidadGasto
  loc_B8F216: bscUnidadGasto.Show from_stack_1, from_stack_2
  loc_B8F21B: FLdRfVar var_A4
  loc_B8F21E: FLdRfVar var_88
  loc_B8F221: ImpAdLdRf MemVar_C3D7D8
  loc_B8F224: NewIfNullPr bscUnidadGasto
  loc_B8F227: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8F22C: FLdPr var_88
  loc_B8F22F: from_stack_1 = clsbase.RecordCount
  loc_B8F234: ILdRf var_A4
  loc_B8F237: LitI4 0
  loc_B8F23C: GtI4
  loc_B8F23D: FFree1Ad var_88
  loc_B8F240: BranchF loc_B8F4E5
  loc_B8F243: FLdRfVar var_CC
  loc_B8F246: FLdRfVar var_BC
  loc_B8F249: LitVarStr var_B8, "CodiUnga"
  loc_B8F24E: PopAdLdVar
  loc_B8F24F: FLdRfVar var_A8
  loc_B8F252: FLdRfVar var_90
  loc_B8F255: FLdRfVar var_88
  loc_B8F258: ImpAdLdRf MemVar_C3D7D8
  loc_B8F25B: NewIfNullPr bscUnidadGasto
  loc_B8F25E: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8F263: FLdPr var_88
  loc_B8F266: from_stack_1v = clsbase.RsFrmGet()
  loc_B8F26B: FLdPr var_90
  loc_B8F26E:  = Me.Fields
  loc_B8F273: FLdPr var_A8
  loc_B8F276: from_stack_2 = Me.Item(from_stack_1)
  loc_B8F27B: FLdPr var_BC
  loc_B8F27E:  = Me.Value
  loc_B8F283: FLdPr Me
  loc_B8F286: MemLdRfVar from_stack_1.global_92
  loc_B8F289: NewIfNullRf
  loc_B8F28D: FLdRfVar var_CC
  loc_B8F290: CStrVarTmp
  loc_B8F291: FStStrNoPop var_9C
  loc_B8F294: ImpAdLdI2 MemVar_C3D064
  loc_B8F297: CStrUI1
  loc_B8F299: FStStrNoPop var_98
  loc_B8F29C: ImpAdCallI2 Proc_266_15_9A14F8(, , )
  loc_B8F2A1: FStStrNoPop var_A0
  loc_B8F2A4: FLdPr Me
  loc_B8F2A7: MemStStrCopy
  loc_B8F2AB: FFreeStr var_98 = "": var_9C = ""
  loc_B8F2B4: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8F2BF: FFree1Var var_CC = ""
  loc_B8F2C2: FLdRfVar var_98
  loc_B8F2C5: FLdPr Me
  loc_B8F2C8: MemLdRfVar from_stack_1.global_92
  loc_B8F2CB: NewIfNullPr tblunidadgasto
  loc_B8F2CE: from_stack_1v = tblunidadgasto.CodiUngaGet()
  loc_B8F2D3: ILdRf var_98
  loc_B8F2D6: FLdPr Me
  loc_B8F2D9: VCallAd Control_ID_CodiUngaTxt
  loc_B8F2DC: FStAdFunc var_88
  loc_B8F2DF: FLdPr var_88
  loc_B8F2E2: Me.Text = from_stack_1
  loc_B8F2E7: FFree1Str var_98
  loc_B8F2EA: FFree1Ad var_88
  loc_B8F2ED: FLdRfVar var_98
  loc_B8F2F0: FLdPr Me
  loc_B8F2F3: MemLdRfVar from_stack_1.global_92
  loc_B8F2F6: NewIfNullPr tblunidadgasto
  loc_B8F2F9: from_stack_1v = tblunidadgasto.DetaUngaGet()
  loc_B8F2FE: ILdRf var_98
  loc_B8F301: FLdPr Me
  loc_B8F304: VCallAd Control_ID_DetaUngaLbl
  loc_B8F307: FStAdFunc var_88
  loc_B8F30A: FLdPr var_88
  loc_B8F30D: Me.Caption = from_stack_1
  loc_B8F312: FFree1Str var_98
  loc_B8F315: FFree1Ad var_88
  loc_B8F318: FLdPr Me
  loc_B8F31B: VCallAd Control_ID_CodiUngaTxt
  loc_B8F31E: FStAdFunc var_BC
  loc_B8F321: FLdPr Me
  loc_B8F324: VCallAd Control_ID_DetaUngaLbl
  loc_B8F327: FStAdFunc var_A8
  loc_B8F32A: FLdRfVar var_A8
  loc_B8F32D: FLdZeroAd var_BC
  loc_B8F330: FStAdFuncNoPop
  loc_B8F333: CastAd
  loc_B8F336: FStAdFunc var_90
  loc_B8F339: FLdRfVar var_90
  loc_B8F33C: FLdPr Me
  loc_B8F33F: MemLdRfVar from_stack_1.global_68
  loc_B8F342: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8F347: IStI2 Cancel
  loc_B8F34A: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8F355: ILdI2 Cancel
  loc_B8F358: NotI4
  loc_B8F359: BranchF loc_B8F4E2
  loc_B8F35C: FLdPr Me
  loc_B8F35F: VCallAd Control_ID_CodiOrgaMsk
  loc_B8F362: FStAdFunc var_88
  loc_B8F365: FLdPr var_88
  loc_B8F368: LateIdLdVar var_CC DispID_22 0
  loc_B8F36F: CStrVarTmp
  loc_B8F370: FStStrNoPop var_98
  loc_B8F373: LitStr vbNullString
  loc_B8F376: EqStr
  loc_B8F378: FFree1Str var_98
  loc_B8F37B: FFree1Ad var_88
  loc_B8F37E: FFree1Var var_CC = ""
  loc_B8F381: BranchF loc_B8F3DE
  loc_B8F384: FLdRfVar var_98
  loc_B8F387: FLdPr Me
  loc_B8F38A: MemLdRfVar from_stack_1.global_92
  loc_B8F38D: NewIfNullPr tblunidadgasto
  loc_B8F390: from_stack_1v = tblunidadgasto.CodiOrgaGet()
  loc_B8F395: FLdZeroAd var_98
  loc_B8F398: CVarStr var_CC
  loc_B8F39B: PopAdLdVar
  loc_B8F39C: FLdPr Me
  loc_B8F39F: VCallAd Control_ID_CodiOrgaMsk
  loc_B8F3A2: FStAdFunc var_88
  loc_B8F3A5: FLdPr var_88
  loc_B8F3A8: LateIdSt
  loc_B8F3AD: FFree1Ad var_88
  loc_B8F3B0: FFree1Var var_CC = ""
  loc_B8F3B3: FLdRfVar var_98
  loc_B8F3B6: FLdPr Me
  loc_B8F3B9: MemLdRfVar from_stack_1.global_92
  loc_B8F3BC: NewIfNullPr tblunidadgasto
  loc_B8F3BF: from_stack_1v = tblunidadgasto.DetaOrgaGet()
  loc_B8F3C4: ILdRf var_98
  loc_B8F3C7: FLdPr Me
  loc_B8F3CA: VCallAd Control_ID_DetaOrgaLbl
  loc_B8F3CD: FStAdFunc var_88
  loc_B8F3D0: FLdPr var_88
  loc_B8F3D3: Me.Caption = from_stack_1
  loc_B8F3D8: FFree1Str var_98
  loc_B8F3DB: FFree1Ad var_88
  loc_B8F3DE: FLdPr Me
  loc_B8F3E1: VCallAd Control_ID_CodiPartMsk
  loc_B8F3E4: FStAdFunc var_88
  loc_B8F3E7: FLdPr var_88
  loc_B8F3EA: LateIdLdVar var_CC DispID_22 0
  loc_B8F3F1: CStrVarTmp
  loc_B8F3F2: FStStrNoPop var_98
  loc_B8F3F5: LitStr vbNullString
  loc_B8F3F8: EqStr
  loc_B8F3FA: FFree1Str var_98
  loc_B8F3FD: FFree1Ad var_88
  loc_B8F400: FFree1Var var_CC = ""
  loc_B8F403: BranchF loc_B8F460
  loc_B8F406: FLdRfVar var_98
  loc_B8F409: FLdPr Me
  loc_B8F40C: MemLdRfVar from_stack_1.global_92
  loc_B8F40F: NewIfNullPr tblunidadgasto
  loc_B8F412: from_stack_1v = tblunidadgasto.CodiPartGet()
  loc_B8F417: FLdZeroAd var_98
  loc_B8F41A: CVarStr var_CC
  loc_B8F41D: PopAdLdVar
  loc_B8F41E: FLdPr Me
  loc_B8F421: VCallAd Control_ID_CodiPartMsk
  loc_B8F424: FStAdFunc var_88
  loc_B8F427: FLdPr var_88
  loc_B8F42A: LateIdSt
  loc_B8F42F: FFree1Ad var_88
  loc_B8F432: FFree1Var var_CC = ""
  loc_B8F435: FLdRfVar var_98
  loc_B8F438: FLdPr Me
  loc_B8F43B: MemLdRfVar from_stack_1.global_92
  loc_B8F43E: NewIfNullPr tblunidadgasto
  loc_B8F441: from_stack_1v = tblunidadgasto.DetaPartGet()
  loc_B8F446: ILdRf var_98
  loc_B8F449: FLdPr Me
  loc_B8F44C: VCallAd Control_ID_DetaPartLbl
  loc_B8F44F: FStAdFunc var_88
  loc_B8F452: FLdPr var_88
  loc_B8F455: Me.Caption = from_stack_1
  loc_B8F45A: FFree1Str var_98
  loc_B8F45D: FFree1Ad var_88
  loc_B8F460: FLdPr Me
  loc_B8F463: VCallAd Control_ID_CodiFifuMsk
  loc_B8F466: FStAdFunc var_88
  loc_B8F469: FLdPr var_88
  loc_B8F46C: LateIdLdVar var_CC DispID_22 0
  loc_B8F473: CStrVarTmp
  loc_B8F474: FStStrNoPop var_98
  loc_B8F477: LitStr vbNullString
  loc_B8F47A: EqStr
  loc_B8F47C: FFree1Str var_98
  loc_B8F47F: FFree1Ad var_88
  loc_B8F482: FFree1Var var_CC = ""
  loc_B8F485: BranchF loc_B8F4E2
  loc_B8F488: FLdRfVar var_98
  loc_B8F48B: FLdPr Me
  loc_B8F48E: MemLdRfVar from_stack_1.global_92
  loc_B8F491: NewIfNullPr tblunidadgasto
  loc_B8F494: from_stack_1v = tblunidadgasto.CodiFifuGet()
  loc_B8F499: FLdZeroAd var_98
  loc_B8F49C: CVarStr var_CC
  loc_B8F49F: PopAdLdVar
  loc_B8F4A0: FLdPr Me
  loc_B8F4A3: VCallAd Control_ID_CodiFifuMsk
  loc_B8F4A6: FStAdFunc var_88
  loc_B8F4A9: FLdPr var_88
  loc_B8F4AC: LateIdSt
  loc_B8F4B1: FFree1Ad var_88
  loc_B8F4B4: FFree1Var var_CC = ""
  loc_B8F4B7: FLdRfVar var_98
  loc_B8F4BA: FLdPr Me
  loc_B8F4BD: MemLdRfVar from_stack_1.global_92
  loc_B8F4C0: NewIfNullPr tblunidadgasto
  loc_B8F4C3: from_stack_1v = tblunidadgasto.DetaFifuGet()
  loc_B8F4C8: ILdRf var_98
  loc_B8F4CB: FLdPr Me
  loc_B8F4CE: VCallAd Control_ID_DetaFifuLbl
  loc_B8F4D1: FStAdFunc var_88
  loc_B8F4D4: FLdPr var_88
  loc_B8F4D7: Me.Caption = from_stack_1
  loc_B8F4DC: FFree1Str var_98
  loc_B8F4DF: FFree1Ad var_88
  loc_B8F4E2: Branch loc_B8F52C
  loc_B8F4E5: LitStr "La Unidad de Gasto NO EXISTE. Verique..."
  loc_B8F4E8: FLdPr Me
  loc_B8F4EB: MemStStrCopy
  loc_B8F4EF: FLdPr Me
  loc_B8F4F2: VCallAd Control_ID_CodiUngaTxt
  loc_B8F4F5: FStAdFunc var_BC
  loc_B8F4F8: FLdPr Me
  loc_B8F4FB: VCallAd Control_ID_DetaUngaLbl
  loc_B8F4FE: FStAdFunc var_A8
  loc_B8F501: FLdRfVar var_A8
  loc_B8F504: FLdZeroAd var_BC
  loc_B8F507: FStAdFuncNoPop
  loc_B8F50A: CastAd
  loc_B8F50D: FStAdFunc var_90
  loc_B8F510: FLdRfVar var_90
  loc_B8F513: FLdPr Me
  loc_B8F516: MemLdRfVar from_stack_1.global_68
  loc_B8F519: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8F51E: IStI2 Cancel
  loc_B8F521: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8F52C: Branch loc_B8F5AD
  loc_B8F52F: FLdRfVar var_A4
  loc_B8F532: FLdRfVar var_90
  loc_B8F535: FLdRfVar var_88
  loc_B8F538: ImpAdLdRf MemVar_C3D7D8
  loc_B8F53B: NewIfNullPr bscUnidadGasto
  loc_B8F53E: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8F543: FLdPr var_88
  loc_B8F546: from_stack_1v = clsbase.RsFrmGet()
  loc_B8F54B: FLdPr var_90
  loc_B8F54E:  = Me.RecordCount
  loc_B8F553: ILdRf var_A4
  loc_B8F556: LitI4 1
  loc_B8F55B: LtI4
  loc_B8F55C: FFreeAd var_88 = ""
  loc_B8F563: BranchF loc_B8F5AD
  loc_B8F566: LitStr "La Unidad El Proveedor NO EXISTE. Verique..."
  loc_B8F569: FLdPr Me
  loc_B8F56C: MemStStrCopy
  loc_B8F570: FLdPr Me
  loc_B8F573: VCallAd Control_ID_CodiUngaTxt
  loc_B8F576: FStAdFunc var_BC
  loc_B8F579: FLdPr Me
  loc_B8F57C: VCallAd Control_ID_DetaUngaLbl
  loc_B8F57F: FStAdFunc var_A8
  loc_B8F582: FLdRfVar var_A8
  loc_B8F585: FLdZeroAd var_BC
  loc_B8F588: FStAdFuncNoPop
  loc_B8F58B: CastAd
  loc_B8F58E: FStAdFunc var_90
  loc_B8F591: FLdRfVar var_90
  loc_B8F594: FLdPr Me
  loc_B8F597: MemLdRfVar from_stack_1.global_68
  loc_B8F59A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8F59F: IStI2 Cancel
  loc_B8F5A2: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8F5AD: Branch loc_B8F8FC
  loc_B8F5B0: LitI2_Byte 0
  loc_B8F5B2: ImpAdLdRf MemVar_C3D7D8
  loc_B8F5B5: NewIfNullPr bscUnidadGasto
  loc_B8F5B8: Call bscUnidadGasto.MuestroAnuladosPut(from_stack_1v)
  loc_B8F5BD: LitNothing
  loc_B8F5BF: CastAd
  loc_B8F5C2: FStAdFuncNoPop
  loc_B8F5C5: ImpAdLdRf MemVar_C3D7D8
  loc_B8F5C8: NewIfNullPr bscUnidadGasto
  loc_B8F5CB: Call bscUnidadGasto.global_4338300Set(from_stack_1v)
  loc_B8F5D0: FFree1Ad var_88
  loc_B8F5D3: LitVar_Missing var_E0
  loc_B8F5D6: PopAdLdVar
  loc_B8F5D7: LitVarI4
  loc_B8F5DF: PopAdLdVar
  loc_B8F5E0: ImpAdLdRf MemVar_C3D7D8
  loc_B8F5E3: NewIfNullPr bscUnidadGasto
  loc_B8F5E6: bscUnidadGasto.Show from_stack_1, from_stack_2
  loc_B8F5EB: FLdRfVar var_A4
  loc_B8F5EE: FLdRfVar var_88
  loc_B8F5F1: ImpAdLdRf MemVar_C3D7D8
  loc_B8F5F4: NewIfNullPr bscUnidadGasto
  loc_B8F5F7: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8F5FC: FLdPr var_88
  loc_B8F5FF: from_stack_1 = clsbase.RecordCount
  loc_B8F604: ILdRf var_A4
  loc_B8F607: LitI4 0
  loc_B8F60C: GtI4
  loc_B8F60D: FFree1Ad var_88
  loc_B8F610: BranchF loc_B8F8B5
  loc_B8F613: FLdRfVar var_CC
  loc_B8F616: FLdRfVar var_BC
  loc_B8F619: LitVarStr var_B8, "CodiUnga"
  loc_B8F61E: PopAdLdVar
  loc_B8F61F: FLdRfVar var_A8
  loc_B8F622: FLdRfVar var_90
  loc_B8F625: FLdRfVar var_88
  loc_B8F628: ImpAdLdRf MemVar_C3D7D8
  loc_B8F62B: NewIfNullPr bscUnidadGasto
  loc_B8F62E: from_stack_1v = bscUnidadGasto.global_4338300Get()
  loc_B8F633: FLdPr var_88
  loc_B8F636: from_stack_1v = clsbase.RsFrmGet()
  loc_B8F63B: FLdPr var_90
  loc_B8F63E:  = Me.Fields
  loc_B8F643: FLdPr var_A8
  loc_B8F646: from_stack_2 = Me.Item(from_stack_1)
  loc_B8F64B: FLdPr var_BC
  loc_B8F64E:  = Me.Value
  loc_B8F653: FLdPr Me
  loc_B8F656: MemLdRfVar from_stack_1.global_92
  loc_B8F659: NewIfNullRf
  loc_B8F65D: FLdRfVar var_CC
  loc_B8F660: CStrVarTmp
  loc_B8F661: FStStrNoPop var_9C
  loc_B8F664: ImpAdLdI2 MemVar_C3D064
  loc_B8F667: CStrUI1
  loc_B8F669: FStStrNoPop var_98
  loc_B8F66C: ImpAdCallI2 Proc_266_15_9A14F8(, , )
  loc_B8F671: FStStrNoPop var_A0
  loc_B8F674: FLdPr Me
  loc_B8F677: MemStStrCopy
  loc_B8F67B: FFreeStr var_98 = "": var_9C = ""
  loc_B8F684: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8F68F: FFree1Var var_CC = ""
  loc_B8F692: FLdRfVar var_98
  loc_B8F695: FLdPr Me
  loc_B8F698: MemLdRfVar from_stack_1.global_92
  loc_B8F69B: NewIfNullPr tblunidadgasto
  loc_B8F69E: from_stack_1v = tblunidadgasto.CodiUngaGet()
  loc_B8F6A3: ILdRf var_98
  loc_B8F6A6: FLdPr Me
  loc_B8F6A9: VCallAd Control_ID_CodiUngaTxt
  loc_B8F6AC: FStAdFunc var_88
  loc_B8F6AF: FLdPr var_88
  loc_B8F6B2: Me.Text = from_stack_1
  loc_B8F6B7: FFree1Str var_98
  loc_B8F6BA: FFree1Ad var_88
  loc_B8F6BD: FLdRfVar var_98
  loc_B8F6C0: FLdPr Me
  loc_B8F6C3: MemLdRfVar from_stack_1.global_92
  loc_B8F6C6: NewIfNullPr tblunidadgasto
  loc_B8F6C9: from_stack_1v = tblunidadgasto.DetaUngaGet()
  loc_B8F6CE: ILdRf var_98
  loc_B8F6D1: FLdPr Me
  loc_B8F6D4: VCallAd Control_ID_DetaUngaLbl
  loc_B8F6D7: FStAdFunc var_88
  loc_B8F6DA: FLdPr var_88
  loc_B8F6DD: Me.Caption = from_stack_1
  loc_B8F6E2: FFree1Str var_98
  loc_B8F6E5: FFree1Ad var_88
  loc_B8F6E8: FLdPr Me
  loc_B8F6EB: VCallAd Control_ID_CodiUngaTxt
  loc_B8F6EE: FStAdFunc var_BC
  loc_B8F6F1: FLdPr Me
  loc_B8F6F4: VCallAd Control_ID_DetaUngaLbl
  loc_B8F6F7: FStAdFunc var_A8
  loc_B8F6FA: FLdRfVar var_A8
  loc_B8F6FD: FLdZeroAd var_BC
  loc_B8F700: FStAdFuncNoPop
  loc_B8F703: CastAd
  loc_B8F706: FStAdFunc var_90
  loc_B8F709: FLdRfVar var_90
  loc_B8F70C: FLdPr Me
  loc_B8F70F: MemLdRfVar from_stack_1.global_68
  loc_B8F712: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8F717: IStI2 Cancel
  loc_B8F71A: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8F725: ILdI2 Cancel
  loc_B8F728: NotI4
  loc_B8F729: BranchF loc_B8F8B2
  loc_B8F72C: FLdPr Me
  loc_B8F72F: VCallAd Control_ID_CodiOrgaMsk
  loc_B8F732: FStAdFunc var_88
  loc_B8F735: FLdPr var_88
  loc_B8F738: LateIdLdVar var_CC DispID_22 0
  loc_B8F73F: CStrVarTmp
  loc_B8F740: FStStrNoPop var_98
  loc_B8F743: LitStr vbNullString
  loc_B8F746: EqStr
  loc_B8F748: FFree1Str var_98
  loc_B8F74B: FFree1Ad var_88
  loc_B8F74E: FFree1Var var_CC = ""
  loc_B8F751: BranchF loc_B8F7AE
  loc_B8F754: FLdRfVar var_98
  loc_B8F757: FLdPr Me
  loc_B8F75A: MemLdRfVar from_stack_1.global_92
  loc_B8F75D: NewIfNullPr tblunidadgasto
  loc_B8F760: from_stack_1v = tblunidadgasto.CodiOrgaGet()
  loc_B8F765: FLdZeroAd var_98
  loc_B8F768: CVarStr var_CC
  loc_B8F76B: PopAdLdVar
  loc_B8F76C: FLdPr Me
  loc_B8F76F: VCallAd Control_ID_CodiOrgaMsk
  loc_B8F772: FStAdFunc var_88
  loc_B8F775: FLdPr var_88
  loc_B8F778: LateIdSt
  loc_B8F77D: FFree1Ad var_88
  loc_B8F780: FFree1Var var_CC = ""
  loc_B8F783: FLdRfVar var_98
  loc_B8F786: FLdPr Me
  loc_B8F789: MemLdRfVar from_stack_1.global_92
  loc_B8F78C: NewIfNullPr tblunidadgasto
  loc_B8F78F: from_stack_1v = tblunidadgasto.DetaOrgaGet()
  loc_B8F794: ILdRf var_98
  loc_B8F797: FLdPr Me
  loc_B8F79A: VCallAd Control_ID_DetaOrgaLbl
  loc_B8F79D: FStAdFunc var_88
  loc_B8F7A0: FLdPr var_88
  loc_B8F7A3: Me.Caption = from_stack_1
  loc_B8F7A8: FFree1Str var_98
  loc_B8F7AB: FFree1Ad var_88
  loc_B8F7AE: FLdPr Me
  loc_B8F7B1: VCallAd Control_ID_CodiPartMsk
  loc_B8F7B4: FStAdFunc var_88
  loc_B8F7B7: FLdPr var_88
  loc_B8F7BA: LateIdLdVar var_CC DispID_22 0
  loc_B8F7C1: CStrVarTmp
  loc_B8F7C2: FStStrNoPop var_98
  loc_B8F7C5: LitStr vbNullString
  loc_B8F7C8: EqStr
  loc_B8F7CA: FFree1Str var_98
  loc_B8F7CD: FFree1Ad var_88
  loc_B8F7D0: FFree1Var var_CC = ""
  loc_B8F7D3: BranchF loc_B8F830
  loc_B8F7D6: FLdRfVar var_98
  loc_B8F7D9: FLdPr Me
  loc_B8F7DC: MemLdRfVar from_stack_1.global_92
  loc_B8F7DF: NewIfNullPr tblunidadgasto
  loc_B8F7E2: from_stack_1v = tblunidadgasto.CodiPartGet()
  loc_B8F7E7: FLdZeroAd var_98
  loc_B8F7EA: CVarStr var_CC
  loc_B8F7ED: PopAdLdVar
  loc_B8F7EE: FLdPr Me
  loc_B8F7F1: VCallAd Control_ID_CodiPartMsk
  loc_B8F7F4: FStAdFunc var_88
  loc_B8F7F7: FLdPr var_88
  loc_B8F7FA: LateIdSt
  loc_B8F7FF: FFree1Ad var_88
  loc_B8F802: FFree1Var var_CC = ""
  loc_B8F805: FLdRfVar var_98
  loc_B8F808: FLdPr Me
  loc_B8F80B: MemLdRfVar from_stack_1.global_92
  loc_B8F80E: NewIfNullPr tblunidadgasto
  loc_B8F811: from_stack_1v = tblunidadgasto.DetaPartGet()
  loc_B8F816: ILdRf var_98
  loc_B8F819: FLdPr Me
  loc_B8F81C: VCallAd Control_ID_DetaPartLbl
  loc_B8F81F: FStAdFunc var_88
  loc_B8F822: FLdPr var_88
  loc_B8F825: Me.Caption = from_stack_1
  loc_B8F82A: FFree1Str var_98
  loc_B8F82D: FFree1Ad var_88
  loc_B8F830: FLdPr Me
  loc_B8F833: VCallAd Control_ID_CodiFifuMsk
  loc_B8F836: FStAdFunc var_88
  loc_B8F839: FLdPr var_88
  loc_B8F83C: LateIdLdVar var_CC DispID_22 0
  loc_B8F843: CStrVarTmp
  loc_B8F844: FStStrNoPop var_98
  loc_B8F847: LitStr vbNullString
  loc_B8F84A: EqStr
  loc_B8F84C: FFree1Str var_98
  loc_B8F84F: FFree1Ad var_88
  loc_B8F852: FFree1Var var_CC = ""
  loc_B8F855: BranchF loc_B8F8B2
  loc_B8F858: FLdRfVar var_98
  loc_B8F85B: FLdPr Me
  loc_B8F85E: MemLdRfVar from_stack_1.global_92
  loc_B8F861: NewIfNullPr tblunidadgasto
  loc_B8F864: from_stack_1v = tblunidadgasto.CodiFifuGet()
  loc_B8F869: FLdZeroAd var_98
  loc_B8F86C: CVarStr var_CC
  loc_B8F86F: PopAdLdVar
  loc_B8F870: FLdPr Me
  loc_B8F873: VCallAd Control_ID_CodiFifuMsk
  loc_B8F876: FStAdFunc var_88
  loc_B8F879: FLdPr var_88
  loc_B8F87C: LateIdSt
  loc_B8F881: FFree1Ad var_88
  loc_B8F884: FFree1Var var_CC = ""
  loc_B8F887: FLdRfVar var_98
  loc_B8F88A: FLdPr Me
  loc_B8F88D: MemLdRfVar from_stack_1.global_92
  loc_B8F890: NewIfNullPr tblunidadgasto
  loc_B8F893: from_stack_1v = tblunidadgasto.DetaFifuGet()
  loc_B8F898: ILdRf var_98
  loc_B8F89B: FLdPr Me
  loc_B8F89E: VCallAd Control_ID_DetaFifuLbl
  loc_B8F8A1: FStAdFunc var_88
  loc_B8F8A4: FLdPr var_88
  loc_B8F8A7: Me.Caption = from_stack_1
  loc_B8F8AC: FFree1Str var_98
  loc_B8F8AF: FFree1Ad var_88
  loc_B8F8B2: Branch loc_B8F8FC
  loc_B8F8B5: LitStr "La Unidad de Gasto NO EXISTE. Verifique..."
  loc_B8F8B8: FLdPr Me
  loc_B8F8BB: MemStStrCopy
  loc_B8F8BF: FLdPr Me
  loc_B8F8C2: VCallAd Control_ID_CodiUngaTxt
  loc_B8F8C5: FStAdFunc var_BC
  loc_B8F8C8: FLdPr Me
  loc_B8F8CB: VCallAd Control_ID_DetaUngaLbl
  loc_B8F8CE: FStAdFunc var_A8
  loc_B8F8D1: FLdRfVar var_A8
  loc_B8F8D4: FLdZeroAd var_BC
  loc_B8F8D7: FStAdFuncNoPop
  loc_B8F8DA: CastAd
  loc_B8F8DD: FStAdFunc var_90
  loc_B8F8E0: FLdRfVar var_90
  loc_B8F8E3: FLdPr Me
  loc_B8F8E6: MemLdRfVar from_stack_1.global_68
  loc_B8F8E9: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B8F8EE: IStI2 Cancel
  loc_B8F8F1: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B8F8FC: ExitProcHresult
End Sub

Private Sub Form_Load() 'A3FE00
  'Data Table: 4EED48
  loc_A3FBF8: LitVarStr var_94, "######"
  loc_A3FBFD: PopAdLdVar
  loc_A3FBFE: FLdPr Me
  loc_A3FC01: VCallAd Control_ID_CodiOrgaMsk
  loc_A3FC04: FStAdFunc var_A8
  loc_A3FC07: FLdPr var_A8
  loc_A3FC0A: LateIdSt
  loc_A3FC0F: FFree1Ad var_A8
  loc_A3FC12: LitVarStr var_94, "#.#.#.#.##.##"
  loc_A3FC17: PopAdLdVar
  loc_A3FC18: FLdPr Me
  loc_A3FC1B: VCallAd Control_ID_CodiPartMsk
  loc_A3FC1E: FStAdFunc var_A8
  loc_A3FC21: FLdPr var_A8
  loc_A3FC24: LateIdSt
  loc_A3FC29: FFree1Ad var_A8
  loc_A3FC2C: LitVarStr var_94, "##.##.##"
  loc_A3FC31: PopAdLdVar
  loc_A3FC32: FLdPr Me
  loc_A3FC35: VCallAd Control_ID_CodiFifuMsk
  loc_A3FC38: FStAdFunc var_A8
  loc_A3FC3B: FLdPr var_A8
  loc_A3FC3E: LateIdSt
  loc_A3FC43: FFree1Ad var_A8
  loc_A3FC46: LitVarStr var_94, vbNullString
  loc_A3FC4B: PopAdLdVar
  loc_A3FC4C: FLdPr Me
  loc_A3FC4F: VCallAd Control_ID_ExorImpuMsk
  loc_A3FC52: FStAdFunc var_A8
  loc_A3FC55: FLdPr var_A8
  loc_A3FC58: LateIdSt
  loc_A3FC5D: FFree1Ad var_A8
  loc_A3FC60: ILdRf Me
  loc_A3FC63: CastAd
  loc_A3FC66: FStAdFunc var_A8
  loc_A3FC69: FLdRfVar var_A8
  loc_A3FC6C: ImpAdCallFPR4  = Proc_261_41_999BCC()
  loc_A3FC71: FFree1Ad var_A8
  loc_A3FC74: ILdRf Me
  loc_A3FC77: CastAd
  loc_A3FC7A: FStAdFunc var_A8
  loc_A3FC7D: FLdRfVar var_A8
  loc_A3FC80: ImpAdCallFPR4  = Proc_261_42_9991A0()
  loc_A3FC85: FFree1Ad var_A8
  loc_A3FC88: LitI2_Byte 0
  loc_A3FC8A: CR8I2
  loc_A3FC8B: PopFPR4
  loc_A3FC8C: FLdPr Me
  loc_A3FC8F: Me.Left = from_stack_1s
  loc_A3FC94: LitI2_Byte 0
  loc_A3FC96: CR8I2
  loc_A3FC97: PopFPR4
  loc_A3FC98: FLdPr Me
  loc_A3FC9B: Me.Top = from_stack_1s
  loc_A3FCA0: LitStr vbNullString
  loc_A3FCA3: FLdPr Me
  loc_A3FCA6: MemStStrCopy
  loc_A3FCAA: LitStr "SELECT tbl.*, DetaInsu, DetaProv, DetaPart, DetaOrga, DetaUnga, DetaFifu"
  loc_A3FCAD: LitStr " FROM ("
  loc_A3FCB0: ConcatStr
  loc_A3FCB1: FStStrNoPop var_AC
  loc_A3FCB4: LitStr " SELECT i.*"
  loc_A3FCB7: ConcatStr
  loc_A3FCB8: FStStrNoPop var_B0
  loc_A3FCBB: LitStr " , Sum(DeveImpu-LiquImpu) SaldImpu, Sum(DeveImpu) SumDeveImpu, Count(0) cuenta"
  loc_A3FCBE: ConcatStr
  loc_A3FCBF: FStStrNoPop var_B4
  loc_A3FCC2: LitStr " FROM imputacion i"
  loc_A3FCC5: ConcatStr
  loc_A3FCC6: FStStrNoPop var_B8
  loc_A3FCC9: LitStr " WHERE i.PeriInfo = "
  loc_A3FCCC: ConcatStr
  loc_A3FCCD: FStStrNoPop var_BC
  loc_A3FCD0: ImpAdLdI2 MemVar_C3D064
  loc_A3FCD3: CStrUI1
  loc_A3FCD5: FStStrNoPop var_C0
  loc_A3FCD8: ConcatStr
  loc_A3FCD9: FStStrNoPop var_C4
  loc_A3FCDC: LitStr " AND (DeveImpu != 0 OR LiquImpu != 0)"
  loc_A3FCDF: ConcatStr
  loc_A3FCE0: FStStrNoPop var_C8
  loc_A3FCE3: LitStr " AND CodiOrco > 0"
  loc_A3FCE6: ConcatStr
  loc_A3FCE7: FStStrNoPop var_CC
  loc_A3FCEA: LitStr " GROUP BY i.PeriInfo, i.CodiOrco, i.CodiRece, i.Item, i.Altern, i.CodiPart, i.CodiOrga, i.CodiFifu, i.CodiInsu, i.CodiUnga"
  loc_A3FCED: ConcatStr
  loc_A3FCEE: FStStrNoPop var_D0
  loc_A3FCF1: LitStr " HAVING SaldImpu > 0 AND SaldImpu = SumDeveImpu /*AND cuenta = 1*/"
  loc_A3FCF4: ConcatStr
  loc_A3FCF5: FStStrNoPop var_D4
  loc_A3FCF8: LitStr " ) AS tbl"
  loc_A3FCFB: ConcatStr
  loc_A3FCFC: FStStrNoPop var_D8
  loc_A3FCFF: LitStr " INNER JOIN partida p ON p.PeriInfo = tbl.PeriInfo AND p.CodiPart = tbl.CodiPart"
  loc_A3FD02: ConcatStr
  loc_A3FD03: FStStrNoPop var_DC
  loc_A3FD06: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = tbl.PeriInfo AND o.CodiOrga = tbl.CodiOrga"
  loc_A3FD09: ConcatStr
  loc_A3FD0A: FStStrNoPop var_E0
  loc_A3FD0D: LitStr " INNER JOIN unidadgasto ug ON ug.CodiUnga = tbl.CodiUnga"
  loc_A3FD10: ConcatStr
  loc_A3FD11: FStStrNoPop var_E4
  loc_A3FD14: LitStr " INNER JOIN finalidad f ON f.PeriInfo = tbl.PeriInfo AND f.CodiFifu = tbl.CodiFifu"
  loc_A3FD17: ConcatStr
  loc_A3FD18: FStStrNoPop var_E8
  loc_A3FD1B: LitStr " INNER JOIN proveedor pp ON pp.CucuPers = tbl.CucuPers"
  loc_A3FD1E: ConcatStr
  loc_A3FD1F: FStStrNoPop var_EC
  loc_A3FD22: LitStr " INNER JOIN infogov.insumo ii ON ii.CodiInsu = tbl.CodiInsu"
  loc_A3FD25: ConcatStr
  loc_A3FD26: FStStrNoPop var_F0
  loc_A3FD29: LitStr " ORDER BY PeriInfo, CodiOrco, CodiRece, Item, Altern;"
  loc_A3FD2C: ConcatStr
  loc_A3FD2D: FStStrNoPop var_F4
  loc_A3FD30: FLdPr Me
  loc_A3FD33: MemLdRfVar from_stack_1.global_52
  loc_A3FD36: NewIfNullPr clsimputacion
  loc_A3FD39: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_A3FD3E: FFreeStr var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_EC = "": var_F0 = ""
  loc_A3FD67: LitVarI2 var_94, 0
  loc_A3FD6C: PopAdLdVar
  loc_A3FD6D: LitStr "Orden de Compra"
  loc_A3FD70: FLdPr Me
  loc_A3FD73: VCallAd Control_ID_FiltroCbo
  loc_A3FD76: FStAdFunc var_A8
  loc_A3FD79: FLdPr var_A8
  loc_A3FD7C: Me.AddItem from_stack_1, from_stack_2
  loc_A3FD81: FFree1Ad var_A8
  loc_A3FD84: LitI2_Byte 0
  loc_A3FD86: FLdPr Me
  loc_A3FD89: VCallAd Control_ID_FiltroCbo
  loc_A3FD8C: FStAdFunc var_A8
  loc_A3FD8F: FLdPr var_A8
  loc_A3FD92: Me.ListIndex = from_stack_1
  loc_A3FD97: FFree1Ad var_A8
  loc_A3FD9A: Call cmdCancelar_Click()
  loc_A3FD9F: LitI4 0
  loc_A3FDA4: LitI4 1
  loc_A3FDA9: FLdRfVar var_F8
  loc_A3FDAC: Redim
  loc_A3FDB6: FLdPr Me
  loc_A3FDB9: MemLdRfVar from_stack_1.global_52
  loc_A3FDBC: NewIfNullAd
  loc_A3FDBF: FStAd var_A8 
  loc_A3FDC3: FLdRfVar var_A8
  loc_A3FDC6: CVarRef
  loc_A3FDCB: ParmAry1St
  loc_A3FDD1: FLdPr Me
  loc_A3FDD4: VCallAd Control_ID_dgdABMS
  loc_A3FDD7: CVarAd
  loc_A3FDDB: ParmAry1St
  loc_A3FDE1: FLdRfVar var_F8
  loc_A3FDE4: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A3FDE9: ILdRf var_A8
  loc_A3FDEC: CastAd
  loc_A3FDEF: FLdPr Me
  loc_A3FDF2: MemStAdFunc
  loc_A3FDF6: FLdRfVar var_F8
  loc_A3FDF9: Erase
  loc_A3FDFA: FFree1Ad var_A8
  loc_A3FDFD: ExitProcHresult
End Sub

Private Sub Form_Activate() '998B5C
  'Data Table: 4EED48
  loc_998B00: FLdRfVar var_C2
  loc_998B03: FLdRfVar var_C0
  loc_998B06: LitVarI2 var_B8, 1
  loc_998B0B: FLdPr Me
  loc_998B0E: VCallAd Control_ID_tlbABMS
  loc_998B11: FStAdFunc var_88
  loc_998B14: FLdPr var_88
  loc_998B17: LateIdLdVar var_98 DispID_3 0
  loc_998B1E: CastAdVar Me
  loc_998B22: FStAdFunc var_BC
  loc_998B25: FLdPr var_BC
  loc_998B28:  = Me.Buttons.ControlDefault
  loc_998B2D: FLdPr var_C0
  loc_998B30:  = Me.Enabled
  loc_998B35: FLdI2 var_C2
  loc_998B38: FFreeAd var_88 = "": var_BC = ""
  loc_998B41: FFreeVar var_98 = ""
  loc_998B48: BranchF loc_998B59
  loc_998B4B: FLdPr Me
  loc_998B4E: MemLdRfVar from_stack_1.global_52
  loc_998B51: NewIfNullPr clsimputacion
  loc_998B54: Call clsimputacion.Requery()
  loc_998B59: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '948C98
  'Data Table: 4EED48
  loc_948C84: ILdI2 KeyAscii
  loc_948C87: CI4UI1
  loc_948C88: LitI4 &HD
  loc_948C8D: EqI4
  loc_948C8E: BranchF loc_948C96
  loc_948C91: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_948C96: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '95E4DC
  'Data Table: 4EED48
  loc_95E4C4: ILdI2 KeyCode
  loc_95E4C7: ILdRf Me
  loc_95E4CA: CastAd
  loc_95E4CD: FStAdFunc var_88
  loc_95E4D0: FLdRfVar var_88
  loc_95E4D3: ImpAdCallFPR4  = Proc_261_3_A7CAFC()
  loc_95E4D8: FFree1Ad var_88
  loc_95E4DB: ExitProcHresult
End Sub

Private Sub CucuPersTxt_GotFocus() '94CFC8
  'Data Table: 4EED48
  loc_94CFB4: FLdPr Me
  loc_94CFB7: VCallAd Control_ID_CucuPersTxt
  loc_94CFBA: CVarAd
  loc_94CFBE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94CFC3: FFree1Var var_94 = ""
  loc_94CFC6: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyUp(KeyCode As Integer, Shift As Integer) 'A0D220
  'Data Table: 4EED48
  loc_A0D0BC: ILdI2 Shift
  loc_A0D0BF: CI4UI1
  loc_A0D0C0: LitI4 2
  loc_A0D0C5: EqI4
  loc_A0D0C6: ILdI2 KeyCode
  loc_A0D0C9: CI4UI1
  loc_A0D0CA: LitI4 &H42
  loc_A0D0CF: EqI4
  loc_A0D0D0: AndI4
  loc_A0D0D1: BranchF loc_A0D21C
  loc_A0D0D4: LitI2_Byte 0
  loc_A0D0D6: ImpAdLdRf MemVar_C3D74C
  loc_A0D0D9: NewIfNullPr bscProveedor
  loc_A0D0DC: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_A0D0E1: LitNothing
  loc_A0D0E3: CastAd
  loc_A0D0E6: FStAdFuncNoPop
  loc_A0D0E9: FLdRfVar var_88
  loc_A0D0EC: ImpAdLdRf MemVar_C3D74C
  loc_A0D0EF: NewIfNullPr bscProveedor
  loc_A0D0F2: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0D0F7: FLdPr var_88
  loc_A0D0FA: Call clsbase.RsFrmSet(from_stack_1v)
  loc_A0D0FF: FFreeAd var_8C = ""
  loc_A0D106: LitVar_Missing var_AC
  loc_A0D109: PopAdLdVar
  loc_A0D10A: LitVarI4
  loc_A0D112: PopAdLdVar
  loc_A0D113: ImpAdLdRf MemVar_C3D74C
  loc_A0D116: NewIfNullPr bscProveedor
  loc_A0D119: bscProveedor.Show from_stack_1, from_stack_2
  loc_A0D11E: FLdRfVar var_B0
  loc_A0D121: FLdRfVar var_88
  loc_A0D124: ImpAdLdRf MemVar_C3D74C
  loc_A0D127: NewIfNullPr bscProveedor
  loc_A0D12A: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0D12F: FLdPr var_88
  loc_A0D132: from_stack_1 = clsbase.RecordCount
  loc_A0D137: ILdRf var_B0
  loc_A0D13A: LitI4 0
  loc_A0D13F: GtI4
  loc_A0D140: FFree1Ad var_88
  loc_A0D143: BranchF loc_A0D21C
  loc_A0D146: FLdRfVar var_C8
  loc_A0D149: FLdRfVar var_B8
  loc_A0D14C: LitVarStr var_9C, "CucuPers"
  loc_A0D151: PopAdLdVar
  loc_A0D152: FLdRfVar var_B4
  loc_A0D155: FLdRfVar var_8C
  loc_A0D158: FLdRfVar var_88
  loc_A0D15B: ImpAdLdRf MemVar_C3D74C
  loc_A0D15E: NewIfNullPr bscProveedor
  loc_A0D161: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0D166: FLdPr var_88
  loc_A0D169: from_stack_1v = clsbase.RsFrmGet()
  loc_A0D16E: FLdPr var_8C
  loc_A0D171:  = Me.Fields
  loc_A0D176: FLdPr var_B4
  loc_A0D179: from_stack_2 = Me.Item(from_stack_1)
  loc_A0D17E: FLdPr var_B8
  loc_A0D181:  = Me.Value
  loc_A0D186: FLdRfVar var_C8
  loc_A0D189: CStrVarTmp
  loc_A0D18A: FStStrNoPop var_CC
  loc_A0D18D: FLdPr Me
  loc_A0D190: VCallAd Control_ID_CucuPersTxt
  loc_A0D193: FStAdFunc var_D0
  loc_A0D196: FLdPr var_D0
  loc_A0D199: Me.Text = from_stack_1
  loc_A0D19E: FFree1Str var_CC
  loc_A0D1A1: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0D1AE: FFree1Var var_C8 = ""
  loc_A0D1B1: FLdRfVar var_C8
  loc_A0D1B4: FLdRfVar var_B8
  loc_A0D1B7: LitVarStr var_9C, "DetaProv"
  loc_A0D1BC: PopAdLdVar
  loc_A0D1BD: FLdRfVar var_B4
  loc_A0D1C0: FLdRfVar var_8C
  loc_A0D1C3: FLdRfVar var_88
  loc_A0D1C6: ImpAdLdRf MemVar_C3D74C
  loc_A0D1C9: NewIfNullPr bscProveedor
  loc_A0D1CC: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0D1D1: FLdPr var_88
  loc_A0D1D4: from_stack_1v = clsbase.RsFrmGet()
  loc_A0D1D9: FLdPr var_8C
  loc_A0D1DC:  = Me.Fields
  loc_A0D1E1: FLdPr var_B4
  loc_A0D1E4: from_stack_2 = Me.Item(from_stack_1)
  loc_A0D1E9: FLdPr var_B8
  loc_A0D1EC:  = Me.Value
  loc_A0D1F1: FLdRfVar var_C8
  loc_A0D1F4: CStrVarTmp
  loc_A0D1F5: FStStrNoPop var_CC
  loc_A0D1F8: FLdPr Me
  loc_A0D1FB: VCallAd Control_ID_DetaProvLbl
  loc_A0D1FE: FStAdFunc var_D0
  loc_A0D201: FLdPr var_D0
  loc_A0D204: Me.Caption = from_stack_1
  loc_A0D209: FFree1Str var_CC
  loc_A0D20C: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0D219: FFree1Var var_C8 = ""
  loc_A0D21C: ExitProcHresult
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) 'B486C8
  'Data Table: 4EED48
  loc_B47C20: FLdRfVar var_8A
  loc_B47C23: FLdPr Me
  loc_B47C26: VCallAd Control_ID_cmdCancelar
  loc_B47C29: FStAdFunc var_88
  loc_B47C2C: FLdPr var_88
  loc_B47C2F:  = Me.Value
  loc_B47C34: FLdI2 var_8A
  loc_B47C37: NotI4
  loc_B47C38: FLdRfVar var_92
  loc_B47C3B: FLdPr Me
  loc_B47C3E: VCallAd Control_ID_CucuPersTxt
  loc_B47C41: FStAdFunc var_90
  loc_B47C44: FLdPr var_90
  loc_B47C47:  = Me.Enabled
  loc_B47C4C: FLdI2 var_92
  loc_B47C4F: AndI4
  loc_B47C50: FFreeAd var_88 = ""
  loc_B47C57: BranchF loc_B486C7
  loc_B47C5A: FLdRfVar var_98
  loc_B47C5D: FLdPr Me
  loc_B47C60: VCallAd Control_ID_CucuPersTxt
  loc_B47C63: FStAdFunc var_88
  loc_B47C66: FLdPr var_88
  loc_B47C69:  = Me.Text
  loc_B47C6E: ILdRf var_98
  loc_B47C71: ImpAdCallI2 Trim$()
  loc_B47C76: FStStrNoPop var_9C
  loc_B47C79: LitStr vbNullString
  loc_B47C7C: NeStr
  loc_B47C7E: FFreeStr var_98 = ""
  loc_B47C85: FFree1Ad var_88
  loc_B47C88: BranchF loc_B48516
  loc_B47C8B: FLdPr Me
  loc_B47C8E: VCallAd Control_ID_CucuPersTxt
  loc_B47C91: FStAdFunc var_88
  loc_B47C94: FLdRfVar var_88
  loc_B47C97: ImpAdCallI2  = Proc_266_39_9F3844()
  loc_B47C9C: FFree1Ad var_88
  loc_B47C9F: BranchF loc_B480DC
  loc_B47CA2: LitStr "SELECT * FROM proveedor WHERE CucuPers LIKE '" & Chr(37)
  loc_B47CA5: FLdRfVar var_98
  loc_B47CA8: FLdPr Me
  loc_B47CAB: VCallAd Control_ID_CucuPersTxt
  loc_B47CAE: FStAdFunc var_88
  loc_B47CB1: FLdPr var_88
  loc_B47CB4:  = Me.Text
  loc_B47CB9: ILdRf var_98
  loc_B47CBC: ConcatStr
  loc_B47CBD: FStStrNoPop var_9C
  loc_B47CC0: LitStr Chr(37) & "' ORDER BY DetaProv"
  loc_B47CC3: ConcatStr
  loc_B47CC4: FStStrNoPop var_A0
  loc_B47CC7: ImpAdLdRf MemVar_C3D74C
  loc_B47CCA: NewIfNullPr bscProveedor
  loc_B47CCD: Call bscProveedor.Constructor(from_stack_1v)
  loc_B47CD2: FFreeStr var_98 = "": var_9C = ""
  loc_B47CDB: FFree1Ad var_88
  loc_B47CDE: FLdRfVar var_A4
  loc_B47CE1: FLdRfVar var_90
  loc_B47CE4: FLdRfVar var_88
  loc_B47CE7: ImpAdLdRf MemVar_C3D74C
  loc_B47CEA: NewIfNullPr bscProveedor
  loc_B47CED: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B47CF2: FLdPr var_88
  loc_B47CF5: from_stack_1v = clsbase.RsFrmGet()
  loc_B47CFA: FLdPr var_90
  loc_B47CFD:  = Me.RecordCount
  loc_B47D02: ILdRf var_A4
  loc_B47D05: LitI4 1
  loc_B47D0A: EqI4
  loc_B47D0B: FFreeAd var_88 = ""
  loc_B47D12: BranchF loc_B47E35
  loc_B47D15: FLdRfVar var_CC
  loc_B47D18: FLdRfVar var_BC
  loc_B47D1B: LitVarStr var_B8, "CucuPers"
  loc_B47D20: PopAdLdVar
  loc_B47D21: FLdRfVar var_A8
  loc_B47D24: FLdRfVar var_90
  loc_B47D27: FLdRfVar var_88
  loc_B47D2A: ImpAdLdRf MemVar_C3D74C
  loc_B47D2D: NewIfNullPr bscProveedor
  loc_B47D30: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B47D35: FLdPr var_88
  loc_B47D38: from_stack_1v = clsbase.RsFrmGet()
  loc_B47D3D: FLdPr var_90
  loc_B47D40:  = Me.Fields
  loc_B47D45: FLdPr var_A8
  loc_B47D48: from_stack_2 = Me.Item(from_stack_1)
  loc_B47D4D: FLdPr var_BC
  loc_B47D50:  = Me.Value
  loc_B47D55: FLdRfVar var_CC
  loc_B47D58: CStrVarTmp
  loc_B47D59: FStStrNoPop var_98
  loc_B47D5C: FLdPr Me
  loc_B47D5F: VCallAd Control_ID_CucuPersTxt
  loc_B47D62: FStAdFunc var_D0
  loc_B47D65: FLdPr var_D0
  loc_B47D68: Me.Text = from_stack_1
  loc_B47D6D: FFree1Str var_98
  loc_B47D70: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B47D7D: FFree1Var var_CC = ""
  loc_B47D80: FLdRfVar var_CC
  loc_B47D83: FLdRfVar var_BC
  loc_B47D86: LitVarStr var_B8, "DetaProv"
  loc_B47D8B: PopAdLdVar
  loc_B47D8C: FLdRfVar var_A8
  loc_B47D8F: FLdRfVar var_90
  loc_B47D92: FLdRfVar var_88
  loc_B47D95: ImpAdLdRf MemVar_C3D74C
  loc_B47D98: NewIfNullPr bscProveedor
  loc_B47D9B: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B47DA0: FLdPr var_88
  loc_B47DA3: from_stack_1v = clsbase.RsFrmGet()
  loc_B47DA8: FLdPr var_90
  loc_B47DAB:  = Me.Fields
  loc_B47DB0: FLdPr var_A8
  loc_B47DB3: from_stack_2 = Me.Item(from_stack_1)
  loc_B47DB8: FLdPr var_BC
  loc_B47DBB:  = Me.Value
  loc_B47DC0: FLdRfVar var_CC
  loc_B47DC3: CStrVarTmp
  loc_B47DC4: FStStrNoPop var_98
  loc_B47DC7: FLdPr Me
  loc_B47DCA: VCallAd Control_ID_DetaProvLbl
  loc_B47DCD: FStAdFunc var_D0
  loc_B47DD0: FLdPr var_D0
  loc_B47DD3: Me.Caption = from_stack_1
  loc_B47DD8: FFree1Str var_98
  loc_B47DDB: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B47DE8: FFree1Var var_CC = ""
  loc_B47DEB: LitStr vbNullString
  loc_B47DEE: FLdPr Me
  loc_B47DF1: MemStStrCopy
  loc_B47DF5: FLdPr Me
  loc_B47DF8: VCallAd Control_ID_CucuPersTxt
  loc_B47DFB: FStAdFunc var_BC
  loc_B47DFE: FLdPr Me
  loc_B47E01: VCallAd Control_ID_DetaProvLbl
  loc_B47E04: FStAdFunc var_A8
  loc_B47E07: FLdRfVar var_A8
  loc_B47E0A: FLdZeroAd var_BC
  loc_B47E0D: FStAdFuncNoPop
  loc_B47E10: CastAd
  loc_B47E13: FStAdFunc var_90
  loc_B47E16: FLdRfVar var_90
  loc_B47E19: FLdPr Me
  loc_B47E1C: MemLdRfVar from_stack_1.global_68
  loc_B47E1F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B47E24: IStI2 Cancel
  loc_B47E27: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B47E32: Branch loc_B480D9
  loc_B47E35: FLdRfVar var_A4
  loc_B47E38: FLdRfVar var_90
  loc_B47E3B: FLdRfVar var_88
  loc_B47E3E: ImpAdLdRf MemVar_C3D74C
  loc_B47E41: NewIfNullPr bscProveedor
  loc_B47E44: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B47E49: FLdPr var_88
  loc_B47E4C: from_stack_1v = clsbase.RsFrmGet()
  loc_B47E51: FLdPr var_90
  loc_B47E54:  = Me.RecordCount
  loc_B47E59: ILdRf var_A4
  loc_B47E5C: LitI4 1
  loc_B47E61: GtI4
  loc_B47E62: FFreeAd var_88 = ""
  loc_B47E69: BranchF loc_B48044
  loc_B47E6C: LitVar_Missing var_E0
  loc_B47E6F: PopAdLdVar
  loc_B47E70: LitVarI4
  loc_B47E78: PopAdLdVar
  loc_B47E79: ImpAdLdRf MemVar_C3D74C
  loc_B47E7C: NewIfNullPr bscProveedor
  loc_B47E7F: bscProveedor.Show from_stack_1, from_stack_2
  loc_B47E84: FLdRfVar var_A4
  loc_B47E87: FLdRfVar var_88
  loc_B47E8A: ImpAdLdRf MemVar_C3D74C
  loc_B47E8D: NewIfNullPr bscProveedor
  loc_B47E90: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B47E95: FLdPr var_88
  loc_B47E98: from_stack_1 = clsbase.RecordCount
  loc_B47E9D: ILdRf var_A4
  loc_B47EA0: LitI4 0
  loc_B47EA5: GtI4
  loc_B47EA6: FFree1Ad var_88
  loc_B47EA9: BranchF loc_B47FCC
  loc_B47EAC: FLdRfVar var_CC
  loc_B47EAF: FLdRfVar var_BC
  loc_B47EB2: LitVarStr var_B8, "CucuPers"
  loc_B47EB7: PopAdLdVar
  loc_B47EB8: FLdRfVar var_A8
  loc_B47EBB: FLdRfVar var_90
  loc_B47EBE: FLdRfVar var_88
  loc_B47EC1: ImpAdLdRf MemVar_C3D74C
  loc_B47EC4: NewIfNullPr bscProveedor
  loc_B47EC7: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B47ECC: FLdPr var_88
  loc_B47ECF: from_stack_1v = clsbase.RsFrmGet()
  loc_B47ED4: FLdPr var_90
  loc_B47ED7:  = Me.Fields
  loc_B47EDC: FLdPr var_A8
  loc_B47EDF: from_stack_2 = Me.Item(from_stack_1)
  loc_B47EE4: FLdPr var_BC
  loc_B47EE7:  = Me.Value
  loc_B47EEC: FLdRfVar var_CC
  loc_B47EEF: CStrVarTmp
  loc_B47EF0: FStStrNoPop var_98
  loc_B47EF3: FLdPr Me
  loc_B47EF6: VCallAd Control_ID_CucuPersTxt
  loc_B47EF9: FStAdFunc var_D0
  loc_B47EFC: FLdPr var_D0
  loc_B47EFF: Me.Text = from_stack_1
  loc_B47F04: FFree1Str var_98
  loc_B47F07: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B47F14: FFree1Var var_CC = ""
  loc_B47F17: FLdRfVar var_CC
  loc_B47F1A: FLdRfVar var_BC
  loc_B47F1D: LitVarStr var_B8, "DetaProv"
  loc_B47F22: PopAdLdVar
  loc_B47F23: FLdRfVar var_A8
  loc_B47F26: FLdRfVar var_90
  loc_B47F29: FLdRfVar var_88
  loc_B47F2C: ImpAdLdRf MemVar_C3D74C
  loc_B47F2F: NewIfNullPr bscProveedor
  loc_B47F32: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B47F37: FLdPr var_88
  loc_B47F3A: from_stack_1v = clsbase.RsFrmGet()
  loc_B47F3F: FLdPr var_90
  loc_B47F42:  = Me.Fields
  loc_B47F47: FLdPr var_A8
  loc_B47F4A: from_stack_2 = Me.Item(from_stack_1)
  loc_B47F4F: FLdPr var_BC
  loc_B47F52:  = Me.Value
  loc_B47F57: FLdRfVar var_CC
  loc_B47F5A: CStrVarTmp
  loc_B47F5B: FStStrNoPop var_98
  loc_B47F5E: FLdPr Me
  loc_B47F61: VCallAd Control_ID_DetaProvLbl
  loc_B47F64: FStAdFunc var_D0
  loc_B47F67: FLdPr var_D0
  loc_B47F6A: Me.Caption = from_stack_1
  loc_B47F6F: FFree1Str var_98
  loc_B47F72: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B47F7F: FFree1Var var_CC = ""
  loc_B47F82: LitStr vbNullString
  loc_B47F85: FLdPr Me
  loc_B47F88: MemStStrCopy
  loc_B47F8C: FLdPr Me
  loc_B47F8F: VCallAd Control_ID_CucuPersTxt
  loc_B47F92: FStAdFunc var_BC
  loc_B47F95: FLdPr Me
  loc_B47F98: VCallAd Control_ID_DetaProvLbl
  loc_B47F9B: FStAdFunc var_A8
  loc_B47F9E: FLdRfVar var_A8
  loc_B47FA1: FLdZeroAd var_BC
  loc_B47FA4: FStAdFuncNoPop
  loc_B47FA7: CastAd
  loc_B47FAA: FStAdFunc var_90
  loc_B47FAD: FLdRfVar var_90
  loc_B47FB0: FLdPr Me
  loc_B47FB3: MemLdRfVar from_stack_1.global_68
  loc_B47FB6: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B47FBB: IStI2 Cancel
  loc_B47FBE: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B47FC9: Branch loc_B48041
  loc_B47FCC: LitStr vbNullString
  loc_B47FCF: FLdPr Me
  loc_B47FD2: VCallAd Control_ID_CucuPersTxt
  loc_B47FD5: FStAdFunc var_88
  loc_B47FD8: FLdPr var_88
  loc_B47FDB: Me.Text = from_stack_1
  loc_B47FE0: FFree1Ad var_88
  loc_B47FE3: LitStr vbNullString
  loc_B47FE6: FLdPr Me
  loc_B47FE9: VCallAd Control_ID_DetaProvLbl
  loc_B47FEC: FStAdFunc var_88
  loc_B47FEF: FLdPr var_88
  loc_B47FF2: Me.Caption = from_stack_1
  loc_B47FF7: FFree1Ad var_88
  loc_B47FFA: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B47FFD: FLdPr Me
  loc_B48000: MemStStrCopy
  loc_B48004: FLdPr Me
  loc_B48007: VCallAd Control_ID_CucuPersTxt
  loc_B4800A: FStAdFunc var_BC
  loc_B4800D: FLdPr Me
  loc_B48010: VCallAd Control_ID_DetaProvLbl
  loc_B48013: FStAdFunc var_A8
  loc_B48016: FLdRfVar var_A8
  loc_B48019: FLdZeroAd var_BC
  loc_B4801C: FStAdFuncNoPop
  loc_B4801F: CastAd
  loc_B48022: FStAdFunc var_90
  loc_B48025: FLdRfVar var_90
  loc_B48028: FLdPr Me
  loc_B4802B: MemLdRfVar from_stack_1.global_68
  loc_B4802E: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B48033: IStI2 Cancel
  loc_B48036: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B48041: Branch loc_B480D9
  loc_B48044: FLdRfVar var_A4
  loc_B48047: FLdRfVar var_90
  loc_B4804A: FLdRfVar var_88
  loc_B4804D: ImpAdLdRf MemVar_C3D74C
  loc_B48050: NewIfNullPr bscProveedor
  loc_B48053: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B48058: FLdPr var_88
  loc_B4805B: from_stack_1v = clsbase.RsFrmGet()
  loc_B48060: FLdPr var_90
  loc_B48063:  = Me.RecordCount
  loc_B48068: ILdRf var_A4
  loc_B4806B: LitI4 1
  loc_B48070: LtI4
  loc_B48071: FFreeAd var_88 = ""
  loc_B48078: BranchF loc_B480D9
  loc_B4807B: LitStr vbNullString
  loc_B4807E: FLdPr Me
  loc_B48081: VCallAd Control_ID_DetaProvLbl
  loc_B48084: FStAdFunc var_88
  loc_B48087: FLdPr var_88
  loc_B4808A: Me.Caption = from_stack_1
  loc_B4808F: FFree1Ad var_88
  loc_B48092: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B48095: FLdPr Me
  loc_B48098: MemStStrCopy
  loc_B4809C: FLdPr Me
  loc_B4809F: VCallAd Control_ID_CucuPersTxt
  loc_B480A2: FStAdFunc var_BC
  loc_B480A5: FLdPr Me
  loc_B480A8: VCallAd Control_ID_DetaProvLbl
  loc_B480AB: FStAdFunc var_A8
  loc_B480AE: FLdRfVar var_A8
  loc_B480B1: FLdZeroAd var_BC
  loc_B480B4: FStAdFuncNoPop
  loc_B480B7: CastAd
  loc_B480BA: FStAdFunc var_90
  loc_B480BD: FLdRfVar var_90
  loc_B480C0: FLdPr Me
  loc_B480C3: MemLdRfVar from_stack_1.global_68
  loc_B480C6: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B480CB: IStI2 Cancel
  loc_B480CE: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B480D9: Branch loc_B48513
  loc_B480DC: LitStr " AND DetaProv LIKE '" & Chr(37)
  loc_B480DF: FLdRfVar var_98
  loc_B480E2: FLdPr Me
  loc_B480E5: VCallAd Control_ID_CucuPersTxt
  loc_B480E8: FStAdFunc var_88
  loc_B480EB: FLdPr var_88
  loc_B480EE:  = Me.Text
  loc_B480F3: ILdRf var_98
  loc_B480F6: ConcatStr
  loc_B480F7: FStStrNoPop var_9C
  loc_B480FA: LitStr Chr(37) & "' ORDER BY DetaProv"
  loc_B480FD: ConcatStr
  loc_B480FE: FStStrNoPop var_A0
  loc_B48101: ImpAdLdRf MemVar_C3D74C
  loc_B48104: NewIfNullPr bscProveedor
  loc_B48107: Call bscProveedor.Constructor(from_stack_1v)
  loc_B4810C: FFreeStr var_98 = "": var_9C = ""
  loc_B48115: FFree1Ad var_88
  loc_B48118: FLdRfVar var_A4
  loc_B4811B: FLdRfVar var_90
  loc_B4811E: FLdRfVar var_88
  loc_B48121: ImpAdLdRf MemVar_C3D74C
  loc_B48124: NewIfNullPr bscProveedor
  loc_B48127: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4812C: FLdPr var_88
  loc_B4812F: from_stack_1v = clsbase.RsFrmGet()
  loc_B48134: FLdPr var_90
  loc_B48137:  = Me.RecordCount
  loc_B4813C: ILdRf var_A4
  loc_B4813F: LitI4 1
  loc_B48144: EqI4
  loc_B48145: FFreeAd var_88 = ""
  loc_B4814C: BranchF loc_B4826F
  loc_B4814F: FLdRfVar var_CC
  loc_B48152: FLdRfVar var_BC
  loc_B48155: LitVarStr var_B8, "CucuPers"
  loc_B4815A: PopAdLdVar
  loc_B4815B: FLdRfVar var_A8
  loc_B4815E: FLdRfVar var_90
  loc_B48161: FLdRfVar var_88
  loc_B48164: ImpAdLdRf MemVar_C3D74C
  loc_B48167: NewIfNullPr bscProveedor
  loc_B4816A: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4816F: FLdPr var_88
  loc_B48172: from_stack_1v = clsbase.RsFrmGet()
  loc_B48177: FLdPr var_90
  loc_B4817A:  = Me.Fields
  loc_B4817F: FLdPr var_A8
  loc_B48182: from_stack_2 = Me.Item(from_stack_1)
  loc_B48187: FLdPr var_BC
  loc_B4818A:  = Me.Value
  loc_B4818F: FLdRfVar var_CC
  loc_B48192: CStrVarTmp
  loc_B48193: FStStrNoPop var_98
  loc_B48196: FLdPr Me
  loc_B48199: VCallAd Control_ID_CucuPersTxt
  loc_B4819C: FStAdFunc var_D0
  loc_B4819F: FLdPr var_D0
  loc_B481A2: Me.Text = from_stack_1
  loc_B481A7: FFree1Str var_98
  loc_B481AA: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B481B7: FFree1Var var_CC = ""
  loc_B481BA: FLdRfVar var_CC
  loc_B481BD: FLdRfVar var_BC
  loc_B481C0: LitVarStr var_B8, "DetaProv"
  loc_B481C5: PopAdLdVar
  loc_B481C6: FLdRfVar var_A8
  loc_B481C9: FLdRfVar var_90
  loc_B481CC: FLdRfVar var_88
  loc_B481CF: ImpAdLdRf MemVar_C3D74C
  loc_B481D2: NewIfNullPr bscProveedor
  loc_B481D5: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B481DA: FLdPr var_88
  loc_B481DD: from_stack_1v = clsbase.RsFrmGet()
  loc_B481E2: FLdPr var_90
  loc_B481E5:  = Me.Fields
  loc_B481EA: FLdPr var_A8
  loc_B481ED: from_stack_2 = Me.Item(from_stack_1)
  loc_B481F2: FLdPr var_BC
  loc_B481F5:  = Me.Value
  loc_B481FA: FLdRfVar var_CC
  loc_B481FD: CStrVarTmp
  loc_B481FE: FStStrNoPop var_98
  loc_B48201: FLdPr Me
  loc_B48204: VCallAd Control_ID_DetaProvLbl
  loc_B48207: FStAdFunc var_D0
  loc_B4820A: FLdPr var_D0
  loc_B4820D: Me.Caption = from_stack_1
  loc_B48212: FFree1Str var_98
  loc_B48215: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B48222: FFree1Var var_CC = ""
  loc_B48225: LitStr vbNullString
  loc_B48228: FLdPr Me
  loc_B4822B: MemStStrCopy
  loc_B4822F: FLdPr Me
  loc_B48232: VCallAd Control_ID_CucuPersTxt
  loc_B48235: FStAdFunc var_BC
  loc_B48238: FLdPr Me
  loc_B4823B: VCallAd Control_ID_DetaProvLbl
  loc_B4823E: FStAdFunc var_A8
  loc_B48241: FLdRfVar var_A8
  loc_B48244: FLdZeroAd var_BC
  loc_B48247: FStAdFuncNoPop
  loc_B4824A: CastAd
  loc_B4824D: FStAdFunc var_90
  loc_B48250: FLdRfVar var_90
  loc_B48253: FLdPr Me
  loc_B48256: MemLdRfVar from_stack_1.global_68
  loc_B48259: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4825E: IStI2 Cancel
  loc_B48261: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B4826C: Branch loc_B48513
  loc_B4826F: FLdRfVar var_A4
  loc_B48272: FLdRfVar var_90
  loc_B48275: FLdRfVar var_88
  loc_B48278: ImpAdLdRf MemVar_C3D74C
  loc_B4827B: NewIfNullPr bscProveedor
  loc_B4827E: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B48283: FLdPr var_88
  loc_B48286: from_stack_1v = clsbase.RsFrmGet()
  loc_B4828B: FLdPr var_90
  loc_B4828E:  = Me.RecordCount
  loc_B48293: ILdRf var_A4
  loc_B48296: LitI4 1
  loc_B4829B: GtI4
  loc_B4829C: FFreeAd var_88 = ""
  loc_B482A3: BranchF loc_B4847E
  loc_B482A6: LitVar_Missing var_E0
  loc_B482A9: PopAdLdVar
  loc_B482AA: LitVarI4
  loc_B482B2: PopAdLdVar
  loc_B482B3: ImpAdLdRf MemVar_C3D74C
  loc_B482B6: NewIfNullPr bscProveedor
  loc_B482B9: bscProveedor.Show from_stack_1, from_stack_2
  loc_B482BE: FLdRfVar var_A4
  loc_B482C1: FLdRfVar var_88
  loc_B482C4: ImpAdLdRf MemVar_C3D74C
  loc_B482C7: NewIfNullPr bscProveedor
  loc_B482CA: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B482CF: FLdPr var_88
  loc_B482D2: from_stack_1 = clsbase.RecordCount
  loc_B482D7: ILdRf var_A4
  loc_B482DA: LitI4 0
  loc_B482DF: GtI4
  loc_B482E0: FFree1Ad var_88
  loc_B482E3: BranchF loc_B48406
  loc_B482E6: FLdRfVar var_CC
  loc_B482E9: FLdRfVar var_BC
  loc_B482EC: LitVarStr var_B8, "CucuPers"
  loc_B482F1: PopAdLdVar
  loc_B482F2: FLdRfVar var_A8
  loc_B482F5: FLdRfVar var_90
  loc_B482F8: FLdRfVar var_88
  loc_B482FB: ImpAdLdRf MemVar_C3D74C
  loc_B482FE: NewIfNullPr bscProveedor
  loc_B48301: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B48306: FLdPr var_88
  loc_B48309: from_stack_1v = clsbase.RsFrmGet()
  loc_B4830E: FLdPr var_90
  loc_B48311:  = Me.Fields
  loc_B48316: FLdPr var_A8
  loc_B48319: from_stack_2 = Me.Item(from_stack_1)
  loc_B4831E: FLdPr var_BC
  loc_B48321:  = Me.Value
  loc_B48326: FLdRfVar var_CC
  loc_B48329: CStrVarTmp
  loc_B4832A: FStStrNoPop var_98
  loc_B4832D: FLdPr Me
  loc_B48330: VCallAd Control_ID_CucuPersTxt
  loc_B48333: FStAdFunc var_D0
  loc_B48336: FLdPr var_D0
  loc_B48339: Me.Text = from_stack_1
  loc_B4833E: FFree1Str var_98
  loc_B48341: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B4834E: FFree1Var var_CC = ""
  loc_B48351: FLdRfVar var_CC
  loc_B48354: FLdRfVar var_BC
  loc_B48357: LitVarStr var_B8, "DetaProv"
  loc_B4835C: PopAdLdVar
  loc_B4835D: FLdRfVar var_A8
  loc_B48360: FLdRfVar var_90
  loc_B48363: FLdRfVar var_88
  loc_B48366: ImpAdLdRf MemVar_C3D74C
  loc_B48369: NewIfNullPr bscProveedor
  loc_B4836C: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B48371: FLdPr var_88
  loc_B48374: from_stack_1v = clsbase.RsFrmGet()
  loc_B48379: FLdPr var_90
  loc_B4837C:  = Me.Fields
  loc_B48381: FLdPr var_A8
  loc_B48384: from_stack_2 = Me.Item(from_stack_1)
  loc_B48389: FLdPr var_BC
  loc_B4838C:  = Me.Value
  loc_B48391: FLdRfVar var_CC
  loc_B48394: CStrVarTmp
  loc_B48395: FStStrNoPop var_98
  loc_B48398: FLdPr Me
  loc_B4839B: VCallAd Control_ID_DetaProvLbl
  loc_B4839E: FStAdFunc var_D0
  loc_B483A1: FLdPr var_D0
  loc_B483A4: Me.Caption = from_stack_1
  loc_B483A9: FFree1Str var_98
  loc_B483AC: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B483B9: FFree1Var var_CC = ""
  loc_B483BC: LitStr vbNullString
  loc_B483BF: FLdPr Me
  loc_B483C2: MemStStrCopy
  loc_B483C6: FLdPr Me
  loc_B483C9: VCallAd Control_ID_CucuPersTxt
  loc_B483CC: FStAdFunc var_BC
  loc_B483CF: FLdPr Me
  loc_B483D2: VCallAd Control_ID_DetaProvLbl
  loc_B483D5: FStAdFunc var_A8
  loc_B483D8: FLdRfVar var_A8
  loc_B483DB: FLdZeroAd var_BC
  loc_B483DE: FStAdFuncNoPop
  loc_B483E1: CastAd
  loc_B483E4: FStAdFunc var_90
  loc_B483E7: FLdRfVar var_90
  loc_B483EA: FLdPr Me
  loc_B483ED: MemLdRfVar from_stack_1.global_68
  loc_B483F0: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B483F5: IStI2 Cancel
  loc_B483F8: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B48403: Branch loc_B4847B
  loc_B48406: LitStr vbNullString
  loc_B48409: FLdPr Me
  loc_B4840C: VCallAd Control_ID_CucuPersTxt
  loc_B4840F: FStAdFunc var_88
  loc_B48412: FLdPr var_88
  loc_B48415: Me.Text = from_stack_1
  loc_B4841A: FFree1Ad var_88
  loc_B4841D: LitStr vbNullString
  loc_B48420: FLdPr Me
  loc_B48423: VCallAd Control_ID_DetaProvLbl
  loc_B48426: FStAdFunc var_88
  loc_B48429: FLdPr var_88
  loc_B4842C: Me.Caption = from_stack_1
  loc_B48431: FFree1Ad var_88
  loc_B48434: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B48437: FLdPr Me
  loc_B4843A: MemStStrCopy
  loc_B4843E: FLdPr Me
  loc_B48441: VCallAd Control_ID_CucuPersTxt
  loc_B48444: FStAdFunc var_BC
  loc_B48447: FLdPr Me
  loc_B4844A: VCallAd Control_ID_DetaProvLbl
  loc_B4844D: FStAdFunc var_A8
  loc_B48450: FLdRfVar var_A8
  loc_B48453: FLdZeroAd var_BC
  loc_B48456: FStAdFuncNoPop
  loc_B48459: CastAd
  loc_B4845C: FStAdFunc var_90
  loc_B4845F: FLdRfVar var_90
  loc_B48462: FLdPr Me
  loc_B48465: MemLdRfVar from_stack_1.global_68
  loc_B48468: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B4846D: IStI2 Cancel
  loc_B48470: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B4847B: Branch loc_B48513
  loc_B4847E: FLdRfVar var_A4
  loc_B48481: FLdRfVar var_90
  loc_B48484: FLdRfVar var_88
  loc_B48487: ImpAdLdRf MemVar_C3D74C
  loc_B4848A: NewIfNullPr bscProveedor
  loc_B4848D: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B48492: FLdPr var_88
  loc_B48495: from_stack_1v = clsbase.RsFrmGet()
  loc_B4849A: FLdPr var_90
  loc_B4849D:  = Me.RecordCount
  loc_B484A2: ILdRf var_A4
  loc_B484A5: LitI4 1
  loc_B484AA: LtI4
  loc_B484AB: FFreeAd var_88 = ""
  loc_B484B2: BranchF loc_B48513
  loc_B484B5: LitStr vbNullString
  loc_B484B8: FLdPr Me
  loc_B484BB: VCallAd Control_ID_DetaProvLbl
  loc_B484BE: FStAdFunc var_88
  loc_B484C1: FLdPr var_88
  loc_B484C4: Me.Caption = from_stack_1
  loc_B484C9: FFree1Ad var_88
  loc_B484CC: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B484CF: FLdPr Me
  loc_B484D2: MemStStrCopy
  loc_B484D6: FLdPr Me
  loc_B484D9: VCallAd Control_ID_CucuPersTxt
  loc_B484DC: FStAdFunc var_BC
  loc_B484DF: FLdPr Me
  loc_B484E2: VCallAd Control_ID_DetaProvLbl
  loc_B484E5: FStAdFunc var_A8
  loc_B484E8: FLdRfVar var_A8
  loc_B484EB: FLdZeroAd var_BC
  loc_B484EE: FStAdFuncNoPop
  loc_B484F1: CastAd
  loc_B484F4: FStAdFunc var_90
  loc_B484F7: FLdRfVar var_90
  loc_B484FA: FLdPr Me
  loc_B484FD: MemLdRfVar from_stack_1.global_68
  loc_B48500: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B48505: IStI2 Cancel
  loc_B48508: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B48513: Branch loc_B486C7
  loc_B48516: LitI2_Byte 0
  loc_B48518: ImpAdLdRf MemVar_C3D74C
  loc_B4851B: NewIfNullPr bscProveedor
  loc_B4851E: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_B48523: LitNothing
  loc_B48525: CastAd
  loc_B48528: FStAdFuncNoPop
  loc_B4852B: ImpAdLdRf MemVar_C3D74C
  loc_B4852E: NewIfNullPr bscProveedor
  loc_B48531: Call bscProveedor.global_4315292Set(from_stack_1v)
  loc_B48536: FFree1Ad var_88
  loc_B48539: LitVar_Missing var_E0
  loc_B4853C: PopAdLdVar
  loc_B4853D: LitVarI4
  loc_B48545: PopAdLdVar
  loc_B48546: ImpAdLdRf MemVar_C3D74C
  loc_B48549: NewIfNullPr bscProveedor
  loc_B4854C: bscProveedor.Show from_stack_1, from_stack_2
  loc_B48551: FLdRfVar var_A4
  loc_B48554: FLdRfVar var_88
  loc_B48557: ImpAdLdRf MemVar_C3D74C
  loc_B4855A: NewIfNullPr bscProveedor
  loc_B4855D: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B48562: FLdPr var_88
  loc_B48565: from_stack_1 = clsbase.RecordCount
  loc_B4856A: ILdRf var_A4
  loc_B4856D: LitI4 0
  loc_B48572: GtI4
  loc_B48573: FFree1Ad var_88
  loc_B48576: BranchF loc_B48652
  loc_B48579: FLdRfVar var_CC
  loc_B4857C: FLdRfVar var_BC
  loc_B4857F: LitVarStr var_B8, "CucuPers"
  loc_B48584: PopAdLdVar
  loc_B48585: FLdRfVar var_A8
  loc_B48588: FLdRfVar var_90
  loc_B4858B: FLdRfVar var_88
  loc_B4858E: ImpAdLdRf MemVar_C3D74C
  loc_B48591: NewIfNullPr bscProveedor
  loc_B48594: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B48599: FLdPr var_88
  loc_B4859C: from_stack_1v = clsbase.RsFrmGet()
  loc_B485A1: FLdPr var_90
  loc_B485A4:  = Me.Fields
  loc_B485A9: FLdPr var_A8
  loc_B485AC: from_stack_2 = Me.Item(from_stack_1)
  loc_B485B1: FLdPr var_BC
  loc_B485B4:  = Me.Value
  loc_B485B9: FLdRfVar var_CC
  loc_B485BC: CStrVarTmp
  loc_B485BD: FStStrNoPop var_98
  loc_B485C0: FLdPr Me
  loc_B485C3: VCallAd Control_ID_CucuPersTxt
  loc_B485C6: FStAdFunc var_D0
  loc_B485C9: FLdPr var_D0
  loc_B485CC: Me.Text = from_stack_1
  loc_B485D1: FFree1Str var_98
  loc_B485D4: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B485E1: FFree1Var var_CC = ""
  loc_B485E4: FLdRfVar var_CC
  loc_B485E7: FLdRfVar var_BC
  loc_B485EA: LitVarStr var_B8, "DetaProv"
  loc_B485EF: PopAdLdVar
  loc_B485F0: FLdRfVar var_A8
  loc_B485F3: FLdRfVar var_90
  loc_B485F6: FLdRfVar var_88
  loc_B485F9: ImpAdLdRf MemVar_C3D74C
  loc_B485FC: NewIfNullPr bscProveedor
  loc_B485FF: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B48604: FLdPr var_88
  loc_B48607: from_stack_1v = clsbase.RsFrmGet()
  loc_B4860C: FLdPr var_90
  loc_B4860F:  = Me.Fields
  loc_B48614: FLdPr var_A8
  loc_B48617: from_stack_2 = Me.Item(from_stack_1)
  loc_B4861C: FLdPr var_BC
  loc_B4861F:  = Me.Value
  loc_B48624: FLdRfVar var_CC
  loc_B48627: CStrVarTmp
  loc_B48628: FStStrNoPop var_98
  loc_B4862B: FLdPr Me
  loc_B4862E: VCallAd Control_ID_DetaProvLbl
  loc_B48631: FStAdFunc var_D0
  loc_B48634: FLdPr var_D0
  loc_B48637: Me.Caption = from_stack_1
  loc_B4863C: FFree1Str var_98
  loc_B4863F: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B4864C: FFree1Var var_CC = ""
  loc_B4864F: Branch loc_B486C7
  loc_B48652: LitStr vbNullString
  loc_B48655: FLdPr Me
  loc_B48658: VCallAd Control_ID_CucuPersTxt
  loc_B4865B: FStAdFunc var_88
  loc_B4865E: FLdPr var_88
  loc_B48661: Me.Text = from_stack_1
  loc_B48666: FFree1Ad var_88
  loc_B48669: LitStr vbNullString
  loc_B4866C: FLdPr Me
  loc_B4866F: VCallAd Control_ID_DetaProvLbl
  loc_B48672: FStAdFunc var_88
  loc_B48675: FLdPr var_88
  loc_B48678: Me.Caption = from_stack_1
  loc_B4867D: FFree1Ad var_88
  loc_B48680: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B48683: FLdPr Me
  loc_B48686: MemStStrCopy
  loc_B4868A: FLdPr Me
  loc_B4868D: VCallAd Control_ID_CucuPersTxt
  loc_B48690: FStAdFunc var_BC
  loc_B48693: FLdPr Me
  loc_B48696: VCallAd Control_ID_DetaProvLbl
  loc_B48699: FStAdFunc var_A8
  loc_B4869C: FLdRfVar var_A8
  loc_B4869F: FLdZeroAd var_BC
  loc_B486A2: FStAdFuncNoPop
  loc_B486A5: CastAd
  loc_B486A8: FStAdFunc var_90
  loc_B486AB: FLdRfVar var_90
  loc_B486AE: FLdPr Me
  loc_B486B1: MemLdRfVar from_stack_1.global_68
  loc_B486B4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B486B9: IStI2 Cancel
  loc_B486BC: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B486C7: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '95CDB4
  'Data Table: 4EED48
  loc_95CD9C: FLdPr Me
  loc_95CD9F: VCallAd Control_ID_dgdABMS
  loc_95CDA2: FStAdFunc var_88
  loc_95CDA5: FLdRfVar var_88
  loc_95CDA8: ImpAdCallFPR4  = Proc_264_0_9758D8()
  loc_95CDAD: FFree1Ad var_88
  loc_95CDB0: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '95CF7C
  'Data Table: 4EED48
  loc_95CF64: FLdPr Me
  loc_95CF67: VCallAd Control_ID_dgdABMS
  loc_95CF6A: FStAdFunc var_88
  loc_95CF6D: FLdRfVar var_88
  loc_95CF70: ImpAdCallFPR4  = Proc_264_1_96D788()
  loc_95CF75: FFree1Ad var_88
  loc_95CF78: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99BD14
  'Data Table: 4EED48
  loc_99BCB8: FLdRfVar var_B4
  loc_99BCBB: FLdRfVar var_B0
  loc_99BCBE: FLdI2 ColIndex
  loc_99BCC1: CVarI2 var_A8
  loc_99BCC4: PopAdLdVar
  loc_99BCC5: FLdPr Me
  loc_99BCC8: VCallAd Control_ID_dgdABMS
  loc_99BCCB: FStAdFunc var_88
  loc_99BCCE: FLdPr var_88
  loc_99BCD1: LateIdLdVar var_98 DispID_105 0
  loc_99BCD8: CastAdVar Me
  loc_99BCDC: FStAdFunc var_AC
  loc_99BCDF: FLdPr var_AC
  loc_99BCE2: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99BCE7: FLdPr var_B0
  loc_99BCEA:  = Me.DataField
  loc_99BCEF: FLdZeroAd var_B4
  loc_99BCF2: PopTmpLdAdStr
  loc_99BCF6: FLdPr Me
  loc_99BCF9: MemLdRfVar from_stack_1.global_52
  loc_99BCFC: NewIfNullPr clsimputacion
  loc_99BCFF: Call clsimputacion.Sort(from_stack_1v)
  loc_99BD04: FFree1Str var_B8
  loc_99BD07: FFreeAd var_88 = "": var_AC = ""
  loc_99BD10: FFree1Var var_98 = ""
  loc_99BD13: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '9E6330
  'Data Table: 4EED48
  loc_9E621C: LitI2_Byte 0
  loc_9E621E: CUI1I2
  loc_9E6220: FLdPr Me
  loc_9E6223: MemStUI1
  loc_9E6227: ILdRf Me
  loc_9E622A: CastAd
  loc_9E622D: FStAdFunc var_88
  loc_9E6230: FLdRfVar var_88
  loc_9E6233: ImpAdCallFPR4  = Proc_261_1_AC96D8()
  loc_9E6238: FFree1Ad var_88
  loc_9E623B: LitI4 0
  loc_9E6240: LitI4 0
  loc_9E6245: FLdRfVar var_8C
  loc_9E6248: Redim
  loc_9E6252: FLdPr Me
  loc_9E6255: VCallAd Control_ID_dgdABMS
  loc_9E6258: CVarAd
  loc_9E625C: ParmAry1St
  loc_9E6262: FLdRfVar var_8C
  loc_9E6265: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9E626A: FLdRfVar var_8C
  loc_9E626D: Erase
  loc_9E626E: FLdPr Me
  loc_9E6271: MemLdRfVar from_stack_1.global_52
  loc_9E6274: NewIfNullAd
  loc_9E6277: FStAd var_A0 
  loc_9E627B: FLdRfVar var_A0
  loc_9E627E: CVarRef
  loc_9E6283: ILdRf Me
  loc_9E6286: CastAd
  loc_9E6289: FStAdFunc var_88
  loc_9E628C: FLdRfVar var_88
  loc_9E628F: ImpAdCallFPR4  = Proc_261_8_9C2398()
  loc_9E6294: ILdRf var_A0
  loc_9E6297: CastAd
  loc_9E629A: FLdPr Me
  loc_9E629D: MemStAdFunc
  loc_9E62A1: FFreeAd var_88 = ""
  loc_9E62A8: FLdRfVar var_B4
  loc_9E62AB: FLdPr Me
  loc_9E62AE: MemLdRfVar from_stack_1.global_52
  loc_9E62B1: NewIfNullPr clsimputacion
  loc_9E62B4: from_stack_1 = clsimputacion.RecordCount
  loc_9E62B9: ILdRf var_B4
  loc_9E62BC: LitI4 0
  loc_9E62C1: EqI4
  loc_9E62C2: BranchF loc_9E62D9
  loc_9E62C5: ILdRf Me
  loc_9E62C8: CastAd
  loc_9E62CB: FStAdFunc var_88
  loc_9E62CE: FLdRfVar var_88
  loc_9E62D1: ImpAdCallFPR4  = Proc_261_15_A16E38()
  loc_9E62D6: FFree1Ad var_88
  loc_9E62D9: ILdRf Me
  loc_9E62DC: CastAd
  loc_9E62DF: FStAdFunc var_88
  loc_9E62E2: FLdRfVar var_88
  loc_9E62E5: ImpAdCallFPR4  = Proc_261_14_9D98D4()
  loc_9E62EA: FFree1Ad var_88
  loc_9E62ED: FLdPr Me
  loc_9E62F0: MemLdRfVar from_stack_1.global_52
  loc_9E62F3: NewIfNullPr clsimputacion
  loc_9E62F6: Call clsimputacion.Requery()
  loc_9E62FB: FLdPr Me
  loc_9E62FE: VCallAd Control_ID_dgdABMS
  loc_9E6301: FStAdFunc var_A0
  loc_9E6304: LitI4 0
  loc_9E6309: FStStrCopy var_B8
  loc_9E630C: FLdRfVar var_B8
  loc_9E630F: FLdPr Me
  loc_9E6312: MemLdStr global_76
  loc_9E6315: FLdZeroAd var_A0
  loc_9E6318: FStAdFunc var_88
  loc_9E631B: FLdRfVar var_88
  loc_9E631E: ImpAdCallFPR4  = Proc_261_62_9D9F1C(, )
  loc_9E6323: FFree1Str var_B8
  loc_9E6326: FFreeAd var_88 = ""
  loc_9E632D: ExitProcHresult
  loc_9E632E: CopyBytes
End Sub

Private Sub CodiFifuMsk_UnknownEvent_0 '94AAF0
  'Data Table: 4EED48
  loc_94AADC: FLdPr Me
  loc_94AADF: VCallAd Control_ID_CodiFifuMsk
  loc_94AAE2: CVarAd
  loc_94AAE6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94AAEB: FFree1Var var_94 = ""
  loc_94AAEE: ExitProcHresult
End Sub

Private Function CodiFifuMsk_UnknownEvent_8(arg_C) '9E1960
  'Data Table: 4EED48
  loc_9E185C: FLdRfVar var_8A
  loc_9E185F: FLdPr Me
  loc_9E1862: VCallAd Control_ID_cmdCancelar
  loc_9E1865: FStAdFunc var_88
  loc_9E1868: FLdPr var_88
  loc_9E186B:  = Me.Value
  loc_9E1870: FLdI2 var_8A
  loc_9E1873: NotI4
  loc_9E1874: FLdPr Me
  loc_9E1877: VCallAd Control_ID_CodiFifuMsk
  loc_9E187A: FStAdFunc var_90
  loc_9E187D: FLdPr var_90
  loc_9E1880: LateIdLdVar var_A0 DispID_13 -32767
  loc_9E1887: CBoolVar
  loc_9E1889: AndI4
  loc_9E188A: FFreeAd var_88 = ""
  loc_9E1891: FFree1Var var_A0 = ""
  loc_9E1894: BranchF loc_9E195F
  loc_9E1897: FLdPr Me
  loc_9E189A: VCallAd Control_ID_CodiFifuMsk
  loc_9E189D: FStAdFunc var_88
  loc_9E18A0: FLdRfVar var_88
  loc_9E18A3: ImpAdCallFPR4  = Proc_261_67_9A9E88()
  loc_9E18A8: FFree1Ad var_88
  loc_9E18AB: FLdPr Me
  loc_9E18AE: VCallAd Control_ID_CodiFifuMsk
  loc_9E18B1: FStAdFunc var_88
  loc_9E18B4: FLdPr var_88
  loc_9E18B7: LateIdLdVar var_A0 DispID_22 0
  loc_9E18BE: PopAd
  loc_9E18C0: FLdPr Me
  loc_9E18C3: MemLdRfVar from_stack_1.global_88
  loc_9E18C6: NewIfNullRf
  loc_9E18CA: FLdRfVar var_A0
  loc_9E18CD: CStrVarTmp
  loc_9E18CE: FStStrNoPop var_A4
  loc_9E18D1: ImpAdLdI2 MemVar_C3D064
  loc_9E18D4: ImpAdCallI2 Proc_266_4_9A2FDC(, , )
  loc_9E18D9: FStStrNoPop var_A8
  loc_9E18DC: FLdPr Me
  loc_9E18DF: MemStStrCopy
  loc_9E18E3: FFreeStr var_A4 = ""
  loc_9E18EA: FFree1Ad var_88
  loc_9E18ED: FFree1Var var_A0 = ""
  loc_9E18F0: FLdPr Me
  loc_9E18F3: VCallAd Control_ID_CodiFifuMsk
  loc_9E18F6: FStAdFunc var_B0
  loc_9E18F9: FLdPr Me
  loc_9E18FC: VCallAd Control_ID_DetaFifuLbl
  loc_9E18FF: FStAdFunc var_AC
  loc_9E1902: FLdRfVar var_AC
  loc_9E1905: FLdZeroAd var_B0
  loc_9E1908: FStAdFuncNoPop
  loc_9E190B: CastAd
  loc_9E190E: FStAdFunc var_90
  loc_9E1911: FLdRfVar var_90
  loc_9E1914: FLdPr Me
  loc_9E1917: MemLdRfVar from_stack_1.global_68
  loc_9E191A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E191F: IStI2 arg_C
  loc_9E1922: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_9E192D: ILdI2 arg_C
  loc_9E1930: NotI4
  loc_9E1931: BranchF loc_9E195F
  loc_9E1934: FLdRfVar var_A4
  loc_9E1937: FLdPr Me
  loc_9E193A: MemLdRfVar from_stack_1.global_88
  loc_9E193D: NewIfNullPr tblfinalidad
  loc_9E1940: from_stack_1v = tblfinalidad.DetaFifuGet()
  loc_9E1945: ILdRf var_A4
  loc_9E1948: FLdPr Me
  loc_9E194B: VCallAd Control_ID_DetaFifuLbl
  loc_9E194E: FStAdFunc var_88
  loc_9E1951: FLdPr var_88
  loc_9E1954: Me.Caption = from_stack_1
  loc_9E1959: FFree1Str var_A4
  loc_9E195C: FFree1Ad var_88
  loc_9E195F: ExitProcHresult
End Function

Private Sub CodiFifuMsk_KeyPress(KeyAscii As Integer) 'A1D02C
  'Data Table: 4EED48
  loc_A1CE98: ILdI2 KeyAscii
  loc_A1CE9B: CI4UI1
  loc_A1CE9C: LitI4 &H20
  loc_A1CEA1: EqI4
  loc_A1CEA2: BranchF loc_A1D029
  loc_A1CEA5: FLdPr Me
  loc_A1CEA8: VCallAd Control_ID_CodiPartMsk
  loc_A1CEAB: FStAdFunc var_88
  loc_A1CEAE: FLdPr var_88
  loc_A1CEB1: LateIdLdVar var_98 DispID_22 0
  loc_A1CEB8: CStrVarTmp
  loc_A1CEB9: FStStrNoPop var_9C
  loc_A1CEBC: ImpAdLdRf MemVar_C3D6E8
  loc_A1CEBF: NewIfNullPr bscFinalidad
  loc_A1CEC2: Call bscFinalidad.sCodiPartPut(from_stack_1v)
  loc_A1CEC7: FFree1Str var_9C
  loc_A1CECA: FFree1Ad var_88
  loc_A1CECD: FFree1Var var_98 = ""
  loc_A1CED0: FLdPr Me
  loc_A1CED3: VCallAd Control_ID_
  loc_A1CED6: FStAdFunc var_88
  loc_A1CED9: FLdPr var_88
  loc_A1CEDC: LateIdLdVar var_98 DispID_22 0
  loc_A1CEE3: CStrVarTmp
  loc_A1CEE4: FStStrNoPop var_9C
  loc_A1CEE7: ImpAdLdRf MemVar_C3D6E8
  loc_A1CEEA: NewIfNullPr bscFinalidad
  loc_A1CEED: Call bscFinalidad.sCodiOrgaPut(from_stack_1v)
  loc_A1CEF2: FFree1Str var_9C
  loc_A1CEF5: FFree1Ad var_88
  loc_A1CEF8: FFree1Var var_98 = ""
  loc_A1CEFB: LitNothing
  loc_A1CEFD: CastAd
  loc_A1CF00: FStAdFuncNoPop
  loc_A1CF03: ImpAdLdRf MemVar_C3D6E8
  loc_A1CF06: NewIfNullPr bscFinalidad
  loc_A1CF09: Call bscFinalidad.global_4320824Set(from_stack_1v)
  loc_A1CF0E: FFree1Ad var_88
  loc_A1CF11: LitVar_Missing var_BC
  loc_A1CF14: PopAdLdVar
  loc_A1CF15: LitVarI4
  loc_A1CF1D: PopAdLdVar
  loc_A1CF1E: ImpAdLdRf MemVar_C3D6E8
  loc_A1CF21: NewIfNullPr bscFinalidad
  loc_A1CF24: bscFinalidad.Show from_stack_1, from_stack_2
  loc_A1CF29: FLdRfVar var_C0
  loc_A1CF2C: FLdRfVar var_88
  loc_A1CF2F: ImpAdLdRf MemVar_C3D6E8
  loc_A1CF32: NewIfNullPr bscFinalidad
  loc_A1CF35: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_A1CF3A: FLdPr var_88
  loc_A1CF3D: from_stack_1 = clsbase.RecordCount
  loc_A1CF42: ILdRf var_C0
  loc_A1CF45: LitI4 0
  loc_A1CF4A: GtI4
  loc_A1CF4B: FFree1Ad var_88
  loc_A1CF4E: BranchF loc_A1D029
  loc_A1CF51: FLdRfVar var_98
  loc_A1CF54: FLdRfVar var_CC
  loc_A1CF57: LitVarStr var_AC, "CodiFifu"
  loc_A1CF5C: PopAdLdVar
  loc_A1CF5D: FLdRfVar var_C8
  loc_A1CF60: FLdRfVar var_C4
  loc_A1CF63: FLdRfVar var_88
  loc_A1CF66: ImpAdLdRf MemVar_C3D6E8
  loc_A1CF69: NewIfNullPr bscFinalidad
  loc_A1CF6C: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_A1CF71: FLdPr var_88
  loc_A1CF74: from_stack_1v = clsbase.RsFrmGet()
  loc_A1CF79: FLdPr var_C4
  loc_A1CF7C:  = Me.Fields
  loc_A1CF81: FLdPr var_C8
  loc_A1CF84: from_stack_2 = Me.Item(from_stack_1)
  loc_A1CF89: FLdPr var_CC
  loc_A1CF8C:  = Me.Value
  loc_A1CF91: FLdRfVar var_98
  loc_A1CF94: CStrVarTmp
  loc_A1CF95: CVarStr var_DC
  loc_A1CF98: PopAdLdVar
  loc_A1CF99: FLdPr Me
  loc_A1CF9C: VCallAd Control_ID_CodiFifuMsk
  loc_A1CF9F: FStAdFunc var_E0
  loc_A1CFA2: FLdPr var_E0
  loc_A1CFA5: LateIdSt
  loc_A1CFAA: FFreeAd var_88 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A1CFB7: FFreeVar var_98 = ""
  loc_A1CFBE: FLdRfVar var_98
  loc_A1CFC1: FLdRfVar var_CC
  loc_A1CFC4: LitVarStr var_AC, "DetaFifu"
  loc_A1CFC9: PopAdLdVar
  loc_A1CFCA: FLdRfVar var_C8
  loc_A1CFCD: FLdRfVar var_C4
  loc_A1CFD0: FLdRfVar var_88
  loc_A1CFD3: ImpAdLdRf MemVar_C3D6E8
  loc_A1CFD6: NewIfNullPr bscFinalidad
  loc_A1CFD9: from_stack_1v = bscFinalidad.global_4320824Get()
  loc_A1CFDE: FLdPr var_88
  loc_A1CFE1: from_stack_1v = clsbase.RsFrmGet()
  loc_A1CFE6: FLdPr var_C4
  loc_A1CFE9:  = Me.Fields
  loc_A1CFEE: FLdPr var_C8
  loc_A1CFF1: from_stack_2 = Me.Item(from_stack_1)
  loc_A1CFF6: FLdPr var_CC
  loc_A1CFF9:  = Me.Value
  loc_A1CFFE: FLdRfVar var_98
  loc_A1D001: CStrVarTmp
  loc_A1D002: FStStrNoPop var_9C
  loc_A1D005: FLdPr Me
  loc_A1D008: VCallAd Control_ID_DetaFifuLbl
  loc_A1D00B: FStAdFunc var_E0
  loc_A1D00E: FLdPr var_E0
  loc_A1D011: Me.Caption = from_stack_1
  loc_A1D016: FFree1Str var_9C
  loc_A1D019: FFreeAd var_88 = "": var_C4 = "": var_C8 = "": var_CC = ""
  loc_A1D026: FFree1Var var_98 = ""
  loc_A1D029: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94B798
  'Data Table: 4EED48
  loc_94B784: FLdPr Me
  loc_94B787: VCallAd Control_ID_FiltroMsk
  loc_94B78A: CVarAd
  loc_94B78E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B793: FFree1Var var_94 = ""
  loc_94B796: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A3A8D8
  'Data Table: 4EED48
  loc_A3A6B8: ILdRf Me
  loc_A3A6BB: CastAd
  loc_A3A6BE: FStAdFunc var_88
  loc_A3A6C1: FLdRfVar var_88
  loc_A3A6C4: ImpAdCallFPR4  = Proc_261_10_99CABC()
  loc_A3A6C9: FFree1Ad var_88
  loc_A3A6CC: FLdPr Me
  loc_A3A6CF: VCallAd Control_ID_FiltroMsk
  loc_A3A6D2: FStAdFunc var_88
  loc_A3A6D5: FLdPr var_88
  loc_A3A6D8: LateIdLdVar var_98 DispID_22 0
  loc_A3A6DF: CStrVarTmp
  loc_A3A6E0: FStStrNoPop var_9C
  loc_A3A6E3: ImpAdCallI2 Trim$()
  loc_A3A6E8: FStStrNoPop var_A0
  loc_A3A6EB: LitStr vbNullString
  loc_A3A6EE: NeStr
  loc_A3A6F0: FFreeStr var_9C = ""
  loc_A3A6F7: FFree1Ad var_88
  loc_A3A6FA: FFree1Var var_98 = ""
  loc_A3A6FD: BranchF loc_A3A7B2
  loc_A3A700: FLdRfVar var_A2
  loc_A3A703: FLdPr Me
  loc_A3A706: VCallAd Control_ID_FiltroCbo
  loc_A3A709: FStAdFunc var_88
  loc_A3A70C: FLdPr var_88
  loc_A3A70F:  = Me.ListIndex
  loc_A3A714: FLdI2 var_A2
  loc_A3A717: LitI2_Byte 0
  loc_A3A719: EqI2
  loc_A3A71A: FFree1Ad var_88
  loc_A3A71D: BranchF loc_A3A7AF
  loc_A3A720: LitStr "CodiOrco = '"
  loc_A3A723: FLdPr Me
  loc_A3A726: VCallAd Control_ID_FiltroMsk
  loc_A3A729: FStAdFunc var_88
  loc_A3A72C: FLdPr var_88
  loc_A3A72F: LateIdLdVar var_98 DispID_22 0
  loc_A3A736: CStrVarTmp
  loc_A3A737: FStStrNoPop var_9C
  loc_A3A73A: ConcatStr
  loc_A3A73B: FStStrNoPop var_A0
  loc_A3A73E: LitStr "'"
  loc_A3A741: ConcatStr
  loc_A3A742: PopTmpLdAdStr
  loc_A3A746: FLdPr Me
  loc_A3A749: MemLdRfVar from_stack_1.global_52
  loc_A3A74C: NewIfNullPr clsimputacion
  loc_A3A74F: Call clsimputacion.Filter(from_stack_1v)
  loc_A3A754: FFreeStr var_9C = "": var_A0 = ""
  loc_A3A75D: FFree1Ad var_88
  loc_A3A760: FFree1Var var_98 = ""
  loc_A3A763: LitStr "CodiOrco"
  loc_A3A766: FStStrCopy var_9C
  loc_A3A769: FLdRfVar var_9C
  loc_A3A76C: FLdPr Me
  loc_A3A76F: MemLdRfVar from_stack_1.global_52
  loc_A3A772: NewIfNullPr clsimputacion
  loc_A3A775: Call clsimputacion.Sort(from_stack_1v)
  loc_A3A77A: FFree1Str var_9C
  loc_A3A77D: LitStr "Orden de Compra sea igual a: "
  loc_A3A780: FLdPr Me
  loc_A3A783: VCallAd Control_ID_FiltroMsk
  loc_A3A786: FStAdFunc var_88
  loc_A3A789: FLdPr var_88
  loc_A3A78C: LateIdLdVar var_98 DispID_22 0
  loc_A3A793: CStrVarTmp
  loc_A3A794: FStStrNoPop var_9C
  loc_A3A797: ConcatStr
  loc_A3A798: FStStrNoPop var_A0
  loc_A3A79B: FLdPr Me
  loc_A3A79E: MemStStrCopy
  loc_A3A7A2: FFreeStr var_9C = ""
  loc_A3A7A9: FFree1Ad var_88
  loc_A3A7AC: FFree1Var var_98 = ""
  loc_A3A7AF: Branch loc_A3A7D6
  loc_A3A7B2: LitStr vbNullString
  loc_A3A7B5: FStStrCopy var_9C
  loc_A3A7B8: FLdRfVar var_9C
  loc_A3A7BB: FLdPr Me
  loc_A3A7BE: MemLdRfVar from_stack_1.global_52
  loc_A3A7C1: NewIfNullPr clsimputacion
  loc_A3A7C4: Call clsimputacion.Filter(from_stack_1v)
  loc_A3A7C9: FFree1Str var_9C
  loc_A3A7CC: LitStr vbNullString
  loc_A3A7CF: FLdPr Me
  loc_A3A7D2: MemStStrCopy
  loc_A3A7D6: FLdRfVar var_AC
  loc_A3A7D9: FLdPr Me
  loc_A3A7DC: MemLdRfVar from_stack_1.global_52
  loc_A3A7DF: NewIfNullPr clsimputacion
  loc_A3A7E2: from_stack_1 = clsimputacion.RecordCount
  loc_A3A7E7: ILdRf var_AC
  loc_A3A7EA: LitI4 0
  loc_A3A7EF: GtI4
  loc_A3A7F0: BranchF loc_A3A88E
  loc_A3A7F3: FLdPr Me
  loc_A3A7F6: MemLdRfVar from_stack_1.global_52
  loc_A3A7F9: NewIfNullAd
  loc_A3A7FC: FStAd var_B0 
  loc_A3A800: FLdRfVar var_B0
  loc_A3A803: CVarRef
  loc_A3A808: ILdRf Me
  loc_A3A80B: CastAd
  loc_A3A80E: FStAdFunc var_88
  loc_A3A811: FLdRfVar var_88
  loc_A3A814: ImpAdCallFPR4  = Proc_261_8_9C2398()
  loc_A3A819: ILdRf var_B0
  loc_A3A81C: CastAd
  loc_A3A81F: FLdPr Me
  loc_A3A822: MemStAdFunc
  loc_A3A826: FFreeAd var_88 = ""
  loc_A3A82D: LitI4 0
  loc_A3A832: LitI4 1
  loc_A3A837: FLdRfVar var_C4
  loc_A3A83A: Redim
  loc_A3A844: FLdPr Me
  loc_A3A847: MemLdRfVar from_stack_1.global_52
  loc_A3A84A: NewIfNullAd
  loc_A3A84D: FStAd var_88 
  loc_A3A851: FLdRfVar var_88
  loc_A3A854: CVarRef
  loc_A3A859: ParmAry1St
  loc_A3A85F: FLdPr Me
  loc_A3A862: VCallAd Control_ID_dgdABMS
  loc_A3A865: CVarAd
  loc_A3A869: ParmAry1St
  loc_A3A86F: FLdRfVar var_C4
  loc_A3A872: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A3A877: ILdRf var_88
  loc_A3A87A: CastAd
  loc_A3A87D: FLdPr Me
  loc_A3A880: MemStAdFunc
  loc_A3A884: FLdRfVar var_C4
  loc_A3A887: Erase
  loc_A3A888: FFree1Ad var_88
  loc_A3A88B: Branch loc_A3A8A2
  loc_A3A88E: ILdRf Me
  loc_A3A891: CastAd
  loc_A3A894: FStAdFunc var_88
  loc_A3A897: FLdRfVar var_88
  loc_A3A89A: ImpAdCallFPR4  = Proc_261_15_A16E38()
  loc_A3A89F: FFree1Ad var_88
  loc_A3A8A2: FLdPr Me
  loc_A3A8A5: VCallAd Control_ID_dgdABMS
  loc_A3A8A8: FStAdFunc var_B0
  loc_A3A8AB: LitI4 0
  loc_A3A8B0: FStStrCopy var_9C
  loc_A3A8B3: FLdRfVar var_9C
  loc_A3A8B6: FLdPr Me
  loc_A3A8B9: MemLdStr global_76
  loc_A3A8BC: FLdZeroAd var_B0
  loc_A3A8BF: FStAdFunc var_88
  loc_A3A8C2: FLdRfVar var_88
  loc_A3A8C5: ImpAdCallFPR4  = Proc_261_62_9D9F1C(, )
  loc_A3A8CA: FFree1Str var_9C
  loc_A3A8CD: FFreeAd var_88 = ""
  loc_A3A8D4: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '998AC4
  'Data Table: 4EED48
  loc_998A60: ILdI2 KeyAscii
  loc_998A63: LitI2_Byte &H27
  loc_998A65: EqI2
  loc_998A66: BranchF loc_998A6E
  loc_998A69: LitI2_Byte 0
  loc_998A6B: IStI2 KeyAscii
  loc_998A6E: FLdRfVar var_88
  loc_998A71: FLdPr Me
  loc_998A74: MemLdRfVar from_stack_1.global_52
  loc_998A77: NewIfNullPr clsimputacion
  loc_998A7A: from_stack_1 = clsimputacion.RecordCount
  loc_998A7F: ILdRf var_88
  loc_998A82: LitI4 0
  loc_998A87: EqI4
  loc_998A88: ILdI2 KeyAscii
  loc_998A8B: CI4UI1
  loc_998A8C: LitI4 8
  loc_998A91: NeI4
  loc_998A92: AndI4
  loc_998A93: FLdPr Me
  loc_998A96: VCallAd Control_ID_FiltroMsk
  loc_998A99: FStAdFunc var_8C
  loc_998A9C: FLdPr var_8C
  loc_998A9F: LateIdLdVar var_9C DispID_16 0
  loc_998AA6: CStrVarTmp
  loc_998AA7: FStStrNoPop var_A0
  loc_998AAA: LitStr vbNullString
  loc_998AAD: EqStr
  loc_998AAF: AndI4
  loc_998AB0: FFree1Str var_A0
  loc_998AB3: FFree1Ad var_8C
  loc_998AB6: FFree1Var var_9C = ""
  loc_998AB9: BranchF loc_998AC1
  loc_998ABC: LitI2_Byte 0
  loc_998ABE: IStI2 KeyAscii
  loc_998AC1: ExitProcHresult
End Sub

Private Sub DetaImpuTxt_GotFocus() '94B4C8
  'Data Table: 4EED48
  loc_94B4B4: FLdPr Me
  loc_94B4B7: VCallAd Control_ID_DetaImpuTxt
  loc_94B4BA: CVarAd
  loc_94B4BE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94B4C3: FFree1Var var_94 = ""
  loc_94B4C6: ExitProcHresult
End Sub

Private Sub DetaImpuTxt_Validate(Cancel As Boolean) '9BA090
  'Data Table: 4EED48
  loc_9B9FDC: FLdRfVar var_8A
  loc_9B9FDF: FLdPr Me
  loc_9B9FE2: VCallAd Control_ID_cmdCancelar
  loc_9B9FE5: FStAdFunc var_88
  loc_9B9FE8: FLdPr var_88
  loc_9B9FEB:  = Me.Value
  loc_9B9FF0: FLdI2 var_8A
  loc_9B9FF3: NotI4
  loc_9B9FF4: FLdRfVar var_92
  loc_9B9FF7: FLdPr Me
  loc_9B9FFA: VCallAd Control_ID_DetaImpuTxt
  loc_9B9FFD: FStAdFunc var_90
  loc_9BA000: FLdPr var_90
  loc_9BA003:  = Me.Enabled
  loc_9BA008: FLdI2 var_92
  loc_9BA00B: AndI4
  loc_9BA00C: FFreeAd var_88 = ""
  loc_9BA013: BranchF loc_9BA08D
  loc_9BA016: FLdRfVar var_98
  loc_9BA019: FLdPr Me
  loc_9BA01C: VCallAd Control_ID_DetaImpuTxt
  loc_9BA01F: FStAdFunc var_88
  loc_9BA022: FLdPr var_88
  loc_9BA025:  = Me.Text
  loc_9BA02A: LitI2_Byte 0
  loc_9BA02C: PopTmpLdAd2 var_9A
  loc_9BA02F: LitI2_Byte 0
  loc_9BA031: PopTmpLdAd2 var_92
  loc_9BA034: LitI2_Byte 0
  loc_9BA036: PopTmpLdAd2 var_8A
  loc_9BA039: ILdRf var_98
  loc_9BA03C: LitStr "Detalle"
  loc_9BA03F: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9BA044: FStStrNoPop var_A0
  loc_9BA047: FLdPr Me
  loc_9BA04A: MemStStrCopy
  loc_9BA04E: FFreeStr var_98 = ""
  loc_9BA055: FFree1Ad var_88
  loc_9BA058: FLdPr Me
  loc_9BA05B: MemLdStr global_68
  loc_9BA05E: LitStr vbNullString
  loc_9BA061: NeStr
  loc_9BA063: BranchF loc_9BA08D
  loc_9BA066: LitI4 0
  loc_9BA06B: FLdPr Me
  loc_9BA06E: MemLdStr global_68
  loc_9BA071: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9BA076: FLdPr Me
  loc_9BA079: VCallAd Control_ID_DetaImpuTxt
  loc_9BA07C: CVarAd
  loc_9BA080: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_9BA085: FFree1Var var_B0 = ""
  loc_9BA088: LitI2_Byte &HFF
  loc_9BA08A: IStI2 Cancel
  loc_9BA08D: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B7A774
  'Data Table: 4EED48
  loc_B79B34: ILdRf Button
  loc_B79B37: FStAd var_88 
  loc_B79B3B: FLdRfVar var_8C
  loc_B79B3E: FLdPr var_88
  loc_B79B41:  = Me.Key
  loc_B79B46: FLdZeroAd var_8C
  loc_B79B49: FStStr var_90
  loc_B79B4C: ILdRf var_90
  loc_B79B4F: LitStr "btnCrear"
  loc_B79B52: EqStr
  loc_B79B54: BranchF loc_B7A12B
  loc_B79B57: FLdRfVar var_94
  loc_B79B5A: FLdPr Me
  loc_B79B5D: MemLdRfVar from_stack_1.global_52
  loc_B79B60: NewIfNullPr clsimputacion
  loc_B79B63: from_stack_1 = clsimputacion.RecordCount
  loc_B79B68: ILdRf var_94
  loc_B79B6B: LitI4 0
  loc_B79B70: GtI4
  loc_B79B71: BranchF loc_B7A128
  loc_B79B74: LitI2_Byte 1
  loc_B79B76: FLdPr Me
  loc_B79B79: MemStUI1
  loc_B79B7D: ILdRf Me
  loc_B79B80: CastAd
  loc_B79B83: FStAdFunc var_98
  loc_B79B86: FLdRfVar var_98
  loc_B79B89: ImpAdCallFPR4  = Proc_261_2_A55348()
  loc_B79B8E: FFree1Ad var_98
  loc_B79B91: LitI4 0
  loc_B79B96: LitI4 0
  loc_B79B9B: FLdRfVar var_9C
  loc_B79B9E: Redim
  loc_B79BA8: FLdPr Me
  loc_B79BAB: VCallAd Control_ID_dgdABMS
  loc_B79BAE: CVarAd
  loc_B79BB2: ParmAry1St
  loc_B79BB8: FLdRfVar var_9C
  loc_B79BBB: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B79BC0: FLdRfVar var_9C
  loc_B79BC3: Erase
  loc_B79BC4: ILdRf Me
  loc_B79BC7: CastAd
  loc_B79BCA: FStAdFunc var_98
  loc_B79BCD: FLdRfVar var_98
  loc_B79BD0: ImpAdCallFPR4  = Proc_261_10_99CABC()
  loc_B79BD5: FFree1Ad var_98
  loc_B79BD8: FLdPr Me
  loc_B79BDB: MemLdStr global_76
  loc_B79BDE: LitStr vbNullString
  loc_B79BE1: NeStr
  loc_B79BE3: FLdRfVar var_94
  loc_B79BE6: FLdPr Me
  loc_B79BE9: MemLdRfVar from_stack_1.global_52
  loc_B79BEC: NewIfNullPr clsimputacion
  loc_B79BEF: from_stack_1 = clsimputacion.RecordCount
  loc_B79BF4: ILdRf var_94
  loc_B79BF7: LitI4 0
  loc_B79BFC: GtI4
  loc_B79BFD: AndI4
  loc_B79BFE: BranchF loc_B79E51
  loc_B79C01: FLdRfVar var_AC
  loc_B79C04: FLdRfVar var_C4
  loc_B79C07: LitVarStr var_C0, "CodiInsu"
  loc_B79C0C: PopAdLdVar
  loc_B79C0D: FLdRfVar var_B0
  loc_B79C10: FLdRfVar var_98
  loc_B79C13: FLdPr Me
  loc_B79C16: MemLdRfVar from_stack_1.global_52
  loc_B79C19: NewIfNullPr clsimputacion
  loc_B79C1C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B79C21: FLdPr var_98
  loc_B79C24:  = Me.Fields
  loc_B79C29: FLdPr var_B0
  loc_B79C2C: from_stack_2 = Me.Item(from_stack_1)
  loc_B79C31: FLdPr var_C4
  loc_B79C34:  = Me.Value
  loc_B79C39: FLdRfVar var_AC
  loc_B79C3C: CStrVarTmp
  loc_B79C3D: CVarStr var_D4
  loc_B79C40: PopAdLdVar
  loc_B79C41: FLdPr Me
  loc_B79C44: VCallAd Control_ID_CodiInsuMsk
  loc_B79C47: FStAdFunc var_E8
  loc_B79C4A: FLdPr var_E8
  loc_B79C4D: LateIdSt
  loc_B79C52: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_B79C5D: FFreeVar var_AC = ""
  loc_B79C64: FLdRfVar var_AC
  loc_B79C67: FLdRfVar var_C4
  loc_B79C6A: LitVarStr var_C0, "CodiPart"
  loc_B79C6F: PopAdLdVar
  loc_B79C70: FLdRfVar var_B0
  loc_B79C73: FLdRfVar var_98
  loc_B79C76: FLdPr Me
  loc_B79C79: MemLdRfVar from_stack_1.global_52
  loc_B79C7C: NewIfNullPr clsimputacion
  loc_B79C7F: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B79C84: FLdPr var_98
  loc_B79C87:  = Me.Fields
  loc_B79C8C: FLdPr var_B0
  loc_B79C8F: from_stack_2 = Me.Item(from_stack_1)
  loc_B79C94: FLdPr var_C4
  loc_B79C97:  = Me.Value
  loc_B79C9C: FLdRfVar var_AC
  loc_B79C9F: CStrVarTmp
  loc_B79CA0: CVarStr var_D4
  loc_B79CA3: PopAdLdVar
  loc_B79CA4: FLdPr Me
  loc_B79CA7: VCallAd Control_ID_CodiPartMsk
  loc_B79CAA: FStAdFunc var_E8
  loc_B79CAD: FLdPr var_E8
  loc_B79CB0: LateIdSt
  loc_B79CB5: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_B79CC0: FFreeVar var_AC = ""
  loc_B79CC7: FLdRfVar var_AC
  loc_B79CCA: FLdRfVar var_C4
  loc_B79CCD: LitVarStr var_C0, "CodiOrga"
  loc_B79CD2: PopAdLdVar
  loc_B79CD3: FLdRfVar var_B0
  loc_B79CD6: FLdRfVar var_98
  loc_B79CD9: FLdPr Me
  loc_B79CDC: MemLdRfVar from_stack_1.global_52
  loc_B79CDF: NewIfNullPr clsimputacion
  loc_B79CE2: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B79CE7: FLdPr var_98
  loc_B79CEA:  = Me.Fields
  loc_B79CEF: FLdPr var_B0
  loc_B79CF2: from_stack_2 = Me.Item(from_stack_1)
  loc_B79CF7: FLdPr var_C4
  loc_B79CFA:  = Me.Value
  loc_B79CFF: FLdRfVar var_AC
  loc_B79D02: CStrVarTmp
  loc_B79D03: CVarStr var_D4
  loc_B79D06: PopAdLdVar
  loc_B79D07: FLdPr Me
  loc_B79D0A: VCallAd Control_ID_CodiOrgaMsk
  loc_B79D0D: FStAdFunc var_E8
  loc_B79D10: FLdPr var_E8
  loc_B79D13: LateIdSt
  loc_B79D18: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_B79D23: FFreeVar var_AC = ""
  loc_B79D2A: FLdRfVar var_AC
  loc_B79D2D: FLdRfVar var_C4
  loc_B79D30: LitVarStr var_C0, "CodiFifu"
  loc_B79D35: PopAdLdVar
  loc_B79D36: FLdRfVar var_B0
  loc_B79D39: FLdRfVar var_98
  loc_B79D3C: FLdPr Me
  loc_B79D3F: MemLdRfVar from_stack_1.global_52
  loc_B79D42: NewIfNullPr clsimputacion
  loc_B79D45: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B79D4A: FLdPr var_98
  loc_B79D4D:  = Me.Fields
  loc_B79D52: FLdPr var_B0
  loc_B79D55: from_stack_2 = Me.Item(from_stack_1)
  loc_B79D5A: FLdPr var_C4
  loc_B79D5D:  = Me.Value
  loc_B79D62: FLdRfVar var_AC
  loc_B79D65: CStrVarTmp
  loc_B79D66: CVarStr var_D4
  loc_B79D69: PopAdLdVar
  loc_B79D6A: FLdPr Me
  loc_B79D6D: VCallAd Control_ID_CodiFifuMsk
  loc_B79D70: FStAdFunc var_E8
  loc_B79D73: FLdPr var_E8
  loc_B79D76: LateIdSt
  loc_B79D7B: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_B79D86: FFreeVar var_AC = ""
  loc_B79D8D: FLdRfVar var_AC
  loc_B79D90: FLdRfVar var_C4
  loc_B79D93: LitVarStr var_C0, "ExorImpu"
  loc_B79D98: PopAdLdVar
  loc_B79D99: FLdRfVar var_B0
  loc_B79D9C: FLdRfVar var_98
  loc_B79D9F: FLdPr Me
  loc_B79DA2: MemLdRfVar from_stack_1.global_52
  loc_B79DA5: NewIfNullPr clsimputacion
  loc_B79DA8: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B79DAD: FLdPr var_98
  loc_B79DB0:  = Me.Fields
  loc_B79DB5: FLdPr var_B0
  loc_B79DB8: from_stack_2 = Me.Item(from_stack_1)
  loc_B79DBD: FLdPr var_C4
  loc_B79DC0:  = Me.Value
  loc_B79DC5: FLdRfVar var_AC
  loc_B79DC8: CStrVarTmp
  loc_B79DC9: CVarStr var_D4
  loc_B79DCC: PopAdLdVar
  loc_B79DCD: FLdPr Me
  loc_B79DD0: VCallAd Control_ID_ExorImpuMsk
  loc_B79DD3: FStAdFunc var_E8
  loc_B79DD6: FLdPr var_E8
  loc_B79DD9: LateIdSt
  loc_B79DDE: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_B79DE9: FFreeVar var_AC = ""
  loc_B79DF0: FLdRfVar var_AC
  loc_B79DF3: FLdRfVar var_C4
  loc_B79DF6: LitVarStr var_C0, "DetaImpu"
  loc_B79DFB: PopAdLdVar
  loc_B79DFC: FLdRfVar var_B0
  loc_B79DFF: FLdRfVar var_98
  loc_B79E02: FLdPr Me
  loc_B79E05: MemLdRfVar from_stack_1.global_52
  loc_B79E08: NewIfNullPr clsimputacion
  loc_B79E0B: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B79E10: FLdPr var_98
  loc_B79E13:  = Me.Fields
  loc_B79E18: FLdPr var_B0
  loc_B79E1B: from_stack_2 = Me.Item(from_stack_1)
  loc_B79E20: FLdPr var_C4
  loc_B79E23:  = Me.Value
  loc_B79E28: FLdRfVar var_AC
  loc_B79E2B: CStrVarTmp
  loc_B79E2C: FStStrNoPop var_8C
  loc_B79E2F: FLdPr Me
  loc_B79E32: VCallAd Control_ID_DetaImpuTxt
  loc_B79E35: FStAdFunc var_E8
  loc_B79E38: FLdPr var_E8
  loc_B79E3B: Me.Text = from_stack_1
  loc_B79E40: FFree1Str var_8C
  loc_B79E43: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_B79E4E: FFree1Var var_AC = ""
  loc_B79E51: FLdRfVar var_178
  loc_B79E54: FLdRfVar var_C4
  loc_B79E57: LitVarStr var_C0, "ExorImpu"
  loc_B79E5C: PopAdLdVar
  loc_B79E5D: FLdRfVar var_B0
  loc_B79E60: FLdRfVar var_98
  loc_B79E63: FLdPr Me
  loc_B79E66: MemLdRfVar from_stack_1.global_52
  loc_B79E69: NewIfNullPr clsimputacion
  loc_B79E6C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B79E71: FLdPr var_98
  loc_B79E74:  = Me.Fields
  loc_B79E79: FLdPr var_B0
  loc_B79E7C: from_stack_2 = Me.Item(from_stack_1)
  loc_B79E81: FLdPr var_C4
  loc_B79E84:  = Me.Value
  loc_B79E89: FLdRfVar var_188
  loc_B79E8C: FLdRfVar var_F0
  loc_B79E8F: LitVarStr var_E4, "CodiNope"
  loc_B79E94: PopAdLdVar
  loc_B79E95: FLdRfVar var_EC
  loc_B79E98: FLdRfVar var_E8
  loc_B79E9B: FLdPr Me
  loc_B79E9E: MemLdRfVar from_stack_1.global_52
  loc_B79EA1: NewIfNullPr clsimputacion
  loc_B79EA4: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B79EA9: FLdPr var_E8
  loc_B79EAC:  = Me.Fields
  loc_B79EB1: FLdPr var_EC
  loc_B79EB4: from_stack_2 = Me.Item(from_stack_1)
  loc_B79EB9: FLdPr var_F0
  loc_B79EBC:  = Me.Value
  loc_B79EC1: FLdRfVar var_198
  loc_B79EC4: FLdRfVar var_10C
  loc_B79EC7: LitVarStr var_108, "Item"
  loc_B79ECC: PopAdLdVar
  loc_B79ECD: FLdRfVar var_F8
  loc_B79ED0: FLdRfVar var_F4
  loc_B79ED3: FLdPr Me
  loc_B79ED6: MemLdRfVar from_stack_1.global_52
  loc_B79ED9: NewIfNullPr clsimputacion
  loc_B79EDC: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B79EE1: FLdPr var_F4
  loc_B79EE4:  = Me.Fields
  loc_B79EE9: FLdPr var_F8
  loc_B79EEC: from_stack_2 = Me.Item(from_stack_1)
  loc_B79EF1: FLdPr var_10C
  loc_B79EF4:  = Me.Value
  loc_B79EF9: FLdRfVar var_1A8
  loc_B79EFC: FLdRfVar var_128
  loc_B79EFF: LitVarStr var_124, "Altern"
  loc_B79F04: PopAdLdVar
  loc_B79F05: FLdRfVar var_114
  loc_B79F08: FLdRfVar var_110
  loc_B79F0B: FLdPr Me
  loc_B79F0E: MemLdRfVar from_stack_1.global_52
  loc_B79F11: NewIfNullPr clsimputacion
  loc_B79F14: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B79F19: FLdPr var_110
  loc_B79F1C:  = Me.Fields
  loc_B79F21: FLdPr var_114
  loc_B79F24: from_stack_2 = Me.Item(from_stack_1)
  loc_B79F29: FLdPr var_128
  loc_B79F2C:  = Me.Value
  loc_B79F31: FLdRfVar var_1B8
  loc_B79F34: FLdRfVar var_144
  loc_B79F37: LitVarStr var_140, "CodiOrco"
  loc_B79F3C: PopAdLdVar
  loc_B79F3D: FLdRfVar var_130
  loc_B79F40: FLdRfVar var_12C
  loc_B79F43: FLdPr Me
  loc_B79F46: MemLdRfVar from_stack_1.global_52
  loc_B79F49: NewIfNullPr clsimputacion
  loc_B79F4C: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B79F51: FLdPr var_12C
  loc_B79F54:  = Me.Fields
  loc_B79F59: FLdPr var_130
  loc_B79F5C: from_stack_2 = Me.Item(from_stack_1)
  loc_B79F61: FLdPr var_144
  loc_B79F64:  = Me.Value
  loc_B79F69: FLdRfVar var_1C8
  loc_B79F6C: FLdRfVar var_160
  loc_B79F6F: LitVarStr var_15C, "CodiRece"
  loc_B79F74: PopAdLdVar
  loc_B79F75: FLdRfVar var_14C
  loc_B79F78: FLdRfVar var_148
  loc_B79F7B: FLdPr Me
  loc_B79F7E: MemLdRfVar from_stack_1.global_52
  loc_B79F81: NewIfNullPr clsimputacion
  loc_B79F84: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B79F89: FLdPr var_148
  loc_B79F8C:  = Me.Fields
  loc_B79F91: FLdPr var_14C
  loc_B79F94: from_stack_2 = Me.Item(from_stack_1)
  loc_B79F99: FLdPr var_160
  loc_B79F9C:  = Me.Value
  loc_B79FA1: FLdPr Me
  loc_B79FA4: VCallAd Control_ID_CodiPartMsk
  loc_B79FA7: FStAdFunc var_164
  loc_B79FAA: FLdPr var_164
  loc_B79FAD: LateIdLdVar var_AC DispID_22 0
  loc_B79FB4: PopAd
  loc_B79FB6: FLdPr Me
  loc_B79FB9: VCallAd Control_ID_CodiOrgaMsk
  loc_B79FBC: FStAdFunc var_168
  loc_B79FBF: FLdPr var_168
  loc_B79FC2: LateIdLdVar var_D4 DispID_22 0
  loc_B79FC9: PopAd
  loc_B79FCB: FLdRfVar var_1D4
  loc_B79FCE: FLdRfVar var_D4
  loc_B79FD1: CStrVarTmp
  loc_B79FD2: FStStrNoPop var_1D0
  loc_B79FD5: FLdRfVar var_AC
  loc_B79FD8: CStrVarTmp
  loc_B79FD9: FStStrNoPop var_1CC
  loc_B79FDC: FLdRfVar var_1C8
  loc_B79FDF: CI2Var
  loc_B79FE0: FLdRfVar var_1B8
  loc_B79FE3: CI2Var
  loc_B79FE4: FLdRfVar var_1A8
  loc_B79FE7: CI2Var
  loc_B79FE8: FLdRfVar var_198
  loc_B79FEB: CI2Var
  loc_B79FEC: FLdRfVar var_188
  loc_B79FEF: CI4Var
  loc_B79FF1: FLdRfVar var_178
  loc_B79FF4: CStrVarTmp
  loc_B79FF5: FStStrNoPop var_8C
  loc_B79FF8: LitI2_Byte 1
  loc_B79FFA: ImpAdLdI2 MemVar_C3D064
  loc_B79FFD: FLdPr Me
  loc_B7A000: MemLdRfVar from_stack_1.global_52
  loc_B7A003: NewIfNullPr clsimputacion
  loc_B7A006: from_stack_11v = clsimputacion.UltimaFechImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_B7A00B: FLdZeroAd var_1D4
  loc_B7A00E: CVarStr var_1E4
  loc_B7A011: PopAdLdVar
  loc_B7A012: FLdPr Me
  loc_B7A015: VCallAd Control_ID_FechImpuMsk
  loc_B7A018: FStAdFunc var_1F8
  loc_B7A01B: FLdPr var_1F8
  loc_B7A01E: LateIdSt
  loc_B7A023: FFreeStr var_8C = "": var_1CC = ""
  loc_B7A02C: FFreeAd var_98 = "": var_B0 = "": var_E8 = "": var_EC = "": var_F4 = "": var_F8 = "": var_110 = "": var_114 = "": var_12C = "": var_130 = "": var_148 = "": var_14C = "": var_164 = "": var_168 = "": var_C4 = "": var_F0 = "": var_10C = "": var_128 = "": var_144 = "": var_160 = ""
  loc_B7A059: FFreeVar var_AC = "": var_D4 = "": var_178 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1C8 = ""
  loc_B7A06E: FLdPr Me
  loc_B7A071: VCallAd Control_ID_FechImpuMsk
  loc_B7A074: FStAdFunc var_98
  loc_B7A077: FLdPr var_98
  loc_B7A07A: LateIdLdVar var_AC DispID_15 0
  loc_B7A081: CStrVarTmp
  loc_B7A082: CVarStr var_D4
  loc_B7A085: PopAdLdVar
  loc_B7A086: FLdPr Me
  loc_B7A089: VCallAd Control_ID_FechImpuMsk
  loc_B7A08C: FStAdFunc var_B0
  loc_B7A08F: FLdPr var_B0
  loc_B7A092: LateIdSt
  loc_B7A097: FFreeAd var_98 = ""
  loc_B7A09E: FFreeVar var_AC = ""
  loc_B7A0A5: LitI4 0
  loc_B7A0AA: LitI4 5
  loc_B7A0AF: FLdRfVar var_9C
  loc_B7A0B2: Redim
  loc_B7A0BC: FLdPr Me
  loc_B7A0BF: VCallAd Control_ID_CodiPartMsk
  loc_B7A0C2: CVarAd
  loc_B7A0C6: ParmAry1St
  loc_B7A0CC: FLdPr Me
  loc_B7A0CF: VCallAd Control_ID_CodiOrgaMsk
  loc_B7A0D2: CVarAd
  loc_B7A0D6: ParmAry1St
  loc_B7A0DC: FLdPr Me
  loc_B7A0DF: VCallAd Control_ID_CodiFifuMsk
  loc_B7A0E2: CVarAd
  loc_B7A0E6: ParmAry1St
  loc_B7A0EC: FLdPr Me
  loc_B7A0EF: VCallAd Control_ID_DetaImpuTxt
  loc_B7A0F2: CVarAd
  loc_B7A0F6: ParmAry1St
  loc_B7A0FC: FLdPr Me
  loc_B7A0FF: VCallAd Control_ID_FechImpuMsk
  loc_B7A102: CVarAd
  loc_B7A106: ParmAry1St
  loc_B7A10C: FLdPr Me
  loc_B7A10F: VCallAd Control_ID_CodiUngaTxt
  loc_B7A112: CVarAd
  loc_B7A116: ParmAry1St
  loc_B7A11C: FLdRfVar var_9C
  loc_B7A11F: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_B7A124: FLdRfVar var_9C
  loc_B7A127: Erase
  loc_B7A128: Branch loc_B7A771
  loc_B7A12B: ILdRf var_90
  loc_B7A12E: LitStr "btnModificar"
  loc_B7A131: EqStr
  loc_B7A133: BranchF loc_B7A139
  loc_B7A136: Branch loc_B7A771
  loc_B7A139: ILdRf var_90
  loc_B7A13C: LitStr "btnEliminar"
  loc_B7A13F: EqStr
  loc_B7A141: BranchF loc_B7A147
  loc_B7A144: Branch loc_B7A771
  loc_B7A147: ILdRf var_90
  loc_B7A14A: LitStr "btnGuardar"
  loc_B7A14D: EqStr
  loc_B7A14F: BranchF loc_B7A609
  loc_B7A152: LitStr vbNullString
  loc_B7A155: FLdPr Me
  loc_B7A158: MemStStrCopy
  loc_B7A15C: LitI2_Byte 0
  loc_B7A15E: PopTmpLdAd2 var_1FA
  loc_B7A161: Call CodiPartMsk_UnknownEvent_8()
  loc_B7A166: FLdPr Me
  loc_B7A169: MemLdStr global_68
  loc_B7A16C: LitStr vbNullString
  loc_B7A16F: NeStr
  loc_B7A171: BranchF loc_B7A175
  loc_B7A174: ExitProcHresult
  loc_B7A175: LitI2_Byte 0
  loc_B7A177: PopTmpLdAd2 var_1FA
  loc_B7A17A: Call CodiOrgaMsk_UnknownEvent_8()
  loc_B7A17F: FLdPr Me
  loc_B7A182: MemLdStr global_68
  loc_B7A185: LitStr vbNullString
  loc_B7A188: NeStr
  loc_B7A18A: BranchF loc_B7A18E
  loc_B7A18D: ExitProcHresult
  loc_B7A18E: LitI2_Byte 0
  loc_B7A190: PopTmpLdAd2 var_1FA
  loc_B7A193: from_stack_2v = CodiFifuMsk_UnknownEvent_8(from_stack_1v)
  loc_B7A198: FLdPr Me
  loc_B7A19B: MemLdStr global_68
  loc_B7A19E: LitStr vbNullString
  loc_B7A1A1: NeStr
  loc_B7A1A3: BranchF loc_B7A1A7
  loc_B7A1A6: ExitProcHresult
  loc_B7A1A7: LitI2_Byte 0
  loc_B7A1A9: PopTmpLdAd2 var_1FA
  loc_B7A1AC: Call DetaImpuTxt_Validate(from_stack_1v)
  loc_B7A1B1: FLdPr Me
  loc_B7A1B4: MemLdStr global_68
  loc_B7A1B7: LitStr vbNullString
  loc_B7A1BA: NeStr
  loc_B7A1BC: BranchF loc_B7A1C0
  loc_B7A1BF: ExitProcHresult
  loc_B7A1C0: LitI2_Byte 0
  loc_B7A1C2: PopTmpLdAd2 var_1FA
  loc_B7A1C5: Call FechImpuMsk_UnknownEvent_8()
  loc_B7A1CA: FLdPr Me
  loc_B7A1CD: MemLdStr global_68
  loc_B7A1D0: LitStr vbNullString
  loc_B7A1D3: NeStr
  loc_B7A1D5: BranchF loc_B7A1D9
  loc_B7A1D8: ExitProcHresult
  loc_B7A1D9: LitI2_Byte 0
  loc_B7A1DB: PopTmpLdAd2 var_1FA
  loc_B7A1DE: Call CodiUngaTxt_Validate(from_stack_1v)
  loc_B7A1E3: FLdPr Me
  loc_B7A1E6: MemLdStr global_68
  loc_B7A1E9: LitStr vbNullString
  loc_B7A1EC: NeStr
  loc_B7A1EE: BranchF loc_B7A1F2
  loc_B7A1F1: ExitProcHresult
  loc_B7A1F2: FLdRfVar var_D4
  loc_B7A1F5: FLdRfVar var_C4
  loc_B7A1F8: LitVarStr var_C0, "CodiPart"
  loc_B7A1FD: PopAdLdVar
  loc_B7A1FE: FLdRfVar var_B0
  loc_B7A201: FLdRfVar var_98
  loc_B7A204: FLdPr Me
  loc_B7A207: MemLdRfVar from_stack_1.global_52
  loc_B7A20A: NewIfNullPr clsimputacion
  loc_B7A20D: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B7A212: FLdPr var_98
  loc_B7A215:  = Me.Fields
  loc_B7A21A: FLdPr var_B0
  loc_B7A21D: from_stack_2 = Me.Item(from_stack_1)
  loc_B7A222: FLdPr var_C4
  loc_B7A225:  = Me.Value
  loc_B7A22A: FLdRfVar var_D4
  loc_B7A22D: FLdPr Me
  loc_B7A230: VCallAd Control_ID_CodiPartMsk
  loc_B7A233: FStAdFunc var_E8
  loc_B7A236: FLdPr var_E8
  loc_B7A239: LateIdLdVar var_AC DispID_22 0
  loc_B7A240: CStrVarTmp
  loc_B7A241: CVarStr var_178
  loc_B7A244: HardType
  loc_B7A245: EqVar var_188
  loc_B7A249: FLdRfVar var_1A8
  loc_B7A24C: FLdRfVar var_F4
  loc_B7A24F: LitVarStr var_E4, "CodiOrga"
  loc_B7A254: PopAdLdVar
  loc_B7A255: FLdRfVar var_F0
  loc_B7A258: FLdRfVar var_EC
  loc_B7A25B: FLdPr Me
  loc_B7A25E: MemLdRfVar from_stack_1.global_52
  loc_B7A261: NewIfNullPr clsimputacion
  loc_B7A264: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B7A269: FLdPr var_EC
  loc_B7A26C:  = Me.Fields
  loc_B7A271: FLdPr var_F0
  loc_B7A274: from_stack_2 = Me.Item(from_stack_1)
  loc_B7A279: FLdPr var_F4
  loc_B7A27C:  = Me.Value
  loc_B7A281: FLdRfVar var_1A8
  loc_B7A284: FLdPr Me
  loc_B7A287: VCallAd Control_ID_CodiOrgaMsk
  loc_B7A28A: FStAdFunc var_F8
  loc_B7A28D: FLdPr var_F8
  loc_B7A290: LateIdLdVar var_198 DispID_22 0
  loc_B7A297: CStrVarTmp
  loc_B7A298: CVarStr var_1B8
  loc_B7A29B: HardType
  loc_B7A29C: EqVar var_1C8
  loc_B7A2A0: AndVar var_1E4
  loc_B7A2A4: FLdRfVar var_21C
  loc_B7A2A7: FLdRfVar var_114
  loc_B7A2AA: LitVarStr var_108, "CodiFifu"
  loc_B7A2AF: PopAdLdVar
  loc_B7A2B0: FLdRfVar var_110
  loc_B7A2B3: FLdRfVar var_10C
  loc_B7A2B6: FLdPr Me
  loc_B7A2B9: MemLdRfVar from_stack_1.global_52
  loc_B7A2BC: NewIfNullPr clsimputacion
  loc_B7A2BF: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B7A2C4: FLdPr var_10C
  loc_B7A2C7:  = Me.Fields
  loc_B7A2CC: FLdPr var_110
  loc_B7A2CF: from_stack_2 = Me.Item(from_stack_1)
  loc_B7A2D4: FLdPr var_114
  loc_B7A2D7:  = Me.Value
  loc_B7A2DC: FLdRfVar var_21C
  loc_B7A2DF: FLdPr Me
  loc_B7A2E2: VCallAd Control_ID_CodiFifuMsk
  loc_B7A2E5: FStAdFunc var_128
  loc_B7A2E8: FLdPr var_128
  loc_B7A2EB: LateIdLdVar var_20C DispID_22 0
  loc_B7A2F2: CStrVarTmp
  loc_B7A2F3: CVarStr var_22C
  loc_B7A2F6: HardType
  loc_B7A2F7: EqVar var_23C
  loc_B7A2FB: AndVar var_24C
  loc_B7A2FF: FLdRfVar var_25C
  loc_B7A302: FLdRfVar var_144
  loc_B7A305: LitVarStr var_124, "CodiUnga"
  loc_B7A30A: PopAdLdVar
  loc_B7A30B: FLdRfVar var_130
  loc_B7A30E: FLdRfVar var_12C
  loc_B7A311: FLdPr Me
  loc_B7A314: MemLdRfVar from_stack_1.global_52
  loc_B7A317: NewIfNullPr clsimputacion
  loc_B7A31A: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B7A31F: FLdPr var_12C
  loc_B7A322:  = Me.Fields
  loc_B7A327: FLdPr var_130
  loc_B7A32A: from_stack_2 = Me.Item(from_stack_1)
  loc_B7A32F: FLdPr var_144
  loc_B7A332:  = Me.Value
  loc_B7A337: FLdRfVar var_25C
  loc_B7A33A: FnCStrVar
  loc_B7A33C: FStStrNoPop var_1CC
  loc_B7A33F: FLdRfVar var_8C
  loc_B7A342: FLdPr Me
  loc_B7A345: VCallAd Control_ID_CodiUngaTxt
  loc_B7A348: FStAdFunc var_148
  loc_B7A34B: FLdPr var_148
  loc_B7A34E:  = Me.Text
  loc_B7A353: ILdRf var_8C
  loc_B7A356: EqStr
  loc_B7A358: CVarBoolI2 var_140
  loc_B7A35C: AndVar var_26C
  loc_B7A360: CBoolVarNull
  loc_B7A362: FFreeStr var_1CC = ""
  loc_B7A369: FFreeAd var_98 = "": var_B0 = "": var_E8 = "": var_C4 = "": var_EC = "": var_F0 = "": var_F8 = "": var_F4 = "": var_10C = "": var_110 = "": var_128 = "": var_114 = "": var_12C = "": var_130 = "": var_144 = ""
  loc_B7A38C: FFreeVar var_AC = "": var_D4 = "": var_178 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_20C = "": var_21C = "": var_22C = "": var_25C = ""
  loc_B7A3A5: BranchF loc_B7A3B6
  loc_B7A3A8: LitI4 0
  loc_B7A3AD: LitStr "Debe cambiar la Partida, el Organigrama o el Programa de Gestión. Verifique..."
  loc_B7A3B0: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B7A3B5: ExitProcHresult
  loc_B7A3B6: LitI2_Byte 0
  loc_B7A3B8: PopTmpLdAd2 var_1FA
  loc_B7A3BB: Call ImunImpuTxt_Validate(from_stack_1v)
  loc_B7A3C0: FLdPr Me
  loc_B7A3C3: MemLdStr global_68
  loc_B7A3C6: LitStr vbNullString
  loc_B7A3C9: NeStr
  loc_B7A3CB: BranchF loc_B7A3CF
  loc_B7A3CE: ExitProcHresult
  loc_B7A3CF: LitI2_Byte 0
  loc_B7A3D1: PopTmpLdAd2 var_1FA
  loc_B7A3D4: Call ImpoImpuTxt_Validate(from_stack_1v)
  loc_B7A3D9: FLdPr Me
  loc_B7A3DC: MemLdStr global_68
  loc_B7A3DF: LitStr vbNullString
  loc_B7A3E2: NeStr
  loc_B7A3E4: BranchF loc_B7A3E8
  loc_B7A3E7: ExitProcHresult
  loc_B7A3E8: FLdPr Me
  loc_B7A3EB: MemLdUI1 global_64
  loc_B7A3EF: FStUI1 var_26E
  loc_B7A3F3: FLdUI1
  loc_B7A3F7: LitI2_Byte 1
  loc_B7A3F9: EqI2
  loc_B7A3FA: BranchF loc_B7A5EA
  loc_B7A3FD: FLdRfVar var_198
  loc_B7A400: FLdRfVar var_C4
  loc_B7A403: LitVarStr var_C0, "IdImpu"
  loc_B7A408: PopAdLdVar
  loc_B7A409: FLdRfVar var_B0
  loc_B7A40C: FLdRfVar var_98
  loc_B7A40F: FLdPr Me
  loc_B7A412: MemLdRfVar from_stack_1.global_52
  loc_B7A415: NewIfNullPr clsimputacion
  loc_B7A418: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B7A41D: FLdPr var_98
  loc_B7A420:  = Me.Fields
  loc_B7A425: FLdPr var_B0
  loc_B7A428: from_stack_2 = Me.Item(from_stack_1)
  loc_B7A42D: FLdPr var_C4
  loc_B7A430:  = Me.Value
  loc_B7A435: FLdPr Me
  loc_B7A438: VCallAd Control_ID_FechImpuMsk
  loc_B7A43B: FStAdFunc var_E8
  loc_B7A43E: FLdPr var_E8
  loc_B7A441: LateIdLdVar var_AC DispID_15 0
  loc_B7A448: PopAd
  loc_B7A44A: FLdPr Me
  loc_B7A44D: VCallAd Control_ID_CodiPartMsk
  loc_B7A450: FStAdFunc var_EC
  loc_B7A453: FLdPr var_EC
  loc_B7A456: LateIdLdVar var_D4 DispID_22 0
  loc_B7A45D: PopAd
  loc_B7A45F: FLdPr Me
  loc_B7A462: VCallAd Control_ID_CodiOrgaMsk
  loc_B7A465: FStAdFunc var_F0
  loc_B7A468: FLdPr var_F0
  loc_B7A46B: LateIdLdVar var_178 DispID_22 0
  loc_B7A472: PopAd
  loc_B7A474: FLdRfVar var_8C
  loc_B7A477: FLdPr Me
  loc_B7A47A: VCallAd Control_ID_CodiUngaTxt
  loc_B7A47D: FStAdFunc var_F4
  loc_B7A480: FLdPr var_F4
  loc_B7A483:  = Me.Text
  loc_B7A488: FLdPr Me
  loc_B7A48B: VCallAd Control_ID_CodiFifuMsk
  loc_B7A48E: FStAdFunc var_F8
  loc_B7A491: FLdPr var_F8
  loc_B7A494: LateIdLdVar var_188 DispID_22 0
  loc_B7A49B: PopAd
  loc_B7A49D: FLdRfVar var_1CC
  loc_B7A4A0: FLdPrThis
  loc_B7A4A1: VCallAd Control_ID_ImpoImpuTxt
  loc_B7A4A4: FStAdFunc var_10C
  loc_B7A4A7: FLdPr var_10C
  loc_B7A4AA:  = Me.Text
  loc_B7A4AF: FLdRfVar var_94
  loc_B7A4B2: LitI2_Byte &HFF
  loc_B7A4B4: ILdRf var_1CC
  loc_B7A4B7: FLdRfVar var_188
  loc_B7A4BA: CStrVarTmp
  loc_B7A4BB: FStStrNoPop var_278
  loc_B7A4BE: ILdRf var_8C
  loc_B7A4C1: FLdRfVar var_178
  loc_B7A4C4: CStrVarTmp
  loc_B7A4C5: FStStrNoPop var_274
  loc_B7A4C8: FLdRfVar var_D4
  loc_B7A4CB: CStrVarTmp
  loc_B7A4CC: FStStrNoPop var_1D4
  loc_B7A4CF: FLdRfVar var_AC
  loc_B7A4D2: CStrVarTmp
  loc_B7A4D3: FStStrNoPop var_1D0
  loc_B7A4D6: FLdRfVar var_198
  loc_B7A4D9: CI4Var
  loc_B7A4DB: FLdPr Me
  loc_B7A4DE: MemLdRfVar from_stack_1.global_52
  loc_B7A4E1: NewIfNullPr clsimputacion
  loc_B7A4E4: from_stack_9v = clsimputacion.ReasignarDevengadodeOC(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_B7A4E9: ILdRf var_94
  loc_B7A4EC: FLdPr Me
  loc_B7A4EF: MemStI4 global_72
  loc_B7A4F2: FFreeStr var_1D0 = "": var_1D4 = "": var_274 = "": var_8C = "": var_278 = ""
  loc_B7A501: FFreeAd var_98 = "": var_B0 = "": var_E8 = "": var_EC = "": var_F0 = "": var_F4 = "": var_F8 = "": var_10C = ""
  loc_B7A516: FFreeVar var_AC = "": var_D4 = "": var_178 = "": var_188 = ""
  loc_B7A523: LitI2_Byte &HFF
  loc_B7A525: PopTmpLdAd2 var_27A
  loc_B7A528: LitI2_Byte 0
  loc_B7A52A: PopTmpLdAd2 var_1FA
  loc_B7A52D: LitStr "¿Imprime el Volante de Imputación?"
  loc_B7A530: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_B7A535: CI4UI1
  loc_B7A536: LitI4 6
  loc_B7A53B: EqI4
  loc_B7A53C: BranchF loc_B7A5E7
  loc_B7A53F: ImpAdLdRf MemVar_C3D9BC
  loc_B7A542: NewIfNullAd
  loc_B7A545: FStAdNoPop
  loc_B7A549: ImpAdLdRf MemVar_C44F9C
  loc_B7A54C: NewIfNullPr Me
  loc_B7A54F: Me.Global.Load from_stack_1
  loc_B7A554: FFree1Ad var_98
  loc_B7A557: ImpAdLdRf MemVar_C3D9BC
  loc_B7A55A: NewIfNullAd
  loc_B7A55D: CastAd
  loc_B7A560: FStAdFuncNoPop
  loc_B7A563: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_B7A568: FFree1Ad var_98
  loc_B7A56B: FLdRfVar var_AC
  loc_B7A56E: FLdRfVar var_C4
  loc_B7A571: LitVarStr var_C0, "ExorImpu"
  loc_B7A576: PopAdLdVar
  loc_B7A577: FLdRfVar var_B0
  loc_B7A57A: FLdRfVar var_98
  loc_B7A57D: FLdPr Me
  loc_B7A580: MemLdRfVar from_stack_1.global_52
  loc_B7A583: NewIfNullPr clsimputacion
  loc_B7A586: from_stack_1v = clsimputacion.RsFrmGet()
  loc_B7A58B: FLdPr var_98
  loc_B7A58E:  = Me.Fields
  loc_B7A593: FLdPr var_B0
  loc_B7A596: from_stack_2 = Me.Item(from_stack_1)
  loc_B7A59B: FLdPr var_C4
  loc_B7A59E:  = Me.Value
  loc_B7A5A3: FLdRfVar var_AC
  loc_B7A5A6: CStrVarTmp
  loc_B7A5A7: FStStrNoPop var_8C
  loc_B7A5AA: ImpAdLdRf MemVar_C3D9BC
  loc_B7A5AD: NewIfNullPr rptVolantedeImputaciones
  loc_B7A5B0: VCallAd Control_ID_cboExorImpu
  loc_B7A5B3: FStAdFunc var_E8
  loc_B7A5B6: FLdPr var_E8
  loc_B7A5B9: rptVolantedeImputaciones.ComboBox.Text = from_stack_1
  loc_B7A5BE: FFree1Str var_8C
  loc_B7A5C1: FFreeAd var_98 = "": var_B0 = "": var_C4 = ""
  loc_B7A5CC: FFree1Var var_AC = ""
  loc_B7A5CF: LitVar_Missing var_E4
  loc_B7A5D2: PopAdLdVar
  loc_B7A5D3: LitVarI4
  loc_B7A5DB: PopAdLdVar
  loc_B7A5DC: ImpAdLdRf MemVar_C3D9BC
  loc_B7A5DF: NewIfNullPr rptVolantedeImputaciones
  loc_B7A5E2: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_B7A5E7: Branch loc_B7A601
  loc_B7A5EA: FLdUI1
  loc_B7A5EE: LitI2_Byte 2
  loc_B7A5F0: EqI2
  loc_B7A5F1: BranchF loc_B7A5F7
  loc_B7A5F4: Branch loc_B7A601
  loc_B7A5F7: FLdUI1
  loc_B7A5FB: LitI2_Byte 3
  loc_B7A5FD: EqI2
  loc_B7A5FE: BranchF loc_B7A601
  loc_B7A601: Call cmdCancelar_Click()
  loc_B7A606: Branch loc_B7A771
  loc_B7A609: ILdRf var_90
  loc_B7A60C: LitStr "btnCancelar"
  loc_B7A60F: EqStr
  loc_B7A611: BranchF loc_B7A61C
  loc_B7A614: Call cmdCancelar_Click()
  loc_B7A619: Branch loc_B7A771
  loc_B7A61C: ILdRf var_90
  loc_B7A61F: LitStr "btnPrimero"
  loc_B7A622: EqStr
  loc_B7A624: BranchF loc_B7A638
  loc_B7A627: FLdPr Me
  loc_B7A62A: MemLdRfVar from_stack_1.global_52
  loc_B7A62D: NewIfNullPr clsimputacion
  loc_B7A630: Call clsimputacion.MoveFirst()
  loc_B7A635: Branch loc_B7A771
  loc_B7A638: ILdRf var_90
  loc_B7A63B: LitStr "btnAnterior"
  loc_B7A63E: EqStr
  loc_B7A640: BranchF loc_B7A654
  loc_B7A643: FLdPr Me
  loc_B7A646: MemLdRfVar from_stack_1.global_52
  loc_B7A649: NewIfNullPr clsimputacion
  loc_B7A64C: Call clsimputacion.MovePrevious()
  loc_B7A651: Branch loc_B7A771
  loc_B7A654: ILdRf var_90
  loc_B7A657: LitStr "btnSiguiente"
  loc_B7A65A: EqStr
  loc_B7A65C: BranchF loc_B7A670
  loc_B7A65F: FLdPr Me
  loc_B7A662: MemLdRfVar from_stack_1.global_52
  loc_B7A665: NewIfNullPr clsimputacion
  loc_B7A668: Call clsimputacion.MoveNext()
  loc_B7A66D: Branch loc_B7A771
  loc_B7A670: ILdRf var_90
  loc_B7A673: LitStr "btnUltimo"
  loc_B7A676: EqStr
  loc_B7A678: BranchF loc_B7A68C
  loc_B7A67B: FLdPr Me
  loc_B7A67E: MemLdRfVar from_stack_1.global_52
  loc_B7A681: NewIfNullPr clsimputacion
  loc_B7A684: Call clsimputacion.MoveLast()
  loc_B7A689: Branch loc_B7A771
  loc_B7A68C: ILdRf var_90
  loc_B7A68F: LitStr "btnFiltrar"
  loc_B7A692: EqStr
  loc_B7A694: BranchF loc_B7A69A
  loc_B7A697: Branch loc_B7A771
  loc_B7A69A: ILdRf var_90
  loc_B7A69D: LitStr "btnBuscar"
  loc_B7A6A0: EqStr
  loc_B7A6A2: BranchF loc_B7A6A8
  loc_B7A6A5: Branch loc_B7A771
  loc_B7A6A8: ILdRf var_90
  loc_B7A6AB: LitStr "btnImprimir"
  loc_B7A6AE: EqStr
  loc_B7A6B0: BranchF loc_B7A71A
  loc_B7A6B3: ImpAdLdRf MemVar_C3D9BC
  loc_B7A6B6: NewIfNullAd
  loc_B7A6B9: CastAd
  loc_B7A6BC: FStAdFuncNoPop
  loc_B7A6BF: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_B7A6C4: FFree1Ad var_98
  loc_B7A6C7: FLdPr Me
  loc_B7A6CA: VCallAd Control_ID_ExorImpuMsk
  loc_B7A6CD: FStAdFunc var_98
  loc_B7A6D0: FLdPr var_98
  loc_B7A6D3: LateIdLdVar var_AC DispID_15 0
  loc_B7A6DA: CStrVarTmp
  loc_B7A6DB: FStStrNoPop var_8C
  loc_B7A6DE: ImpAdLdRf MemVar_C3D9BC
  loc_B7A6E1: NewIfNullPr rptVolantedeImputaciones
  loc_B7A6E4: VCallAd Control_ID_cboExorImpu
  loc_B7A6E7: FStAdFunc var_B0
  loc_B7A6EA: FLdPr var_B0
  loc_B7A6ED: rptVolantedeImputaciones.ComboBox.Text = from_stack_1
  loc_B7A6F2: FFree1Str var_8C
  loc_B7A6F5: FFreeAd var_98 = ""
  loc_B7A6FC: FFree1Var var_AC = ""
  loc_B7A6FF: LitVar_Missing var_E4
  loc_B7A702: PopAdLdVar
  loc_B7A703: LitVarI4
  loc_B7A70B: PopAdLdVar
  loc_B7A70C: ImpAdLdRf MemVar_C3D9BC
  loc_B7A70F: NewIfNullPr rptVolantedeImputaciones
  loc_B7A712: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_B7A717: Branch loc_B7A771
  loc_B7A71A: ILdRf var_90
  loc_B7A71D: LitStr "btnAyuda"
  loc_B7A720: EqStr
  loc_B7A722: BranchF loc_B7A751
  loc_B7A725: LitVar_Missing var_188
  loc_B7A728: LitVar_Missing var_178
  loc_B7A72B: LitVar_Missing var_D4
  loc_B7A72E: LitI4 0
  loc_B7A733: LitVarStr var_C0, "Opcion no disponible en esta version."
  loc_B7A738: FStVarCopyObj var_AC
  loc_B7A73B: FLdRfVar var_AC
  loc_B7A73E: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B7A743: FFreeVar var_AC = "": var_D4 = "": var_178 = ""
  loc_B7A74E: Branch loc_B7A771
  loc_B7A751: ILdRf var_90
  loc_B7A754: LitStr "btnSalir"
  loc_B7A757: EqStr
  loc_B7A759: BranchF loc_B7A771
  loc_B7A75C: ILdRf Me
  loc_B7A75F: FStAdNoPop
  loc_B7A763: ImpAdLdRf MemVar_C44F9C
  loc_B7A766: NewIfNullPr Me
  loc_B7A769: Me.Global.Unload from_stack_1
  loc_B7A76E: FFree1Ad var_98
  loc_B7A771: ExitProcHresult
End Sub
