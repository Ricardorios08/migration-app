VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmUsuario
  Caption = "Usuarios"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmUsuario.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 13860
  ClientHeight = 8970
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
    TabIndex = 2
    Begin VB.TextBox FiltroTxt
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 4
      MaxLength = 40
    End
    Begin VB.ComboBox FiltroCbo
      Style = 2
      Left = 120
      Top = 360
      Width = 4575
      Height = 420
      TabIndex = 3
    End
  End
  Begin VB.Frame fraABMS
    Left = 120
    Top = 4440
    Width = 12855
    Height = 6255
    TabIndex = 6
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 8,25
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.Frame FrameMail
      Caption = " Correo Electrónico "
      Left = 240
      Top = 2160
      Width = 11535
      Height = 3495
      TabIndex = 17
      Begin VB.TextBox ComaUsuaTxt
        ForeColor = &HFF0000&
        Left = 2295
        Top = 1680
        Width = 3240
        Height = 420
        TabIndex = 23
        PasswordChar = "*"
        MaxLength = 20
      End
      Begin VB.TextBox ComaUsuaTxtConfirmar
        ForeColor = &HFF0000&
        Left = 2295
        Top = 2160
        Width = 3240
        Height = 420
        TabIndex = 26
        PasswordChar = "*"
        MaxLength = 20
      End
      Begin VB.TextBox UsmaUsuaTxt
        ForeColor = &HFF0000&
        Left = 2280
        Top = 1080
        Width = 4095
        Height = 420
        TabIndex = 21
        MaxLength = 50
        DataField = "UsmaUsua"
      End
      Begin VB.TextBox CoenUsuaTxt
        Left = 2295
        Top = 480
        Width = 8415
        Height = 420
        TabIndex = 19
        MaxLength = 50
        DataField = "CoenUsua"
      End
      Begin VB.Label Label8
        Caption = "Confirmar Clave:"
        Left = 480
        Top = 2160
        Width = 1740
        Height = 300
        TabIndex = 25
        AutoSize = -1  'True
      End
      Begin VB.Label Label7
        Caption = "Clave:"
        Left = 1575
        Top = 1680
        Width = 645
        Height = 300
        TabIndex = 22
        AutoSize = -1  'True
      End
      Begin VB.Label lblNuevaClave
        Caption = "Caracteres: 0."
        Left = 5655
        Top = 1680
        Width = 4335
        Height = 420
        TabIndex = 24
        BorderStyle = 1 'Fixed Single
      End
      Begin VB.Label lblConfirmarClave
        Caption = "Caracteres: 0."
        Left = 5655
        Top = 2160
        Width = 4335
        Height = 420
        TabIndex = 27
        BorderStyle = 1 'Fixed Single
      End
      Begin VB.Label Label5
        Caption = "Usuario:"
        Left = 1335
        Top = 1080
        Width = 885
        Height = 300
        TabIndex = 20
        AutoSize = -1  'True
      End
      Begin VB.Label Label4
        Caption = "Dirección:"
        Left = 1185
        Top = 480
        Width = 1050
        Height = 300
        TabIndex = 18
        Alignment = 1 'Right Justify
        AutoSize = -1  'True
      End
    End
    Begin VB.CheckBox AcreUsuaChk
      Left = 4560
      Top = 1560
      Width = 255
      Height = 345
      Enabled = 0   'False
      TabIndex = 15
      DataField = "AcreUsua"
    End
    Begin VB.CheckBox InhaUsuaChk
      Left = 2280
      Top = 1560
      Width = 255
      Height = 345
      Enabled = 0   'False
      TabIndex = 13
      DataField = "InhaUsua"
    End
    Begin VB.CommandButton ResetearClaveCmd
      Caption = "Resetear clave"
      Left = 6600
      Top = 1560
      Width = 1815
      Height = 495
      TabIndex = 16
    End
    Begin VB.TextBox CodiUsuaTxt
      ForeColor = &HFF0000&
      Left = 2280
      Top = 360
      Width = 3015
      Height = 420
      TabIndex = 8
      MaxLength = 8
      DataField = "CodiUsua"
    End
    Begin MSMask.MaskEdBox CucuPersMsk
      Left = 2280
      Top = 960
      Width = 1695
      Height = 420
      TabIndex = 10
      OleObjectBlob = "frmUsuario.frx":08CA
      DataField = "CucuPers"
    End
    Begin VB.Label Label3
      Caption = "Acceso remoto:"
      Left = 2835
      Top = 1560
      Width = 1665
      Height = 300
      TabIndex = 14
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Inhabilitado:"
      Left = 930
      Top = 1560
      Width = 1290
      Height = 300
      TabIndex = 12
      AutoSize = -1  'True
    End
    Begin VB.Label Label10
      Caption = "CUIT/CUIL:"
      Left = 990
      Top = 960
      Width = 1230
      Height = 300
      TabIndex = 9
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
    Begin VB.Label DetaPersLbl
      Left = 4080
      Top = 960
      Width = 6615
      Height = 420
      TabIndex = 11
      BorderStyle = 1 'Fixed Single
      DataField = "DetaPers"
    End
    Begin VB.Label Label1
      Caption = "Usuario:"
      Left = 1335
      Top = 360
      Width = 885
      Height = 300
      TabIndex = 7
      AutoSize = -1  'True
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1800
    Width = 12855
    Height = 2535
    TabIndex = 5
    OleObjectBlob = "frmUsuario.frx":0968
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmUsuario.frx":0C58
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 13860
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmUsuario.frx":87D6
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 8,25
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      Picture = "frmUsuario.frx":8D32
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmUsuario"


Private Sub dgdABMS_UnknownEvent_1 '96074C
  'Data Table: 4A4C6C
  loc_960734: FLdPr Me
  loc_960737: VCallAd Control_ID_dgdABMS
  loc_96073A: FStAdFunc var_88
  loc_96073D: FLdRfVar var_88
  loc_960740: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_960745: FFree1Ad var_88
  loc_960748: ExitProcHresult
  loc_960749: CVarI2 dgdABMS_UnknownEvent_1300
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99A6A8
  'Data Table: 4A4C6C
  loc_99A64C: FLdRfVar var_B4
  loc_99A64F: FLdRfVar var_B0
  loc_99A652: FLdI2 ColIndex
  loc_99A655: CVarI2 var_A8
  loc_99A658: PopAdLdVar
  loc_99A659: FLdPr Me
  loc_99A65C: VCallAd Control_ID_dgdABMS
  loc_99A65F: FStAdFunc var_88
  loc_99A662: FLdPr var_88
  loc_99A665: LateIdLdVar var_98 DispID_105 0
  loc_99A66C: CastAdVar Me
  loc_99A670: FStAdFunc var_AC
  loc_99A673: FLdPr var_AC
  loc_99A676: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99A67B: FLdPr var_B0
  loc_99A67E:  = Me.DataField
  loc_99A683: FLdZeroAd var_B4
  loc_99A686: PopTmpLdAdStr
  loc_99A68A: FLdPr Me
  loc_99A68D: MemLdRfVar from_stack_1.global_52
  loc_99A690: NewIfNullPr clsusuario
  loc_99A693: Call clsusuario.Sort(from_stack_1v)
  loc_99A698: FFree1Str var_B8
  loc_99A69B: FFreeAd var_88 = "": var_AC = ""
  loc_99A6A4: FFree1Var var_98 = ""
  loc_99A6A7: ExitProcHresult
End Sub

Private Sub ComaUsuaTxt_Change() '995928
  'Data Table: 4A4C6C
  loc_9958D8: LitStr "Caracteres: "
  loc_9958DB: FLdRfVar var_8C
  loc_9958DE: FLdPr Me
  loc_9958E1: VCallAd Control_ID_ComaUsuaTxt
  loc_9958E4: FStAdFunc var_88
  loc_9958E7: FLdPr var_88
  loc_9958EA:  = Me.Text
  loc_9958EF: ILdRf var_8C
  loc_9958F2: FnLenStr
  loc_9958F3: CStrI4
  loc_9958F5: FStStrNoPop var_90
  loc_9958F8: ConcatStr
  loc_9958F9: FStStrNoPop var_94
  loc_9958FC: LitStr "."
  loc_9958FF: ConcatStr
  loc_995900: FStStrNoPop var_98
  loc_995903: FLdPr Me
  loc_995906: VCallAd Control_ID_lblNuevaClave
  loc_995909: FStAdFunc var_9C
  loc_99590C: FLdPr var_9C
  loc_99590F: Me.Caption = from_stack_1
  loc_995914: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_99591F: FFreeAd var_88 = ""
  loc_995926: ExitProcHresult
End Sub

Private Sub ComaUsuaTxt_GotFocus() '94A430
  'Data Table: 4A4C6C
  loc_94A41C: FLdPr Me
  loc_94A41F: VCallAd Control_ID_ComaUsuaTxt
  loc_94A422: CVarAd
  loc_94A426: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A42B: FFree1Var var_94 = ""
  loc_94A42E: ExitProcHresult
End Sub

Private Sub ComaUsuaTxt_Validate(Cancel As Boolean) '9D0960
  'Data Table: 4A4C6C
  loc_9D0884: FLdRfVar var_8A
  loc_9D0887: FLdPr Me
  loc_9D088A: VCallAd Control_ID_cmdCancelar
  loc_9D088D: FStAdFunc var_88
  loc_9D0890: FLdPr var_88
  loc_9D0893:  = Me.Value
  loc_9D0898: FLdI2 var_8A
  loc_9D089B: NotI4
  loc_9D089C: FLdRfVar var_92
  loc_9D089F: FLdPr Me
  loc_9D08A2: VCallAd Control_ID_ComaUsuaTxt
  loc_9D08A5: FStAdFunc var_90
  loc_9D08A8: FLdPr var_90
  loc_9D08AB:  = Me.Enabled
  loc_9D08B0: FLdI2 var_92
  loc_9D08B3: AndI4
  loc_9D08B4: FLdRfVar var_9C
  loc_9D08B7: FLdPr Me
  loc_9D08BA: VCallAd Control_ID_ComaUsuaTxt
  loc_9D08BD: FStAdFunc var_98
  loc_9D08C0: FLdPr var_98
  loc_9D08C3:  = Me.Text
  loc_9D08C8: ILdRf var_9C
  loc_9D08CB: LitStr vbNullString
  loc_9D08CE: NeStr
  loc_9D08D0: AndI4
  loc_9D08D1: FFree1Str var_9C
  loc_9D08D4: FFreeAd var_88 = "": var_90 = ""
  loc_9D08DD: BranchF loc_9D095E
  loc_9D08E0: FLdRfVar var_9C
  loc_9D08E3: FLdPr Me
  loc_9D08E6: VCallAd Control_ID_ComaUsuaTxt
  loc_9D08E9: FStAdFunc var_88
  loc_9D08EC: FLdPr var_88
  loc_9D08EF:  = Me.Text
  loc_9D08F4: LitI2_Byte 0
  loc_9D08F6: PopTmpLdAd2 var_9E
  loc_9D08F9: LitI2_Byte 0
  loc_9D08FB: PopTmpLdAd2 var_92
  loc_9D08FE: LitI2_Byte 0
  loc_9D0900: PopTmpLdAd2 var_8A
  loc_9D0903: ILdRf var_9C
  loc_9D0906: LitStr "Contraseña"
  loc_9D0909: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9D090E: FStStrNoPop var_A4
  loc_9D0911: FLdPr Me
  loc_9D0914: MemStStrCopy
  loc_9D0918: FFreeStr var_9C = ""
  loc_9D091F: FFree1Ad var_88
  loc_9D0922: FLdPr Me
  loc_9D0925: VCallAd Control_ID_ComaUsuaTxt
  loc_9D0928: FStAdFunc var_A8
  loc_9D092B: LitNothing
  loc_9D092D: CastAd
  loc_9D0930: FStAdFunc var_98
  loc_9D0933: FLdRfVar var_98
  loc_9D0936: FLdZeroAd var_A8
  loc_9D0939: FStAdFuncNoPop
  loc_9D093C: CastAd
  loc_9D093F: FStAdFunc var_90
  loc_9D0942: FLdRfVar var_90
  loc_9D0945: FLdPr Me
  loc_9D0948: MemLdRfVar from_stack_1.global_60
  loc_9D094B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D0950: IStI2 Cancel
  loc_9D0953: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9D095E: ExitProcHresult
