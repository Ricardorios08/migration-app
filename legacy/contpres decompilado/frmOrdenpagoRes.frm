VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form frmOrdenpagoRes
  Caption = "Orden de Pago Reservada"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmOrdenpagoRes.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 13755
  ClientHeight = 10035
  Begin VB.Frame Frame1
    Caption = " Orden de Pago Reservada"
    Left = 120
    Top = 3720
    Width = 14295
    Height = 2535
    TabIndex = 7
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox txtOpReservada
      Left = 4800
      Top = 480
      Width = 1575
      Height = 375
      TabIndex = 16
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 700
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.TextBox DetaLiquTxt
      ForeColor = &HFF0000&
      Left = 1200
      Top = 960
      Width = 12855
      Height = 1275
      TabIndex = 11
      MultiLine = -1  'True
      ScrollBars = 2
      DataField = "DetaLiqu"
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
    Begin MSMask.MaskEdBox FechLiquMsk
      Left = 1200
      Top = 480
      Width = 1455
      Height = 360
      TabIndex = 9
      OleObjectBlob = "frmOrdenpagoRes.frx":08CA
      DataField = "FechLiqu"
    End
    Begin VB.Label Label2
      Caption = "OP Reservada :"
      Left = 3000
      Top = 480
      Width = 1665
      Height = 300
      TabIndex = 15
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
      Caption = "Detalle:"
      Left = 255
      Top = 960
      Width = 810
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
    Begin VB.Label Label3
      Caption = "Fecha :"
      Left = 240
      Top = 480
      Width = 795
      Height = 300
      TabIndex = 8
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
  End
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 720
    Width = 10695
    Height = 855
    TabIndex = 2
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
      TabIndex = 3
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
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 4
      OleObjectBlob = "frmOrdenpagoRes.frx":097A
    End
  End
  Begin MSFlexGridLib.MSFlexGrid LiquidaNetoFlex
    Left = 120
    Top = 6840
    Width = 14295
    Height = 2655
    TabIndex = 12
    OleObjectBlob = "frmOrdenpagoRes.frx":0A02
    Appearance = 0 'Flat
  End
  Begin MSComctlLib.ProgressBar ProgressBar
    Left = 120
    Top = 2400
    Width = 14295
    Height = 495
    Visible = 0   'False
    TabIndex = 6
    OleObjectBlob = "frmOrdenpagoRes.frx":0AEE
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 14295
    Height = 1935
    TabIndex = 5
    OleObjectBlob = "frmOrdenpagoRes.frx":0B56
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmOrdenpagoRes.frx":0EEA
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 13755
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmOrdenpagoRes.frx":8A68
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmOrdenpagoRes.frx":8FC4
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin VB.Label lblTotalMP
    Left = 10320
    Top = 6360
    Width = 3375
    Height = 375
    TabIndex = 14
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    DataFormat = 80
  End
  Begin VB.Label Label1
    Caption = "Total Mand. pagar:"
    Left = 8040
    Top = 6360
    Width = 2055
    Height = 375
    TabIndex = 13
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

Attribute VB_Name = "frmOrdenpagoRes"


