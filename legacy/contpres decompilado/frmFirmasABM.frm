VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmFirmasABM
  Caption = "Registro de Firmas"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmFirmasABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 15375
  ClientHeight = 10020
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 720
    Width = 10695
    Height = 855
    TabIndex = 0
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 1
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox FiltroTxt
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 2
      MaxLength = 40
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.Frame Frame1
    Caption = " Registro de Firmas"
    Left = 120
    Top = 4320
    Width = 12735
    Height = 5415
    TabIndex = 4
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton FechFirmCmd
      Left = 3705
      Top = 1080
      Width = 375
      Height = 375
      TabIndex = 9
      Picture = "frmFirmasABM.frx":08CA
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.ComboBox FormFirmCbo
      Style = 2
      Left = 2265
      Top = 480
      Width = 3375
      Height = 420
      TabIndex = 6
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox CccuFirmTxt
      Left = 2265
      Top = 4920
      Width = 1695
      Height = 420
      TabIndex = 31
      MaxLength = 11
      DataField = "CccuFirm"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CommandButton CccuFirmCmd
      Left = 4080
      Top = 4920
      Width = 375
      Height = 360
      TabIndex = 32
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "frmFirmasABM.frx":0E0C
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox CacuFirmTxt
      Left = 2265
      Top = 4440
      Width = 7815
      Height = 420
      TabIndex = 29
      MaxLength = 35
      DataField = "CacuFirm"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox CctrFirmTxt
      Left = 2265
      Top = 3960
      Width = 1695
      Height = 420
      TabIndex = 25
      MaxLength = 11
      DataField = "CctrFirm"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CommandButton CctrFirmCmd
      Left = 4080
      Top = 3960
      Width = 375
      Height = 360
      TabIndex = 26
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "frmFirmasABM.frx":0F06
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox CatrFirmTxt
      Left = 2265
      Top = 3480
      Width = 7815
      Height = 420
      TabIndex = 23
      MaxLength = 35
      DataField = "CatrFirm"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox CcdoFirmTxt
      Left = 2265
      Top = 3000
      Width = 1695
      Height = 420
      TabIndex = 19
      MaxLength = 11
      DataField = "CcdoFirm"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CommandButton CcdoFirmCmd
      Left = 4080
      Top = 3000
      Width = 375
      Height = 360
      TabIndex = 20
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "frmFirmasABM.frx":1000
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox CadoFirmTxt
      Left = 2265
      Top = 2520
      Width = 7815
      Height = 420
      TabIndex = 17
      MaxLength = 35
      DataField = "CadoFirm"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox CcunFirmTxt
      Left = 2265
      Top = 2040
      Width = 1695
      Height = 420
      TabIndex = 13
      MaxLength = 11
      DataField = "CcunFirm"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CommandButton CcunFirmCmd
      Left = 4080
      Top = 2040
      Width = 375
      Height = 360
      TabIndex = 14
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "frmFirmasABM.frx":10FA
      Style = 1
      CausesValidation = 0   'False
    End
    Begin VB.TextBox CaunFirmTxt
      Left = 2265
      Top = 1560
      Width = 7815
      Height = 420
      TabIndex = 11
      MaxLength = 35
      DataField = "CaunFirm"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin MSMask.MaskEdBox FechFirmMsk
      Left = 2265
      Top = 1080
      Width = 1335
      Height = 360
      TabIndex = 8
      OleObjectBlob = "frmFirmasABM.frx":11F4
      DataField = "FechFirm"
    End
    Begin VB.Label Label1
      Caption = "Fecha desde:"
      Left = 705
      Top = 1110
      Width = 1455
      Height = 300
      TabIndex = 7
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label12
      Caption = "Cargo 4:"
      Left = 1260
      Top = 4440
      Width = 900
      Height = 300
      TabIndex = 28
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label10
      Caption = "Firmante 4:"
      Left = 960
      Top = 4920
      Width = 1200
      Height = 300
      TabIndex = 30
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DetrPersLbl
      Left = 4560
      Top = 3960
      Width = 5535
      Height = 360
      TabIndex = 27
      BorderStyle = 1 'Fixed Single
      DataField = "DetrPers"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DecuPersLbl
      Left = 4560
      Top = 4920
      Width = 5535
      Height = 360
      TabIndex = 33
      BorderStyle = 1 'Fixed Single
      DataField = "DecuPers"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label7
      Caption = "Cargo 3:"
      Left = 1260
      Top = 3480
      Width = 900
      Height = 300
      TabIndex = 22
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label6
      Caption = "Firmante 3:"
      Left = 960
      Top = 3960
      Width = 1200
      Height = 300
      TabIndex = 24
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label5
      Caption = "Cargo 2:"
      Left = 1260
      Top = 2520
      Width = 900
      Height = 300
      TabIndex = 16
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label4
      Caption = "Firmante 2:"
      Left = 960
      Top = 3000
      Width = 1200
      Height = 300
      TabIndex = 18
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DedoPersLbl
      Left = 4560
      Top = 3000
      Width = 5535
      Height = 360
      TabIndex = 21
      BorderStyle = 1 'Fixed Single
      DataField = "DedoPers"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label DeunPersLbl
      Left = 4560
      Top = 2040
      Width = 5535
      Height = 360
      TabIndex = 15
      BorderStyle = 1 'Fixed Single
      DataField = "DeunPers"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label11
      Caption = "Firmante 1:"
      Left = 960
      Top = 2040
      Width = 1200
      Height = 300
      TabIndex = 12
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label3
      Caption = "Cargo 1:"
      Left = 1260
      Top = 1560
      Width = 900
      Height = 300
      TabIndex = 10
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.Label Label2
      Caption = "Formulario:"
      Left = 975
      Top = 480
      Width = 1185
      Height = 300
      TabIndex = 5
      AutoSize = -1  'True
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 12735
    Height = 2535
    TabIndex = 3
    OleObjectBlob = "frmFirmasABM.frx":12A4
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmFirmasABM.frx":18EE
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15375
    Height = 660
    TabIndex = 34
    OleObjectBlob = "frmFirmasABM.frx":946C
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 35
      TabStop = 0   'False
      Picture = "frmFirmasABM.frx":99C8
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmFirmasABM"


Private Sub CctrFirmTxt_GotFocus() '94DD90
  'Data Table: 4CAE44
  loc_94DD7C: FLdPr Me
  loc_94DD7F: VCallAd Control_ID_CctrFirmTxt
  loc_94DD82: CVarAd
  loc_94DD86: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94DD8B: FFree1Var var_94 = ""
  loc_94DD8E: ExitProcHresult
End Sub

Private Sub CctrFirmTxt_Validate(Cancel As Boolean) '9E16C4
  'Data Table: 4CAE44
  loc_9E15BC: FLdRfVar var_8A
  loc_9E15BF: FLdPr Me
  loc_9E15C2: VCallAd Control_ID_cmdCancelar
  loc_9E15C5: FStAdFunc var_88
  loc_9E15C8: FLdPr var_88
  loc_9E15CB:  = Me.Value
  loc_9E15D0: FLdI2 var_8A
  loc_9E15D3: NotI4
  loc_9E15D4: FLdRfVar var_92
  loc_9E15D7: FLdPr Me
  loc_9E15DA: VCallAd Control_ID_CctrFirmTxt
  loc_9E15DD: FStAdFunc var_90
  loc_9E15E0: FLdPr var_90
  loc_9E15E3:  = Me.Enabled
  loc_9E15E8: FLdI2 var_92
  loc_9E15EB: AndI4
  loc_9E15EC: FLdRfVar var_9C
  loc_9E15EF: FLdPr Me
  loc_9E15F2: VCallAd Control_ID_CctrFirmTxt
  loc_9E15F5: FStAdFunc var_98
  loc_9E15F8: FLdPr var_98
  loc_9E15FB:  = Me.Text
  loc_9E1600: ILdRf var_9C
  loc_9E1603: LitStr "0"
  loc_9E1606: NeStr
  loc_9E1608: AndI4
  loc_9E1609: FFree1Str var_9C
  loc_9E160C: FFreeAd var_88 = "": var_90 = ""
  loc_9E1615: BranchF loc_9E16C1
  loc_9E1618: FLdRfVar var_9C
  loc_9E161B: FLdPr Me
  loc_9E161E: VCallAd Control_ID_CctrFirmTxt
  loc_9E1621: FStAdFunc var_88
  loc_9E1624: FLdPr var_88
  loc_9E1627:  = Me.Text
  loc_9E162C: FLdPr Me
  loc_9E162F: MemLdRfVar from_stack_1.global_68
  loc_9E1632: NewIfNullRf
  loc_9E1636: ILdRf var_9C
  loc_9E1639: ImpAdCallI2 Proc_266_16_994244(, )
  loc_9E163E: FStStrNoPop var_A0
  loc_9E1641: FLdPr Me
  loc_9E1644: MemStStrCopy
  loc_9E1648: FFreeStr var_9C = ""
  loc_9E164F: FFree1Ad var_88
  loc_9E1652: FLdPr Me
  loc_9E1655: VCallAd Control_ID_CctrFirmTxt
  loc_9E1658: FStAdFunc var_A4
  loc_9E165B: FLdPr Me
  loc_9E165E: VCallAd Control_ID_DetrPersLbl
  loc_9E1661: FStAdFunc var_98
  loc_9E1664: FLdRfVar var_98
  loc_9E1667: FLdZeroAd var_A4
  loc_9E166A: FStAdFuncNoPop
  loc_9E166D: CastAd
  loc_9E1670: FStAdFunc var_90
  loc_9E1673: FLdRfVar var_90
  loc_9E1676: FLdPr Me
  loc_9E1679: MemLdRfVar from_stack_1.global_60
  loc_9E167C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E1681: IStI2 Cancel
  loc_9E1684: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9E168F: ILdI2 Cancel
  loc_9E1692: NotI4
  loc_9E1693: BranchF loc_9E16C1
  loc_9E1696: FLdRfVar var_9C
  loc_9E1699: FLdPr Me
  loc_9E169C: MemLdRfVar from_stack_1.global_68
  loc_9E169F: NewIfNullPr tblpersona
  loc_9E16A2: from_stack_1v = tblpersona.DetaPersGet()
  loc_9E16A7: ILdRf var_9C
  loc_9E16AA: FLdPr Me
  loc_9E16AD: VCallAd Control_ID_DetrPersLbl
  loc_9E16B0: FStAdFunc var_88
  loc_9E16B3: FLdPr var_88
  loc_9E16B6: Me.Caption = from_stack_1
  loc_9E16BB: FFree1Str var_9C
  loc_9E16BE: FFree1Ad var_88
  loc_9E16C1: ExitProcHresult
End Sub

Private Sub CcunFirmTxt_GotFocus() '94DD48
  'Data Table: 4CAE44
  loc_94DD34: FLdPr Me
  loc_94DD37: VCallAd Control_ID_CcunFirmTxt
  loc_94DD3A: CVarAd
  loc_94DD3E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94DD43: FFree1Var var_94 = ""
  loc_94DD46: ExitProcHresult
End Sub