End Sub

Private Sub ComaUsuaTxtConfirmar_Change() '995890
  'Data Table: 4A4C6C
  loc_995840: LitStr "Caracteres: "
  loc_995843: FLdRfVar var_8C
  loc_995846: FLdPr Me
  loc_995849: VCallAd Control_ID_ComaUsuaTxtConfirmar
  loc_99584C: FStAdFunc var_88
  loc_99584F: FLdPr var_88
  loc_995852:  = Me.Text
  loc_995857: ILdRf var_8C
  loc_99585A: FnLenStr
  loc_99585B: CStrI4
  loc_99585D: FStStrNoPop var_90
  loc_995860: ConcatStr
  loc_995861: FStStrNoPop var_94
  loc_995864: LitStr "."
  loc_995867: ConcatStr
  loc_995868: FStStrNoPop var_98
  loc_99586B: FLdPr Me
  loc_99586E: VCallAd Control_ID_lblConfirmarClave
  loc_995871: FStAdFunc var_9C
  loc_995874: FLdPr var_9C
  loc_995877: Me.Caption = from_stack_1
  loc_99587C: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_995887: FFreeAd var_88 = ""
  loc_99588E: ExitProcHresult
End Sub

Private Sub ComaUsuaTxtConfirmar_GotFocus() '94AB80
  'Data Table: 4A4C6C
  loc_94AB6C: FLdPr Me
  loc_94AB6F: VCallAd Control_ID_ComaUsuaTxtConfirmar
  loc_94AB72: CVarAd
  loc_94AB76: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94AB7B: FFree1Var var_94 = ""
  loc_94AB7E: ExitProcHresult
End Sub

Private Sub ComaUsuaTxtConfirmar_Validate(Cancel As Boolean) '9D0A84
  'Data Table: 4A4C6C
  loc_9D09A8: FLdRfVar var_8A
  loc_9D09AB: FLdPr Me
  loc_9D09AE: VCallAd Control_ID_cmdCancelar
  loc_9D09B1: FStAdFunc var_88
  loc_9D09B4: FLdPr var_88
  loc_9D09B7:  = Me.Value
  loc_9D09BC: FLdI2 var_8A
  loc_9D09BF: NotI4
  loc_9D09C0: FLdRfVar var_92
  loc_9D09C3: FLdPr Me
  loc_9D09C6: VCallAd Control_ID_ComaUsuaTxtConfirmar
  loc_9D09C9: FStAdFunc var_90
  loc_9D09CC: FLdPr var_90
  loc_9D09CF:  = Me.Enabled
  loc_9D09D4: FLdI2 var_92
  loc_9D09D7: AndI4
  loc_9D09D8: FLdRfVar var_9C
  loc_9D09DB: FLdPr Me
  loc_9D09DE: VCallAd Control_ID_ComaUsuaTxtConfirmar
  loc_9D09E1: FStAdFunc var_98
  loc_9D09E4: FLdPr var_98
  loc_9D09E7:  = Me.Text
  loc_9D09EC: ILdRf var_9C
  loc_9D09EF: LitStr vbNullString
  loc_9D09F2: NeStr
  loc_9D09F4: AndI4
  loc_9D09F5: FFree1Str var_9C
  loc_9D09F8: FFreeAd var_88 = "": var_90 = ""
  loc_9D0A01: BranchF loc_9D0A82
  loc_9D0A04: FLdRfVar var_9C
  loc_9D0A07: FLdPr Me
  loc_9D0A0A: VCallAd Control_ID_ComaUsuaTxtConfirmar
  loc_9D0A0D: FStAdFunc var_88
  loc_9D0A10: FLdPr var_88
  loc_9D0A13:  = Me.Text
  loc_9D0A18: LitI2_Byte 0
  loc_9D0A1A: PopTmpLdAd2 var_9E
  loc_9D0A1D: LitI2_Byte 0
  loc_9D0A1F: PopTmpLdAd2 var_92
  loc_9D0A22: LitI2_Byte 0
  loc_9D0A24: PopTmpLdAd2 var_8A
  loc_9D0A27: ILdRf var_9C
  loc_9D0A2A: LitStr "Contraseña"
  loc_9D0A2D: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9D0A32: FStStrNoPop var_A4
  loc_9D0A35: FLdPr Me
  loc_9D0A38: MemStStrCopy
  loc_9D0A3C: FFreeStr var_9C = ""
  loc_9D0A43: FFree1Ad var_88
  loc_9D0A46: FLdPr Me
  loc_9D0A49: VCallAd Control_ID_ComaUsuaTxtConfirmar
  loc_9D0A4C: FStAdFunc var_A8
  loc_9D0A4F: LitNothing
  loc_9D0A51: CastAd
  loc_9D0A54: FStAdFunc var_98
  loc_9D0A57: FLdRfVar var_98
  loc_9D0A5A: FLdZeroAd var_A8
  loc_9D0A5D: FStAdFuncNoPop
  loc_9D0A60: CastAd
  loc_9D0A63: FStAdFunc var_90
  loc_9D0A66: FLdRfVar var_90
  loc_9D0A69: FLdPr Me
  loc_9D0A6C: MemLdRfVar from_stack_1.global_60
  loc_9D0A6F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D0A74: IStI2 Cancel
  loc_9D0A77: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9D0A82: ExitProcHresult
End Sub

Private Sub UsmaUsuaTxt_GotFocus() '94AE98
  'Data Table: 4A4C6C
  loc_94AE84: FLdPr Me
  loc_94AE87: VCallAd Control_ID_UsmaUsuaTxt
  loc_94AE8A: CVarAd
  loc_94AE8E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94AE93: FFree1Var var_94 = ""
  loc_94AE96: ExitProcHresult
End Sub

Private Sub UsmaUsuaTxt_Validate(Cancel As Boolean) '9CB2CC
  'Data Table: 4A4C6C
  loc_9CB1F4: FLdRfVar var_8A
  loc_9CB1F7: FLdPr Me
  loc_9CB1FA: VCallAd Control_ID_cmdCancelar
  loc_9CB1FD: FStAdFunc var_88
  loc_9CB200: FLdPr var_88
  loc_9CB203:  = Me.Value
  loc_9CB208: FLdI2 var_8A
  loc_9CB20B: NotI4
  loc_9CB20C: FLdRfVar var_92
  loc_9CB20F: FLdPr Me
  loc_9CB212: VCallAd Control_ID_CodiUsuaTxt
  loc_9CB215: FStAdFunc var_90
  loc_9CB218: FLdPr var_90
  loc_9CB21B:  = Me.Enabled
  loc_9CB220: FLdI2 var_92
  loc_9CB223: AndI4
  loc_9CB224: FLdRfVar var_9C
  loc_9CB227: FLdPr Me
  loc_9CB22A: VCallAd Control_ID_UsmaUsuaTxt
  loc_9CB22D: FStAdFunc var_98
  loc_9CB230: FLdPr var_98
  loc_9CB233:  = Me.Text
  loc_9CB238: ILdRf var_9C
  loc_9CB23B: LitStr vbNullString
  loc_9CB23E: NeStr
  loc_9CB240: AndI4
  loc_9CB241: FFree1Str var_9C
  loc_9CB244: FFreeAd var_88 = "": var_90 = ""
  loc_9CB24D: BranchF loc_9CB2C8
  loc_9CB250: FLdRfVar var_A0
  loc_9CB253: FLdRfVar var_9C
  loc_9CB256: FLdPr Me
  loc_9CB259: VCallAd Control_ID_UsmaUsuaTxt
  loc_9CB25C: FStAdFunc var_88
  loc_9CB25F: FLdPr var_88
  loc_9CB262:  = Me.Text
  loc_9CB267: ILdRf var_9C
  loc_9CB26A: FLdPr Me
  loc_9CB26D: MemLdRfVar from_stack_1.global_52
  loc_9CB270: NewIfNullPr clsusuario
  loc_9CB273: from_stack_2v = clsusuario.ValidaClave(from_stack_1v)
  loc_9CB278: ILdRf var_A0
  loc_9CB27B: FLdPr Me
  loc_9CB27E: MemStStrCopy
  loc_9CB282: FFreeStr var_9C = ""
  loc_9CB289: FFree1Ad var_88
  loc_9CB28C: FLdPr Me
  loc_9CB28F: VCallAd Control_ID_UsmaUsuaTxt
  loc_9CB292: FStAdFunc var_A4
  loc_9CB295: LitNothing
  loc_9CB297: CastAd
  loc_9CB29A: FStAdFunc var_98
  loc_9CB29D: FLdRfVar var_98
  loc_9CB2A0: FLdZeroAd var_A4
  loc_9CB2A3: FStAdFuncNoPop
  loc_9CB2A6: CastAd
  loc_9CB2A9: FStAdFunc var_90
  loc_9CB2AC: FLdRfVar var_90
  loc_9CB2AF: FLdPr Me
  loc_9CB2B2: MemLdRfVar from_stack_1.global_60
  loc_9CB2B5: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9CB2BA: IStI2 Cancel
  loc_9CB2BD: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9CB2C8: ExitProcHresult
  loc_9CB2C9: EqI4
  loc_9CB2CA: AddI2
End Sub