Private Sub cmdCancelar_Click() '9EEBDC
  'Data Table: 45A708
  loc_9EEAB4: LitI2_Byte 0
  loc_9EEAB6: CUI1I2
  loc_9EEAB8: FLdPr Me
  loc_9EEABB: MemStUI1
  loc_9EEABF: ILdRf Me
  loc_9EEAC2: CastAd
  loc_9EEAC5: FStAdFunc var_88
  loc_9EEAC8: FLdRfVar var_88
  loc_9EEACB: ImpAdCallFPR4  = Proc_261_1_AC96D8()
  loc_9EEAD0: FFree1Ad var_88
  loc_9EEAD3: LitI4 0
  loc_9EEAD8: LitI4 0
  loc_9EEADD: FLdRfVar var_8C
  loc_9EEAE0: Redim
  loc_9EEAEA: FLdPr Me
  loc_9EEAED: VCallAd Control_ID_dgdABMS
  loc_9EEAF0: CVarAd
  loc_9EEAF4: ParmAry1St
  loc_9EEAFA: FLdRfVar var_8C
  loc_9EEAFD: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9EEB02: FLdRfVar var_8C
  loc_9EEB05: Erase
  loc_9EEB06: FLdPr Me
  loc_9EEB09: MemLdRfVar from_stack_1.global_56
  loc_9EEB0C: NewIfNullAd
  loc_9EEB0F: FStAd var_A0 
  loc_9EEB13: FLdRfVar var_A0
  loc_9EEB16: CVarRef
  loc_9EEB1B: ILdRf Me
  loc_9EEB1E: CastAd
  loc_9EEB21: FStAdFunc var_88
  loc_9EEB24: FLdRfVar var_88
  loc_9EEB27: ImpAdCallFPR4  = Proc_261_8_9C2398()
  loc_9EEB2C: ILdRf var_A0
  loc_9EEB2F: CastAd
  loc_9EEB32: FLdPr Me
  loc_9EEB35: MemStAdFunc
  loc_9EEB39: FFreeAd var_88 = ""
  loc_9EEB40: ILdRf Me
  loc_9EEB43: CastAd
  loc_9EEB46: FStAdFunc var_88
  loc_9EEB49: FLdRfVar var_88
  loc_9EEB4C: ImpAdCallFPR4  = Proc_261_14_9D98D4()
  loc_9EEB51: FFree1Ad var_88
  loc_9EEB54: FLdPr Me
  loc_9EEB57: MemLdRfVar from_stack_1.global_56
  loc_9EEB5A: NewIfNullPr clsliquidacion
  loc_9EEB5D: Call clsliquidacion.Requery()
  loc_9EEB62: Call Proc_296_17_9C8968()
  loc_9EEB67: LitI2_Byte 0
  loc_9EEB69: LitVarI2 var_9C, 0
  loc_9EEB6E: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_9EEB73: FFree1Var var_9C = ""
  loc_9EEB76: LitI4 0
  loc_9EEB7B: LitI4 0
  loc_9EEB80: FLdRfVar var_8C
  loc_9EEB83: Redim
  loc_9EEB8D: FLdPr Me
  loc_9EEB90: VCallAd Control_ID_LiquidaNetoFlex
  loc_9EEB93: CVarAd
  loc_9EEB97: ParmAry1St
  loc_9EEB9D: FLdRfVar var_8C
  loc_9EEBA0: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_9EEBA5: FLdRfVar var_8C
  loc_9EEBA8: Erase
  loc_9EEBA9: FLdPr Me
  loc_9EEBAC: VCallAd Control_ID_dgdABMS
  loc_9EEBAF: FStAdFunc var_A0
  loc_9EEBB2: LitStr "Liquidacion/es pendiente/s de Orden de Pago"
  loc_9EEBB5: FStStrCopy var_B4
  loc_9EEBB8: FLdRfVar var_B4
  loc_9EEBBB: FLdPr Me
  loc_9EEBBE: MemLdStr global_80
  loc_9EEBC1: FLdZeroAd var_A0
  loc_9EEBC4: FStAdFunc var_88
  loc_9EEBC7: FLdRfVar var_88
  loc_9EEBCA: ImpAdCallFPR4  = Proc_261_62_9D9F1C(, )
  loc_9EEBCF: FFree1Str var_B4
  loc_9EEBD2: FFreeAd var_88 = ""
  loc_9EEBD9: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '99A4BC
  'Data Table: 45A708
  loc_99A460: FLdRfVar var_B4
  loc_99A463: FLdRfVar var_B0
  loc_99A466: FLdI2 ColIndex
  loc_99A469: CVarI2 var_A8
  loc_99A46C: PopAdLdVar
  loc_99A46D: FLdPr Me
  loc_99A470: VCallAd Control_ID_dgdABMS
  loc_99A473: FStAdFunc var_88
  loc_99A476: FLdPr var_88
  loc_99A479: LateIdLdVar var_98 DispID_105 0
  loc_99A480: CastAdVar Me
  loc_99A484: FStAdFunc var_AC
  loc_99A487: FLdPr var_AC
  loc_99A48A: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_99A48F: FLdPr var_B0
  loc_99A492:  = Me.DataField
  loc_99A497: FLdZeroAd var_B4
  loc_99A49A: PopTmpLdAdStr
  loc_99A49E: FLdPr Me
  loc_99A4A1: MemLdRfVar from_stack_1.global_56
  loc_99A4A4: NewIfNullPr clsliquidacion
  loc_99A4A7: Call clsliquidacion.Sort(from_stack_1v)
  loc_99A4AC: FFree1Str var_B8
  loc_99A4AF: FFreeAd var_88 = "": var_AC = ""
  loc_99A4B8: FFree1Var var_98 = ""
  loc_99A4BB: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'AB92A0
  'Data Table: 45A708
  loc_AB8D9C: LitStr vbNullString
  loc_AB8D9F: FLdPr Me
  loc_AB8DA2: VCallAd Control_ID_lblTotalMP
  loc_AB8DA5: FStAdFunc var_90
  loc_AB8DA8: FLdPr var_90
  loc_AB8DAB: Me.Caption = from_stack_1
  loc_AB8DB0: FFree1Ad var_90
  loc_AB8DB3: FLdRfVar var_94
  loc_AB8DB6: FLdPr Me
  loc_AB8DB9: MemLdRfVar from_stack_1.global_56
  loc_AB8DBC: NewIfNullPr clsliquidacion
  loc_AB8DBF: from_stack_1 = clsliquidacion.RecordCount
  loc_AB8DC4: ILdRf var_94
  loc_AB8DC7: LitI4 0
  loc_AB8DCC: GtI4
  loc_AB8DCD: BranchF loc_AB9283
  loc_AB8DD0: FLdRfVar var_96
  loc_AB8DD3: FLdPr Me
  loc_AB8DD6: MemLdRfVar from_stack_1.global_56
  loc_AB8DD9: NewIfNullPr clsliquidacion
  loc_AB8DDC: from_stack_1 = clsliquidacion.EOF
  loc_AB8DE1: FLdI2 var_96
  loc_AB8DE4: BranchF loc_AB8DF5
  loc_AB8DE7: FLdPr Me
  loc_AB8DEA: MemLdRfVar from_stack_1.global_56
  loc_AB8DED: NewIfNullPr clsliquidacion
  loc_AB8DF0: Call clsliquidacion.MoveLast()
  loc_AB8DF5: FLdRfVar var_96
  loc_AB8DF8: FLdPr Me
  loc_AB8DFB: MemLdRfVar from_stack_1.global_56
  loc_AB8DFE: NewIfNullPr clsliquidacion
  loc_AB8E01: from_stack_1 = clsliquidacion.BOF
  loc_AB8E06: FLdI2 var_96
  loc_AB8E09: BranchF loc_AB8E1A
  loc_AB8E0C: FLdPr Me
  loc_AB8E0F: MemLdRfVar from_stack_1.global_56
  loc_AB8E12: NewIfNullPr clsliquidacion
  loc_AB8E15: Call clsliquidacion.MoveFirst()
  loc_AB8E1A: Call Proc_296_17_9C8968()
  loc_AB8E1F: FLdRfVar var_94
  loc_AB8E22: FLdPr Me
  loc_AB8E25: MemLdRfVar from_stack_1.global_56
  loc_AB8E28: NewIfNullPr clsliquidacion
  loc_AB8E2B: from_stack_1 = clsliquidacion.RecordCount
  loc_AB8E30: ILdRf var_94
  loc_AB8E33: LitI4 0
  loc_AB8E38: GtI4
  loc_AB8E39: BranchF loc_AB9280
  loc_AB8E3C: LitStr "SELECT lqn.*, DetaProv, DetaRete"
  loc_AB8E3F: LitStr " FROM liquidaneto lqn"
  loc_AB8E42: ConcatStr
  loc_AB8E43: FStStrNoPop var_9C
  loc_AB8E46: LitStr " INNER JOIN proveedor p ON p.CucuPers = lqn.CucuPers"
  loc_AB8E49: ConcatStr
  loc_AB8E4A: FStStrNoPop var_A0
  loc_AB8E4D: LitStr " INNER JOIN retenciones r ON r.PeriInfo = lqn.PeriInfo AND r.CodiRete = lqn.CodiRete"
  loc_AB8E50: ConcatStr
  loc_AB8E51: FStStrNoPop var_A4
  loc_AB8E54: LitStr " WHERE lqn.PeriInfo = "
  loc_AB8E57: ConcatStr
  loc_AB8E58: FStStrNoPop var_A8
  loc_AB8E5B: ImpAdLdI2 MemVar_C3D064
  loc_AB8E5E: CStrUI1
  loc_AB8E60: FStStrNoPop var_AC
  loc_AB8E63: ConcatStr
  loc_AB8E64: FStStrNoPop var_B0
  loc_AB8E67: LitStr " AND lqn.ExpeImpu = '"
  loc_AB8E6A: ConcatStr
  loc_AB8E6B: CVarStr var_E8
  loc_AB8E6E: FLdRfVar var_D8
  loc_AB8E71: FLdRfVar var_C8
  loc_AB8E74: LitVarStr var_C4, "ExpeImpu"
  loc_AB8E79: PopAdLdVar
  loc_AB8E7A: FLdRfVar var_B4
  loc_AB8E7D: FLdRfVar var_90
  loc_AB8E80: FLdPr Me
  loc_AB8E83: MemLdRfVar from_stack_1.global_56
  loc_AB8E86: NewIfNullPr clsliquidacion
  loc_AB8E89: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AB8E8E: FLdPr var_90
  loc_AB8E91:  = Me.Fields
  loc_AB8E96: FLdPr var_B4
  loc_AB8E99: from_stack_2 = Me.Item(from_stack_1)
  loc_AB8E9E: FLdPr var_C8
  loc_AB8EA1:  = Me.Value
  loc_AB8EA6: FLdRfVar var_D8
  loc_AB8EA9: ConcatVar var_F8
  loc_AB8EAD: LitVarStr var_108, "'"
  loc_AB8EB2: ConcatVar var_118
  loc_AB8EB6: LitVarStr var_128, " AND lqn.NumeLiqu = "
  loc_AB8EBB: ConcatVar var_138
  loc_AB8EBF: FLdRfVar var_164
  loc_AB8EC2: FLdRfVar var_154
  loc_AB8EC5: LitVarStr var_150, "NumeLiqu"
  loc_AB8ECA: PopAdLdVar
  loc_AB8ECB: FLdRfVar var_140
  loc_AB8ECE: FLdRfVar var_13C
  loc_AB8ED1: FLdPr Me
  loc_AB8ED4: MemLdRfVar from_stack_1.global_56
  loc_AB8ED7: NewIfNullPr clsliquidacion
  loc_AB8EDA: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AB8EDF: FLdPr var_13C
  loc_AB8EE2:  = Me.Fields
  loc_AB8EE7: FLdPr var_140
  loc_AB8EEA: from_stack_2 = Me.Item(from_stack_1)
  loc_AB8EEF: FLdPr var_154
  loc_AB8EF2:  = Me.Value
  loc_AB8EF7: FLdRfVar var_164
  loc_AB8EFA: ConcatVar var_174
  loc_AB8EFE: LitVarStr var_184, " ORDER BY DetaProv, lqn.CucuPers, lqn.CodiRete;"
  loc_AB8F03: ConcatVar var_194
  loc_AB8F07: CStrVarVal var_198
  loc_AB8F0B: FLdPr Me
  loc_AB8F0E: MemLdRfVar from_stack_1.global_60
  loc_AB8F11: NewIfNullPr clsliquidacion
  loc_AB8F14: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_AB8F19: FFreeStr var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = ""
  loc_AB8F2A: FFreeAd var_90 = "": var_B4 = "": var_C8 = "": var_13C = "": var_140 = ""
  loc_AB8F39: FFreeVar var_E8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_164 = "": var_174 = ""
  loc_AB8F4C: FLdRfVar var_94
  loc_AB8F4F: FLdPr Me
  loc_AB8F52: MemLdRfVar from_stack_1.global_60
  loc_AB8F55: NewIfNullPr clsliquidacion
  loc_AB8F58: from_stack_1 = clsliquidacion.RecordCount
  loc_AB8F5D: ILdRf var_94
  loc_AB8F60: LitI4 0
  loc_AB8F65: GtI4
  loc_AB8F66: BranchF loc_AB9236
  loc_AB8F69: FLdPr Me
  loc_AB8F6C: MemLdRfVar from_stack_1.global_60
  loc_AB8F6F: NewIfNullPr clsliquidacion
  loc_AB8F72: Call clsliquidacion.MoveFirst()
  loc_AB8F77: FLdRfVar var_96
  loc_AB8F7A: FLdPr Me
  loc_AB8F7D: MemLdRfVar from_stack_1.global_60
  loc_AB8F80: NewIfNullPr clsliquidacion
  loc_AB8F83: from_stack_1 = clsliquidacion.EOF
  loc_AB8F88: FLdI2 var_96
  loc_AB8F8B: NotI4
  loc_AB8F8C: BranchF loc_AB9236
  loc_AB8F8F: FLdRfVar var_1A4
  loc_AB8F92: LitVarStr var_128, "ImpoLine"
  loc_AB8F97: PopAdLdVar
  loc_AB8F98: FLdRfVar var_1A0
  loc_AB8F9B: FLdRfVar var_19C
  loc_AB8F9E: FLdPr Me
  loc_AB8FA1: MemLdRfVar from_stack_1.global_60
  loc_AB8FA4: NewIfNullPr clsliquidacion
  loc_AB8FA7: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AB8FAC: FLdPr var_19C
  loc_AB8FAF:  = Me.Fields
  loc_AB8FB4: FLdPr var_1A0
  loc_AB8FB7: from_stack_2 = Me.Item(from_stack_1)
  loc_AB8FBC: FLdRfVar var_210
  loc_AB8FBF: FLdRfVar var_200
  loc_AB8FC2: LitVarStr var_184, "CodiRete"
  loc_AB8FC7: PopAdLdVar
  loc_AB8FC8: FLdRfVar var_1FC
  loc_AB8FCB: FLdRfVar var_1F8
  loc_AB8FCE: FLdPr Me
  loc_AB8FD1: MemLdRfVar from_stack_1.global_60
  loc_AB8FD4: NewIfNullPr clsliquidacion
  loc_AB8FD7: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AB8FDC: FLdPr var_1F8
  loc_AB8FDF:  = Me.Fields
  loc_AB8FE4: FLdPr var_1FC
  loc_AB8FE7: from_stack_2 = Me.Item(from_stack_1)
  loc_AB8FEC: FLdPr var_200
  loc_AB8FEF:  = Me.Value
  loc_AB8FF4: FLdRfVar var_E8
  loc_AB8FF7: FLdRfVar var_C8
  loc_AB8FFA: LitVarStr var_C4, "CucuPers"
  loc_AB8FFF: PopAdLdVar
  loc_AB9000: FLdRfVar var_B4
  loc_AB9003: FLdRfVar var_90
  loc_AB9006: FLdPr Me
  loc_AB9009: MemLdRfVar from_stack_1.global_60
  loc_AB900C: NewIfNullPr clsliquidacion
  loc_AB900F: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AB9014: FLdPr var_90
  loc_AB9017:  = Me.Fields
  loc_AB901C: FLdPr var_B4
  loc_AB901F: from_stack_2 = Me.Item(from_stack_1)
  loc_AB9024: FLdPr var_C8
  loc_AB9027:  = Me.Value
  loc_AB902C: FLdRfVar var_E8
  loc_AB902F: LitI4 9
  loc_AB9034: FLdRfVar var_D8
  loc_AB9037: ImpAdCallFPR4  = Chr()
  loc_AB903C: FLdRfVar var_D8
  loc_AB903F: ConcatVar var_F8
  loc_AB9043: FLdRfVar var_118
  loc_AB9046: FLdRfVar var_154
  loc_AB9049: LitVarStr var_108, "DetaProv"
  loc_AB904E: PopAdLdVar
  loc_AB904F: FLdRfVar var_140
  loc_AB9052: FLdRfVar var_13C
  loc_AB9055: FLdPr Me
  loc_AB9058: MemLdRfVar from_stack_1.global_60
  loc_AB905B: NewIfNullPr clsliquidacion
  loc_AB905E: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AB9063: FLdPr var_13C
  loc_AB9066:  = Me.Fields
  loc_AB906B: FLdPr var_140
  loc_AB906E: from_stack_2 = Me.Item(from_stack_1)
  loc_AB9073: FLdPr var_154
  loc_AB9076:  = Me.Value
  loc_AB907B: FLdRfVar var_118
  loc_AB907E: ConcatVar var_138
  loc_AB9082: LitI4 9
  loc_AB9087: FLdRfVar var_164
  loc_AB908A: ImpAdCallFPR4  = Chr()
  loc_AB908F: FLdRfVar var_164
  loc_AB9092: ConcatVar var_174
  loc_AB9096: LitI4 1
  loc_AB909B: LitI4 1
  loc_AB90A0: LitVarStr var_150, "currency"
  loc_AB90A5: FStVarCopyObj var_1B4
  loc_AB90A8: FLdRfVar var_1B4
  loc_AB90AB: FLdZeroAd var_1A4
  loc_AB90AE: CVarAd
  loc_AB90B2: ImpAdCallI2 Format$(, )
  loc_AB90B7: CVarStr var_1C4
  loc_AB90BA: ConcatVar var_1D4
  loc_AB90BE: LitI4 9
  loc_AB90C3: FLdRfVar var_1E4
  loc_AB90C6: ImpAdCallFPR4  = Chr()
  loc_AB90CB: FLdRfVar var_1E4
  loc_AB90CE: ConcatVar var_1F4
  loc_AB90D2: LitVarStr var_250, "Retención"
  loc_AB90D7: FStVarCopyObj var_260
  loc_AB90DA: FLdRfVar var_260
  loc_AB90DD: LitVarStr var_230, "Cheque"
  loc_AB90E2: FStVarCopyObj var_240
  loc_AB90E5: FLdRfVar var_240
  loc_AB90E8: FLdRfVar var_210
  loc_AB90EB: FnCStrVar
  loc_AB90ED: FStStrNoPop var_9C
  loc_AB90F0: LitStr "0"
  loc_AB90F3: EqStr
  loc_AB90F5: CVarBoolI2 var_220
  loc_AB90F9: FLdRfVar var_270
  loc_AB90FC: ImpAdCallFPR4  = IIf(, , )
  loc_AB9101: FLdRfVar var_270
  loc_AB9104: ConcatVar var_280
  loc_AB9108: LitI4 9
  loc_AB910D: FLdRfVar var_290
  loc_AB9110: ImpAdCallFPR4  = Chr()
  loc_AB9115: FLdRfVar var_290
  loc_AB9118: ConcatVar var_2A0
  loc_AB911C: FLdRfVar var_2CC
  loc_AB911F: FLdRfVar var_2BC
  loc_AB9122: LitVarStr var_2B8, "DetaRete"
  loc_AB9127: PopAdLdVar
  loc_AB9128: FLdRfVar var_2A8
  loc_AB912B: FLdRfVar var_2A4
  loc_AB912E: FLdPr Me
  loc_AB9131: MemLdRfVar from_stack_1.global_60
  loc_AB9134: NewIfNullPr clsliquidacion
  loc_AB9137: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AB913C: FLdPr var_2A4
  loc_AB913F:  = Me.Fields
  loc_AB9144: FLdPr var_2A8
  loc_AB9147: from_stack_2 = Me.Item(from_stack_1)
  loc_AB914C: FLdPr var_2BC
  loc_AB914F:  = Me.Value
  loc_AB9154: FLdRfVar var_2CC
  loc_AB9157: ConcatVar var_2DC
  loc_AB915B: CStrVarTmp
  loc_AB915C: CVarStr var_2EC
  loc_AB915F: PopAdLdVar
  loc_AB9160: FLdPr Me
  loc_AB9163: VCallAd Control_ID_LiquidaNetoFlex
  loc_AB9166: FStAdFunc var_300
  loc_AB9169: FLdPr var_300
  loc_AB916C: LateIdCall
  loc_AB9174: FFree1Str var_9C
  loc_AB9177: FFreeAd var_90 = "": var_B4 = "": var_C8 = "": var_13C = "": var_140 = "": var_154 = "": var_19C = "": var_1A0 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_2A4 = "": var_2A8 = "": var_2BC = ""
  loc_AB9198: FFreeVar var_E8 = "": var_D8 = "": var_F8 = "": var_118 = "": var_138 = "": var_164 = "": var_194 = "": var_1B4 = "": var_174 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_210 = "": var_220 = "": var_240 = "": var_260 = "": var_1F4 = "": var_270 = "": var_280 = "": var_290 = "": var_2A0 = "": var_2CC = "": var_2DC = ""
  loc_AB91CB: FLdFPR8 var_8C
  loc_AB91CE: CVarR8
  loc_AB91D2: FLdRfVar var_D8
  loc_AB91D5: FLdRfVar var_C8
  loc_AB91D8: LitVarStr var_C4, "ImpoLine"
  loc_AB91DD: PopAdLdVar
  loc_AB91DE: FLdRfVar var_B4
  loc_AB91E1: FLdRfVar var_90
  loc_AB91E4: FLdPr Me
  loc_AB91E7: MemLdRfVar from_stack_1.global_60
  loc_AB91EA: NewIfNullPr clsliquidacion
  loc_AB91ED: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_AB91F2: FLdPr var_90
  loc_AB91F5:  = Me.Fields
  loc_AB91FA: FLdPr var_B4
  loc_AB91FD: from_stack_2 = Me.Item(from_stack_1)
  loc_AB9202: FLdPr var_C8
  loc_AB9205:  = Me.Value
  loc_AB920A: FLdRfVar var_D8
  loc_AB920D: AddVar var_E8
  loc_AB9211: CR4Var
  loc_AB9212: FStFPR8 var_8C
  loc_AB9215: FFreeAd var_90 = "": var_B4 = ""
  loc_AB921E: FFreeVar var_D8 = ""
  loc_AB9225: FLdPr Me
  loc_AB9228: MemLdRfVar from_stack_1.global_60
  loc_AB922B: NewIfNullPr clsliquidacion
  loc_AB922E: Call clsliquidacion.MoveSiguiente()
  loc_AB9233: Branch loc_AB8F77
  loc_AB9236: LitI4 1
  loc_AB923B: LitI4 1
  loc_AB9240: LitVarStr var_108, "###,###,##0.00"
  loc_AB9245: FStVarCopyObj var_D8
  loc_AB9248: FLdRfVar var_D8
  loc_AB924B: FLdRfVar var_8C
  loc_AB924E: CVarRef
  loc_AB9253: FLdRfVar var_E8
  loc_AB9256: ImpAdCallFPR4  = Format(, )
  loc_AB925B: FLdRfVar var_E8
  loc_AB925E: CStrVarVal var_9C
  loc_AB9262: FLdPr Me
  loc_AB9265: VCallAd Control_ID_lblTotalMP
  loc_AB9268: FStAdFunc var_90
  loc_AB926B: FLdPr var_90
  loc_AB926E: Me.Caption = from_stack_1
  loc_AB9273: FFree1Str var_9C
  loc_AB9276: FFree1Ad var_90
  loc_AB9279: FFreeVar var_D8 = ""
  loc_AB9280: Branch loc_AB929F
  loc_AB9283: Call Proc_296_17_9C8968()
  loc_AB9288: LitStr vbNullString
  loc_AB928B: FLdPr Me
  loc_AB928E: VCallAd Control_ID_lblTotalMP
  loc_AB9291: FStAdFunc var_90
  loc_AB9294: FLdPr var_90
  loc_AB9297: Me.Caption = from_stack_1
  loc_AB929C: FFree1Ad var_90
  loc_AB929F: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() '9A20B0
  'Data Table: 45A708
  loc_9A2038: LitVarStr var_94, vbNullString
  loc_9A203D: PopAdLdVar
  loc_9A203E: FLdPr Me
  loc_9A2041: VCallAd Control_ID_FiltroMsk
  loc_9A2044: FStAdFunc var_A8
  loc_9A2047: FLdPr var_A8
  loc_9A204A: LateIdSt
  loc_9A204F: FFree1Ad var_A8
  loc_9A2052: FLdRfVar var_AA
  loc_9A2055: FLdPr Me
  loc_9A2058: VCallAd Control_ID_FiltroCbo
  loc_9A205B: FStAdFunc var_A8
  loc_9A205E: FLdPr var_A8
  loc_9A2061:  = Me.ListIndex
  loc_9A2066: FLdI2 var_AA
  loc_9A2069: FStI2 var_AC
  loc_9A206C: FFree1Ad var_A8
  loc_9A206F: FLdI2 var_AC
  loc_9A2072: LitI2_Byte 0
  loc_9A2074: EqI2
  loc_9A2075: BranchF loc_9A20AC
  loc_9A2078: LitVarStr var_94, vbNullString
  loc_9A207D: PopAdLdVar
  loc_9A207E: FLdPr Me
  loc_9A2081: VCallAd Control_ID_FiltroMsk
  loc_9A2084: FStAdFunc var_A8
  loc_9A2087: FLdPr var_A8
  loc_9A208A: LateIdSt
  loc_9A208F: FFree1Ad var_A8
  loc_9A2092: LitStr "ExpeImpu"
  loc_9A2095: FStStrCopy var_B0
  loc_9A2098: FLdRfVar var_B0
  loc_9A209B: FLdPr Me
  loc_9A209E: MemLdRfVar from_stack_1.global_56
  loc_9A20A1: NewIfNullPr clsliquidacion
  loc_9A20A4: Call clsliquidacion.Sort(from_stack_1v)
  loc_9A20A9: FFree1Str var_B0
  loc_9A20AC: ExitProcHresult
End Sub

Private Sub FechLiquMsk_UnknownEvent_0 '94BEE8
  'Data Table: 45A708
  loc_94BED4: FLdPr Me
  loc_94BED7: VCallAd Control_ID_FechLiquMsk
  loc_94BEDA: CVarAd
  loc_94BEDE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94BEE3: FFree1Var var_94 = ""
  loc_94BEE6: ExitProcHresult
End Sub