Private Sub CcunFirmTxt_Validate(Cancel As Boolean) '9E0EE4
  'Data Table: 4CAE44
  loc_9E0DDC: FLdRfVar var_8A
  loc_9E0DDF: FLdPr Me
  loc_9E0DE2: VCallAd Control_ID_cmdCancelar
  loc_9E0DE5: FStAdFunc var_88
  loc_9E0DE8: FLdPr var_88
  loc_9E0DEB:  = Me.Value
  loc_9E0DF0: FLdI2 var_8A
  loc_9E0DF3: NotI4
  loc_9E0DF4: FLdRfVar var_92
  loc_9E0DF7: FLdPr Me
  loc_9E0DFA: VCallAd Control_ID_CcunFirmTxt
  loc_9E0DFD: FStAdFunc var_90
  loc_9E0E00: FLdPr var_90
  loc_9E0E03:  = Me.Enabled
  loc_9E0E08: FLdI2 var_92
  loc_9E0E0B: AndI4
  loc_9E0E0C: FLdRfVar var_9C
  loc_9E0E0F: FLdPr Me
  loc_9E0E12: VCallAd Control_ID_CcunFirmTxt
  loc_9E0E15: FStAdFunc var_98
  loc_9E0E18: FLdPr var_98
  loc_9E0E1B:  = Me.Text
  loc_9E0E20: ILdRf var_9C
  loc_9E0E23: LitStr "0"
  loc_9E0E26: NeStr
  loc_9E0E28: AndI4
  loc_9E0E29: FFree1Str var_9C
  loc_9E0E2C: FFreeAd var_88 = "": var_90 = ""
  loc_9E0E35: BranchF loc_9E0EE1
  loc_9E0E38: FLdRfVar var_9C
  loc_9E0E3B: FLdPr Me
  loc_9E0E3E: VCallAd Control_ID_CcunFirmTxt
  loc_9E0E41: FStAdFunc var_88
  loc_9E0E44: FLdPr var_88
  loc_9E0E47:  = Me.Text
  loc_9E0E4C: FLdPr Me
  loc_9E0E4F: MemLdRfVar from_stack_1.global_68
  loc_9E0E52: NewIfNullRf
  loc_9E0E56: ILdRf var_9C
  loc_9E0E59: ImpAdCallI2 Proc_266_16_994244(, )
  loc_9E0E5E: FStStrNoPop var_A0
  loc_9E0E61: FLdPr Me
  loc_9E0E64: MemStStrCopy
  loc_9E0E68: FFreeStr var_9C = ""
  loc_9E0E6F: FFree1Ad var_88
  loc_9E0E72: FLdPr Me
  loc_9E0E75: VCallAd Control_ID_CcunFirmTxt
  loc_9E0E78: FStAdFunc var_A4
  loc_9E0E7B: FLdPr Me
  loc_9E0E7E: VCallAd Control_ID_DeunPersLbl
  loc_9E0E81: FStAdFunc var_98
  loc_9E0E84: FLdRfVar var_98
  loc_9E0E87: FLdZeroAd var_A4
  loc_9E0E8A: FStAdFuncNoPop
  loc_9E0E8D: CastAd
  loc_9E0E90: FStAdFunc var_90
  loc_9E0E93: FLdRfVar var_90
  loc_9E0E96: FLdPr Me
  loc_9E0E99: MemLdRfVar from_stack_1.global_60
  loc_9E0E9C: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E0EA1: IStI2 Cancel
  loc_9E0EA4: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9E0EAF: ILdI2 Cancel
  loc_9E0EB2: NotI4
  loc_9E0EB3: BranchF loc_9E0EE1
  loc_9E0EB6: FLdRfVar var_9C
  loc_9E0EB9: FLdPr Me
  loc_9E0EBC: MemLdRfVar from_stack_1.global_68
  loc_9E0EBF: NewIfNullPr tblpersona
  loc_9E0EC2: from_stack_1v = tblpersona.DetaPersGet()
  loc_9E0EC7: ILdRf var_9C
  loc_9E0ECA: FLdPr Me
  loc_9E0ECD: VCallAd Control_ID_DeunPersLbl
  loc_9E0ED0: FStAdFunc var_88
  loc_9E0ED3: FLdPr var_88
  loc_9E0ED6: Me.Caption = from_stack_1
  loc_9E0EDB: FFree1Str var_9C
  loc_9E0EDE: FFree1Ad var_88
  loc_9E0EE1: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99AA80
  'Data Table: 4CAE44
  loc_99AA24: FLdRfVar var_B4
  loc_99AA27: FLdRfVar var_B0
  loc_99AA2A: FLdI2 ColIndex
  loc_99AA2D: CVarI2 var_A8
  loc_99AA30: PopAdLdVar
  loc_99AA31: FLdPr Me
  loc_99AA34: VCallAd Control_ID_dgdABMS
  loc_99AA37: FStAdFunc var_88
  loc_99AA3A: FLdPr var_88
  loc_99AA3D: LateIdLdVar var_98 DispID_105 0
  loc_99AA44: CastAdVar Me
  loc_99AA48: FStAdFunc var_AC
  loc_99AA4B: FLdPr var_AC
  loc_99AA4E: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99AA53: FLdPr var_B0
  loc_99AA56:  = Me.DataField
  loc_99AA5B: FLdZeroAd var_B4
  loc_99AA5E: PopTmpLdAdStr
  loc_99AA62: FLdPr Me
  loc_99AA65: MemLdRfVar from_stack_1.global_52
  loc_99AA68: NewIfNullPr clsfirma
  loc_99AA6B: Call clsfirma.Sort(from_stack_1v)
  loc_99AA70: FFree1Str var_B8
  loc_99AA73: FFreeAd var_88 = "": var_AC = ""
  loc_99AA7C: FFree1Var var_98 = ""
  loc_99AA7F: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) '9C7134
  'Data Table: 4CAE44
  loc_9C7068: FLdRfVar var_88
  loc_9C706B: FLdPr Me
  loc_9C706E: MemLdRfVar from_stack_1.global_52
  loc_9C7071: NewIfNullPr clsfirma
  loc_9C7074: from_stack_1 = clsfirma.RecordCount
  loc_9C7079: ILdRf var_88
  loc_9C707C: LitI4 0
  loc_9C7081: GtI4
  loc_9C7082: BranchF loc_9C7130
  loc_9C7085: FLdRfVar var_8A
  loc_9C7088: FLdPr Me
  loc_9C708B: MemLdRfVar from_stack_1.global_52
  loc_9C708E: NewIfNullPr clsfirma
  loc_9C7091: from_stack_1 = clsfirma.BOF
  loc_9C7096: FLdI2 var_8A
  loc_9C7099: BranchF loc_9C70AA
  loc_9C709C: FLdPr Me
  loc_9C709F: MemLdRfVar from_stack_1.global_52
  loc_9C70A2: NewIfNullPr clsfirma
  loc_9C70A5: Call clsfirma.MoveFirst()
  loc_9C70AA: FLdRfVar var_8A
  loc_9C70AD: FLdPr Me
  loc_9C70B0: MemLdRfVar from_stack_1.global_52
  loc_9C70B3: NewIfNullPr clsfirma
  loc_9C70B6: from_stack_1 = clsfirma.EOF
  loc_9C70BB: FLdI2 var_8A
  loc_9C70BE: BranchF loc_9C70CF
  loc_9C70C1: FLdPr Me
  loc_9C70C4: MemLdRfVar from_stack_1.global_52
  loc_9C70C7: NewIfNullPr clsfirma
  loc_9C70CA: Call clsfirma.MoveLast()
  loc_9C70CF: FLdRfVar var_B8
  loc_9C70D2: FLdRfVar var_A8
  loc_9C70D5: LitVarStr var_A4, "FormFirm"
  loc_9C70DA: PopAdLdVar
  loc_9C70DB: FLdRfVar var_94
  loc_9C70DE: FLdRfVar var_90
  loc_9C70E1: FLdPr Me
  loc_9C70E4: MemLdRfVar from_stack_1.global_52
  loc_9C70E7: NewIfNullPr clsfirma
  loc_9C70EA: from_stack_1v = clsfirma.RsFrmGet()
  loc_9C70EF: FLdPr var_90
  loc_9C70F2:  = Me.Fields
  loc_9C70F7: FLdPr var_94
  loc_9C70FA: from_stack_2 = Me.Item(from_stack_1)
  loc_9C70FF: FLdPr var_A8
  loc_9C7102:  = Me.Value
  loc_9C7107: FLdRfVar var_B8
  loc_9C710A: CStrVarTmp
  loc_9C710B: FStStrNoPop var_BC
  loc_9C710E: FLdPr Me
  loc_9C7111: VCallAd Control_ID_FormFirmCbo
  loc_9C7114: FStAdFunc var_C0
  loc_9C7117: FLdPr var_C0
  loc_9C711A: Me.Text = from_stack_1
  loc_9C711F: FFree1Str var_BC
  loc_9C7122: FFreeAd var_90 = "": var_94 = "": var_A8 = ""
  loc_9C712D: FFree1Var var_B8 = ""
  loc_9C7130: ExitProcHresult
End Sub

Private Sub FechFirmMsk_UnknownEvent_0 '94DD00
  'Data Table: 4CAE44
  loc_94DCEC: FLdPr Me
  loc_94DCEF: VCallAd Control_ID_FechFirmMsk
  loc_94DCF2: CVarAd
  loc_94DCF6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94DCFB: FFree1Var var_94 = ""
  loc_94DCFE: ExitProcHresult
End Sub

Private Sub FechFirmMsk_UnknownEvent_8 '9E37E0
  'Data Table: 4CAE44
  loc_9E36DC: FLdRfVar var_8A
  loc_9E36DF: FLdPr Me
  loc_9E36E2: VCallAd Control_ID_cmdCancelar
  loc_9E36E5: FStAdFunc var_88
  loc_9E36E8: FLdPr var_88
  loc_9E36EB:  = Me.Value
  loc_9E36F0: FLdI2 var_8A
  loc_9E36F3: NotI4
  loc_9E36F4: FLdPr Me
  loc_9E36F7: VCallAd Control_ID_FechFirmMsk
  loc_9E36FA: FStAdFunc var_90
  loc_9E36FD: FLdPr var_90
  loc_9E3700: LateIdLdVar var_A0 DispID_13 -32767
  loc_9E3707: CBoolVar
  loc_9E3709: AndI4
  loc_9E370A: FFreeAd var_88 = ""
  loc_9E3711: FFree1Var var_A0 = ""
  loc_9E3714: BranchF loc_9E37DD
  loc_9E3717: FLdPr Me
  loc_9E371A: VCallAd Control_ID_FechFirmMsk
  loc_9E371D: FStAdFunc var_88
  loc_9E3720: FLdPr var_88
  loc_9E3723: LateIdLdVar var_A0 DispID_15 0
  loc_9E372A: PopAd
  loc_9E372C: FLdRfVar var_A4
  loc_9E372F: FLdPr Me
  loc_9E3732: VCallAd Control_ID_FormFirmCbo
  loc_9E3735: FStAdFunc var_90
  loc_9E3738: FLdPr var_90
  loc_9E373B:  = Me.Text
  loc_9E3740: FLdRfVar var_A8
  loc_9E3743: ILdRf var_A4
  loc_9E3746: FLdPr Me
  loc_9E3749: MemLdRfVar from_stack_1.global_52
  loc_9E374C: NewIfNullPr clsfirma
  loc_9E374F: from_stack_2v = clsfirma.UltimaFechFirm(from_stack_1v)
  loc_9E3754: FLdPr Me
  loc_9E3757: VCallAd Control_ID_FechFirmMsk
  loc_9E375A: FStAdFunc var_B8
  loc_9E375D: LitI2_Byte &HFF
  loc_9E375F: PopTmpLdAd2 var_8A
  loc_9E3762: FLdZeroAd var_B8
  loc_9E3765: FStAdFunc var_B0
  loc_9E3768: FLdRfVar var_B0
  loc_9E376B: ILdRf var_A8
  loc_9E376E: LitI2_Byte 0
  loc_9E3770: LitI2_Byte &HFF
  loc_9E3772: FLdRfVar var_A0
  loc_9E3775: CStrVarTmp
  loc_9E3776: FStStrNoPop var_AC
  loc_9E3779: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9E377E: FStStrNoPop var_B4
  loc_9E3781: FLdPr Me
  loc_9E3784: MemStStrCopy
  loc_9E3788: FFreeStr var_A4 = "": var_AC = "": var_A8 = ""
  loc_9E3793: FFreeAd var_88 = "": var_90 = "": var_B0 = ""
  loc_9E379E: FFree1Var var_A0 = ""
  loc_9E37A1: FLdPr Me
  loc_9E37A4: VCallAd Control_ID_FechFirmMsk
  loc_9E37A7: FStAdFunc var_B8
  loc_9E37AA: LitNothing
  loc_9E37AC: CastAd
  loc_9E37AF: FStAdFunc var_B0
  loc_9E37B2: FLdRfVar var_B0
  loc_9E37B5: FLdZeroAd var_B8
  loc_9E37B8: FStAdFuncNoPop
  loc_9E37BB: CastAd
  loc_9E37BE: FStAdFunc var_90
  loc_9E37C1: FLdRfVar var_90
  loc_9E37C4: FLdPr Me
  loc_9E37C7: MemLdRfVar from_stack_1.global_60
  loc_9E37CA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E37CF: IStI2 LastRow
  loc_9E37D2: FFreeAd var_88 = "": var_90 = "": var_B0 = ""
  loc_9E37DD: ExitProcHresult
End Sub