Private Sub ResetearClaveCmd_Click() '9C8FF8
  'Data Table: 4A4C6C
  loc_9C8F28: FLdRfVar var_B0
  loc_9C8F2B: FLdRfVar var_A0
  loc_9C8F2E: LitVarStr var_9C, "CodiUsua"
  loc_9C8F33: PopAdLdVar
  loc_9C8F34: FLdRfVar var_8C
  loc_9C8F37: FLdRfVar var_88
  loc_9C8F3A: FLdPr Me
  loc_9C8F3D: MemLdRfVar from_stack_1.global_52
  loc_9C8F40: NewIfNullPr clsusuario
  loc_9C8F43: from_stack_1v = clsusuario.RsFrmGet()
  loc_9C8F48: FLdPr var_88
  loc_9C8F4B:  = Me.Fields
  loc_9C8F50: FLdPr var_8C
  loc_9C8F53: from_stack_2 = Me.Item(from_stack_1)
  loc_9C8F58: FLdPr var_A0
  loc_9C8F5B:  = Me.Value
  loc_9C8F60: FLdRfVar var_B0
  loc_9C8F63: CStrVarTmp
  loc_9C8F64: FStStrNoPop var_B4
  loc_9C8F67: FLdPr Me
  loc_9C8F6A: MemLdRfVar from_stack_1.global_52
  loc_9C8F6D: NewIfNullPr clsusuario
  loc_9C8F70: Call clsusuario.ResetearClave(from_stack_1v)
  loc_9C8F75: FFree1Str var_B4
  loc_9C8F78: FFreeAd var_88 = "": var_8C = ""
  loc_9C8F81: FFree1Var var_B0 = ""
  loc_9C8F84: LitI4 0
  loc_9C8F89: LitVarStr var_C4, "Se estableció la clave 123456 para el usuario '"
  loc_9C8F8E: FLdRfVar var_B0
  loc_9C8F91: FLdRfVar var_A0
  loc_9C8F94: LitVarStr var_9C, "CodiUsua"
  loc_9C8F99: PopAdLdVar
  loc_9C8F9A: FLdRfVar var_8C
  loc_9C8F9D: FLdRfVar var_88
  loc_9C8FA0: FLdPr Me
  loc_9C8FA3: MemLdRfVar from_stack_1.global_52
  loc_9C8FA6: NewIfNullPr clsusuario
  loc_9C8FA9: from_stack_1v = clsusuario.RsFrmGet()
  loc_9C8FAE: FLdPr var_88
  loc_9C8FB1:  = Me.Fields
  loc_9C8FB6: FLdPr var_8C
  loc_9C8FB9: from_stack_2 = Me.Item(from_stack_1)
  loc_9C8FBE: FLdPr var_A0
  loc_9C8FC1:  = Me.Value
  loc_9C8FC6: FLdRfVar var_B0
  loc_9C8FC9: ConcatVar var_D4
  loc_9C8FCD: LitVarStr var_E4, "', y debe ser cambiada por el mismo para poder ingresar al sistema."
  loc_9C8FD2: ConcatVar var_F4
  loc_9C8FD6: CStrVarVal var_B4
  loc_9C8FDA: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9C8FDF: FFree1Str var_B4
  loc_9C8FE2: FFreeAd var_88 = "": var_8C = ""
  loc_9C8FEB: FFreeVar var_B0 = "": var_D4 = ""
  loc_9C8FF4: ExitProcHresult
  loc_9C8FF5: ThisVCallI2
End Sub

Private Sub CucuPersMsk_UnknownEvent_0 '994E20
  'Data Table: 4A4C6C
  loc_994DC8: FLdPr Me
  loc_994DCB: VCallAd Control_ID_CucuPersMsk
  loc_994DCE: FStAdFunc var_88
  loc_994DD1: FLdPr var_88
  loc_994DD4: LateIdLdVar var_98 DispID_22 0
  loc_994DDB: CStrVarTmp
  loc_994DDC: FStStrNoPop var_9C
  loc_994DDF: LitStr vbNullString
  loc_994DE2: EqStr
  loc_994DE4: FFree1Str var_9C
  loc_994DE7: FFree1Ad var_88
  loc_994DEA: FFree1Var var_98 = ""
  loc_994DED: BranchF loc_994E0A
  loc_994DF0: LitVarStr var_AC, "0"
  loc_994DF5: PopAdLdVar
  loc_994DF6: FLdPr Me
  loc_994DF9: VCallAd Control_ID_CucuPersMsk
  loc_994DFC: FStAdFunc var_88
  loc_994DFF: FLdPr var_88
  loc_994E02: LateIdSt
  loc_994E07: FFree1Ad var_88
  loc_994E0A: FLdPr Me
  loc_994E0D: VCallAd Control_ID_CucuPersMsk
  loc_994E10: CVarAd
  loc_994E14: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_994E19: FFree1Var var_98 = ""
  loc_994E1C: ExitProcHresult
End Sub

Private Function CucuPersMsk_UnknownEvent_8(arg_C) '9E68B8
  'Data Table: 4A4C6C
  loc_9E67A4: FLdRfVar var_8A
  loc_9E67A7: FLdPr Me
  loc_9E67AA: VCallAd Control_ID_cmdCancelar
  loc_9E67AD: FStAdFunc var_88
  loc_9E67B0: FLdPr var_88
  loc_9E67B3:  = Me.Value
  loc_9E67B8: FLdI2 var_8A
  loc_9E67BB: NotI4
  loc_9E67BC: FLdPr Me
  loc_9E67BF: VCallAd Control_ID_CucuPersMsk
  loc_9E67C2: FStAdFunc var_90
  loc_9E67C5: FLdPr var_90
  loc_9E67C8: LateIdLdVar var_A0 DispID_13 -32767
  loc_9E67CF: CBoolVar
  loc_9E67D1: AndI4
  loc_9E67D2: FLdPr Me
  loc_9E67D5: VCallAd Control_ID_CucuPersMsk
  loc_9E67D8: FStAdFunc var_A4
  loc_9E67DB: FLdPr var_A4
  loc_9E67DE: LateIdLdVar var_B4 DispID_22 0
  loc_9E67E5: CStrVarTmp
  loc_9E67E6: FStStrNoPop var_B8
  loc_9E67E9: LitStr "0"
  loc_9E67EC: NeStr
  loc_9E67EE: AndI4
  loc_9E67EF: FFree1Str var_B8
  loc_9E67F2: FFreeAd var_88 = "": var_90 = ""
  loc_9E67FB: FFreeVar var_A0 = ""
  loc_9E6802: BranchF loc_9E68B6
  loc_9E6805: FLdPr Me
  loc_9E6808: VCallAd Control_ID_CucuPersMsk
  loc_9E680B: FStAdFunc var_88
  loc_9E680E: FLdPr var_88
  loc_9E6811: LateIdLdVar var_A0 DispID_22 0
  loc_9E6818: PopAd
  loc_9E681A: FLdPr Me
  loc_9E681D: MemLdRfVar from_stack_1.global_68
  loc_9E6820: NewIfNullRf
  loc_9E6824: FLdRfVar var_A0
  loc_9E6827: CStrVarTmp
  loc_9E6828: FStStrNoPop var_B8
  loc_9E682B: ImpAdCallI2 Proc_266_16_994244(, )
  loc_9E6830: FStStrNoPop var_BC
  loc_9E6833: FLdPr Me
  loc_9E6836: MemStStrCopy
  loc_9E683A: FFreeStr var_B8 = ""
  loc_9E6841: FFree1Ad var_88
  loc_9E6844: FFree1Var var_A0 = ""
  loc_9E6847: FLdPr Me
  loc_9E684A: VCallAd Control_ID_CucuPersMsk
  loc_9E684D: FStAdFunc var_C0
  loc_9E6850: FLdPr Me
  loc_9E6853: VCallAd Control_ID_DetaPersLbl
  loc_9E6856: FStAdFunc var_A4
  loc_9E6859: FLdRfVar var_A4
  loc_9E685C: FLdZeroAd var_C0
  loc_9E685F: FStAdFuncNoPop
  loc_9E6862: CastAd
  loc_9E6865: FStAdFunc var_90
  loc_9E6868: FLdRfVar var_90
  loc_9E686B: FLdPr Me
  loc_9E686E: MemLdRfVar from_stack_1.global_60
  loc_9E6871: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9E6876: IStI2 arg_C
  loc_9E6879: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9E6884: ILdI2 arg_C
  loc_9E6887: NotI4
  loc_9E6888: BranchF loc_9E68B6
  loc_9E688B: FLdRfVar var_B8
  loc_9E688E: FLdPr Me
  loc_9E6891: MemLdRfVar from_stack_1.global_68
  loc_9E6894: NewIfNullPr tblpersona
  loc_9E6897: from_stack_1v = tblpersona.DetaPersGet()
  loc_9E689C: ILdRf var_B8
  loc_9E689F: FLdPr Me
  loc_9E68A2: VCallAd Control_ID_DetaPersLbl
  loc_9E68A5: FStAdFunc var_88
  loc_9E68A8: FLdPr var_88
  loc_9E68AB: Me.Caption = from_stack_1
  loc_9E68B0: FFree1Str var_B8
  loc_9E68B3: FFree1Ad var_88
  loc_9E68B6: ExitProcHresult
End Function