Private Function FechLiquMsk_UnknownEvent_8(arg_C) '9DFB2C
  'Data Table: 45A708
  loc_9DFA34: FLdRfVar var_8A
  loc_9DFA37: FLdPr Me
  loc_9DFA3A: VCallAd Control_ID_cmdCancelar
  loc_9DFA3D: FStAdFunc var_88
  loc_9DFA40: FLdPr var_88
  loc_9DFA43:  = Me.Value
  loc_9DFA48: FLdI2 var_8A
  loc_9DFA4B: NotI4
  loc_9DFA4C: FLdPr Me
  loc_9DFA4F: VCallAd Control_ID_FechLiquMsk
  loc_9DFA52: FStAdFunc var_90
  loc_9DFA55: FLdPr var_90
  loc_9DFA58: LateIdLdVar var_A0 DispID_13 -32767
  loc_9DFA5F: CBoolVar
  loc_9DFA61: AndI4
  loc_9DFA62: FFreeAd var_88 = ""
  loc_9DFA69: FFree1Var var_A0 = ""
  loc_9DFA6C: BranchF loc_9DFB28
  loc_9DFA6F: FLdPr Me
  loc_9DFA72: VCallAd Control_ID_FechLiquMsk
  loc_9DFA75: FStAdFunc var_88
  loc_9DFA78: FLdPr var_88
  loc_9DFA7B: LateIdLdVar var_A0 DispID_15 0
  loc_9DFA82: PopAd
  loc_9DFA84: FLdPr Me
  loc_9DFA87: VCallAd Control_ID_FechLiquMsk
  loc_9DFA8A: FStAdFunc var_90
  loc_9DFA8D: FLdPr var_90
  loc_9DFA90: LateIdLdVar var_B0 DispID_11 -32767
  loc_9DFA97: PopAd
  loc_9DFA99: FLdPr Me
  loc_9DFA9C: VCallAd Control_ID_FechLiquMsk
  loc_9DFA9F: FStAdFunc var_C4
  loc_9DFAA2: LitI2_Byte &HFF
  loc_9DFAA4: PopTmpLdAd2 var_8A
  loc_9DFAA7: FLdZeroAd var_C4
  loc_9DFAAA: FStAdFunc var_BC
  loc_9DFAAD: FLdRfVar var_BC
  loc_9DFAB0: FLdRfVar var_B0
  loc_9DFAB3: CStrVarTmp
  loc_9DFAB4: FStStrNoPop var_B8
  loc_9DFAB7: LitI2_Byte &HFF
  loc_9DFAB9: LitI2_Byte &HFF
  loc_9DFABB: FLdRfVar var_A0
  loc_9DFABE: CStrVarTmp
  loc_9DFABF: FStStrNoPop var_B4
  loc_9DFAC2: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9DFAC7: FStStrNoPop var_C0
  loc_9DFACA: FLdPr Me
  loc_9DFACD: MemStStrCopy
  loc_9DFAD1: FFreeStr var_B4 = "": var_B8 = ""
  loc_9DFADA: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DFAE5: FFreeVar var_A0 = ""
  loc_9DFAEC: FLdPr Me
  loc_9DFAEF: VCallAd Control_ID_FechLiquMsk
  loc_9DFAF2: FStAdFunc var_C4
  loc_9DFAF5: LitNothing
  loc_9DFAF7: CastAd
  loc_9DFAFA: FStAdFunc var_BC
  loc_9DFAFD: FLdRfVar var_BC
  loc_9DFB00: FLdZeroAd var_C4
  loc_9DFB03: FStAdFuncNoPop
  loc_9DFB06: CastAd
  loc_9DFB09: FStAdFunc var_90
  loc_9DFB0C: FLdRfVar var_90
  loc_9DFB0F: FLdPr Me
  loc_9DFB12: MemLdRfVar from_stack_1.global_72
  loc_9DFB15: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DFB1A: IStI2 arg_C
  loc_9DFB1D: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_9DFB28: ExitProcHresult
End Function

Private Sub FechLiquMsk_KeyPress(KeyAscii As Integer) '98AF88
  'Data Table: 45A708
  loc_98AF44: ILdI2 KeyAscii
  loc_98AF47: CI4UI1
  loc_98AF48: LitI4 &H20
  loc_98AF4D: EqI4
  loc_98AF4E: BranchF loc_98AF84
  loc_98AF51: LitVar_Missing var_A4
  loc_98AF54: PopAdLdVar
  loc_98AF55: LitVarI4
  loc_98AF5D: PopAdLdVar
  loc_98AF5E: ImpAdLdRf MemVar_C3D9A8
  loc_98AF61: NewIfNullPr frmCalendario
  loc_98AF64: frmCalendario.Show from_stack_1, from_stack_2
  loc_98AF69: ImpAdLdRf MemVar_C3D038
  loc_98AF6C: CDargRef
  loc_98AF70: FLdPr Me
  loc_98AF73: VCallAd Control_ID_FechLiquMsk
  loc_98AF76: FStAdFunc var_A8
  loc_98AF79: FLdPr var_A8
  loc_98AF7C: LateIdSt
  loc_98AF81: FFree1Ad var_A8
  loc_98AF84: ExitProcHresult
End Sub

Private Sub DetaLiquTxt_GotFocus() '94C320
  'Data Table: 45A708
  loc_94C30C: FLdPrThis
  loc_94C30D: VCallAd Control_ID_DetaLiquTxt
  loc_94C310: CVarAd
  loc_94C314: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94C319: FFree1Var var_94 = ""
  loc_94C31C: ExitProcHresult
End Sub

Private Sub DetaLiquTxt_Validate(Cancel As Boolean) '9DBAD8
  'Data Table: 45A708
  loc_9DB9DC: FLdRfVar var_8A
  loc_9DB9DF: FLdPr Me
  loc_9DB9E2: VCallAd Control_ID_cmdCancelar
  loc_9DB9E5: FStAdFunc var_88
  loc_9DB9E8: FLdPr var_88
  loc_9DB9EB:  = Me.Value
  loc_9DB9F0: FLdI2 var_8A
  loc_9DB9F3: NotI4
  loc_9DB9F4: FLdRfVar var_92
  loc_9DB9F7: FLdPr Me
  loc_9DB9FA: VCallAd Control_ID_DetaLiquTxt
  loc_9DB9FD: FStAdFunc var_90
  loc_9DBA00: FLdPr var_90
  loc_9DBA03:  = Me.Enabled
  loc_9DBA08: FLdI2 var_92
  loc_9DBA0B: AndI4
  loc_9DBA0C: FFreeAd var_88 = ""
  loc_9DBA13: BranchF loc_9DBAD6
  loc_9DBA16: FLdRfVar var_98
  loc_9DBA19: FLdPr Me
  loc_9DBA1C: VCallAd Control_ID_DetaLiquTxt
  loc_9DBA1F: FStAdFunc var_88
  loc_9DBA22: FLdPr var_88
  loc_9DBA25:  = Me.Text
  loc_9DBA2A: ILdRf var_98
  loc_9DBA2D: LitStr vbNullString
  loc_9DBA30: EqStr
  loc_9DBA32: FFree1Str var_98
  loc_9DBA35: FFree1Ad var_88
  loc_9DBA38: BranchF loc_9DBA58
  loc_9DBA3B: LitStr "Ingrese el motivo de la RESERVA."
  loc_9DBA3E: FLdPr Me
  loc_9DBA41: MemStStrCopy
  loc_9DBA45: LitI4 0
  loc_9DBA4A: FLdPr Me
  loc_9DBA4D: MemLdStr global_72
  loc_9DBA50: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_9DBA55: Branch loc_9DBAD6
  loc_9DBA58: FLdRfVar var_98
  loc_9DBA5B: FLdPr Me
  loc_9DBA5E: VCallAd Control_ID_DetaLiquTxt
  loc_9DBA61: FStAdFunc var_88
  loc_9DBA64: FLdPr var_88
  loc_9DBA67:  = Me.Text
  loc_9DBA6C: LitI2_Byte 0
  loc_9DBA6E: PopTmpLdAd2 var_9A
  loc_9DBA71: LitI2_Byte 0
  loc_9DBA73: PopTmpLdAd2 var_92
  loc_9DBA76: LitI2_Byte 0
  loc_9DBA78: PopTmpLdAd2 var_8A
  loc_9DBA7B: ILdRf var_98
  loc_9DBA7E: LitStr "Motivo de la RESERVA."
  loc_9DBA81: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9DBA86: FStStrNoPop var_A0
  loc_9DBA89: FLdPr Me
  loc_9DBA8C: MemStStrCopy
  loc_9DBA90: FFreeStr var_98 = ""
  loc_9DBA97: FFree1Ad var_88
  loc_9DBA9A: FLdPr Me
  loc_9DBA9D: VCallAd Control_ID_DetaLiquTxt
  loc_9DBAA0: FStAdFunc var_A8
  loc_9DBAA3: LitNothing
  loc_9DBAA5: CastAd
  loc_9DBAA8: FStAdFunc var_A4
  loc_9DBAAB: FLdRfVar var_A4
  loc_9DBAAE: FLdZeroAd var_A8
  loc_9DBAB1: FStAdFuncNoPop
  loc_9DBAB4: CastAd
  loc_9DBAB7: FStAdFunc var_90
  loc_9DBABA: FLdRfVar var_90
  loc_9DBABD: FLdPr Me
  loc_9DBAC0: MemLdRfVar from_stack_1.global_72
  loc_9DBAC3: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9DBAC8: IStI2 Cancel
  loc_9DBACB: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9DBAD6: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94BDC8
  'Data Table: 45A708
  loc_94BDB4: FLdPr Me
  loc_94BDB7: VCallAd Control_ID_FiltroMsk
  loc_94BDBA: CVarAd
  loc_94BDBE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94BDC3: FFree1Var var_94 = ""
  loc_94BDC6: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'A3847C
  'Data Table: 45A708
  loc_A38268: ILdRf Me
  loc_A3826B: CastAd
  loc_A3826E: FStAdFunc var_88
  loc_A38271: FLdRfVar var_88
  loc_A38274: ImpAdCallFPR4  = Proc_261_10_99CABC()
  loc_A38279: FFree1Ad var_88
  loc_A3827C: FLdPr Me
  loc_A3827F: VCallAd Control_ID_FiltroMsk
  loc_A38282: FStAdFunc var_88
  loc_A38285: FLdPr var_88
  loc_A38288: LateIdLdVar var_98 DispID_22 0
  loc_A3828F: CStrVarTmp
  loc_A38290: FStStrNoPop var_9C
  loc_A38293: ImpAdCallI2 Trim$()
  loc_A38298: FStStrNoPop var_A0
  loc_A3829B: LitStr vbNullString
  loc_A3829E: NeStr
  loc_A382A0: FFreeStr var_9C = ""
  loc_A382A7: FFree1Ad var_88
  loc_A382AA: FFree1Var var_98 = ""
  loc_A382AD: BranchF loc_A38348
  loc_A382B0: FLdRfVar var_A2
  loc_A382B3: FLdPr Me
  loc_A382B6: VCallAd Control_ID_FiltroCbo
  loc_A382B9: FStAdFunc var_88
  loc_A382BC: FLdPr var_88
  loc_A382BF:  = Me.ListIndex
  loc_A382C4: FLdI2 var_A2
  loc_A382C7: LitI2_Byte 0
  loc_A382C9: EqI2
  loc_A382CA: FFree1Ad var_88
  loc_A382CD: BranchF loc_A38345
  loc_A382D0: LitStr "ExpeImpu LIKE '"
  loc_A382D3: FLdPr Me
  loc_A382D6: VCallAd Control_ID_FiltroMsk
  loc_A382D9: FStAdFunc var_88
  loc_A382DC: FLdPr var_88
  loc_A382DF: LateIdLdVar var_98 DispID_22 0
  loc_A382E6: CStrVarTmp
  loc_A382E7: FStStrNoPop var_9C
  loc_A382EA: ConcatStr
  loc_A382EB: FStStrNoPop var_A0
  loc_A382EE: LitStr Chr(37) & "'"
  loc_A382F1: ConcatStr
  loc_A382F2: PopTmpLdAdStr
  loc_A382F6: FLdPr Me
  loc_A382F9: MemLdRfVar from_stack_1.global_56
  loc_A382FC: NewIfNullPr clsliquidacion
  loc_A382FF: Call clsliquidacion.Filter(from_stack_1v)
  loc_A38304: FFreeStr var_9C = "": var_A0 = ""
  loc_A3830D: FFree1Ad var_88
  loc_A38310: FFree1Var var_98 = ""
  loc_A38313: LitStr "código que comience con: "
  loc_A38316: FLdPr Me
  loc_A38319: VCallAd Control_ID_FiltroMsk
  loc_A3831C: FStAdFunc var_88
  loc_A3831F: FLdPr var_88
  loc_A38322: LateIdLdVar var_98 DispID_22 0
  loc_A38329: CStrVarTmp
  loc_A3832A: FStStrNoPop var_9C
  loc_A3832D: ConcatStr
  loc_A3832E: FStStrNoPop var_A0
  loc_A38331: FLdPr Me
  loc_A38334: MemStStrCopy
  loc_A38338: FFreeStr var_9C = ""
  loc_A3833F: FFree1Ad var_88
  loc_A38342: FFree1Var var_98 = ""
  loc_A38345: Branch loc_A3836C
  loc_A38348: LitStr vbNullString
  loc_A3834B: FStStrCopy var_9C
  loc_A3834E: FLdRfVar var_9C
  loc_A38351: FLdPr Me
  loc_A38354: MemLdRfVar from_stack_1.global_56
  loc_A38357: NewIfNullPr clsliquidacion
  loc_A3835A: Call clsliquidacion.Filter(from_stack_1v)
  loc_A3835F: FFree1Str var_9C
  loc_A38362: LitStr vbNullString
  loc_A38365: FLdPr Me
  loc_A38368: MemStStrCopy
  loc_A3836C: FLdRfVar var_AC
  loc_A3836F: FLdPr Me
  loc_A38372: MemLdRfVar from_stack_1.global_56
  loc_A38375: NewIfNullPr clsliquidacion
  loc_A38378: from_stack_1 = clsliquidacion.RecordCount
  loc_A3837D: ILdRf var_AC
  loc_A38380: LitI4 0
  loc_A38385: GtI4
  loc_A38386: BranchF loc_A38433
  loc_A38389: FLdPr Me
  loc_A3838C: MemLdRfVar from_stack_1.global_56
  loc_A3838F: NewIfNullAd
  loc_A38392: FStAd var_B0 
  loc_A38396: FLdRfVar var_B0
  loc_A38399: CVarRef
  loc_A3839E: ILdRf Me
  loc_A383A1: CastAd
  loc_A383A4: FStAdFunc var_88
  loc_A383A7: FLdRfVar var_88
  loc_A383AA: ImpAdCallFPR4  = Proc_261_8_9C2398()
  loc_A383AF: ILdRf var_B0
  loc_A383B2: CastAd
  loc_A383B5: FLdPr Me
  loc_A383B8: MemStAdFunc
  loc_A383BC: FFreeAd var_88 = ""
  loc_A383C3: LitI4 0
  loc_A383C8: LitI4 1
  loc_A383CD: FLdRfVar var_C4
  loc_A383D0: Redim
  loc_A383DA: FLdPr Me
  loc_A383DD: MemLdRfVar from_stack_1.global_56
  loc_A383E0: NewIfNullAd
  loc_A383E3: FStAd var_88 
  loc_A383E7: FLdRfVar var_88
  loc_A383EA: CVarRef
  loc_A383EF: ParmAry1St
  loc_A383F5: FLdPr Me
  loc_A383F8: VCallAd Control_ID_dgdABMS
  loc_A383FB: CVarAd
  loc_A383FF: ParmAry1St
  loc_A38405: FLdRfVar var_C4
  loc_A38408: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A3840D: ILdRf var_88
  loc_A38410: CastAd
  loc_A38413: FLdPr Me
  loc_A38416: MemStAdFunc
  loc_A3841A: FLdRfVar var_C4
  loc_A3841D: Erase
  loc_A3841E: FFree1Ad var_88
  loc_A38421: LitI2_Byte 0
  loc_A38423: LitVarI2 var_98, 0
  loc_A38428: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A3842D: FFree1Var var_98 = ""
  loc_A38430: Branch loc_A38447
  loc_A38433: ILdRf Me
  loc_A38436: CastAd
  loc_A38439: FStAdFunc var_88
  loc_A3843C: FLdRfVar var_88
  loc_A3843F: ImpAdCallFPR4  = Proc_261_15_A16E38()
  loc_A38444: FFree1Ad var_88
  loc_A38447: FLdPr Me
  loc_A3844A: VCallAd Control_ID_dgdABMS
  loc_A3844D: FStAdFunc var_B0
  loc_A38450: LitI4 0
  loc_A38455: FStStrCopy var_9C
  loc_A38458: FLdRfVar var_9C
  loc_A3845B: FLdPr Me
  loc_A3845E: MemLdStr global_80
  loc_A38461: FLdZeroAd var_B0
  loc_A38464: FStAdFunc var_88
  loc_A38467: FLdRfVar var_88
  loc_A3846A: ImpAdCallFPR4  = Proc_261_62_9D9F1C(, )
  loc_A3846F: FFree1Str var_9C
  loc_A38472: FFreeAd var_88 = ""
  loc_A38479: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '9987A4
  'Data Table: 45A708
  loc_998740: ILdI2 KeyAscii
  loc_998743: LitI2_Byte &H27
  loc_998745: EqI2
  loc_998746: BranchF loc_99874E
  loc_998749: LitI2_Byte 0
  loc_99874B: IStI2 KeyAscii
  loc_99874E: FLdRfVar var_88
  loc_998751: FLdPr Me
  loc_998754: MemLdRfVar from_stack_1.global_56
  loc_998757: NewIfNullPr clsliquidacion
  loc_99875A: from_stack_1 = clsliquidacion.RecordCount
  loc_99875F: ILdRf var_88
  loc_998762: LitI4 0
  loc_998767: EqI4
  loc_998768: ILdI2 KeyAscii
  loc_99876B: CI4UI1
  loc_99876C: LitI4 8
  loc_998771: NeI4
  loc_998772: AndI4
  loc_998773: FLdPr Me
  loc_998776: VCallAd Control_ID_FiltroMsk
  loc_998779: FStAdFunc var_8C
  loc_99877C: FLdPr var_8C
  loc_99877F: LateIdLdVar var_9C DispID_16 0
  loc_998786: CStrVarTmp
  loc_998787: FStStrNoPop var_A0
  loc_99878A: LitStr vbNullString
  loc_99878D: EqStr
  loc_99878F: AndI4
  loc_998790: FFree1Str var_A0
  loc_998793: FFree1Ad var_8C
  loc_998796: FFree1Var var_9C = ""
  loc_998799: BranchF loc_9987A1
  loc_99879C: LitI2_Byte 0
  loc_99879E: IStI2 KeyAscii
  loc_9987A1: ExitProcHresult