Private Sub FiltroTxt_Change() '9F75E8
  'Data Table: 4CAE44
  loc_9F74A8: FLdRfVar var_8C
  loc_9F74AB: FLdPr Me
  loc_9F74AE: VCallAd Control_ID_FiltroTxt
  loc_9F74B1: FStAdFunc var_88
  loc_9F74B4: FLdPr var_88
  loc_9F74B7:  = Me.Text
  loc_9F74BC: ILdRf var_8C
  loc_9F74BF: ImpAdCallI2 Trim$()
  loc_9F74C4: FStStrNoPop var_90
  loc_9F74C7: LitStr vbNullString
  loc_9F74CA: NeStr
  loc_9F74CC: FFreeStr var_8C = ""
  loc_9F74D3: FFree1Ad var_88
  loc_9F74D6: BranchF loc_9F758E
  loc_9F74D9: FLdRfVar var_92
  loc_9F74DC: FLdPr Me
  loc_9F74DF: VCallAd Control_ID_FiltroCbo
  loc_9F74E2: FStAdFunc var_88
  loc_9F74E5: FLdPr var_88
  loc_9F74E8:  = Me.ListIndex
  loc_9F74ED: FLdI2 var_92
  loc_9F74F0: LitI2_Byte 0
  loc_9F74F2: EqI2
  loc_9F74F3: FFree1Ad var_88
  loc_9F74F6: BranchF loc_9F758B
  loc_9F74F9: LitStr "FormFirm LIKE '" & Chr(37)
  loc_9F74FC: FLdRfVar var_8C
  loc_9F74FF: FLdPr Me
  loc_9F7502: VCallAd Control_ID_FiltroTxt
  loc_9F7505: FStAdFunc var_88
  loc_9F7508: FLdPr var_88
  loc_9F750B:  = Me.Text
  loc_9F7510: ILdRf var_8C
  loc_9F7513: ConcatStr
  loc_9F7514: FStStrNoPop var_90
  loc_9F7517: LitStr Chr(37) & "'"
  loc_9F751A: ConcatStr
  loc_9F751B: PopTmpLdAdStr
  loc_9F751F: FLdPr Me
  loc_9F7522: MemLdRfVar from_stack_1.global_52
  loc_9F7525: NewIfNullPr clsfirma
  loc_9F7528: Call clsfirma.Filter(from_stack_1v)
  loc_9F752D: FFreeStr var_8C = "": var_90 = ""
  loc_9F7536: FFree1Ad var_88
  loc_9F7539: LitStr "FormFirm"
  loc_9F753C: FStStrCopy var_8C
  loc_9F753F: FLdRfVar var_8C
  loc_9F7542: FLdPr Me
  loc_9F7545: MemLdRfVar from_stack_1.global_52
  loc_9F7548: NewIfNullPr clsfirma
  loc_9F754B: Call clsfirma.Sort(from_stack_1v)
  loc_9F7550: FFree1Str var_8C
  loc_9F7553: LitStr "formulario que contiene """
  loc_9F7556: FLdRfVar var_8C
  loc_9F7559: FLdPr Me
  loc_9F755C: VCallAd Control_ID_FiltroTxt
  loc_9F755F: FStAdFunc var_88
  loc_9F7562: FLdPr var_88
  loc_9F7565:  = Me.Text
  loc_9F756A: ILdRf var_8C
  loc_9F756D: ConcatStr
  loc_9F756E: FStStrNoPop var_90
  loc_9F7571: LitStr """"
  loc_9F7574: ConcatStr
  loc_9F7575: FStStrNoPop var_98
  loc_9F7578: FLdPr Me
  loc_9F757B: MemStStrCopy
  loc_9F757F: FFreeStr var_8C = "": var_90 = ""
  loc_9F7588: FFree1Ad var_88
  loc_9F758B: Branch loc_9F75B2
  loc_9F758E: LitStr vbNullString
  loc_9F7591: FStStrCopy var_8C
  loc_9F7594: FLdRfVar var_8C
  loc_9F7597: FLdPr Me
  loc_9F759A: MemLdRfVar from_stack_1.global_52
  loc_9F759D: NewIfNullPr clsfirma
  loc_9F75A0: Call clsfirma.Filter(from_stack_1v)
  loc_9F75A5: FFree1Str var_8C
  loc_9F75A8: LitStr vbNullString
  loc_9F75AB: FLdPr Me
  loc_9F75AE: MemStStrCopy
  loc_9F75B2: FLdPr Me
  loc_9F75B5: VCallAd Control_ID_dgdABMS
  loc_9F75B8: FStAdFunc var_9C
  loc_9F75BB: LitI4 0
  loc_9F75C0: FStStrCopy var_8C
  loc_9F75C3: FLdRfVar var_8C
  loc_9F75C6: FLdPr Me
  loc_9F75C9: MemLdStr global_64
  loc_9F75CC: FLdZeroAd var_9C
  loc_9F75CF: FStAdFunc var_88
  loc_9F75D2: FLdRfVar var_88
  loc_9F75D5: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_9F75DA: FFree1Str var_8C
  loc_9F75DD: FFreeAd var_88 = ""
  loc_9F75E4: ExitProcHresult
End Sub

Private Sub FiltroTxt_GotFocus() '94DCB8
  'Data Table: 4CAE44
  loc_94DCA4: FLdPr Me
  loc_94DCA7: VCallAd Control_ID_FiltroTxt
  loc_94DCAA: CVarAd
  loc_94DCAE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94DCB3: FFree1Var var_94 = ""
  loc_94DCB6: ExitProcHresult
End Sub

Private Sub FechFirmCmd_Click() '993678
  'Data Table: 4CAE44
  loc_993624: LitVar_Missing var_A4
  loc_993627: PopAdLdVar
  loc_993628: LitVarI4
  loc_993630: PopAdLdVar
  loc_993631: ImpAdLdRf MemVar_C3D9A8
  loc_993634: NewIfNullPr frmCalendario
  loc_993637: frmCalendario.Show from_stack_1, from_stack_2
  loc_99363C: ImpAdLdI4 MemVar_C3D038
  loc_99363F: LitStr vbNullString
  loc_993642: NeStr
  loc_993644: BranchF loc_993662
  loc_993647: ImpAdLdRf MemVar_C3D038
  loc_99364A: CDargRef
  loc_99364E: FLdPr Me
  loc_993651: VCallAd Control_ID_FechFirmMsk
  loc_993654: FStAdFunc var_A8
  loc_993657: FLdPr var_A8
  loc_99365A: LateIdSt
  loc_99365F: FFree1Ad var_A8
  loc_993662: FLdPr Me
  loc_993665: VCallAd Control_ID_FechFirmMsk
  loc_993668: CVarAd
  loc_99366C: ImpAdCallFPR4 Proc_261_5_9BDB84()
  loc_993671: FFree1Var var_B8 = ""
  loc_993674: ExitProcHresult
End Sub

Private Sub CcdoFirmCmd_Click() '9EB64C
  'Data Table: 4CAE44
  loc_9EB528: LitVar_Missing var_A4
  loc_9EB52B: PopAdLdVar
  loc_9EB52C: LitVarI4
  loc_9EB534: PopAdLdVar
  loc_9EB535: ImpAdLdRf MemVar_C3D738
  loc_9EB538: NewIfNullPr bscPersonas
  loc_9EB53B: bscPersonas.Show from_stack_1, from_stack_2
  loc_9EB540: FLdRfVar var_AC
  loc_9EB543: FLdRfVar var_A8
  loc_9EB546: ImpAdLdRf MemVar_C3D738
  loc_9EB549: NewIfNullPr bscPersonas
  loc_9EB54C: from_stack_1v = bscPersonas.global_4297692Get()
  loc_9EB551: FLdPr var_A8
  loc_9EB554: from_stack_1 = clsbase.RecordCount
  loc_9EB559: ILdRf var_AC
  loc_9EB55C: LitI4 0
  loc_9EB561: GtI4
  loc_9EB562: FFree1Ad var_A8
  loc_9EB565: BranchF loc_9EB63E
  loc_9EB568: FLdRfVar var_C8
  loc_9EB56B: FLdRfVar var_B8
  loc_9EB56E: LitVarStr var_94, "CucuPers"
  loc_9EB573: PopAdLdVar
  loc_9EB574: FLdRfVar var_B4
  loc_9EB577: FLdRfVar var_B0
  loc_9EB57A: FLdRfVar var_A8
  loc_9EB57D: ImpAdLdRf MemVar_C3D738
  loc_9EB580: NewIfNullPr bscPersonas
  loc_9EB583: from_stack_1v = bscPersonas.global_4297692Get()
  loc_9EB588: FLdPr var_A8
  loc_9EB58B: from_stack_1v = clsbase.RsFrmGet()
  loc_9EB590: FLdPr var_B0
  loc_9EB593:  = Me.Fields
  loc_9EB598: FLdPr var_B4
  loc_9EB59B: from_stack_2 = Me.Item(from_stack_1)
  loc_9EB5A0: FLdPr var_B8
  loc_9EB5A3:  = Me.Value
  loc_9EB5A8: FLdRfVar var_C8
  loc_9EB5AB: CStrVarTmp
  loc_9EB5AC: FStStrNoPop var_CC
  loc_9EB5AF: FLdPr Me
  loc_9EB5B2: VCallAd Control_ID_CcdoFirmTxt
  loc_9EB5B5: FStAdFunc var_D0
  loc_9EB5B8: FLdPr var_D0
  loc_9EB5BB: Me.Text = from_stack_1
  loc_9EB5C0: FFree1Str var_CC
  loc_9EB5C3: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9EB5D0: FFree1Var var_C8 = ""
  loc_9EB5D3: FLdRfVar var_C8
  loc_9EB5D6: FLdRfVar var_B8
  loc_9EB5D9: LitVarStr var_94, "DetaPers"
  loc_9EB5DE: PopAdLdVar
  loc_9EB5DF: FLdRfVar var_B4
  loc_9EB5E2: FLdRfVar var_B0
  loc_9EB5E5: FLdRfVar var_A8
  loc_9EB5E8: ImpAdLdRf MemVar_C3D738
  loc_9EB5EB: NewIfNullPr bscPersonas
  loc_9EB5EE: from_stack_1v = bscPersonas.global_4297692Get()
  loc_9EB5F3: FLdPr var_A8
  loc_9EB5F6: from_stack_1v = clsbase.RsFrmGet()
  loc_9EB5FB: FLdPr var_B0
  loc_9EB5FE:  = Me.Fields
  loc_9EB603: FLdPr var_B4
  loc_9EB606: from_stack_2 = Me.Item(from_stack_1)
  loc_9EB60B: FLdPr var_B8
  loc_9EB60E:  = Me.Value
  loc_9EB613: FLdRfVar var_C8
  loc_9EB616: CStrVarTmp
  loc_9EB617: FStStrNoPop var_CC
  loc_9EB61A: FLdPr Me
  loc_9EB61D: VCallAd Control_ID_DedoPersLbl
  loc_9EB620: FStAdFunc var_D0
  loc_9EB623: FLdPr var_D0
  loc_9EB626: Me.Caption = from_stack_1
  loc_9EB62B: FFree1Str var_CC
  loc_9EB62E: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9EB63B: FFree1Var var_C8 = ""
  loc_9EB63E: LitI2_Byte 0
  loc_9EB640: PopTmpLdAd2 var_D2
  loc_9EB643: Call CcdoFirmTxt_Validate(from_stack_1v)
  loc_9EB648: ExitProcHresult
End Sub

Private Sub CcunFirmCmd_Click() '9EBC0C
  'Data Table: 4CAE44
  loc_9EBAE8: LitVar_Missing var_A4
  loc_9EBAEB: PopAdLdVar
  loc_9EBAEC: LitVarI4
  loc_9EBAF4: PopAdLdVar
  loc_9EBAF5: ImpAdLdRf MemVar_C3D738
  loc_9EBAF8: NewIfNullPr bscPersonas
  loc_9EBAFB: bscPersonas.Show from_stack_1, from_stack_2
  loc_9EBB00: FLdRfVar var_AC
  loc_9EBB03: FLdRfVar var_A8
  loc_9EBB06: ImpAdLdRf MemVar_C3D738
  loc_9EBB09: NewIfNullPr bscPersonas
  loc_9EBB0C: from_stack_1v = bscPersonas.global_4297692Get()
  loc_9EBB11: FLdPr var_A8
  loc_9EBB14: from_stack_1 = clsbase.RecordCount
  loc_9EBB19: ILdRf var_AC
  loc_9EBB1C: LitI4 0
  loc_9EBB21: GtI4
  loc_9EBB22: FFree1Ad var_A8
  loc_9EBB25: BranchF loc_9EBBFE
  loc_9EBB28: FLdRfVar var_C8
  loc_9EBB2B: FLdRfVar var_B8
  loc_9EBB2E: LitVarStr var_94, "CucuPers"
  loc_9EBB33: PopAdLdVar
  loc_9EBB34: FLdRfVar var_B4
  loc_9EBB37: FLdRfVar var_B0
  loc_9EBB3A: FLdRfVar var_A8
  loc_9EBB3D: ImpAdLdRf MemVar_C3D738
  loc_9EBB40: NewIfNullPr bscPersonas
  loc_9EBB43: from_stack_1v = bscPersonas.global_4297692Get()
  loc_9EBB48: FLdPr var_A8
  loc_9EBB4B: from_stack_1v = clsbase.RsFrmGet()
  loc_9EBB50: FLdPr var_B0
  loc_9EBB53:  = Me.Fields
  loc_9EBB58: FLdPr var_B4
  loc_9EBB5B: from_stack_2 = Me.Item(from_stack_1)
  loc_9EBB60: FLdPr var_B8
  loc_9EBB63:  = Me.Value
  loc_9EBB68: FLdRfVar var_C8
  loc_9EBB6B: CStrVarTmp
  loc_9EBB6C: FStStrNoPop var_CC
  loc_9EBB6F: FLdPr Me
  loc_9EBB72: VCallAd Control_ID_CcunFirmTxt
  loc_9EBB75: FStAdFunc var_D0
  loc_9EBB78: FLdPr var_D0
  loc_9EBB7B: Me.Text = from_stack_1
  loc_9EBB80: FFree1Str var_CC
  loc_9EBB83: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9EBB90: FFree1Var var_C8 = ""
  loc_9EBB93: FLdRfVar var_C8
  loc_9EBB96: FLdRfVar var_B8
  loc_9EBB99: LitVarStr var_94, "DetaPers"
  loc_9EBB9E: PopAdLdVar
  loc_9EBB9F: FLdRfVar var_B4
  loc_9EBBA2: FLdRfVar var_B0
  loc_9EBBA5: FLdRfVar var_A8
  loc_9EBBA8: ImpAdLdRf MemVar_C3D738
  loc_9EBBAB: NewIfNullPr bscPersonas
  loc_9EBBAE: from_stack_1v = bscPersonas.global_4297692Get()
  loc_9EBBB3: FLdPr var_A8
  loc_9EBBB6: from_stack_1v = clsbase.RsFrmGet()
  loc_9EBBBB: FLdPr var_B0
  loc_9EBBBE:  = Me.Fields
  loc_9EBBC3: FLdPr var_B4
  loc_9EBBC6: from_stack_2 = Me.Item(from_stack_1)
  loc_9EBBCB: FLdPr var_B8
  loc_9EBBCE:  = Me.Value
  loc_9EBBD3: FLdRfVar var_C8
  loc_9EBBD6: CStrVarTmp
  loc_9EBBD7: FStStrNoPop var_CC
  loc_9EBBDA: FLdPr Me
  loc_9EBBDD: VCallAd Control_ID_DeunPersLbl
  loc_9EBBE0: FStAdFunc var_D0
  loc_9EBBE3: FLdPr var_D0
  loc_9EBBE6: Me.Caption = from_stack_1
  loc_9EBBEB: FFree1Str var_CC
  loc_9EBBEE: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9EBBFB: FFree1Var var_C8 = ""
  loc_9EBBFE: LitI2_Byte 0
  loc_9EBC00: PopTmpLdAd2 var_D2
  loc_9EBC03: Call CcunFirmTxt_Validate(from_stack_1v)
  loc_9EBC08: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '9C98E8
  'Data Table: 4CAE44
  loc_9C9814: LitI2_Byte 0
  loc_9C9816: CUI1I2
  loc_9C9818: FLdPr Me
  loc_9C981B: MemStUI1
  loc_9C981F: ILdRf Me
  loc_9C9822: CastAd
  loc_9C9825: FStAdFunc var_88
  loc_9C9828: FLdRfVar var_88
  loc_9C982B: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9C9830: FFree1Ad var_88
  loc_9C9833: LitI4 0
  loc_9C9838: LitI4 0
  loc_9C983D: FLdRfVar var_8C
  loc_9C9840: Redim
  loc_9C984A: FLdPr Me
  loc_9C984D: VCallAd Control_ID_dgdABMS
  loc_9C9850: CVarAd
  loc_9C9854: ParmAry1St
  loc_9C985A: FLdRfVar var_8C
  loc_9C985D: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9C9862: FLdRfVar var_8C
  loc_9C9865: Erase
  loc_9C9866: FLdPr Me
  loc_9C9869: MemLdRfVar from_stack_1.global_52
  loc_9C986C: NewIfNullAd
  loc_9C986F: FStAd var_A0 
  loc_9C9873: FLdRfVar var_A0
  loc_9C9876: CVarRef
  loc_9C987B: ILdRf Me
  loc_9C987E: CastAd
  loc_9C9881: FStAdFunc var_88
  loc_9C9884: FLdRfVar var_88
  loc_9C9887: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_9C988C: ILdRf var_A0
  loc_9C988F: CastAd
  loc_9C9892: FLdPr Me
  loc_9C9895: MemStAdFunc
  loc_9C9899: FFreeAd var_88 = ""
  loc_9C98A0: ILdRf Me
  loc_9C98A3: CastAd
  loc_9C98A6: FStAdFunc var_88
  loc_9C98A9: FLdRfVar var_88
  loc_9C98AC: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9C98B1: FFree1Ad var_88
  loc_9C98B4: FLdPr Me
  loc_9C98B7: VCallAd Control_ID_dgdABMS
  loc_9C98BA: FStAdFunc var_A0
  loc_9C98BD: LitI4 0
  loc_9C98C2: FStStrCopy var_B4
  loc_9C98C5: FLdRfVar var_B4
  loc_9C98C8: FLdPr Me
  loc_9C98CB: MemLdStr global_64
  loc_9C98CE: FLdZeroAd var_A0
  loc_9C98D1: FStAdFunc var_88
  loc_9C98D4: FLdRfVar var_88
  loc_9C98D7: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_9C98DC: FFree1Str var_B4
  loc_9C98DF: FFreeAd var_88 = ""
  loc_9C98E6: ExitProcHresult
End Sub

Private Sub CctrFirmCmd_Click() '9EB4DC
  'Data Table: 4CAE44
  loc_9EB3B8: LitVar_Missing var_A4
  loc_9EB3BB: PopAdLdVar
  loc_9EB3BC: LitVarI4
  loc_9EB3C4: PopAdLdVar
  loc_9EB3C5: ImpAdLdRf MemVar_C3D738
  loc_9EB3C8: NewIfNullPr bscPersonas
  loc_9EB3CB: bscPersonas.Show from_stack_1, from_stack_2
  loc_9EB3D0: FLdRfVar var_AC
  loc_9EB3D3: FLdRfVar var_A8
  loc_9EB3D6: ImpAdLdRf MemVar_C3D738
  loc_9EB3D9: NewIfNullPr bscPersonas
  loc_9EB3DC: from_stack_1v = bscPersonas.global_4297692Get()
  loc_9EB3E1: FLdPr var_A8
  loc_9EB3E4: from_stack_1 = clsbase.RecordCount
  loc_9EB3E9: ILdRf var_AC
  loc_9EB3EC: LitI4 0
  loc_9EB3F1: GtI4
  loc_9EB3F2: FFree1Ad var_A8
  loc_9EB3F5: BranchF loc_9EB4CE
  loc_9EB3F8: FLdRfVar var_C8
  loc_9EB3FB: FLdRfVar var_B8
  loc_9EB3FE: LitVarStr var_94, "CucuPers"
  loc_9EB403: PopAdLdVar
  loc_9EB404: FLdRfVar var_B4
  loc_9EB407: FLdRfVar var_B0
  loc_9EB40A: FLdRfVar var_A8
  loc_9EB40D: ImpAdLdRf MemVar_C3D738
  loc_9EB410: NewIfNullPr bscPersonas
  loc_9EB413: from_stack_1v = bscPersonas.global_4297692Get()
  loc_9EB418: FLdPr var_A8
  loc_9EB41B: from_stack_1v = clsbase.RsFrmGet()
  loc_9EB420: FLdPr var_B0
  loc_9EB423:  = Me.Fields
  loc_9EB428: FLdPr var_B4
  loc_9EB42B: from_stack_2 = Me.Item(from_stack_1)
  loc_9EB430: FLdPr var_B8
  loc_9EB433:  = Me.Value
  loc_9EB438: FLdRfVar var_C8
  loc_9EB43B: CStrVarTmp
  loc_9EB43C: FStStrNoPop var_CC
  loc_9EB43F: FLdPr Me
  loc_9EB442: VCallAd Control_ID_CctrFirmTxt
  loc_9EB445: FStAdFunc var_D0
  loc_9EB448: FLdPr var_D0
  loc_9EB44B: Me.Text = from_stack_1
  loc_9EB450: FFree1Str var_CC
  loc_9EB453: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9EB460: FFree1Var var_C8 = ""
  loc_9EB463: FLdRfVar var_C8
  loc_9EB466: FLdRfVar var_B8
  loc_9EB469: LitVarStr var_94, "DetaPers"
  loc_9EB46E: PopAdLdVar
  loc_9EB46F: FLdRfVar var_B4
  loc_9EB472: FLdRfVar var_B0
  loc_9EB475: FLdRfVar var_A8
  loc_9EB478: ImpAdLdRf MemVar_C3D738
  loc_9EB47B: NewIfNullPr bscPersonas
  loc_9EB47E: from_stack_1v = bscPersonas.global_4297692Get()
  loc_9EB483: FLdPr var_A8
  loc_9EB486: from_stack_1v = clsbase.RsFrmGet()
  loc_9EB48B: FLdPr var_B0
  loc_9EB48E:  = Me.Fields
  loc_9EB493: FLdPr var_B4
  loc_9EB496: from_stack_2 = Me.Item(from_stack_1)
  loc_9EB49B: FLdPr var_B8
  loc_9EB49E:  = Me.Value
  loc_9EB4A3: FLdRfVar var_C8
  loc_9EB4A6: CStrVarTmp
  loc_9EB4A7: FStStrNoPop var_CC
  loc_9EB4AA: FLdPr Me
  loc_9EB4AD: VCallAd Control_ID_DetrPersLbl
  loc_9EB4B0: FStAdFunc var_D0
  loc_9EB4B3: FLdPr var_D0
  loc_9EB4B6: Me.Caption = from_stack_1
  loc_9EB4BB: FFree1Str var_CC
  loc_9EB4BE: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9EB4CB: FFree1Var var_C8 = ""
  loc_9EB4CE: LitI2_Byte 0
  loc_9EB4D0: PopTmpLdAd2 var_D2
  loc_9EB4D3: Call CctrFirmTxt_Validate(from_stack_1v)
  loc_9EB4D8: ExitProcHresult
End Sub

Private Sub CccuFirmCmd_Click() '9EB7BC
  'Data Table: 4CAE44
  loc_9EB698: LitVar_Missing var_A4
  loc_9EB69B: PopAdLdVar
  loc_9EB69C: LitVarI4
  loc_9EB6A4: PopAdLdVar
  loc_9EB6A5: ImpAdLdRf MemVar_C3D738
  loc_9EB6A8: NewIfNullPr bscPersonas
  loc_9EB6AB: bscPersonas.Show from_stack_1, from_stack_2
  loc_9EB6B0: FLdRfVar var_AC
  loc_9EB6B3: FLdRfVar var_A8
  loc_9EB6B6: ImpAdLdRf MemVar_C3D738
  loc_9EB6B9: NewIfNullPr bscPersonas
  loc_9EB6BC: from_stack_1v = bscPersonas.global_4297692Get()
  loc_9EB6C1: FLdPr var_A8
  loc_9EB6C4: from_stack_1 = clsbase.RecordCount
  loc_9EB6C9: ILdRf var_AC
  loc_9EB6CC: LitI4 0
  loc_9EB6D1: GtI4
  loc_9EB6D2: FFree1Ad var_A8
  loc_9EB6D5: BranchF loc_9EB7AE
  loc_9EB6D8: FLdRfVar var_C8
  loc_9EB6DB: FLdRfVar var_B8
  loc_9EB6DE: LitVarStr var_94, "CucuPers"
  loc_9EB6E3: PopAdLdVar
  loc_9EB6E4: FLdRfVar var_B4
  loc_9EB6E7: FLdRfVar var_B0
  loc_9EB6EA: FLdRfVar var_A8
  loc_9EB6ED: ImpAdLdRf MemVar_C3D738
  loc_9EB6F0: NewIfNullPr bscPersonas
  loc_9EB6F3: from_stack_1v = bscPersonas.global_4297692Get()
  loc_9EB6F8: FLdPr var_A8
  loc_9EB6FB: from_stack_1v = clsbase.RsFrmGet()
  loc_9EB700: FLdPr var_B0
  loc_9EB703:  = Me.Fields
  loc_9EB708: FLdPr var_B4
  loc_9EB70B: from_stack_2 = Me.Item(from_stack_1)
  loc_9EB710: FLdPr var_B8
  loc_9EB713:  = Me.Value
  loc_9EB718: FLdRfVar var_C8
  loc_9EB71B: CStrVarTmp
  loc_9EB71C: FStStrNoPop var_CC
  loc_9EB71F: FLdPr Me
  loc_9EB722: VCallAd Control_ID_CccuFirmTxt
  loc_9EB725: FStAdFunc var_D0
  loc_9EB728: FLdPr var_D0
  loc_9EB72B: Me.Text = from_stack_1
  loc_9EB730: FFree1Str var_CC
  loc_9EB733: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9EB740: FFree1Var var_C8 = ""
  loc_9EB743: FLdRfVar var_C8
  loc_9EB746: FLdRfVar var_B8
  loc_9EB749: LitVarStr var_94, "DetaPers"
  loc_9EB74E: PopAdLdVar
  loc_9EB74F: FLdRfVar var_B4
  loc_9EB752: FLdRfVar var_B0
  loc_9EB755: FLdRfVar var_A8
  loc_9EB758: ImpAdLdRf MemVar_C3D738
  loc_9EB75B: NewIfNullPr bscPersonas
  loc_9EB75E: from_stack_1v = bscPersonas.global_4297692Get()
  loc_9EB763: FLdPr var_A8
  loc_9EB766: from_stack_1v = clsbase.RsFrmGet()
  loc_9EB76B: FLdPr var_B0
  loc_9EB76E:  = Me.Fields
  loc_9EB773: FLdPr var_B4
  loc_9EB776: from_stack_2 = Me.Item(from_stack_1)
  loc_9EB77B: FLdPr var_B8
  loc_9EB77E:  = Me.Value
  loc_9EB783: FLdRfVar var_C8
  loc_9EB786: CStrVarTmp
  loc_9EB787: FStStrNoPop var_CC
  loc_9EB78A: FLdPr Me
  loc_9EB78D: VCallAd Control_ID_DecuPersLbl
  loc_9EB790: FStAdFunc var_D0
  loc_9EB793: FLdPr var_D0
  loc_9EB796: Me.Caption = from_stack_1
  loc_9EB79B: FFree1Str var_CC
  loc_9EB79E: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9EB7AB: FFree1Var var_C8 = ""
  loc_9EB7AE: LitI2_Byte 0
  loc_9EB7B0: PopTmpLdAd2 var_D2
  loc_9EB7B3: Call CccuFirmTxt_Validate(from_stack_1v)
  loc_9EB7B8: ExitProcHresult
  loc_9EB7B9: MemStFPR4 global_-1280
End Sub

Private Sub CacuFirmTxt_GotFocus() '94DF88
  'Data Table: 4CAE44
  loc_94DF74: FLdPr Me
  loc_94DF77: VCallAd Control_ID_CacuFirmTxt
  loc_94DF7A: CVarAd
  loc_94DF7E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94DF83: FFree1Var var_94 = ""
  loc_94DF86: ExitProcHresult
End Sub

Private Sub CacuFirmTxt_Validate(Cancel As Boolean) '9CDA9C
  'Data Table: 4CAE44
  loc_9CD9C0: FLdRfVar var_8A
  loc_9CD9C3: FLdPr Me
  loc_9CD9C6: VCallAd Control_ID_cmdCancelar
  loc_9CD9C9: FStAdFunc var_88
  loc_9CD9CC: FLdPr var_88
  loc_9CD9CF:  = Me.Value
  loc_9CD9D4: FLdI2 var_8A
  loc_9CD9D7: NotI4
  loc_9CD9D8: FLdRfVar var_92
  loc_9CD9DB: FLdPr Me
  loc_9CD9DE: VCallAd Control_ID_CacuFirmTxt
  loc_9CD9E1: FStAdFunc var_90
  loc_9CD9E4: FLdPr var_90
  loc_9CD9E7:  = Me.Enabled
  loc_9CD9EC: FLdI2 var_92
  loc_9CD9EF: AndI4
  loc_9CD9F0: FLdRfVar var_9C
  loc_9CD9F3: FLdPr Me
  loc_9CD9F6: VCallAd Control_ID_CacuFirmTxt
  loc_9CD9F9: FStAdFunc var_98
  loc_9CD9FC: FLdPr var_98
  loc_9CD9FF:  = Me.Text
  loc_9CDA04: ILdRf var_9C
  loc_9CDA07: LitStr vbNullString
  loc_9CDA0A: NeStr
  loc_9CDA0C: AndI4
  loc_9CDA0D: FFree1Str var_9C
  loc_9CDA10: FFreeAd var_88 = "": var_90 = ""
  loc_9CDA19: BranchF loc_9CDA9A
  loc_9CDA1C: FLdRfVar var_9C
  loc_9CDA1F: FLdPr Me
  loc_9CDA22: VCallAd Control_ID_CacuFirmTxt
  loc_9CDA25: FStAdFunc var_88
  loc_9CDA28: FLdPr var_88
  loc_9CDA2B:  = Me.Text
  loc_9CDA30: LitI2_Byte 0
  loc_9CDA32: PopTmpLdAd2 var_9E
  loc_9CDA35: LitI2_Byte 0
  loc_9CDA37: PopTmpLdAd2 var_92
  loc_9CDA3A: LitI2_Byte 0
  loc_9CDA3C: PopTmpLdAd2 var_8A
  loc_9CDA3F: ILdRf var_9C
  loc_9CDA42: LitStr "Firmante 4"
  loc_9CDA45: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9CDA4A: FStStrNoPop var_A4
  loc_9CDA4D: FLdPr Me
  loc_9CDA50: MemStStrCopy
  loc_9CDA54: FFreeStr var_9C = ""
  loc_9CDA5B: FFree1Ad var_88
  loc_9CDA5E: FLdPr Me
  loc_9CDA61: VCallAd Control_ID_CacuFirmTxt
  loc_9CDA64: FStAdFunc var_A8
  loc_9CDA67: LitNothing
  loc_9CDA69: CastAd
  loc_9CDA6C: FStAdFunc var_98
  loc_9CDA6F: FLdRfVar var_98
  loc_9CDA72: FLdZeroAd var_A8
  loc_9CDA75: FStAdFuncNoPop
  loc_9CDA78: CastAd
  loc_9CDA7B: FStAdFunc var_90
  loc_9CDA7E: FLdRfVar var_90
  loc_9CDA81: FLdPr Me
  loc_9CDA84: MemLdRfVar from_stack_1.global_60
  loc_9CDA87: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CDA8C: IStI2 Cancel
  loc_9CDA8F: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9CDA9A: ExitProcHresult
End Sub

Private Sub CadoFirmTxt_GotFocus() '94DF40
  'Data Table: 4CAE44
  loc_94DF2C: FLdPr Me
  loc_94DF2F: VCallAd Control_ID_CadoFirmTxt
  loc_94DF32: CVarAd
  loc_94DF36: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94DF3B: FFree1Var var_94 = ""
  loc_94DF3E: ExitProcHresult
End Sub

Private Sub CadoFirmTxt_Validate(Cancel As Boolean) '9CBCF4
  'Data Table: 4CAE44
  loc_9CBC18: FLdRfVar var_8A
  loc_9CBC1B: FLdPr Me
  loc_9CBC1E: VCallAd Control_ID_cmdCancelar
  loc_9CBC21: FStAdFunc var_88
  loc_9CBC24: FLdPr var_88
  loc_9CBC27:  = Me.Value
  loc_9CBC2C: FLdI2 var_8A
  loc_9CBC2F: NotI4
  loc_9CBC30: FLdRfVar var_92
  loc_9CBC33: FLdPr Me
  loc_9CBC36: VCallAd Control_ID_CadoFirmTxt
  loc_9CBC39: FStAdFunc var_90
  loc_9CBC3C: FLdPr var_90
  loc_9CBC3F:  = Me.Enabled
  loc_9CBC44: FLdI2 var_92
  loc_9CBC47: AndI4
  loc_9CBC48: FLdRfVar var_9C
  loc_9CBC4B: FLdPr Me
  loc_9CBC4E: VCallAd Control_ID_CadoFirmTxt
  loc_9CBC51: FStAdFunc var_98
  loc_9CBC54: FLdPr var_98
  loc_9CBC57:  = Me.Text
  loc_9CBC5C: ILdRf var_9C
  loc_9CBC5F: LitStr vbNullString
  loc_9CBC62: NeStr
  loc_9CBC64: AndI4
  loc_9CBC65: FFree1Str var_9C
  loc_9CBC68: FFreeAd var_88 = "": var_90 = ""
  loc_9CBC71: BranchF loc_9CBCF2
  loc_9CBC74: FLdRfVar var_9C
  loc_9CBC77: FLdPr Me
  loc_9CBC7A: VCallAd Control_ID_CadoFirmTxt
  loc_9CBC7D: FStAdFunc var_88
  loc_9CBC80: FLdPr var_88
  loc_9CBC83:  = Me.Text
  loc_9CBC88: LitI2_Byte 0
  loc_9CBC8A: PopTmpLdAd2 var_9E
  loc_9CBC8D: LitI2_Byte 0
  loc_9CBC8F: PopTmpLdAd2 var_92
  loc_9CBC92: LitI2_Byte 0
  loc_9CBC94: PopTmpLdAd2 var_8A
  loc_9CBC97: ILdRf var_9C
  loc_9CBC9A: LitStr "Firmante 2"
  loc_9CBC9D: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9CBCA2: FStStrNoPop var_A4
  loc_9CBCA5: FLdPr Me
  loc_9CBCA8: MemStStrCopy
  loc_9CBCAC: FFreeStr var_9C = ""
  loc_9CBCB3: FFree1Ad var_88
  loc_9CBCB6: FLdPr Me
  loc_9CBCB9: VCallAd Control_ID_CadoFirmTxt
  loc_9CBCBC: FStAdFunc var_A8
  loc_9CBCBF: LitNothing
  loc_9CBCC1: CastAd
  loc_9CBCC4: FStAdFunc var_98
  loc_9CBCC7: FLdRfVar var_98
  loc_9CBCCA: FLdZeroAd var_A8
  loc_9CBCCD: FStAdFuncNoPop
  loc_9CBCD0: CastAd
  loc_9CBCD3: FStAdFunc var_90
  loc_9CBCD6: FLdRfVar var_90
  loc_9CBCD9: FLdPr Me
  loc_9CBCDC: MemLdRfVar from_stack_1.global_60
  loc_9CBCDF: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CBCE4: IStI2 Cancel
  loc_9CBCE7: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9CBCF2: ExitProcHresult
End Sub

Private Sub CatrFirmTxt_GotFocus() '94DEF8
  'Data Table: 4CAE44
  loc_94DEE4: FLdPr Me
  loc_94DEE7: VCallAd Control_ID_CatrFirmTxt
  loc_94DEEA: CVarAd
  loc_94DEEE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94DEF3: FFree1Var var_94 = ""
  loc_94DEF6: ExitProcHresult
End Sub

Private Sub CatrFirmTxt_Validate(Cancel As Boolean) '9CD058
  'Data Table: 4CAE44
  loc_9CCF7C: FLdRfVar var_8A
  loc_9CCF7F: FLdPr Me
  loc_9CCF82: VCallAd Control_ID_cmdCancelar
  loc_9CCF85: FStAdFunc var_88
  loc_9CCF88: FLdPr var_88
  loc_9CCF8B:  = Me.Value
  loc_9CCF90: FLdI2 var_8A
  loc_9CCF93: NotI4
  loc_9CCF94: FLdRfVar var_92
  loc_9CCF97: FLdPr Me
  loc_9CCF9A: VCallAd Control_ID_CatrFirmTxt
  loc_9CCF9D: FStAdFunc var_90
  loc_9CCFA0: FLdPr var_90
  loc_9CCFA3:  = Me.Enabled
  loc_9CCFA8: FLdI2 var_92
  loc_9CCFAB: AndI4
  loc_9CCFAC: FLdRfVar var_9C
  loc_9CCFAF: FLdPr Me
  loc_9CCFB2: VCallAd Control_ID_CatrFirmTxt
  loc_9CCFB5: FStAdFunc var_98
  loc_9CCFB8: FLdPr var_98
  loc_9CCFBB:  = Me.Text
  loc_9CCFC0: ILdRf var_9C
  loc_9CCFC3: LitStr vbNullString
  loc_9CCFC6: NeStr
  loc_9CCFC8: AndI4
  loc_9CCFC9: FFree1Str var_9C
  loc_9CCFCC: FFreeAd var_88 = "": var_90 = ""
  loc_9CCFD5: BranchF loc_9CD056
  loc_9CCFD8: FLdRfVar var_9C
  loc_9CCFDB: FLdPr Me
  loc_9CCFDE: VCallAd Control_ID_CatrFirmTxt
  loc_9CCFE1: FStAdFunc var_88
  loc_9CCFE4: FLdPr var_88
  loc_9CCFE7:  = Me.Text
  loc_9CCFEC: LitI2_Byte 0
  loc_9CCFEE: PopTmpLdAd2 var_9E
  loc_9CCFF1: LitI2_Byte 0
  loc_9CCFF3: PopTmpLdAd2 var_92
  loc_9CCFF6: LitI2_Byte 0
  loc_9CCFF8: PopTmpLdAd2 var_8A
  loc_9CCFFB: ILdRf var_9C
  loc_9CCFFE: LitStr "Firmante 3"
  loc_9CD001: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9CD006: FStStrNoPop var_A4
  loc_9CD009: FLdPr Me
  loc_9CD00C: MemStStrCopy
  loc_9CD010: FFreeStr var_9C = ""
  loc_9CD017: FFree1Ad var_88
  loc_9CD01A: FLdPr Me
  loc_9CD01D: VCallAd Control_ID_CatrFirmTxt
  loc_9CD020: FStAdFunc var_A8
  loc_9CD023: LitNothing
  loc_9CD025: CastAd
  loc_9CD028: FStAdFunc var_98
  loc_9CD02B: FLdRfVar var_98
  loc_9CD02E: FLdZeroAd var_A8
  loc_9CD031: FStAdFuncNoPop
  loc_9CD034: CastAd
  loc_9CD037: FStAdFunc var_90
  loc_9CD03A: FLdRfVar var_90
  loc_9CD03D: FLdPr Me
  loc_9CD040: MemLdRfVar from_stack_1.global_60
  loc_9CD043: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CD048: IStI2 Cancel
  loc_9CD04B: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9CD056: ExitProcHresult
End Sub

Private Sub CaunFirmTxt_GotFocus() '94DEB0
  'Data Table: 4CAE44
  loc_94DE9C: FLdPr Me
  loc_94DE9F: VCallAd Control_ID_CaunFirmTxt
  loc_94DEA2: CVarAd
  loc_94DEA6: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94DEAB: FFree1Var var_94 = ""
  loc_94DEAE: ExitProcHresult
End Sub

Private Sub CaunFirmTxt_Validate(Cancel As Boolean) '9CCCEC
  'Data Table: 4CAE44
  loc_9CCC10: FLdRfVar var_8A
  loc_9CCC13: FLdPr Me
  loc_9CCC16: VCallAd Control_ID_cmdCancelar
  loc_9CCC19: FStAdFunc var_88
  loc_9CCC1C: FLdPr var_88
  loc_9CCC1F:  = Me.Value
  loc_9CCC24: FLdI2 var_8A
  loc_9CCC27: NotI4
  loc_9CCC28: FLdRfVar var_92
  loc_9CCC2B: FLdPr Me
  loc_9CCC2E: VCallAd Control_ID_CaunFirmTxt
  loc_9CCC31: FStAdFunc var_90
  loc_9CCC34: FLdPr var_90
  loc_9CCC37:  = Me.Enabled
  loc_9CCC3C: FLdI2 var_92
  loc_9CCC3F: AndI4
  loc_9CCC40: FLdRfVar var_9C
  loc_9CCC43: FLdPr Me
  loc_9CCC46: VCallAd Control_ID_CaunFirmTxt
  loc_9CCC49: FStAdFunc var_98
  loc_9CCC4C: FLdPr var_98
  loc_9CCC4F:  = Me.Text
  loc_9CCC54: ILdRf var_9C
  loc_9CCC57: LitStr vbNullString
  loc_9CCC5A: NeStr
  loc_9CCC5C: AndI4
  loc_9CCC5D: FFree1Str var_9C
  loc_9CCC60: FFreeAd var_88 = "": var_90 = ""
  loc_9CCC69: BranchF loc_9CCCEA
  loc_9CCC6C: FLdRfVar var_9C
  loc_9CCC6F: FLdPr Me
  loc_9CCC72: VCallAd Control_ID_CaunFirmTxt
  loc_9CCC75: FStAdFunc var_88
  loc_9CCC78: FLdPr var_88
  loc_9CCC7B:  = Me.Text
  loc_9CCC80: LitI2_Byte 0
  loc_9CCC82: PopTmpLdAd2 var_9E
  loc_9CCC85: LitI2_Byte 0
  loc_9CCC87: PopTmpLdAd2 var_92
  loc_9CCC8A: LitI2_Byte 0
  loc_9CCC8C: PopTmpLdAd2 var_8A
  loc_9CCC8F: ILdRf var_9C
  loc_9CCC92: LitStr "Firmante 1"
  loc_9CCC95: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9CCC9A: FStStrNoPop var_A4
  loc_9CCC9D: FLdPr Me
  loc_9CCCA0: MemStStrCopy
  loc_9CCCA4: FFreeStr var_9C = ""
  loc_9CCCAB: FFree1Ad var_88
  loc_9CCCAE: FLdPr Me
  loc_9CCCB1: VCallAd Control_ID_CaunFirmTxt
  loc_9CCCB4: FStAdFunc var_A8
  loc_9CCCB7: LitNothing
  loc_9CCCB9: CastAd
  loc_9CCCBC: FStAdFunc var_98
  loc_9CCCBF: FLdRfVar var_98
  loc_9CCCC2: FLdZeroAd var_A8
  loc_9CCCC5: FStAdFuncNoPop
  loc_9CCCC8: CastAd
  loc_9CCCCB: FStAdFunc var_90
  loc_9CCCCE: FLdRfVar var_90
  loc_9CCCD1: FLdPr Me
  loc_9CCCD4: MemLdRfVar from_stack_1.global_60
  loc_9CCCD7: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CCCDC: IStI2 Cancel
  loc_9CCCDF: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9CCCEA: ExitProcHresult
End Sub

Private Sub CccuFirmTxt_GotFocus() '94DE68
  'Data Table: 4CAE44
  loc_94DE54: FLdPr Me
  loc_94DE57: VCallAd Control_ID_CccuFirmTxt
  loc_94DE5A: CVarAd
  loc_94DE5E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94DE63: FFree1Var var_94 = ""
  loc_94DE66: ExitProcHresult
End Sub

Private Sub CccuFirmTxt_Validate(Cancel As Boolean) '9E0314
  'Data Table: 4CAE44
  loc_9E020C: FLdRfVar var_8A
  loc_9E020F: FLdPr Me
  loc_9E0212: VCallAd Control_ID_cmdCancelar
  loc_9E0215: FStAdFunc var_88
  loc_9E0218: FLdPr var_88
  loc_9E021B:  = Me.Value
  loc_9E0220: FLdI2 var_8A
  loc_9E0223: NotI4
  loc_9E0224: FLdRfVar var_92
  loc_9E0227: FLdPr Me
  loc_9E022A: VCallAd Control_ID_CccuFirmTxt
  loc_9E022D: FStAdFunc var_90
  loc_9E0230: FLdPr var_90
  loc_9E0233:  = Me.Enabled
  loc_9E0238: FLdI2 var_92
  loc_9E023B: AndI4
  loc_9E023C: FLdRfVar var_9C
  loc_9E023F: FLdPr Me
  loc_9E0242: VCallAd Control_ID_CccuFirmTxt
  loc_9E0245: FStAdFunc var_98
  loc_9E0248: FLdPr var_98
  loc_9E024B:  = Me.Text
  loc_9E0250: ILdRf var_9C
  loc_9E0253: LitStr "0"
  loc_9E0256: NeStr
  loc_9E0258: AndI4
  loc_9E0259: FFree1Str var_9C
  loc_9E025C: FFreeAd var_88 = "": var_90 = ""
  loc_9E0265: BranchF loc_9E0311
  loc_9E0268: FLdRfVar var_9C
  loc_9E026B: FLdPr Me
  loc_9E026E: VCallAd Control_ID_CccuFirmTxt
  loc_9E0271: FStAdFunc var_88
  loc_9E0274: FLdPr var_88
  loc_9E0277:  = Me.Text
  loc_9E027C: FLdPr Me
  loc_9E027F: MemLdRfVar from_stack_1.global_68
  loc_9E0282: NewIfNullRf
  loc_9E0286: ILdRf var_9C
  loc_9E0289: ImpAdCallI2 Proc_266_16_994244(, )
  loc_9E028E: FStStrNoPop var_A0
  loc_9E0291: FLdPr Me
  loc_9E0294: MemStStrCopy
  loc_9E0298: FFreeStr var_9C = ""
  loc_9E029F: FFree1Ad var_88
  loc_9E02A2: FLdPr Me
  loc_9E02A5: VCallAd Control_ID_CccuFirmTxt
  loc_9E02A8: FStAdFunc var_A4
  loc_9E02AB: FLdPr Me
  loc_9E02AE: VCallAd Control_ID_DecuPersLbl
  loc_9E02B1: FStAdFunc var_98
  loc_9E02B4: FLdRfVar var_98
  loc_9E02B7: FLdZeroAd var_A4
  loc_9E02BA: FStAdFuncNoPop
  loc_9E02BD: CastAd
  loc_9E02C0: FStAdFunc var_90
  loc_9E02C3: FLdRfVar var_90
  loc_9E02C6: FLdPr Me
  loc_9E02C9: MemLdRfVar from_stack_1.global_60
  loc_9E02CC: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E02D1: IStI2 Cancel
  loc_9E02D4: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9E02DF: ILdI2 Cancel
  loc_9E02E2: NotI4
  loc_9E02E3: BranchF loc_9E0311
  loc_9E02E6: FLdRfVar var_9C
  loc_9E02E9: FLdPr Me
  loc_9E02EC: MemLdRfVar from_stack_1.global_68
  loc_9E02EF: NewIfNullPr tblpersona
  loc_9E02F2: from_stack_1v = tblpersona.DetaPersGet()
  loc_9E02F7: ILdRf var_9C
  loc_9E02FA: FLdPr Me
  loc_9E02FD: VCallAd Control_ID_DecuPersLbl
  loc_9E0300: FStAdFunc var_88
  loc_9E0303: FLdPr var_88
  loc_9E0306: Me.Caption = from_stack_1
  loc_9E030B: FFree1Str var_9C
  loc_9E030E: FFree1Ad var_88
  loc_9E0311: ExitProcHresult
  loc_9E0312: MemStI4 global_-13208
End Sub

Private Sub Form_Load() 'A268BC
  'Data Table: 4CAE44
  loc_A26714: ILdRf Me
  loc_A26717: CastAd
  loc_A2671A: FStAdFunc var_88
  loc_A2671D: FLdRfVar var_88
  loc_A26720: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_A26725: FFree1Ad var_88
  loc_A26728: LitI2_Byte 0
  loc_A2672A: CR8I2
  loc_A2672B: PopFPR4
  loc_A2672C: FLdPr Me
  loc_A2672F: Me.Left = from_stack_1s
  loc_A26734: LitI2_Byte 0
  loc_A26736: CR8I2
  loc_A26737: PopFPR4
  loc_A26738: FLdPr Me
  loc_A2673B: Me.Top = from_stack_1s
  loc_A26740: LitStr "SELECT firma.*, CcunPers.DetaPers as DeunPers,  CcdoPers.DetaPers as DedoPers, CctrPers.DetaPers as DetrPers, CccuPers.DetaPers as DecuPers FROM firma"
  loc_A26743: LitStr " LEFT JOIN infogov.persona as CcunPers ON firma.CcunFirm = CcunPers.CucuPers"
  loc_A26746: ConcatStr
  loc_A26747: FStStrNoPop var_8C
  loc_A2674A: LitStr " LEFT JOIN infogov.persona as CcdoPers ON firma.CcdoFirm = CcdoPers.CucuPers"
  loc_A2674D: ConcatStr
  loc_A2674E: FStStrNoPop var_90
  loc_A26751: LitStr " LEFT JOIN infogov.persona as CctrPers ON firma.CctrFirm = CctrPers.CucuPers"
  loc_A26754: ConcatStr
  loc_A26755: FStStrNoPop var_94
  loc_A26758: LitStr " LEFT JOIN infogov.persona as CccuPers ON firma.CccuFirm = CccuPers.CucuPers"
  loc_A2675B: ConcatStr
  loc_A2675C: FStStrNoPop var_98
  loc_A2675F: LitStr " WHERE YEAR(firma.FechFirm) >= "
  loc_A26762: ConcatStr
  loc_A26763: FStStrNoPop var_9C
  loc_A26766: ImpAdLdI2 MemVar_C3D064
  loc_A26769: LitI2_Byte 1
  loc_A2676B: SubI2
  loc_A2676C: CStrUI1
  loc_A2676E: FStStrNoPop var_A0
  loc_A26771: ConcatStr
  loc_A26772: FStStrNoPop var_A4
  loc_A26775: LitStr " ORDER BY FechFirm DESC;"
  loc_A26778: ConcatStr
  loc_A26779: FStStrNoPop var_A8
  loc_A2677C: FLdPr Me
  loc_A2677F: MemLdRfVar from_stack_1.global_52
  loc_A26782: NewIfNullPr clsfirma
  loc_A26785: Call clsfirma.RedefineRS(from_stack_1v)
  loc_A2678A: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = ""
  loc_A2679D: LitVar_Missing var_B8
  loc_A267A0: PopAdLdVar
  loc_A267A1: LitStr "Liquidacion"
  loc_A267A4: FLdPr Me
  loc_A267A7: VCallAd Control_ID_FormFirmCbo
  loc_A267AA: FStAdFunc var_88
  loc_A267AD: FLdPr var_88
  loc_A267B0: Me.AddItem from_stack_1, from_stack_2
  loc_A267B5: FFree1Ad var_88
  loc_A267B8: LitVar_Missing var_B8
  loc_A267BB: PopAdLdVar
  loc_A267BC: LitStr "Orden de Pago"
  loc_A267BF: FLdPr Me
  loc_A267C2: VCallAd Control_ID_FormFirmCbo
  loc_A267C5: FStAdFunc var_88
  loc_A267C8: FLdPr var_88
  loc_A267CB: Me.AddItem from_stack_1, from_stack_2
  loc_A267D0: FFree1Ad var_88
  loc_A267D3: LitVar_Missing var_B8
  loc_A267D6: PopAdLdVar
  loc_A267D7: LitStr "Orden de Pago Intendencia"
  loc_A267DA: FLdPr Me
  loc_A267DD: VCallAd Control_ID_FormFirmCbo
  loc_A267E0: FStAdFunc var_88
  loc_A267E3: FLdPr var_88
  loc_A267E6: Me.AddItem from_stack_1, from_stack_2
  loc_A267EB: FFree1Ad var_88
  loc_A267EE: LitVar_Missing var_B8
  loc_A267F1: PopAdLdVar
  loc_A267F2: LitStr "Cheque"
  loc_A267F5: FLdPr Me
  loc_A267F8: VCallAd Control_ID_FormFirmCbo
  loc_A267FB: FStAdFunc var_88
  loc_A267FE: FLdPr var_88
  loc_A26801: Me.AddItem from_stack_1, from_stack_2
  loc_A26806: FFree1Ad var_88
  loc_A26809: LitVar_Missing var_B8
  loc_A2680C: PopAdLdVar
  loc_A2680D: LitStr "Retencion"
  loc_A26810: FLdPr Me
  loc_A26813: VCallAd Control_ID_FormFirmCbo
  loc_A26816: FStAdFunc var_88
  loc_A26819: FLdPr var_88
  loc_A2681C: Me.AddItem from_stack_1, from_stack_2
  loc_A26821: FFree1Ad var_88
  loc_A26824: LitVarI2 var_B8, 0
  loc_A26829: PopAdLdVar
  loc_A2682A: LitStr "Formulario"
  loc_A2682D: FLdPr Me
  loc_A26830: VCallAd Control_ID_FiltroCbo
  loc_A26833: FStAdFunc var_88
  loc_A26836: FLdPr var_88
  loc_A26839: Me.AddItem from_stack_1, from_stack_2
  loc_A2683E: FFree1Ad var_88
  loc_A26841: LitI2_Byte 0
  loc_A26843: FLdPr Me
  loc_A26846: VCallAd Control_ID_FiltroCbo
  loc_A26849: FStAdFunc var_88
  loc_A2684C: FLdPr var_88
  loc_A2684F: Me.ListIndex = from_stack_1
  loc_A26854: FFree1Ad var_88
  loc_A26857: Call cmdCancelar_Click()
  loc_A2685C: LitI4 0
  loc_A26861: LitI4 1
  loc_A26866: FLdRfVar var_BC
  loc_A26869: Redim
  loc_A26873: FLdPr Me
  loc_A26876: MemLdRfVar from_stack_1.global_52
  loc_A26879: NewIfNullAd
  loc_A2687C: FStAd var_88 
  loc_A26880: FLdRfVar var_88
  loc_A26883: CVarRef
  loc_A26888: ParmAry1St
  loc_A2688E: FLdPr Me
  loc_A26891: VCallAd Control_ID_dgdABMS
  loc_A26894: CVarAd
  loc_A26898: ParmAry1St
  loc_A2689E: FLdRfVar var_BC
  loc_A268A1: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A268A6: ILdRf var_88
  loc_A268A9: CastAd
  loc_A268AC: FLdPr Me
  loc_A268AF: MemStAdFunc
  loc_A268B3: FLdRfVar var_BC
  loc_A268B6: Erase
  loc_A268B7: FFree1Ad var_88
  loc_A268BA: ExitProcHresult
End Sub

Private Sub Form_Activate() '99883C
  'Data Table: 4CAE44
  loc_9987E0: FLdRfVar var_C2
  loc_9987E3: FLdRfVar var_C0
  loc_9987E6: LitVarI2 var_B8, 1
  loc_9987EB: FLdPr Me
  loc_9987EE: VCallAd Control_ID_tlbABMS
  loc_9987F1: FStAdFunc var_88
  loc_9987F4: FLdPr var_88
  loc_9987F7: LateIdLdVar var_98 DispID_3 0
  loc_9987FE: CastAdVar Me
  loc_998802: FStAdFunc var_BC
  loc_998805: FLdPr var_BC
  loc_998808:  = Me.Buttons.ControlDefault
  loc_99880D: FLdPr var_C0
  loc_998810:  = Me.Enabled
  loc_998815: FLdI2 var_C2
  loc_998818: FFreeAd var_88 = "": var_BC = ""
  loc_998821: FFreeVar var_98 = ""
  loc_998828: BranchF loc_998839
  loc_99882B: FLdPr Me
  loc_99882E: MemLdRfVar from_stack_1.global_52
  loc_998831: NewIfNullPr clsfirma
  loc_998834: Call clsfirma.Requery()
  loc_998839: ExitProcHresult
  loc_99883A: Ary1StI2
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '958A9C
  'Data Table: 4CAE44
  loc_958A84: ILdI2 KeyCode
  loc_958A87: ILdRf Me
  loc_958A8A: CastAd
  loc_958A8D: FStAdFunc var_88
  loc_958A90: FLdRfVar var_88
  loc_958A93: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_958A98: FFree1Ad var_88
  loc_958A9B: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'AA62A4
  'Data Table: 4CAE44
  loc_AA5DFC: ILdRf Button
  loc_AA5DFF: FStAd var_88 
  loc_AA5E03: FLdRfVar var_8C
  loc_AA5E06: FLdPr var_88
  loc_AA5E09:  = Me.Key
  loc_AA5E0E: FLdZeroAd var_8C
  loc_AA5E11: FStStr var_90
  loc_AA5E14: ILdRf var_90
  loc_AA5E17: LitStr "btnCrear"
  loc_AA5E1A: EqStr
  loc_AA5E1C: BranchF loc_AA5EFD
  loc_AA5E1F: LitI2_Byte 1
  loc_AA5E21: FLdPr Me
  loc_AA5E24: MemStUI1
  loc_AA5E28: ILdRf Me
  loc_AA5E2B: CastAd
  loc_AA5E2E: FStAdFunc var_94
  loc_AA5E31: FLdRfVar var_94
  loc_AA5E34: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_AA5E39: FFree1Ad var_94
  loc_AA5E3C: LitI4 0
  loc_AA5E41: LitI4 0
  loc_AA5E46: FLdRfVar var_98
  loc_AA5E49: Redim
  loc_AA5E53: FLdPr Me
  loc_AA5E56: VCallAd Control_ID_dgdABMS
  loc_AA5E59: CVarAd
  loc_AA5E5D: ParmAry1St
  loc_AA5E63: FLdRfVar var_98
  loc_AA5E66: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_AA5E6B: FLdRfVar var_98
  loc_AA5E6E: Erase
  loc_AA5E6F: ILdRf Me
  loc_AA5E72: CastAd
  loc_AA5E75: FStAdFunc var_94
  loc_AA5E78: FLdRfVar var_94
  loc_AA5E7B: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_AA5E80: FFree1Ad var_94
  loc_AA5E83: ImpAdLdFPR8 MemVar_C3D04C
  loc_AA5E86: CStrDate
  loc_AA5E88: CVarStr var_A8
  loc_AA5E8B: PopAdLdVar
  loc_AA5E8C: FLdPr Me
  loc_AA5E8F: VCallAd Control_ID_FechFirmMsk
  loc_AA5E92: FStAdFunc var_94
  loc_AA5E95: FLdPr var_94
  loc_AA5E98: LateIdSt
  loc_AA5E9D: FFree1Ad var_94
  loc_AA5EA0: FFree1Var var_A8 = ""
  loc_AA5EA3: ILdRf Me
  loc_AA5EA6: CastAd
  loc_AA5EA9: FStAdFunc var_94
  loc_AA5EAC: FLdRfVar var_94
  loc_AA5EAF: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_AA5EB4: FFree1Ad var_94
  loc_AA5EB7: LitI4 0
  loc_AA5EBC: LitI4 1
  loc_AA5EC1: FLdRfVar var_98
  loc_AA5EC4: Redim
  loc_AA5ECE: FLdPr Me
  loc_AA5ED1: VCallAd Control_ID_FechFirmMsk
  loc_AA5ED4: CVarAd
  loc_AA5ED8: ParmAry1St
  loc_AA5EDE: FLdPr Me
  loc_AA5EE1: VCallAd Control_ID_FechFirmCmd
  loc_AA5EE4: CVarAd
  loc_AA5EE8: ParmAry1St
  loc_AA5EEE: FLdRfVar var_98
  loc_AA5EF1: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_AA5EF6: FLdRfVar var_98
  loc_AA5EF9: Erase
  loc_AA5EFA: Branch loc_AA62A1
  loc_AA5EFD: ILdRf var_90
  loc_AA5F00: LitStr "btnModificar"
  loc_AA5F03: EqStr
  loc_AA5F05: BranchF loc_AA5F0B
  loc_AA5F08: Branch loc_AA62A1
  loc_AA5F0B: ILdRf var_90
  loc_AA5F0E: LitStr "btnEliminar"
  loc_AA5F11: EqStr
  loc_AA5F13: BranchF loc_AA5FC0
  loc_AA5F16: FLdRfVar var_CC
  loc_AA5F19: FLdPr Me
  loc_AA5F1C: MemLdRfVar from_stack_1.global_52
  loc_AA5F1F: NewIfNullPr clsfirma
  loc_AA5F22: from_stack_1 = clsfirma.RecordCount
  loc_AA5F27: ILdRf var_CC
  loc_AA5F2A: LitI4 0
  loc_AA5F2F: GtI4
  loc_AA5F30: BranchF loc_AA5FBD
  loc_AA5F33: FLdRfVar var_A8
  loc_AA5F36: FLdRfVar var_D4
  loc_AA5F39: LitVarStr var_B8, "FechFirm"
  loc_AA5F3E: PopAdLdVar
  loc_AA5F3F: FLdRfVar var_D0
  loc_AA5F42: FLdRfVar var_94
  loc_AA5F45: FLdPr Me
  loc_AA5F48: MemLdRfVar from_stack_1.global_52
  loc_AA5F4B: NewIfNullPr clsfirma
  loc_AA5F4E: from_stack_1v = clsfirma.RsFrmGet()
  loc_AA5F53: FLdPr var_94
  loc_AA5F56:  = Me.Fields
  loc_AA5F5B: FLdPr var_D0
  loc_AA5F5E: from_stack_2 = Me.Item(from_stack_1)
  loc_AA5F63: FLdPr var_D4
  loc_AA5F66:  = Me.Value
  loc_AA5F6B: FLdRfVar var_A8
  loc_AA5F6E: FnCDateVar
  loc_AA5F70: ImpAdLdFPR8 MemVar_C3D04C
  loc_AA5F73: LtR8
  loc_AA5F74: FFreeAd var_94 = "": var_D0 = ""
  loc_AA5F7D: FFree1Var var_A8 = ""
  loc_AA5F80: BranchF loc_AA5F93
  loc_AA5F83: LitI4 0
  loc_AA5F88: LitStr "No se puede Eliminar el registro. Verifique..."
  loc_AA5F8B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AA5F90: Branch loc_AA5FBD
  loc_AA5F93: LitI2_Byte 0
  loc_AA5F95: PopTmpLdAd2 var_D8
  loc_AA5F98: LitI2_Byte &HFF
  loc_AA5F9A: PopTmpLdAd2 var_D6
  loc_AA5F9D: LitStr "¿Desea ELIMINAR el Firmante?"
  loc_AA5FA0: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_AA5FA5: CI4UI1
  loc_AA5FA6: LitI4 6
  loc_AA5FAB: EqI4
  loc_AA5FAC: BranchF loc_AA5FBD
  loc_AA5FAF: FLdPr Me
  loc_AA5FB2: MemLdRfVar from_stack_1.global_52
  loc_AA5FB5: NewIfNullPr clsfirma
  loc_AA5FB8: Call clsfirma.Eliminar()
  loc_AA5FBD: Branch loc_AA62A1
  loc_AA5FC0: ILdRf var_90
  loc_AA5FC3: LitStr "btnGuardar"
  loc_AA5FC6: EqStr
  loc_AA5FC8: BranchF loc_AA619D
  loc_AA5FCB: LitStr vbNullString
  loc_AA5FCE: FLdPr Me
  loc_AA5FD1: MemStStrCopy
  loc_AA5FD5: LitI2_Byte 0
  loc_AA5FD7: PopTmpLdAd2 var_D6
  loc_AA5FDA: Call CaunFirmTxt_Validate(from_stack_1v)
  loc_AA5FDF: FLdPr Me
  loc_AA5FE2: MemLdStr global_60
  loc_AA5FE5: LitStr vbNullString
  loc_AA5FE8: NeStr
  loc_AA5FEA: BranchF loc_AA5FEE
  loc_AA5FED: ExitProcHresult
  loc_AA5FEE: LitI2_Byte 0
  loc_AA5FF0: PopTmpLdAd2 var_D6
  loc_AA5FF3: Call CadoFirmTxt_Validate(from_stack_1v)
  loc_AA5FF8: FLdPr Me
  loc_AA5FFB: MemLdStr global_60
  loc_AA5FFE: LitStr vbNullString
  loc_AA6001: NeStr
  loc_AA6003: BranchF loc_AA6007
  loc_AA6006: ExitProcHresult
  loc_AA6007: LitI2_Byte 0
  loc_AA6009: PopTmpLdAd2 var_D6
  loc_AA600C: Call CatrFirmTxt_Validate(from_stack_1v)
  loc_AA6011: FLdPr Me
  loc_AA6014: MemLdStr global_60
  loc_AA6017: LitStr vbNullString
  loc_AA601A: NeStr
  loc_AA601C: BranchF loc_AA6020
  loc_AA601F: ExitProcHresult
  loc_AA6020: LitI2_Byte 0
  loc_AA6022: PopTmpLdAd2 var_D6
  loc_AA6025: Call CacuFirmTxt_Validate(from_stack_1v)
  loc_AA602A: FLdPr Me
  loc_AA602D: MemLdStr global_60
  loc_AA6030: LitStr vbNullString
  loc_AA6033: NeStr
  loc_AA6035: BranchF loc_AA6039
  loc_AA6038: ExitProcHresult
  loc_AA6039: FLdPr Me
  loc_AA603C: MemLdUI1 global_56
  loc_AA6040: FStUI1 var_DA
  loc_AA6044: FLdUI1
  loc_AA6048: LitI2_Byte 1
  loc_AA604A: EqI2
  loc_AA604B: BranchF loc_AA618B
  loc_AA604E: FLdRfVar var_8C
  loc_AA6051: FLdPr Me
  loc_AA6054: VCallAd Control_ID_FormFirmCbo
  loc_AA6057: FStAdFunc var_94
  loc_AA605A: FLdPr var_94
  loc_AA605D:  = Me.Text
  loc_AA6062: FLdPr Me
  loc_AA6065: VCallAd Control_ID_FechFirmMsk
  loc_AA6068: FStAdFunc var_D0
  loc_AA606B: FLdPr var_D0
  loc_AA606E: LateIdLdVar var_A8 DispID_15 0
  loc_AA6075: PopAd
  loc_AA6077: FLdRfVar var_E0
  loc_AA607A: FLdPr Me
  loc_AA607D: VCallAd Control_ID_CaunFirmTxt
  loc_AA6080: FStAdFunc var_D4
  loc_AA6083: FLdPr var_D4
  loc_AA6086:  = Me.Text
  loc_AA608B: FLdRfVar var_E8
  loc_AA608E: FLdPr Me
  loc_AA6091: VCallAd Control_ID_CcunFirmTxt
  loc_AA6094: FStAdFunc var_E4
  loc_AA6097: FLdPr var_E4
  loc_AA609A:  = Me.Text
  loc_AA609F: FLdRfVar var_F0
  loc_AA60A2: FLdPr Me
  loc_AA60A5: VCallAd Control_ID_CadoFirmTxt
  loc_AA60A8: FStAdFunc var_EC
  loc_AA60AB: FLdPr var_EC
  loc_AA60AE:  = Me.Text
  loc_AA60B3: FLdRfVar var_F8
  loc_AA60B6: FLdPr Me
  loc_AA60B9: VCallAd Control_ID_CcdoFirmTxt
  loc_AA60BC: FStAdFunc var_F4
  loc_AA60BF: FLdPr var_F4
  loc_AA60C2:  = Me.Text
  loc_AA60C7: FLdRfVar var_100
  loc_AA60CA: FLdPr Me
  loc_AA60CD: VCallAd Control_ID_CatrFirmTxt
  loc_AA60D0: FStAdFunc var_FC
  loc_AA60D3: FLdPr var_FC
  loc_AA60D6:  = Me.Text
  loc_AA60DB: FLdRfVar var_108
  loc_AA60DE: FLdPr Me
  loc_AA60E1: VCallAd Control_ID_CctrFirmTxt
  loc_AA60E4: FStAdFunc var_104
  loc_AA60E7: FLdPr var_104
  loc_AA60EA:  = Me.Text
  loc_AA60EF: FLdRfVar var_110
  loc_AA60F2: FLdPr Me
  loc_AA60F5: VCallAd Control_ID_CacuFirmTxt
  loc_AA60F8: FStAdFunc var_10C
  loc_AA60FB: FLdPr var_10C
  loc_AA60FE:  = Me.Text
  loc_AA6103: FLdRfVar var_118
  loc_AA6106: FLdPr Me
  loc_AA6109: VCallAd Control_ID_CccuFirmTxt
  loc_AA610C: FStAdFunc var_114
  loc_AA610F: FLdPr var_114
  loc_AA6112:  = Me.Text
  loc_AA6117: FLdZeroAd var_118
  loc_AA611A: PopTmpLdAdStr
  loc_AA611E: ILdRf var_110
  loc_AA6121: FLdZeroAd var_108
  loc_AA6124: PopTmpLdAdStr
  loc_AA6128: ILdRf var_100
  loc_AA612B: FLdZeroAd var_F8
  loc_AA612E: PopTmpLdAdStr
  loc_AA6132: ILdRf var_F0
  loc_AA6135: FLdZeroAd var_E8
  loc_AA6138: PopTmpLdAdStr
  loc_AA613C: ILdRf var_E0
  loc_AA613F: FLdRfVar var_A8
  loc_AA6142: CStrVarTmp
  loc_AA6143: FStStrNoPop var_11C
  loc_AA6146: ILdRf var_8C
  loc_AA6149: FLdPr Me
  loc_AA614C: MemLdRfVar from_stack_1.global_52
  loc_AA614F: NewIfNullPr clsfirma
  loc_AA6152: Call clsfirma.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v)
  loc_AA6157: FFreeStr var_8C = "": var_11C = "": var_E0 = "": var_120 = "": var_F0 = "": var_124 = "": var_100 = "": var_128 = "": var_110 = ""
  loc_AA616E: FFreeAd var_94 = "": var_D0 = "": var_D4 = "": var_E4 = "": var_EC = "": var_F4 = "": var_FC = "": var_104 = "": var_10C = ""
  loc_AA6185: FFree1Var var_A8 = ""
  loc_AA6188: Branch loc_AA6195
  loc_AA618B: FLdUI1
  loc_AA618F: LitI2_Byte 2
  loc_AA6191: EqI2
  loc_AA6192: BranchF loc_AA6195
  loc_AA6195: Call cmdCancelar_Click()
  loc_AA619A: Branch loc_AA62A1
  loc_AA619D: ILdRf var_90
  loc_AA61A0: LitStr "btnCancelar"
  loc_AA61A3: EqStr
  loc_AA61A5: BranchF loc_AA61B0
  loc_AA61A8: Call cmdCancelar_Click()
  loc_AA61AD: Branch loc_AA62A1
  loc_AA61B0: ILdRf var_90
  loc_AA61B3: LitStr "btnPrimero"
  loc_AA61B6: EqStr
  loc_AA61B8: BranchF loc_AA61CC
  loc_AA61BB: FLdPr Me
  loc_AA61BE: MemLdRfVar from_stack_1.global_52
  loc_AA61C1: NewIfNullPr clsfirma
  loc_AA61C4: Call clsfirma.MoveFirst()
  loc_AA61C9: Branch loc_AA62A1
  loc_AA61CC: ILdRf var_90
  loc_AA61CF: LitStr "btnAnterior"
  loc_AA61D2: EqStr
  loc_AA61D4: BranchF loc_AA61E8
  loc_AA61D7: FLdPr Me
  loc_AA61DA: MemLdRfVar from_stack_1.global_52
  loc_AA61DD: NewIfNullPr clsfirma
  loc_AA61E0: Call clsfirma.MovePrevious()
  loc_AA61E5: Branch loc_AA62A1
  loc_AA61E8: ILdRf var_90
  loc_AA61EB: LitStr "btnSiguiente"
  loc_AA61EE: EqStr
  loc_AA61F0: BranchF loc_AA6204
  loc_AA61F3: FLdPr Me
  loc_AA61F6: MemLdRfVar from_stack_1.global_52
  loc_AA61F9: NewIfNullPr clsfirma
  loc_AA61FC: Call clsfirma.MoveNext()
  loc_AA6201: Branch loc_AA62A1
  loc_AA6204: ILdRf var_90
  loc_AA6207: LitStr "btnUltimo"
  loc_AA620A: EqStr
  loc_AA620C: BranchF loc_AA6220
  loc_AA620F: FLdPr Me
  loc_AA6212: MemLdRfVar from_stack_1.global_52
  loc_AA6215: NewIfNullPr clsfirma
  loc_AA6218: Call clsfirma.MoveLast()
  loc_AA621D: Branch loc_AA62A1
  loc_AA6220: ILdRf var_90
  loc_AA6223: LitStr "btnFiltrar"
  loc_AA6226: EqStr
  loc_AA6228: BranchF loc_AA622E
  loc_AA622B: Branch loc_AA62A1
  loc_AA622E: ILdRf var_90
  loc_AA6231: LitStr "btnBuscar"
  loc_AA6234: EqStr
  loc_AA6236: BranchF loc_AA623C
  loc_AA6239: Branch loc_AA62A1
  loc_AA623C: ILdRf var_90
  loc_AA623F: LitStr "btnImprimir"
  loc_AA6242: EqStr
  loc_AA6244: BranchF loc_AA624A
  loc_AA6247: Branch loc_AA62A1
  loc_AA624A: ILdRf var_90
  loc_AA624D: LitStr "btnAyuda"
  loc_AA6250: EqStr
  loc_AA6252: BranchF loc_AA6281
  loc_AA6255: LitVar_Missing var_17C
  loc_AA6258: LitVar_Missing var_15C
  loc_AA625B: LitVar_Missing var_C8
  loc_AA625E: LitI4 0
  loc_AA6263: LitVarStr var_B8, "Opcion no disponible en esta version."
  loc_AA6268: FStVarCopyObj var_A8
  loc_AA626B: FLdRfVar var_A8
  loc_AA626E: ImpAdCallFPR4 MsgBox(, , , , )
  loc_AA6273: FFreeVar var_A8 = "": var_C8 = "": var_15C = ""
  loc_AA627E: Branch loc_AA62A1
  loc_AA6281: ILdRf var_90
  loc_AA6284: LitStr "btnSalir"
  loc_AA6287: EqStr
  loc_AA6289: BranchF loc_AA62A1
  loc_AA628C: ILdRf Me
  loc_AA628F: FStAdNoPop
  loc_AA6293: ImpAdLdRf MemVar_C44F9C
  loc_AA6296: NewIfNullPr Me
  loc_AA6299: Me.Global.Unload from_stack_1
  loc_AA629E: FFree1Ad var_94
  loc_AA62A1: ExitProcHresult
  loc_AA62A2: CRec2Uni var_3400
End Sub

Private Sub CcdoFirmTxt_GotFocus() '94DDD8
  'Data Table: 4CAE44
  loc_94DDC4: FLdPr Me
  loc_94DDC7: VCallAd Control_ID_CcdoFirmTxt
  loc_94DDCA: CVarAd
  loc_94DDCE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94DDD3: FFree1Var var_94 = ""
  loc_94DDD6: ExitProcHresult
End Sub

Private Sub CcdoFirmTxt_Validate(Cancel As Boolean) '9E0AF4
  'Data Table: 4CAE44
  loc_9E09EC: FLdRfVar var_8A
  loc_9E09EF: FLdPr Me
  loc_9E09F2: VCallAd Control_ID_cmdCancelar
  loc_9E09F5: FStAdFunc var_88
  loc_9E09F8: FLdPr var_88
  loc_9E09FB:  = Me.Value
  loc_9E0A00: FLdI2 var_8A
  loc_9E0A03: NotI4
  loc_9E0A04: FLdRfVar var_92
  loc_9E0A07: FLdPr Me
  loc_9E0A0A: VCallAd Control_ID_CcdoFirmTxt
  loc_9E0A0D: FStAdFunc var_90
  loc_9E0A10: FLdPr var_90
  loc_9E0A13:  = Me.Enabled
  loc_9E0A18: FLdI2 var_92
  loc_9E0A1B: AndI4
  loc_9E0A1C: FLdRfVar var_9C
  loc_9E0A1F: FLdPr Me
  loc_9E0A22: VCallAd Control_ID_CcdoFirmTxt
  loc_9E0A25: FStAdFunc var_98
  loc_9E0A28: FLdPr var_98
  loc_9E0A2B:  = Me.Text
  loc_9E0A30: ILdRf var_9C
  loc_9E0A33: LitStr "0"
  loc_9E0A36: NeStr
  loc_9E0A38: AndI4
  loc_9E0A39: FFree1Str var_9C
  loc_9E0A3C: FFreeAd var_88 = "": var_90 = ""
  loc_9E0A45: BranchF loc_9E0AF1
  loc_9E0A48: FLdRfVar var_9C
  loc_9E0A4B: FLdPr Me
  loc_9E0A4E: VCallAd Control_ID_CcdoFirmTxt
  loc_9E0A51: FStAdFunc var_88
  loc_9E0A54: FLdPr var_88
  loc_9E0A57:  = Me.Text
  loc_9E0A5C: FLdPr Me
  loc_9E0A5F: MemLdRfVar from_stack_1.global_68
  loc_9E0A62: NewIfNullRf
  loc_9E0A66: ILdRf var_9C
  loc_9E0A69: ImpAdCallI2 Proc_266_16_994244(, )
  loc_9E0A6E: FStStrNoPop var_A0
  loc_9E0A71: FLdPr Me
  loc_9E0A74: MemStStrCopy
  loc_9E0A78: FFreeStr var_9C = ""
  loc_9E0A7F: FFree1Ad var_88
  loc_9E0A82: FLdPr Me
  loc_9E0A85: VCallAd Control_ID_CcdoFirmTxt
  loc_9E0A88: FStAdFunc var_A4
  loc_9E0A8B: FLdPr Me
  loc_9E0A8E: VCallAd Control_ID_DedoPersLbl
  loc_9E0A91: FStAdFunc var_98
  loc_9E0A94: FLdRfVar var_98
  loc_9E0A97: FLdZeroAd var_A4
  loc_9E0A9A: FStAdFuncNoPop
  loc_9E0A9D: CastAd
  loc_9E0AA0: FStAdFunc var_90
  loc_9E0AA3: FLdRfVar var_90
  loc_9E0AA6: FLdPr Me
  loc_9E0AA9: MemLdRfVar from_stack_1.global_60
  loc_9E0AAC: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E0AB1: IStI2 Cancel
  loc_9E0AB4: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9E0ABF: ILdI2 Cancel
  loc_9E0AC2: NotI4
  loc_9E0AC3: BranchF loc_9E0AF1
  loc_9E0AC6: FLdRfVar var_9C
  loc_9E0AC9: FLdPr Me
  loc_9E0ACC: MemLdRfVar from_stack_1.global_68
  loc_9E0ACF: NewIfNullPr tblpersona
  loc_9E0AD2: from_stack_1v = tblpersona.DetaPersGet()
  loc_9E0AD7: ILdRf var_9C
  loc_9E0ADA: FLdPr Me
  loc_9E0ADD: VCallAd Control_ID_DedoPersLbl
  loc_9E0AE0: FStAdFunc var_88
  loc_9E0AE3: FLdPr var_88
  loc_9E0AE6: Me.Caption = from_stack_1
  loc_9E0AEB: FFree1Str var_9C
  loc_9E0AEE: FFree1Ad var_88
  loc_9E0AF1: ExitProcHresult
  loc_9E0AF2: FLdRfVar var_3398
End Sub