Private Sub CucuPersMsk_KeyPress(KeyAscii As Integer) '9F2804
  'Data Table: 4A4C6C
  loc_9F26DC: ILdI2 KeyAscii
  loc_9F26DF: CI4UI1
  loc_9F26E0: LitI4 &H20
  loc_9F26E5: EqI4
  loc_9F26E6: BranchF loc_9F2801
  loc_9F26E9: LitVar_Missing var_A4
  loc_9F26EC: PopAdLdVar
  loc_9F26ED: LitVarI4
  loc_9F26F5: PopAdLdVar
  loc_9F26F6: ImpAdLdRf MemVar_C3D738
  loc_9F26F9: NewIfNullPr bscPersonas
  loc_9F26FC: bscPersonas.Show from_stack_1, from_stack_2
  loc_9F2701: FLdRfVar var_AC
  loc_9F2704: FLdRfVar var_A8
  loc_9F2707: ImpAdLdRf MemVar_C3D738
  loc_9F270A: NewIfNullPr bscPersonas
  loc_9F270D: from_stack_1v = bscPersonas.global_4297692Get()
  loc_9F2712: FLdPr var_A8
  loc_9F2715: from_stack_1 = clsbase.RecordCount
  loc_9F271A: ILdRf var_AC
  loc_9F271D: LitI4 0
  loc_9F2722: GtI4
  loc_9F2723: FFree1Ad var_A8
  loc_9F2726: BranchF loc_9F2801
  loc_9F2729: FLdRfVar var_C8
  loc_9F272C: FLdRfVar var_B8
  loc_9F272F: LitVarStr var_94, "CucuPers"
  loc_9F2734: PopAdLdVar
  loc_9F2735: FLdRfVar var_B4
  loc_9F2738: FLdRfVar var_B0
  loc_9F273B: FLdRfVar var_A8
  loc_9F273E: ImpAdLdRf MemVar_C3D738
  loc_9F2741: NewIfNullPr bscPersonas
  loc_9F2744: from_stack_1v = bscPersonas.global_4297692Get()
  loc_9F2749: FLdPr var_A8
  loc_9F274C: from_stack_1v = clsbase.RsFrmGet()
  loc_9F2751: FLdPr var_B0
  loc_9F2754:  = Me.Fields
  loc_9F2759: FLdPr var_B4
  loc_9F275C: from_stack_2 = Me.Item(from_stack_1)
  loc_9F2761: FLdPr var_B8
  loc_9F2764:  = Me.Value
  loc_9F2769: FLdRfVar var_C8
  loc_9F276C: CStrVarTmp
  loc_9F276D: CVarStr var_D8
  loc_9F2770: PopAdLdVar
  loc_9F2771: FLdPr Me
  loc_9F2774: VCallAd Control_ID_CucuPersMsk
  loc_9F2777: FStAdFunc var_DC
  loc_9F277A: FLdPr var_DC
  loc_9F277D: LateIdSt
  loc_9F2782: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F278F: FFreeVar var_C8 = ""
  loc_9F2796: FLdRfVar var_C8
  loc_9F2799: FLdRfVar var_B8
  loc_9F279C: LitVarStr var_94, "DetaPers"
  loc_9F27A1: PopAdLdVar
  loc_9F27A2: FLdRfVar var_B4
  loc_9F27A5: FLdRfVar var_B0
  loc_9F27A8: FLdRfVar var_A8
  loc_9F27AB: ImpAdLdRf MemVar_C3D738
  loc_9F27AE: NewIfNullPr bscPersonas
  loc_9F27B1: from_stack_1v = bscPersonas.global_4297692Get()
  loc_9F27B6: FLdPr var_A8
  loc_9F27B9: from_stack_1v = clsbase.RsFrmGet()
  loc_9F27BE: FLdPr var_B0
  loc_9F27C1:  = Me.Fields
  loc_9F27C6: FLdPr var_B4
  loc_9F27C9: from_stack_2 = Me.Item(from_stack_1)
  loc_9F27CE: FLdPr var_B8
  loc_9F27D1:  = Me.Value
  loc_9F27D6: FLdRfVar var_C8
  loc_9F27D9: CStrVarTmp
  loc_9F27DA: FStStrNoPop var_E0
  loc_9F27DD: FLdPr Me
  loc_9F27E0: VCallAd Control_ID_DetaPersLbl
  loc_9F27E3: FStAdFunc var_DC
  loc_9F27E6: FLdPr var_DC
  loc_9F27E9: Me.Caption = from_stack_1
  loc_9F27EE: FFree1Str var_E0
  loc_9F27F1: FFreeAd var_A8 = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_9F27FE: FFree1Var var_C8 = ""
  loc_9F2801: ExitProcHresult
  loc_9F2802: LitVar_TRUE var_BFD
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'B07E20
  'Data Table: 4A4C6C
  loc_B0769C: ILdRf Button
  loc_B0769F: FStAd var_88 
  loc_B076A3: FLdRfVar var_8C
  loc_B076A6: FLdPr var_88
  loc_B076A9:  = Me.Key
  loc_B076AE: FLdZeroAd var_8C
  loc_B076B1: FStStr var_90
  loc_B076B4: ILdRf var_90
  loc_B076B7: LitStr "btnCrear"
  loc_B076BA: EqStr
  loc_B076BC: BranchF loc_B0774E
  loc_B076BF: LitI2_Byte 1
  loc_B076C1: FLdPr Me
  loc_B076C4: MemStUI1
  loc_B076C8: ILdRf Me
  loc_B076CB: CastAd
  loc_B076CE: FStAdFunc var_94
  loc_B076D1: FLdRfVar var_94
  loc_B076D4: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_B076D9: FFree1Ad var_94
  loc_B076DC: LitI4 0
  loc_B076E1: LitI4 0
  loc_B076E6: FLdRfVar var_98
  loc_B076E9: Redim
  loc_B076F3: FLdPr Me
  loc_B076F6: VCallAd Control_ID_dgdABMS
  loc_B076F9: CVarAd
  loc_B076FD: ParmAry1St
  loc_B07703: FLdRfVar var_98
  loc_B07706: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B0770B: FLdRfVar var_98
  loc_B0770E: Erase
  loc_B0770F: ILdRf Me
  loc_B07712: CastAd
  loc_B07715: FStAdFunc var_94
  loc_B07718: FLdRfVar var_94
  loc_B0771B: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_B07720: FFree1Ad var_94
  loc_B07723: ILdRf Me
  loc_B07726: CastAd
  loc_B07729: FStAdFunc var_94
  loc_B0772C: FLdRfVar var_94
  loc_B0772F: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_B07734: FFree1Ad var_94
  loc_B07737: ILdRf Me
  loc_B0773A: CastAd
  loc_B0773D: FStAdFunc var_94
  loc_B07740: FLdRfVar var_94
  loc_B07743: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_B07748: FFree1Ad var_94
  loc_B0774B: Branch loc_B07E1D
  loc_B0774E: ILdRf var_90
  loc_B07751: LitStr "btnModificar"
  loc_B07754: EqStr
  loc_B07756: BranchF loc_B07896
  loc_B07759: FLdRfVar var_AC
  loc_B0775C: FLdPr Me
  loc_B0775F: MemLdRfVar from_stack_1.global_52
  loc_B07762: NewIfNullPr clsusuario
  loc_B07765: from_stack_1 = clsusuario.RecordCount
  loc_B0776A: ILdRf var_AC
  loc_B0776D: LitI4 0
  loc_B07772: GtI4
  loc_B07773: BranchF loc_B07886
  loc_B07776: FLdRfVar var_A8
  loc_B07779: FLdRfVar var_C4
  loc_B0777C: LitVarStr var_C0, "BajaUsua"
  loc_B07781: PopAdLdVar
  loc_B07782: FLdRfVar var_B0
  loc_B07785: FLdRfVar var_94
  loc_B07788: FLdPr Me
  loc_B0778B: MemLdRfVar from_stack_1.global_52
  loc_B0778E: NewIfNullPr clsusuario
  loc_B07791: from_stack_1v = clsusuario.RsFrmGet()
  loc_B07796: FLdPr var_94
  loc_B07799:  = Me.Fields
  loc_B0779E: FLdPr var_B0
  loc_B077A1: from_stack_2 = Me.Item(from_stack_1)
  loc_B077A6: FLdPr var_C4
  loc_B077A9:  = Me.Value
  loc_B077AE: FLdRfVar var_A8
  loc_B077B1: LitVarStr var_D4, vbNullString
  loc_B077B6: HardType
  loc_B077B7: NeVarBool
  loc_B077B9: FFreeAd var_94 = "": var_B0 = ""
  loc_B077C2: FFree1Var var_A8 = ""
  loc_B077C5: BranchF loc_B077D8
  loc_B077C8: LitI4 0
  loc_B077CD: LitStr "El usuario está dado de baja. Verifique..."
  loc_B077D0: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B077D5: Branch loc_B07883
  loc_B077D8: LitI2_Byte 2
  loc_B077DA: FLdPr Me
  loc_B077DD: MemStUI1
  loc_B077E1: ILdRf Me
  loc_B077E4: CastAd
  loc_B077E7: FStAdFunc var_94
  loc_B077EA: FLdRfVar var_94
  loc_B077ED: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_B077F2: FFree1Ad var_94
  loc_B077F5: LitI4 0
  loc_B077FA: LitI4 0
  loc_B077FF: FLdRfVar var_98
  loc_B07802: Redim
  loc_B0780C: FLdPr Me
  loc_B0780F: VCallAd Control_ID_dgdABMS
  loc_B07812: CVarAd
  loc_B07816: ParmAry1St
  loc_B0781C: FLdRfVar var_98
  loc_B0781F: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B07824: FLdRfVar var_98
  loc_B07827: Erase
  loc_B07828: ILdRf Me
  loc_B0782B: CastAd
  loc_B0782E: FStAdFunc var_94
  loc_B07831: FLdRfVar var_94
  loc_B07834: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_B07839: FFree1Ad var_94
  loc_B0783C: ILdRf Me
  loc_B0783F: CastAd
  loc_B07842: FStAdFunc var_94
  loc_B07845: FLdRfVar var_94
  loc_B07848: ImpAdCallFPR4 Proc_261_12_A04B24()
  loc_B0784D: FFree1Ad var_94
  loc_B07850: LitI4 0
  loc_B07855: LitI4 0
  loc_B0785A: FLdRfVar var_98
  loc_B0785D: Redim
  loc_B07867: FLdPr Me
  loc_B0786A: VCallAd Control_ID_CodiUsuaTxt
  loc_B0786D: CVarAd
  loc_B07871: ParmAry1St
  loc_B07877: FLdRfVar var_98
  loc_B0787A: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_B0787F: FLdRfVar var_98
  loc_B07882: Erase
  loc_B07883: Branch loc_B07893
  loc_B07886: LitI4 0
  loc_B0788B: LitStr "No existen registros."
  loc_B0788E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B07893: Branch loc_B07E1D
  loc_B07896: ILdRf var_90
  loc_B07899: LitStr "btnEliminar"
  loc_B0789C: EqStr
  loc_B0789E: BranchF loc_B079A0
  loc_B078A1: FLdRfVar var_AC
  loc_B078A4: FLdPr Me
  loc_B078A7: MemLdRfVar from_stack_1.global_52
  loc_B078AA: NewIfNullPr clsusuario
  loc_B078AD: from_stack_1 = clsusuario.RecordCount
  loc_B078B2: ILdRf var_AC
  loc_B078B5: LitI4 0
  loc_B078BA: GtI4
  loc_B078BB: BranchF loc_B0799D
  loc_B078BE: FLdRfVar var_A8
  loc_B078C1: FLdRfVar var_C4
  loc_B078C4: LitVarStr var_C0, "CodiUsua"
  loc_B078C9: PopAdLdVar
  loc_B078CA: FLdRfVar var_B0
  loc_B078CD: FLdRfVar var_94
  loc_B078D0: FLdPr Me
  loc_B078D3: MemLdRfVar from_stack_1.global_52
  loc_B078D6: NewIfNullPr clsusuario
  loc_B078D9: from_stack_1v = clsusuario.RsFrmGet()
  loc_B078DE: FLdPr var_94
  loc_B078E1:  = Me.Fields
  loc_B078E6: FLdPr var_B0
  loc_B078E9: from_stack_2 = Me.Item(from_stack_1)
  loc_B078EE: FLdPr var_C4
  loc_B078F1:  = Me.Value
  loc_B078F6: LitVar_Missing var_164
  loc_B078F9: LitVar_Missing var_144
  loc_B078FC: LitVar_Missing var_124
  loc_B078FF: LitI4 4
  loc_B07904: LitVarStr var_D4, "¿Desea dar de baja al usuario '"
  loc_B07909: FLdRfVar var_A8
  loc_B0790C: ConcatVar var_E4
  loc_B07910: LitVarStr var_F4, "'?"
  loc_B07915: ConcatVar var_104
  loc_B07919: ImpAdCallI2 MsgBox(, , , , )
  loc_B0791E: LitI4 6
  loc_B07923: EqI4
  loc_B07924: FFreeAd var_94 = "": var_B0 = ""
  loc_B0792D: FFreeVar var_A8 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = ""
  loc_B0793C: BranchF loc_B0799D
  loc_B0793F: FLdRfVar var_A8
  loc_B07942: FLdRfVar var_C4
  loc_B07945: LitVarStr var_C0, "CodiUsua"
  loc_B0794A: PopAdLdVar
  loc_B0794B: FLdRfVar var_B0
  loc_B0794E: FLdRfVar var_94
  loc_B07951: FLdPr Me
  loc_B07954: MemLdRfVar from_stack_1.global_52
  loc_B07957: NewIfNullPr clsusuario
  loc_B0795A: from_stack_1v = clsusuario.RsFrmGet()
  loc_B0795F: FLdPr var_94
  loc_B07962:  = Me.Fields
  loc_B07967: FLdPr var_B0
  loc_B0796A: from_stack_2 = Me.Item(from_stack_1)
  loc_B0796F: FLdPr var_C4
  loc_B07972:  = Me.Value
  loc_B07977: LitI2_Byte &HFF
  loc_B07979: FLdRfVar var_A8
  loc_B0797C: CStrVarTmp
  loc_B0797D: FStStrNoPop var_8C
  loc_B07980: FLdPr Me
  loc_B07983: MemLdRfVar from_stack_1.global_52
  loc_B07986: NewIfNullPr clsusuario
  loc_B07989: Call clsusuario.Anular(from_stack_1v, from_stack_2v)
  loc_B0798E: FFree1Str var_8C
  loc_B07991: FFreeAd var_94 = "": var_B0 = ""
  loc_B0799A: FFree1Var var_A8 = ""
  loc_B0799D: Branch loc_B07E1D
  loc_B079A0: ILdRf var_90
  loc_B079A3: LitStr "btnGuardar"
  loc_B079A6: EqStr
  loc_B079A8: BranchF loc_B07CED
  loc_B079AB: LitStr vbNullString
  loc_B079AE: FLdPr Me
  loc_B079B1: MemStStrCopy
  loc_B079B5: LitI2_Byte 0
  loc_B079B7: PopTmpLdAd2 var_166
  loc_B079BA: Call CodiUsuaTxt_Validate(from_stack_1v)
  loc_B079BF: FLdPr Me
  loc_B079C2: MemLdStr global_60
  loc_B079C5: LitStr vbNullString
  loc_B079C8: NeStr
  loc_B079CA: BranchF loc_B079CE
  loc_B079CD: ExitProcHresult
  loc_B079CE: LitI2_Byte 0
  loc_B079D0: PopTmpLdAd2 var_166
  loc_B079D3: from_stack_2v = CucuPersMsk_UnknownEvent_8(from_stack_1v)
  loc_B079D8: FLdPr Me
  loc_B079DB: MemLdStr global_60
  loc_B079DE: LitStr vbNullString
  loc_B079E1: NeStr
  loc_B079E3: BranchF loc_B079E7
  loc_B079E6: ExitProcHresult
  loc_B079E7: LitI2_Byte 0
  loc_B079E9: PopTmpLdAd2 var_166
  loc_B079EC: Call CoenUsuaTxt_Validate(from_stack_1v)
  loc_B079F1: FLdPr Me
  loc_B079F4: MemLdStr global_60
  loc_B079F7: LitStr vbNullString
  loc_B079FA: NeStr
  loc_B079FC: BranchF loc_B07A00
  loc_B079FF: ExitProcHresult
  loc_B07A00: LitI2_Byte 0
  loc_B07A02: PopTmpLdAd2 var_166
  loc_B07A05: Call ComaUsuaTxt_Validate(from_stack_1v)
  loc_B07A0A: FLdPr Me
  loc_B07A0D: MemLdStr global_60
  loc_B07A10: LitStr vbNullString
  loc_B07A13: NeStr
  loc_B07A15: BranchF loc_B07A19
  loc_B07A18: ExitProcHresult
  loc_B07A19: FLdRfVar var_8C
  loc_B07A1C: FLdPr Me
  loc_B07A1F: VCallAd Control_ID_ComaUsuaTxt
  loc_B07A22: FStAdFunc var_94
  loc_B07A25: FLdPr var_94
  loc_B07A28:  = Me.Text
  loc_B07A2D: ILdRf var_8C
  loc_B07A30: FLdRfVar var_170
  loc_B07A33: FLdPr Me
  loc_B07A36: VCallAd Control_ID_ComaUsuaTxtConfirmar
  loc_B07A39: FStAdFunc var_B0
  loc_B07A3C: FLdPr var_B0
  loc_B07A3F:  = Me.Text
  loc_B07A44: ILdRf var_170
  loc_B07A47: NeStr
  loc_B07A49: FFreeStr var_8C = ""
  loc_B07A50: FFreeAd var_94 = ""
  loc_B07A57: BranchF loc_B07A93
  loc_B07A5A: LitI4 0
  loc_B07A5F: LitStr "La confirmación de la clave es incorrecta, reintente..."
  loc_B07A62: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B07A67: LitStr vbNullString
  loc_B07A6A: FLdPr Me
  loc_B07A6D: VCallAd Control_ID_ComaUsuaTxtConfirmar
  loc_B07A70: FStAdFunc var_94
  loc_B07A73: FLdPr var_94
  loc_B07A76: Me.Text = from_stack_1
  loc_B07A7B: FFree1Ad var_94
  loc_B07A7E: FLdPr Me
  loc_B07A81: VCallAd Control_ID_ComaUsuaTxtConfirmar
  loc_B07A84: FStAdFunc var_94
  loc_B07A87: FLdPr var_94
  loc_B07A8A: Me.SetFocus
  loc_B07A8F: FFree1Ad var_94
  loc_B07A92: ExitProcHresult
  loc_B07A93: FLdRfVar var_8C
  loc_B07A96: FLdPr Me
  loc_B07A99: VCallAd Control_ID_ComaUsuaTxt
  loc_B07A9C: FStAdFunc var_94
  loc_B07A9F: FLdPr var_94
  loc_B07AA2:  = Me.Text
  loc_B07AA7: FLdZeroAd var_8C
  loc_B07AAA: FStStr var_16C
  loc_B07AAD: FFree1Ad var_94
  loc_B07AB0: FLdPr Me
  loc_B07AB3: MemLdUI1 global_56
  loc_B07AB7: FStUI1 var_172
  loc_B07ABB: FLdUI1
  loc_B07ABF: LitI2_Byte 1
  loc_B07AC1: EqI2
  loc_B07AC2: BranchF loc_B07BB5
  loc_B07AC5: FLdRfVar var_8C
  loc_B07AC8: FLdPr Me
  loc_B07ACB: VCallAd Control_ID_CodiUsuaTxt
  loc_B07ACE: FStAdFunc var_94
  loc_B07AD1: FLdPr var_94
  loc_B07AD4:  = Me.Text
  loc_B07AD9: ILdRf var_8C
  loc_B07ADC: ImpAdCallI2 Trim$()
  loc_B07AE1: FStStr var_19C
  loc_B07AE4: FLdPr Me
  loc_B07AE7: VCallAd Control_ID_CucuPersMsk
  loc_B07AEA: FStAdFunc var_B0
  loc_B07AED: FLdPr var_B0
  loc_B07AF0: LateIdLdVar var_A8 DispID_22 0
  loc_B07AF7: PopAd
  loc_B07AF9: FLdRfVar var_166
  loc_B07AFC: FLdPr Me
  loc_B07AFF: VCallAd Control_ID_AcreUsuaChk
  loc_B07B02: FStAdFunc var_C4
  loc_B07B05: FLdPr var_C4
  loc_B07B08:  = Me.Value
  loc_B07B0D: FLdRfVar var_170
  loc_B07B10: FLdPr Me
  loc_B07B13: VCallAd Control_ID_CoenUsuaTxt
  loc_B07B16: FStAdFunc var_178
  loc_B07B19: FLdPr var_178
  loc_B07B1C:  = Me.Text
  loc_B07B21: FLdRfVar var_180
  loc_B07B24: FLdPr Me
  loc_B07B27: VCallAd Control_ID_CoenUsuaTxt
  loc_B07B2A: FStAdFunc var_17C
  loc_B07B2D: FLdPr var_17C
  loc_B07B30:  = Me.Text
  loc_B07B35: FLdRfVar var_188
  loc_B07B38: FLdPr Me
  loc_B07B3B: VCallAd Control_ID_UsmaUsuaTxt
  loc_B07B3E: FStAdFunc var_184
  loc_B07B41: FLdPr var_184
  loc_B07B44:  = Me.Text
  loc_B07B49: FLdRfVar var_190
  loc_B07B4C: FLdPr Me
  loc_B07B4F: VCallAd Control_ID_ComaUsuaTxt
  loc_B07B52: FStAdFunc var_18C
  loc_B07B55: FLdPr var_18C
  loc_B07B58:  = Me.Text
  loc_B07B5D: LitI2_Byte &HFF
  loc_B07B5F: ILdRf var_190
  loc_B07B62: ILdRf var_188
  loc_B07B65: ILdRf var_180
  loc_B07B68: ILdRf var_170
  loc_B07B6B: FLdI2 var_166
  loc_B07B6E: CUI1I2
  loc_B07B70: FLdRfVar var_A8
  loc_B07B73: CStrVarTmp
  loc_B07B74: FStStrNoPop var_198
  loc_B07B77: FLdZeroAd var_19C
  loc_B07B7A: FStStrNoPop var_194
  loc_B07B7D: FLdPr Me
  loc_B07B80: MemLdRfVar from_stack_1.global_52
  loc_B07B83: NewIfNullPr clsusuario
  loc_B07B86: Call clsusuario.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_B07B8B: FFreeStr var_8C = "": var_194 = "": var_198 = "": var_170 = "": var_180 = "": var_188 = "": var_190 = ""
  loc_B07B9E: FFreeAd var_94 = "": var_B0 = "": var_C4 = "": var_178 = "": var_17C = "": var_184 = ""
  loc_B07BAF: FFree1Var var_A8 = ""
  loc_B07BB2: Branch loc_B07CE5
  loc_B07BB5: FLdUI1
  loc_B07BB9: LitI2_Byte 2
  loc_B07BBB: EqI2
  loc_B07BBC: BranchF loc_B07CE5
  loc_B07BBF: FLdRfVar var_E4
  loc_B07BC2: FLdRfVar var_C4
  loc_B07BC5: LitVarStr var_C0, "CodiUsua"
  loc_B07BCA: PopAdLdVar
  loc_B07BCB: FLdRfVar var_B0
  loc_B07BCE: FLdRfVar var_94
  loc_B07BD1: FLdPr Me
  loc_B07BD4: MemLdRfVar from_stack_1.global_52
  loc_B07BD7: NewIfNullPr clsusuario
  loc_B07BDA: from_stack_1v = clsusuario.RsFrmGet()
  loc_B07BDF: FLdPr var_94
  loc_B07BE2:  = Me.Fields
  loc_B07BE7: FLdPr var_B0
  loc_B07BEA: from_stack_2 = Me.Item(from_stack_1)
  loc_B07BEF: FLdPr var_C4
  loc_B07BF2:  = Me.Value
  loc_B07BF7: FLdPr Me
  loc_B07BFA: VCallAd Control_ID_CucuPersMsk
  loc_B07BFD: FStAdFunc var_178
  loc_B07C00: FLdPr var_178
  loc_B07C03: LateIdLdVar var_A8 DispID_22 0
  loc_B07C0A: PopAd
  loc_B07C0C: FLdRfVar var_166
  loc_B07C0F: FLdPr Me
  loc_B07C12: VCallAd Control_ID_InhaUsuaChk
  loc_B07C15: FStAdFunc var_17C
  loc_B07C18: FLdPr var_17C
  loc_B07C1B:  = Me.Value
  loc_B07C20: FLdRfVar var_19E
  loc_B07C23: FLdPr Me
  loc_B07C26: VCallAd Control_ID_AcreUsuaChk
  loc_B07C29: FStAdFunc var_184
  loc_B07C2C: FLdPr var_184
  loc_B07C2F:  = Me.Value
  loc_B07C34: FLdRfVar var_8C
  loc_B07C37: FLdPr Me
  loc_B07C3A: VCallAd Control_ID_CoenUsuaTxt
  loc_B07C3D: FStAdFunc var_18C
  loc_B07C40: FLdPr var_18C
  loc_B07C43:  = Me.Text
  loc_B07C48: FLdRfVar var_170
  loc_B07C4B: FLdPr Me
  loc_B07C4E: VCallAd Control_ID_CoenUsuaTxt
  loc_B07C51: FStAdFunc var_1A4
  loc_B07C54: FLdPr var_1A4
  loc_B07C57:  = Me.Text
  loc_B07C5C: FLdRfVar var_180
  loc_B07C5F: FLdPr Me
  loc_B07C62: VCallAd Control_ID_UsmaUsuaTxt
  loc_B07C65: FStAdFunc var_1A8
  loc_B07C68: FLdPr var_1A8
  loc_B07C6B:  = Me.Text
  loc_B07C70: FLdRfVar var_188
  loc_B07C73: FLdPr Me
  loc_B07C76: VCallAd Control_ID_ComaUsuaTxt
  loc_B07C79: FStAdFunc var_1AC
  loc_B07C7C: FLdPr var_1AC
  loc_B07C7F:  = Me.Text
  loc_B07C84: LitI2_Byte &HFF
  loc_B07C86: ILdRf var_188
  loc_B07C89: ILdRf var_180
  loc_B07C8C: ILdRf var_170
  loc_B07C8F: ILdRf var_8C
  loc_B07C92: FLdI2 var_19E
  loc_B07C95: CUI1I2
  loc_B07C97: FLdI2 var_166
  loc_B07C9A: CUI1I2
  loc_B07C9C: FLdRfVar var_A8
  loc_B07C9F: CStrVarTmp
  loc_B07CA0: FStStrNoPop var_194
  loc_B07CA3: FLdRfVar var_E4
  loc_B07CA6: CStrVarTmp
  loc_B07CA7: FStStrNoPop var_190
  loc_B07CAA: FLdPr Me
  loc_B07CAD: MemLdRfVar from_stack_1.global_52
  loc_B07CB0: NewIfNullPr clsusuario
  loc_B07CB3: Call clsusuario.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v)
  loc_B07CB8: FFreeStr var_190 = "": var_194 = "": var_8C = "": var_170 = "": var_180 = ""
  loc_B07CC7: FFreeAd var_94 = "": var_B0 = "": var_178 = "": var_17C = "": var_184 = "": var_18C = "": var_1A4 = "": var_1A8 = "": var_1AC = ""
  loc_B07CDE: FFreeVar var_A8 = ""
  loc_B07CE5: Call cmdCancelar_Click()
  loc_B07CEA: Branch loc_B07E1D
  loc_B07CED: ILdRf var_90
  loc_B07CF0: LitStr "btnCancelar"
  loc_B07CF3: EqStr
  loc_B07CF5: BranchF loc_B07D00
  loc_B07CF8: Call cmdCancelar_Click()
  loc_B07CFD: Branch loc_B07E1D
  loc_B07D00: ILdRf var_90
  loc_B07D03: LitStr "btnPrimero"
  loc_B07D06: EqStr
  loc_B07D08: BranchF loc_B07D1C
  loc_B07D0B: FLdPr Me
  loc_B07D0E: MemLdRfVar from_stack_1.global_52
  loc_B07D11: NewIfNullPr clsusuario
  loc_B07D14: Call clsusuario.MoveFirst()
  loc_B07D19: Branch loc_B07E1D
  loc_B07D1C: ILdRf var_90
  loc_B07D1F: LitStr "btnAnterior"
  loc_B07D22: EqStr
  loc_B07D24: BranchF loc_B07D38
  loc_B07D27: FLdPr Me
  loc_B07D2A: MemLdRfVar from_stack_1.global_52
  loc_B07D2D: NewIfNullPr clsusuario
  loc_B07D30: Call clsusuario.MovePrevious()
  loc_B07D35: Branch loc_B07E1D
  loc_B07D38: ILdRf var_90
  loc_B07D3B: LitStr "btnSiguiente"
  loc_B07D3E: EqStr
  loc_B07D40: BranchF loc_B07D54
  loc_B07D43: FLdPr Me
  loc_B07D46: MemLdRfVar from_stack_1.global_52
  loc_B07D49: NewIfNullPr clsusuario
  loc_B07D4C: Call clsusuario.MoveNext()
  loc_B07D51: Branch loc_B07E1D
  loc_B07D54: ILdRf var_90
  loc_B07D57: LitStr "btnUltimo"
  loc_B07D5A: EqStr
  loc_B07D5C: BranchF loc_B07D70
  loc_B07D5F: FLdPr Me
  loc_B07D62: MemLdRfVar from_stack_1.global_52
  loc_B07D65: NewIfNullPr clsusuario
  loc_B07D68: Call clsusuario.MoveLast()
  loc_B07D6D: Branch loc_B07E1D
  loc_B07D70: ILdRf var_90
  loc_B07D73: LitStr "btnFiltrar"
  loc_B07D76: EqStr
  loc_B07D78: BranchF loc_B07D7E
  loc_B07D7B: Branch loc_B07E1D
  loc_B07D7E: ILdRf var_90
  loc_B07D81: LitStr "btnBuscar"
  loc_B07D84: EqStr
  loc_B07D86: BranchF loc_B07D8C
  loc_B07D89: Branch loc_B07E1D
  loc_B07D8C: ILdRf var_90
  loc_B07D8F: LitStr "btnImprimir"
  loc_B07D92: EqStr
  loc_B07D94: BranchF loc_B07DC6
  loc_B07D97: ImpAdLdRf MemVar_C3DE80
  loc_B07D9A: NewIfNullAd
  loc_B07D9D: CastAd
  loc_B07DA0: FStAdFuncNoPop
  loc_B07DA3: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_B07DA8: FFree1Ad var_94
  loc_B07DAB: LitVar_Missing var_D4
  loc_B07DAE: PopAdLdVar
  loc_B07DAF: LitVarI4
  loc_B07DB7: PopAdLdVar
  loc_B07DB8: ImpAdLdRf MemVar_C3DE80
  loc_B07DBB: NewIfNullPr rptListadodeUsuarios
  loc_B07DBE: rptListadodeUsuarios.Show from_stack_1, from_stack_2
  loc_B07DC3: Branch loc_B07E1D
  loc_B07DC6: ILdRf var_90
  loc_B07DC9: LitStr "btnAyuda"
  loc_B07DCC: EqStr
  loc_B07DCE: BranchF loc_B07DFD
  loc_B07DD1: LitVar_Missing var_124
  loc_B07DD4: LitVar_Missing var_104
  loc_B07DD7: LitVar_Missing var_E4
  loc_B07DDA: LitI4 0
  loc_B07DDF: LitVarStr var_C0, "Opción no disponible en esta versión."
  loc_B07DE4: FStVarCopyObj var_A8
  loc_B07DE7: FLdRfVar var_A8
  loc_B07DEA: ImpAdCallFPR4 MsgBox(, , , , )
  loc_B07DEF: FFreeVar var_A8 = "": var_E4 = "": var_104 = ""
  loc_B07DFA: Branch loc_B07E1D
  loc_B07DFD: ILdRf var_90
  loc_B07E00: LitStr "btnSalir"
  loc_B07E03: EqStr
  loc_B07E05: BranchF loc_B07E1D
  loc_B07E08: ILdRf Me
  loc_B07E0B: FStAdNoPop
  loc_B07E0F: ImpAdLdRf MemVar_C44F9C
  loc_B07E12: NewIfNullPr Me
  loc_B07E15: Me.Global.Unload from_stack_1
  loc_B07E1A: FFree1Ad var_94
  loc_B07E1D: ExitProcHresult