End Sub

Private Sub Form_Load() 'A432A4
  'Data Table: 45A708
  loc_A43060: LitStr "F1 - Usar OP reservada"
  loc_A43063: FLdRfVar var_C0
  loc_A43066: LitVarI2 var_B8, 1
  loc_A4306B: FLdPr Me
  loc_A4306E: VCallAd Control_ID_tlbABMS
  loc_A43071: FStAdFunc var_88
  loc_A43074: FLdPr var_88
  loc_A43077: LateIdLdVar var_98 DispID_3 0
  loc_A4307E: CastAdVar Me
  loc_A43082: FStAdFunc var_BC
  loc_A43085: FLdPr var_BC
  loc_A43088: from_stack_2 = Me.Buttons.Item(from_stack_1)
  loc_A4308D: FLdPr var_C0
  loc_A43090: Me.ToolTipText = from_stack_1
  loc_A43095: FFreeAd var_88 = "": var_BC = ""
  loc_A4309E: FFreeVar var_98 = ""
  loc_A430A5: LitStr "F2 - Generar reserva de OP"
  loc_A430A8: FLdRfVar var_C0
  loc_A430AB: LitVarI2 var_B8, 2
  loc_A430B0: FLdPr Me
  loc_A430B3: VCallAd Control_ID_tlbABMS
  loc_A430B6: FStAdFunc var_88
  loc_A430B9: FLdPr var_88
  loc_A430BC: LateIdLdVar var_98 DispID_3 0
  loc_A430C3: CastAdVar Me
  loc_A430C7: FStAdFunc var_BC
  loc_A430CA: FLdPr var_BC
  loc_A430CD: from_stack_2 = Me.Buttons.Item(from_stack_1)
  loc_A430D2: FLdPr var_C0
  loc_A430D5: Me.ToolTipText = from_stack_1
  loc_A430DA: FFreeAd var_88 = "": var_BC = ""
  loc_A430E3: FFreeVar var_98 = ""
  loc_A430EA: ImpAdLdI2 MemVar_C3D064
  loc_A430ED: LitI2 2025
  loc_A430F0: LeI2
  loc_A430F1: BranchF loc_A43111
  loc_A430F4: LitVarI4
  loc_A430FC: PopAdLdVar
  loc_A430FD: FLdPr Me
  loc_A43100: VCallAd Control_ID_dgdABMS
  loc_A43103: FStAdFunc var_88
  loc_A43106: FLdPr var_88
  loc_A43109: LateIdSt
  loc_A4310E: FFree1Ad var_88
  loc_A43111: LitI2_Byte 0
  loc_A43113: CR8I2
  loc_A43114: PopFPR4
  loc_A43115: FLdPr Me
  loc_A43118: Me.Left = from_stack_1s
  loc_A4311D: LitI2_Byte 0
  loc_A4311F: CR8I2
  loc_A43120: PopFPR4
  loc_A43121: FLdPr Me
  loc_A43124: Me.Top = from_stack_1s
  loc_A43129: FLdPr Me
  loc_A4312C: VCallAd Control_ID_LiquidaNetoFlex
  loc_A4312F: FStAdFunc var_D4
  loc_A43132: LitVarI4
  loc_A4313A: PopAdLdVar
  loc_A4313B: LitVarI4
  loc_A43143: PopAdLdVar
  loc_A43144: FLdPr var_D4
  loc_A43147: LateIdCallSt
  loc_A4314F: LitVarI4
  loc_A43157: PopAdLdVar
  loc_A43158: LitVarI4
  loc_A43160: PopAdLdVar
  loc_A43161: FLdPr var_D4
  loc_A43164: LateIdCallSt
  loc_A4316C: LitVarI4
  loc_A43174: PopAdLdVar
  loc_A43175: LitVarI4
  loc_A4317D: PopAdLdVar
  loc_A4317E: FLdPr var_D4
  loc_A43181: LateIdCallSt
  loc_A43189: LitVarI4
  loc_A43191: PopAdLdVar
  loc_A43192: LitVarI4
  loc_A4319A: PopAdLdVar
  loc_A4319B: FLdPr var_D4
  loc_A4319E: LateIdCallSt
  loc_A431A6: LitVarI4
  loc_A431AE: PopAdLdVar
  loc_A431AF: LitVarI4
  loc_A431B7: PopAdLdVar
  loc_A431B8: FLdPr var_D4
  loc_A431BB: LateIdCallSt
  loc_A431C3: LitNothing
  loc_A431C5: FStAd var_D4 
  loc_A431C9: Call Proc_296_17_9C8968()
  loc_A431CE: LitStr "SELECT l.*, IF(TipoLiqu=1,'Devengado','Debito') Tipo"
  loc_A431D1: LitStr " FROM liquidacion l"
  loc_A431D4: ConcatStr
  loc_A431D5: FStStrNoPop var_F8
  loc_A431D8: LitStr " WHERE PeriInfo = "
  loc_A431DB: ConcatStr
  loc_A431DC: FStStrNoPop var_FC
  loc_A431DF: ImpAdLdI2 MemVar_C3D064
  loc_A431E2: CStrUI1
  loc_A431E4: FStStrNoPop var_100
  loc_A431E7: ConcatStr
  loc_A431E8: FStStrNoPop var_104
  loc_A431EB: LitStr " AND FeanLiqu IS NULL AND NumeOrpa = 0;"
  loc_A431EE: ConcatStr
  loc_A431EF: FStStrNoPop var_108
  loc_A431F2: FLdPr Me
  loc_A431F5: MemLdRfVar from_stack_1.global_56
  loc_A431F8: NewIfNullPr clsliquidacion
  loc_A431FB: Call clsliquidacion.RedefineRS(from_stack_1v)
  loc_A43200: FFreeStr var_F8 = "": var_FC = "": var_100 = "": var_104 = ""
  loc_A4320D: LitVarI2 var_A8, 0
  loc_A43212: PopAdLdVar
  loc_A43213: LitStr "Expediente de Pago"
  loc_A43216: FLdPr Me
  loc_A43219: VCallAd Control_ID_FiltroCbo
  loc_A4321C: FStAdFunc var_88
  loc_A4321F: FLdPr var_88
  loc_A43222: Me.AddItem from_stack_1, from_stack_2
  loc_A43227: FFree1Ad var_88
  loc_A4322A: LitI2_Byte 0
  loc_A4322C: FLdPr Me
  loc_A4322F: VCallAd Control_ID_FiltroCbo
  loc_A43232: FStAdFunc var_88
  loc_A43235: FLdPr var_88
  loc_A43238: Me.ListIndex = from_stack_1
  loc_A4323D: FFree1Ad var_88
  loc_A43240: Call cmdCancelar_Click()
  loc_A43245: LitI4 0
  loc_A4324A: LitI4 1
  loc_A4324F: FLdRfVar var_10C
  loc_A43252: Redim
  loc_A4325C: FLdPr Me
  loc_A4325F: MemLdRfVar from_stack_1.global_56
  loc_A43262: NewIfNullAd
  loc_A43265: FStAd var_88 
  loc_A43269: FLdRfVar var_88
  loc_A4326C: CVarRef
  loc_A43271: ParmAry1St
  loc_A43277: FLdPr Me
  loc_A4327A: VCallAd Control_ID_dgdABMS
  loc_A4327D: CVarAd
  loc_A43281: ParmAry1St
  loc_A43287: FLdRfVar var_10C
  loc_A4328A: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A4328F: ILdRf var_88
  loc_A43292: CastAd
  loc_A43295: FLdPr Me
  loc_A43298: MemStAdFunc
  loc_A4329C: FLdRfVar var_10C
  loc_A4329F: Erase
  loc_A432A0: FFree1Ad var_88
  loc_A432A3: ExitProcHresult
End Sub