End Sub

Private Sub FiltroTxt_Change() 'A2D250
  'Data Table: 4A4C6C
  loc_A2D064: FLdRfVar var_8C
  loc_A2D067: FLdPr Me
  loc_A2D06A: VCallAd Control_ID_FiltroTxt
  loc_A2D06D: FStAdFunc var_88
  loc_A2D070: FLdPr var_88
  loc_A2D073:  = Me.Text
  loc_A2D078: ILdRf var_8C
  loc_A2D07B: ImpAdCallI2 Trim$()
  loc_A2D080: FStStrNoPop var_90
  loc_A2D083: LitStr vbNullString
  loc_A2D086: NeStr
  loc_A2D088: FFreeStr var_8C = ""
  loc_A2D08F: FFree1Ad var_88
  loc_A2D092: BranchF loc_A2D1F6
  loc_A2D095: FLdRfVar var_92
  loc_A2D098: FLdPr Me
  loc_A2D09B: VCallAd Control_ID_FiltroCbo
  loc_A2D09E: FStAdFunc var_88
  loc_A2D0A1: FLdPr var_88
  loc_A2D0A4:  = Me.ListIndex
  loc_A2D0A9: FLdI2 var_92
  loc_A2D0AC: LitI2_Byte 0
  loc_A2D0AE: EqI2
  loc_A2D0AF: FFree1Ad var_88
  loc_A2D0B2: BranchF loc_A2D141
  loc_A2D0B5: LitStr "CodiUsua LIKE '" & Chr(37)
  loc_A2D0B8: FLdRfVar var_8C
  loc_A2D0BB: FLdPr Me
  loc_A2D0BE: VCallAd Control_ID_FiltroTxt
  loc_A2D0C1: FStAdFunc var_88
  loc_A2D0C4: FLdPr var_88
  loc_A2D0C7:  = Me.Text
  loc_A2D0CC: ILdRf var_8C
  loc_A2D0CF: ConcatStr
  loc_A2D0D0: FStStrNoPop var_90
  loc_A2D0D3: LitStr Chr(37) & "'"
  loc_A2D0D6: ConcatStr
  loc_A2D0D7: PopTmpLdAdStr
  loc_A2D0DB: FLdPr Me
  loc_A2D0DE: MemLdRfVar from_stack_1.global_52
  loc_A2D0E1: NewIfNullPr clsusuario
  loc_A2D0E4: Call clsusuario.Filter(from_stack_1v)
  loc_A2D0E9: FFreeStr var_8C = "": var_90 = ""
  loc_A2D0F2: FFree1Ad var_88
  loc_A2D0F5: LitStr "CodiUsua"
  loc_A2D0F8: FStStrCopy var_8C
  loc_A2D0FB: FLdRfVar var_8C
  loc_A2D0FE: FLdPr Me
  loc_A2D101: MemLdRfVar from_stack_1.global_52
  loc_A2D104: NewIfNullPr clsusuario
  loc_A2D107: Call clsusuario.Sort(from_stack_1v)
  loc_A2D10C: FFree1Str var_8C
  loc_A2D10F: LitStr "código es igual a "
  loc_A2D112: FLdRfVar var_8C
  loc_A2D115: FLdPr Me
  loc_A2D118: VCallAd Control_ID_FiltroTxt
  loc_A2D11B: FStAdFunc var_88
  loc_A2D11E: FLdPr var_88
  loc_A2D121:  = Me.Text
  loc_A2D126: ILdRf var_8C
  loc_A2D129: ConcatStr
  loc_A2D12A: FStStrNoPop var_90
  loc_A2D12D: FLdPr Me
  loc_A2D130: MemStStrCopy
  loc_A2D134: FFreeStr var_8C = ""
  loc_A2D13B: FFree1Ad var_88
  loc_A2D13E: Branch loc_A2D1F3
  loc_A2D141: FLdRfVar var_92
  loc_A2D144: FLdPr Me
  loc_A2D147: VCallAd Control_ID_FiltroCbo
  loc_A2D14A: FStAdFunc var_88
  loc_A2D14D: FLdPr var_88
  loc_A2D150:  = Me.ListIndex
  loc_A2D155: FLdI2 var_92
  loc_A2D158: LitI2_Byte 1
  loc_A2D15A: EqI2
  loc_A2D15B: FFree1Ad var_88
  loc_A2D15E: BranchF loc_A2D1F3
  loc_A2D161: LitStr "DetaPers LIKE '" & Chr(37)
  loc_A2D164: FLdRfVar var_8C
  loc_A2D167: FLdPr Me
  loc_A2D16A: VCallAd Control_ID_FiltroTxt
  loc_A2D16D: FStAdFunc var_88
  loc_A2D170: FLdPr var_88
  loc_A2D173:  = Me.Text
  loc_A2D178: ILdRf var_8C
  loc_A2D17B: ConcatStr
  loc_A2D17C: FStStrNoPop var_90
  loc_A2D17F: LitStr Chr(37) & "'"
  loc_A2D182: ConcatStr
  loc_A2D183: PopTmpLdAdStr
  loc_A2D187: FLdPr Me
  loc_A2D18A: MemLdRfVar from_stack_1.global_52
  loc_A2D18D: NewIfNullPr clsusuario
  loc_A2D190: Call clsusuario.Filter(from_stack_1v)
  loc_A2D195: FFreeStr var_8C = "": var_90 = ""
  loc_A2D19E: FFree1Ad var_88
  loc_A2D1A1: LitStr "DetaPers"
  loc_A2D1A4: FStStrCopy var_8C
  loc_A2D1A7: FLdRfVar var_8C
  loc_A2D1AA: FLdPr Me
  loc_A2D1AD: MemLdRfVar from_stack_1.global_52
  loc_A2D1B0: NewIfNullPr clsusuario
  loc_A2D1B3: Call clsusuario.Sort(from_stack_1v)
  loc_A2D1B8: FFree1Str var_8C
  loc_A2D1BB: LitStr "detalle que contiene """
  loc_A2D1BE: FLdRfVar var_8C
  loc_A2D1C1: FLdPr Me
  loc_A2D1C4: VCallAd Control_ID_FiltroTxt
  loc_A2D1C7: FStAdFunc var_88
  loc_A2D1CA: FLdPr var_88
  loc_A2D1CD:  = Me.Text
  loc_A2D1D2: ILdRf var_8C
  loc_A2D1D5: ConcatStr
  loc_A2D1D6: FStStrNoPop var_90
  loc_A2D1D9: LitStr """"
  loc_A2D1DC: ConcatStr
  loc_A2D1DD: FStStrNoPop var_98
  loc_A2D1E0: FLdPr Me
  loc_A2D1E3: MemStStrCopy
  loc_A2D1E7: FFreeStr var_8C = "": var_90 = ""
  loc_A2D1F0: FFree1Ad var_88
  loc_A2D1F3: Branch loc_A2D21A
  loc_A2D1F6: LitStr vbNullString
  loc_A2D1F9: FStStrCopy var_8C
  loc_A2D1FC: FLdRfVar var_8C
  loc_A2D1FF: FLdPr Me
  loc_A2D202: MemLdRfVar from_stack_1.global_52
  loc_A2D205: NewIfNullPr clsusuario
  loc_A2D208: Call clsusuario.Filter(from_stack_1v)
  loc_A2D20D: FFree1Str var_8C
  loc_A2D210: LitStr vbNullString
  loc_A2D213: FLdPr Me
  loc_A2D216: MemStStrCopy
  loc_A2D21A: FLdPr Me
  loc_A2D21D: VCallAd Control_ID_dgdABMS
  loc_A2D220: FStAdFunc var_9C
  loc_A2D223: LitI4 0
  loc_A2D228: FStStrCopy var_8C
  loc_A2D22B: FLdRfVar var_8C
  loc_A2D22E: FLdPr Me
  loc_A2D231: MemLdStr global_64
  loc_A2D234: FLdZeroAd var_9C
  loc_A2D237: FStAdFunc var_88
  loc_A2D23A: FLdRfVar var_88
  loc_A2D23D: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A2D242: FFree1Str var_8C
  loc_A2D245: FFreeAd var_88 = ""
  loc_A2D24C: ExitProcHresult
End Sub

Private Sub FiltroTxt_GotFocus() '94AD30
  'Data Table: 4A4C6C
  loc_94AD1C: FLdPr Me
  loc_94AD1F: VCallAd Control_ID_FiltroTxt
  loc_94AD22: CVarAd
  loc_94AD26: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94AD2B: FFree1Var var_94 = ""
  loc_94AD2E: ExitProcHresult
End Sub

Private Sub FiltroTxt_KeyPress(KeyAscii As Integer) '93FD8C
  'Data Table: 4A4C6C
  loc_93FD88: ExitProcHresult
  loc_93FD89: PopTmpLdAdStr
End Sub

Private Sub Form_Load() '9E9134
  'Data Table: 4A4C6C
  loc_9E9014: LitStr "Municipalidad de Guaymallén"
  loc_9E9017: FStStrCopy var_88
  loc_9E901A: ILdRf var_88
  loc_9E901D: LitStr "Municipalidad de Tupungato"
  loc_9E9020: EqStr
  loc_9E9022: BranchF loc_9E9041
  loc_9E9025: LitI4 &H14
  loc_9E902A: FLdPr Me
  loc_9E902D: VCallAd Control_ID_CodiUsuaTxt
  loc_9E9030: FStAdFunc var_8C
  loc_9E9033: FLdPr var_8C
  loc_9E9036: Me.MaxLength = from_stack_1
  loc_9E903B: FFree1Ad var_8C
  loc_9E903E: Branch loc_9E905A
  loc_9E9041: LitI4 8
  loc_9E9046: FLdPr Me
  loc_9E9049: VCallAd Control_ID_CodiUsuaTxt
  loc_9E904C: FStAdFunc var_8C
  loc_9E904F: FLdPr var_8C
  loc_9E9052: Me.MaxLength = from_stack_1
  loc_9E9057: FFree1Ad var_8C
  loc_9E905A: LitI2_Byte 0
  loc_9E905C: CR8I2
  loc_9E905D: PopFPR4
  loc_9E905E: FLdPr Me
  loc_9E9061: Me.Left = from_stack_1s
  loc_9E9066: LitI2_Byte 0
  loc_9E9068: CR8I2
  loc_9E9069: PopFPR4
  loc_9E906A: FLdPr Me
  loc_9E906D: Me.Top = from_stack_1s
  loc_9E9072: LitStr "SELECT usuario.*, IFNULL(DetaPers,'') DetaPers"
  loc_9E9075: LitStr " FROM infogov.usuario"
  loc_9E9078: ConcatStr
  loc_9E9079: FStStrNoPop var_90
  loc_9E907C: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = usuario.CucuPers"
  loc_9E907F: ConcatStr
  loc_9E9080: FStStrNoPop var_94
  loc_9E9083: LitStr " ORDER BY CodiUsua"
  loc_9E9086: ConcatStr
  loc_9E9087: FStStrNoPop var_98
  loc_9E908A: FLdPr Me
  loc_9E908D: MemLdRfVar from_stack_1.global_52
  loc_9E9090: NewIfNullPr clsusuario
  loc_9E9093: Call clsusuario.RedefineRS(from_stack_1v)
  loc_9E9098: FFreeStr var_90 = "": var_94 = ""
  loc_9E90A1: LitVarI2 var_A8, 0
  loc_9E90A6: PopAdLdVar
  loc_9E90A7: LitStr "Usuario (Código)"
  loc_9E90AA: FLdPr Me
  loc_9E90AD: VCallAd Control_ID_FiltroCbo
  loc_9E90B0: FStAdFunc var_8C
  loc_9E90B3: FLdPr var_8C
  loc_9E90B6: Me.AddItem from_stack_1, from_stack_2
  loc_9E90BB: FFree1Ad var_8C
  loc_9E90BE: LitVarI2 var_A8, 1
  loc_9E90C3: PopAdLdVar
  loc_9E90C4: LitStr "Usuario (Detalle)"
  loc_9E90C7: FLdPr Me
  loc_9E90CA: VCallAd Control_ID_FiltroCbo
  loc_9E90CD: FStAdFunc var_8C
  loc_9E90D0: FLdPr var_8C
  loc_9E90D3: Me.AddItem from_stack_1, from_stack_2
  loc_9E90D8: FFree1Ad var_8C
  loc_9E90DB: LitI2_Byte 0
  loc_9E90DD: FLdPr Me
  loc_9E90E0: VCallAd Control_ID_FiltroCbo
  loc_9E90E3: FStAdFunc var_8C
  loc_9E90E6: FLdPr var_8C
  loc_9E90E9: Me.ListIndex = from_stack_1
  loc_9E90EE: FFree1Ad var_8C
  loc_9E90F1: FLdPr Me
  loc_9E90F4: MemLdRfVar from_stack_1.global_52
  loc_9E90F7: NewIfNullAd
  loc_9E90FA: FStAd var_AC 
  loc_9E90FE: FLdRfVar var_AC
  loc_9E9101: CVarRef
  loc_9E9106: ILdRf Me
  loc_9E9109: CastAd
  loc_9E910C: FStAdFunc var_8C
  loc_9E910F: FLdRfVar var_8C
  loc_9E9112: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_9E9117: ILdRf var_AC
  loc_9E911A: CastAd
  loc_9E911D: FLdPr Me
  loc_9E9120: MemStAdFunc
  loc_9E9124: FFreeAd var_8C = ""
  loc_9E912B: Call cmdCancelar_Click()
  loc_9E9130: ExitProcHresult
End Sub

Private Sub Form_Activate() '997C5C
  'Data Table: 4A4C6C
  loc_997C00: FLdRfVar var_C2
  loc_997C03: FLdRfVar var_C0
  loc_997C06: LitVarI2 var_B8, 1
  loc_997C0B: FLdPr Me
  loc_997C0E: VCallAd Control_ID_tlbABMS
  loc_997C11: FStAdFunc var_88
  loc_997C14: FLdPr var_88
  loc_997C17: LateIdLdVar var_98 DispID_3 0
  loc_997C1E: CastAdVar Me
  loc_997C22: FStAdFunc var_BC
  loc_997C25: FLdPr var_BC
  loc_997C28:  = Me.Buttons.ControlDefault
  loc_997C2D: FLdPr var_C0
  loc_997C30:  = Me.Enabled
  loc_997C35: FLdI2 var_C2
  loc_997C38: FFreeAd var_88 = "": var_BC = ""
  loc_997C41: FFreeVar var_98 = ""
  loc_997C48: BranchF loc_997C59
  loc_997C4B: FLdPr Me
  loc_997C4E: MemLdRfVar from_stack_1.global_52
  loc_997C51: NewIfNullPr clsusuario
  loc_997C54: Call clsusuario.Requery()
  loc_997C59: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '948E74
  'Data Table: 4A4C6C
  loc_948E60: ILdI2 KeyAscii
  loc_948E63: CI4UI1
  loc_948E64: LitI4 &HD
  loc_948E69: EqI4
  loc_948E6A: BranchF loc_948E72
  loc_948E6D: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_948E72: ExitProcHresult
  loc_948E73: ConcatStr
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '960700
  'Data Table: 4A4C6C
  loc_9606E8: ILdI2 KeyCode
  loc_9606EB: ILdRf Me
  loc_9606EE: CastAd
  loc_9606F1: FStAdFunc var_88
  loc_9606F4: FLdRfVar var_88
  loc_9606F7: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_9606FC: FFree1Ad var_88
  loc_9606FF: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '9F36E4
  'Data Table: 4A4C6C
  loc_9F35B0: LitI2_Byte 0
  loc_9F35B2: CUI1I2
  loc_9F35B4: FLdPr Me
  loc_9F35B7: MemStUI1
  loc_9F35BB: ILdRf Me
  loc_9F35BE: CastAd
  loc_9F35C1: FStAdFunc var_88
  loc_9F35C4: FLdRfVar var_88
  loc_9F35C7: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9F35CC: FFree1Ad var_88
  loc_9F35CF: LitI4 0
  loc_9F35D4: LitI4 0
  loc_9F35D9: FLdRfVar var_8C
  loc_9F35DC: Redim
  loc_9F35E6: FLdPr Me
  loc_9F35E9: VCallAd Control_ID_dgdABMS
  loc_9F35EC: CVarAd
  loc_9F35F0: ParmAry1St
  loc_9F35F6: FLdRfVar var_8C
  loc_9F35F9: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9F35FE: FLdRfVar var_8C
  loc_9F3601: Erase
  loc_9F3602: FLdPr Me
  loc_9F3605: MemLdRfVar from_stack_1.global_52
  loc_9F3608: NewIfNullAd
  loc_9F360B: FStAd var_A0 
  loc_9F360F: FLdRfVar var_A0
  loc_9F3612: CVarRef
  loc_9F3617: ILdRf Me
  loc_9F361A: CastAd
  loc_9F361D: FStAdFunc var_88
  loc_9F3620: FLdRfVar var_88
  loc_9F3623: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_9F3628: ILdRf var_A0
  loc_9F362B: CastAd
  loc_9F362E: FLdPr Me
  loc_9F3631: MemStAdFunc
  loc_9F3635: FFreeAd var_88 = ""
  loc_9F363C: FLdRfVar var_B4
  loc_9F363F: FLdPr Me
  loc_9F3642: MemLdRfVar from_stack_1.global_52
  loc_9F3645: NewIfNullPr clsusuario
  loc_9F3648: from_stack_1 = clsusuario.RecordCount
  loc_9F364D: ILdRf var_B4
  loc_9F3650: LitI4 0
  loc_9F3655: EqI4
  loc_9F3656: BranchF loc_9F3670
  loc_9F3659: ILdRf Me
  loc_9F365C: CastAd
  loc_9F365F: FStAdFunc var_88
  loc_9F3662: FLdRfVar var_88
  loc_9F3665: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_9F366A: FFree1Ad var_88
  loc_9F366D: Branch loc_9F36CE
  loc_9F3670: LitI4 0
  loc_9F3675: LitI4 1
  loc_9F367A: FLdRfVar var_8C
  loc_9F367D: Redim
  loc_9F3687: FLdPr Me
  loc_9F368A: MemLdRfVar from_stack_1.global_52
  loc_9F368D: NewIfNullAd
  loc_9F3690: FStAd var_88 
  loc_9F3694: FLdRfVar var_88
  loc_9F3697: CVarRef
  loc_9F369C: ParmAry1St
  loc_9F36A2: FLdPr Me
  loc_9F36A5: VCallAd Control_ID_dgdABMS
  loc_9F36A8: CVarAd
  loc_9F36AC: ParmAry1St
  loc_9F36B2: FLdRfVar var_8C
  loc_9F36B5: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_9F36BA: ILdRf var_88
  loc_9F36BD: CastAd
  loc_9F36C0: FLdPr Me
  loc_9F36C3: MemStAdFunc
  loc_9F36C7: FLdRfVar var_8C
  loc_9F36CA: Erase
  loc_9F36CB: FFree1Ad var_88
  loc_9F36CE: ILdRf Me
  loc_9F36D1: CastAd
  loc_9F36D4: FStAdFunc var_88
  loc_9F36D7: FLdRfVar var_88
  loc_9F36DA: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9F36DF: FFree1Ad var_88
  loc_9F36E2: ExitProcHresult
End Sub

Private Sub CodiUsuaTxt_GotFocus() '94AA18
  'Data Table: 4A4C6C
  loc_94AA04: FLdPr Me
  loc_94AA07: VCallAd Control_ID_CodiUsuaTxt
  loc_94AA0A: CVarAd
  loc_94AA0E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94AA13: FFree1Var var_94 = ""
  loc_94AA16: ExitProcHresult
End Sub

Private Sub CodiUsuaTxt_Validate(Cancel As Boolean) '9BBBE0
  'Data Table: 4A4C6C
  loc_9BBB2C: FLdRfVar var_8A
  loc_9BBB2F: FLdPr Me
  loc_9BBB32: VCallAd Control_ID_cmdCancelar
  loc_9BBB35: FStAdFunc var_88
  loc_9BBB38: FLdPr var_88
  loc_9BBB3B:  = Me.Value
  loc_9BBB40: FLdI2 var_8A
  loc_9BBB43: NotI4
  loc_9BBB44: FLdRfVar var_92
  loc_9BBB47: FLdPr Me
  loc_9BBB4A: VCallAd Control_ID_CodiUsuaTxt
  loc_9BBB4D: FStAdFunc var_90
  loc_9BBB50: FLdPr var_90
  loc_9BBB53:  = Me.Enabled
  loc_9BBB58: FLdI2 var_92
  loc_9BBB5B: AndI4
  loc_9BBB5C: FFreeAd var_88 = ""
  loc_9BBB63: BranchF loc_9BBBDE
  loc_9BBB66: FLdRfVar var_9C
  loc_9BBB69: FLdRfVar var_98
  loc_9BBB6C: FLdPr Me
  loc_9BBB6F: VCallAd Control_ID_CodiUsuaTxt
  loc_9BBB72: FStAdFunc var_88
  loc_9BBB75: FLdPr var_88
  loc_9BBB78:  = Me.Text
  loc_9BBB7D: ILdRf var_98
  loc_9BBB80: FLdPr Me
  loc_9BBB83: MemLdRfVar from_stack_1.global_52
  loc_9BBB86: NewIfNullPr clsusuario
  loc_9BBB89: from_stack_2v = clsusuario.ValidaClave(from_stack_1v)
  loc_9BBB8E: ILdRf var_9C
  loc_9BBB91: FLdPr Me
  loc_9BBB94: MemStStrCopy
  loc_9BBB98: FFreeStr var_98 = ""
  loc_9BBB9F: FFree1Ad var_88
  loc_9BBBA2: FLdPr Me
  loc_9BBBA5: VCallAd Control_ID_CodiUsuaTxt
  loc_9BBBA8: FStAdFunc var_A4
  loc_9BBBAB: LitNothing
  loc_9BBBAD: CastAd
  loc_9BBBB0: FStAdFunc var_A0
  loc_9BBBB3: FLdRfVar var_A0
  loc_9BBBB6: FLdZeroAd var_A4
  loc_9BBBB9: FStAdFuncNoPop
  loc_9BBBBC: CastAd
  loc_9BBBBF: FStAdFunc var_90
  loc_9BBBC2: FLdRfVar var_90
  loc_9BBBC5: FLdPr Me
  loc_9BBBC8: MemLdRfVar from_stack_1.global_60
  loc_9BBBCB: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9BBBD0: IStI2 Cancel
  loc_9BBBD3: FFreeAd var_88 = "": var_90 = "": var_A0 = ""
  loc_9BBBDE: ExitProcHresult
End Sub

Private Sub CoenUsuaTxt_GotFocus() '94A7D8
  'Data Table: 4A4C6C
  loc_94A7C4: FLdPr Me
  loc_94A7C7: VCallAd Control_ID_CoenUsuaTxt
  loc_94A7CA: CVarAd
  loc_94A7CE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A7D3: FFree1Var var_94 = ""
  loc_94A7D6: ExitProcHresult
End Sub

Private Sub CoenUsuaTxt_Validate(Cancel As Boolean) '9D0718
  'Data Table: 4A4C6C
  loc_9D063C: FLdRfVar var_8A
  loc_9D063F: FLdPr Me
  loc_9D0642: VCallAd Control_ID_cmdCancelar
  loc_9D0645: FStAdFunc var_88
  loc_9D0648: FLdPr var_88
  loc_9D064B:  = Me.Value
  loc_9D0650: FLdI2 var_8A
  loc_9D0653: NotI4
  loc_9D0654: FLdRfVar var_92
  loc_9D0657: FLdPr Me
  loc_9D065A: VCallAd Control_ID_CoenUsuaTxt
  loc_9D065D: FStAdFunc var_90
  loc_9D0660: FLdPr var_90
  loc_9D0663:  = Me.Enabled
  loc_9D0668: FLdI2 var_92
  loc_9D066B: AndI4
  loc_9D066C: FLdRfVar var_9C
  loc_9D066F: FLdPr Me
  loc_9D0672: VCallAd Control_ID_CoenUsuaTxt
  loc_9D0675: FStAdFunc var_98
  loc_9D0678: FLdPr var_98
  loc_9D067B:  = Me.Text
  loc_9D0680: ILdRf var_9C
  loc_9D0683: LitStr vbNullString
  loc_9D0686: NeStr
  loc_9D0688: AndI4
  loc_9D0689: FFree1Str var_9C
  loc_9D068C: FFreeAd var_88 = "": var_90 = ""
  loc_9D0695: BranchF loc_9D0716
  loc_9D0698: FLdRfVar var_9C
  loc_9D069B: FLdPr Me
  loc_9D069E: VCallAd Control_ID_CoenUsuaTxt
  loc_9D06A1: FStAdFunc var_88
  loc_9D06A4: FLdPr var_88
  loc_9D06A7:  = Me.Text
  loc_9D06AC: LitI2_Byte 0
  loc_9D06AE: PopTmpLdAd2 var_9E
  loc_9D06B1: LitI2_Byte 0
  loc_9D06B3: PopTmpLdAd2 var_92
  loc_9D06B6: LitI2_Byte 0
  loc_9D06B8: PopTmpLdAd2 var_8A
  loc_9D06BB: ILdRf var_9C
  loc_9D06BE: LitStr "Dirección de correo"
  loc_9D06C1: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9D06C6: FStStrNoPop var_A4
  loc_9D06C9: FLdPr Me
  loc_9D06CC: MemStStrCopy
  loc_9D06D0: FFreeStr var_9C = ""
  loc_9D06D7: FFree1Ad var_88
  loc_9D06DA: FLdPr Me
  loc_9D06DD: VCallAd Control_ID_CoenUsuaTxt
  loc_9D06E0: FStAdFunc var_A8
  loc_9D06E3: LitNothing
  loc_9D06E5: CastAd
  loc_9D06E8: FStAdFunc var_98
  loc_9D06EB: FLdRfVar var_98
  loc_9D06EE: FLdZeroAd var_A8
  loc_9D06F1: FStAdFuncNoPop
  loc_9D06F4: CastAd
  loc_9D06F7: FStAdFunc var_90
  loc_9D06FA: FLdRfVar var_90
  loc_9D06FD: FLdPr Me
  loc_9D0700: MemLdRfVar from_stack_1.global_60
  loc_9D0703: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9D0708: IStI2 Cancel
  loc_9D070B: FFreeAd var_88 = "": var_90 = "": var_98 = ""
  loc_9D0716: ExitProcHresult
End Sub

Private Function Proc_145_27_9577E8() '9577E8
  'Data Table: 4A4C6C
  loc_9577D0: FLdPr Me
  loc_9577D3: VCallAd Control_ID_dgdABMS
  loc_9577D6: FStAdFunc var_88
  loc_9577D9: FLdRfVar var_88
  loc_9577DC: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_9577E1: FFree1Ad var_88
  loc_9577E4: ExitProcHresult
End Function