Private Sub Form_Activate() '9988DC
  'Data Table: 45A708
  loc_998880: FLdRfVar var_C2
  loc_998883: FLdRfVar var_C0
  loc_998886: LitVarI2 var_B8, 1
  loc_99888B: FLdPr Me
  loc_99888E: VCallAd Control_ID_tlbABMS
  loc_998891: FStAdFunc var_88
  loc_998894: FLdPr var_88
  loc_998897: LateIdLdVar var_98 DispID_3 0
  loc_99889E: CastAdVar Me
  loc_9988A2: FStAdFunc var_BC
  loc_9988A5: FLdPr var_BC
  loc_9988A8:  = Me.Buttons.ControlDefault
  loc_9988AD: FLdPr var_C0
  loc_9988B0:  = Me.Enabled
  loc_9988B5: FLdI2 var_C2
  loc_9988B8: FFreeAd var_88 = "": var_BC = ""
  loc_9988C1: FFreeVar var_98 = ""
  loc_9988C8: BranchF loc_9988D9
  loc_9988CB: FLdPr Me
  loc_9988CE: MemLdRfVar from_stack_1.global_56
  loc_9988D1: NewIfNullPr clsliquidacion
  loc_9988D4: Call clsliquidacion.Requery()
  loc_9988D9: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '93FE5C
  'Data Table: 45A708
  loc_93FE58: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '956DD0
  'Data Table: 45A708
  loc_956DB8: ILdI2 KeyCode
  loc_956DBB: ILdRf Me
  loc_956DBE: CastAd
  loc_956DC1: FStAdFunc var_88
  loc_956DC4: FLdRfVar var_88
  loc_956DC7: ImpAdCallFPR4  = Proc_261_3_A7CAFC()
  loc_956DCC: FFree1Ad var_88
  loc_956DCF: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BB7E30
  'Data Table: 45A708
  loc_BB6E1C: ILdRf Button
  loc_BB6E1F: FStAd var_88 
  loc_BB6E23: FLdRfVar var_90
  loc_BB6E26: FLdPr var_88
  loc_BB6E29:  = Me.Key
  loc_BB6E2E: FLdZeroAd var_90
  loc_BB6E31: FStStr var_94
  loc_BB6E34: ILdRf var_94
  loc_BB6E37: LitStr "btnCrear"
  loc_BB6E3A: EqStr
  loc_BB6E3C: BranchF loc_BB744E
  loc_BB6E3F: FLdRfVar var_9C
  loc_BB6E42: FLdRfVar var_98
  loc_BB6E45: FLdPr Me
  loc_BB6E48: MemLdRfVar from_stack_1.global_56
  loc_BB6E4B: NewIfNullPr clsliquidacion
  loc_BB6E4E: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BB6E53: FLdPr var_98
  loc_BB6E56:  = Me.RecordCount
  loc_BB6E5B: ILdRf var_9C
  loc_BB6E5E: LitI4 0
  loc_BB6E63: GtI4
  loc_BB6E64: FFree1Ad var_98
  loc_BB6E67: BranchF loc_BB744B
  loc_BB6E6A: FLdRfVar var_E0
  loc_BB6E6D: FLdRfVar var_B4
  loc_BB6E70: LitVarStr var_B0, "ExpeImpu"
  loc_BB6E75: PopAdLdVar
  loc_BB6E76: FLdRfVar var_A0
  loc_BB6E79: FLdRfVar var_98
  loc_BB6E7C: FLdPr Me
  loc_BB6E7F: MemLdRfVar from_stack_1.global_56
  loc_BB6E82: NewIfNullPr clsliquidacion
  loc_BB6E85: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BB6E8A: FLdPr var_98
  loc_BB6E8D:  = Me.Fields
  loc_BB6E92: FLdPr var_A0
  loc_BB6E95: from_stack_2 = Me.Item(from_stack_1)
  loc_BB6E9A: FLdPr var_B4
  loc_BB6E9D:  = Me.Value
  loc_BB6EA2: FLdRfVar var_F0
  loc_BB6EA5: FLdRfVar var_D0
  loc_BB6EA8: LitVarStr var_CC, "NumeLiqu"
  loc_BB6EAD: PopAdLdVar
  loc_BB6EAE: FLdRfVar var_BC
  loc_BB6EB1: FLdRfVar var_B8
  loc_BB6EB4: FLdPr Me
  loc_BB6EB7: MemLdRfVar from_stack_1.global_56
  loc_BB6EBA: NewIfNullPr clsliquidacion
  loc_BB6EBD: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BB6EC2: FLdPr var_B8
  loc_BB6EC5:  = Me.Fields
  loc_BB6ECA: FLdPr var_BC
  loc_BB6ECD: from_stack_2 = Me.Item(from_stack_1)
  loc_BB6ED2: FLdPr var_D0
  loc_BB6ED5:  = Me.Value
  loc_BB6EDA: FLdPr Me
  loc_BB6EDD: MemLdRfVar from_stack_1.global_84
  loc_BB6EE0: NewIfNullRf
  loc_BB6EE4: FLdRfVar var_F0
  loc_BB6EE7: CStrVarTmp
  loc_BB6EE8: FStStrNoPop var_F4
  loc_BB6EEB: FLdRfVar var_E0
  loc_BB6EEE: CStrVarTmp
  loc_BB6EEF: FStStrNoPop var_90
  loc_BB6EF2: ImpAdCallI2  = Proc_259_30_AE3D34(, )
  loc_BB6EF7: FFreeStr var_90 = ""
  loc_BB6EFE: FFreeAd var_98 = "": var_A0 = "": var_B8 = "": var_BC = "": var_B4 = ""
  loc_BB6F0D: FFreeVar var_E0 = ""
  loc_BB6F14: BranchF loc_BB742A
  loc_BB6F17: FLdPr Me
  loc_BB6F1A: VCallAd Control_ID_LiquidaNetoFlex
  loc_BB6F1D: FStAdFunc var_98
  loc_BB6F20: FLdPr var_98
  loc_BB6F23: LateIdLdVar var_E0 DispID_4 0
  loc_BB6F2A: CI4Var
  loc_BB6F2C: LitI4 1
  loc_BB6F31: EqI4
  loc_BB6F32: FFree1Ad var_98
  loc_BB6F35: FFree1Var var_E0 = ""
  loc_BB6F38: BranchF loc_BB6F56
  loc_BB6F3B: LitStr "No existe ningun Neto/Retención para crear. Verifique..."
  loc_BB6F3E: FLdPr Me
  loc_BB6F41: MemStStrCopy
  loc_BB6F45: LitI4 0
  loc_BB6F4A: FLdPr Me
  loc_BB6F4D: MemLdStr global_72
  loc_BB6F50: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BB6F55: ExitProcHresult
  loc_BB6F56: FLdRfVar var_90
  loc_BB6F59: FLdPr Me
  loc_BB6F5C: MemLdRfVar from_stack_1.global_52
  loc_BB6F5F: NewIfNullPr clsordenpago
  loc_BB6F62: from_stack_1v = clsordenpago.ValidaUsarOpReservada()
  loc_BB6F67: ILdRf var_90
  loc_BB6F6A: FLdPr Me
  loc_BB6F6D: MemStStrCopy
  loc_BB6F71: FFree1Str var_90
  loc_BB6F74: FLdPr Me
  loc_BB6F77: MemLdStr global_72
  loc_BB6F7A: LitStr vbNullString
  loc_BB6F7D: NeStr
  loc_BB6F7F: BranchF loc_BB6F96
  loc_BB6F82: LitI4 0
  loc_BB6F87: FLdPr Me
  loc_BB6F8A: MemLdStr global_72
  loc_BB6F8D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BB6F92: ExitProcHresult
  loc_BB6F93: Branch loc_BB7427
  loc_BB6F96: FLdRfVar var_E0
  loc_BB6F99: FLdRfVar var_B4
  loc_BB6F9C: LitVarStr var_B0, "ExpeImpu"
  loc_BB6FA1: PopAdLdVar
  loc_BB6FA2: FLdRfVar var_A0
  loc_BB6FA5: FLdRfVar var_98
  loc_BB6FA8: FLdPr Me
  loc_BB6FAB: MemLdRfVar from_stack_1.global_56
  loc_BB6FAE: NewIfNullPr clsliquidacion
  loc_BB6FB1: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BB6FB6: FLdPr var_98
  loc_BB6FB9:  = Me.Fields
  loc_BB6FBE: FLdPr var_A0
  loc_BB6FC1: from_stack_2 = Me.Item(from_stack_1)
  loc_BB6FC6: FLdPr var_B4
  loc_BB6FC9:  = Me.Value
  loc_BB6FCE: FLdRfVar var_134
  loc_BB6FD1: FLdRfVar var_D0
  loc_BB6FD4: LitVarStr var_124, "NumeLiqu"
  loc_BB6FD9: PopAdLdVar
  loc_BB6FDA: FLdRfVar var_BC
  loc_BB6FDD: FLdRfVar var_B8
  loc_BB6FE0: FLdPr Me
  loc_BB6FE3: MemLdRfVar from_stack_1.global_56
  loc_BB6FE6: NewIfNullPr clsliquidacion
  loc_BB6FE9: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BB6FEE: FLdPr var_B8
  loc_BB6FF1:  = Me.Fields
  loc_BB6FF6: FLdPr var_BC
  loc_BB6FF9: from_stack_2 = Me.Item(from_stack_1)
  loc_BB6FFE: FLdPr var_D0
  loc_BB7001:  = Me.Value
  loc_BB7006: FLdRfVar var_1D0
  loc_BB7009: FLdRfVar var_1C0
  loc_BB700C: LitVarStr var_1BC, "DetaLiqu"
  loc_BB7011: PopAdLdVar
  loc_BB7012: FLdRfVar var_1AC
  loc_BB7015: FLdRfVar var_1A8
  loc_BB7018: FLdPr Me
  loc_BB701B: MemLdRfVar from_stack_1.global_56
  loc_BB701E: NewIfNullPr clsliquidacion
  loc_BB7021: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BB7026: FLdPr var_1A8
  loc_BB7029:  = Me.Fields
  loc_BB702E: FLdPr var_1AC
  loc_BB7031: from_stack_2 = Me.Item(from_stack_1)
  loc_BB7036: FLdPr var_1C0
  loc_BB7039:  = Me.Value
  loc_BB703E: LitI2_Byte 0
  loc_BB7040: PopTmpLdAd2 var_1E4
  loc_BB7043: LitI2_Byte &HFF
  loc_BB7045: PopTmpLdAd2 var_1E2
  loc_BB7048: LitStr "¿Confirma uso de OP Reservada para Expediente?"
  loc_BB704B: LitStr vbCrLf
  loc_BB704E: ConcatStr
  loc_BB704F: FStStrNoPop var_90
  loc_BB7052: LitStr vbCrLf
  loc_BB7055: ConcatStr
  loc_BB7056: CVarStr var_F0
  loc_BB7059: FLdRfVar var_E0
  loc_BB705C: ConcatVar var_104
  loc_BB7060: LitVarStr var_CC, " - ("
  loc_BB7065: ConcatVar var_114
  loc_BB7069: FLdRfVar var_134
  loc_BB706C: ConcatVar var_144
  loc_BB7070: LitVarStr var_154, ")"
  loc_BB7075: ConcatVar var_164
  loc_BB7079: LitVarStr var_174, vbCrLf
  loc_BB707E: ConcatVar var_184
  loc_BB7082: LitVarStr var_194, vbCrLf
  loc_BB7087: ConcatVar var_1A4
  loc_BB708B: FLdRfVar var_1D0
  loc_BB708E: ConcatVar var_1E0
  loc_BB7092: CStrVarVal var_F4
  loc_BB7096: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BB709B: CI4UI1
  loc_BB709C: LitI4 6
  loc_BB70A1: EqI4
  loc_BB70A2: FFreeStr var_90 = ""
  loc_BB70A9: FFreeAd var_98 = "": var_A0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_D0 = "": var_1A8 = "": var_1AC = ""
  loc_BB70BE: FFreeVar var_F0 = "": var_E0 = "": var_104 = "": var_114 = "": var_134 = "": var_144 = "": var_164 = "": var_184 = "": var_1A4 = "": var_1D0 = ""
  loc_BB70D7: BranchF loc_BB7427
  loc_BB70DA: LitVar_Missing var_CC
  loc_BB70DD: PopAdLdVar
  loc_BB70DE: LitVarI4
  loc_BB70E6: PopAdLdVar
  loc_BB70E7: ImpAdLdRf MemVar_C3D8F4
  loc_BB70EA: NewIfNullPr dlgOrdenesdePagoReservadas
  loc_BB70ED: dlgOrdenesdePagoReservadas.Show from_stack_1, from_stack_2
  loc_BB70F2: FLdRfVar var_1E2
  loc_BB70F5: ImpAdLdRf MemVar_C3D8F4
  loc_BB70F8: NewIfNullPr dlgOrdenesdePagoReservadas
  loc_BB70FB: from_stack_1v = dlgOrdenesdePagoReservadas.boAceptarGet()
  loc_BB7100: FLdI2 var_1E2
  loc_BB7103: BranchF loc_BB7427
  loc_BB7106: FLdRfVar var_E0
  loc_BB7109: FLdRfVar var_B8
  loc_BB710C: LitVarStr var_B0, "FechOrpa"
  loc_BB7111: PopAdLdVar
  loc_BB7112: FLdRfVar var_B4
  loc_BB7115: FLdRfVar var_A0
  loc_BB7118: FLdRfVar var_98
  loc_BB711B: ImpAdLdRf MemVar_C3D8F4
  loc_BB711E: NewIfNullPr dlgOrdenesdePagoReservadas
  loc_BB7121: from_stack_1v = dlgOrdenesdePagoReservadas.global_4255908Get()
  loc_BB7126: FLdPr var_98
  loc_BB7129: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BB712E: FLdPr var_A0
  loc_BB7131:  = Me.Fields
  loc_BB7136: FLdPr var_B4
  loc_BB7139: from_stack_2 = Me.Item(from_stack_1)
  loc_BB713E: FLdPr var_B8
  loc_BB7141:  = Me.Value
  loc_BB7146: FLdRfVar var_F0
  loc_BB7149: FLdRfVar var_1A8
  loc_BB714C: LitVarStr var_CC, "FechLiqu"
  loc_BB7151: PopAdLdVar
  loc_BB7152: FLdRfVar var_D0
  loc_BB7155: FLdRfVar var_BC
  loc_BB7158: FLdPr Me
  loc_BB715B: MemLdRfVar from_stack_1.global_56
  loc_BB715E: NewIfNullPr clsliquidacion
  loc_BB7161: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BB7166: FLdPr var_BC
  loc_BB7169:  = Me.Fields
  loc_BB716E: FLdPr var_D0
  loc_BB7171: from_stack_2 = Me.Item(from_stack_1)
  loc_BB7176: FLdPr var_1A8
  loc_BB7179:  = Me.Value
  loc_BB717E: LitI2_Byte &HFF
  loc_BB7180: PopTmpLdAd2 var_1E2
  loc_BB7183: LitNothing
  loc_BB7185: CastAd
  loc_BB7188: FStAdFunc var_1AC
  loc_BB718B: FLdRfVar var_1AC
  loc_BB718E: FLdRfVar var_F0
  loc_BB7191: CStrVarTmp
  loc_BB7192: FStStrNoPop var_F4
  loc_BB7195: LitI2_Byte &HFF
  loc_BB7197: LitI2_Byte &HFF
  loc_BB7199: FLdRfVar var_E0
  loc_BB719C: CStrVarTmp
  loc_BB719D: FStStrNoPop var_90
  loc_BB71A0: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_BB71A5: FStStrNoPop var_1E8
  loc_BB71A8: FLdPr Me
  loc_BB71AB: MemStStrCopy
  loc_BB71AF: FFreeStr var_90 = "": var_F4 = ""
  loc_BB71B8: FFreeAd var_98 = "": var_A0 = "": var_B4 = "": var_BC = "": var_D0 = "": var_B8 = "": var_1A8 = ""
  loc_BB71CB: FFreeVar var_E0 = ""
  loc_BB71D2: FLdPr Me
  loc_BB71D5: MemLdStr global_72
  loc_BB71D8: LitStr vbNullString
  loc_BB71DB: NeStr
  loc_BB71DD: BranchF loc_BB71F4
  loc_BB71E0: LitI4 0
  loc_BB71E5: FLdPr Me
  loc_BB71E8: MemLdStr global_72
  loc_BB71EB: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BB71F0: ExitProcHresult
  loc_BB71F1: Branch loc_BB7427
  loc_BB71F4: LitI2_Byte 1
  loc_BB71F6: FLdPr Me
  loc_BB71F9: MemStUI1
  loc_BB71FD: ILdRf Me
  loc_BB7200: CastAd
  loc_BB7203: FStAdFunc var_98
  loc_BB7206: FLdRfVar var_98
  loc_BB7209: ImpAdCallFPR4  = Proc_261_2_A55348()
  loc_BB720E: FFree1Ad var_98
  loc_BB7211: LitI4 0
  loc_BB7216: LitI4 0
  loc_BB721B: FLdRfVar var_1EC
  loc_BB721E: Redim
  loc_BB7228: FLdPr Me
  loc_BB722B: VCallAd Control_ID_dgdABMS
  loc_BB722E: CVarAd
  loc_BB7232: ParmAry1St
  loc_BB7238: FLdRfVar var_1EC
  loc_BB723B: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BB7240: FLdRfVar var_1EC
  loc_BB7243: Erase
  loc_BB7244: ILdRf Me
  loc_BB7247: CastAd
  loc_BB724A: FStAdFunc var_98
  loc_BB724D: FLdRfVar var_98
  loc_BB7250: ImpAdCallFPR4  = Proc_261_10_99CABC()
  loc_BB7255: FFree1Ad var_98
  loc_BB7258: ILdRf Me
  loc_BB725B: CastAd
  loc_BB725E: FStAdFunc var_98
  loc_BB7261: FLdRfVar var_98
  loc_BB7264: ImpAdCallFPR4  = Proc_261_15_A16E38()
  loc_BB7269: FFree1Ad var_98
  loc_BB726C: FLdRfVar var_E0
  loc_BB726F: FLdRfVar var_B8
  loc_BB7272: LitVarStr var_B0, "FechOrpa"
  loc_BB7277: PopAdLdVar
  loc_BB7278: FLdRfVar var_B4
  loc_BB727B: FLdRfVar var_A0
  loc_BB727E: FLdRfVar var_98
  loc_BB7281: ImpAdLdRf MemVar_C3D8F4
  loc_BB7284: NewIfNullPr dlgOrdenesdePagoReservadas
  loc_BB7287: from_stack_1v = dlgOrdenesdePagoReservadas.global_4255908Get()
  loc_BB728C: FLdPr var_98
  loc_BB728F: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BB7294: FLdPr var_A0
  loc_BB7297:  = Me.Fields
  loc_BB729C: FLdPr var_B4
  loc_BB729F: from_stack_2 = Me.Item(from_stack_1)
  loc_BB72A4: FLdPr var_B8
  loc_BB72A7:  = Me.Value
  loc_BB72AC: FLdRfVar var_E0
  loc_BB72AF: CStrVarTmp
  loc_BB72B0: CVarStr var_F0
  loc_BB72B3: PopAdLdVar
  loc_BB72B4: FLdPr Me
  loc_BB72B7: VCallAd Control_ID_FechLiquMsk
  loc_BB72BA: FStAdFunc var_BC
  loc_BB72BD: FLdPr var_BC
  loc_BB72C0: LateIdSt
  loc_BB72C5: FFreeAd var_98 = "": var_A0 = "": var_B4 = "": var_B8 = ""
  loc_BB72D2: FFreeVar var_E0 = ""
  loc_BB72D9: FLdPr Me
  loc_BB72DC: VCallAd Control_ID_FechLiquMsk
  loc_BB72DF: FStAdFunc var_98
  loc_BB72E2: FLdPr var_98
  loc_BB72E5: LateIdLdVar var_E0 DispID_11 -32767
  loc_BB72EC: CStrVarTmp
  loc_BB72ED: CVarStr var_F0
  loc_BB72F0: PopAdLdVar
  loc_BB72F1: FLdPr Me
  loc_BB72F4: VCallAd Control_ID_FechLiquMsk
  loc_BB72F7: FStAdFunc var_A0
  loc_BB72FA: FLdPr var_A0
  loc_BB72FD: LateIdSt
  loc_BB7302: FFreeAd var_98 = ""
  loc_BB7309: FFreeVar var_E0 = ""
  loc_BB7310: FLdPr Me
  loc_BB7313: VCallAd Control_ID_FechLiquMsk
  loc_BB7316: FStAdFunc var_98
  loc_BB7319: FLdPr var_98
  loc_BB731C: LateIdLdVar var_E0 DispID_11 -32767
  loc_BB7323: CStrVarTmp
  loc_BB7324: CVarStr var_F0
  loc_BB7327: PopAdLdVar
  loc_BB7328: FLdPr Me
  loc_BB732B: VCallAd Control_ID_FechLiquMsk
  loc_BB732E: FStAdFunc var_A0
  loc_BB7331: FLdPr var_A0
  loc_BB7334: LateIdSt
  loc_BB7339: FFreeAd var_98 = ""
  loc_BB7340: FFreeVar var_E0 = ""
  loc_BB7347: FLdRfVar var_E0
  loc_BB734A: FLdRfVar var_B8
  loc_BB734D: LitVarStr var_B0, "NumeOrpa"
  loc_BB7352: PopAdLdVar
  loc_BB7353: FLdRfVar var_B4
  loc_BB7356: FLdRfVar var_A0
  loc_BB7359: FLdRfVar var_98
  loc_BB735C: ImpAdLdRf MemVar_C3D8F4
  loc_BB735F: NewIfNullPr dlgOrdenesdePagoReservadas
  loc_BB7362: from_stack_1v = dlgOrdenesdePagoReservadas.global_4255908Get()
  loc_BB7367: FLdPr var_98
  loc_BB736A: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BB736F: FLdPr var_A0
  loc_BB7372:  = Me.Fields
  loc_BB7377: FLdPr var_B4
  loc_BB737A: from_stack_2 = Me.Item(from_stack_1)
  loc_BB737F: FLdPr var_B8
  loc_BB7382:  = Me.Value
  loc_BB7387: FLdRfVar var_E0
  loc_BB738A: CStrVarTmp
  loc_BB738B: FStStrNoPop var_90
  loc_BB738E: FLdPr Me
  loc_BB7391: VCallAd Control_ID_txtOpReservada
  loc_BB7394: FStAdFunc var_BC
  loc_BB7397: FLdPr var_BC
  loc_BB739A: Me.Text = from_stack_1
  loc_BB739F: FFree1Str var_90
  loc_BB73A2: FFreeAd var_98 = "": var_A0 = "": var_B4 = "": var_B8 = ""
  loc_BB73AF: FFree1Var var_E0 = ""
  loc_BB73B2: FLdRfVar var_E0
  loc_BB73B5: FLdRfVar var_B4
  loc_BB73B8: LitVarStr var_B0, "DetaLiqu"
  loc_BB73BD: PopAdLdVar
  loc_BB73BE: FLdRfVar var_A0
  loc_BB73C1: FLdRfVar var_98
  loc_BB73C4: FLdPr Me
  loc_BB73C7: MemLdRfVar from_stack_1.global_56
  loc_BB73CA: NewIfNullPr clsliquidacion
  loc_BB73CD: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BB73D2: FLdPr var_98
  loc_BB73D5:  = Me.Fields
  loc_BB73DA: FLdPr var_A0
  loc_BB73DD: from_stack_2 = Me.Item(from_stack_1)
  loc_BB73E2: FLdPr var_B4
  loc_BB73E5:  = Me.Value
  loc_BB73EA: FLdRfVar var_E0
  loc_BB73ED: CStrVarTmp
  loc_BB73EE: FStStrNoPop var_90
  loc_BB73F1: FLdPr Me
  loc_BB73F4: VCallAd Control_ID_DetaLiquTxt
  loc_BB73F7: FStAdFunc var_B8
  loc_BB73FA: FLdPr var_B8
  loc_BB73FD: Me.Text = from_stack_1
  loc_BB7402: FFree1Str var_90
  loc_BB7405: FFreeAd var_98 = "": var_A0 = "": var_B4 = ""
  loc_BB7410: FFree1Var var_E0 = ""
  loc_BB7413: ILdRf Me
  loc_BB7416: CastAd
  loc_BB7419: FStAdFunc var_98
  loc_BB741C: FLdRfVar var_98
  loc_BB741F: ImpAdCallFPR4  = Proc_261_14_9D98D4()
  loc_BB7424: FFree1Ad var_98
  loc_BB7427: Branch loc_BB744B
  loc_BB742A: LitI4 0
  loc_BB742F: FLdRfVar var_90
  loc_BB7432: FLdPr Me
  loc_BB7435: MemLdRfVar from_stack_1.global_84
  loc_BB7438: NewIfNullPr tblliquidacion
  loc_BB743B: from_stack_1v = tblliquidacion.MsgErrorGet()
  loc_BB7440: ILdRf var_90
  loc_BB7443: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BB7448: FFree1Str var_90
  loc_BB744B: Branch loc_BB7E2D
  loc_BB744E: ILdRf var_94
  loc_BB7451: LitStr "btnModificar"
  loc_BB7454: EqStr
  loc_BB7456: BranchF loc_BB753A
  loc_BB7459: LitI2_Byte 0
  loc_BB745B: PopTmpLdAd2 var_1E4
  loc_BB745E: LitI2_Byte &HFF
  loc_BB7460: PopTmpLdAd2 var_1E2
  loc_BB7463: LitStr "¿Está seguro/a que desea RESERVAR una Orden de Pago?"
  loc_BB7466: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BB746B: CI4UI1
  loc_BB746C: LitI4 6
  loc_BB7471: EqI4
  loc_BB7472: BranchF loc_BB7537
  loc_BB7475: LitI2_Byte 2
  loc_BB7477: FLdPr Me
  loc_BB747A: MemStUI1
  loc_BB747E: ILdRf Me
  loc_BB7481: CastAd
  loc_BB7484: FStAdFunc var_98
  loc_BB7487: FLdRfVar var_98
  loc_BB748A: ImpAdCallFPR4  = Proc_261_2_A55348()
  loc_BB748F: FFree1Ad var_98
  loc_BB7492: LitI4 0
  loc_BB7497: LitI4 0
  loc_BB749C: FLdRfVar var_1EC
  loc_BB749F: Redim
  loc_BB74A9: FLdPr Me
  loc_BB74AC: VCallAd Control_ID_dgdABMS
  loc_BB74AF: CVarAd
  loc_BB74B3: ParmAry1St
  loc_BB74B9: FLdRfVar var_1EC
  loc_BB74BC: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BB74C1: FLdRfVar var_1EC
  loc_BB74C4: Erase
  loc_BB74C5: ILdRf Me
  loc_BB74C8: CastAd
  loc_BB74CB: FStAdFunc var_98
  loc_BB74CE: FLdRfVar var_98
  loc_BB74D1: ImpAdCallFPR4  = Proc_261_10_99CABC()
  loc_BB74D6: FFree1Ad var_98
  loc_BB74D9: ILdRf Me
  loc_BB74DC: CastAd
  loc_BB74DF: FStAdFunc var_98
  loc_BB74E2: FLdRfVar var_98
  loc_BB74E5: ImpAdCallFPR4  = Proc_261_15_A16E38()
  loc_BB74EA: FFree1Ad var_98
  loc_BB74ED: LitStr vbNullString
  loc_BB74F0: FLdPr Me
  loc_BB74F3: VCallAd Control_ID_DetaLiquTxt
  loc_BB74F6: FStAdFunc var_98
  loc_BB74F9: FLdPr var_98
  loc_BB74FC: Me.Text = from_stack_1
  loc_BB7501: FFree1Ad var_98
  loc_BB7504: LitI4 0
  loc_BB7509: LitI4 0
  loc_BB750E: FLdRfVar var_1EC
  loc_BB7511: Redim
  loc_BB751B: FLdPr Me
  loc_BB751E: VCallAd Control_ID_DetaLiquTxt
  loc_BB7521: CVarAd
  loc_BB7525: ParmAry1St
  loc_BB752B: FLdRfVar var_1EC
  loc_BB752E: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BB7533: FLdRfVar var_1EC
  loc_BB7536: Erase
  loc_BB7537: Branch loc_BB7E2D
  loc_BB753A: ILdRf var_94
  loc_BB753D: LitStr "btnEliminar"
  loc_BB7540: EqStr
  loc_BB7542: BranchF loc_BB7548
  loc_BB7545: Branch loc_BB7E2D
  loc_BB7548: ILdRf var_94
  loc_BB754B: LitStr "btnGuardar"
  loc_BB754E: EqStr
  loc_BB7550: BranchF loc_BB7D0A
  loc_BB7553: LitStr vbNullString
  loc_BB7556: FLdPr Me
  loc_BB7559: MemStStrCopy
  loc_BB755D: LitI2_Byte 0
  loc_BB755F: PopTmpLdAd2 var_1E2
  loc_BB7562: from_stack_2v = FechLiquMsk_UnknownEvent_8(from_stack_1v)
  loc_BB7567: FLdPr Me
  loc_BB756A: MemLdStr global_72
  loc_BB756D: LitStr vbNullString
  loc_BB7570: NeStr
  loc_BB7572: BranchF loc_BB7576
  loc_BB7575: ExitProcHresult
  loc_BB7576: LitI2_Byte 0
  loc_BB7578: PopTmpLdAd2 var_1E2
  loc_BB757B: Call DetaLiquTxt_Validate(from_stack_1v)
  loc_BB7580: FLdPr Me
  loc_BB7583: MemLdStr global_72
  loc_BB7586: LitStr vbNullString
  loc_BB7589: NeStr
  loc_BB758B: BranchF loc_BB758F
  loc_BB758E: ExitProcHresult
  loc_BB758F: FLdPr Me
  loc_BB7592: MemLdUI1 global_68
  loc_BB7596: FStUI1 var_1F4
  loc_BB759A: FLdUI1
  loc_BB759E: LitI2_Byte 1
  loc_BB75A0: EqI2
  loc_BB75A1: BranchF loc_BB7C98
  loc_BB75A4: FLdRfVar var_184
  loc_BB75A7: FLdRfVar var_B4
  loc_BB75AA: LitVarStr var_B0, "ExpeImpu"
  loc_BB75AF: PopAdLdVar
  loc_BB75B0: FLdRfVar var_A0
  loc_BB75B3: FLdRfVar var_98
  loc_BB75B6: FLdPr Me
  loc_BB75B9: MemLdRfVar from_stack_1.global_56
  loc_BB75BC: NewIfNullPr clsliquidacion
  loc_BB75BF: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BB75C4: FLdPr var_98
  loc_BB75C7:  = Me.Fields
  loc_BB75CC: FLdPr var_A0
  loc_BB75CF: from_stack_2 = Me.Item(from_stack_1)
  loc_BB75D4: FLdPr var_B4
  loc_BB75D7:  = Me.Value
  loc_BB75DC: FLdRfVar var_1A4
  loc_BB75DF: FLdRfVar var_D0
  loc_BB75E2: LitVarStr var_CC, "NumeLiqu"
  loc_BB75E7: PopAdLdVar
  loc_BB75E8: FLdRfVar var_BC
  loc_BB75EB: FLdRfVar var_B8
  loc_BB75EE: FLdPr Me
  loc_BB75F1: MemLdRfVar from_stack_1.global_56
  loc_BB75F4: NewIfNullPr clsliquidacion
  loc_BB75F7: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BB75FC: FLdPr var_B8
  loc_BB75FF:  = Me.Fields
  loc_BB7604: FLdPr var_BC
  loc_BB7607: from_stack_2 = Me.Item(from_stack_1)
  loc_BB760C: FLdPr var_D0
  loc_BB760F:  = Me.Value
  loc_BB7614: FLdPr Me
  loc_BB7617: VCallAd Control_ID_FechLiquMsk
  loc_BB761A: FStAdFunc var_1A8
  loc_BB761D: FLdPr var_1A8
  loc_BB7620: LateIdLdVar var_E0 DispID_15 0
  loc_BB7627: PopAd
  loc_BB7629: FLdRfVar var_90
  loc_BB762C: FLdPr Me
  loc_BB762F: VCallAd Control_ID_DetaLiquTxt
  loc_BB7632: FStAdFunc var_1AC
  loc_BB7635: FLdPr var_1AC
  loc_BB7638:  = Me.Text
  loc_BB763D: FLdRfVar var_F0
  loc_BB7640: FLdRfVar var_1FC
  loc_BB7643: LitVarStr var_124, "TipoLiqu"
  loc_BB7648: PopAdLdVar
  loc_BB7649: FLdRfVar var_1F8
  loc_BB764C: FLdRfVar var_1C0
  loc_BB764F: FLdPr Me
  loc_BB7652: MemLdRfVar from_stack_1.global_56
  loc_BB7655: NewIfNullPr clsliquidacion
  loc_BB7658: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BB765D: FLdPr var_1C0
  loc_BB7660:  = Me.Fields
  loc_BB7665: FLdPr var_1F8
  loc_BB7668: from_stack_2 = Me.Item(from_stack_1)
  loc_BB766D: FLdPr var_1FC
  loc_BB7670:  = Me.Value
  loc_BB7675: LitVarStr var_194, "Debito"
  loc_BB767A: FStVarCopyObj var_144
  loc_BB767D: FLdRfVar var_144
  loc_BB7680: LitVarStr var_174, "Devengado"
  loc_BB7685: FStVarCopyObj var_134
  loc_BB7688: FLdRfVar var_134
  loc_BB768B: FLdRfVar var_F0
  loc_BB768E: LitVarI2 var_154, 1
  loc_BB7693: HardType
  loc_BB7694: EqVar var_104
  loc_BB7698: FStVar var_114
  loc_BB769C: FLdRfVar var_114
  loc_BB769F: FLdRfVar var_164
  loc_BB76A2: ImpAdCallFPR4  = IIf(, , )
  loc_BB76A7: FLdPr Me
  loc_BB76AA: VCallAd Control_ID_LiquidaNetoFlex
  loc_BB76AD: FStAdFunc var_218
  loc_BB76B0: FLdRfVar var_F4
  loc_BB76B3: FLdPr Me
  loc_BB76B6: VCallAd Control_ID_txtOpReservada
  loc_BB76B9: FStAdFunc var_200
  loc_BB76BC: FLdPr var_200
  loc_BB76BF:  = Me.Text
  loc_BB76C4: FLdRfVar var_214
  loc_BB76C7: ILdRf var_F4
  loc_BB76CA: CI4Str
  loc_BB76CB: PopTmpLdAdStr var_9C
  loc_BB76CE: FLdZeroAd var_218
  loc_BB76D1: FStAdFunc var_210
  loc_BB76D4: FLdRfVar var_210
  loc_BB76D7: FLdRfVar var_164
  loc_BB76DA: CStrVarVal var_20C
  loc_BB76DE: ILdRf var_90
  loc_BB76E1: FLdRfVar var_E0
  loc_BB76E4: CStrVarTmp
  loc_BB76E5: FStStrNoPop var_208
  loc_BB76E8: FLdRfVar var_1A4
  loc_BB76EB: CStrVarTmp
  loc_BB76EC: FStStrNoPop var_204
  loc_BB76EF: FLdRfVar var_184
  loc_BB76F2: CStrVarTmp
  loc_BB76F3: FStStrNoPop var_1E8
  loc_BB76F6: FLdPr Me
  loc_BB76F9: MemLdRfVar from_stack_1.global_52
  loc_BB76FC: NewIfNullPr clsordenpago
  loc_BB76FF: from_stack_8v = clsordenpago.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v)
  loc_BB7704: ILdRf var_214
  loc_BB7707: FStR4 var_8C
  loc_BB770A: FFreeStr var_1E8 = "": var_204 = "": var_208 = "": var_90 = "": var_20C = ""
  loc_BB7719: FFreeAd var_98 = "": var_A0 = "": var_B8 = "": var_BC = "": var_1A8 = "": var_1AC = "": var_1C0 = "": var_1F8 = "": var_1FC = "": var_200 = "": var_B4 = "": var_D0 = "": var_210 = ""
  loc_BB7738: FFreeVar var_E0 = "": var_F0 = "": var_114 = "": var_134 = "": var_144 = "": var_184 = "": var_1A4 = ""
  loc_BB774B: ILdRf var_8C
  loc_BB774E: LitI4 0
  loc_BB7753: EqI4
  loc_BB7754: BranchF loc_BB7765
  loc_BB7757: LitI4 0
  loc_BB775C: LitStr "Consulte con el Administrador."
  loc_BB775F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BB7764: ExitProcHresult
  loc_BB7765: LitI2_Byte 1
  loc_BB7767: FLdPr Me
  loc_BB776A: MemLdRfVar from_stack_1.global_76
  loc_BB776D: FLdPr Me
  loc_BB7770: VCallAd Control_ID_LiquidaNetoFlex
  loc_BB7773: FStAdFunc var_98
  loc_BB7776: FLdPr var_98
  loc_BB7779: LateIdLdVar var_E0 DispID_4 0
  loc_BB7780: CI4Var
  loc_BB7782: LitI4 1
  loc_BB7787: SubI4
  loc_BB7788: CI2I4
  loc_BB7789: FFree1Ad var_98
  loc_BB778C: FFree1Var var_E0 = ""
  loc_BB778F: ForI2 var_21C
  loc_BB7795: FLdPr Me
  loc_BB7798: MemLdI2 global_76
  loc_BB779B: CI4UI1
  loc_BB779C: CVarI4
  loc_BB77A0: PopAdLdVar
  loc_BB77A1: LitVarI4
  loc_BB77A9: PopAdLdVar
  loc_BB77AA: FLdPr Me
  loc_BB77AD: VCallAd Control_ID_LiquidaNetoFlex
  loc_BB77B0: FStAdFunc var_98
  loc_BB77B3: FLdPr var_98
  loc_BB77B6: LateIdCallLdVar
  loc_BB77C0: CStrVarTmp
  loc_BB77C1: FStStrNoPop var_90
  loc_BB77C4: LitStr "Cheque"
  loc_BB77C7: EqStr
  loc_BB77C9: LitStr "Municipalidad de Guaymallén"
  loc_BB77CC: LitStr "Municipalidad de Maipú"
  loc_BB77CF: EqStr
  loc_BB77D1: FLdPr Me
  loc_BB77D4: MemLdI2 global_76
  loc_BB77D7: CI4UI1
  loc_BB77D8: CVarI4
  loc_BB77DC: PopAdLdVar
  loc_BB77DD: LitVarI4
  loc_BB77E5: PopAdLdVar
  loc_BB77E6: FLdPr Me
  loc_BB77E9: VCallAd Control_ID_LiquidaNetoFlex
  loc_BB77EC: FStAdFunc var_A0
  loc_BB77EF: FLdPr var_A0
  loc_BB77F2: LateIdCallLdVar
  loc_BB77FC: CStrVarTmp
  loc_BB77FD: FStStrNoPop var_F4
  loc_BB7800: LitStr "ACREEDORES POR CHEQUE DIFERIDO"
  loc_BB7803: EqStr
  loc_BB7805: AndI4
  loc_BB7806: OrI4
  loc_BB7807: FFreeStr var_90 = ""
  loc_BB780E: FFreeAd var_98 = ""
  loc_BB7815: FFreeVar var_E0 = ""
  loc_BB781C: BranchF loc_BB7827
  loc_BB781F: LitI2_Byte &HFF
  loc_BB7821: FStI2 var_1F2
  loc_BB7824: Branch loc_BB7832
  loc_BB7827: FLdPr Me
  loc_BB782A: MemLdRfVar from_stack_1.global_76
  loc_BB782D: NextI2 var_21C, loc_BB7795
  loc_BB7832: FLdI2 var_1F2
  loc_BB7835: NotI4
  loc_BB7836: BranchF loc_BB7B58
  loc_BB7839: FLdRfVar var_F0
  loc_BB783C: FLdRfVar var_B4
  loc_BB783F: LitVarStr var_B0, "PeriInfo"
  loc_BB7844: PopAdLdVar
  loc_BB7845: FLdRfVar var_A0
  loc_BB7848: FLdRfVar var_98
  loc_BB784B: FLdPr Me
  loc_BB784E: MemLdRfVar from_stack_1.global_56
  loc_BB7851: NewIfNullPr clsliquidacion
  loc_BB7854: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BB7859: FLdPr var_98
  loc_BB785C:  = Me.Fields
  loc_BB7861: FLdPr var_A0
  loc_BB7864: from_stack_2 = Me.Item(from_stack_1)
  loc_BB7869: FLdPr var_B4
  loc_BB786C:  = Me.Value
  loc_BB7871: FLdPr Me
  loc_BB7874: VCallAd Control_ID_FechLiquMsk
  loc_BB7877: FStAdFunc var_B8
  loc_BB787A: FLdPr var_B8
  loc_BB787D: LateIdLdVar var_E0 DispID_15 0
  loc_BB7884: CStrVarTmp
  loc_BB7885: FStStrNoPop var_90
  loc_BB7888: ILdRf var_8C
  loc_BB788B: FLdRfVar var_F0
  loc_BB788E: CI2Var
  loc_BB788F: FLdPr Me
  loc_BB7892: MemLdRfVar from_stack_1.global_52
  loc_BB7895: NewIfNullPr clsordenpago
  loc_BB7898: Call clsordenpago.ActualizaFereOrpaFearOrpa(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_BB789D: FFree1Str var_90
  loc_BB78A0: FFreeAd var_98 = "": var_A0 = "": var_B8 = ""
  loc_BB78AB: FFreeVar var_E0 = ""
  loc_BB78B2: FLdRfVar var_F0
  loc_BB78B5: FLdRfVar var_B4
  loc_BB78B8: LitVarStr var_B0, "ExpeImpu"
  loc_BB78BD: PopAdLdVar
  loc_BB78BE: FLdRfVar var_A0
  loc_BB78C1: FLdRfVar var_98
  loc_BB78C4: FLdPr Me
  loc_BB78C7: MemLdRfVar from_stack_1.global_56
  loc_BB78CA: NewIfNullPr clsliquidacion
  loc_BB78CD: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BB78D2: FLdPr var_98
  loc_BB78D5:  = Me.Fields
  loc_BB78DA: FLdPr var_A0
  loc_BB78DD: from_stack_2 = Me.Item(from_stack_1)
  loc_BB78E2: FLdPr var_B4
  loc_BB78E5:  = Me.Value
  loc_BB78EA: FLdRfVar var_104
  loc_BB78ED: FLdRfVar var_D0
  loc_BB78F0: LitVarStr var_CC, "NumeLiqu"
  loc_BB78F5: PopAdLdVar
  loc_BB78F6: FLdRfVar var_BC
  loc_BB78F9: FLdRfVar var_B8
  loc_BB78FC: FLdPr Me
  loc_BB78FF: MemLdRfVar from_stack_1.global_56
  loc_BB7902: NewIfNullPr clsliquidacion
  loc_BB7905: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BB790A: FLdPr var_B8
  loc_BB790D:  = Me.Fields
  loc_BB7912: FLdPr var_BC
  loc_BB7915: from_stack_2 = Me.Item(from_stack_1)
  loc_BB791A: FLdPr var_D0
  loc_BB791D:  = Me.Value
  loc_BB7922: FLdPr Me
  loc_BB7925: VCallAd Control_ID_FechLiquMsk
  loc_BB7928: FStAdFunc var_1A8
  loc_BB792B: FLdPr var_1A8
  loc_BB792E: LateIdLdVar var_E0 DispID_15 0
  loc_BB7935: CStrVarTmp
  loc_BB7936: FStStrNoPop var_F4
  loc_BB7939: FLdRfVar var_104
  loc_BB793C: CI2Var
  loc_BB793D: FLdRfVar var_F0
  loc_BB7940: CStrVarTmp
  loc_BB7941: FStStrNoPop var_90
  loc_BB7944: ImpAdLdI2 MemVar_C3D064
  loc_BB7947: FLdPr Me
  loc_BB794A: MemLdRfVar from_stack_1.global_52
  loc_BB794D: NewIfNullPr clsordenpago
  loc_BB7950: Call clsordenpago.ActualizaLNFechCaja(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_BB7955: FFreeStr var_90 = ""
  loc_BB795C: FFreeAd var_98 = "": var_A0 = "": var_B8 = "": var_BC = "": var_1A8 = "": var_B4 = ""
  loc_BB796D: FFreeVar var_E0 = "": var_F0 = ""
  loc_BB7976: LitStr "SELECT *"
  loc_BB7979: LitStr " FROM imputacion i"
  loc_BB797C: ConcatStr
  loc_BB797D: FStStrNoPop var_90
  loc_BB7980: LitStr " WHERE PeriInfo = "
  loc_BB7983: ConcatStr
  loc_BB7984: CVarStr var_F0
  loc_BB7987: FLdRfVar var_E0
  loc_BB798A: FLdRfVar var_B4
  loc_BB798D: LitVarStr var_B0, "PeriInfo"
  loc_BB7992: PopAdLdVar
  loc_BB7993: FLdRfVar var_A0
  loc_BB7996: FLdRfVar var_98
  loc_BB7999: FLdPr Me
  loc_BB799C: MemLdRfVar from_stack_1.global_56
  loc_BB799F: NewIfNullPr clsliquidacion
  loc_BB79A2: from_stack_1v = clsliquidacion.RsFrmGet()
  loc_BB79A7: FLdPr var_98
  loc_BB79AA:  = Me.Fields
  loc_BB79AF: FLdPr var_A0
  loc_BB79B2: from_stack_2 = Me.Item(from_stack_1)
  loc_BB79B7: FLdPr var_B4
  loc_BB79BA:  = Me.Value
  loc_BB79BF: FLdRfVar var_E0
  loc_BB79C2: ConcatVar var_104
  loc_BB79C6: LitVarStr var_CC, " AND NumeOrpa = "
  loc_BB79CB: ConcatVar var_114
  loc_BB79CF: ILdRf var_8C
  loc_BB79D2: CVarI4
  loc_BB79D6: ConcatVar var_134
  loc_BB79DA: LitVarStr var_154, " AND MapaImpu != 0;"
  loc_BB79DF: ConcatVar var_144
  loc_BB79E3: CStrVarVal var_F4
  loc_BB79E7: FLdPr Me
  loc_BB79EA: MemLdRfVar from_stack_1.global_64
  loc_BB79ED: NewIfNullPr clsimputacion
  loc_BB79F0: Call clsimputacion.RedefineRS(from_stack_1v)
  loc_BB79F5: FFreeStr var_90 = ""
  loc_BB79FC: FFreeAd var_98 = "": var_A0 = ""
  loc_BB7A05: FFreeVar var_F0 = "": var_E0 = "": var_104 = "": var_114 = "": var_134 = ""
  loc_BB7A14: FLdRfVar var_9C
  loc_BB7A17: FLdPr Me
  loc_BB7A1A: MemLdRfVar from_stack_1.global_64
  loc_BB7A1D: NewIfNullPr clsimputacion
  loc_BB7A20: from_stack_1 = clsimputacion.RecordCount
  loc_BB7A25: ILdRf var_9C
  loc_BB7A28: LitI4 0
  loc_BB7A2D: GtI4
  loc_BB7A2E: BranchF loc_BB7B58
  loc_BB7A31: FLdPr Me
  loc_BB7A34: MemLdRfVar from_stack_1.global_64
  loc_BB7A37: NewIfNullPr clsimputacion
  loc_BB7A3A: Call clsimputacion.MoveFirst()
  loc_BB7A3F: FLdRfVar var_1E2
  loc_BB7A42: FLdPr Me
  loc_BB7A45: MemLdRfVar from_stack_1.global_64
  loc_BB7A48: NewIfNullPr clsimputacion
  loc_BB7A4B: from_stack_1 = clsimputacion.EOF
  loc_BB7A50: FLdI2 var_1E2
  loc_BB7A53: NotI4
  loc_BB7A54: BranchF loc_BB7B58
  loc_BB7A57: FLdRfVar var_F0
  loc_BB7A5A: FLdRfVar var_B4
  loc_BB7A5D: LitVarStr var_B0, "IdImpu"
  loc_BB7A62: PopAdLdVar
  loc_BB7A63: FLdRfVar var_A0
  loc_BB7A66: FLdRfVar var_98
  loc_BB7A69: FLdPr Me
  loc_BB7A6C: MemLdRfVar from_stack_1.global_64
  loc_BB7A6F: NewIfNullPr clsimputacion
  loc_BB7A72: from_stack_1v = clsimputacion.RsFrmGet()
  loc_BB7A77: FLdPr var_98
  loc_BB7A7A:  = Me.Fields
  loc_BB7A7F: FLdPr var_A0
  loc_BB7A82: from_stack_2 = Me.Item(from_stack_1)
  loc_BB7A87: FLdPr var_B4
  loc_BB7A8A:  = Me.Value
  loc_BB7A8F: FLdPr Me
  loc_BB7A92: VCallAd Control_ID_FechLiquMsk
  loc_BB7A95: FStAdFunc var_B8
  loc_BB7A98: FLdPr var_B8
  loc_BB7A9B: LateIdLdVar var_E0 DispID_15 0
  loc_BB7AA2: PopAd
  loc_BB7AA4: FLdRfVar var_9C
  loc_BB7AA7: LitI2_Byte 0
  loc_BB7AA9: LitI2_Byte 0
  loc_BB7AAB: LitI4 0
  loc_BB7AB0: LitStr vbNullString
  loc_BB7AB3: FLdRfVar var_E0
  loc_BB7AB6: CStrVarTmp
  loc_BB7AB7: FStStrNoPop var_90
  loc_BB7ABA: FLdRfVar var_F0
  loc_BB7ABD: CI4Var
  loc_BB7ABF: FLdPr Me
  loc_BB7AC2: MemLdRfVar from_stack_1.global_64
  loc_BB7AC5: NewIfNullPr clsimputacion
  loc_BB7AC8: from_stack_7v = clsimputacion.AddNewPagado(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_BB7ACD: ILdRf var_9C
  loc_BB7AD0: FStR4 var_1F0
  loc_BB7AD3: FFree1Str var_90
  loc_BB7AD6: FFreeAd var_98 = "": var_A0 = "": var_B8 = ""
  loc_BB7AE1: FFreeVar var_E0 = ""
  loc_BB7AE8: ILdRf var_1F0
  loc_BB7AEB: LitI4 0
  loc_BB7AF0: EqI4
  loc_BB7AF1: BranchF loc_BB7B01
  loc_BB7AF4: LitI4 0
  loc_BB7AF9: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_BB7AFC: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BB7B01: FLdRfVar var_214
  loc_BB7B04: FLdPr Me
  loc_BB7B07: MemLdRfVar from_stack_1.global_64
  loc_BB7B0A: NewIfNullPr clsimputacion
  loc_BB7B0D: from_stack_1 = clsimputacion.RecordCount
  loc_BB7B12: FLdRfVar var_9C
  loc_BB7B15: FLdPr Me
  loc_BB7B18: MemLdRfVar from_stack_1.global_64
  loc_BB7B1B: NewIfNullPr clsimputacion
  loc_BB7B1E: from_stack_1 = clsimputacion.AbsolutePosition
  loc_BB7B23: ILdRf var_9C
  loc_BB7B26: CR8I4
  loc_BB7B27: ILdRf var_214
  loc_BB7B2A: CR8I4
  loc_BB7B2B: DivR8
  loc_BB7B2C: LitI2_Byte &H64
  loc_BB7B2E: CR8I2
  loc_BB7B2F: MulR8
  loc_BB7B30: CVarR4
  loc_BB7B34: PopAdLdVar
  loc_BB7B35: FLdPrThis
  loc_BB7B36: VCallAd Control_ID_ProgressBar
  loc_BB7B39: FStAdFunc var_98
  loc_BB7B3C: FLdPr var_98
  loc_BB7B3F: LateIdSt
  loc_BB7B44: FFree1Ad var_98
  loc_BB7B47: FLdPr Me
  loc_BB7B4A: MemLdRfVar from_stack_1.global_64
  loc_BB7B4D: NewIfNullPr clsimputacion
  loc_BB7B50: Call clsimputacion.MoveSiguiente()
  loc_BB7B55: Branch loc_BB7A3F
  loc_BB7B58: ILdRf var_8C
  loc_BB7B5B: LitI4 0
  loc_BB7B60: EqI4
  loc_BB7B61: BranchF loc_BB7B74
  loc_BB7B64: LitI4 0
  loc_BB7B69: LitStr "Informe al Administrador el Expediente..."
  loc_BB7B6C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BB7B71: Branch loc_BB7C90
  loc_BB7B74: LitI4 0
  loc_BB7B79: LitStr "Se usó la Orden de Pago reservada número: "
  loc_BB7B7C: ILdRf var_8C
  loc_BB7B7F: CStrI4
  loc_BB7B81: FStStrNoPop var_90
  loc_BB7B84: ConcatStr
  loc_BB7B85: FStStrNoPop var_F4
  loc_BB7B88: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BB7B8D: FFreeStr var_90 = ""
  loc_BB7B94: FLdI2 var_1F2
  loc_BB7B97: NotI4
  loc_BB7B98: BranchF loc_BB7BC4
  loc_BB7B9B: LitI4 0
  loc_BB7BA0: LitStr "La Orden de Pago: "
  loc_BB7BA3: ILdRf var_8C
  loc_BB7BA6: CStrI4
  loc_BB7BA8: FStStrNoPop var_90
  loc_BB7BAB: ConcatStr
  loc_BB7BAC: FStStrNoPop var_F4
  loc_BB7BAF: LitStr " ya fue Remitida y Pagada. Verifique..."
  loc_BB7BB2: ConcatStr
  loc_BB7BB3: FStStrNoPop var_1E8
  loc_BB7BB6: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BB7BBB: FFreeStr var_90 = "": var_F4 = ""
  loc_BB7BC4: LitVar_FALSE
  loc_BB7BC8: PopAdLdVar
  loc_BB7BC9: FLdPr Me
  loc_BB7BCC: VCallAd Control_ID_ProgressBar
  loc_BB7BCF: FStAdFunc var_98
  loc_BB7BD2: FLdPr var_98
  loc_BB7BD5: LateIdSt
  loc_BB7BDA: FFree1Ad var_98
  loc_BB7BDD: LitStr "Municipalidad de Guaymallén"
  loc_BB7BE0: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_BB7BE3: NeStr
  loc_BB7BE5: BranchF loc_BB7C90
  loc_BB7BE8: LitI2_Byte &HFF
  loc_BB7BEA: PopTmpLdAd2 var_1E4
  loc_BB7BED: LitI2_Byte 0
  loc_BB7BEF: PopTmpLdAd2 var_1E2
  loc_BB7BF2: LitStr "¿Imprime la Orden de Pago número: "
  loc_BB7BF5: ILdRf var_8C
  loc_BB7BF8: CStrI4
  loc_BB7BFA: FStStrNoPop var_90
  loc_BB7BFD: ConcatStr
  loc_BB7BFE: FStStrNoPop var_F4
  loc_BB7C01: LitStr " ?"
  loc_BB7C04: ConcatStr
  loc_BB7C05: FStStrNoPop var_1E8
  loc_BB7C08: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BB7C0D: CI4UI1
  loc_BB7C0E: LitI4 6
  loc_BB7C13: EqI4
  loc_BB7C14: FFreeStr var_90 = "": var_F4 = ""
  loc_BB7C1D: BranchF loc_BB7C90
  loc_BB7C20: ImpAdLdRf MemVar_C3DAD4
  loc_BB7C23: NewIfNullAd
  loc_BB7C26: CastAd
  loc_BB7C29: FStAdFuncNoPop
  loc_BB7C2C: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_BB7C31: FFree1Ad var_98
  loc_BB7C34: ImpAdLdI2 MemVar_C3D064
  loc_BB7C37: CStrUI1
  loc_BB7C39: FStStrNoPop var_90
  loc_BB7C3C: ImpAdLdRf MemVar_C3DAD4
  loc_BB7C3F: NewIfNullPr rptOrdenPago
  loc_BB7C42: VCallAd Control_ID_cboPeriodo
  loc_BB7C45: FStAdFunc var_98
  loc_BB7C48: FLdPr var_98
  loc_BB7C4B: rptOrdenPago.ComboBox.Text = from_stack_1
  loc_BB7C50: FFree1Str var_90
  loc_BB7C53: FFree1Ad var_98
  loc_BB7C56: ILdRf var_8C
  loc_BB7C59: CStrI4
  loc_BB7C5B: FStStrNoPop var_90
  loc_BB7C5E: ImpAdLdRf MemVar_C3DAD4
  loc_BB7C61: NewIfNullPr rptOrdenPago
  loc_BB7C64: VCallAd Control_ID_NumeOrpaTxt
  loc_BB7C67: FStAdFunc var_98
  loc_BB7C6A: FLdPr var_98
  loc_BB7C6D: rptOrdenPago.TextBox.Text = from_stack_1
  loc_BB7C72: FFree1Str var_90
  loc_BB7C75: FFree1Ad var_98
  loc_BB7C78: LitVar_Missing var_CC
  loc_BB7C7B: PopAdLdVar
  loc_BB7C7C: LitVarI4
  loc_BB7C84: PopAdLdVar
  loc_BB7C85: ImpAdLdRf MemVar_C3DAD4
  loc_BB7C88: NewIfNullPr rptOrdenPago
  loc_BB7C8B: rptOrdenPago.Show from_stack_1, from_stack_2
  loc_BB7C90: Call cmdCancelar_Click()
  loc_BB7C95: Branch loc_BB7D02
  loc_BB7C98: FLdUI1
  loc_BB7C9C: LitI2_Byte 2
  loc_BB7C9E: EqI2
  loc_BB7C9F: BranchF loc_BB7D02
  loc_BB7CA2: FLdRfVar var_90
  loc_BB7CA5: FLdPr Me
  loc_BB7CA8: VCallAd Control_ID_DetaLiquTxt
  loc_BB7CAB: FStAdFunc var_98
  loc_BB7CAE: FLdPr var_98
  loc_BB7CB1:  = Me.Text
  loc_BB7CB6: FLdRfVar var_9C
  loc_BB7CB9: ILdRf var_90
  loc_BB7CBC: ImpAdLdI2 MemVar_C3D064
  loc_BB7CBF: FLdPr Me
  loc_BB7CC2: MemLdRfVar from_stack_1.global_56
  loc_BB7CC5: NewIfNullPr clsliquidacion
  loc_BB7CC8: from_stack_3v = clsliquidacion.ReservarOP(from_stack_1v, from_stack_2v)
  loc_BB7CCD: ILdRf var_9C
  loc_BB7CD0: FStR4 var_230
  loc_BB7CD3: FFree1Str var_90
  loc_BB7CD6: FFree1Ad var_98
  loc_BB7CD9: LitI4 0
  loc_BB7CDE: LitStr "Se reservó la Orden de Pago "
  loc_BB7CE1: ILdRf var_230
  loc_BB7CE4: CStrI4
  loc_BB7CE6: FStStrNoPop var_90
  loc_BB7CE9: ConcatStr
  loc_BB7CEA: FStStrNoPop var_F4
  loc_BB7CED: LitStr "."
  loc_BB7CF0: ConcatStr
  loc_BB7CF1: FStStrNoPop var_1E8
  loc_BB7CF4: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BB7CF9: FFreeStr var_90 = "": var_F4 = ""
  loc_BB7D02: Call cmdCancelar_Click()
  loc_BB7D07: Branch loc_BB7E2D
  loc_BB7D0A: ILdRf var_94
  loc_BB7D0D: LitStr "btnCancelar"
  loc_BB7D10: EqStr
  loc_BB7D12: BranchF loc_BB7D1D
  loc_BB7D15: Call cmdCancelar_Click()
  loc_BB7D1A: Branch loc_BB7E2D
  loc_BB7D1D: ILdRf var_94
  loc_BB7D20: LitStr "btnPrimero"
  loc_BB7D23: EqStr
  loc_BB7D25: BranchF loc_BB7D39
  loc_BB7D28: FLdPr Me
  loc_BB7D2B: MemLdRfVar from_stack_1.global_56
  loc_BB7D2E: NewIfNullPr clsliquidacion
  loc_BB7D31: Call clsliquidacion.MoveFirst()
  loc_BB7D36: Branch loc_BB7E2D
  loc_BB7D39: ILdRf var_94
  loc_BB7D3C: LitStr "btnAnterior"
  loc_BB7D3F: EqStr
  loc_BB7D41: BranchF loc_BB7D55
  loc_BB7D44: FLdPr Me
  loc_BB7D47: MemLdRfVar from_stack_1.global_56
  loc_BB7D4A: NewIfNullPr clsliquidacion
  loc_BB7D4D: Call clsliquidacion.MovePrevious()
  loc_BB7D52: Branch loc_BB7E2D
  loc_BB7D55: ILdRf var_94
  loc_BB7D58: LitStr "btnSiguiente"
  loc_BB7D5B: EqStr
  loc_BB7D5D: BranchF loc_BB7D71
  loc_BB7D60: FLdPr Me
  loc_BB7D63: MemLdRfVar from_stack_1.global_56
  loc_BB7D66: NewIfNullPr clsliquidacion
  loc_BB7D69: Call clsliquidacion.MoveNext()
  loc_BB7D6E: Branch loc_BB7E2D
  loc_BB7D71: ILdRf var_94
  loc_BB7D74: LitStr "btnUltimo"
  loc_BB7D77: EqStr
  loc_BB7D79: BranchF loc_BB7D8D
  loc_BB7D7C: FLdPr Me
  loc_BB7D7F: MemLdRfVar from_stack_1.global_56
  loc_BB7D82: NewIfNullPr clsliquidacion
  loc_BB7D85: Call clsliquidacion.MoveLast()
  loc_BB7D8A: Branch loc_BB7E2D
  loc_BB7D8D: ILdRf var_94
  loc_BB7D90: LitStr "btnFiltrar"
  loc_BB7D93: EqStr
  loc_BB7D95: BranchF loc_BB7D9B
  loc_BB7D98: Branch loc_BB7E2D
  loc_BB7D9B: ILdRf var_94
  loc_BB7D9E: LitStr "btnBuscar"
  loc_BB7DA1: EqStr
  loc_BB7DA3: BranchF loc_BB7DA9
  loc_BB7DA6: Branch loc_BB7E2D
  loc_BB7DA9: ILdRf var_94
  loc_BB7DAC: LitStr "btnImprimir"
  loc_BB7DAF: EqStr
  loc_BB7DB1: BranchF loc_BB7DCF
  loc_BB7DB4: LitVar_Missing var_CC
  loc_BB7DB7: PopAdLdVar
  loc_BB7DB8: LitVarI4
  loc_BB7DC0: PopAdLdVar
  loc_BB7DC1: ImpAdLdRf MemVar_C3DAD4
  loc_BB7DC4: NewIfNullPr rptOrdenPago
  loc_BB7DC7: rptOrdenPago.Show from_stack_1, from_stack_2
  loc_BB7DCC: Branch loc_BB7E2D
  loc_BB7DCF: ILdRf var_94
  loc_BB7DD2: LitStr "btnAyuda"
  loc_BB7DD5: EqStr
  loc_BB7DD7: BranchF loc_BB7E0D
  loc_BB7DDA: LitI4 0
  loc_BB7DDF: FLdRfVar var_F4
  loc_BB7DE2: FLdRfVar var_90
  loc_BB7DE5: FLdPr Me
  loc_BB7DE8:  = Me.Name
  loc_BB7DED: ILdRf var_90
  loc_BB7DF0: FLdRfVar var_234
  loc_BB7DF3: NewIfNullPr clsbase
  loc_BB7DF6: from_stack_2v = clsbase.AyudaPantalla(from_stack_1v)
  loc_BB7DFB: ILdRf var_F4
  loc_BB7DFE: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BB7E03: FFreeStr var_90 = ""
  loc_BB7E0A: Branch loc_BB7E2D
  loc_BB7E0D: ILdRf var_94
  loc_BB7E10: LitStr "btnSalir"
  loc_BB7E13: EqStr
  loc_BB7E15: BranchF loc_BB7E2D
  loc_BB7E18: ILdRf Me
  loc_BB7E1B: FStAdNoPop
  loc_BB7E1F: ImpAdLdRf MemVar_C44F9C
  loc_BB7E22: NewIfNullPr Me
  loc_BB7E25: Me.Global.Unload from_stack_1
  loc_BB7E2A: FFree1Ad var_98
  loc_BB7E2D: ExitProcHresult
End Sub

Private Function Proc_296_17_9C8968() '9C8968
  'Data Table: 45A708
  loc_9C8880: FLdPr Me
  loc_9C8883: VCallAd Control_ID_LiquidaNetoFlex
  loc_9C8886: FStAdFunc var_88
  loc_9C8889: FLdPr var_88
  loc_9C888C: LateIdCall
  loc_9C8894: LitVarI4
  loc_9C889C: PopAdLdVar
  loc_9C889D: FLdPr var_88
  loc_9C88A0: LateIdSt
  loc_9C88A5: LitVarI4
  loc_9C88AD: PopAdLdVar
  loc_9C88AE: LitVarI4
  loc_9C88B6: PopAdLdVar
  loc_9C88B7: LitVarStr var_D8, "Cuit-Cuil"
  loc_9C88BC: PopAdLdVar
  loc_9C88BD: FLdPr var_88
  loc_9C88C0: LateIdCallSt
  loc_9C88C8: LitVarI4
  loc_9C88D0: PopAdLdVar
  loc_9C88D1: LitVarI4
  loc_9C88D9: PopAdLdVar
  loc_9C88DA: LitVarStr var_D8, "Proveedor"
  loc_9C88DF: PopAdLdVar
  loc_9C88E0: FLdPr var_88
  loc_9C88E3: LateIdCallSt
  loc_9C88EB: LitVarI4
  loc_9C88F3: PopAdLdVar
  loc_9C88F4: LitVarI4
  loc_9C88FC: PopAdLdVar
  loc_9C88FD: LitVarStr var_D8, "Importe"
  loc_9C8902: PopAdLdVar
  loc_9C8903: FLdPr var_88
  loc_9C8906: LateIdCallSt
  loc_9C890E: LitVarI4
  loc_9C8916: PopAdLdVar
  loc_9C8917: LitVarI4
  loc_9C891F: PopAdLdVar
  loc_9C8920: LitVarStr var_D8, "Cheque/Retencion"
  loc_9C8925: PopAdLdVar
  loc_9C8926: FLdPr var_88
  loc_9C8929: LateIdCallSt
  loc_9C8931: LitVarI4
  loc_9C8939: PopAdLdVar
  loc_9C893A: LitVarI4
  loc_9C8942: PopAdLdVar
  loc_9C8943: LitVarStr var_D8, "Detalle"
  loc_9C8948: PopAdLdVar
  loc_9C8949: FLdPr var_88
  loc_9C894C: LateIdCallSt
  loc_9C8954: FLdPr var_88
  loc_9C8957: LateIdCall
  loc_9C895F: LitNothing
  loc_9C8961: FStAd var_88 
  loc_9C8965: ExitProcHresult
End Function
