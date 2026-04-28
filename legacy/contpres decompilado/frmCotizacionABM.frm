VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmCotizacionABM
  Caption = "Cotizacion"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmCotizacionABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 16110
  ClientHeight = 10425
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
      OleObjectBlob = "frmCotizacionABM.frx":08CA
    End
  End
  Begin VB.TextBox TotaCotiTxt
    Left = 12960
    Top = 9120
    Width = 2295
    Height = 435
    TabIndex = 18
    Alignment = 1 'Right Justify
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 13,5
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.CommandButton AgregaItemCmd
    Caption = "Agrega Item de la nota de Pedido"
    Left = 240
    Top = 9240
    Width = 2895
    Height = 375
    TabIndex = 19
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
  Begin VB.Frame Frame1
    Caption = " Cotización "
    Left = 120
    Top = 3480
    Width = 15855
    Height = 1935
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
    Begin VB.TextBox CucuPersTxt
      Left = 2160
      Top = 360
      Width = 1815
      Height = 360
      TabIndex = 6
      MaxLength = 70
      DataField = "CucuPers"
    End
    Begin VB.TextBox MaofCotiTxt
      Left = 10920
      Top = 840
      Width = 2175
      Height = 345
      TabIndex = 13
      MaxLength = 20
      DataField = "MaofCoti"
    End
    Begin VB.TextBox PlenCotiTxt
      Left = 5880
      Top = 840
      Width = 2175
      Height = 345
      TabIndex = 11
      MaxLength = 20
      DataField = "PlenCoti"
    End
    Begin VB.TextBox ObseCotiTxt
      Left = 2160
      Top = 1320
      Width = 12735
      Height = 345
      TabIndex = 15
      MaxLength = 200
      DataField = "ObseCoti"
    End
    Begin MSMask.MaskEdBox FechCotiMsk
      Left = 2160
      Top = 840
      Width = 1335
      Height = 345
      TabIndex = 9
      OleObjectBlob = "frmCotizacionABM.frx":0952
      DataField = "FechCoti"
    End
    Begin VB.Label Label4
      Caption = "Mantenim. de la Oferta:"
      Left = 8400
      Top = 840
      Width = 2475
      Height = 300
      TabIndex = 12
      AutoSize = -1  'True
    End
    Begin VB.Label Label1
      Caption = "Plazo de Entrega:"
      Left = 3915
      Top = 840
      Width = 1890
      Height = 300
      TabIndex = 10
      AutoSize = -1  'True
    End
    Begin VB.Label DetaProvLbl
      Left = 4080
      Top = 360
      Width = 9015
      Height = 345
      TabIndex = 7
      BorderStyle = 1 'Fixed Single
      DataField = "DetaProv"
    End
    Begin VB.Label Label6
      Caption = "Fecha:"
      Left = 1320
      Top = 840
      Width = 735
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
    Begin VB.Label Label3
      Caption = "Observaciones:"
      Left = 450
      Top = 1320
      Width = 1635
      Height = 300
      TabIndex = 14
      AutoSize = -1  'True
    End
    Begin VB.Label Label2
      Caption = "Proveedor:"
      Left = 945
      Top = 360
      Width = 1140
      Height = 300
      TabIndex = 5
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
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 15855
    Height = 1695
    TabIndex = 3
    OleObjectBlob = "frmCotizacionABM.frx":0A02
  End
  Begin MSFlexGridLib.MSFlexGrid ItemNotaFlex
    Left = 120
    Top = 5520
    Width = 15855
    Height = 3495
    TabIndex = 16
    OleObjectBlob = "frmCotizacionABM.frx":1010
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmCotizacionABM.frx":10FC
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 16110
    Height = 660
    TabIndex = 20
    OleObjectBlob = "frmCotizacionABM.frx":8C7A
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 21
      TabStop = 0   'False
      Picture = "frmCotizacionABM.frx":91D6
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
  Begin VB.Label lblCaracteristicas
    Left = 240
    Top = 9840
    Width = 14895
    Height = 1575
    TabIndex = 22
  End
  Begin VB.Label Label5
    Caption = "Total de la Cotización:"
    Left = 10560
    Top = 9240
    Width = 2325
    Height = 300
    TabIndex = 17
    AutoSize = -1  'True
  End
End

Attribute VB_Name = "frmCotizacionABM"


Private Sub Form_Load() 'A9EF34
  'Data Table: 4A77A4
  loc_A9EA88: LitI2_Byte 0
  loc_A9EA8A: CR8I2
  loc_A9EA8B: PopFPR4
  loc_A9EA8C: FLdPr Me
  loc_A9EA8F: Me.Left = from_stack_1s
  loc_A9EA94: LitI2_Byte 0
  loc_A9EA96: CR8I2
  loc_A9EA97: PopFPR4
  loc_A9EA98: FLdPr Me
  loc_A9EA9B: Me.Top = from_stack_1s
  loc_A9EAA0: LitStr vbNullString
  loc_A9EAA3: FLdPr Me
  loc_A9EAA6: MemStStrCopy
  loc_A9EAAA: LitStr "SELECT IFNULL(c.IdCoti,0) IdCoti, np.PeriInfo, np.CodiNope, np.IdRubro, np.IdUbfi, np.DienNope, np.CoinNope, np.CodiOrga, np.DetaNope, np.CodiTico, np.ExpeImpu, np.FechNope, np.FecoNope, np.PubliNope, np.FeliNope, np.HoliNope, np.FeleNope, np.HoleNope, np.FeanNope, np.FeocNope, np.PaesNope"
  loc_A9EAAD: LitStr ", IFNULL(c.AltaUsua,'') AltaUsua, IFNULL(c.FeanCoti,'') FeanCoti"
  loc_A9EAB0: ConcatStr
  loc_A9EAB1: FStStrNoPop var_88
  loc_A9EAB4: LitStr ", DetaTico, DetaOrga, IFNULL(c.CucuPers,0) CucuPers, IFNULL(DetaProv,'SIN COTIZACION') DetaProv, FechCoti, PlenCoti, MaofCoti, ObseCoti"
  loc_A9EAB7: ConcatStr
  loc_A9EAB8: FStStrNoPop var_8C
  loc_A9EABB: LitStr ", oc.CodiOrco"
  loc_A9EABE: ConcatStr
  loc_A9EABF: FStStrNoPop var_90
  loc_A9EAC2: LitStr " FROM notapedido np"
  loc_A9EAC5: ConcatStr
  loc_A9EAC6: FStStrNoPop var_94
  loc_A9EAC9: LitStr " INNER JOIN tipocompra tc ON tc.CodiTico = np.CodiTico"
  loc_A9EACC: ConcatStr
  loc_A9EACD: FStStrNoPop var_98
  loc_A9EAD0: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = np.PeriInfo AND o.CodiOrga = np.CodiOrga"
  loc_A9EAD3: ConcatStr
  loc_A9EAD4: FStStrNoPop var_9C
  loc_A9EAD7: LitStr " LEFT JOIN cotizacion c ON c.PeriInfo = np.PeriInfo AND c.CodiNope = np.CodiNope"
  loc_A9EADA: ConcatStr
  loc_A9EADB: FStStrNoPop var_A0
  loc_A9EADE: LitStr " LEFT JOIN ordencompra oc ON oc.PeriInfo = c.PeriInfo AND oc.CodiNope = c.CodiNope AND oc.IdCoti = c.IdCoti AND oc.FeanOrco IS NULL"
  loc_A9EAE1: ConcatStr
  loc_A9EAE2: FStStrNoPop var_A4
  loc_A9EAE5: LitStr " LEFT JOIN proveedor p ON p.CucuPers = c.CucuPers"
  loc_A9EAE8: ConcatStr
  loc_A9EAE9: FStStrNoPop var_A8
  loc_A9EAEC: LitStr " WHERE np.PeriInfo = "
  loc_A9EAEF: ConcatStr
  loc_A9EAF0: FStStrNoPop var_AC
  loc_A9EAF3: ImpAdLdI2 MemVar_C3D064
  loc_A9EAF6: CStrUI1
  loc_A9EAF8: FStStrNoPop var_B0
  loc_A9EAFB: ConcatStr
  loc_A9EAFC: FStStrNoPop var_B4
  loc_A9EAFF: LitStr "  AND np.FeanNope IS NULL "
  loc_A9EB02: ConcatStr
  loc_A9EB03: FStStrNoPop var_B8
  loc_A9EB06: LitStr " ORDER BY np.PeriInfo, np.CodiNope, c.IdCoti;"
  loc_A9EB09: ConcatStr
  loc_A9EB0A: FStStrNoPop var_BC
  loc_A9EB0D: FLdPr Me
  loc_A9EB10: MemLdRfVar from_stack_1.global_52
  loc_A9EB13: NewIfNullPr clscotizacion
  loc_A9EB16: Call clscotizacion.RedefineRS(from_stack_1v)
  loc_A9EB1B: FFreeStr var_88 = "": var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = ""
  loc_A9EB3A: FLdPr Me
  loc_A9EB3D: VCallAd Control_ID_ItemNotaFlex
  loc_A9EB40: FStAdFunc var_C0
  loc_A9EB43: LitVarI4
  loc_A9EB4B: PopAdLdVar
  loc_A9EB4C: LitVarI4
  loc_A9EB54: PopAdLdVar
  loc_A9EB55: FLdPr var_C0
  loc_A9EB58: LateIdCallSt
  loc_A9EB60: LitVarI4
  loc_A9EB68: PopAdLdVar
  loc_A9EB69: LitVarI4
  loc_A9EB71: PopAdLdVar
  loc_A9EB72: FLdPr var_C0
  loc_A9EB75: LateIdCallSt
  loc_A9EB7D: LitVarI4
  loc_A9EB85: PopAdLdVar
  loc_A9EB86: LitVarI4
  loc_A9EB8E: PopAdLdVar
  loc_A9EB8F: FLdPr var_C0
  loc_A9EB92: LateIdCallSt
  loc_A9EB9A: LitVarI4
  loc_A9EBA2: PopAdLdVar
  loc_A9EBA3: LitVarI4
  loc_A9EBAB: PopAdLdVar
  loc_A9EBAC: FLdPr var_C0
  loc_A9EBAF: LateIdCallSt
  loc_A9EBB7: LitVarI4
  loc_A9EBBF: PopAdLdVar
  loc_A9EBC0: LitVarI4
  loc_A9EBC8: PopAdLdVar
  loc_A9EBC9: FLdPr var_C0
  loc_A9EBCC: LateIdCallSt
  loc_A9EBD4: LitVarI4
  loc_A9EBDC: PopAdLdVar
  loc_A9EBDD: LitVarI4
  loc_A9EBE5: PopAdLdVar
  loc_A9EBE6: FLdPr var_C0
  loc_A9EBE9: LateIdCallSt
  loc_A9EBF1: LitVarI4
  loc_A9EBF9: PopAdLdVar
  loc_A9EBFA: LitVarI4
  loc_A9EC02: PopAdLdVar
  loc_A9EC03: FLdPr var_C0
  loc_A9EC06: LateIdCallSt
  loc_A9EC0E: LitVarI4
  loc_A9EC16: PopAdLdVar
  loc_A9EC17: LitVarI4
  loc_A9EC1F: PopAdLdVar
  loc_A9EC20: FLdPr var_C0
  loc_A9EC23: LateIdCallSt
  loc_A9EC2B: LitVarI4
  loc_A9EC33: PopAdLdVar
  loc_A9EC34: LitVarI4
  loc_A9EC3C: PopAdLdVar
  loc_A9EC3D: FLdPr var_C0
  loc_A9EC40: LateIdCallSt
  loc_A9EC48: LitVarI4
  loc_A9EC50: PopAdLdVar
  loc_A9EC51: LitVarI4
  loc_A9EC59: PopAdLdVar
  loc_A9EC5A: FLdPr var_C0
  loc_A9EC5D: LateIdCallSt
  loc_A9EC65: LitVarI4
  loc_A9EC6D: PopAdLdVar
  loc_A9EC6E: LitVarI4
  loc_A9EC76: PopAdLdVar
  loc_A9EC77: FLdPr var_C0
  loc_A9EC7A: LateIdCallSt
  loc_A9EC82: LitVarI4
  loc_A9EC8A: PopAdLdVar
  loc_A9EC8B: LitVarI4
  loc_A9EC93: PopAdLdVar
  loc_A9EC94: LitVarStr var_110, "Item"
  loc_A9EC99: PopAdLdVar
  loc_A9EC9A: FLdPr var_C0
  loc_A9EC9D: LateIdCallSt
  loc_A9ECA5: LitVarI4
  loc_A9ECAD: PopAdLdVar
  loc_A9ECAE: LitVarI4
  loc_A9ECB6: PopAdLdVar
  loc_A9ECB7: LitVarStr var_110, "Alte"
  loc_A9ECBC: PopAdLdVar
  loc_A9ECBD: FLdPr var_C0
  loc_A9ECC0: LateIdCallSt
  loc_A9ECC8: LitVarI4
  loc_A9ECD0: PopAdLdVar
  loc_A9ECD1: LitVarI4
  loc_A9ECD9: PopAdLdVar
  loc_A9ECDA: LitVarStr var_110, "Insumo"
  loc_A9ECDF: PopAdLdVar
  loc_A9ECE0: FLdPr var_C0
  loc_A9ECE3: LateIdCallSt
  loc_A9ECEB: LitVarI4
  loc_A9ECF3: PopAdLdVar
  loc_A9ECF4: LitVarI4
  loc_A9ECFC: PopAdLdVar
  loc_A9ECFD: LitVarStr var_110, "Detalle del Insumo"
  loc_A9ED02: PopAdLdVar
  loc_A9ED03: FLdPr var_C0
  loc_A9ED06: LateIdCallSt
  loc_A9ED0E: LitVarI4
  loc_A9ED16: PopAdLdVar
  loc_A9ED17: LitVarI4
  loc_A9ED1F: PopAdLdVar
  loc_A9ED20: LitVarStr var_110, "Detalle AMPLIADO del Insumo"
  loc_A9ED25: PopAdLdVar
  loc_A9ED26: FLdPr var_C0
  loc_A9ED29: LateIdCallSt
  loc_A9ED31: LitVarI4
  loc_A9ED39: PopAdLdVar
  loc_A9ED3A: LitVarI4
  loc_A9ED42: PopAdLdVar
  loc_A9ED43: LitVarStr var_110, "Cantidad"
  loc_A9ED48: PopAdLdVar
  loc_A9ED49: FLdPr var_C0
  loc_A9ED4C: LateIdCallSt
  loc_A9ED54: LitVarI4
  loc_A9ED5C: PopAdLdVar
  loc_A9ED5D: LitVarI4
  loc_A9ED65: PopAdLdVar
  loc_A9ED66: LitVarStr var_110, "Pr. Unitario"
  loc_A9ED6B: PopAdLdVar
  loc_A9ED6C: FLdPr var_C0
  loc_A9ED6F: LateIdCallSt
  loc_A9ED77: LitVarI4
  loc_A9ED7F: PopAdLdVar
  loc_A9ED80: LitVarI4
  loc_A9ED88: PopAdLdVar
  loc_A9ED89: LitVarStr var_110, "Total"
  loc_A9ED8E: PopAdLdVar
  loc_A9ED8F: FLdPr var_C0
  loc_A9ED92: LateIdCallSt
  loc_A9ED9A: LitVarI4
  loc_A9EDA2: PopAdLdVar
  loc_A9EDA3: LitVarI4
  loc_A9EDAB: PopAdLdVar
  loc_A9EDAC: LitVarStr var_110, "Sald"
  loc_A9EDB1: PopAdLdVar
  loc_A9EDB2: FLdPr var_C0
  loc_A9EDB5: LateIdCallSt
  loc_A9EDBD: LitVarI4
  loc_A9EDC5: PopAdLdVar
  loc_A9EDC6: LitVarI4
  loc_A9EDCE: PopAdLdVar
  loc_A9EDCF: LitVarStr var_110, "Cara"
  loc_A9EDD4: PopAdLdVar
  loc_A9EDD5: FLdPr var_C0
  loc_A9EDD8: LateIdCallSt
  loc_A9EDE0: LitVarI4
  loc_A9EDE8: PopAdLdVar
  loc_A9EDE9: LitVarI4
  loc_A9EDF1: PopAdLdVar
  loc_A9EDF2: LitVarStr var_110, "Marca"
  loc_A9EDF7: PopAdLdVar
  loc_A9EDF8: FLdPr var_C0
  loc_A9EDFB: LateIdCallSt
  loc_A9EE03: LitNothing
  loc_A9EE05: FStAd var_C0 
  loc_A9EE09: LitVarI2 var_D0, 0
  loc_A9EE0E: PopAdLdVar
  loc_A9EE0F: LitStr "Nota de Pedido (Número)"
  loc_A9EE12: FLdPr Me
  loc_A9EE15: VCallAd Control_ID_FiltroCbo
  loc_A9EE18: FStAdFunc var_124
  loc_A9EE1B: FLdPr var_124
  loc_A9EE1E: Me.AddItem from_stack_1, from_stack_2
  loc_A9EE23: FFree1Ad var_124
  loc_A9EE26: LitVarI2 var_D0, 1
  loc_A9EE2B: PopAdLdVar
  loc_A9EE2C: LitStr "Nota de Pedido (Detalle)"
  loc_A9EE2F: FLdPr Me
  loc_A9EE32: VCallAd Control_ID_FiltroCbo
  loc_A9EE35: FStAdFunc var_124
  loc_A9EE38: FLdPr var_124
  loc_A9EE3B: Me.AddItem from_stack_1, from_stack_2
  loc_A9EE40: FFree1Ad var_124
  loc_A9EE43: LitVarI2 var_D0, 2
  loc_A9EE48: PopAdLdVar
  loc_A9EE49: LitStr "Organigrama Solicitante (Código)"
  loc_A9EE4C: FLdPr Me
  loc_A9EE4F: VCallAd Control_ID_FiltroCbo
  loc_A9EE52: FStAdFunc var_124
  loc_A9EE55: FLdPr var_124
  loc_A9EE58: Me.AddItem from_stack_1, from_stack_2
  loc_A9EE5D: FFree1Ad var_124
  loc_A9EE60: LitVarI2 var_D0, 3
  loc_A9EE65: PopAdLdVar
  loc_A9EE66: LitStr "Organigrama Solicitante (Detalle)"
  loc_A9EE69: FLdPr Me
  loc_A9EE6C: VCallAd Control_ID_FiltroCbo
  loc_A9EE6F: FStAdFunc var_124
  loc_A9EE72: FLdPr var_124
  loc_A9EE75: Me.AddItem from_stack_1, from_stack_2
  loc_A9EE7A: FFree1Ad var_124
  loc_A9EE7D: LitVarI2 var_D0, 4
  loc_A9EE82: PopAdLdVar
  loc_A9EE83: LitStr "Expediente"
  loc_A9EE86: FLdPr Me
  loc_A9EE89: VCallAd Control_ID_FiltroCbo
  loc_A9EE8C: FStAdFunc var_124
  loc_A9EE8F: FLdPr var_124
  loc_A9EE92: Me.AddItem from_stack_1, from_stack_2
  loc_A9EE97: FFree1Ad var_124
  loc_A9EE9A: LitVarI2 var_D0, 5
  loc_A9EE9F: PopAdLdVar
  loc_A9EEA0: LitStr "Cotización Nro."
  loc_A9EEA3: FLdPr Me
  loc_A9EEA6: VCallAd Control_ID_FiltroCbo
  loc_A9EEA9: FStAdFunc var_124
  loc_A9EEAC: FLdPr var_124
  loc_A9EEAF: Me.AddItem from_stack_1, from_stack_2
  loc_A9EEB4: FFree1Ad var_124
  loc_A9EEB7: LitI2_Byte 0
  loc_A9EEB9: FLdPr Me
  loc_A9EEBC: VCallAd Control_ID_FiltroCbo
  loc_A9EEBF: FStAdFunc var_124
  loc_A9EEC2: FLdPr var_124
  loc_A9EEC5: Me.ListIndex = from_stack_1
  loc_A9EECA: FFree1Ad var_124
  loc_A9EECD: Call cmdCancelar_Click()
  loc_A9EED2: LitI4 0
  loc_A9EED7: LitI4 1
  loc_A9EEDC: FLdRfVar var_128
  loc_A9EEDF: Redim
  loc_A9EEE9: FLdPr Me
  loc_A9EEEC: MemLdRfVar from_stack_1.global_52
  loc_A9EEEF: NewIfNullAd
  loc_A9EEF2: FStAd var_124 
  loc_A9EEF6: FLdRfVar var_124
  loc_A9EEF9: CVarRef
  loc_A9EEFE: ParmAry1St
  loc_A9EF04: FLdPr Me
  loc_A9EF07: VCallAd Control_ID_dgdABMS
  loc_A9EF0A: CVarAd
  loc_A9EF0E: ParmAry1St
  loc_A9EF14: FLdRfVar var_128
  loc_A9EF17: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A9EF1C: ILdRf var_124
  loc_A9EF1F: CastAd
  loc_A9EF22: FLdPr Me
  loc_A9EF25: MemStAdFunc
  loc_A9EF29: FLdRfVar var_128
  loc_A9EF2C: Erase
  loc_A9EF2D: FFree1Ad var_124
  loc_A9EF30: ExitProcHresult
End Sub

Private Sub Form_Activate() '9A26D4
  'Data Table: 4A77A4
  loc_9A2668: FLdRfVar var_C2
  loc_9A266B: FLdRfVar var_C0
  loc_9A266E: LitVarI2 var_B8, 1
  loc_9A2673: FLdPr Me
  loc_9A2676: VCallAd Control_ID_tlbABMS
  loc_9A2679: FStAdFunc var_88
  loc_9A267C: FLdPr var_88
  loc_9A267F: LateIdLdVar var_98 DispID_3 0
  loc_9A2686: CastAdVar Me
  loc_9A268A: FStAdFunc var_BC
  loc_9A268D: FLdPr var_BC
  loc_9A2690:  = Me.Buttons.ControlDefault
  loc_9A2695: FLdPr var_C0
  loc_9A2698:  = Me.Enabled
  loc_9A269D: FLdI2 var_C2
  loc_9A26A0: FFreeAd var_88 = "": var_BC = ""
  loc_9A26A9: FFreeVar var_98 = ""
  loc_9A26B0: BranchF loc_9A26D3
  loc_9A26B3: LitI4 0
  loc_9A26B8: PopTmpLdAdStr var_C8
  loc_9A26BB: LitI4 0
  loc_9A26C0: LitI4 0
  loc_9A26C5: FLdPr Me
  loc_9A26C8: MemLdRfVar from_stack_1.global_52
  loc_9A26CB: NewIfNullPr clscotizacion
  loc_9A26CE: Call clscotizacion.Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_9A26D3: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9496F4
  'Data Table: 4A77A4
  loc_9496E0: ILdI2 KeyAscii
  loc_9496E3: CI4UI1
  loc_9496E4: LitI4 &HD
  loc_9496E9: EqI4
  loc_9496EA: BranchF loc_9496F2
  loc_9496ED: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_9496F2: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '959384
  'Data Table: 4A77A4
  loc_95936C: ILdI2 KeyCode
  loc_95936F: ILdRf Me
  loc_959372: CastAd
  loc_959375: FStAdFunc var_88
  loc_959378: FLdRfVar var_88
  loc_95937B: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_959380: FFree1Ad var_88
  loc_959383: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '950B20
  'Data Table: 4A77A4
  loc_950B0C: FLdPr Me
  loc_950B0F: VCallAd Control_ID_FiltroMsk
  loc_950B12: CVarAd
  loc_950B16: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950B1B: FFree1Var var_94 = ""
  loc_950B1E: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'AA2DEC
  'Data Table: 4A77A4
  loc_AA2900: ILdRf Me
  loc_AA2903: CastAd
  loc_AA2906: FStAdFunc var_88
  loc_AA2909: FLdRfVar var_88
  loc_AA290C: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_AA2911: FFree1Ad var_88
  loc_AA2914: FLdPr Me
  loc_AA2917: VCallAd Control_ID_FiltroMsk
  loc_AA291A: FStAdFunc var_88
  loc_AA291D: FLdPr var_88
  loc_AA2920: LateIdLdVar var_98 DispID_22 0
  loc_AA2927: CStrVarTmp
  loc_AA2928: FStStrNoPop var_9C
  loc_AA292B: ImpAdCallI2 Trim$()
  loc_AA2930: FStStrNoPop var_A0
  loc_AA2933: LitStr vbNullString
  loc_AA2936: NeStr
  loc_AA2938: FFreeStr var_9C = ""
  loc_AA293F: FFree1Ad var_88
  loc_AA2942: FFree1Var var_98 = ""
  loc_AA2945: BranchF loc_AA2CC6
  loc_AA2948: FLdRfVar var_A2
  loc_AA294B: FLdPr Me
  loc_AA294E: VCallAd Control_ID_FiltroCbo
  loc_AA2951: FStAdFunc var_88
  loc_AA2954: FLdPr var_88
  loc_AA2957:  = Me.ListIndex
  loc_AA295C: FLdI2 var_A2
  loc_AA295F: LitI2_Byte 0
  loc_AA2961: EqI2
  loc_AA2962: FFree1Ad var_88
  loc_AA2965: BranchF loc_AA29D7
  loc_AA2968: LitStr "CodiNope = "
  loc_AA296B: FLdPr Me
  loc_AA296E: VCallAd Control_ID_FiltroMsk
  loc_AA2971: FStAdFunc var_88
  loc_AA2974: FLdPr var_88
  loc_AA2977: LateIdLdVar var_98 DispID_22 0
  loc_AA297E: CStrVarTmp
  loc_AA297F: FStStrNoPop var_9C
  loc_AA2982: ConcatStr
  loc_AA2983: PopTmpLdAdStr
  loc_AA2987: FLdPr Me
  loc_AA298A: MemLdRfVar from_stack_1.global_52
  loc_AA298D: NewIfNullPr clscotizacion
  loc_AA2990: Call clscotizacion.Filter(from_stack_1v)
  loc_AA2995: FFreeStr var_9C = ""
  loc_AA299C: FFree1Ad var_88
  loc_AA299F: FFree1Var var_98 = ""
  loc_AA29A2: LitStr "número de la Nota de Pedido sea igual a: "
  loc_AA29A5: FLdPr Me
  loc_AA29A8: VCallAd Control_ID_FiltroMsk
  loc_AA29AB: FStAdFunc var_88
  loc_AA29AE: FLdPr var_88
  loc_AA29B1: LateIdLdVar var_98 DispID_22 0
  loc_AA29B8: CStrVarTmp
  loc_AA29B9: FStStrNoPop var_9C
  loc_AA29BC: ConcatStr
  loc_AA29BD: FStStrNoPop var_A0
  loc_AA29C0: FLdPr Me
  loc_AA29C3: MemStStrCopy
  loc_AA29C7: FFreeStr var_9C = ""
  loc_AA29CE: FFree1Ad var_88
  loc_AA29D1: FFree1Var var_98 = ""
  loc_AA29D4: Branch loc_AA2CC3
  loc_AA29D7: FLdRfVar var_A2
  loc_AA29DA: FLdPr Me
  loc_AA29DD: VCallAd Control_ID_FiltroCbo
  loc_AA29E0: FStAdFunc var_88
  loc_AA29E3: FLdPr var_88
  loc_AA29E6:  = Me.ListIndex
  loc_AA29EB: FLdI2 var_A2
  loc_AA29EE: LitI2_Byte 1
  loc_AA29F0: EqI2
  loc_AA29F1: FFree1Ad var_88
  loc_AA29F4: BranchF loc_AA2A6F
  loc_AA29F7: LitStr "DetaNope LIKE '" & Chr(37)
  loc_AA29FA: FLdPr Me
  loc_AA29FD: VCallAd Control_ID_FiltroMsk
  loc_AA2A00: FStAdFunc var_88
  loc_AA2A03: FLdPr var_88
  loc_AA2A06: LateIdLdVar var_98 DispID_22 0
  loc_AA2A0D: CStrVarTmp
  loc_AA2A0E: FStStrNoPop var_9C
  loc_AA2A11: ConcatStr
  loc_AA2A12: FStStrNoPop var_A0
  loc_AA2A15: LitStr Chr(37) & "'"
  loc_AA2A18: ConcatStr
  loc_AA2A19: PopTmpLdAdStr
  loc_AA2A1D: FLdPr Me
  loc_AA2A20: MemLdRfVar from_stack_1.global_52
  loc_AA2A23: NewIfNullPr clscotizacion
  loc_AA2A26: Call clscotizacion.Filter(from_stack_1v)
  loc_AA2A2B: FFreeStr var_9C = "": var_A0 = ""
  loc_AA2A34: FFree1Ad var_88
  loc_AA2A37: FFree1Var var_98 = ""
  loc_AA2A3A: LitStr "detalle de la Nota de Pedido contiene: "
  loc_AA2A3D: FLdPr Me
  loc_AA2A40: VCallAd Control_ID_FiltroMsk
  loc_AA2A43: FStAdFunc var_88
  loc_AA2A46: FLdPr var_88
  loc_AA2A49: LateIdLdVar var_98 DispID_22 0
  loc_AA2A50: CStrVarTmp
  loc_AA2A51: FStStrNoPop var_9C
  loc_AA2A54: ConcatStr
  loc_AA2A55: FStStrNoPop var_A0
  loc_AA2A58: FLdPr Me
  loc_AA2A5B: MemStStrCopy
  loc_AA2A5F: FFreeStr var_9C = ""
  loc_AA2A66: FFree1Ad var_88
  loc_AA2A69: FFree1Var var_98 = ""
  loc_AA2A6C: Branch loc_AA2CC3
  loc_AA2A6F: FLdRfVar var_A2
  loc_AA2A72: FLdPr Me
  loc_AA2A75: VCallAd Control_ID_FiltroCbo
  loc_AA2A78: FStAdFunc var_88
  loc_AA2A7B: FLdPr var_88
  loc_AA2A7E:  = Me.ListIndex
  loc_AA2A83: FLdI2 var_A2
  loc_AA2A86: LitI2_Byte 2
  loc_AA2A88: EqI2
  loc_AA2A89: FFree1Ad var_88
  loc_AA2A8C: BranchF loc_AA2B07
  loc_AA2A8F: LitStr "CodiOrga LIKE '"
  loc_AA2A92: FLdPr Me
  loc_AA2A95: VCallAd Control_ID_FiltroMsk
  loc_AA2A98: FStAdFunc var_88
  loc_AA2A9B: FLdPr var_88
  loc_AA2A9E: LateIdLdVar var_98 DispID_22 0
  loc_AA2AA5: CStrVarTmp
  loc_AA2AA6: FStStrNoPop var_9C
  loc_AA2AA9: ConcatStr
  loc_AA2AAA: FStStrNoPop var_A0
  loc_AA2AAD: LitStr Chr(37) & "'"
  loc_AA2AB0: ConcatStr
  loc_AA2AB1: PopTmpLdAdStr
  loc_AA2AB5: FLdPr Me
  loc_AA2AB8: MemLdRfVar from_stack_1.global_52
  loc_AA2ABB: NewIfNullPr clscotizacion
  loc_AA2ABE: Call clscotizacion.Filter(from_stack_1v)
  loc_AA2AC3: FFreeStr var_9C = "": var_A0 = ""
  loc_AA2ACC: FFree1Ad var_88
  loc_AA2ACF: FFree1Var var_98 = ""
  loc_AA2AD2: LitStr "Organigrama Solicitante comience con: "
  loc_AA2AD5: FLdPr Me
  loc_AA2AD8: VCallAd Control_ID_FiltroMsk
  loc_AA2ADB: FStAdFunc var_88
  loc_AA2ADE: FLdPr var_88
  loc_AA2AE1: LateIdLdVar var_98 DispID_22 0
  loc_AA2AE8: CStrVarTmp
  loc_AA2AE9: FStStrNoPop var_9C
  loc_AA2AEC: ConcatStr
  loc_AA2AED: FStStrNoPop var_A0
  loc_AA2AF0: FLdPr Me
  loc_AA2AF3: MemStStrCopy
  loc_AA2AF7: FFreeStr var_9C = ""
  loc_AA2AFE: FFree1Ad var_88
  loc_AA2B01: FFree1Var var_98 = ""
  loc_AA2B04: Branch loc_AA2CC3
  loc_AA2B07: FLdRfVar var_A2
  loc_AA2B0A: FLdPr Me
  loc_AA2B0D: VCallAd Control_ID_FiltroCbo
  loc_AA2B10: FStAdFunc var_88
  loc_AA2B13: FLdPr var_88
  loc_AA2B16:  = Me.ListIndex
  loc_AA2B1B: FLdI2 var_A2
  loc_AA2B1E: LitI2_Byte 3
  loc_AA2B20: EqI2
  loc_AA2B21: FFree1Ad var_88
  loc_AA2B24: BranchF loc_AA2B9F
  loc_AA2B27: LitStr "DetaOrga LIKE '" & Chr(37)
  loc_AA2B2A: FLdPr Me
  loc_AA2B2D: VCallAd Control_ID_FiltroMsk
  loc_AA2B30: FStAdFunc var_88
  loc_AA2B33: FLdPr var_88
  loc_AA2B36: LateIdLdVar var_98 DispID_22 0
  loc_AA2B3D: CStrVarTmp
  loc_AA2B3E: FStStrNoPop var_9C
  loc_AA2B41: ConcatStr
  loc_AA2B42: FStStrNoPop var_A0
  loc_AA2B45: LitStr Chr(37) & "'"
  loc_AA2B48: ConcatStr
  loc_AA2B49: PopTmpLdAdStr
  loc_AA2B4D: FLdPr Me
  loc_AA2B50: MemLdRfVar from_stack_1.global_52
  loc_AA2B53: NewIfNullPr clscotizacion
  loc_AA2B56: Call clscotizacion.Filter(from_stack_1v)
  loc_AA2B5B: FFreeStr var_9C = "": var_A0 = ""
  loc_AA2B64: FFree1Ad var_88
  loc_AA2B67: FFree1Var var_98 = ""
  loc_AA2B6A: LitStr "detalle del Organigrama Solicitante contiene: "
  loc_AA2B6D: FLdPr Me
  loc_AA2B70: VCallAd Control_ID_FiltroMsk
  loc_AA2B73: FStAdFunc var_88
  loc_AA2B76: FLdPr var_88
  loc_AA2B79: LateIdLdVar var_98 DispID_22 0
  loc_AA2B80: CStrVarTmp
  loc_AA2B81: FStStrNoPop var_9C
  loc_AA2B84: ConcatStr
  loc_AA2B85: FStStrNoPop var_A0
  loc_AA2B88: FLdPr Me
  loc_AA2B8B: MemStStrCopy
  loc_AA2B8F: FFreeStr var_9C = ""
  loc_AA2B96: FFree1Ad var_88
  loc_AA2B99: FFree1Var var_98 = ""
  loc_AA2B9C: Branch loc_AA2CC3
  loc_AA2B9F: FLdRfVar var_A2
  loc_AA2BA2: FLdPr Me
  loc_AA2BA5: VCallAd Control_ID_FiltroCbo
  loc_AA2BA8: FStAdFunc var_88
  loc_AA2BAB: FLdPr var_88
  loc_AA2BAE:  = Me.ListIndex
  loc_AA2BB3: FLdI2 var_A2
  loc_AA2BB6: LitI2_Byte 4
  loc_AA2BB8: EqI2
  loc_AA2BB9: FFree1Ad var_88
  loc_AA2BBC: BranchF loc_AA2C37
  loc_AA2BBF: LitStr "ExpeImpu LIKE '"
  loc_AA2BC2: FLdPr Me
  loc_AA2BC5: VCallAd Control_ID_FiltroMsk
  loc_AA2BC8: FStAdFunc var_88
  loc_AA2BCB: FLdPr var_88
  loc_AA2BCE: LateIdLdVar var_98 DispID_22 0
  loc_AA2BD5: CStrVarTmp
  loc_AA2BD6: FStStrNoPop var_9C
  loc_AA2BD9: ConcatStr
  loc_AA2BDA: FStStrNoPop var_A0
  loc_AA2BDD: LitStr Chr(37) & "'"
  loc_AA2BE0: ConcatStr
  loc_AA2BE1: PopTmpLdAdStr
  loc_AA2BE5: FLdPr Me
  loc_AA2BE8: MemLdRfVar from_stack_1.global_52
  loc_AA2BEB: NewIfNullPr clscotizacion
  loc_AA2BEE: Call clscotizacion.Filter(from_stack_1v)
  loc_AA2BF3: FFreeStr var_9C = "": var_A0 = ""
  loc_AA2BFC: FFree1Ad var_88
  loc_AA2BFF: FFree1Var var_98 = ""
  loc_AA2C02: LitStr "Expediente comience con: "
  loc_AA2C05: FLdPr Me
  loc_AA2C08: VCallAd Control_ID_FiltroMsk
  loc_AA2C0B: FStAdFunc var_88
  loc_AA2C0E: FLdPr var_88
  loc_AA2C11: LateIdLdVar var_98 DispID_22 0
  loc_AA2C18: CStrVarTmp
  loc_AA2C19: FStStrNoPop var_9C
  loc_AA2C1C: ConcatStr
  loc_AA2C1D: FStStrNoPop var_A0
  loc_AA2C20: FLdPr Me
  loc_AA2C23: MemStStrCopy
  loc_AA2C27: FFreeStr var_9C = ""
  loc_AA2C2E: FFree1Ad var_88
  loc_AA2C31: FFree1Var var_98 = ""
  loc_AA2C34: Branch loc_AA2CC3
  loc_AA2C37: FLdRfVar var_A2
  loc_AA2C3A: FLdPr Me
  loc_AA2C3D: VCallAd Control_ID_FiltroCbo
  loc_AA2C40: FStAdFunc var_88
  loc_AA2C43: FLdPr var_88
  loc_AA2C46:  = Me.ListIndex
  loc_AA2C4B: FLdI2 var_A2
  loc_AA2C4E: LitI2_Byte 5
  loc_AA2C50: EqI2
  loc_AA2C51: FFree1Ad var_88
  loc_AA2C54: BranchF loc_AA2CC3
  loc_AA2C57: LitStr "IdCoti = "
  loc_AA2C5A: FLdPr Me
  loc_AA2C5D: VCallAd Control_ID_FiltroMsk
  loc_AA2C60: FStAdFunc var_88
  loc_AA2C63: FLdPr var_88
  loc_AA2C66: LateIdLdVar var_98 DispID_22 0
  loc_AA2C6D: CStrVarTmp
  loc_AA2C6E: FStStrNoPop var_9C
  loc_AA2C71: ConcatStr
  loc_AA2C72: PopTmpLdAdStr
  loc_AA2C76: FLdPr Me
  loc_AA2C79: MemLdRfVar from_stack_1.global_52
  loc_AA2C7C: NewIfNullPr clscotizacion
  loc_AA2C7F: Call clscotizacion.Filter(from_stack_1v)
  loc_AA2C84: FFreeStr var_9C = ""
  loc_AA2C8B: FFree1Ad var_88
  loc_AA2C8E: FFree1Var var_98 = ""
  loc_AA2C91: LitStr "Cotización Nro. igual a: "
  loc_AA2C94: FLdPr Me
  loc_AA2C97: VCallAd Control_ID_FiltroMsk
  loc_AA2C9A: FStAdFunc var_88
  loc_AA2C9D: FLdPr var_88
  loc_AA2CA0: LateIdLdVar var_98 DispID_22 0
  loc_AA2CA7: CStrVarTmp
  loc_AA2CA8: FStStrNoPop var_9C
  loc_AA2CAB: ConcatStr
  loc_AA2CAC: FStStrNoPop var_A0
  loc_AA2CAF: FLdPr Me
  loc_AA2CB2: MemStStrCopy
  loc_AA2CB6: FFreeStr var_9C = ""
  loc_AA2CBD: FFree1Ad var_88
  loc_AA2CC0: FFree1Var var_98 = ""
  loc_AA2CC3: Branch loc_AA2CEA
  loc_AA2CC6: LitStr vbNullString
  loc_AA2CC9: FStStrCopy var_9C
  loc_AA2CCC: FLdRfVar var_9C
  loc_AA2CCF: FLdPr Me
  loc_AA2CD2: MemLdRfVar from_stack_1.global_52
  loc_AA2CD5: NewIfNullPr clscotizacion
  loc_AA2CD8: Call clscotizacion.Filter(from_stack_1v)
  loc_AA2CDD: FFree1Str var_9C
  loc_AA2CE0: LitStr vbNullString
  loc_AA2CE3: FLdPr Me
  loc_AA2CE6: MemStStrCopy
  loc_AA2CEA: FLdRfVar var_AC
  loc_AA2CED: FLdPr Me
  loc_AA2CF0: MemLdRfVar from_stack_1.global_52
  loc_AA2CF3: NewIfNullPr clscotizacion
  loc_AA2CF6: from_stack_1 = clscotizacion.RecordCount
  loc_AA2CFB: ILdRf var_AC
  loc_AA2CFE: LitI4 0
  loc_AA2D03: GtI4
  loc_AA2D04: BranchF loc_AA2DA2
  loc_AA2D07: FLdPr Me
  loc_AA2D0A: MemLdRfVar from_stack_1.global_52
  loc_AA2D0D: NewIfNullAd
  loc_AA2D10: FStAd var_B0 
  loc_AA2D14: FLdRfVar var_B0
  loc_AA2D17: CVarRef
  loc_AA2D1C: ILdRf Me
  loc_AA2D1F: CastAd
  loc_AA2D22: FStAdFunc var_88
  loc_AA2D25: FLdRfVar var_88
  loc_AA2D28: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_AA2D2D: ILdRf var_B0
  loc_AA2D30: CastAd
  loc_AA2D33: FLdPr Me
  loc_AA2D36: MemStAdFunc
  loc_AA2D3A: FFreeAd var_88 = ""
  loc_AA2D41: LitI4 0
  loc_AA2D46: LitI4 1
  loc_AA2D4B: FLdRfVar var_C4
  loc_AA2D4E: Redim
  loc_AA2D58: FLdPr Me
  loc_AA2D5B: MemLdRfVar from_stack_1.global_52
  loc_AA2D5E: NewIfNullAd
  loc_AA2D61: FStAd var_88 
  loc_AA2D65: FLdRfVar var_88
  loc_AA2D68: CVarRef
  loc_AA2D6D: ParmAry1St
  loc_AA2D73: FLdPr Me
  loc_AA2D76: VCallAd Control_ID_dgdABMS
  loc_AA2D79: CVarAd
  loc_AA2D7D: ParmAry1St
  loc_AA2D83: FLdRfVar var_C4
  loc_AA2D86: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_AA2D8B: ILdRf var_88
  loc_AA2D8E: CastAd
  loc_AA2D91: FLdPr Me
  loc_AA2D94: MemStAdFunc
  loc_AA2D98: FLdRfVar var_C4
  loc_AA2D9B: Erase
  loc_AA2D9C: FFree1Ad var_88
  loc_AA2D9F: Branch loc_AA2DB6
  loc_AA2DA2: ILdRf Me
  loc_AA2DA5: CastAd
  loc_AA2DA8: FStAdFunc var_88
  loc_AA2DAB: FLdRfVar var_88
  loc_AA2DAE: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_AA2DB3: FFree1Ad var_88
  loc_AA2DB6: FLdPr Me
  loc_AA2DB9: VCallAd Control_ID_dgdABMS
  loc_AA2DBC: FStAdFunc var_B0
  loc_AA2DBF: LitI4 0
  loc_AA2DC4: FStStrCopy var_9C
  loc_AA2DC7: FLdRfVar var_9C
  loc_AA2DCA: FLdPr Me
  loc_AA2DCD: MemLdStr global_72
  loc_AA2DD0: FLdZeroAd var_B0
  loc_AA2DD3: FStAdFunc var_88
  loc_AA2DD6: FLdRfVar var_88
  loc_AA2DD9: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_AA2DDE: FFree1Str var_9C
  loc_AA2DE1: FFreeAd var_88 = ""
  loc_AA2DE8: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '999104
  'Data Table: 4A77A4
  loc_9990A0: ILdI2 KeyAscii
  loc_9990A3: LitI2_Byte &H27
  loc_9990A5: EqI2
  loc_9990A6: BranchF loc_9990AE
  loc_9990A9: LitI2_Byte 0
  loc_9990AB: IStI2 KeyAscii
  loc_9990AE: FLdRfVar var_88
  loc_9990B1: FLdPr Me
  loc_9990B4: MemLdRfVar from_stack_1.global_52
  loc_9990B7: NewIfNullPr clscotizacion
  loc_9990BA: from_stack_1 = clscotizacion.RecordCount
  loc_9990BF: ILdRf var_88
  loc_9990C2: LitI4 0
  loc_9990C7: EqI4
  loc_9990C8: ILdI2 KeyAscii
  loc_9990CB: CI4UI1
  loc_9990CC: LitI4 8
  loc_9990D1: NeI4
  loc_9990D2: AndI4
  loc_9990D3: FLdPr Me
  loc_9990D6: VCallAd Control_ID_FiltroMsk
  loc_9990D9: FStAdFunc var_8C
  loc_9990DC: FLdPr var_8C
  loc_9990DF: LateIdLdVar var_9C DispID_16 0
  loc_9990E6: CStrVarTmp
  loc_9990E7: FStStrNoPop var_A0
  loc_9990EA: LitStr vbNullString
  loc_9990ED: EqStr
  loc_9990EF: AndI4
  loc_9990F0: FFree1Str var_A0
  loc_9990F3: FFree1Ad var_8C
  loc_9990F6: FFree1Var var_9C = ""
  loc_9990F9: BranchF loc_999101
  loc_9990FC: LitI2_Byte 0
  loc_9990FE: IStI2 KeyAscii
  loc_999101: ExitProcHresult
End Sub

Private Sub ObseCotiTxt_GotFocus() '950928
  'Data Table: 4A77A4
  loc_950914: FLdPr Me
  loc_950917: VCallAd Control_ID_ObseCotiTxt
  loc_95091A: CVarAd
  loc_95091E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950923: FFree1Var var_94 = ""
  loc_950926: ExitProcHresult
End Sub

Private Sub PlenCotiTxt_GotFocus() '9508E0
  'Data Table: 4A77A4
  loc_9508CC: FLdPrThis
  loc_9508CD: VCallAd Control_ID_PlenCotiTxt
  loc_9508D0: CVarAd
  loc_9508D4: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9508D9: FFree1Var var_94 = ""
  loc_9508DC: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'A20F98
  'Data Table: 4A77A4
  loc_A20DE0: LitVarStr var_94, vbNullString
  loc_A20DE5: PopAdLdVar
  loc_A20DE6: FLdPr Me
  loc_A20DE9: VCallAd Control_ID_FiltroMsk
  loc_A20DEC: FStAdFunc var_A8
  loc_A20DEF: FLdPr var_A8
  loc_A20DF2: LateIdSt
  loc_A20DF7: FFree1Ad var_A8
  loc_A20DFA: FLdRfVar var_AA
  loc_A20DFD: FLdPr Me
  loc_A20E00: VCallAd Control_ID_FiltroCbo
  loc_A20E03: FStAdFunc var_A8
  loc_A20E06: FLdPr var_A8
  loc_A20E09:  = Me.ListIndex
  loc_A20E0E: FLdI2 var_AA
  loc_A20E11: FStI2 var_AC
  loc_A20E14: FFree1Ad var_A8
  loc_A20E17: FLdI2 var_AC
  loc_A20E1A: LitI2_Byte 0
  loc_A20E1C: EqI2
  loc_A20E1D: BranchF loc_A20E57
  loc_A20E20: LitVarStr var_94, "########"
  loc_A20E25: PopAdLdVar
  loc_A20E26: FLdPr Me
  loc_A20E29: VCallAd Control_ID_FiltroMsk
  loc_A20E2C: FStAdFunc var_A8
  loc_A20E2F: FLdPr var_A8
  loc_A20E32: LateIdSt
  loc_A20E37: FFree1Ad var_A8
  loc_A20E3A: LitStr "CodiNope"
  loc_A20E3D: FStStrCopy var_B0
  loc_A20E40: FLdRfVar var_B0
  loc_A20E43: FLdPr Me
  loc_A20E46: MemLdRfVar from_stack_1.global_52
  loc_A20E49: NewIfNullPr clscotizacion
  loc_A20E4C: Call clscotizacion.Sort(from_stack_1v)
  loc_A20E51: FFree1Str var_B0
  loc_A20E54: Branch loc_A20F94
  loc_A20E57: FLdI2 var_AC
  loc_A20E5A: LitI2_Byte 1
  loc_A20E5C: EqI2
  loc_A20E5D: BranchF loc_A20E97
  loc_A20E60: LitVarStr var_94, vbNullString
  loc_A20E65: PopAdLdVar
  loc_A20E66: FLdPr Me
  loc_A20E69: VCallAd Control_ID_FiltroMsk
  loc_A20E6C: FStAdFunc var_A8
  loc_A20E6F: FLdPr var_A8
  loc_A20E72: LateIdSt
  loc_A20E77: FFree1Ad var_A8
  loc_A20E7A: LitStr "DetaNope"
  loc_A20E7D: FStStrCopy var_B0
  loc_A20E80: FLdRfVar var_B0
  loc_A20E83: FLdPr Me
  loc_A20E86: MemLdRfVar from_stack_1.global_52
  loc_A20E89: NewIfNullPr clscotizacion
  loc_A20E8C: Call clscotizacion.Sort(from_stack_1v)
  loc_A20E91: FFree1Str var_B0
  loc_A20E94: Branch loc_A20F94
  loc_A20E97: FLdI2 var_AC
  loc_A20E9A: LitI2_Byte 2
  loc_A20E9C: EqI2
  loc_A20E9D: BranchF loc_A20ED7
  loc_A20EA0: LitVarStr var_94, "######"
  loc_A20EA5: PopAdLdVar
  loc_A20EA6: FLdPr Me
  loc_A20EA9: VCallAd Control_ID_FiltroMsk
  loc_A20EAC: FStAdFunc var_A8
  loc_A20EAF: FLdPr var_A8
  loc_A20EB2: LateIdSt
  loc_A20EB7: FFree1Ad var_A8
  loc_A20EBA: LitStr "CodiOrga"
  loc_A20EBD: FStStrCopy var_B0
  loc_A20EC0: FLdRfVar var_B0
  loc_A20EC3: FLdPr Me
  loc_A20EC6: MemLdRfVar from_stack_1.global_52
  loc_A20EC9: NewIfNullPr clscotizacion
  loc_A20ECC: Call clscotizacion.Sort(from_stack_1v)
  loc_A20ED1: FFree1Str var_B0
  loc_A20ED4: Branch loc_A20F94
  loc_A20ED7: FLdI2 var_AC
  loc_A20EDA: LitI2_Byte 3
  loc_A20EDC: EqI2
  loc_A20EDD: BranchF loc_A20F17
  loc_A20EE0: LitVarStr var_94, vbNullString
  loc_A20EE5: PopAdLdVar
  loc_A20EE6: FLdPr Me
  loc_A20EE9: VCallAd Control_ID_FiltroMsk
  loc_A20EEC: FStAdFunc var_A8
  loc_A20EEF: FLdPr var_A8
  loc_A20EF2: LateIdSt
  loc_A20EF7: FFree1Ad var_A8
  loc_A20EFA: LitStr "DetaOrga"
  loc_A20EFD: FStStrCopy var_B0
  loc_A20F00: FLdRfVar var_B0
  loc_A20F03: FLdPr Me
  loc_A20F06: MemLdRfVar from_stack_1.global_52
  loc_A20F09: NewIfNullPr clscotizacion
  loc_A20F0C: Call clscotizacion.Sort(from_stack_1v)
  loc_A20F11: FFree1Str var_B0
  loc_A20F14: Branch loc_A20F94
  loc_A20F17: FLdI2 var_AC
  loc_A20F1A: LitI2_Byte 4
  loc_A20F1C: EqI2
  loc_A20F1D: BranchF loc_A20F57
  loc_A20F20: LitVarStr var_94, vbNullString
  loc_A20F25: PopAdLdVar
  loc_A20F26: FLdPr Me
  loc_A20F29: VCallAd Control_ID_FiltroMsk
  loc_A20F2C: FStAdFunc var_A8
  loc_A20F2F: FLdPr var_A8
  loc_A20F32: LateIdSt
  loc_A20F37: FFree1Ad var_A8
  loc_A20F3A: LitStr "ExpeImpu"
  loc_A20F3D: FStStrCopy var_B0
  loc_A20F40: FLdRfVar var_B0
  loc_A20F43: FLdPr Me
  loc_A20F46: MemLdRfVar from_stack_1.global_52
  loc_A20F49: NewIfNullPr clscotizacion
  loc_A20F4C: Call clscotizacion.Sort(from_stack_1v)
  loc_A20F51: FFree1Str var_B0
  loc_A20F54: Branch loc_A20F94
  loc_A20F57: FLdI2 var_AC
  loc_A20F5A: LitI2_Byte 5
  loc_A20F5C: EqI2
  loc_A20F5D: BranchF loc_A20F94
  loc_A20F60: LitVarStr var_94, "########"
  loc_A20F65: PopAdLdVar
  loc_A20F66: FLdPr Me
  loc_A20F69: VCallAd Control_ID_FiltroMsk
  loc_A20F6C: FStAdFunc var_A8
  loc_A20F6F: FLdPr var_A8
  loc_A20F72: LateIdSt
  loc_A20F77: FFree1Ad var_A8
  loc_A20F7A: LitStr "IdCoti"
  loc_A20F7D: FStStrCopy var_B0
  loc_A20F80: FLdRfVar var_B0
  loc_A20F83: FLdPr Me
  loc_A20F86: MemLdRfVar from_stack_1.global_52
  loc_A20F89: NewIfNullPr clscotizacion
  loc_A20F8C: Call clscotizacion.Sort(from_stack_1v)
  loc_A20F91: FFree1Str var_B0
  loc_A20F94: ExitProcHresult
  loc_A20F95: FLdPr var_110
End Sub

Private Sub AgregaItemCmd_Click() 'AC3CF8
  'Data Table: 4A77A4
  loc_AC37D8: FLdRfVar var_A0
  loc_AC37DB: LitVarStr var_9C, "CucuPers"
  loc_AC37E0: PopAdLdVar
  loc_AC37E1: FLdRfVar var_8C
  loc_AC37E4: FLdRfVar var_88
  loc_AC37E7: FLdPr Me
  loc_AC37EA: MemLdRfVar from_stack_1.global_52
  loc_AC37ED: NewIfNullPr clscotizacion
  loc_AC37F0: from_stack_1v = clscotizacion.RsFrmGet()
  loc_AC37F5: FLdPr var_88
  loc_AC37F8:  = Me.Fields
  loc_AC37FD: FLdPr var_8C
  loc_AC3800: from_stack_2 = Me.Item(from_stack_1)
  loc_AC3805: FLdZeroAd var_A0
  loc_AC3808: CVarAd
  loc_AC380C: ImpAdCallI2 IsNull()
  loc_AC3811: NotI4
  loc_AC3812: FFreeAd var_88 = ""
  loc_AC3819: FFree1Var var_B0 = ""
  loc_AC381C: BranchF loc_AC3CE0
  loc_AC381F: LitStr "SELECT itn.*, DetaInsu"
  loc_AC3822: LitStr ", Round(CantItno*ImunItno,2) TotalItem"
  loc_AC3825: ConcatStr
  loc_AC3826: FStStrNoPop var_B4
  loc_AC3829: LitStr " FROM itemnota itn"
  loc_AC382C: ConcatStr
  loc_AC382D: FStStrNoPop var_B8
  loc_AC3830: LitStr " INNER JOIN infogov.insumo i ON i.CodiInsu = itn.CodiInsu "
  loc_AC3833: ConcatStr
  loc_AC3834: FStStrNoPop var_BC
  loc_AC3837: LitStr " LEFT JOIN itemcotizacion itc ON itc.PeriInfo = itn.PeriInfo AND itc.CodiNope = itn.CodiNope AND itc.CodiItco = itn.CodiItno AND itc.IdCoti = "
  loc_AC383A: ConcatStr
  loc_AC383B: CVarStr var_CC
  loc_AC383E: FLdRfVar var_B0
  loc_AC3841: FLdRfVar var_A0
  loc_AC3844: LitVarStr var_9C, "IdCoti"
  loc_AC3849: PopAdLdVar
  loc_AC384A: FLdRfVar var_8C
  loc_AC384D: FLdRfVar var_88
  loc_AC3850: FLdPr Me
  loc_AC3853: MemLdRfVar from_stack_1.global_52
  loc_AC3856: NewIfNullPr clscotizacion
  loc_AC3859: from_stack_1v = clscotizacion.RsFrmGet()
  loc_AC385E: FLdPr var_88
  loc_AC3861:  = Me.Fields
  loc_AC3866: FLdPr var_8C
  loc_AC3869: from_stack_2 = Me.Item(from_stack_1)
  loc_AC386E: FLdPr var_A0
  loc_AC3871:  = Me.Value
  loc_AC3876: FLdRfVar var_B0
  loc_AC3879: ConcatVar var_DC
  loc_AC387D: LitVarStr var_EC, " WHERE itn.PeriInfo = "
  loc_AC3882: ConcatVar var_FC
  loc_AC3886: FLdRfVar var_128
  loc_AC3889: FLdRfVar var_118
  loc_AC388C: LitVarStr var_114, "PeriInfo"
  loc_AC3891: PopAdLdVar
  loc_AC3892: FLdRfVar var_104
  loc_AC3895: FLdRfVar var_100
  loc_AC3898: FLdPr Me
  loc_AC389B: MemLdRfVar from_stack_1.global_52
  loc_AC389E: NewIfNullPr clscotizacion
  loc_AC38A1: from_stack_1v = clscotizacion.RsFrmGet()
  loc_AC38A6: FLdPr var_100
  loc_AC38A9:  = Me.Fields
  loc_AC38AE: FLdPr var_104
  loc_AC38B1: from_stack_2 = Me.Item(from_stack_1)
  loc_AC38B6: FLdPr var_118
  loc_AC38B9:  = Me.Value
  loc_AC38BE: FLdRfVar var_128
  loc_AC38C1: ConcatVar var_138
  loc_AC38C5: LitVarStr var_148, " AND itn.CodiNope = "
  loc_AC38CA: ConcatVar var_158
  loc_AC38CE: FLdRfVar var_184
  loc_AC38D1: FLdRfVar var_174
  loc_AC38D4: LitVarStr var_170, "CodiNope"
  loc_AC38D9: PopAdLdVar
  loc_AC38DA: FLdRfVar var_160
  loc_AC38DD: FLdRfVar var_15C
  loc_AC38E0: FLdPr Me
  loc_AC38E3: MemLdRfVar from_stack_1.global_52
  loc_AC38E6: NewIfNullPr clscotizacion
  loc_AC38E9: from_stack_1v = clscotizacion.RsFrmGet()
  loc_AC38EE: FLdPr var_15C
  loc_AC38F1:  = Me.Fields
  loc_AC38F6: FLdPr var_160
  loc_AC38F9: from_stack_2 = Me.Item(from_stack_1)
  loc_AC38FE: FLdPr var_174
  loc_AC3901:  = Me.Value
  loc_AC3906: FLdRfVar var_184
  loc_AC3909: ConcatVar var_194
  loc_AC390D: LitVarStr var_1A4, " AND itc.PeriInfo IS NULL"
  loc_AC3912: ConcatVar var_1B4
  loc_AC3916: LitVarStr var_1C4, " ORDER BY PeriInfo, CodiNope, CodiItno;"
  loc_AC391B: ConcatVar var_1D4
  loc_AC391F: CStrVarVal var_1D8
  loc_AC3923: FLdPr Me
  loc_AC3926: MemLdRfVar from_stack_1.global_56
  loc_AC3929: NewIfNullPr clsbase
  loc_AC392C: Call clsbase.RedefineRS(from_stack_1v)
  loc_AC3931: FFreeStr var_B4 = "": var_B8 = "": var_BC = ""
  loc_AC393C: FFreeAd var_88 = "": var_8C = "": var_A0 = "": var_100 = "": var_104 = "": var_118 = "": var_15C = "": var_160 = ""
  loc_AC3951: FFreeVar var_CC = "": var_B0 = "": var_DC = "": var_FC = "": var_128 = "": var_138 = "": var_158 = "": var_184 = "": var_194 = "": var_1B4 = ""
  loc_AC396A: FLdRfVar var_1DC
  loc_AC396D: FLdPr Me
  loc_AC3970: MemLdRfVar from_stack_1.global_56
  loc_AC3973: NewIfNullPr clsbase
  loc_AC3976: from_stack_1 = clsbase.RecordCount
  loc_AC397B: ILdRf var_1DC
  loc_AC397E: LitI4 0
  loc_AC3983: GtI4
  loc_AC3984: BranchF loc_AC3CE0
  loc_AC3987: FLdPr Me
  loc_AC398A: MemLdRfVar from_stack_1.global_56
  loc_AC398D: NewIfNullPr clsbase
  loc_AC3990: Call clsbase.MoveFirst()
  loc_AC3995: FLdRfVar var_1DE
  loc_AC3998: FLdPr Me
  loc_AC399B: MemLdRfVar from_stack_1.global_56
  loc_AC399E: NewIfNullPr clsbase
  loc_AC39A1: from_stack_1 = clsbase.EOF
  loc_AC39A6: FLdI2 var_1DE
  loc_AC39A9: NotI4
  loc_AC39AA: BranchF loc_AC3CE0
  loc_AC39AD: FLdRfVar var_268
  loc_AC39B0: LitVarStr var_1A4, "CantItno"
  loc_AC39B5: PopAdLdVar
  loc_AC39B6: FLdRfVar var_264
  loc_AC39B9: FLdRfVar var_260
  loc_AC39BC: FLdPr Me
  loc_AC39BF: MemLdRfVar from_stack_1.global_56
  loc_AC39C2: NewIfNullPr clsbase
  loc_AC39C5: from_stack_1v = clsbase.RsFrmGet()
  loc_AC39CA: FLdPr var_260
  loc_AC39CD:  = Me.Fields
  loc_AC39D2: FLdPr var_264
  loc_AC39D5: from_stack_2 = Me.Item(from_stack_1)
  loc_AC39DA: FLdRfVar var_2E4
  loc_AC39DD: LitVarStr var_2E0, "ImunItno"
  loc_AC39E2: PopAdLdVar
  loc_AC39E3: FLdRfVar var_2D0
  loc_AC39E6: FLdRfVar var_2CC
  loc_AC39E9: FLdPr Me
  loc_AC39EC: MemLdRfVar from_stack_1.global_56
  loc_AC39EF: NewIfNullPr clsbase
  loc_AC39F2: from_stack_1v = clsbase.RsFrmGet()
  loc_AC39F7: FLdPr var_2CC
  loc_AC39FA:  = Me.Fields
  loc_AC39FF: FLdPr var_2D0
  loc_AC3A02: from_stack_2 = Me.Item(from_stack_1)
  loc_AC3A07: FLdRfVar var_CC
  loc_AC3A0A: FLdRfVar var_A0
  loc_AC3A0D: LitVarStr var_9C, "CodiItno"
  loc_AC3A12: PopAdLdVar
  loc_AC3A13: FLdRfVar var_8C
  loc_AC3A16: FLdRfVar var_88
  loc_AC3A19: FLdPr Me
  loc_AC3A1C: MemLdRfVar from_stack_1.global_56
  loc_AC3A1F: NewIfNullPr clsbase
  loc_AC3A22: from_stack_1v = clsbase.RsFrmGet()
  loc_AC3A27: FLdPr var_88
  loc_AC3A2A:  = Me.Fields
  loc_AC3A2F: FLdPr var_8C
  loc_AC3A32: from_stack_2 = Me.Item(from_stack_1)
  loc_AC3A37: FLdPr var_A0
  loc_AC3A3A:  = Me.Value
  loc_AC3A3F: FLdRfVar var_CC
  loc_AC3A42: LitI4 9
  loc_AC3A47: FLdRfVar var_B0
  loc_AC3A4A: ImpAdCallFPR4  = Chr()
  loc_AC3A4F: FLdRfVar var_B0
  loc_AC3A52: ConcatVar var_DC
  loc_AC3A56: LitVarStr var_EC, "0"
  loc_AC3A5B: ConcatVar var_FC
  loc_AC3A5F: LitI4 9
  loc_AC3A64: FLdRfVar var_128
  loc_AC3A67: ImpAdCallFPR4  = Chr()
  loc_AC3A6C: FLdRfVar var_128
  loc_AC3A6F: ConcatVar var_138
  loc_AC3A73: FLdRfVar var_158
  loc_AC3A76: FLdRfVar var_118
  loc_AC3A79: LitVarStr var_114, "CodiInsu"
  loc_AC3A7E: PopAdLdVar
  loc_AC3A7F: FLdRfVar var_104
  loc_AC3A82: FLdRfVar var_100
  loc_AC3A85: FLdPr Me
  loc_AC3A88: MemLdRfVar from_stack_1.global_56
  loc_AC3A8B: NewIfNullPr clsbase
  loc_AC3A8E: from_stack_1v = clsbase.RsFrmGet()
  loc_AC3A93: FLdPr var_100
  loc_AC3A96:  = Me.Fields
  loc_AC3A9B: FLdPr var_104
  loc_AC3A9E: from_stack_2 = Me.Item(from_stack_1)
  loc_AC3AA3: FLdPr var_118
  loc_AC3AA6:  = Me.Value
  loc_AC3AAB: FLdRfVar var_158
  loc_AC3AAE: ConcatVar var_184
  loc_AC3AB2: LitI4 9
  loc_AC3AB7: FLdRfVar var_194
  loc_AC3ABA: ImpAdCallFPR4  = Chr()
  loc_AC3ABF: FLdRfVar var_194
  loc_AC3AC2: ConcatVar var_1B4
  loc_AC3AC6: FLdRfVar var_1D4
  loc_AC3AC9: FLdRfVar var_174
  loc_AC3ACC: LitVarStr var_148, "DetaInsu"
  loc_AC3AD1: PopAdLdVar
  loc_AC3AD2: FLdRfVar var_160
  loc_AC3AD5: FLdRfVar var_15C
  loc_AC3AD8: FLdPr Me
  loc_AC3ADB: MemLdRfVar from_stack_1.global_56
  loc_AC3ADE: NewIfNullPr clsbase
  loc_AC3AE1: from_stack_1v = clsbase.RsFrmGet()
  loc_AC3AE6: FLdPr var_15C
  loc_AC3AE9:  = Me.Fields
  loc_AC3AEE: FLdPr var_160
  loc_AC3AF1: from_stack_2 = Me.Item(from_stack_1)
  loc_AC3AF6: FLdPr var_174
  loc_AC3AF9:  = Me.Value
  loc_AC3AFE: FLdRfVar var_1D4
  loc_AC3B01: ConcatVar var_1F0
  loc_AC3B05: LitI4 9
  loc_AC3B0A: FLdRfVar var_200
  loc_AC3B0D: ImpAdCallFPR4  = Chr()
  loc_AC3B12: FLdRfVar var_200
  loc_AC3B15: ConcatVar var_210
  loc_AC3B19: FLdRfVar var_22C
  loc_AC3B1C: FLdRfVar var_21C
  loc_AC3B1F: LitVarStr var_170, "DetaItno"
  loc_AC3B24: PopAdLdVar
  loc_AC3B25: FLdRfVar var_218
  loc_AC3B28: FLdRfVar var_214
  loc_AC3B2B: FLdPr Me
  loc_AC3B2E: MemLdRfVar from_stack_1.global_56
  loc_AC3B31: NewIfNullPr clsbase
  loc_AC3B34: from_stack_1v = clsbase.RsFrmGet()
  loc_AC3B39: FLdPr var_214
  loc_AC3B3C:  = Me.Fields
  loc_AC3B41: FLdPr var_218
  loc_AC3B44: from_stack_2 = Me.Item(from_stack_1)
  loc_AC3B49: FLdPr var_21C
  loc_AC3B4C:  = Me.Value
  loc_AC3B51: FLdRfVar var_22C
  loc_AC3B54: ConcatVar var_23C
  loc_AC3B58: LitI4 9
  loc_AC3B5D: FLdRfVar var_24C
  loc_AC3B60: ImpAdCallFPR4  = Chr()
  loc_AC3B65: FLdRfVar var_24C
  loc_AC3B68: ConcatVar var_25C
  loc_AC3B6C: LitI4 1
  loc_AC3B71: LitI4 1
  loc_AC3B76: LitVarStr var_1C4, "0.000"
  loc_AC3B7B: FStVarCopyObj var_288
  loc_AC3B7E: FLdRfVar var_288
  loc_AC3B81: FLdZeroAd var_268
  loc_AC3B84: CVarAd
  loc_AC3B88: ImpAdCallI2 Format$(, )
  loc_AC3B8D: CVarStr var_298
  loc_AC3B90: ConcatVar var_2A8
  loc_AC3B94: LitI4 9
  loc_AC3B99: FLdRfVar var_2B8
  loc_AC3B9C: ImpAdCallFPR4  = Chr()
  loc_AC3BA1: FLdRfVar var_2B8
  loc_AC3BA4: ConcatVar var_2C8
  loc_AC3BA8: LitI4 1
  loc_AC3BAD: LitI4 1
  loc_AC3BB2: LitVarStr var_304, "0.00"
  loc_AC3BB7: FStVarCopyObj var_314
  loc_AC3BBA: FLdRfVar var_314
  loc_AC3BBD: FLdZeroAd var_2E4
  loc_AC3BC0: CVarAd
  loc_AC3BC4: ImpAdCallI2 Format$(, )
  loc_AC3BC9: CVarStr var_324
  loc_AC3BCC: ConcatVar var_334
  loc_AC3BD0: LitI4 9
  loc_AC3BD5: FLdRfVar var_344
  loc_AC3BD8: ImpAdCallFPR4  = Chr()
  loc_AC3BDD: FLdRfVar var_344
  loc_AC3BE0: ConcatVar var_354
  loc_AC3BE4: FLdRfVar var_380
  loc_AC3BE7: FLdRfVar var_370
  loc_AC3BEA: LitVarStr var_36C, "TotalItem"
  loc_AC3BEF: PopAdLdVar
  loc_AC3BF0: FLdRfVar var_35C
  loc_AC3BF3: FLdRfVar var_358
  loc_AC3BF6: FLdPr Me
  loc_AC3BF9: MemLdRfVar from_stack_1.global_56
  loc_AC3BFC: NewIfNullPr clsbase
  loc_AC3BFF: from_stack_1v = clsbase.RsFrmGet()
  loc_AC3C04: FLdPr var_358
  loc_AC3C07:  = Me.Fields
  loc_AC3C0C: FLdPr var_35C
  loc_AC3C0F: from_stack_2 = Me.Item(from_stack_1)
  loc_AC3C14: FLdPr var_370
  loc_AC3C17:  = Me.Value
  loc_AC3C1C: FLdRfVar var_380
  loc_AC3C1F: ConcatVar var_390
  loc_AC3C23: LitI4 9
  loc_AC3C28: FLdRfVar var_3A0
  loc_AC3C2B: ImpAdCallFPR4  = Chr()
  loc_AC3C30: FLdRfVar var_3A0
  loc_AC3C33: ConcatVar var_3B0
  loc_AC3C37: LitVarStr var_3C0, "No"
  loc_AC3C3C: ConcatVar var_3D0
  loc_AC3C40: CStrVarTmp
  loc_AC3C41: CVarStr var_3E0
  loc_AC3C44: PopAdLdVar
  loc_AC3C45: FLdPr Me
  loc_AC3C48: VCallAd Control_ID_ItemNotaFlex
  loc_AC3C4B: FStAdFunc var_3F4
  loc_AC3C4E: FLdPr var_3F4
  loc_AC3C51: LateIdCall
  loc_AC3C59: FFreeAd var_88 = "": var_8C = "": var_A0 = "": var_100 = "": var_104 = "": var_118 = "": var_15C = "": var_160 = "": var_174 = "": var_214 = "": var_218 = "": var_21C = "": var_260 = "": var_264 = "": var_2CC = "": var_2D0 = "": var_358 = "": var_35C = "": var_370 = ""
  loc_AC3C84: FFreeVar var_380 = "": var_390 = "": var_3A0 = "": var_3B0 = "": var_3D0 = "": var_3E0 = "": var_CC = "": var_B0 = "": var_DC = "": var_FC = "": var_128 = "": var_138 = "": var_158 = "": var_184 = "": var_194 = "": var_1B4 = "": var_1D4 = "": var_1F0 = "": var_200 = "": var_210 = "": var_22C = "": var_23C = "": var_24C = "": var_278 = "": var_288 = "": var_25C = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2F4 = "": var_314 = "": var_2C8 = "": var_324 = "": var_334 = "": var_344 = ""
  loc_AC3CCF: FLdPr Me
  loc_AC3CD2: MemLdRfVar from_stack_1.global_56
  loc_AC3CD5: NewIfNullPr clsbase
  loc_AC3CD8: Call clsbase.MoveSiguiente()
  loc_AC3CDD: Branch loc_AC3995
  loc_AC3CE0: LitI2_Byte 0
  loc_AC3CE2: FLdPr Me
  loc_AC3CE5: VCallAd Control_ID_AgregaItemCmd
  loc_AC3CE8: FStAdFunc var_88
  loc_AC3CEB: FLdPr var_88
  loc_AC3CEE: Me.Enabled = from_stack_1b
  loc_AC3CF3: FFree1Ad var_88
  loc_AC3CF6: ExitProcHresult
End Sub

Private Sub CucuPersTxt_GotFocus() '950DA8
  'Data Table: 4A77A4
  loc_950D94: FLdPr Me
  loc_950D97: VCallAd Control_ID_CucuPersTxt
  loc_950D9A: CVarAd
  loc_950D9E: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950DA3: FFree1Var var_94 = ""
  loc_950DA6: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyUp(KeyCode As Integer, Shift As Integer) 'A0DA90
  'Data Table: 4A77A4
  loc_A0D92C: ILdI2 Shift
  loc_A0D92F: CI4UI1
  loc_A0D930: LitI4 2
  loc_A0D935: EqI4
  loc_A0D936: ILdI2 KeyCode
  loc_A0D939: CI4UI1
  loc_A0D93A: LitI4 &H42
  loc_A0D93F: EqI4
  loc_A0D940: AndI4
  loc_A0D941: BranchF loc_A0DA8C
  loc_A0D944: LitI2_Byte 0
  loc_A0D946: ImpAdLdRf MemVar_C3D74C
  loc_A0D949: NewIfNullPr bscProveedor
  loc_A0D94C: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_A0D951: LitNothing
  loc_A0D953: CastAd
  loc_A0D956: FStAdFuncNoPop
  loc_A0D959: FLdRfVar var_88
  loc_A0D95C: ImpAdLdRf MemVar_C3D74C
  loc_A0D95F: NewIfNullPr bscProveedor
  loc_A0D962: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0D967: FLdPr var_88
  loc_A0D96A: Call clsbase.RsFrmSet(from_stack_1v)
  loc_A0D96F: FFreeAd var_8C = ""
  loc_A0D976: LitVar_Missing var_AC
  loc_A0D979: PopAdLdVar
  loc_A0D97A: LitVarI4
  loc_A0D982: PopAdLdVar
  loc_A0D983: ImpAdLdRf MemVar_C3D74C
  loc_A0D986: NewIfNullPr bscProveedor
  loc_A0D989: bscProveedor.Show from_stack_1, from_stack_2
  loc_A0D98E: FLdRfVar var_B0
  loc_A0D991: FLdRfVar var_88
  loc_A0D994: ImpAdLdRf MemVar_C3D74C
  loc_A0D997: NewIfNullPr bscProveedor
  loc_A0D99A: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0D99F: FLdPr var_88
  loc_A0D9A2: from_stack_1 = clsbase.RecordCount
  loc_A0D9A7: ILdRf var_B0
  loc_A0D9AA: LitI4 0
  loc_A0D9AF: GtI4
  loc_A0D9B0: FFree1Ad var_88
  loc_A0D9B3: BranchF loc_A0DA8C
  loc_A0D9B6: FLdRfVar var_C8
  loc_A0D9B9: FLdRfVar var_B8
  loc_A0D9BC: LitVarStr var_9C, "CucuPers"
  loc_A0D9C1: PopAdLdVar
  loc_A0D9C2: FLdRfVar var_B4
  loc_A0D9C5: FLdRfVar var_8C
  loc_A0D9C8: FLdRfVar var_88
  loc_A0D9CB: ImpAdLdRf MemVar_C3D74C
  loc_A0D9CE: NewIfNullPr bscProveedor
  loc_A0D9D1: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0D9D6: FLdPr var_88
  loc_A0D9D9: from_stack_1v = clsbase.RsFrmGet()
  loc_A0D9DE: FLdPr var_8C
  loc_A0D9E1:  = Me.Fields
  loc_A0D9E6: FLdPr var_B4
  loc_A0D9E9: from_stack_2 = Me.Item(from_stack_1)
  loc_A0D9EE: FLdPr var_B8
  loc_A0D9F1:  = Me.Value
  loc_A0D9F6: FLdRfVar var_C8
  loc_A0D9F9: CStrVarTmp
  loc_A0D9FA: FStStrNoPop var_CC
  loc_A0D9FD: FLdPr Me
  loc_A0DA00: VCallAd Control_ID_CucuPersTxt
  loc_A0DA03: FStAdFunc var_D0
  loc_A0DA06: FLdPr var_D0
  loc_A0DA09: Me.Text = from_stack_1
  loc_A0DA0E: FFree1Str var_CC
  loc_A0DA11: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0DA1E: FFree1Var var_C8 = ""
  loc_A0DA21: FLdRfVar var_C8
  loc_A0DA24: FLdRfVar var_B8
  loc_A0DA27: LitVarStr var_9C, "DetaProv"
  loc_A0DA2C: PopAdLdVar
  loc_A0DA2D: FLdRfVar var_B4
  loc_A0DA30: FLdRfVar var_8C
  loc_A0DA33: FLdRfVar var_88
  loc_A0DA36: ImpAdLdRf MemVar_C3D74C
  loc_A0DA39: NewIfNullPr bscProveedor
  loc_A0DA3C: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0DA41: FLdPr var_88
  loc_A0DA44: from_stack_1v = clsbase.RsFrmGet()
  loc_A0DA49: FLdPr var_8C
  loc_A0DA4C:  = Me.Fields
  loc_A0DA51: FLdPr var_B4
  loc_A0DA54: from_stack_2 = Me.Item(from_stack_1)
  loc_A0DA59: FLdPr var_B8
  loc_A0DA5C:  = Me.Value
  loc_A0DA61: FLdRfVar var_C8
  loc_A0DA64: CStrVarTmp
  loc_A0DA65: FStStrNoPop var_CC
  loc_A0DA68: FLdPr Me
  loc_A0DA6B: VCallAd Control_ID_DetaProvLbl
  loc_A0DA6E: FStAdFunc var_D0
  loc_A0DA71: FLdPr var_D0
  loc_A0DA74: Me.Caption = from_stack_1
  loc_A0DA79: FFree1Str var_CC
  loc_A0DA7C: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0DA89: FFree1Var var_C8 = ""
  loc_A0DA8C: ExitProcHresult
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) 'B3E530
  'Data Table: 4A77A4
  loc_B3DAF4: FLdRfVar var_8A
  loc_B3DAF7: FLdPr Me
  loc_B3DAFA: VCallAd Control_ID_cmdCancelar
  loc_B3DAFD: FStAdFunc var_88
  loc_B3DB00: FLdPr var_88
  loc_B3DB03:  = Me.Value
  loc_B3DB08: FLdI2 var_8A
  loc_B3DB0B: NotI4
  loc_B3DB0C: FLdRfVar var_92
  loc_B3DB0F: FLdPr Me
  loc_B3DB12: VCallAd Control_ID_CucuPersTxt
  loc_B3DB15: FStAdFunc var_90
  loc_B3DB18: FLdPr var_90
  loc_B3DB1B:  = Me.Enabled
  loc_B3DB20: FLdI2 var_92
  loc_B3DB23: AndI4
  loc_B3DB24: FFreeAd var_88 = ""
  loc_B3DB2B: BranchF loc_B3E52E
  loc_B3DB2E: FLdRfVar var_98
  loc_B3DB31: FLdPr Me
  loc_B3DB34: VCallAd Control_ID_CucuPersTxt
  loc_B3DB37: FStAdFunc var_88
  loc_B3DB3A: FLdPr var_88
  loc_B3DB3D:  = Me.Text
  loc_B3DB42: ILdRf var_98
  loc_B3DB45: ImpAdCallI2 Trim$()
  loc_B3DB4A: FStStrNoPop var_9C
  loc_B3DB4D: LitStr vbNullString
  loc_B3DB50: NeStr
  loc_B3DB52: FFreeStr var_98 = ""
  loc_B3DB59: FFree1Ad var_88
  loc_B3DB5C: BranchF loc_B3E36A
  loc_B3DB5F: FLdPr Me
  loc_B3DB62: VCallAd Control_ID_CucuPersTxt
  loc_B3DB65: FStAdFunc var_88
  loc_B3DB68: FLdRfVar var_88
  loc_B3DB6B: ImpAdCallI2 Proc_266_39_9F3844()
  loc_B3DB70: FFree1Ad var_88
  loc_B3DB73: BranchF loc_B3DF6B
  loc_B3DB76: LitStr " AND proveedor.CucuPers LIKE '" & Chr(37)
  loc_B3DB79: FLdRfVar var_98
  loc_B3DB7C: FLdPr Me
  loc_B3DB7F: VCallAd Control_ID_CucuPersTxt
  loc_B3DB82: FStAdFunc var_88
  loc_B3DB85: FLdPr var_88
  loc_B3DB88:  = Me.Text
  loc_B3DB8D: ILdRf var_98
  loc_B3DB90: ConcatStr
  loc_B3DB91: FStStrNoPop var_9C
  loc_B3DB94: LitStr Chr(37) & "'"
  loc_B3DB97: ConcatStr
  loc_B3DB98: FStStrNoPop var_A0
  loc_B3DB9B: ImpAdLdRf MemVar_C3D74C
  loc_B3DB9E: NewIfNullPr bscProveedor
  loc_B3DBA1: Call bscProveedor.Constructor(from_stack_1v)
  loc_B3DBA6: FFreeStr var_98 = "": var_9C = ""
  loc_B3DBAF: FFree1Ad var_88
  loc_B3DBB2: FLdRfVar var_A4
  loc_B3DBB5: FLdRfVar var_90
  loc_B3DBB8: FLdRfVar var_88
  loc_B3DBBB: ImpAdLdRf MemVar_C3D74C
  loc_B3DBBE: NewIfNullPr bscProveedor
  loc_B3DBC1: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3DBC6: FLdPr var_88
  loc_B3DBC9: from_stack_1v = clsbase.RsFrmGet()
  loc_B3DBCE: FLdPr var_90
  loc_B3DBD1:  = Me.RecordCount
  loc_B3DBD6: ILdRf var_A4
  loc_B3DBD9: LitI4 1
  loc_B3DBDE: EqI4
  loc_B3DBDF: FFreeAd var_88 = ""
  loc_B3DBE6: BranchF loc_B3DD09
  loc_B3DBE9: FLdRfVar var_CC
  loc_B3DBEC: FLdRfVar var_BC
  loc_B3DBEF: LitVarStr var_B8, "CucuPers"
  loc_B3DBF4: PopAdLdVar
  loc_B3DBF5: FLdRfVar var_A8
  loc_B3DBF8: FLdRfVar var_90
  loc_B3DBFB: FLdRfVar var_88
  loc_B3DBFE: ImpAdLdRf MemVar_C3D74C
  loc_B3DC01: NewIfNullPr bscProveedor
  loc_B3DC04: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3DC09: FLdPr var_88
  loc_B3DC0C: from_stack_1v = clsbase.RsFrmGet()
  loc_B3DC11: FLdPr var_90
  loc_B3DC14:  = Me.Fields
  loc_B3DC19: FLdPr var_A8
  loc_B3DC1C: from_stack_2 = Me.Item(from_stack_1)
  loc_B3DC21: FLdPr var_BC
  loc_B3DC24:  = Me.Value
  loc_B3DC29: FLdRfVar var_CC
  loc_B3DC2C: CStrVarTmp
  loc_B3DC2D: FStStrNoPop var_98
  loc_B3DC30: FLdPr Me
  loc_B3DC33: VCallAd Control_ID_CucuPersTxt
  loc_B3DC36: FStAdFunc var_D0
  loc_B3DC39: FLdPr var_D0
  loc_B3DC3C: Me.Text = from_stack_1
  loc_B3DC41: FFree1Str var_98
  loc_B3DC44: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B3DC51: FFree1Var var_CC = ""
  loc_B3DC54: FLdRfVar var_CC
  loc_B3DC57: FLdRfVar var_BC
  loc_B3DC5A: LitVarStr var_B8, "DetaProv"
  loc_B3DC5F: PopAdLdVar
  loc_B3DC60: FLdRfVar var_A8
  loc_B3DC63: FLdRfVar var_90
  loc_B3DC66: FLdRfVar var_88
  loc_B3DC69: ImpAdLdRf MemVar_C3D74C
  loc_B3DC6C: NewIfNullPr bscProveedor
  loc_B3DC6F: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3DC74: FLdPr var_88
  loc_B3DC77: from_stack_1v = clsbase.RsFrmGet()
  loc_B3DC7C: FLdPr var_90
  loc_B3DC7F:  = Me.Fields
  loc_B3DC84: FLdPr var_A8
  loc_B3DC87: from_stack_2 = Me.Item(from_stack_1)
  loc_B3DC8C: FLdPr var_BC
  loc_B3DC8F:  = Me.Value
  loc_B3DC94: FLdRfVar var_CC
  loc_B3DC97: CStrVarTmp
  loc_B3DC98: FStStrNoPop var_98
  loc_B3DC9B: FLdPr Me
  loc_B3DC9E: VCallAd Control_ID_DetaProvLbl
  loc_B3DCA1: FStAdFunc var_D0
  loc_B3DCA4: FLdPr var_D0
  loc_B3DCA7: Me.Caption = from_stack_1
  loc_B3DCAC: FFree1Str var_98
  loc_B3DCAF: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B3DCBC: FFree1Var var_CC = ""
  loc_B3DCBF: LitStr vbNullString
  loc_B3DCC2: FLdPr Me
  loc_B3DCC5: MemStStrCopy
  loc_B3DCC9: FLdPr Me
  loc_B3DCCC: VCallAd Control_ID_CucuPersTxt
  loc_B3DCCF: FStAdFunc var_BC
  loc_B3DCD2: FLdPr Me
  loc_B3DCD5: VCallAd Control_ID_DetaProvLbl
  loc_B3DCD8: FStAdFunc var_A8
  loc_B3DCDB: FLdRfVar var_A8
  loc_B3DCDE: FLdZeroAd var_BC
  loc_B3DCE1: FStAdFuncNoPop
  loc_B3DCE4: CastAd
  loc_B3DCE7: FStAdFunc var_90
  loc_B3DCEA: FLdRfVar var_90
  loc_B3DCED: FLdPr Me
  loc_B3DCF0: MemLdRfVar from_stack_1.global_68
  loc_B3DCF3: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B3DCF8: IStI2 Cancel
  loc_B3DCFB: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3DD06: Branch loc_B3DF68
  loc_B3DD09: FLdRfVar var_A4
  loc_B3DD0C: FLdRfVar var_90
  loc_B3DD0F: FLdRfVar var_88
  loc_B3DD12: ImpAdLdRf MemVar_C3D74C
  loc_B3DD15: NewIfNullPr bscProveedor
  loc_B3DD18: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3DD1D: FLdPr var_88
  loc_B3DD20: from_stack_1v = clsbase.RsFrmGet()
  loc_B3DD25: FLdPr var_90
  loc_B3DD28:  = Me.RecordCount
  loc_B3DD2D: ILdRf var_A4
  loc_B3DD30: LitI4 1
  loc_B3DD35: GtI4
  loc_B3DD36: FFreeAd var_88 = ""
  loc_B3DD3D: BranchF loc_B3DEEA
  loc_B3DD40: LitVar_Missing var_E0
  loc_B3DD43: PopAdLdVar
  loc_B3DD44: LitVarI4
  loc_B3DD4C: PopAdLdVar
  loc_B3DD4D: ImpAdLdRf MemVar_C3D74C
  loc_B3DD50: NewIfNullPr bscProveedor
  loc_B3DD53: bscProveedor.Show from_stack_1, from_stack_2
  loc_B3DD58: FLdRfVar var_A4
  loc_B3DD5B: FLdRfVar var_88
  loc_B3DD5E: ImpAdLdRf MemVar_C3D74C
  loc_B3DD61: NewIfNullPr bscProveedor
  loc_B3DD64: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3DD69: FLdPr var_88
  loc_B3DD6C: from_stack_1 = clsbase.RecordCount
  loc_B3DD71: ILdRf var_A4
  loc_B3DD74: LitI4 0
  loc_B3DD79: GtI4
  loc_B3DD7A: FFree1Ad var_88
  loc_B3DD7D: BranchF loc_B3DEA0
  loc_B3DD80: FLdRfVar var_CC
  loc_B3DD83: FLdRfVar var_BC
  loc_B3DD86: LitVarStr var_B8, "CucuPers"
  loc_B3DD8B: PopAdLdVar
  loc_B3DD8C: FLdRfVar var_A8
  loc_B3DD8F: FLdRfVar var_90
  loc_B3DD92: FLdRfVar var_88
  loc_B3DD95: ImpAdLdRf MemVar_C3D74C
  loc_B3DD98: NewIfNullPr bscProveedor
  loc_B3DD9B: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3DDA0: FLdPr var_88
  loc_B3DDA3: from_stack_1v = clsbase.RsFrmGet()
  loc_B3DDA8: FLdPr var_90
  loc_B3DDAB:  = Me.Fields
  loc_B3DDB0: FLdPr var_A8
  loc_B3DDB3: from_stack_2 = Me.Item(from_stack_1)
  loc_B3DDB8: FLdPr var_BC
  loc_B3DDBB:  = Me.Value
  loc_B3DDC0: FLdRfVar var_CC
  loc_B3DDC3: CStrVarTmp
  loc_B3DDC4: FStStrNoPop var_98
  loc_B3DDC7: FLdPr Me
  loc_B3DDCA: VCallAd Control_ID_CucuPersTxt
  loc_B3DDCD: FStAdFunc var_D0
  loc_B3DDD0: FLdPr var_D0
  loc_B3DDD3: Me.Text = from_stack_1
  loc_B3DDD8: FFree1Str var_98
  loc_B3DDDB: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B3DDE8: FFree1Var var_CC = ""
  loc_B3DDEB: FLdRfVar var_CC
  loc_B3DDEE: FLdRfVar var_BC
  loc_B3DDF1: LitVarStr var_B8, "DetaProv"
  loc_B3DDF6: PopAdLdVar
  loc_B3DDF7: FLdRfVar var_A8
  loc_B3DDFA: FLdRfVar var_90
  loc_B3DDFD: FLdRfVar var_88
  loc_B3DE00: ImpAdLdRf MemVar_C3D74C
  loc_B3DE03: NewIfNullPr bscProveedor
  loc_B3DE06: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3DE0B: FLdPr var_88
  loc_B3DE0E: from_stack_1v = clsbase.RsFrmGet()
  loc_B3DE13: FLdPr var_90
  loc_B3DE16:  = Me.Fields
  loc_B3DE1B: FLdPr var_A8
  loc_B3DE1E: from_stack_2 = Me.Item(from_stack_1)
  loc_B3DE23: FLdPr var_BC
  loc_B3DE26:  = Me.Value
  loc_B3DE2B: FLdRfVar var_CC
  loc_B3DE2E: CStrVarTmp
  loc_B3DE2F: FStStrNoPop var_98
  loc_B3DE32: FLdPr Me
  loc_B3DE35: VCallAd Control_ID_DetaProvLbl
  loc_B3DE38: FStAdFunc var_D0
  loc_B3DE3B: FLdPr var_D0
  loc_B3DE3E: Me.Caption = from_stack_1
  loc_B3DE43: FFree1Str var_98
  loc_B3DE46: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B3DE53: FFree1Var var_CC = ""
  loc_B3DE56: LitStr vbNullString
  loc_B3DE59: FLdPr Me
  loc_B3DE5C: MemStStrCopy
  loc_B3DE60: FLdPr Me
  loc_B3DE63: VCallAd Control_ID_CucuPersTxt
  loc_B3DE66: FStAdFunc var_BC
  loc_B3DE69: FLdPr Me
  loc_B3DE6C: VCallAd Control_ID_DetaProvLbl
  loc_B3DE6F: FStAdFunc var_A8
  loc_B3DE72: FLdRfVar var_A8
  loc_B3DE75: FLdZeroAd var_BC
  loc_B3DE78: FStAdFuncNoPop
  loc_B3DE7B: CastAd
  loc_B3DE7E: FStAdFunc var_90
  loc_B3DE81: FLdRfVar var_90
  loc_B3DE84: FLdPr Me
  loc_B3DE87: MemLdRfVar from_stack_1.global_68
  loc_B3DE8A: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B3DE8F: IStI2 Cancel
  loc_B3DE92: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3DE9D: Branch loc_B3DEE7
  loc_B3DEA0: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B3DEA3: FLdPr Me
  loc_B3DEA6: MemStStrCopy
  loc_B3DEAA: FLdPr Me
  loc_B3DEAD: VCallAd Control_ID_CucuPersTxt
  loc_B3DEB0: FStAdFunc var_BC
  loc_B3DEB3: FLdPr Me
  loc_B3DEB6: VCallAd Control_ID_DetaProvLbl
  loc_B3DEB9: FStAdFunc var_A8
  loc_B3DEBC: FLdRfVar var_A8
  loc_B3DEBF: FLdZeroAd var_BC
  loc_B3DEC2: FStAdFuncNoPop
  loc_B3DEC5: CastAd
  loc_B3DEC8: FStAdFunc var_90
  loc_B3DECB: FLdRfVar var_90
  loc_B3DECE: FLdPr Me
  loc_B3DED1: MemLdRfVar from_stack_1.global_68
  loc_B3DED4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B3DED9: IStI2 Cancel
  loc_B3DEDC: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3DEE7: Branch loc_B3DF68
  loc_B3DEEA: FLdRfVar var_A4
  loc_B3DEED: FLdRfVar var_90
  loc_B3DEF0: FLdRfVar var_88
  loc_B3DEF3: ImpAdLdRf MemVar_C3D74C
  loc_B3DEF6: NewIfNullPr bscProveedor
  loc_B3DEF9: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3DEFE: FLdPr var_88
  loc_B3DF01: from_stack_1v = clsbase.RsFrmGet()
  loc_B3DF06: FLdPr var_90
  loc_B3DF09:  = Me.RecordCount
  loc_B3DF0E: ILdRf var_A4
  loc_B3DF11: LitI4 1
  loc_B3DF16: LtI4
  loc_B3DF17: FFreeAd var_88 = ""
  loc_B3DF1E: BranchF loc_B3DF68
  loc_B3DF21: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B3DF24: FLdPr Me
  loc_B3DF27: MemStStrCopy
  loc_B3DF2B: FLdPr Me
  loc_B3DF2E: VCallAd Control_ID_CucuPersTxt
  loc_B3DF31: FStAdFunc var_BC
  loc_B3DF34: FLdPr Me
  loc_B3DF37: VCallAd Control_ID_DetaProvLbl
  loc_B3DF3A: FStAdFunc var_A8
  loc_B3DF3D: FLdRfVar var_A8
  loc_B3DF40: FLdZeroAd var_BC
  loc_B3DF43: FStAdFuncNoPop
  loc_B3DF46: CastAd
  loc_B3DF49: FStAdFunc var_90
  loc_B3DF4C: FLdRfVar var_90
  loc_B3DF4F: FLdPr Me
  loc_B3DF52: MemLdRfVar from_stack_1.global_68
  loc_B3DF55: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B3DF5A: IStI2 Cancel
  loc_B3DF5D: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3DF68: Branch loc_B3E367
  loc_B3DF6B: FLdRfVar var_98
  loc_B3DF6E: FLdPr Me
  loc_B3DF71: VCallAd Control_ID_CucuPersTxt
  loc_B3DF74: FStAdFunc var_88
  loc_B3DF77: FLdPr var_88
  loc_B3DF7A:  = Me.Text
  loc_B3DF7F: LitStr " AND DetaProv LIKE '" & Chr(37)
  loc_B3DF82: LitI4 0
  loc_B3DF87: LitI4 -1
  loc_B3DF8C: LitI4 1
  loc_B3DF91: LitStr Chr(37)
  loc_B3DF94: LitStr " "
  loc_B3DF97: ILdRf var_98
  loc_B3DF9A: ImpAdCallI2 Replace(, , , , , )
  loc_B3DF9F: FStStrNoPop var_9C
  loc_B3DFA2: ConcatStr
  loc_B3DFA3: FStStrNoPop var_A0
  loc_B3DFA6: LitStr Chr(37) & "'"
  loc_B3DFA9: ConcatStr
  loc_B3DFAA: FStStrNoPop var_E4
  loc_B3DFAD: ImpAdLdRf MemVar_C3D74C
  loc_B3DFB0: NewIfNullPr bscProveedor
  loc_B3DFB3: Call bscProveedor.Constructor(from_stack_1v)
  loc_B3DFB8: FFreeStr var_98 = "": var_9C = "": var_A0 = ""
  loc_B3DFC3: FFree1Ad var_88
  loc_B3DFC6: FLdRfVar var_A4
  loc_B3DFC9: FLdRfVar var_90
  loc_B3DFCC: FLdRfVar var_88
  loc_B3DFCF: ImpAdLdRf MemVar_C3D74C
  loc_B3DFD2: NewIfNullPr bscProveedor
  loc_B3DFD5: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3DFDA: FLdPr var_88
  loc_B3DFDD: from_stack_1v = clsbase.RsFrmGet()
  loc_B3DFE2: FLdPr var_90
  loc_B3DFE5:  = Me.RecordCount
  loc_B3DFEA: ILdRf var_A4
  loc_B3DFED: LitI4 1
  loc_B3DFF2: EqI4
  loc_B3DFF3: FFreeAd var_88 = ""
  loc_B3DFFA: BranchF loc_B3E11D
  loc_B3DFFD: FLdRfVar var_CC
  loc_B3E000: FLdRfVar var_BC
  loc_B3E003: LitVarStr var_B8, "CucuPers"
  loc_B3E008: PopAdLdVar
  loc_B3E009: FLdRfVar var_A8
  loc_B3E00C: FLdRfVar var_90
  loc_B3E00F: FLdRfVar var_88
  loc_B3E012: ImpAdLdRf MemVar_C3D74C
  loc_B3E015: NewIfNullPr bscProveedor
  loc_B3E018: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3E01D: FLdPr var_88
  loc_B3E020: from_stack_1v = clsbase.RsFrmGet()
  loc_B3E025: FLdPr var_90
  loc_B3E028:  = Me.Fields
  loc_B3E02D: FLdPr var_A8
  loc_B3E030: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E035: FLdPr var_BC
  loc_B3E038:  = Me.Value
  loc_B3E03D: FLdRfVar var_CC
  loc_B3E040: CStrVarTmp
  loc_B3E041: FStStrNoPop var_98
  loc_B3E044: FLdPr Me
  loc_B3E047: VCallAd Control_ID_CucuPersTxt
  loc_B3E04A: FStAdFunc var_D0
  loc_B3E04D: FLdPr var_D0
  loc_B3E050: Me.Text = from_stack_1
  loc_B3E055: FFree1Str var_98
  loc_B3E058: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B3E065: FFree1Var var_CC = ""
  loc_B3E068: FLdRfVar var_CC
  loc_B3E06B: FLdRfVar var_BC
  loc_B3E06E: LitVarStr var_B8, "DetaProv"
  loc_B3E073: PopAdLdVar
  loc_B3E074: FLdRfVar var_A8
  loc_B3E077: FLdRfVar var_90
  loc_B3E07A: FLdRfVar var_88
  loc_B3E07D: ImpAdLdRf MemVar_C3D74C
  loc_B3E080: NewIfNullPr bscProveedor
  loc_B3E083: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3E088: FLdPr var_88
  loc_B3E08B: from_stack_1v = clsbase.RsFrmGet()
  loc_B3E090: FLdPr var_90
  loc_B3E093:  = Me.Fields
  loc_B3E098: FLdPr var_A8
  loc_B3E09B: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E0A0: FLdPr var_BC
  loc_B3E0A3:  = Me.Value
  loc_B3E0A8: FLdRfVar var_CC
  loc_B3E0AB: CStrVarTmp
  loc_B3E0AC: FStStrNoPop var_98
  loc_B3E0AF: FLdPr Me
  loc_B3E0B2: VCallAd Control_ID_DetaProvLbl
  loc_B3E0B5: FStAdFunc var_D0
  loc_B3E0B8: FLdPr var_D0
  loc_B3E0BB: Me.Caption = from_stack_1
  loc_B3E0C0: FFree1Str var_98
  loc_B3E0C3: FFreeAd var_88 = "": var_90 = "": var_A8 = "": var_BC = ""
  loc_B3E0D0: FFree1Var var_CC = ""
  loc_B3E0D3: LitStr vbNullString
  loc_B3E0D6: FLdPr Me
  loc_B3E0D9: MemStStrCopy
  loc_B3E0DD: FLdPr Me
  loc_B3E0E0: VCallAd Control_ID_CucuPersTxt
  loc_B3E0E3: FStAdFunc var_BC
  loc_B3E0E6: FLdPr Me
  loc_B3E0E9: VCallAd Control_ID_DetaProvLbl
  loc_B3E0EC: FStAdFunc var_A8
  loc_B3E0EF: FLdRfVar var_A8
  loc_B3E0F2: FLdZeroAd var_BC
  loc_B3E0F5: FStAdFuncNoPop
  loc_B3E0F8: CastAd
  loc_B3E0FB: FStAdFunc var_90
  loc_B3E0FE: FLdRfVar var_90
  loc_B3E101: FLdPr Me
  loc_B3E104: MemLdRfVar from_stack_1.global_68
  loc_B3E107: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B3E10C: IStI2 Cancel
  loc_B3E10F: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3E11A: Branch loc_B3E367
  loc_B3E11D: FLdRfVar var_A4
  loc_B3E120: FLdRfVar var_90
  loc_B3E123: FLdRfVar var_88
  loc_B3E126: ImpAdLdRf MemVar_C3D74C
  loc_B3E129: NewIfNullPr bscProveedor
  loc_B3E12C: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3E131: FLdPr var_88
  loc_B3E134: from_stack_1v = clsbase.RsFrmGet()
  loc_B3E139: FLdPr var_90
  loc_B3E13C:  = Me.RecordCount
  loc_B3E141: ILdRf var_A4
  loc_B3E144: LitI4 1
  loc_B3E149: GtI4
  loc_B3E14A: FFreeAd var_88 = ""
  loc_B3E151: BranchF loc_B3E2E9
  loc_B3E154: LitVar_Missing var_E0
  loc_B3E157: PopAdLdVar
  loc_B3E158: LitVarI4
  loc_B3E160: PopAdLdVar
  loc_B3E161: ImpAdLdRf MemVar_C3D74C
  loc_B3E164: NewIfNullPr bscProveedor
  loc_B3E167: bscProveedor.Show from_stack_1, from_stack_2
  loc_B3E16C: FLdRfVar var_A4
  loc_B3E16F: FLdRfVar var_88
  loc_B3E172: ImpAdLdRf MemVar_C3D74C
  loc_B3E175: NewIfNullPr bscProveedor
  loc_B3E178: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3E17D: FLdPr var_88
  loc_B3E180: from_stack_1 = clsbase.RecordCount
  loc_B3E185: ILdRf var_A4
  loc_B3E188: LitI4 0
  loc_B3E18D: GtI4
  loc_B3E18E: FFree1Ad var_88
  loc_B3E191: BranchF loc_B3E29F
  loc_B3E194: FLdRfVar var_CC
  loc_B3E197: FLdRfVar var_BC
  loc_B3E19A: LitVarStr var_B8, "CucuPers"
  loc_B3E19F: PopAdLdVar
  loc_B3E1A0: FLdRfVar var_A8
  loc_B3E1A3: FLdRfVar var_90
  loc_B3E1A6: FLdRfVar var_88
  loc_B3E1A9: ImpAdLdRf MemVar_C3D74C
  loc_B3E1AC: NewIfNullPr bscProveedor
  loc_B3E1AF: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3E1B4: FLdPr var_88
  loc_B3E1B7: from_stack_1v = clsbase.RsFrmGet()
  loc_B3E1BC: FLdPr var_90
  loc_B3E1BF:  = Me.Fields
  loc_B3E1C4: FLdPr var_A8
  loc_B3E1C7: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E1CC: FLdPr var_BC
  loc_B3E1CF:  = Me.Value
  loc_B3E1D4: FLdPr Me
  loc_B3E1D7: MemLdRfVar from_stack_1.global_80
  loc_B3E1DA: NewIfNullRf
  loc_B3E1DE: FLdRfVar var_CC
  loc_B3E1E1: CStrVarTmp
  loc_B3E1E2: FStStrNoPop var_98
  loc_B3E1E5: ImpAdCallI2 Proc_266_17_9A241C(, )
  loc_B3E1EA: FStStrNoPop var_9C
  loc_B3E1ED: FLdPr Me
  loc_B3E1F0: MemStStrCopy
  loc_B3E1F4: FFreeStr var_98 = ""
  loc_B3E1FB: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3E206: FFree1Var var_CC = ""
  loc_B3E209: FLdRfVar var_98
  loc_B3E20C: FLdPr Me
  loc_B3E20F: MemLdRfVar from_stack_1.global_80
  loc_B3E212: NewIfNullPr tblproveedor
  loc_B3E215: from_stack_1v = tblproveedor.CucuPersGet()
  loc_B3E21A: ILdRf var_98
  loc_B3E21D: FLdPr Me
  loc_B3E220: VCallAd Control_ID_CucuPersTxt
  loc_B3E223: FStAdFunc var_88
  loc_B3E226: FLdPr var_88
  loc_B3E229: Me.Text = from_stack_1
  loc_B3E22E: FFree1Str var_98
  loc_B3E231: FFree1Ad var_88
  loc_B3E234: FLdRfVar var_98
  loc_B3E237: FLdPr Me
  loc_B3E23A: MemLdRfVar from_stack_1.global_80
  loc_B3E23D: NewIfNullPr tblproveedor
  loc_B3E240: from_stack_1v = tblproveedor.DetaProvGet()
  loc_B3E245: ILdRf var_98
  loc_B3E248: FLdPr Me
  loc_B3E24B: VCallAd Control_ID_DetaProvLbl
  loc_B3E24E: FStAdFunc var_88
  loc_B3E251: FLdPr var_88
  loc_B3E254: Me.Caption = from_stack_1
  loc_B3E259: FFree1Str var_98
  loc_B3E25C: FFree1Ad var_88
  loc_B3E25F: FLdPr Me
  loc_B3E262: VCallAd Control_ID_CucuPersTxt
  loc_B3E265: FStAdFunc var_BC
  loc_B3E268: FLdPr Me
  loc_B3E26B: VCallAd Control_ID_DetaProvLbl
  loc_B3E26E: FStAdFunc var_A8
  loc_B3E271: FLdRfVar var_A8
  loc_B3E274: FLdZeroAd var_BC
  loc_B3E277: FStAdFuncNoPop
  loc_B3E27A: CastAd
  loc_B3E27D: FStAdFunc var_90
  loc_B3E280: FLdRfVar var_90
  loc_B3E283: FLdPr Me
  loc_B3E286: MemLdRfVar from_stack_1.global_68
  loc_B3E289: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B3E28E: IStI2 Cancel
  loc_B3E291: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3E29C: Branch loc_B3E2E6
  loc_B3E29F: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B3E2A2: FLdPr Me
  loc_B3E2A5: MemStStrCopy
  loc_B3E2A9: FLdPr Me
  loc_B3E2AC: VCallAd Control_ID_CucuPersTxt
  loc_B3E2AF: FStAdFunc var_BC
  loc_B3E2B2: FLdPr Me
  loc_B3E2B5: VCallAd Control_ID_DetaProvLbl
  loc_B3E2B8: FStAdFunc var_A8
  loc_B3E2BB: FLdRfVar var_A8
  loc_B3E2BE: FLdZeroAd var_BC
  loc_B3E2C1: FStAdFuncNoPop
  loc_B3E2C4: CastAd
  loc_B3E2C7: FStAdFunc var_90
  loc_B3E2CA: FLdRfVar var_90
  loc_B3E2CD: FLdPr Me
  loc_B3E2D0: MemLdRfVar from_stack_1.global_68
  loc_B3E2D3: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B3E2D8: IStI2 Cancel
  loc_B3E2DB: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3E2E6: Branch loc_B3E367
  loc_B3E2E9: FLdRfVar var_A4
  loc_B3E2EC: FLdRfVar var_90
  loc_B3E2EF: FLdRfVar var_88
  loc_B3E2F2: ImpAdLdRf MemVar_C3D74C
  loc_B3E2F5: NewIfNullPr bscProveedor
  loc_B3E2F8: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3E2FD: FLdPr var_88
  loc_B3E300: from_stack_1v = clsbase.RsFrmGet()
  loc_B3E305: FLdPr var_90
  loc_B3E308:  = Me.RecordCount
  loc_B3E30D: ILdRf var_A4
  loc_B3E310: LitI4 1
  loc_B3E315: LtI4
  loc_B3E316: FFreeAd var_88 = ""
  loc_B3E31D: BranchF loc_B3E367
  loc_B3E320: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B3E323: FLdPr Me
  loc_B3E326: MemStStrCopy
  loc_B3E32A: FLdPr Me
  loc_B3E32D: VCallAd Control_ID_CucuPersTxt
  loc_B3E330: FStAdFunc var_BC
  loc_B3E333: FLdPr Me
  loc_B3E336: VCallAd Control_ID_DetaProvLbl
  loc_B3E339: FStAdFunc var_A8
  loc_B3E33C: FLdRfVar var_A8
  loc_B3E33F: FLdZeroAd var_BC
  loc_B3E342: FStAdFuncNoPop
  loc_B3E345: CastAd
  loc_B3E348: FStAdFunc var_90
  loc_B3E34B: FLdRfVar var_90
  loc_B3E34E: FLdPr Me
  loc_B3E351: MemLdRfVar from_stack_1.global_68
  loc_B3E354: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B3E359: IStI2 Cancel
  loc_B3E35C: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3E367: Branch loc_B3E52E
  loc_B3E36A: LitI2_Byte 0
  loc_B3E36C: ImpAdLdRf MemVar_C3D74C
  loc_B3E36F: NewIfNullPr bscProveedor
  loc_B3E372: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_B3E377: LitNothing
  loc_B3E379: CastAd
  loc_B3E37C: FStAdFuncNoPop
  loc_B3E37F: FLdRfVar var_88
  loc_B3E382: ImpAdLdRf MemVar_C3D74C
  loc_B3E385: NewIfNullPr bscProveedor
  loc_B3E388: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3E38D: FLdPr var_88
  loc_B3E390: Call clsbase.RsFrmSet(from_stack_1v)
  loc_B3E395: FFreeAd var_90 = ""
  loc_B3E39C: LitVar_Missing var_E0
  loc_B3E39F: PopAdLdVar
  loc_B3E3A0: LitVarI4
  loc_B3E3A8: PopAdLdVar
  loc_B3E3A9: ImpAdLdRf MemVar_C3D74C
  loc_B3E3AC: NewIfNullPr bscProveedor
  loc_B3E3AF: bscProveedor.Show from_stack_1, from_stack_2
  loc_B3E3B4: FLdRfVar var_A4
  loc_B3E3B7: FLdRfVar var_88
  loc_B3E3BA: ImpAdLdRf MemVar_C3D74C
  loc_B3E3BD: NewIfNullPr bscProveedor
  loc_B3E3C0: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3E3C5: FLdPr var_88
  loc_B3E3C8: from_stack_1 = clsbase.RecordCount
  loc_B3E3CD: ILdRf var_A4
  loc_B3E3D0: LitI4 0
  loc_B3E3D5: GtI4
  loc_B3E3D6: FFree1Ad var_88
  loc_B3E3D9: BranchF loc_B3E4E7
  loc_B3E3DC: FLdRfVar var_CC
  loc_B3E3DF: FLdRfVar var_BC
  loc_B3E3E2: LitVarStr var_B8, "CucuPers"
  loc_B3E3E7: PopAdLdVar
  loc_B3E3E8: FLdRfVar var_A8
  loc_B3E3EB: FLdRfVar var_90
  loc_B3E3EE: FLdRfVar var_88
  loc_B3E3F1: ImpAdLdRf MemVar_C3D74C
  loc_B3E3F4: NewIfNullPr bscProveedor
  loc_B3E3F7: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B3E3FC: FLdPr var_88
  loc_B3E3FF: from_stack_1v = clsbase.RsFrmGet()
  loc_B3E404: FLdPr var_90
  loc_B3E407:  = Me.Fields
  loc_B3E40C: FLdPr var_A8
  loc_B3E40F: from_stack_2 = Me.Item(from_stack_1)
  loc_B3E414: FLdPr var_BC
  loc_B3E417:  = Me.Value
  loc_B3E41C: FLdPr Me
  loc_B3E41F: MemLdRfVar from_stack_1.global_80
  loc_B3E422: NewIfNullRf
  loc_B3E426: FLdRfVar var_CC
  loc_B3E429: CStrVarTmp
  loc_B3E42A: FStStrNoPop var_98
  loc_B3E42D: ImpAdCallI2 Proc_266_17_9A241C(, )
  loc_B3E432: FStStrNoPop var_9C
  loc_B3E435: FLdPr Me
  loc_B3E438: MemStStrCopy
  loc_B3E43C: FFreeStr var_98 = ""
  loc_B3E443: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3E44E: FFree1Var var_CC = ""
  loc_B3E451: FLdRfVar var_98
  loc_B3E454: FLdPr Me
  loc_B3E457: MemLdRfVar from_stack_1.global_80
  loc_B3E45A: NewIfNullPr tblproveedor
  loc_B3E45D: from_stack_1v = tblproveedor.CucuPersGet()
  loc_B3E462: ILdRf var_98
  loc_B3E465: FLdPr Me
  loc_B3E468: VCallAd Control_ID_CucuPersTxt
  loc_B3E46B: FStAdFunc var_88
  loc_B3E46E: FLdPr var_88
  loc_B3E471: Me.Text = from_stack_1
  loc_B3E476: FFree1Str var_98
  loc_B3E479: FFree1Ad var_88
  loc_B3E47C: FLdRfVar var_98
  loc_B3E47F: FLdPr Me
  loc_B3E482: MemLdRfVar from_stack_1.global_80
  loc_B3E485: NewIfNullPr tblproveedor
  loc_B3E488: from_stack_1v = tblproveedor.DetaProvGet()
  loc_B3E48D: ILdRf var_98
  loc_B3E490: FLdPr Me
  loc_B3E493: VCallAd Control_ID_DetaProvLbl
  loc_B3E496: FStAdFunc var_88
  loc_B3E499: FLdPr var_88
  loc_B3E49C: Me.Caption = from_stack_1
  loc_B3E4A1: FFree1Str var_98
  loc_B3E4A4: FFree1Ad var_88
  loc_B3E4A7: FLdPr Me
  loc_B3E4AA: VCallAd Control_ID_CucuPersTxt
  loc_B3E4AD: FStAdFunc var_BC
  loc_B3E4B0: FLdPr Me
  loc_B3E4B3: VCallAd Control_ID_DetaProvLbl
  loc_B3E4B6: FStAdFunc var_A8
  loc_B3E4B9: FLdRfVar var_A8
  loc_B3E4BC: FLdZeroAd var_BC
  loc_B3E4BF: FStAdFuncNoPop
  loc_B3E4C2: CastAd
  loc_B3E4C5: FStAdFunc var_90
  loc_B3E4C8: FLdRfVar var_90
  loc_B3E4CB: FLdPr Me
  loc_B3E4CE: MemLdRfVar from_stack_1.global_68
  loc_B3E4D1: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B3E4D6: IStI2 Cancel
  loc_B3E4D9: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3E4E4: Branch loc_B3E52E
  loc_B3E4E7: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B3E4EA: FLdPr Me
  loc_B3E4ED: MemStStrCopy
  loc_B3E4F1: FLdPr Me
  loc_B3E4F4: VCallAd Control_ID_CucuPersTxt
  loc_B3E4F7: FStAdFunc var_BC
  loc_B3E4FA: FLdPr Me
  loc_B3E4FD: VCallAd Control_ID_DetaProvLbl
  loc_B3E500: FStAdFunc var_A8
  loc_B3E503: FLdRfVar var_A8
  loc_B3E506: FLdZeroAd var_BC
  loc_B3E509: FStAdFuncNoPop
  loc_B3E50C: CastAd
  loc_B3E50F: FStAdFunc var_90
  loc_B3E512: FLdRfVar var_90
  loc_B3E515: FLdPr Me
  loc_B3E518: MemLdRfVar from_stack_1.global_68
  loc_B3E51B: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B3E520: IStI2 Cancel
  loc_B3E523: FFreeAd var_88 = "": var_90 = "": var_A8 = ""
  loc_B3E52E: ExitProcHresult
End Sub

Private Sub ItemNotaFlex_UnknownEvent_1 '95954C
  'Data Table: 4A77A4
  loc_959534: FLdPr Me
  loc_959537: VCallAd Control_ID_ItemNotaFlex
  loc_95953A: FStAdFunc var_88
  loc_95953D: FLdRfVar var_88
  loc_959540: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_959545: FFree1Ad var_88
  loc_959548: ExitProcHresult
End Sub

Private Sub ItemNotaFlex_UnknownEvent_8 'AE5A00
  'Data Table: 4A77A4
  loc_AE5350: FLdPr Me
  loc_AE5353: MemLdUI1 global_64
  loc_AE5357: CI2UI1
  loc_AE5359: LitI2_Byte 0
  loc_AE535B: NeI2
  loc_AE535C: BranchF loc_AE59FF
  loc_AE535F: FLdPr Me
  loc_AE5362: VCallAd Control_ID_ItemNotaFlex
  loc_AE5365: FStAdFunc var_88
  loc_AE5368: FLdPr var_88
  loc_AE536B: LateIdLdVar var_98 DispID_13 -32767
  loc_AE5372: CBoolVar
  loc_AE5374: FFree1Ad var_88
  loc_AE5377: FFree1Var var_98 = ""
  loc_AE537A: BranchF loc_AE59FF
  loc_AE537D: FLdPr Me
  loc_AE5380: VCallAd Control_ID_ItemNotaFlex
  loc_AE5383: FStAdFunc var_88
  loc_AE5386: FLdPr var_88
  loc_AE5389: LateIdLdVar var_98 DispID_10 0
  loc_AE5390: CI4Var
  loc_AE5392: LitI4 0
  loc_AE5397: GtI4
  loc_AE5398: FFree1Ad var_88
  loc_AE539B: FFree1Var var_98 = ""
  loc_AE539E: BranchF loc_AE59FF
  loc_AE53A1: FLdPr Me
  loc_AE53A4: VCallAd Control_ID_ItemNotaFlex
  loc_AE53A7: FStAdFunc var_88
  loc_AE53AA: FLdPr var_88
  loc_AE53AD: LateIdLdVar var_98 DispID_10 0
  loc_AE53B4: CI4Var
  loc_AE53B6: CVarI4
  loc_AE53BA: PopAdLdVar
  loc_AE53BB: LitVarI4
  loc_AE53C3: PopAdLdVar
  loc_AE53C4: FLdPr Me
  loc_AE53C7: VCallAd Control_ID_ItemNotaFlex
  loc_AE53CA: FStAdFunc var_DC
  loc_AE53CD: FLdPr var_DC
  loc_AE53D0: LateIdCallLdVar
  loc_AE53DA: CStrVarTmp
  loc_AE53DB: FStStrNoPop var_F0
  loc_AE53DE: LitStr vbNullString
  loc_AE53E1: NeStr
  loc_AE53E3: FFree1Str var_F0
  loc_AE53E6: FFreeAd var_88 = ""
  loc_AE53ED: FFreeVar var_98 = ""
  loc_AE53F4: BranchF loc_AE548D
  loc_AE53F7: FLdPr Me
  loc_AE53FA: VCallAd Control_ID_ItemNotaFlex
  loc_AE53FD: FStAdFunc var_88
  loc_AE5400: FLdPr var_88
  loc_AE5403: LateIdLdVar var_98 DispID_11 0
  loc_AE540A: CI4Var
  loc_AE540C: LitI4 2
  loc_AE5411: EqI4
  loc_AE5412: FFree1Ad var_88
  loc_AE5415: FFree1Var var_98 = ""
  loc_AE5418: BranchF loc_AE548D
  loc_AE541B: FLdPr Me
  loc_AE541E: VCallAd Control_ID_ItemNotaFlex
  loc_AE5421: FStAdFunc var_88
  loc_AE5424: FLdPr var_88
  loc_AE5427: LateIdLdVar var_98 DispID_0 0
  loc_AE542E: CStrVarTmp
  loc_AE542F: FStStrNoPop var_F0
  loc_AE5432: LitStr vbNullString
  loc_AE5435: NeStr
  loc_AE5437: FFree1Str var_F0
  loc_AE543A: FFree1Ad var_88
  loc_AE543D: FFree1Var var_98 = ""
  loc_AE5440: BranchF loc_AE5446
  loc_AE5443: Branch loc_AE548D
  loc_AE5446: FLdPr Me
  loc_AE5449: VCallAd Control_ID_ItemNotaFlex
  loc_AE544C: FStAdFunc var_88
  loc_AE544F: FLdPr var_88
  loc_AE5452: LateIdLdVar var_98 DispID_10 0
  loc_AE5459: CI4Var
  loc_AE545B: CVarI4
  loc_AE545F: PopAdLdVar
  loc_AE5460: LitVarI4
  loc_AE5468: PopAdLdVar
  loc_AE5469: LitVarStr var_100, vbNullString
  loc_AE546E: PopAdLdVar
  loc_AE546F: FLdPr Me
  loc_AE5472: VCallAd Control_ID_ItemNotaFlex
  loc_AE5475: FStAdFunc var_DC
  loc_AE5478: FLdPr var_DC
  loc_AE547B: LateIdCallSt
  loc_AE5483: FFreeAd var_88 = ""
  loc_AE548A: FFree1Var var_98 = ""
  loc_AE548D: FLdPr Me
  loc_AE5490: VCallAd Control_ID_ItemNotaFlex
  loc_AE5493: FStAdFunc var_88
  loc_AE5496: FLdPr var_88
  loc_AE5499: LateIdLdVar var_98 DispID_10 0
  loc_AE54A0: CI4Var
  loc_AE54A2: CVarI4
  loc_AE54A6: PopAdLdVar
  loc_AE54A7: LitVarI4
  loc_AE54AF: PopAdLdVar
  loc_AE54B0: FLdPr Me
  loc_AE54B3: VCallAd Control_ID_ItemNotaFlex
  loc_AE54B6: FStAdFunc var_DC
  loc_AE54B9: FLdPr var_DC
  loc_AE54BC: LateIdCallLdVar
  loc_AE54C6: PopAd
  loc_AE54C8: LitStr "0"
  loc_AE54CB: LitI2_Byte &HFF
  loc_AE54CD: LitI2_Byte 0
  loc_AE54CF: LitI2_Byte 0
  loc_AE54D1: FLdRfVar var_EC
  loc_AE54D4: CStrVarTmp
  loc_AE54D5: FStStrNoPop var_F0
  loc_AE54D8: LitStr "decimal"
  loc_AE54DB: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_AE54E0: FStStrNoPop var_114
  loc_AE54E3: FLdPr Me
  loc_AE54E6: MemStStrCopy
  loc_AE54EA: FFreeStr var_F0 = ""
  loc_AE54F1: FFreeAd var_88 = ""
  loc_AE54F8: FFreeVar var_98 = ""
  loc_AE54FF: FLdPr Me
  loc_AE5502: VCallAd Control_ID_ItemNotaFlex
  loc_AE5505: FStAdFunc var_11C
  loc_AE5508: LitNothing
  loc_AE550A: CastAd
  loc_AE550D: FStAdFunc var_118
  loc_AE5510: FLdRfVar var_118
  loc_AE5513: FLdZeroAd var_11C
  loc_AE5516: FStAdFuncNoPop
  loc_AE5519: CastAd
  loc_AE551C: FStAdFunc var_DC
  loc_AE551F: FLdRfVar var_DC
  loc_AE5522: FLdPr Me
  loc_AE5525: MemLdRfVar from_stack_1.global_68
  loc_AE5528: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_AE552D: IStI2 Cancel
  loc_AE5530: FFreeAd var_88 = "": var_DC = "": var_118 = ""
  loc_AE553B: ILdI2 Cancel
  loc_AE553E: BranchF loc_AE5542
  loc_AE5541: ExitProcHresult
  loc_AE5542: FLdPr Me
  loc_AE5545: VCallAd Control_ID_ItemNotaFlex
  loc_AE5548: FStAdFunc var_88
  loc_AE554B: FLdPr var_88
  loc_AE554E: LateIdLdVar var_98 DispID_10 0
  loc_AE5555: CI4Var
  loc_AE5557: CVarI4
  loc_AE555B: PopAdLdVar
  loc_AE555C: LitVarI4
  loc_AE5564: PopAdLdVar
  loc_AE5565: FLdPr Me
  loc_AE5568: VCallAd Control_ID_ItemNotaFlex
  loc_AE556B: FStAdFunc var_DC
  loc_AE556E: FLdPr var_DC
  loc_AE5571: LateIdCallLdVar
  loc_AE557B: CStrVarTmp
  loc_AE557C: CVarStr var_12C
  loc_AE557F: ImpAdCallI2 IsNumeric()
  loc_AE5584: FLdPr Me
  loc_AE5587: VCallAd Control_ID_ItemNotaFlex
  loc_AE558A: FStAdFunc var_118
  loc_AE558D: FLdPr var_118
  loc_AE5590: LateIdLdVar var_13C DispID_10 0
  loc_AE5597: CI4Var
  loc_AE5599: CVarI4
  loc_AE559D: PopAdLdVar
  loc_AE559E: LitVarI4
  loc_AE55A6: PopAdLdVar
  loc_AE55A7: FLdPr Me
  loc_AE55AA: VCallAd Control_ID_ItemNotaFlex
  loc_AE55AD: FStAdFunc var_11C
  loc_AE55B0: FLdPr var_11C
  loc_AE55B3: LateIdCallLdVar
  loc_AE55BD: CStrVarTmp
  loc_AE55BE: CVarStr var_17C
  loc_AE55C1: ImpAdCallI2 IsNumeric()
  loc_AE55C6: AndI4
  loc_AE55C7: FFreeAd var_88 = "": var_DC = "": var_118 = ""
  loc_AE55D2: FFreeVar var_98 = "": var_EC = "": var_12C = "": var_13C = "": var_16C = ""
  loc_AE55E1: BranchF loc_AE572E
  loc_AE55E4: FLdPr Me
  loc_AE55E7: VCallAd Control_ID_ItemNotaFlex
  loc_AE55EA: FStAdFunc var_88
  loc_AE55ED: FLdPr var_88
  loc_AE55F0: LateIdLdVar var_98 DispID_10 0
  loc_AE55F7: CI4Var
  loc_AE55F9: CVarI4
  loc_AE55FD: PopAdLdVar
  loc_AE55FE: LitVarI4
  loc_AE5606: PopAdLdVar
  loc_AE5607: FLdPr Me
  loc_AE560A: VCallAd Control_ID_ItemNotaFlex
  loc_AE560D: FStAdFunc var_DC
  loc_AE5610: FLdPr var_DC
  loc_AE5613: LateIdCallLdVar
  loc_AE561D: PopAd
  loc_AE561F: LitI4 3
  loc_AE5624: FLdRfVar var_EC
  loc_AE5627: CStrVarTmp
  loc_AE5628: FStStrNoPop var_F0
  loc_AE562B: CR8Str
  loc_AE562D: CVarR8
  loc_AE5631: FLdRfVar var_13C
  loc_AE5634: ImpAdCallFPR4  = Round(, )
  loc_AE5639: FLdPr Me
  loc_AE563C: VCallAd Control_ID_ItemNotaFlex
  loc_AE563F: FStAdFunc var_118
  loc_AE5642: FLdPr var_118
  loc_AE5645: LateIdLdVar var_16C DispID_10 0
  loc_AE564C: CI4Var
  loc_AE564E: CVarI4
  loc_AE5652: PopAdLdVar
  loc_AE5653: LitVarI4
  loc_AE565B: PopAdLdVar
  loc_AE565C: FLdPr Me
  loc_AE565F: VCallAd Control_ID_ItemNotaFlex
  loc_AE5662: FStAdFunc var_11C
  loc_AE5665: FLdPr var_11C
  loc_AE5668: LateIdCallLdVar
  loc_AE5672: PopAd
  loc_AE5674: LitI4 2
  loc_AE5679: FLdRfVar var_17C
  loc_AE567C: CStrVarTmp
  loc_AE567D: FStStrNoPop var_114
  loc_AE5680: CR8Str
  loc_AE5682: CVarR8
  loc_AE5686: FLdRfVar var_1BC
  loc_AE5689: ImpAdCallFPR4  = Round(, )
  loc_AE568E: FLdPr Me
  loc_AE5691: VCallAd Control_ID_ItemNotaFlex
  loc_AE5694: FStAdFunc var_210
  loc_AE5697: FLdPr var_210
  loc_AE569A: LateIdLdVar var_220 DispID_10 0
  loc_AE56A1: CI4Var
  loc_AE56A3: CVarI4
  loc_AE56A7: PopAdLdVar
  loc_AE56A8: LitVarI4
  loc_AE56B0: PopAdLdVar
  loc_AE56B1: LitI4 1
  loc_AE56B6: LitI4 1
  loc_AE56BB: LitVarStr var_1EC, "###,###,##0.00"
  loc_AE56C0: FStVarCopyObj var_1FC
  loc_AE56C3: FLdRfVar var_1FC
  loc_AE56C6: FLdRfVar var_13C
  loc_AE56C9: FLdRfVar var_1BC
  loc_AE56CC: MulVar var_1CC
  loc_AE56D0: FStVar var_1DC
  loc_AE56D4: FLdRfVar var_1DC
  loc_AE56D7: FLdRfVar var_20C
  loc_AE56DA: ImpAdCallFPR4  = Format(, )
  loc_AE56DF: FLdRfVar var_20C
  loc_AE56E2: CStrVarTmp
  loc_AE56E3: CVarStr var_270
  loc_AE56E6: PopAdLdVar
  loc_AE56E7: FLdPr Me
  loc_AE56EA: VCallAd Control_ID_ItemNotaFlex
  loc_AE56ED: FStAdFunc var_284
  loc_AE56F0: FLdPr var_284
  loc_AE56F3: LateIdCallSt
  loc_AE56FB: FFreeStr var_F0 = ""
  loc_AE5702: FFreeAd var_88 = "": var_DC = "": var_118 = "": var_11C = "": var_210 = ""
  loc_AE5711: FFreeVar var_98 = "": var_EC = "": var_12C = "": var_16C = "": var_17C = "": var_1AC = "": var_13C = "": var_1BC = "": var_1DC = "": var_1FC = "": var_220 = "": var_20C = ""
  loc_AE572E: FLdPr Me
  loc_AE5731: VCallAd Control_ID_ItemNotaFlex
  loc_AE5734: FStAdFunc var_88
  loc_AE5737: FLdPr var_88
  loc_AE573A: LateIdLdVar var_98 DispID_10 0
  loc_AE5741: CI4Var
  loc_AE5743: CVarI4
  loc_AE5747: PopAdLdVar
  loc_AE5748: LitVarI4
  loc_AE5750: PopAdLdVar
  loc_AE5751: FLdPr Me
  loc_AE5754: VCallAd Control_ID_ItemNotaFlex
  loc_AE5757: FStAdFunc var_DC
  loc_AE575A: FLdPr var_DC
  loc_AE575D: LateIdCallLdVar
  loc_AE5767: CStrVarTmp
  loc_AE5768: FStStrNoPop var_F0
  loc_AE576B: LitStr vbNullString
  loc_AE576E: NeStr
  loc_AE5770: FFree1Str var_F0
  loc_AE5773: FFreeAd var_88 = ""
  loc_AE577A: FFreeVar var_98 = ""
  loc_AE5781: BranchF loc_AE583E
  loc_AE5784: FLdPr Me
  loc_AE5787: VCallAd Control_ID_ItemNotaFlex
  loc_AE578A: FStAdFunc var_88
  loc_AE578D: FLdPr var_88
  loc_AE5790: LateIdLdVar var_98 DispID_10 0
  loc_AE5797: CI4Var
  loc_AE5799: CVarI4
  loc_AE579D: PopAdLdVar
  loc_AE579E: LitVarI4
  loc_AE57A6: PopAdLdVar
  loc_AE57A7: FLdPr Me
  loc_AE57AA: VCallAd Control_ID_ItemNotaFlex
  loc_AE57AD: FStAdFunc var_DC
  loc_AE57B0: FLdPr var_DC
  loc_AE57B3: LateIdCallLdVar
  loc_AE57BD: PopAd
  loc_AE57BF: FLdPr Me
  loc_AE57C2: VCallAd Control_ID_ItemNotaFlex
  loc_AE57C5: FStAdFunc var_118
  loc_AE57C8: FLdPr var_118
  loc_AE57CB: LateIdLdVar var_17C DispID_10 0
  loc_AE57D2: CI4Var
  loc_AE57D4: CVarI4
  loc_AE57D8: PopAdLdVar
  loc_AE57D9: LitVarI4
  loc_AE57E1: PopAdLdVar
  loc_AE57E2: LitI4 1
  loc_AE57E7: LitI4 1
  loc_AE57EC: LitVarStr var_100, "0.000"
  loc_AE57F1: FStVarCopyObj var_13C
  loc_AE57F4: FLdRfVar var_13C
  loc_AE57F7: FLdRfVar var_EC
  loc_AE57FA: CStrVarTmp
  loc_AE57FB: CVarStr var_12C
  loc_AE57FE: FLdRfVar var_16C
  loc_AE5801: ImpAdCallFPR4  = Format(, )
  loc_AE5806: FLdRfVar var_16C
  loc_AE5809: CStrVarTmp
  loc_AE580A: CVarStr var_1AC
  loc_AE580D: PopAdLdVar
  loc_AE580E: FLdPr Me
  loc_AE5811: VCallAd Control_ID_ItemNotaFlex
  loc_AE5814: FStAdFunc var_11C
  loc_AE5817: FLdPr var_11C
  loc_AE581A: LateIdCallSt
  loc_AE5822: FFreeAd var_88 = "": var_DC = "": var_118 = ""
  loc_AE582D: FFreeVar var_98 = "": var_EC = "": var_12C = "": var_13C = "": var_17C = "": var_16C = ""
  loc_AE583E: FLdPr Me
  loc_AE5841: VCallAd Control_ID_ItemNotaFlex
  loc_AE5844: FStAdFunc var_88
  loc_AE5847: FLdPr var_88
  loc_AE584A: LateIdLdVar var_98 DispID_10 0
  loc_AE5851: CI4Var
  loc_AE5853: CVarI4
  loc_AE5857: PopAdLdVar
  loc_AE5858: LitVarI4
  loc_AE5860: PopAdLdVar
  loc_AE5861: FLdPr Me
  loc_AE5864: VCallAd Control_ID_ItemNotaFlex
  loc_AE5867: FStAdFunc var_DC
  loc_AE586A: FLdPr var_DC
  loc_AE586D: LateIdCallLdVar
  loc_AE5877: PopAd
  loc_AE5879: LitStr "9999999999"
  loc_AE587C: LitI2_Byte &HFF
  loc_AE587E: LitI2_Byte 0
  loc_AE5880: LitI2_Byte 0
  loc_AE5882: FLdRfVar var_EC
  loc_AE5885: CStrVarTmp
  loc_AE5886: FStStrNoPop var_F0
  loc_AE5889: LitStr "importe"
  loc_AE588C: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_AE5891: FStStrNoPop var_114
  loc_AE5894: FLdPr Me
  loc_AE5897: MemStStrCopy
  loc_AE589B: FFreeStr var_F0 = ""
  loc_AE58A2: FFreeAd var_88 = ""
  loc_AE58A9: FFreeVar var_98 = ""
  loc_AE58B0: FLdPr Me
  loc_AE58B3: VCallAd Control_ID_ItemNotaFlex
  loc_AE58B6: FStAdFunc var_11C
  loc_AE58B9: LitNothing
  loc_AE58BB: CastAd
  loc_AE58BE: FStAdFunc var_118
  loc_AE58C1: FLdRfVar var_118
  loc_AE58C4: FLdZeroAd var_11C
  loc_AE58C7: FStAdFuncNoPop
  loc_AE58CA: CastAd
  loc_AE58CD: FStAdFunc var_DC
  loc_AE58D0: FLdRfVar var_DC
  loc_AE58D3: FLdPr Me
  loc_AE58D6: MemLdRfVar from_stack_1.global_68
  loc_AE58D9: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_AE58DE: IStI2 Cancel
  loc_AE58E1: FFreeAd var_88 = "": var_DC = "": var_118 = ""
  loc_AE58EC: ILdI2 Cancel
  loc_AE58EF: BranchF loc_AE58F3
  loc_AE58F2: ExitProcHresult
  loc_AE58F3: FLdPr Me
  loc_AE58F6: VCallAd Control_ID_ItemNotaFlex
  loc_AE58F9: FStAdFunc var_88
  loc_AE58FC: FLdPr var_88
  loc_AE58FF: LateIdLdVar var_98 DispID_10 0
  loc_AE5906: CI4Var
  loc_AE5908: CVarI4
  loc_AE590C: PopAdLdVar
  loc_AE590D: LitVarI4
  loc_AE5915: PopAdLdVar
  loc_AE5916: FLdPr Me
  loc_AE5919: VCallAd Control_ID_ItemNotaFlex
  loc_AE591C: FStAdFunc var_DC
  loc_AE591F: FLdPr var_DC
  loc_AE5922: LateIdCallLdVar
  loc_AE592C: CStrVarTmp
  loc_AE592D: FStStrNoPop var_F0
  loc_AE5930: LitStr vbNullString
  loc_AE5933: NeStr
  loc_AE5935: FFree1Str var_F0
  loc_AE5938: FFreeAd var_88 = ""
  loc_AE593F: FFreeVar var_98 = ""
  loc_AE5946: BranchF loc_AE59FA
  loc_AE5949: FLdPr Me
  loc_AE594C: VCallAd Control_ID_ItemNotaFlex
  loc_AE594F: FStAdFunc var_88
  loc_AE5952: FLdPr var_88
  loc_AE5955: LateIdLdVar var_98 DispID_10 0
  loc_AE595C: CI4Var
  loc_AE595E: CVarI4
  loc_AE5962: PopAdLdVar
  loc_AE5963: LitVarI4
  loc_AE596B: PopAdLdVar
  loc_AE596C: FLdPr Me
  loc_AE596F: VCallAd Control_ID_ItemNotaFlex
  loc_AE5972: FStAdFunc var_DC
  loc_AE5975: FLdPr var_DC
  loc_AE5978: LateIdCallLdVar
  loc_AE5982: PopAd
  loc_AE5984: FLdPr Me
  loc_AE5987: VCallAd Control_ID_ItemNotaFlex
  loc_AE598A: FStAdFunc var_118
  loc_AE598D: FLdPr var_118
  loc_AE5990: LateIdLdVar var_16C DispID_10 0
  loc_AE5997: CI4Var
  loc_AE5999: CVarI4
  loc_AE599D: PopAdLdVar
  loc_AE599E: LitVarI4
  loc_AE59A6: PopAdLdVar
  loc_AE59A7: LitI4 1
  loc_AE59AC: LitI4 1
  loc_AE59B1: LitVarStr var_100, "###,###,##0.00"
  loc_AE59B6: FStVarCopyObj var_13C
  loc_AE59B9: FLdRfVar var_13C
  loc_AE59BC: FLdRfVar var_EC
  loc_AE59BF: CStrVarTmp
  loc_AE59C0: CVarStr var_12C
  loc_AE59C3: ImpAdCallI2 Format$(, )
  loc_AE59C8: CVarStr var_17C
  loc_AE59CB: PopAdLdVar
  loc_AE59CC: FLdPr Me
  loc_AE59CF: VCallAd Control_ID_ItemNotaFlex
  loc_AE59D2: FStAdFunc var_11C
  loc_AE59D5: FLdPr var_11C
  loc_AE59D8: LateIdCallSt
  loc_AE59E0: FFreeAd var_88 = "": var_DC = "": var_118 = ""
  loc_AE59EB: FFreeVar var_98 = "": var_EC = "": var_12C = "": var_13C = "": var_16C = ""
  loc_AE59FA: Call Proc_108_33_A3C16C()
  loc_AE59FF: ExitProcHresult
End Sub

Private Sub ItemNotaFlex_KeyDown(KeyCode As Integer, Shift As Integer) 'A52DE0
  'Data Table: 4A77A4
  loc_A52B70: FLdPr Me
  loc_A52B73: MemLdUI1 global_64
  loc_A52B77: CI2UI1
  loc_A52B79: LitI2_Byte 0
  loc_A52B7B: NeI2
  loc_A52B7C: BranchF loc_A52C7A
  loc_A52B7F: ILdI2 KeyCode
  loc_A52B82: CI4UI1
  loc_A52B83: LitI4 &H2E
  loc_A52B88: EqI4
  loc_A52B89: BranchF loc_A52C7A
  loc_A52B8C: FLdPr Me
  loc_A52B8F: VCallAd Control_ID_ItemNotaFlex
  loc_A52B92: FStAdFunc var_88
  loc_A52B95: FLdPr var_88
  loc_A52B98: LateIdLdVar var_98 DispID_10 0
  loc_A52B9F: CI4Var
  loc_A52BA1: LitI4 0
  loc_A52BA6: NeI4
  loc_A52BA7: FFree1Ad var_88
  loc_A52BAA: FFree1Var var_98 = ""
  loc_A52BAD: BranchF loc_A52C7A
  loc_A52BB0: FLdPr Me
  loc_A52BB3: VCallAd Control_ID_ItemNotaFlex
  loc_A52BB6: FStAdFunc var_88
  loc_A52BB9: FLdPr var_88
  loc_A52BBC: LateIdLdVar var_98 DispID_10 0
  loc_A52BC3: CI4Var
  loc_A52BC5: CVarI4
  loc_A52BC9: PopAdLdVar
  loc_A52BCA: LitVarI4
  loc_A52BD2: PopAdLdVar
  loc_A52BD3: FLdPr Me
  loc_A52BD6: VCallAd Control_ID_ItemNotaFlex
  loc_A52BD9: FStAdFunc var_DC
  loc_A52BDC: FLdPr var_DC
  loc_A52BDF: LateIdCallLdVar
  loc_A52BE9: CStrVarTmp
  loc_A52BEA: FStStrNoPop var_F0
  loc_A52BED: LitStr "No"
  loc_A52BF0: EqStr
  loc_A52BF2: FFree1Str var_F0
  loc_A52BF5: FFreeAd var_88 = ""
  loc_A52BFC: FFreeVar var_98 = ""
  loc_A52C03: BranchF loc_A52C49
  loc_A52C06: OnErrorGoto loc_A52C7A
  loc_A52C09: FLdPr Me
  loc_A52C0C: VCallAd Control_ID_ItemNotaFlex
  loc_A52C0F: FStAdFunc var_88
  loc_A52C12: FLdPr var_88
  loc_A52C15: LateIdLdVar var_98 DispID_10 0
  loc_A52C1C: CI4Var
  loc_A52C1E: CVarI4
  loc_A52C22: PopAdLdVar
  loc_A52C23: FLdPr Me
  loc_A52C26: VCallAd Control_ID_ItemNotaFlex
  loc_A52C29: FStAdFunc var_DC
  loc_A52C2C: FLdPr var_DC
  loc_A52C2F: LateIdCall
  loc_A52C37: FFreeAd var_88 = ""
  loc_A52C3E: FFree1Var var_98 = ""
  loc_A52C41: Call Proc_108_33_A3C16C()
  loc_A52C46: Branch loc_A52C7A
  loc_A52C49: LitStr "No se puede modificar la cotización porque esta incluida en una orden de compra"
  loc_A52C4C: FLdPr Me
  loc_A52C4F: MemStStrCopy
  loc_A52C53: LitI4 0
  loc_A52C58: FLdPr Me
  loc_A52C5B: MemLdStr global_68
  loc_A52C5E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A52C63: FLdPr Me
  loc_A52C66: VCallAd Control_ID_ItemNotaFlex
  loc_A52C69: FStAdFunc var_88
  loc_A52C6C: FLdPr var_88
  loc_A52C6F: LateIdCall
  loc_A52C77: FFree1Ad var_88
  loc_A52C7A: FLdRfVar var_F4
  loc_A52C7D: ImpAdCallI2 Err 'rtcErrObj
  loc_A52C82: FStAdFunc var_88
  loc_A52C85: FLdPr var_88
  loc_A52C88:  = Err.Number
  loc_A52C8D: ILdRf var_F4
  loc_A52C90: LitI4 &H753F
  loc_A52C95: EqI4
  loc_A52C96: FFree1Ad var_88
  loc_A52C99: BranchF loc_A52DDF
  loc_A52C9C: Call Proc_108_31_A1F868()
  loc_A52CA1: LitVarStr var_A8, "1"
  loc_A52CA6: LitI4 9
  loc_A52CAB: FLdRfVar var_98
  loc_A52CAE: ImpAdCallFPR4  = Chr()
  loc_A52CB3: FLdRfVar var_98
  loc_A52CB6: ConcatVar var_EC
  loc_A52CBA: LitVarStr var_B8, vbNullString
  loc_A52CBF: ConcatVar var_104
  loc_A52CC3: LitI4 9
  loc_A52CC8: FLdRfVar var_114
  loc_A52CCB: ImpAdCallFPR4  = Chr()
  loc_A52CD0: FLdRfVar var_114
  loc_A52CD3: ConcatVar var_124
  loc_A52CD7: LitVarStr var_C8, vbNullString
  loc_A52CDC: ConcatVar var_134
  loc_A52CE0: LitI4 9
  loc_A52CE5: FLdRfVar var_144
  loc_A52CE8: ImpAdCallFPR4  = Chr()
  loc_A52CED: FLdRfVar var_144
  loc_A52CF0: ConcatVar var_154
  loc_A52CF4: LitVarStr var_D8, vbNullString
  loc_A52CF9: ConcatVar var_164
  loc_A52CFD: LitI4 9
  loc_A52D02: FLdRfVar var_174
  loc_A52D05: ImpAdCallFPR4  = Chr()
  loc_A52D0A: FLdRfVar var_174
  loc_A52D0D: ConcatVar var_184
  loc_A52D11: LitVarStr var_194, " "
  loc_A52D16: ConcatVar var_1A4
  loc_A52D1A: LitI4 9
  loc_A52D1F: FLdRfVar var_1B4
  loc_A52D22: ImpAdCallFPR4  = Chr()
  loc_A52D27: FLdRfVar var_1B4
  loc_A52D2A: ConcatVar var_1C4
  loc_A52D2E: LitVarStr var_1D4, vbNullString
  loc_A52D33: ConcatVar var_1E4
  loc_A52D37: LitI4 9
  loc_A52D3C: FLdRfVar var_1F4
  loc_A52D3F: ImpAdCallFPR4  = Chr()
  loc_A52D44: FLdRfVar var_1F4
  loc_A52D47: ConcatVar var_204
  loc_A52D4B: LitVarStr var_214, vbNullString
  loc_A52D50: ConcatVar var_224
  loc_A52D54: LitI4 9
  loc_A52D59: FLdRfVar var_234
  loc_A52D5C: ImpAdCallFPR4  = Chr()
  loc_A52D61: FLdRfVar var_234
  loc_A52D64: ConcatVar var_244
  loc_A52D68: LitVarStr var_254, vbNullString
  loc_A52D6D: ConcatVar var_264
  loc_A52D71: LitI4 9
  loc_A52D76: FLdRfVar var_274
  loc_A52D79: ImpAdCallFPR4  = Chr()
  loc_A52D7E: FLdRfVar var_274
  loc_A52D81: ConcatVar var_284
  loc_A52D85: LitVarStr var_294, "No"
  loc_A52D8A: ConcatVar var_2A4
  loc_A52D8E: CStrVarTmp
  loc_A52D8F: CVarStr var_2B4
  loc_A52D92: PopAdLdVar
  loc_A52D93: FLdPr Me
  loc_A52D96: VCallAd Control_ID_ItemNotaFlex
  loc_A52D99: FStAdFunc var_88
  loc_A52D9C: FLdPr var_88
  loc_A52D9F: LateIdCall
  loc_A52DA7: FFree1Ad var_88
  loc_A52DAA: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_114 = "": var_124 = "": var_134 = "": var_144 = "": var_154 = "": var_164 = "": var_174 = "": var_184 = "": var_1A4 = "": var_1B4 = "": var_1C4 = "": var_1E4 = "": var_1F4 = "": var_204 = "": var_224 = "": var_234 = "": var_244 = "": var_264 = "": var_274 = "": var_284 = "": var_2A4 = ""
  loc_A52DDF: ExitProcHresult
End Sub

Private Sub ItemNotaFlex_DblClick() '9E3EA4
  'Data Table: 4A77A4
  loc_9E3D94: FLdPr Me
  loc_9E3D97: MemLdUI1 global_64
  loc_9E3D9B: CI2UI1
  loc_9E3D9D: LitI2_Byte 0
  loc_9E3D9F: NeI2
  loc_9E3DA0: BranchF loc_9E3EA3
  loc_9E3DA3: FLdPr Me
  loc_9E3DA6: VCallAd Control_ID_ItemNotaFlex
  loc_9E3DA9: FStAdFunc var_88
  loc_9E3DAC: FLdPr var_88
  loc_9E3DAF: LateIdLdVar var_98 DispID_10 0
  loc_9E3DB6: CI4Var
  loc_9E3DB8: CVarI4
  loc_9E3DBC: PopAdLdVar
  loc_9E3DBD: LitVarI4
  loc_9E3DC5: PopAdLdVar
  loc_9E3DC6: FLdPr Me
  loc_9E3DC9: VCallAd Control_ID_ItemNotaFlex
  loc_9E3DCC: FStAdFunc var_DC
  loc_9E3DCF: FLdPr var_DC
  loc_9E3DD2: LateIdCallLdVar
  loc_9E3DDC: CStrVarTmp
  loc_9E3DDD: FStStrNoPop var_F0
  loc_9E3DE0: ImpAdLdRf MemVar_C3D814
  loc_9E3DE3: NewIfNullPr dlgDetalleNotaPedido
  loc_9E3DE6: VCallAd Control_ID_CaraItnoTxt
  loc_9E3DE9: FStAdFunc var_F4
  loc_9E3DEC: FLdPr var_F4
  loc_9E3DEF: dlgDetalleNotaPedido.TextBox.Text = from_stack_1
  loc_9E3DF4: FFree1Str var_F0
  loc_9E3DF7: FFreeAd var_88 = "": var_DC = ""
  loc_9E3E00: FFreeVar var_98 = ""
  loc_9E3E07: LitStr "Detalle del Item de Cotización"
  loc_9E3E0A: ImpAdLdRf MemVar_C3D814
  loc_9E3E0D: NewIfNullPr dlgDetalleNotaPedido
  loc_9E3E10: dlgDetalleNotaPedido.Caption = from_stack_1
  loc_9E3E15: LitVar_Missing var_B8
  loc_9E3E18: PopAdLdVar
  loc_9E3E19: LitVarI4
  loc_9E3E21: PopAdLdVar
  loc_9E3E22: ImpAdLdRf MemVar_C3D814
  loc_9E3E25: NewIfNullPr dlgDetalleNotaPedido
  loc_9E3E28: dlgDetalleNotaPedido.Show from_stack_1, from_stack_2
  loc_9E3E2D: FLdRfVar var_F0
  loc_9E3E30: ImpAdLdRf MemVar_C3D814
  loc_9E3E33: NewIfNullPr dlgDetalleNotaPedido
  loc_9E3E36: from_stack_1v = dlgDetalleNotaPedido.sPasaDetalleGet()
  loc_9E3E3B: ILdRf var_F0
  loc_9E3E3E: LitStr vbNullString
  loc_9E3E41: NeStr
  loc_9E3E43: FFree1Str var_F0
  loc_9E3E46: BranchF loc_9E3EA3
  loc_9E3E49: FLdPr Me
  loc_9E3E4C: VCallAd Control_ID_
  loc_9E3E4F: FStAdFunc var_88
  loc_9E3E52: FLdPr var_88
  loc_9E3E55: LateIdLdVar var_98 DispID_10 0
  loc_9E3E5C: CI4Var
  loc_9E3E5E: CVarI4
  loc_9E3E62: PopAdLdVar
  loc_9E3E63: LitVarI4
  loc_9E3E6B: PopAdLdVar
  loc_9E3E6C: FLdRfVar var_F0
  loc_9E3E6F: ImpAdLdRf MemVar_C3D814
  loc_9E3E72: NewIfNullPr dlgDetalleNotaPedido
  loc_9E3E75: from_stack_1v = dlgDetalleNotaPedido.sPasaDetalleGet()
  loc_9E3E7A: FLdZeroAd var_F0
  loc_9E3E7D: CVarStr var_EC
  loc_9E3E80: PopAdLdVar
  loc_9E3E81: FLdPr Me
  loc_9E3E84: VCallAd Control_ID_
  loc_9E3E87: FStAdFunc var_DC
  loc_9E3E8A: FLdPr var_DC
  loc_9E3E8D: LateIdCallSt
  loc_9E3E95: FFreeAd var_88 = ""
  loc_9E3E9C: FFreeVar var_98 = ""
  loc_9E3EA3: ExitProcHresult
End Sub

Private Sub ItemNotaFlex_KeyPress(KeyAscii As Integer) 'BE56A0
  'Data Table: 4A77A4
  loc_BE3D8C: FLdPr Me
  loc_BE3D8F: MemLdUI1 global_64
  loc_BE3D93: CI2UI1
  loc_BE3D95: LitI2_Byte 0
  loc_BE3D97: NeI2
  loc_BE3D98: BranchF loc_BE569E
  loc_BE3D9B: ILdI2 KeyAscii
  loc_BE3D9E: LitI2_Byte &HD
  loc_BE3DA0: EqI2
  loc_BE3DA1: BranchF loc_BE497A
  loc_BE3DA4: FLdPr Me
  loc_BE3DA7: VCallAd Control_ID_ItemNotaFlex
  loc_BE3DAA: FStAdFunc var_C0
  loc_BE3DAD: FLdPr var_C0
  loc_BE3DB0: LateIdLdVar var_D0 DispID_10 0
  loc_BE3DB7: CI4Var
  loc_BE3DB9: CVarI4
  loc_BE3DBD: PopAdLdVar
  loc_BE3DBE: LitVarI4
  loc_BE3DC6: PopAdLdVar
  loc_BE3DC7: FLdPr Me
  loc_BE3DCA: VCallAd Control_ID_ItemNotaFlex
  loc_BE3DCD: FStAdFunc var_114
  loc_BE3DD0: FLdPr var_114
  loc_BE3DD3: LateIdCallLdVar
  loc_BE3DDD: CStrVarTmp
  loc_BE3DDE: FStStrNoPop var_128
  loc_BE3DE1: LitStr "Si"
  loc_BE3DE4: EqStr
  loc_BE3DE6: FFree1Str var_128
  loc_BE3DE9: FFreeAd var_C0 = ""
  loc_BE3DF0: FFreeVar var_D0 = ""
  loc_BE3DF7: BranchF loc_BE3E74
  loc_BE3DFA: LitStr "Municipalidad de Guaymallén"
  loc_BE3DFD: LitStr "Municipalidad de Santa Rosa"
  loc_BE3E00: EqStr
  loc_BE3E02: LitStr "Municipalidad de Guaymallén"
  loc_BE3E05: LitStr "Municipalidad de Maipú"
  loc_BE3E08: EqStr
  loc_BE3E0A: OrI4
  loc_BE3E0B: BranchF loc_BE3E42
  loc_BE3E0E: LitStr "Advertencia: La cotización está incluida en una Orden de Compra. Verifique..."
  loc_BE3E11: FLdPr Me
  loc_BE3E14: MemStStrCopy
  loc_BE3E18: LitI4 0
  loc_BE3E1D: FLdPr Me
  loc_BE3E20: MemLdStr global_68
  loc_BE3E23: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE3E28: FLdPr Me
  loc_BE3E2B: VCallAd Control_ID_ItemNotaFlex
  loc_BE3E2E: FStAdFunc var_C0
  loc_BE3E31: FLdPr var_C0
  loc_BE3E34: LateIdCall
  loc_BE3E3C: FFree1Ad var_C0
  loc_BE3E3F: Branch loc_BE3E74
  loc_BE3E42: LitStr "La cotización está incluida en una orden de compra. Verifique..."
  loc_BE3E45: FLdPr Me
  loc_BE3E48: MemStStrCopy
  loc_BE3E4C: LitI4 0
  loc_BE3E51: FLdPr Me
  loc_BE3E54: MemLdStr global_68
  loc_BE3E57: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE3E5C: FLdPr Me
  loc_BE3E5F: VCallAd Control_ID_ItemNotaFlex
  loc_BE3E62: FStAdFunc var_C0
  loc_BE3E65: FLdPr var_C0
  loc_BE3E68: LateIdCall
  loc_BE3E70: FFree1Ad var_C0
  loc_BE3E73: ExitProcHresult
  loc_BE3E74: FLdPr Me
  loc_BE3E77: VCallAd Control_ID_ItemNotaFlex
  loc_BE3E7A: FStAdFunc var_C0
  loc_BE3E7D: FLdPr var_C0
  loc_BE3E80: LateIdLdVar var_D0 DispID_10 0
  loc_BE3E87: CI4Var
  loc_BE3E89: CVarI4
  loc_BE3E8D: PopAdLdVar
  loc_BE3E8E: LitVarI4
  loc_BE3E96: PopAdLdVar
  loc_BE3E97: FLdPr Me
  loc_BE3E9A: VCallAd Control_ID_ItemNotaFlex
  loc_BE3E9D: FStAdFunc var_114
  loc_BE3EA0: FLdPr var_114
  loc_BE3EA3: LateIdCallLdVar
  loc_BE3EAD: CStrVarTmp
  loc_BE3EAE: FStStr var_90
  loc_BE3EB1: FFreeAd var_C0 = ""
  loc_BE3EB8: FFreeVar var_D0 = ""
  loc_BE3EBF: FLdPr Me
  loc_BE3EC2: VCallAd Control_ID_ItemNotaFlex
  loc_BE3EC5: FStAdFunc var_C0
  loc_BE3EC8: FLdPr var_C0
  loc_BE3ECB: LateIdLdVar var_D0 DispID_10 0
  loc_BE3ED2: CI4Var
  loc_BE3ED4: CVarI4
  loc_BE3ED8: PopAdLdVar
  loc_BE3ED9: LitVarI4
  loc_BE3EE1: PopAdLdVar
  loc_BE3EE2: FLdPr Me
  loc_BE3EE5: VCallAd Control_ID_ItemNotaFlex
  loc_BE3EE8: FStAdFunc var_114
  loc_BE3EEB: FLdPr var_114
  loc_BE3EEE: LateIdCallLdVar
  loc_BE3EF8: CStrVarTmp
  loc_BE3EF9: FStStr var_94
  loc_BE3EFC: FFreeAd var_C0 = ""
  loc_BE3F03: FFreeVar var_D0 = ""
  loc_BE3F0A: FLdPr Me
  loc_BE3F0D: VCallAd Control_ID_ItemNotaFlex
  loc_BE3F10: FStAdFunc var_C0
  loc_BE3F13: FLdPr var_C0
  loc_BE3F16: LateIdLdVar var_D0 DispID_10 0
  loc_BE3F1D: CI4Var
  loc_BE3F1F: CVarI4
  loc_BE3F23: PopAdLdVar
  loc_BE3F24: LitVarI4
  loc_BE3F2C: PopAdLdVar
  loc_BE3F2D: FLdPr Me
  loc_BE3F30: VCallAd Control_ID_ItemNotaFlex
  loc_BE3F33: FStAdFunc var_114
  loc_BE3F36: FLdPr var_114
  loc_BE3F39: LateIdCallLdVar
  loc_BE3F43: CStrVarTmp
  loc_BE3F44: FStStr var_98
  loc_BE3F47: FFreeAd var_C0 = ""
  loc_BE3F4E: FFreeVar var_D0 = ""
  loc_BE3F55: FLdPr Me
  loc_BE3F58: VCallAd Control_ID_ItemNotaFlex
  loc_BE3F5B: FStAdFunc var_C0
  loc_BE3F5E: FLdPr var_C0
  loc_BE3F61: LateIdLdVar var_D0 DispID_10 0
  loc_BE3F68: CI4Var
  loc_BE3F6A: CVarI4
  loc_BE3F6E: PopAdLdVar
  loc_BE3F6F: LitVarI4
  loc_BE3F77: PopAdLdVar
  loc_BE3F78: FLdPr Me
  loc_BE3F7B: VCallAd Control_ID_ItemNotaFlex
  loc_BE3F7E: FStAdFunc var_114
  loc_BE3F81: FLdPr var_114
  loc_BE3F84: LateIdCallLdVar
  loc_BE3F8E: CStrVarTmp
  loc_BE3F8F: FStStr var_9C
  loc_BE3F92: FFreeAd var_C0 = ""
  loc_BE3F99: FFreeVar var_D0 = ""
  loc_BE3FA0: FLdPr Me
  loc_BE3FA3: VCallAd Control_ID_ItemNotaFlex
  loc_BE3FA6: FStAdFunc var_C0
  loc_BE3FA9: FLdPr var_C0
  loc_BE3FAC: LateIdLdVar var_D0 DispID_10 0
  loc_BE3FB3: CI4Var
  loc_BE3FB5: CVarI4
  loc_BE3FB9: PopAdLdVar
  loc_BE3FBA: LitVarI4
  loc_BE3FC2: PopAdLdVar
  loc_BE3FC3: FLdPr Me
  loc_BE3FC6: VCallAd Control_ID_ItemNotaFlex
  loc_BE3FC9: FStAdFunc var_114
  loc_BE3FCC: FLdPr var_114
  loc_BE3FCF: LateIdCallLdVar
  loc_BE3FD9: CStrVarTmp
  loc_BE3FDA: FStStr var_A0
  loc_BE3FDD: FFreeAd var_C0 = ""
  loc_BE3FE4: FFreeVar var_D0 = ""
  loc_BE3FEB: FLdPr Me
  loc_BE3FEE: VCallAd Control_ID_ItemNotaFlex
  loc_BE3FF1: FStAdFunc var_C0
  loc_BE3FF4: FLdPr var_C0
  loc_BE3FF7: LateIdLdVar var_D0 DispID_10 0
  loc_BE3FFE: CI4Var
  loc_BE4000: CVarI4
  loc_BE4004: PopAdLdVar
  loc_BE4005: LitVarI4
  loc_BE400D: PopAdLdVar
  loc_BE400E: FLdPr Me
  loc_BE4011: VCallAd Control_ID_ItemNotaFlex
  loc_BE4014: FStAdFunc var_114
  loc_BE4017: FLdPr var_114
  loc_BE401A: LateIdCallLdVar
  loc_BE4024: CStrVarTmp
  loc_BE4025: FStStr var_A8
  loc_BE4028: FFreeAd var_C0 = ""
  loc_BE402F: FFreeVar var_D0 = ""
  loc_BE4036: FLdPr Me
  loc_BE4039: VCallAd Control_ID_ItemNotaFlex
  loc_BE403C: FStAdFunc var_C0
  loc_BE403F: FLdPr var_C0
  loc_BE4042: LateIdLdVar var_D0 DispID_10 0
  loc_BE4049: CI4Var
  loc_BE404B: CVarI4
  loc_BE404F: PopAdLdVar
  loc_BE4050: LitVarI4
  loc_BE4058: PopAdLdVar
  loc_BE4059: FLdPr Me
  loc_BE405C: VCallAd Control_ID_ItemNotaFlex
  loc_BE405F: FStAdFunc var_114
  loc_BE4062: FLdPr var_114
  loc_BE4065: LateIdCallLdVar
  loc_BE406F: CStrVarTmp
  loc_BE4070: FStStr var_AC
  loc_BE4073: FFreeAd var_C0 = ""
  loc_BE407A: FFreeVar var_D0 = ""
  loc_BE4081: FLdPr Me
  loc_BE4084: VCallAd Control_ID_ItemNotaFlex
  loc_BE4087: FStAdFunc var_C0
  loc_BE408A: FLdPr var_C0
  loc_BE408D: LateIdLdVar var_D0 DispID_10 0
  loc_BE4094: CI4Var
  loc_BE4096: CVarI4
  loc_BE409A: PopAdLdVar
  loc_BE409B: LitVarI4
  loc_BE40A3: PopAdLdVar
  loc_BE40A4: FLdPr Me
  loc_BE40A7: VCallAd Control_ID_ItemNotaFlex
  loc_BE40AA: FStAdFunc var_114
  loc_BE40AD: FLdPr var_114
  loc_BE40B0: LateIdCallLdVar
  loc_BE40BA: CStrVarTmp
  loc_BE40BB: FStStr var_B0
  loc_BE40BE: FFreeAd var_C0 = ""
  loc_BE40C5: FFreeVar var_D0 = ""
  loc_BE40CC: FLdPr Me
  loc_BE40CF: VCallAd Control_ID_ItemNotaFlex
  loc_BE40D2: FStAdFunc var_C0
  loc_BE40D5: FLdPr var_C0
  loc_BE40D8: LateIdLdVar var_D0 DispID_10 0
  loc_BE40DF: CI4Var
  loc_BE40E1: CVarI4
  loc_BE40E5: PopAdLdVar
  loc_BE40E6: LitVarI4
  loc_BE40EE: PopAdLdVar
  loc_BE40EF: FLdPr Me
  loc_BE40F2: VCallAd Control_ID_ItemNotaFlex
  loc_BE40F5: FStAdFunc var_114
  loc_BE40F8: FLdPr var_114
  loc_BE40FB: LateIdCallLdVar
  loc_BE4105: CStrVarTmp
  loc_BE4106: FStStr var_A4
  loc_BE4109: FFreeAd var_C0 = ""
  loc_BE4110: FFreeVar var_D0 = ""
  loc_BE4117: FLdPr Me
  loc_BE411A: VCallAd Control_ID_ItemNotaFlex
  loc_BE411D: FStAdFunc var_C0
  loc_BE4120: FLdPr var_C0
  loc_BE4123: LateIdLdVar var_D0 DispID_10 0
  loc_BE412A: CI4Var
  loc_BE412C: CVarI4
  loc_BE4130: PopAdLdVar
  loc_BE4131: LitVarI4
  loc_BE4139: PopAdLdVar
  loc_BE413A: FLdPr Me
  loc_BE413D: VCallAd Control_ID_ItemNotaFlex
  loc_BE4140: FStAdFunc var_114
  loc_BE4143: FLdPr var_114
  loc_BE4146: LateIdCallLdVar
  loc_BE4150: CStrVarTmp
  loc_BE4151: FStStr var_B8
  loc_BE4154: FFreeAd var_C0 = ""
  loc_BE415B: FFreeVar var_D0 = ""
  loc_BE4162: LitStr "No"
  loc_BE4165: FStStrCopy var_B4
  loc_BE4168: LitVarStr var_E0, vbNullString
  loc_BE416D: LitI4 9
  loc_BE4172: FLdRfVar var_D0
  loc_BE4175: ImpAdCallFPR4  = Chr()
  loc_BE417A: FLdRfVar var_D0
  loc_BE417D: ConcatVar var_124
  loc_BE4181: LitVarStr var_F0, vbNullString
  loc_BE4186: ConcatVar var_138
  loc_BE418A: LitI4 9
  loc_BE418F: FLdRfVar var_148
  loc_BE4192: ImpAdCallFPR4  = Chr()
  loc_BE4197: FLdRfVar var_148
  loc_BE419A: ConcatVar var_158
  loc_BE419E: LitVarStr var_100, vbNullString
  loc_BE41A3: ConcatVar var_168
  loc_BE41A7: LitI4 9
  loc_BE41AC: FLdRfVar var_178
  loc_BE41AF: ImpAdCallFPR4  = Chr()
  loc_BE41B4: FLdRfVar var_178
  loc_BE41B7: ConcatVar var_188
  loc_BE41BB: LitVarStr var_110, vbNullString
  loc_BE41C0: ConcatVar var_198
  loc_BE41C4: LitI4 9
  loc_BE41C9: FLdRfVar var_1A8
  loc_BE41CC: ImpAdCallFPR4  = Chr()
  loc_BE41D1: FLdRfVar var_1A8
  loc_BE41D4: ConcatVar var_1B8
  loc_BE41D8: LitVarStr var_1C8, " "
  loc_BE41DD: ConcatVar var_1D8
  loc_BE41E1: LitI4 9
  loc_BE41E6: FLdRfVar var_1E8
  loc_BE41E9: ImpAdCallFPR4  = Chr()
  loc_BE41EE: FLdRfVar var_1E8
  loc_BE41F1: ConcatVar var_1F8
  loc_BE41F5: LitVarStr var_208, vbNullString
  loc_BE41FA: ConcatVar var_218
  loc_BE41FE: LitI4 9
  loc_BE4203: FLdRfVar var_228
  loc_BE4206: ImpAdCallFPR4  = Chr()
  loc_BE420B: FLdRfVar var_228
  loc_BE420E: ConcatVar var_238
  loc_BE4212: LitVarStr var_248, vbNullString
  loc_BE4217: ConcatVar var_258
  loc_BE421B: LitI4 9
  loc_BE4220: FLdRfVar var_268
  loc_BE4223: ImpAdCallFPR4  = Chr()
  loc_BE4228: FLdRfVar var_268
  loc_BE422B: ConcatVar var_278
  loc_BE422F: LitVarStr var_288, vbNullString
  loc_BE4234: ConcatVar var_298
  loc_BE4238: LitI4 9
  loc_BE423D: FLdRfVar var_2A8
  loc_BE4240: ImpAdCallFPR4  = Chr()
  loc_BE4245: FLdRfVar var_2A8
  loc_BE4248: ConcatVar var_2B8
  loc_BE424C: LitVarStr var_2C8, "No"
  loc_BE4251: ConcatVar var_2D8
  loc_BE4255: CStrVarTmp
  loc_BE4256: CVarStr var_2E8
  loc_BE4259: PopAdLdVar
  loc_BE425A: FLdPr Me
  loc_BE425D: VCallAd Control_ID_ItemNotaFlex
  loc_BE4260: FStAdFunc var_C0
  loc_BE4263: FLdPr var_C0
  loc_BE4266: LateIdCall
  loc_BE426E: FFree1Ad var_C0
  loc_BE4271: FFreeVar var_D0 = "": var_124 = "": var_138 = "": var_148 = "": var_158 = "": var_168 = "": var_178 = "": var_188 = "": var_198 = "": var_1A8 = "": var_1B8 = "": var_1D8 = "": var_1E8 = "": var_1F8 = "": var_218 = "": var_228 = "": var_238 = "": var_258 = "": var_268 = "": var_278 = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2D8 = ""
  loc_BE42A6: FLdPr Me
  loc_BE42A9: VCallAd Control_ID_ItemNotaFlex
  loc_BE42AC: FStAdFunc var_C0
  loc_BE42AF: FLdPr var_C0
  loc_BE42B2: LateIdLdVar var_D0 DispID_10 0
  loc_BE42B9: CI4Var
  loc_BE42BB: LitI4 1
  loc_BE42C0: AddI4
  loc_BE42C1: CVarI4
  loc_BE42C5: PopAdLdVar
  loc_BE42C6: FLdPr Me
  loc_BE42C9: VCallAd Control_ID_ItemNotaFlex
  loc_BE42CC: FStAdFunc var_114
  loc_BE42CF: FLdPr var_114
  loc_BE42D2: LateIdSt
  loc_BE42D7: FFreeAd var_C0 = ""
  loc_BE42DE: FFree1Var var_D0 = ""
  loc_BE42E1: LitVarI4
  loc_BE42E9: PopAdLdVar
  loc_BE42EA: FLdPr Me
  loc_BE42ED: VCallAd Control_ID_ItemNotaFlex
  loc_BE42F0: FStAdFunc var_C0
  loc_BE42F3: FLdPr var_C0
  loc_BE42F6: LateIdSt
  loc_BE42FB: FFree1Ad var_C0
  loc_BE42FE: FLdPr Me
  loc_BE4301: VCallAd Control_ID_ItemNotaFlex
  loc_BE4304: FStAdFunc var_C0
  loc_BE4307: FLdPr var_C0
  loc_BE430A: LateIdLdVar var_D0 DispID_10 0
  loc_BE4311: CI4Var
  loc_BE4313: CI2I4
  loc_BE4314: FStI2 var_BA
  loc_BE4317: FFree1Ad var_C0
  loc_BE431A: FFree1Var var_D0 = ""
  loc_BE431D: LitI2_Byte 2
  loc_BE431F: FStI2 var_8A
  loc_BE4322: LitI2_Byte 1
  loc_BE4324: FStI2 var_8C
  loc_BE4327: FLdPr Me
  loc_BE432A: VCallAd Control_ID_ItemNotaFlex
  loc_BE432D: FStAdFunc var_C0
  loc_BE4330: FLdPr var_C0
  loc_BE4333: LateIdLdVar var_D0 DispID_4 0
  loc_BE433A: CI4Var
  loc_BE433C: LitI4 1
  loc_BE4341: SubI4
  loc_BE4342: CI2I4
  loc_BE4343: FLdPr Me
  loc_BE4346: MemLdRfVar from_stack_1.global_60
  loc_BE4349: LitI2_Byte 1
  loc_BE434B: LitI2_Byte &HFF
  loc_BE434D: FFree1Ad var_C0
  loc_BE4350: FFree1Var var_D0 = ""
  loc_BE4353: ForStepI2 var_2FC
  loc_BE4359: FLdPr Me
  loc_BE435C: MemLdI2 global_60
  loc_BE435F: FLdI2 var_BA
  loc_BE4362: GtI2
  loc_BE4363: BranchF loc_BE43E9
  loc_BE4366: FLdPr Me
  loc_BE4369: VCallAd Control_ID_ItemNotaFlex
  loc_BE436C: FStAdFunc var_C0
  loc_BE436F: FLdPr var_C0
  loc_BE4372: LateIdLdVar var_D0 DispID_4 0
  loc_BE4379: CI4Var
  loc_BE437B: FLdI2 var_8A
  loc_BE437E: CI4UI1
  loc_BE437F: SubI4
  loc_BE4380: CI2I4
  loc_BE4381: FStI2 var_88
  loc_BE4384: FFree1Ad var_C0
  loc_BE4387: FFree1Var var_D0 = ""
  loc_BE438A: FLdPr Me
  loc_BE438D: VCallAd Control_ID_ItemNotaFlex
  loc_BE4390: FStAdFunc var_C0
  loc_BE4393: FLdPr var_C0
  loc_BE4396: LateIdLdVar var_D0 DispID_4 0
  loc_BE439D: CI4Var
  loc_BE439F: FLdI2 var_8C
  loc_BE43A2: CI4UI1
  loc_BE43A3: SubI4
  loc_BE43A4: CI2I4
  loc_BE43A5: FStI2 var_86
  loc_BE43A8: FFree1Ad var_C0
  loc_BE43AB: FFree1Var var_D0 = ""
  loc_BE43AE: FLdI2 var_88
  loc_BE43B1: CI4UI1
  loc_BE43B2: CVarI4
  loc_BE43B6: PopAdLdVar
  loc_BE43B7: FLdI2 var_86
  loc_BE43BA: CI4UI1
  loc_BE43BB: CVarI4
  loc_BE43BF: PopAdLdVar
  loc_BE43C0: FLdPr Me
  loc_BE43C3: VCallAd Control_ID_ItemNotaFlex
  loc_BE43C6: FStAdFunc var_C0
  loc_BE43C9: FLdPr var_C0
  loc_BE43CC: LateIdCallSt
  loc_BE43D4: FFree1Ad var_C0
  loc_BE43D7: FLdI2 var_8A
  loc_BE43DA: LitI2_Byte 1
  loc_BE43DC: AddI2
  loc_BE43DD: FStI2 var_8A
  loc_BE43E0: FLdI2 var_8C
  loc_BE43E3: LitI2_Byte 1
  loc_BE43E5: AddI2
  loc_BE43E6: FStI2 var_8C
  loc_BE43E9: FLdPr Me
  loc_BE43EC: MemLdRfVar from_stack_1.global_60
  loc_BE43EF: NextStepI2 var_2FC, loc_BE4359
  loc_BE43F4: FLdI2 var_86
  loc_BE43F7: LitI2_Byte 0
  loc_BE43F9: NeI2
  loc_BE43FA: BranchF loc_BE4631
  loc_BE43FD: FLdI2 var_86
  loc_BE4400: LitI2_Byte 1
  loc_BE4402: SubI2
  loc_BE4403: CI4UI1
  loc_BE4404: CVarI4
  loc_BE4408: PopAdLdVar
  loc_BE4409: LitVarI4
  loc_BE4411: PopAdLdVar
  loc_BE4412: FLdRfVar var_90
  loc_BE4415: CDargRef
  loc_BE4419: FLdPr Me
  loc_BE441C: VCallAd Control_ID_ItemNotaFlex
  loc_BE441F: FStAdFunc var_C0
  loc_BE4422: FLdPr var_C0
  loc_BE4425: LateIdCallSt
  loc_BE442D: FFree1Ad var_C0
  loc_BE4430: FLdI2 var_86
  loc_BE4433: LitI2_Byte 1
  loc_BE4435: SubI2
  loc_BE4436: CI4UI1
  loc_BE4437: CVarI4
  loc_BE443B: PopAdLdVar
  loc_BE443C: LitVarI4
  loc_BE4444: PopAdLdVar
  loc_BE4445: FLdRfVar var_94
  loc_BE4448: CDargRef
  loc_BE444C: FLdPr Me
  loc_BE444F: VCallAd Control_ID_ItemNotaFlex
  loc_BE4452: FStAdFunc var_C0
  loc_BE4455: FLdPr var_C0
  loc_BE4458: LateIdCallSt
  loc_BE4460: FFree1Ad var_C0
  loc_BE4463: FLdI2 var_86
  loc_BE4466: LitI2_Byte 1
  loc_BE4468: SubI2
  loc_BE4469: CI4UI1
  loc_BE446A: CVarI4
  loc_BE446E: PopAdLdVar
  loc_BE446F: LitVarI4
  loc_BE4477: PopAdLdVar
  loc_BE4478: FLdRfVar var_98
  loc_BE447B: CDargRef
  loc_BE447F: FLdPr Me
  loc_BE4482: VCallAd Control_ID_ItemNotaFlex
  loc_BE4485: FStAdFunc var_C0
  loc_BE4488: FLdPr var_C0
  loc_BE448B: LateIdCallSt
  loc_BE4493: FFree1Ad var_C0
  loc_BE4496: FLdI2 var_86
  loc_BE4499: LitI2_Byte 1
  loc_BE449B: SubI2
  loc_BE449C: CI4UI1
  loc_BE449D: CVarI4
  loc_BE44A1: PopAdLdVar
  loc_BE44A2: LitVarI4
  loc_BE44AA: PopAdLdVar
  loc_BE44AB: FLdRfVar var_9C
  loc_BE44AE: CDargRef
  loc_BE44B2: FLdPr Me
  loc_BE44B5: VCallAd Control_ID_ItemNotaFlex
  loc_BE44B8: FStAdFunc var_C0
  loc_BE44BB: FLdPr var_C0
  loc_BE44BE: LateIdCallSt
  loc_BE44C6: FFree1Ad var_C0
  loc_BE44C9: FLdI2 var_86
  loc_BE44CC: LitI2_Byte 1
  loc_BE44CE: SubI2
  loc_BE44CF: CI4UI1
  loc_BE44D0: CVarI4
  loc_BE44D4: PopAdLdVar
  loc_BE44D5: LitVarI4
  loc_BE44DD: PopAdLdVar
  loc_BE44DE: FLdRfVar var_A0
  loc_BE44E1: CDargRef
  loc_BE44E5: FLdPr Me
  loc_BE44E8: VCallAd Control_ID_ItemNotaFlex
  loc_BE44EB: FStAdFunc var_C0
  loc_BE44EE: FLdPr var_C0
  loc_BE44F1: LateIdCallSt
  loc_BE44F9: FFree1Ad var_C0
  loc_BE44FC: FLdI2 var_86
  loc_BE44FF: LitI2_Byte 1
  loc_BE4501: SubI2
  loc_BE4502: CI4UI1
  loc_BE4503: CVarI4
  loc_BE4507: PopAdLdVar
  loc_BE4508: LitVarI4
  loc_BE4510: PopAdLdVar
  loc_BE4511: FLdRfVar var_A8
  loc_BE4514: CDargRef
  loc_BE4518: FLdPr Me
  loc_BE451B: VCallAd Control_ID_ItemNotaFlex
  loc_BE451E: FStAdFunc var_C0
  loc_BE4521: FLdPr var_C0
  loc_BE4524: LateIdCallSt
  loc_BE452C: FFree1Ad var_C0
  loc_BE452F: FLdI2 var_86
  loc_BE4532: LitI2_Byte 1
  loc_BE4534: SubI2
  loc_BE4535: CI4UI1
  loc_BE4536: CVarI4
  loc_BE453A: PopAdLdVar
  loc_BE453B: LitVarI4
  loc_BE4543: PopAdLdVar
  loc_BE4544: FLdRfVar var_AC
  loc_BE4547: CDargRef
  loc_BE454B: FLdPr Me
  loc_BE454E: VCallAd Control_ID_ItemNotaFlex
  loc_BE4551: FStAdFunc var_C0
  loc_BE4554: FLdPr var_C0
  loc_BE4557: LateIdCallSt
  loc_BE455F: FFree1Ad var_C0
  loc_BE4562: FLdI2 var_86
  loc_BE4565: LitI2_Byte 1
  loc_BE4567: SubI2
  loc_BE4568: CI4UI1
  loc_BE4569: CVarI4
  loc_BE456D: PopAdLdVar
  loc_BE456E: LitVarI4
  loc_BE4576: PopAdLdVar
  loc_BE4577: FLdRfVar var_B0
  loc_BE457A: CDargRef
  loc_BE457E: FLdPr Me
  loc_BE4581: VCallAd Control_ID_ItemNotaFlex
  loc_BE4584: FStAdFunc var_C0
  loc_BE4587: FLdPr var_C0
  loc_BE458A: LateIdCallSt
  loc_BE4592: FFree1Ad var_C0
  loc_BE4595: FLdI2 var_86
  loc_BE4598: LitI2_Byte 1
  loc_BE459A: SubI2
  loc_BE459B: CI4UI1
  loc_BE459C: CVarI4
  loc_BE45A0: PopAdLdVar
  loc_BE45A1: LitVarI4
  loc_BE45A9: PopAdLdVar
  loc_BE45AA: FLdRfVar var_B4
  loc_BE45AD: CDargRef
  loc_BE45B1: FLdPr Me
  loc_BE45B4: VCallAd Control_ID_ItemNotaFlex
  loc_BE45B7: FStAdFunc var_C0
  loc_BE45BA: FLdPr var_C0
  loc_BE45BD: LateIdCallSt
  loc_BE45C5: FFree1Ad var_C0
  loc_BE45C8: FLdI2 var_86
  loc_BE45CB: LitI2_Byte 1
  loc_BE45CD: SubI2
  loc_BE45CE: CI4UI1
  loc_BE45CF: CVarI4
  loc_BE45D3: PopAdLdVar
  loc_BE45D4: LitVarI4
  loc_BE45DC: PopAdLdVar
  loc_BE45DD: FLdRfVar var_A4
  loc_BE45E0: CDargRef
  loc_BE45E4: FLdPr Me
  loc_BE45E7: VCallAd Control_ID_ItemNotaFlex
  loc_BE45EA: FStAdFunc var_C0
  loc_BE45ED: FLdPr var_C0
  loc_BE45F0: LateIdCallSt
  loc_BE45F8: FFree1Ad var_C0
  loc_BE45FB: FLdI2 var_86
  loc_BE45FE: LitI2_Byte 1
  loc_BE4600: SubI2
  loc_BE4601: CI4UI1
  loc_BE4602: CVarI4
  loc_BE4606: PopAdLdVar
  loc_BE4607: LitVarI4
  loc_BE460F: PopAdLdVar
  loc_BE4610: FLdRfVar var_B8
  loc_BE4613: CDargRef
  loc_BE4617: FLdPr Me
  loc_BE461A: VCallAd Control_ID_ItemNotaFlex
  loc_BE461D: FStAdFunc var_C0
  loc_BE4620: FLdPr var_C0
  loc_BE4623: LateIdCallSt
  loc_BE462B: FFree1Ad var_C0
  loc_BE462E: Branch loc_BE484A
  loc_BE4631: FLdI2 var_86
  loc_BE4634: LitI2_Byte 0
  loc_BE4636: EqI2
  loc_BE4637: BranchF loc_BE484A
  loc_BE463A: FLdI2 var_BA
  loc_BE463D: CI4UI1
  loc_BE463E: CVarI4
  loc_BE4642: PopAdLdVar
  loc_BE4643: LitVarI4
  loc_BE464B: PopAdLdVar
  loc_BE464C: FLdRfVar var_90
  loc_BE464F: CDargRef
  loc_BE4653: FLdPr Me
  loc_BE4656: VCallAd Control_ID_ItemNotaFlex
  loc_BE4659: FStAdFunc var_C0
  loc_BE465C: FLdPr var_C0
  loc_BE465F: LateIdCallSt
  loc_BE4667: FFree1Ad var_C0
  loc_BE466A: FLdI2 var_BA
  loc_BE466D: CI4UI1
  loc_BE466E: CVarI4
  loc_BE4672: PopAdLdVar
  loc_BE4673: LitVarI4
  loc_BE467B: PopAdLdVar
  loc_BE467C: FLdRfVar var_94
  loc_BE467F: CDargRef
  loc_BE4683: FLdPr Me
  loc_BE4686: VCallAd Control_ID_ItemNotaFlex
  loc_BE4689: FStAdFunc var_C0
  loc_BE468C: FLdPr var_C0
  loc_BE468F: LateIdCallSt
  loc_BE4697: FFree1Ad var_C0
  loc_BE469A: FLdI2 var_BA
  loc_BE469D: CI4UI1
  loc_BE469E: CVarI4
  loc_BE46A2: PopAdLdVar
  loc_BE46A3: LitVarI4
  loc_BE46AB: PopAdLdVar
  loc_BE46AC: FLdRfVar var_98
  loc_BE46AF: CDargRef
  loc_BE46B3: FLdPr Me
  loc_BE46B6: VCallAd Control_ID_ItemNotaFlex
  loc_BE46B9: FStAdFunc var_C0
  loc_BE46BC: FLdPr var_C0
  loc_BE46BF: LateIdCallSt
  loc_BE46C7: FFree1Ad var_C0
  loc_BE46CA: FLdI2 var_BA
  loc_BE46CD: CI4UI1
  loc_BE46CE: CVarI4
  loc_BE46D2: PopAdLdVar
  loc_BE46D3: LitVarI4
  loc_BE46DB: PopAdLdVar
  loc_BE46DC: FLdRfVar var_9C
  loc_BE46DF: CDargRef
  loc_BE46E3: FLdPr Me
  loc_BE46E6: VCallAd Control_ID_ItemNotaFlex
  loc_BE46E9: FStAdFunc var_C0
  loc_BE46EC: FLdPr var_C0
  loc_BE46EF: LateIdCallSt
  loc_BE46F7: FFree1Ad var_C0
  loc_BE46FA: FLdI2 var_BA
  loc_BE46FD: CI4UI1
  loc_BE46FE: CVarI4
  loc_BE4702: PopAdLdVar
  loc_BE4703: LitVarI4
  loc_BE470B: PopAdLdVar
  loc_BE470C: FLdRfVar var_A0
  loc_BE470F: CDargRef
  loc_BE4713: FLdPr Me
  loc_BE4716: VCallAd Control_ID_ItemNotaFlex
  loc_BE4719: FStAdFunc var_C0
  loc_BE471C: FLdPr var_C0
  loc_BE471F: LateIdCallSt
  loc_BE4727: FFree1Ad var_C0
  loc_BE472A: FLdI2 var_BA
  loc_BE472D: CI4UI1
  loc_BE472E: CVarI4
  loc_BE4732: PopAdLdVar
  loc_BE4733: LitVarI4
  loc_BE473B: PopAdLdVar
  loc_BE473C: FLdRfVar var_A8
  loc_BE473F: CDargRef
  loc_BE4743: FLdPr Me
  loc_BE4746: VCallAd Control_ID_ItemNotaFlex
  loc_BE4749: FStAdFunc var_C0
  loc_BE474C: FLdPr var_C0
  loc_BE474F: LateIdCallSt
  loc_BE4757: FFree1Ad var_C0
  loc_BE475A: FLdI2 var_BA
  loc_BE475D: CI4UI1
  loc_BE475E: CVarI4
  loc_BE4762: PopAdLdVar
  loc_BE4763: LitVarI4
  loc_BE476B: PopAdLdVar
  loc_BE476C: FLdRfVar var_AC
  loc_BE476F: CDargRef
  loc_BE4773: FLdPr Me
  loc_BE4776: VCallAd Control_ID_ItemNotaFlex
  loc_BE4779: FStAdFunc var_C0
  loc_BE477C: FLdPr var_C0
  loc_BE477F: LateIdCallSt
  loc_BE4787: FFree1Ad var_C0
  loc_BE478A: FLdI2 var_BA
  loc_BE478D: CI4UI1
  loc_BE478E: CVarI4
  loc_BE4792: PopAdLdVar
  loc_BE4793: LitVarI4
  loc_BE479B: PopAdLdVar
  loc_BE479C: FLdRfVar var_B0
  loc_BE479F: CDargRef
  loc_BE47A3: FLdPr Me
  loc_BE47A6: VCallAd Control_ID_ItemNotaFlex
  loc_BE47A9: FStAdFunc var_C0
  loc_BE47AC: FLdPr var_C0
  loc_BE47AF: LateIdCallSt
  loc_BE47B7: FFree1Ad var_C0
  loc_BE47BA: FLdI2 var_BA
  loc_BE47BD: CI4UI1
  loc_BE47BE: CVarI4
  loc_BE47C2: PopAdLdVar
  loc_BE47C3: LitVarI4
  loc_BE47CB: PopAdLdVar
  loc_BE47CC: FLdRfVar var_B4
  loc_BE47CF: CDargRef
  loc_BE47D3: FLdPr Me
  loc_BE47D6: VCallAd Control_ID_ItemNotaFlex
  loc_BE47D9: FStAdFunc var_C0
  loc_BE47DC: FLdPr var_C0
  loc_BE47DF: LateIdCallSt
  loc_BE47E7: FFree1Ad var_C0
  loc_BE47EA: FLdI2 var_BA
  loc_BE47ED: CI4UI1
  loc_BE47EE: CVarI4
  loc_BE47F2: PopAdLdVar
  loc_BE47F3: LitVarI4
  loc_BE47FB: PopAdLdVar
  loc_BE47FC: FLdRfVar var_A4
  loc_BE47FF: CDargRef
  loc_BE4803: FLdPr Me
  loc_BE4806: VCallAd Control_ID_ItemNotaFlex
  loc_BE4809: FStAdFunc var_C0
  loc_BE480C: FLdPr var_C0
  loc_BE480F: LateIdCallSt
  loc_BE4817: FFree1Ad var_C0
  loc_BE481A: FLdI2 var_BA
  loc_BE481D: CI4UI1
  loc_BE481E: CVarI4
  loc_BE4822: PopAdLdVar
  loc_BE4823: LitVarI4
  loc_BE482B: PopAdLdVar
  loc_BE482C: FLdRfVar var_B8
  loc_BE482F: CDargRef
  loc_BE4833: FLdPr Me
  loc_BE4836: VCallAd Control_ID_ItemNotaFlex
  loc_BE4839: FStAdFunc var_C0
  loc_BE483C: FLdPr var_C0
  loc_BE483F: LateIdCallSt
  loc_BE4847: FFree1Ad var_C0
  loc_BE484A: LitI2_Byte 0
  loc_BE484C: FLdPr Me
  loc_BE484F: MemStI2 global_62
  loc_BE4852: LitI2_Byte 1
  loc_BE4854: FLdPr Me
  loc_BE4857: MemLdRfVar from_stack_1.global_60
  loc_BE485A: FLdPr Me
  loc_BE485D: VCallAd Control_ID_ItemNotaFlex
  loc_BE4860: FStAdFunc var_C0
  loc_BE4863: FLdPr var_C0
  loc_BE4866: LateIdLdVar var_D0 DispID_4 0
  loc_BE486D: CI4Var
  loc_BE486F: LitI4 1
  loc_BE4874: SubI4
  loc_BE4875: CI2I4
  loc_BE4876: FFree1Ad var_C0
  loc_BE4879: FFree1Var var_D0 = ""
  loc_BE487C: ForI2 var_300
  loc_BE4882: FLdPr Me
  loc_BE4885: VCallAd Control_ID_ItemNotaFlex
  loc_BE4888: FStAdFunc var_C0
  loc_BE488B: FLdPr var_C0
  loc_BE488E: LateIdLdVar var_D0 DispID_10 0
  loc_BE4895: CI4Var
  loc_BE4897: CVarI4
  loc_BE489B: PopAdLdVar
  loc_BE489C: LitVarI4
  loc_BE48A4: PopAdLdVar
  loc_BE48A5: FLdPr Me
  loc_BE48A8: VCallAd Control_ID_ItemNotaFlex
  loc_BE48AB: FStAdFunc var_114
  loc_BE48AE: FLdPr var_114
  loc_BE48B1: LateIdCallLdVar
  loc_BE48BB: CStrVarTmp
  loc_BE48BC: FStStrNoPop var_128
  loc_BE48BF: FLdPr Me
  loc_BE48C2: MemLdI2 global_60
  loc_BE48C5: CI4UI1
  loc_BE48C6: CVarI4
  loc_BE48CA: PopAdLdVar
  loc_BE48CB: LitVarI4
  loc_BE48D3: PopAdLdVar
  loc_BE48D4: FLdPr Me
  loc_BE48D7: VCallAd Control_ID_ItemNotaFlex
  loc_BE48DA: FStAdFunc var_304
  loc_BE48DD: FLdPr var_304
  loc_BE48E0: LateIdCallLdVar
  loc_BE48EA: CStrVarTmp
  loc_BE48EB: FStStrNoPop var_308
  loc_BE48EE: EqStr
  loc_BE48F0: FFreeStr var_128 = ""
  loc_BE48F7: FFreeAd var_C0 = "": var_114 = ""
  loc_BE4900: FFreeVar var_D0 = "": var_124 = ""
  loc_BE4909: BranchF loc_BE496C
  loc_BE490C: FLdPr Me
  loc_BE490F: VCallAd Control_ID_ItemNotaFlex
  loc_BE4912: FStAdFunc var_C0
  loc_BE4915: FLdPr var_C0
  loc_BE4918: LateIdLdVar var_D0 DispID_10 0
  loc_BE491F: CI4Var
  loc_BE4921: CVarI4
  loc_BE4925: PopAdLdVar
  loc_BE4926: LitVarI4
  loc_BE492E: PopAdLdVar
  loc_BE492F: FLdPr Me
  loc_BE4932: MemLdI2 global_62
  loc_BE4935: CStrUI1
  loc_BE4937: CVarStr var_124
  loc_BE493A: PopAdLdVar
  loc_BE493B: FLdPr Me
  loc_BE493E: VCallAd Control_ID_ItemNotaFlex
  loc_BE4941: FStAdFunc var_114
  loc_BE4944: FLdPr var_114
  loc_BE4947: LateIdCallSt
  loc_BE494F: FFreeAd var_C0 = ""
  loc_BE4956: FFreeVar var_D0 = ""
  loc_BE495D: FLdPr Me
  loc_BE4960: MemLdI2 global_62
  loc_BE4963: LitI2_Byte 1
  loc_BE4965: AddI2
  loc_BE4966: FLdPr Me
  loc_BE4969: MemStI2 global_62
  loc_BE496C: FLdPr Me
  loc_BE496F: MemLdRfVar from_stack_1.global_60
  loc_BE4972: NextI2 var_300, loc_BE4882
  loc_BE4977: Branch loc_BE569E
  loc_BE497A: ILdI2 KeyAscii
  loc_BE497D: LitI2_Byte 8
  loc_BE497F: EqI2
  loc_BE4980: BranchF loc_BE4FD4
  loc_BE4983: FLdPr Me
  loc_BE4986: VCallAd Control_ID_ItemNotaFlex
  loc_BE4989: FStAdFunc var_C0
  loc_BE498C: FLdPr var_C0
  loc_BE498F: LateIdLdVar var_D0 DispID_11 0
  loc_BE4996: CI4Var
  loc_BE4998: FStR4 var_30C
  loc_BE499B: FFree1Ad var_C0
  loc_BE499E: FFree1Var var_D0 = ""
  loc_BE49A1: ILdRf var_30C
  loc_BE49A4: LitI4 4
  loc_BE49A9: EqI4
  loc_BE49AA: BranchF loc_BE4AF8
  loc_BE49AD: FLdPr Me
  loc_BE49B0: VCallAd Control_ID_ItemNotaFlex
  loc_BE49B3: FStAdFunc var_C0
  loc_BE49B6: FLdPr var_C0
  loc_BE49B9: LateIdLdVar var_D0 DispID_10 0
  loc_BE49C0: CI4Var
  loc_BE49C2: CVarI4
  loc_BE49C6: PopAdLdVar
  loc_BE49C7: LitVarI4
  loc_BE49CF: PopAdLdVar
  loc_BE49D0: FLdPr Me
  loc_BE49D3: VCallAd Control_ID_ItemNotaFlex
  loc_BE49D6: FStAdFunc var_114
  loc_BE49D9: FLdPr var_114
  loc_BE49DC: LateIdCallLdVar
  loc_BE49E6: CStrVarTmp
  loc_BE49E7: FStStrNoPop var_128
  loc_BE49EA: LitStr "No"
  loc_BE49ED: EqStr
  loc_BE49EF: FFree1Str var_128
  loc_BE49F2: FFreeAd var_C0 = ""
  loc_BE49F9: FFreeVar var_D0 = ""
  loc_BE4A00: BranchF loc_BE4AC4
  loc_BE4A03: FLdPr Me
  loc_BE4A06: VCallAd Control_ID_ItemNotaFlex
  loc_BE4A09: FStAdFunc var_C0
  loc_BE4A0C: FLdPr var_C0
  loc_BE4A0F: LateIdLdVar var_D0 DispID_0 0
  loc_BE4A16: CStrVarTmp
  loc_BE4A17: FStStrNoPop var_128
  loc_BE4A1A: LitStr vbNullString
  loc_BE4A1D: NeStr
  loc_BE4A1F: FLdPr Me
  loc_BE4A22: VCallAd Control_ID_ItemNotaFlex
  loc_BE4A25: FStAdFunc var_114
  loc_BE4A28: FLdPr var_114
  loc_BE4A2B: LateIdLdVar var_124 DispID_0 0
  loc_BE4A32: CStrVarTmp
  loc_BE4A33: FStStrNoPop var_308
  loc_BE4A36: LitStr " "
  loc_BE4A39: NeStr
  loc_BE4A3B: AndI4
  loc_BE4A3C: FFreeStr var_128 = ""
  loc_BE4A43: FFreeAd var_C0 = ""
  loc_BE4A4A: FFreeVar var_D0 = ""
  loc_BE4A51: BranchF loc_BE4AC1
  loc_BE4A54: FLdPr Me
  loc_BE4A57: VCallAd Control_ID_ItemNotaFlex
  loc_BE4A5A: FStAdFunc var_C0
  loc_BE4A5D: FLdPr var_C0
  loc_BE4A60: LateIdLdVar var_D0 DispID_0 0
  loc_BE4A67: PopAd
  loc_BE4A69: FLdPr Me
  loc_BE4A6C: VCallAd Control_ID_ItemNotaFlex
  loc_BE4A6F: FStAdFunc var_114
  loc_BE4A72: FLdPr var_114
  loc_BE4A75: LateIdLdVar var_124 DispID_0 0
  loc_BE4A7C: CStrVarTmp
  loc_BE4A7D: FStStrNoPop var_128
  loc_BE4A80: FnLenStr
  loc_BE4A81: LitI4 1
  loc_BE4A86: SubI4
  loc_BE4A87: FLdRfVar var_D0
  loc_BE4A8A: CStrVarTmp
  loc_BE4A8B: FStStrNoPop var_308
  loc_BE4A8E: ImpAdCallI2 Left$(, )
  loc_BE4A93: CVarStr var_138
  loc_BE4A96: PopAdLdVar
  loc_BE4A97: FLdPr Me
  loc_BE4A9A: VCallAd Control_ID_ItemNotaFlex
  loc_BE4A9D: FStAdFunc var_304
  loc_BE4AA0: FLdPr var_304
  loc_BE4AA3: LateIdSt
  loc_BE4AA8: FFreeStr var_128 = ""
  loc_BE4AAF: FFreeAd var_C0 = "": var_114 = ""
  loc_BE4AB8: FFreeVar var_D0 = "": var_124 = ""
  loc_BE4AC1: Branch loc_BE4AF5
  loc_BE4AC4: LitStr "No se puede modificar la cotización porque esta incluida en una Orden de Compra"
  loc_BE4AC7: FLdPr Me
  loc_BE4ACA: MemStStrCopy
  loc_BE4ACE: LitI4 0
  loc_BE4AD3: FLdPr Me
  loc_BE4AD6: MemLdStr global_68
  loc_BE4AD9: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE4ADE: FLdPr Me
  loc_BE4AE1: VCallAd Control_ID_ItemNotaFlex
  loc_BE4AE4: FStAdFunc var_C0
  loc_BE4AE7: FLdPr var_C0
  loc_BE4AEA: LateIdCall
  loc_BE4AF2: FFree1Ad var_C0
  loc_BE4AF5: Branch loc_BE4FD1
  loc_BE4AF8: ILdRf var_30C
  loc_BE4AFB: LitI4 5
  loc_BE4B00: EqI4
  loc_BE4B01: BranchF loc_BE4C4F
  loc_BE4B04: FLdPr Me
  loc_BE4B07: VCallAd Control_ID_ItemNotaFlex
  loc_BE4B0A: FStAdFunc var_C0
  loc_BE4B0D: FLdPr var_C0
  loc_BE4B10: LateIdLdVar var_D0 DispID_10 0
  loc_BE4B17: CI4Var
  loc_BE4B19: CVarI4
  loc_BE4B1D: PopAdLdVar
  loc_BE4B1E: LitVarI4
  loc_BE4B26: PopAdLdVar
  loc_BE4B27: FLdPr Me
  loc_BE4B2A: VCallAd Control_ID_ItemNotaFlex
  loc_BE4B2D: FStAdFunc var_114
  loc_BE4B30: FLdPr var_114
  loc_BE4B33: LateIdCallLdVar
  loc_BE4B3D: CStrVarTmp
  loc_BE4B3E: FStStrNoPop var_128
  loc_BE4B41: LitStr "No"
  loc_BE4B44: EqStr
  loc_BE4B46: FFree1Str var_128
  loc_BE4B49: FFreeAd var_C0 = ""
  loc_BE4B50: FFreeVar var_D0 = ""
  loc_BE4B57: BranchF loc_BE4C1B
  loc_BE4B5A: FLdPr Me
  loc_BE4B5D: VCallAd Control_ID_ItemNotaFlex
  loc_BE4B60: FStAdFunc var_C0
  loc_BE4B63: FLdPr var_C0
  loc_BE4B66: LateIdLdVar var_D0 DispID_0 0
  loc_BE4B6D: CStrVarTmp
  loc_BE4B6E: FStStrNoPop var_128
  loc_BE4B71: LitStr vbNullString
  loc_BE4B74: NeStr
  loc_BE4B76: FLdPr Me
  loc_BE4B79: VCallAd Control_ID_ItemNotaFlex
  loc_BE4B7C: FStAdFunc var_114
  loc_BE4B7F: FLdPr var_114
  loc_BE4B82: LateIdLdVar var_124 DispID_0 0
  loc_BE4B89: CStrVarTmp
  loc_BE4B8A: FStStrNoPop var_308
  loc_BE4B8D: LitStr " "
  loc_BE4B90: NeStr
  loc_BE4B92: AndI4
  loc_BE4B93: FFreeStr var_128 = ""
  loc_BE4B9A: FFreeAd var_C0 = ""
  loc_BE4BA1: FFreeVar var_D0 = ""
  loc_BE4BA8: BranchF loc_BE4C18
  loc_BE4BAB: FLdPr Me
  loc_BE4BAE: VCallAd Control_ID_ItemNotaFlex
  loc_BE4BB1: FStAdFunc var_C0
  loc_BE4BB4: FLdPr var_C0
  loc_BE4BB7: LateIdLdVar var_D0 DispID_0 0
  loc_BE4BBE: PopAd
  loc_BE4BC0: FLdPr Me
  loc_BE4BC3: VCallAd Control_ID_ItemNotaFlex
  loc_BE4BC6: FStAdFunc var_114
  loc_BE4BC9: FLdPr var_114
  loc_BE4BCC: LateIdLdVar var_124 DispID_0 0
  loc_BE4BD3: CStrVarTmp
  loc_BE4BD4: FStStrNoPop var_128
  loc_BE4BD7: FnLenStr
  loc_BE4BD8: LitI4 1
  loc_BE4BDD: SubI4
  loc_BE4BDE: FLdRfVar var_D0
  loc_BE4BE1: CStrVarTmp
  loc_BE4BE2: FStStrNoPop var_308
  loc_BE4BE5: ImpAdCallI2 Left$(, )
  loc_BE4BEA: CVarStr var_138
  loc_BE4BED: PopAdLdVar
  loc_BE4BEE: FLdPr Me
  loc_BE4BF1: VCallAd Control_ID_ItemNotaFlex
  loc_BE4BF4: FStAdFunc var_304
  loc_BE4BF7: FLdPr var_304
  loc_BE4BFA: LateIdSt
  loc_BE4BFF: FFreeStr var_128 = ""
  loc_BE4C06: FFreeAd var_C0 = "": var_114 = ""
  loc_BE4C0F: FFreeVar var_D0 = "": var_124 = ""
  loc_BE4C18: Branch loc_BE4C4C
  loc_BE4C1B: LitStr "No se puede modificar la cotización porque esta incluida en una Orden de Compra"
  loc_BE4C1E: FLdPr Me
  loc_BE4C21: MemStStrCopy
  loc_BE4C25: LitI4 0
  loc_BE4C2A: FLdPr Me
  loc_BE4C2D: MemLdStr global_68
  loc_BE4C30: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE4C35: FLdPr Me
  loc_BE4C38: VCallAd Control_ID_ItemNotaFlex
  loc_BE4C3B: FStAdFunc var_C0
  loc_BE4C3E: FLdPr var_C0
  loc_BE4C41: LateIdCall
  loc_BE4C49: FFree1Ad var_C0
  loc_BE4C4C: Branch loc_BE4FD1
  loc_BE4C4F: ILdRf var_30C
  loc_BE4C52: LitI4 6
  loc_BE4C57: EqI4
  loc_BE4C58: BranchF loc_BE4E95
  loc_BE4C5B: FLdPr Me
  loc_BE4C5E: VCallAd Control_ID_ItemNotaFlex
  loc_BE4C61: FStAdFunc var_C0
  loc_BE4C64: FLdPr var_C0
  loc_BE4C67: LateIdLdVar var_D0 DispID_10 0
  loc_BE4C6E: CI4Var
  loc_BE4C70: CVarI4
  loc_BE4C74: PopAdLdVar
  loc_BE4C75: LitVarI4
  loc_BE4C7D: PopAdLdVar
  loc_BE4C7E: FLdPr Me
  loc_BE4C81: VCallAd Control_ID_ItemNotaFlex
  loc_BE4C84: FStAdFunc var_114
  loc_BE4C87: FLdPr var_114
  loc_BE4C8A: LateIdCallLdVar
  loc_BE4C94: CStrVarTmp
  loc_BE4C95: FStStrNoPop var_128
  loc_BE4C98: LitStr "No"
  loc_BE4C9B: EqStr
  loc_BE4C9D: FFree1Str var_128
  loc_BE4CA0: FFreeAd var_C0 = ""
  loc_BE4CA7: FFreeVar var_D0 = ""
  loc_BE4CAE: BranchF loc_BE4D72
  loc_BE4CB1: FLdPr Me
  loc_BE4CB4: VCallAd Control_ID_ItemNotaFlex
  loc_BE4CB7: FStAdFunc var_C0
  loc_BE4CBA: FLdPr var_C0
  loc_BE4CBD: LateIdLdVar var_D0 DispID_0 0
  loc_BE4CC4: CStrVarTmp
  loc_BE4CC5: FStStrNoPop var_128
  loc_BE4CC8: LitStr vbNullString
  loc_BE4CCB: NeStr
  loc_BE4CCD: FLdPr Me
  loc_BE4CD0: VCallAd Control_ID_ItemNotaFlex
  loc_BE4CD3: FStAdFunc var_114
  loc_BE4CD6: FLdPr var_114
  loc_BE4CD9: LateIdLdVar var_124 DispID_0 0
  loc_BE4CE0: CStrVarTmp
  loc_BE4CE1: FStStrNoPop var_308
  loc_BE4CE4: LitStr " "
  loc_BE4CE7: NeStr
  loc_BE4CE9: AndI4
  loc_BE4CEA: FFreeStr var_128 = ""
  loc_BE4CF1: FFreeAd var_C0 = ""
  loc_BE4CF8: FFreeVar var_D0 = ""
  loc_BE4CFF: BranchF loc_BE4D6F
  loc_BE4D02: FLdPr Me
  loc_BE4D05: VCallAd Control_ID_ItemNotaFlex
  loc_BE4D08: FStAdFunc var_C0
  loc_BE4D0B: FLdPr var_C0
  loc_BE4D0E: LateIdLdVar var_D0 DispID_0 0
  loc_BE4D15: PopAd
  loc_BE4D17: FLdPr Me
  loc_BE4D1A: VCallAd Control_ID_ItemNotaFlex
  loc_BE4D1D: FStAdFunc var_114
  loc_BE4D20: FLdPr var_114
  loc_BE4D23: LateIdLdVar var_124 DispID_0 0
  loc_BE4D2A: CStrVarTmp
  loc_BE4D2B: FStStrNoPop var_128
  loc_BE4D2E: FnLenStr
  loc_BE4D2F: LitI4 1
  loc_BE4D34: SubI4
  loc_BE4D35: FLdRfVar var_D0
  loc_BE4D38: CStrVarTmp
  loc_BE4D39: FStStrNoPop var_308
  loc_BE4D3C: ImpAdCallI2 Left$(, )
  loc_BE4D41: CVarStr var_138
  loc_BE4D44: PopAdLdVar
  loc_BE4D45: FLdPr Me
  loc_BE4D48: VCallAd Control_ID_ItemNotaFlex
  loc_BE4D4B: FStAdFunc var_304
  loc_BE4D4E: FLdPr var_304
  loc_BE4D51: LateIdSt
  loc_BE4D56: FFreeStr var_128 = ""
  loc_BE4D5D: FFreeAd var_C0 = "": var_114 = ""
  loc_BE4D66: FFreeVar var_D0 = "": var_124 = ""
  loc_BE4D6F: Branch loc_BE4E92
  loc_BE4D72: LitStr "Municipalidad de Guaymallén"
  loc_BE4D75: LitStr "Municipalidad de Santa Rosa"
  loc_BE4D78: EqStr
  loc_BE4D7A: LitStr "Municipalidad de Guaymallén"
  loc_BE4D7D: LitStr "Municipalidad de Maipú"
  loc_BE4D80: EqStr
  loc_BE4D82: OrI4
  loc_BE4D83: BranchF loc_BE4E61
  loc_BE4D86: LitStr "Advertencia: la cotización porque esta incluida en una Orden de Compra. Verifique..."
  loc_BE4D89: FLdPr Me
  loc_BE4D8C: MemStStrCopy
  loc_BE4D90: LitI4 0
  loc_BE4D95: FLdPr Me
  loc_BE4D98: MemLdStr global_68
  loc_BE4D9B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE4DA0: FLdPr Me
  loc_BE4DA3: VCallAd Control_ID_ItemNotaFlex
  loc_BE4DA6: FStAdFunc var_C0
  loc_BE4DA9: FLdPr var_C0
  loc_BE4DAC: LateIdLdVar var_D0 DispID_0 0
  loc_BE4DB3: CStrVarTmp
  loc_BE4DB4: FStStrNoPop var_128
  loc_BE4DB7: LitStr vbNullString
  loc_BE4DBA: NeStr
  loc_BE4DBC: FLdPr Me
  loc_BE4DBF: VCallAd Control_ID_ItemNotaFlex
  loc_BE4DC2: FStAdFunc var_114
  loc_BE4DC5: FLdPr var_114
  loc_BE4DC8: LateIdLdVar var_124 DispID_0 0
  loc_BE4DCF: CStrVarTmp
  loc_BE4DD0: FStStrNoPop var_308
  loc_BE4DD3: LitStr " "
  loc_BE4DD6: NeStr
  loc_BE4DD8: AndI4
  loc_BE4DD9: FFreeStr var_128 = ""
  loc_BE4DE0: FFreeAd var_C0 = ""
  loc_BE4DE7: FFreeVar var_D0 = ""
  loc_BE4DEE: BranchF loc_BE4E5E
  loc_BE4DF1: FLdPr Me
  loc_BE4DF4: VCallAd Control_ID_ItemNotaFlex
  loc_BE4DF7: FStAdFunc var_C0
  loc_BE4DFA: FLdPr var_C0
  loc_BE4DFD: LateIdLdVar var_D0 DispID_0 0
  loc_BE4E04: PopAd
  loc_BE4E06: FLdPr Me
  loc_BE4E09: VCallAd Control_ID_ItemNotaFlex
  loc_BE4E0C: FStAdFunc var_114
  loc_BE4E0F: FLdPr var_114
  loc_BE4E12: LateIdLdVar var_124 DispID_0 0
  loc_BE4E19: CStrVarTmp
  loc_BE4E1A: FStStrNoPop var_128
  loc_BE4E1D: FnLenStr
  loc_BE4E1E: LitI4 1
  loc_BE4E23: SubI4
  loc_BE4E24: FLdRfVar var_D0
  loc_BE4E27: CStrVarTmp
  loc_BE4E28: FStStrNoPop var_308
  loc_BE4E2B: ImpAdCallI2 Left$(, )
  loc_BE4E30: CVarStr var_138
  loc_BE4E33: PopAdLdVar
  loc_BE4E34: FLdPr Me
  loc_BE4E37: VCallAd Control_ID_ItemNotaFlex
  loc_BE4E3A: FStAdFunc var_304
  loc_BE4E3D: FLdPr var_304
  loc_BE4E40: LateIdSt
  loc_BE4E45: FFreeStr var_128 = ""
  loc_BE4E4C: FFreeAd var_C0 = "": var_114 = ""
  loc_BE4E55: FFreeVar var_D0 = "": var_124 = ""
  loc_BE4E5E: Branch loc_BE4E7B
  loc_BE4E61: LitStr "No se puede modificar la cotización porque esta incluida en una Orden de Compra"
  loc_BE4E64: FLdPr Me
  loc_BE4E67: MemStStrCopy
  loc_BE4E6B: LitI4 0
  loc_BE4E70: FLdPr Me
  loc_BE4E73: MemLdStr global_68
  loc_BE4E76: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE4E7B: FLdPr Me
  loc_BE4E7E: VCallAd Control_ID_ItemNotaFlex
  loc_BE4E81: FStAdFunc var_C0
  loc_BE4E84: FLdPr var_C0
  loc_BE4E87: LateIdCall
  loc_BE4E8F: FFree1Ad var_C0
  loc_BE4E92: Branch loc_BE4FD1
  loc_BE4E95: ILdRf var_30C
  loc_BE4E98: LitI4 &HA
  loc_BE4E9D: EqI4
  loc_BE4E9E: BranchF loc_BE4FD1
  loc_BE4EA1: FLdPr Me
  loc_BE4EA4: VCallAd Control_ID_ItemNotaFlex
  loc_BE4EA7: FStAdFunc var_C0
  loc_BE4EAA: FLdPr var_C0
  loc_BE4EAD: LateIdLdVar var_D0 DispID_10 0
  loc_BE4EB4: CI4Var
  loc_BE4EB6: CVarI4
  loc_BE4EBA: PopAdLdVar
  loc_BE4EBB: LitVarI4
  loc_BE4EC3: PopAdLdVar
  loc_BE4EC4: FLdPr Me
  loc_BE4EC7: VCallAd Control_ID_ItemNotaFlex
  loc_BE4ECA: FStAdFunc var_114
  loc_BE4ECD: FLdPr var_114
  loc_BE4ED0: LateIdCallLdVar
  loc_BE4EDA: CStrVarTmp
  loc_BE4EDB: FStStrNoPop var_128
  loc_BE4EDE: LitStr "No"
  loc_BE4EE1: EqStr
  loc_BE4EE3: FFree1Str var_128
  loc_BE4EE6: FFreeAd var_C0 = ""
  loc_BE4EED: FFreeVar var_D0 = ""
  loc_BE4EF4: BranchF loc_BE4FA0
  loc_BE4EF7: FLdPr Me
  loc_BE4EFA: VCallAd Control_ID_ItemNotaFlex
  loc_BE4EFD: FStAdFunc var_C0
  loc_BE4F00: FLdPr var_C0
  loc_BE4F03: LateIdLdVar var_D0 DispID_0 0
  loc_BE4F0A: CStrVarTmp
  loc_BE4F0B: CVarStr var_124
  loc_BE4F0E: FLdRfVar var_138
  loc_BE4F11: ImpAdCallFPR4  = Trim()
  loc_BE4F16: FLdRfVar var_138
  loc_BE4F19: LitVarStr var_E0, vbNullString
  loc_BE4F1E: HardType
  loc_BE4F1F: NeVarBool
  loc_BE4F21: FFree1Ad var_C0
  loc_BE4F24: FFreeVar var_D0 = "": var_124 = ""
  loc_BE4F2D: BranchF loc_BE4F9D
  loc_BE4F30: FLdPr Me
  loc_BE4F33: VCallAd Control_ID_ItemNotaFlex
  loc_BE4F36: FStAdFunc var_C0
  loc_BE4F39: FLdPr var_C0
  loc_BE4F3C: LateIdLdVar var_D0 DispID_0 0
  loc_BE4F43: PopAd
  loc_BE4F45: FLdPr Me
  loc_BE4F48: VCallAd Control_ID_ItemNotaFlex
  loc_BE4F4B: FStAdFunc var_114
  loc_BE4F4E: FLdPr var_114
  loc_BE4F51: LateIdLdVar var_124 DispID_0 0
  loc_BE4F58: CStrVarTmp
  loc_BE4F59: FStStrNoPop var_128
  loc_BE4F5C: FnLenStr
  loc_BE4F5D: LitI4 1
  loc_BE4F62: SubI4
  loc_BE4F63: FLdRfVar var_D0
  loc_BE4F66: CStrVarTmp
  loc_BE4F67: FStStrNoPop var_308
  loc_BE4F6A: ImpAdCallI2 Left$(, )
  loc_BE4F6F: CVarStr var_138
  loc_BE4F72: PopAdLdVar
  loc_BE4F73: FLdPr Me
  loc_BE4F76: VCallAd Control_ID_ItemNotaFlex
  loc_BE4F79: FStAdFunc var_304
  loc_BE4F7C: FLdPr var_304
  loc_BE4F7F: LateIdSt
  loc_BE4F84: FFreeStr var_128 = ""
  loc_BE4F8B: FFreeAd var_C0 = "": var_114 = ""
  loc_BE4F94: FFreeVar var_D0 = "": var_124 = ""
  loc_BE4F9D: Branch loc_BE4FD1
  loc_BE4FA0: LitStr "No se puede modificar la cotización porque esta incluida en una Orden de Compra"
  loc_BE4FA3: FLdPr Me
  loc_BE4FA6: MemStStrCopy
  loc_BE4FAA: LitI4 0
  loc_BE4FAF: FLdPr Me
  loc_BE4FB2: MemLdStr global_68
  loc_BE4FB5: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE4FBA: FLdPr Me
  loc_BE4FBD: VCallAd Control_ID_ItemNotaFlex
  loc_BE4FC0: FStAdFunc var_C0
  loc_BE4FC3: FLdPr var_C0
  loc_BE4FC6: LateIdCall
  loc_BE4FCE: FFree1Ad var_C0
  loc_BE4FD1: Branch loc_BE569E
  loc_BE4FD4: FLdPr Me
  loc_BE4FD7: VCallAd Control_ID_ItemNotaFlex
  loc_BE4FDA: FStAdFunc var_C0
  loc_BE4FDD: FLdPr var_C0
  loc_BE4FE0: LateIdLdVar var_D0 DispID_11 0
  loc_BE4FE7: CI4Var
  loc_BE4FE9: FStR4 var_310
  loc_BE4FEC: FFree1Ad var_C0
  loc_BE4FEF: FFree1Var var_D0 = ""
  loc_BE4FF2: ILdRf var_310
  loc_BE4FF5: LitI4 4
  loc_BE4FFA: EqI4
  loc_BE4FFB: BranchF loc_BE5109
  loc_BE4FFE: FLdPr Me
  loc_BE5001: VCallAd Control_ID_ItemNotaFlex
  loc_BE5004: FStAdFunc var_C0
  loc_BE5007: FLdPr var_C0
  loc_BE500A: LateIdLdVar var_D0 DispID_10 0
  loc_BE5011: CI4Var
  loc_BE5013: CVarI4
  loc_BE5017: PopAdLdVar
  loc_BE5018: LitVarI4
  loc_BE5020: PopAdLdVar
  loc_BE5021: FLdPr Me
  loc_BE5024: VCallAd Control_ID_ItemNotaFlex
  loc_BE5027: FStAdFunc var_114
  loc_BE502A: FLdPr var_114
  loc_BE502D: LateIdCallLdVar
  loc_BE5037: CStrVarTmp
  loc_BE5038: FStStrNoPop var_128
  loc_BE503B: LitStr "No"
  loc_BE503E: EqStr
  loc_BE5040: FFree1Str var_128
  loc_BE5043: FFreeAd var_C0 = ""
  loc_BE504A: FFreeVar var_D0 = ""
  loc_BE5051: BranchF loc_BE50D5
  loc_BE5054: FLdPr Me
  loc_BE5057: VCallAd Control_ID_ItemNotaFlex
  loc_BE505A: FStAdFunc var_C0
  loc_BE505D: FLdPr var_C0
  loc_BE5060: LateIdLdVar var_D0 DispID_0 0
  loc_BE5067: CStrVarTmp
  loc_BE5068: FStStrNoPop var_128
  loc_BE506B: FnLenStr
  loc_BE506C: LitI4 &H3E8
  loc_BE5071: LeI4
  loc_BE5072: FFree1Str var_128
  loc_BE5075: FFree1Ad var_C0
  loc_BE5078: FFree1Var var_D0 = ""
  loc_BE507B: BranchF loc_BE50D2
  loc_BE507E: FLdPr Me
  loc_BE5081: VCallAd Control_ID_ItemNotaFlex
  loc_BE5084: FStAdFunc var_C0
  loc_BE5087: FLdPr var_C0
  loc_BE508A: LateIdLdVar var_D0 DispID_0 0
  loc_BE5091: CStrVarTmp
  loc_BE5092: CVarStr var_138
  loc_BE5095: ILdI2 KeyAscii
  loc_BE5098: CI4UI1
  loc_BE5099: FLdRfVar var_124
  loc_BE509C: ImpAdCallFPR4  = Chr()
  loc_BE50A1: FLdRfVar var_124
  loc_BE50A4: AddVar var_148
  loc_BE50A8: CStrVarTmp
  loc_BE50A9: CVarStr var_158
  loc_BE50AC: PopAdLdVar
  loc_BE50AD: FLdPr Me
  loc_BE50B0: VCallAd Control_ID_ItemNotaFlex
  loc_BE50B3: FStAdFunc var_114
  loc_BE50B6: FLdPr var_114
  loc_BE50B9: LateIdSt
  loc_BE50BE: FFreeAd var_C0 = ""
  loc_BE50C5: FFreeVar var_D0 = "": var_138 = "": var_124 = "": var_148 = ""
  loc_BE50D2: Branch loc_BE5106
  loc_BE50D5: LitStr "No se puede modificar la cotización porque esta incluída en una Orden de Compra"
  loc_BE50D8: FLdPr Me
  loc_BE50DB: MemStStrCopy
  loc_BE50DF: LitI4 0
  loc_BE50E4: FLdPr Me
  loc_BE50E7: MemLdStr global_68
  loc_BE50EA: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE50EF: FLdPr Me
  loc_BE50F2: VCallAd Control_ID_ItemNotaFlex
  loc_BE50F5: FStAdFunc var_C0
  loc_BE50F8: FLdPr var_C0
  loc_BE50FB: LateIdCall
  loc_BE5103: FFree1Ad var_C0
  loc_BE5106: Branch loc_BE569E
  loc_BE5109: ILdRf var_310
  loc_BE510C: LitI4 5
  loc_BE5111: EqI4
  loc_BE5112: BranchF loc_BE5251
  loc_BE5115: FLdPr Me
  loc_BE5118: VCallAd Control_ID_ItemNotaFlex
  loc_BE511B: FStAdFunc var_C0
  loc_BE511E: FLdPr var_C0
  loc_BE5121: LateIdLdVar var_D0 DispID_10 0
  loc_BE5128: CI4Var
  loc_BE512A: CVarI4
  loc_BE512E: PopAdLdVar
  loc_BE512F: LitVarI4
  loc_BE5137: PopAdLdVar
  loc_BE5138: FLdPr Me
  loc_BE513B: VCallAd Control_ID_ItemNotaFlex
  loc_BE513E: FStAdFunc var_114
  loc_BE5141: FLdPr var_114
  loc_BE5144: LateIdCallLdVar
  loc_BE514E: CStrVarTmp
  loc_BE514F: FStStrNoPop var_128
  loc_BE5152: LitStr "No"
  loc_BE5155: EqStr
  loc_BE5157: FFree1Str var_128
  loc_BE515A: FFreeAd var_C0 = ""
  loc_BE5161: FFreeVar var_D0 = ""
  loc_BE5168: BranchF loc_BE521D
  loc_BE516B: ILdI2 KeyAscii
  loc_BE516E: LitStr "."
  loc_BE5171: ImpAdCallI2 Asc()
  loc_BE5176: EqI2
  loc_BE5177: BranchF loc_BE5185
  loc_BE517A: LitStr ","
  loc_BE517D: ImpAdCallI2 Asc()
  loc_BE5182: IStI2 KeyAscii
  loc_BE5185: LitStr "1234567890,"
  loc_BE5188: FStStrCopy var_128
  loc_BE518B: FLdRfVar var_128
  loc_BE518E: ILdRf KeyAscii
  loc_BE5191: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_BE5196: IStI2 KeyAscii
  loc_BE5199: FFree1Str var_128
  loc_BE519C: FLdPr Me
  loc_BE519F: VCallAd Control_ID_ItemNotaFlex
  loc_BE51A2: FStAdFunc var_C0
  loc_BE51A5: FLdPr var_C0
  loc_BE51A8: LateIdLdVar var_D0 DispID_0 0
  loc_BE51AF: CStrVarTmp
  loc_BE51B0: FStStrNoPop var_128
  loc_BE51B3: FnLenStr
  loc_BE51B4: LitI4 &HC
  loc_BE51B9: LeI4
  loc_BE51BA: FFree1Str var_128
  loc_BE51BD: FFree1Ad var_C0
  loc_BE51C0: FFree1Var var_D0 = ""
  loc_BE51C3: BranchF loc_BE521A
  loc_BE51C6: FLdPr Me
  loc_BE51C9: VCallAd Control_ID_ItemNotaFlex
  loc_BE51CC: FStAdFunc var_C0
  loc_BE51CF: FLdPr var_C0
  loc_BE51D2: LateIdLdVar var_D0 DispID_0 0
  loc_BE51D9: CStrVarTmp
  loc_BE51DA: CVarStr var_138
  loc_BE51DD: ILdI2 KeyAscii
  loc_BE51E0: CI4UI1
  loc_BE51E1: FLdRfVar var_124
  loc_BE51E4: ImpAdCallFPR4  = Chr()
  loc_BE51E9: FLdRfVar var_124
  loc_BE51EC: AddVar var_148
  loc_BE51F0: CStrVarTmp
  loc_BE51F1: CVarStr var_158
  loc_BE51F4: PopAdLdVar
  loc_BE51F5: FLdPr Me
  loc_BE51F8: VCallAd Control_ID_ItemNotaFlex
  loc_BE51FB: FStAdFunc var_114
  loc_BE51FE: FLdPr var_114
  loc_BE5201: LateIdSt
  loc_BE5206: FFreeAd var_C0 = ""
  loc_BE520D: FFreeVar var_D0 = "": var_138 = "": var_124 = "": var_148 = ""
  loc_BE521A: Branch loc_BE524E
  loc_BE521D: LitStr "No se puede modificar la cotización porque esta incluída en una Orden de Compra"
  loc_BE5220: FLdPr Me
  loc_BE5223: MemStStrCopy
  loc_BE5227: LitI4 0
  loc_BE522C: FLdPr Me
  loc_BE522F: MemLdStr global_68
  loc_BE5232: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE5237: FLdPr Me
  loc_BE523A: VCallAd Control_ID_ItemNotaFlex
  loc_BE523D: FStAdFunc var_C0
  loc_BE5240: FLdPr var_C0
  loc_BE5243: LateIdCall
  loc_BE524B: FFree1Ad var_C0
  loc_BE524E: Branch loc_BE569E
  loc_BE5251: ILdRf var_310
  loc_BE5254: LitI4 6
  loc_BE5259: EqI4
  loc_BE525A: BranchF loc_BE5490
  loc_BE525D: FLdPr Me
  loc_BE5260: VCallAd Control_ID_ItemNotaFlex
  loc_BE5263: FStAdFunc var_C0
  loc_BE5266: FLdPr var_C0
  loc_BE5269: LateIdLdVar var_D0 DispID_10 0
  loc_BE5270: CI4Var
  loc_BE5272: CVarI4
  loc_BE5276: PopAdLdVar
  loc_BE5277: LitVarI4
  loc_BE527F: PopAdLdVar
  loc_BE5280: FLdPr Me
  loc_BE5283: VCallAd Control_ID_ItemNotaFlex
  loc_BE5286: FStAdFunc var_114
  loc_BE5289: FLdPr var_114
  loc_BE528C: LateIdCallLdVar
  loc_BE5296: CStrVarTmp
  loc_BE5297: FStStrNoPop var_128
  loc_BE529A: LitStr "No"
  loc_BE529D: EqStr
  loc_BE529F: FFree1Str var_128
  loc_BE52A2: FFreeAd var_C0 = ""
  loc_BE52A9: FFreeVar var_D0 = ""
  loc_BE52B0: BranchF loc_BE5365
  loc_BE52B3: ILdI2 KeyAscii
  loc_BE52B6: LitStr "."
  loc_BE52B9: ImpAdCallI2 Asc()
  loc_BE52BE: EqI2
  loc_BE52BF: BranchF loc_BE52CD
  loc_BE52C2: LitStr ","
  loc_BE52C5: ImpAdCallI2 Asc()
  loc_BE52CA: IStI2 KeyAscii
  loc_BE52CD: LitStr "1234567890,"
  loc_BE52D0: FStStrCopy var_128
  loc_BE52D3: FLdRfVar var_128
  loc_BE52D6: ILdRf KeyAscii
  loc_BE52D9: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_BE52DE: IStI2 KeyAscii
  loc_BE52E1: FFree1Str var_128
  loc_BE52E4: FLdPr Me
  loc_BE52E7: VCallAd Control_ID_ItemNotaFlex
  loc_BE52EA: FStAdFunc var_C0
  loc_BE52ED: FLdPr var_C0
  loc_BE52F0: LateIdLdVar var_D0 DispID_0 0
  loc_BE52F7: CStrVarTmp
  loc_BE52F8: FStStrNoPop var_128
  loc_BE52FB: FnLenStr
  loc_BE52FC: LitI4 &HC
  loc_BE5301: LeI4
  loc_BE5302: FFree1Str var_128
  loc_BE5305: FFree1Ad var_C0
  loc_BE5308: FFree1Var var_D0 = ""
  loc_BE530B: BranchF loc_BE5362
  loc_BE530E: FLdPr Me
  loc_BE5311: VCallAd Control_ID_ItemNotaFlex
  loc_BE5314: FStAdFunc var_C0
  loc_BE5317: FLdPr var_C0
  loc_BE531A: LateIdLdVar var_D0 DispID_0 0
  loc_BE5321: CStrVarTmp
  loc_BE5322: CVarStr var_138
  loc_BE5325: ILdI2 KeyAscii
  loc_BE5328: CI4UI1
  loc_BE5329: FLdRfVar var_124
  loc_BE532C: ImpAdCallFPR4  = Chr()
  loc_BE5331: FLdRfVar var_124
  loc_BE5334: AddVar var_148
  loc_BE5338: CStrVarTmp
  loc_BE5339: CVarStr var_158
  loc_BE533C: PopAdLdVar
  loc_BE533D: FLdPr Me
  loc_BE5340: VCallAd Control_ID_ItemNotaFlex
  loc_BE5343: FStAdFunc var_114
  loc_BE5346: FLdPr var_114
  loc_BE5349: LateIdSt
  loc_BE534E: FFreeAd var_C0 = ""
  loc_BE5355: FFreeVar var_D0 = "": var_138 = "": var_124 = "": var_148 = ""
  loc_BE5362: Branch loc_BE548D
  loc_BE5365: LitStr "Municipalidad de Guaymallén"
  loc_BE5368: LitStr "Municipalidad de Santa Rosa"
  loc_BE536B: EqStr
  loc_BE536D: LitStr "Municipalidad de Guaymallén"
  loc_BE5370: LitStr "Municipalidad de Maipú"
  loc_BE5373: EqStr
  loc_BE5375: OrI4
  loc_BE5376: BranchF loc_BE545C
  loc_BE5379: LitStr "No se puede modificar la cotización porque esta incluida en una orden de compra"
  loc_BE537C: FLdPr Me
  loc_BE537F: MemStStrCopy
  loc_BE5383: LitI4 0
  loc_BE5388: FLdPr Me
  loc_BE538B: MemLdStr global_68
  loc_BE538E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE5393: FLdPr Me
  loc_BE5396: VCallAd Control_ID_ItemNotaFlex
  loc_BE5399: FStAdFunc var_C0
  loc_BE539C: FLdPr var_C0
  loc_BE539F: LateIdCall
  loc_BE53A7: FFree1Ad var_C0
  loc_BE53AA: ILdI2 KeyAscii
  loc_BE53AD: LitStr "."
  loc_BE53B0: ImpAdCallI2 Asc()
  loc_BE53B5: EqI2
  loc_BE53B6: BranchF loc_BE53C4
  loc_BE53B9: LitStr ","
  loc_BE53BC: ImpAdCallI2 Asc()
  loc_BE53C1: IStI2 KeyAscii
  loc_BE53C4: LitStr "1234567890,"
  loc_BE53C7: FStStrCopy var_128
  loc_BE53CA: FLdRfVar var_128
  loc_BE53CD: ILdRf KeyAscii
  loc_BE53D0: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_BE53D5: IStI2 KeyAscii
  loc_BE53D8: FFree1Str var_128
  loc_BE53DB: FLdPr Me
  loc_BE53DE: VCallAd Control_ID_ItemNotaFlex
  loc_BE53E1: FStAdFunc var_C0
  loc_BE53E4: FLdPr var_C0
  loc_BE53E7: LateIdLdVar var_D0 DispID_0 0
  loc_BE53EE: CStrVarTmp
  loc_BE53EF: FStStrNoPop var_128
  loc_BE53F2: FnLenStr
  loc_BE53F3: LitI4 &HC
  loc_BE53F8: LeI4
  loc_BE53F9: FFree1Str var_128
  loc_BE53FC: FFree1Ad var_C0
  loc_BE53FF: FFree1Var var_D0 = ""
  loc_BE5402: BranchF loc_BE5459
  loc_BE5405: FLdPr Me
  loc_BE5408: VCallAd Control_ID_ItemNotaFlex
  loc_BE540B: FStAdFunc var_C0
  loc_BE540E: FLdPr var_C0
  loc_BE5411: LateIdLdVar var_D0 DispID_0 0
  loc_BE5418: CStrVarTmp
  loc_BE5419: CVarStr var_138
  loc_BE541C: ILdI2 KeyAscii
  loc_BE541F: CI4UI1
  loc_BE5420: FLdRfVar var_124
  loc_BE5423: ImpAdCallFPR4  = Chr()
  loc_BE5428: FLdRfVar var_124
  loc_BE542B: AddVar var_148
  loc_BE542F: CStrVarTmp
  loc_BE5430: CVarStr var_158
  loc_BE5433: PopAdLdVar
  loc_BE5434: FLdPr Me
  loc_BE5437: VCallAd Control_ID_ItemNotaFlex
  loc_BE543A: FStAdFunc var_114
  loc_BE543D: FLdPr var_114
  loc_BE5440: LateIdSt
  loc_BE5445: FFreeAd var_C0 = ""
  loc_BE544C: FFreeVar var_D0 = "": var_138 = "": var_124 = "": var_148 = ""
  loc_BE5459: Branch loc_BE548D
  loc_BE545C: LitStr "No se puede modificar la cotización porque esta incluida en una orden de compra"
  loc_BE545F: FLdPr Me
  loc_BE5462: MemStStrCopy
  loc_BE5466: LitI4 0
  loc_BE546B: FLdPr Me
  loc_BE546E: MemLdStr global_68
  loc_BE5471: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE5476: FLdPr Me
  loc_BE5479: VCallAd Control_ID_ItemNotaFlex
  loc_BE547C: FStAdFunc var_C0
  loc_BE547F: FLdPr var_C0
  loc_BE5482: LateIdCall
  loc_BE548A: FFree1Ad var_C0
  loc_BE548D: Branch loc_BE569E
  loc_BE5490: ILdRf var_310
  loc_BE5493: LitI4 &HA
  loc_BE5498: EqI4
  loc_BE5499: BranchF loc_BE569E
  loc_BE549C: FLdPr Me
  loc_BE549F: VCallAd Control_ID_ItemNotaFlex
  loc_BE54A2: FStAdFunc var_C0
  loc_BE54A5: FLdPr var_C0
  loc_BE54A8: LateIdLdVar var_D0 DispID_10 0
  loc_BE54AF: CI4Var
  loc_BE54B1: CVarI4
  loc_BE54B5: PopAdLdVar
  loc_BE54B6: LitVarI4
  loc_BE54BE: PopAdLdVar
  loc_BE54BF: FLdPr Me
  loc_BE54C2: VCallAd Control_ID_ItemNotaFlex
  loc_BE54C5: FStAdFunc var_114
  loc_BE54C8: FLdPr var_114
  loc_BE54CB: LateIdCallLdVar
  loc_BE54D5: CStrVarTmp
  loc_BE54D6: FStStrNoPop var_128
  loc_BE54D9: LitStr "No"
  loc_BE54DC: EqStr
  loc_BE54DE: FFree1Str var_128
  loc_BE54E1: FFreeAd var_C0 = ""
  loc_BE54E8: FFreeVar var_D0 = ""
  loc_BE54EF: BranchF loc_BE566D
  loc_BE54F2: FLdPr Me
  loc_BE54F5: VCallAd Control_ID_ItemNotaFlex
  loc_BE54F8: FStAdFunc var_C0
  loc_BE54FB: FLdPr var_C0
  loc_BE54FE: LateIdLdVar var_D0 DispID_0 0
  loc_BE5505: CStrVarTmp
  loc_BE5506: FStStrNoPop var_128
  loc_BE5509: FnLenStr
  loc_BE550A: LitI4 &H13
  loc_BE550F: LeI4
  loc_BE5510: FFree1Str var_128
  loc_BE5513: FFree1Ad var_C0
  loc_BE5516: FFree1Var var_D0 = ""
  loc_BE5519: BranchF loc_BE5570
  loc_BE551C: FLdPr Me
  loc_BE551F: VCallAd Control_ID_ItemNotaFlex
  loc_BE5522: FStAdFunc var_C0
  loc_BE5525: FLdPr var_C0
  loc_BE5528: LateIdLdVar var_D0 DispID_0 0
  loc_BE552F: CStrVarTmp
  loc_BE5530: CVarStr var_138
  loc_BE5533: ILdI2 KeyAscii
  loc_BE5536: CI4UI1
  loc_BE5537: FLdRfVar var_124
  loc_BE553A: ImpAdCallFPR4  = Chr()
  loc_BE553F: FLdRfVar var_124
  loc_BE5542: AddVar var_148
  loc_BE5546: CStrVarTmp
  loc_BE5547: CVarStr var_158
  loc_BE554A: PopAdLdVar
  loc_BE554B: FLdPr Me
  loc_BE554E: VCallAd Control_ID_ItemNotaFlex
  loc_BE5551: FStAdFunc var_114
  loc_BE5554: FLdPr var_114
  loc_BE5557: LateIdSt
  loc_BE555C: FFreeAd var_C0 = ""
  loc_BE5563: FFreeVar var_D0 = "": var_138 = "": var_124 = "": var_148 = ""
  loc_BE5570: FLdPr Me
  loc_BE5573: VCallAd Control_ID_ItemNotaFlex
  loc_BE5576: FStAdFunc var_C0
  loc_BE5579: FLdPr var_C0
  loc_BE557C: LateIdLdVar var_D0 DispID_10 0
  loc_BE5583: CI4Var
  loc_BE5585: CVarI4
  loc_BE5589: PopAdLdVar
  loc_BE558A: LitVarI4
  loc_BE5592: PopAdLdVar
  loc_BE5593: FLdPr Me
  loc_BE5596: VCallAd Control_ID_ItemNotaFlex
  loc_BE5599: FStAdFunc var_114
  loc_BE559C: FLdPr var_114
  loc_BE559F: LateIdCallLdVar
  loc_BE55A9: CStrVarTmp
  loc_BE55AA: FStStrNoPop var_128
  loc_BE55AD: LitStr vbNullString
  loc_BE55B0: EqStr
  loc_BE55B2: FFree1Str var_128
  loc_BE55B5: FFreeAd var_C0 = ""
  loc_BE55BC: FFreeVar var_D0 = ""
  loc_BE55C3: BranchF loc_BE566A
  loc_BE55C6: FLdPr Me
  loc_BE55C9: VCallAd Control_ID_ItemNotaFlex
  loc_BE55CC: FStAdFunc var_C0
  loc_BE55CF: FLdPr var_C0
  loc_BE55D2: LateIdLdVar var_D0 DispID_10 0
  loc_BE55D9: CI4Var
  loc_BE55DB: CVarI4
  loc_BE55DF: PopAdLdVar
  loc_BE55E0: LitVarI4
  loc_BE55E8: PopAdLdVar
  loc_BE55E9: FLdPr Me
  loc_BE55EC: VCallAd Control_ID_ItemNotaFlex
  loc_BE55EF: FStAdFunc var_114
  loc_BE55F2: FLdPr var_114
  loc_BE55F5: LateIdCallLdVar
  loc_BE55FF: PopAd
  loc_BE5601: FLdRfVar var_308
  loc_BE5604: FLdRfVar var_124
  loc_BE5607: CStrVarTmp
  loc_BE5608: FStStrNoPop var_128
  loc_BE560B: FLdPr Me
  loc_BE560E: MemLdRfVar from_stack_1.global_52
  loc_BE5611: NewIfNullPr clscotizacion
  loc_BE5614: from_stack_2v = clscotizacion.ConsultarMarcaInsu(from_stack_1v)
  loc_BE5619: ILdRf var_308
  loc_BE561C: LitStr "1"
  loc_BE561F: EqStr
  loc_BE5621: FFreeStr var_128 = ""
  loc_BE5628: FFreeAd var_C0 = ""
  loc_BE562F: FFreeVar var_D0 = ""
  loc_BE5636: BranchF loc_BE566A
  loc_BE5639: LitStr "La MARCA es Obligatoria. Verifique ..."
  loc_BE563C: FLdPr Me
  loc_BE563F: MemStStrCopy
  loc_BE5643: LitI4 0
  loc_BE5648: FLdPr Me
  loc_BE564B: MemLdStr global_68
  loc_BE564E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE5653: FLdPr Me
  loc_BE5656: VCallAd Control_ID_ItemNotaFlex
  loc_BE5659: FStAdFunc var_C0
  loc_BE565C: FLdPr var_C0
  loc_BE565F: LateIdCall
  loc_BE5667: FFree1Ad var_C0
  loc_BE566A: Branch loc_BE569E
  loc_BE566D: LitStr "No se puede modificar la cotización porque esta incluída en una Orden de Compra"
  loc_BE5670: FLdPr Me
  loc_BE5673: MemStStrCopy
  loc_BE5677: LitI4 0
  loc_BE567C: FLdPr Me
  loc_BE567F: MemLdStr global_68
  loc_BE5682: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE5687: FLdPr Me
  loc_BE568A: VCallAd Control_ID_ItemNotaFlex
  loc_BE568D: FStAdFunc var_C0
  loc_BE5690: FLdPr var_C0
  loc_BE5693: LateIdCall
  loc_BE569B: FFree1Ad var_C0
  loc_BE569E: ExitProcHresult
End Sub

Private Sub ItemNotaFlex_EnterCell() '9A7EBC
  'Data Table: 4A77A4
  loc_9A7E3C: OnErrorGoto loc_9A7EA1
  loc_9A7E3F: FLdPr Me
  loc_9A7E42: VCallAd Control_ID_ItemNotaFlex
  loc_9A7E45: FStAdFunc var_88
  loc_9A7E48: FLdPr var_88
  loc_9A7E4B: LateIdLdVar var_98 DispID_10 0
  loc_9A7E52: CI4Var
  loc_9A7E54: CVarI4
  loc_9A7E58: PopAdLdVar
  loc_9A7E59: LitVarI4
  loc_9A7E61: PopAdLdVar
  loc_9A7E62: FLdPr Me
  loc_9A7E65: VCallAd Control_ID_ItemNotaFlex
  loc_9A7E68: FStAdFunc var_DC
  loc_9A7E6B: FLdPr var_DC
  loc_9A7E6E: LateIdCallLdVar
  loc_9A7E78: CStrVarTmp
  loc_9A7E79: FStStrNoPop var_F0
  loc_9A7E7C: FLdPr Me
  loc_9A7E7F: VCallAd Control_ID_lblCaracteristicas
  loc_9A7E82: FStAdFunc var_F4
  loc_9A7E85: FLdPr var_F4
  loc_9A7E88: Me.Caption = from_stack_1
  loc_9A7E8D: FFree1Str var_F0
  loc_9A7E90: FFreeAd var_88 = "": var_DC = ""
  loc_9A7E99: FFreeVar var_98 = ""
  loc_9A7EA0: ExitProcHresult
  loc_9A7EA1: LitStr vbNullString
  loc_9A7EA4: FLdPr Me
  loc_9A7EA7: VCallAd Control_ID_lblCaracteristicas
  loc_9A7EAA: FStAdFunc var_88
  loc_9A7EAD: FLdPr var_88
  loc_9A7EB0: Me.Caption = from_stack_1
  loc_9A7EB5: FFree1Ad var_88
  loc_9A7EB8: ExitProcHresult
End Sub

Private Sub ItemNotaFlex_LeaveCell() 'B07614
  'Data Table: 4A77A4
  loc_B06E70: FLdPr Me
  loc_B06E73: MemLdUI1 global_64
  loc_B06E77: CI2UI1
  loc_B06E79: LitI2_Byte 0
  loc_B06E7B: NeI2
  loc_B06E7C: BranchF loc_B07612
  loc_B06E7F: FLdPr Me
  loc_B06E82: VCallAd Control_ID_ItemNotaFlex
  loc_B06E85: FStAdFunc var_88
  loc_B06E88: FLdPr var_88
  loc_B06E8B: LateIdLdVar var_98 DispID_10 0
  loc_B06E92: CI4Var
  loc_B06E94: LitI4 0
  loc_B06E99: GtI4
  loc_B06E9A: FFree1Ad var_88
  loc_B06E9D: FFree1Var var_98 = ""
  loc_B06EA0: BranchF loc_B07612
  loc_B06EA3: FLdPr Me
  loc_B06EA6: VCallAd Control_ID_ItemNotaFlex
  loc_B06EA9: FStAdFunc var_88
  loc_B06EAC: FLdPr var_88
  loc_B06EAF: LateIdLdVar var_98 DispID_10 0
  loc_B06EB6: CI4Var
  loc_B06EB8: CVarI4
  loc_B06EBC: PopAdLdVar
  loc_B06EBD: LitVarI4
  loc_B06EC5: PopAdLdVar
  loc_B06EC6: FLdPr Me
  loc_B06EC9: VCallAd Control_ID_ItemNotaFlex
  loc_B06ECC: FStAdFunc var_DC
  loc_B06ECF: FLdPr var_DC
  loc_B06ED2: LateIdCallLdVar
  loc_B06EDC: CStrVarTmp
  loc_B06EDD: FStStrNoPop var_F0
  loc_B06EE0: LitStr vbNullString
  loc_B06EE3: NeStr
  loc_B06EE5: FFree1Str var_F0
  loc_B06EE8: FFreeAd var_88 = ""
  loc_B06EEF: FFreeVar var_98 = ""
  loc_B06EF6: BranchF loc_B06F8F
  loc_B06EF9: FLdPr Me
  loc_B06EFC: VCallAd Control_ID_ItemNotaFlex
  loc_B06EFF: FStAdFunc var_88
  loc_B06F02: FLdPr var_88
  loc_B06F05: LateIdLdVar var_98 DispID_11 0
  loc_B06F0C: CI4Var
  loc_B06F0E: LitI4 1
  loc_B06F13: EqI4
  loc_B06F14: FFree1Ad var_88
  loc_B06F17: FFree1Var var_98 = ""
  loc_B06F1A: BranchF loc_B06F8F
  loc_B06F1D: FLdPr Me
  loc_B06F20: VCallAd Control_ID_ItemNotaFlex
  loc_B06F23: FStAdFunc var_88
  loc_B06F26: FLdPr var_88
  loc_B06F29: LateIdLdVar var_98 DispID_0 0
  loc_B06F30: CStrVarTmp
  loc_B06F31: FStStrNoPop var_F0
  loc_B06F34: LitStr vbNullString
  loc_B06F37: NeStr
  loc_B06F39: FFree1Str var_F0
  loc_B06F3C: FFree1Ad var_88
  loc_B06F3F: FFree1Var var_98 = ""
  loc_B06F42: BranchF loc_B06F48
  loc_B06F45: Branch loc_B06F8F
  loc_B06F48: FLdPr Me
  loc_B06F4B: VCallAd Control_ID_ItemNotaFlex
  loc_B06F4E: FStAdFunc var_88
  loc_B06F51: FLdPr var_88
  loc_B06F54: LateIdLdVar var_98 DispID_10 0
  loc_B06F5B: CI4Var
  loc_B06F5D: CVarI4
  loc_B06F61: PopAdLdVar
  loc_B06F62: LitVarI4
  loc_B06F6A: PopAdLdVar
  loc_B06F6B: LitVarStr var_100, vbNullString
  loc_B06F70: PopAdLdVar
  loc_B06F71: FLdPr Me
  loc_B06F74: VCallAd Control_ID_ItemNotaFlex
  loc_B06F77: FStAdFunc var_DC
  loc_B06F7A: FLdPr var_DC
  loc_B06F7D: LateIdCallSt
  loc_B06F85: FFreeAd var_88 = ""
  loc_B06F8C: FFree1Var var_98 = ""
  loc_B06F8F: FLdPr Me
  loc_B06F92: VCallAd Control_ID_ItemNotaFlex
  loc_B06F95: FStAdFunc var_88
  loc_B06F98: FLdPr var_88
  loc_B06F9B: LateIdLdVar var_98 DispID_10 0
  loc_B06FA2: CI4Var
  loc_B06FA4: CVarI4
  loc_B06FA8: PopAdLdVar
  loc_B06FA9: LitVarI4
  loc_B06FB1: PopAdLdVar
  loc_B06FB2: FLdPr Me
  loc_B06FB5: VCallAd Control_ID_ItemNotaFlex
  loc_B06FB8: FStAdFunc var_DC
  loc_B06FBB: FLdPr var_DC
  loc_B06FBE: LateIdCallLdVar
  loc_B06FC8: CStrVarTmp
  loc_B06FC9: FStStrNoPop var_F0
  loc_B06FCC: LitStr vbNullString
  loc_B06FCF: NeStr
  loc_B06FD1: FFree1Str var_F0
  loc_B06FD4: FFreeAd var_88 = ""
  loc_B06FDB: FFreeVar var_98 = ""
  loc_B06FE2: BranchF loc_B07333
  loc_B06FE5: FLdPr Me
  loc_B06FE8: VCallAd Control_ID_ItemNotaFlex
  loc_B06FEB: FStAdFunc var_88
  loc_B06FEE: FLdPr var_88
  loc_B06FF1: LateIdLdVar var_98 DispID_10 0
  loc_B06FF8: CI4Var
  loc_B06FFA: CVarI4
  loc_B06FFE: PopAdLdVar
  loc_B06FFF: LitVarI4
  loc_B07007: PopAdLdVar
  loc_B07008: FLdPr Me
  loc_B0700B: VCallAd Control_ID_ItemNotaFlex
  loc_B0700E: FStAdFunc var_DC
  loc_B07011: FLdPr var_DC
  loc_B07014: LateIdCallLdVar
  loc_B0701E: PopAd
  loc_B07020: LitStr "0"
  loc_B07023: LitI2_Byte &HFF
  loc_B07025: LitI2_Byte 0
  loc_B07027: LitI2_Byte 0
  loc_B07029: FLdRfVar var_EC
  loc_B0702C: CStrVarTmp
  loc_B0702D: FStStrNoPop var_F0
  loc_B07030: LitStr "decimal"
  loc_B07033: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B07038: FStStrNoPop var_114
  loc_B0703B: FLdPr Me
  loc_B0703E: MemStStrCopy
  loc_B07042: FFreeStr var_F0 = ""
  loc_B07049: FFreeAd var_88 = ""
  loc_B07050: FFreeVar var_98 = ""
  loc_B07057: FLdPr Me
  loc_B0705A: MemLdStr global_68
  loc_B0705D: LitStr vbNullString
  loc_B07060: NeStr
  loc_B07062: BranchF loc_B0708D
  loc_B07065: LitI4 0
  loc_B0706A: FLdPr Me
  loc_B0706D: MemLdStr global_68
  loc_B07070: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B07075: FLdPr Me
  loc_B07078: VCallAd Control_ID_ItemNotaFlex
  loc_B0707B: FStAdFunc var_88
  loc_B0707E: FLdPr var_88
  loc_B07081: LateIdCall
  loc_B07089: FFree1Ad var_88
  loc_B0708C: ExitProcHresult
  loc_B0708D: FLdPr Me
  loc_B07090: VCallAd Control_ID_ItemNotaFlex
  loc_B07093: FStAdFunc var_88
  loc_B07096: FLdPr var_88
  loc_B07099: LateIdLdVar var_98 DispID_10 0
  loc_B070A0: CI4Var
  loc_B070A2: CVarI4
  loc_B070A6: PopAdLdVar
  loc_B070A7: LitVarI4
  loc_B070AF: PopAdLdVar
  loc_B070B0: FLdPr Me
  loc_B070B3: VCallAd Control_ID_ItemNotaFlex
  loc_B070B6: FStAdFunc var_DC
  loc_B070B9: FLdPr var_DC
  loc_B070BC: LateIdCallLdVar
  loc_B070C6: CStrVarTmp
  loc_B070C7: CVarStr var_124
  loc_B070CA: ImpAdCallI2 IsNumeric()
  loc_B070CF: FLdPr Me
  loc_B070D2: VCallAd Control_ID_ItemNotaFlex
  loc_B070D5: FStAdFunc var_128
  loc_B070D8: FLdPr var_128
  loc_B070DB: LateIdLdVar var_138 DispID_10 0
  loc_B070E2: CI4Var
  loc_B070E4: CVarI4
  loc_B070E8: PopAdLdVar
  loc_B070E9: LitVarI4
  loc_B070F1: PopAdLdVar
  loc_B070F2: FLdPr Me
  loc_B070F5: VCallAd Control_ID_ItemNotaFlex
  loc_B070F8: FStAdFunc var_15C
  loc_B070FB: FLdPr var_15C
  loc_B070FE: LateIdCallLdVar
  loc_B07108: CStrVarTmp
  loc_B07109: CVarStr var_17C
  loc_B0710C: ImpAdCallI2 IsNumeric()
  loc_B07111: AndI4
  loc_B07112: FFreeAd var_88 = "": var_DC = "": var_128 = ""
  loc_B0711D: FFreeVar var_98 = "": var_EC = "": var_124 = "": var_138 = "": var_16C = ""
  loc_B0712C: BranchF loc_B07279
  loc_B0712F: FLdPr Me
  loc_B07132: VCallAd Control_ID_ItemNotaFlex
  loc_B07135: FStAdFunc var_88
  loc_B07138: FLdPr var_88
  loc_B0713B: LateIdLdVar var_98 DispID_10 0
  loc_B07142: CI4Var
  loc_B07144: CVarI4
  loc_B07148: PopAdLdVar
  loc_B07149: LitVarI4
  loc_B07151: PopAdLdVar
  loc_B07152: FLdPr Me
  loc_B07155: VCallAd Control_ID_ItemNotaFlex
  loc_B07158: FStAdFunc var_DC
  loc_B0715B: FLdPr var_DC
  loc_B0715E: LateIdCallLdVar
  loc_B07168: PopAd
  loc_B0716A: LitI4 3
  loc_B0716F: FLdRfVar var_EC
  loc_B07172: CStrVarTmp
  loc_B07173: FStStrNoPop var_F0
  loc_B07176: CR8Str
  loc_B07178: CVarR8
  loc_B0717C: FLdRfVar var_138
  loc_B0717F: ImpAdCallFPR4  = Round(, )
  loc_B07184: FLdPr Me
  loc_B07187: VCallAd Control_ID_ItemNotaFlex
  loc_B0718A: FStAdFunc var_128
  loc_B0718D: FLdPr var_128
  loc_B07190: LateIdLdVar var_16C DispID_10 0
  loc_B07197: CI4Var
  loc_B07199: CVarI4
  loc_B0719D: PopAdLdVar
  loc_B0719E: LitVarI4
  loc_B071A6: PopAdLdVar
  loc_B071A7: FLdPr Me
  loc_B071AA: VCallAd Control_ID_ItemNotaFlex
  loc_B071AD: FStAdFunc var_15C
  loc_B071B0: FLdPr var_15C
  loc_B071B3: LateIdCallLdVar
  loc_B071BD: PopAd
  loc_B071BF: LitI4 2
  loc_B071C4: FLdRfVar var_17C
  loc_B071C7: CStrVarTmp
  loc_B071C8: FStStrNoPop var_114
  loc_B071CB: CR8Str
  loc_B071CD: CVarR8
  loc_B071D1: FLdRfVar var_1BC
  loc_B071D4: ImpAdCallFPR4  = Round(, )
  loc_B071D9: FLdPr Me
  loc_B071DC: VCallAd Control_ID_ItemNotaFlex
  loc_B071DF: FStAdFunc var_210
  loc_B071E2: FLdPr var_210
  loc_B071E5: LateIdLdVar var_220 DispID_10 0
  loc_B071EC: CI4Var
  loc_B071EE: CVarI4
  loc_B071F2: PopAdLdVar
  loc_B071F3: LitVarI4
  loc_B071FB: PopAdLdVar
  loc_B071FC: LitI4 1
  loc_B07201: LitI4 1
  loc_B07206: LitVarStr var_1EC, "###,###,##0.00"
  loc_B0720B: FStVarCopyObj var_1FC
  loc_B0720E: FLdRfVar var_1FC
  loc_B07211: FLdRfVar var_138
  loc_B07214: FLdRfVar var_1BC
  loc_B07217: MulVar var_1CC
  loc_B0721B: FStVar var_1DC
  loc_B0721F: FLdRfVar var_1DC
  loc_B07222: FLdRfVar var_20C
  loc_B07225: ImpAdCallFPR4  = Format(, )
  loc_B0722A: FLdRfVar var_20C
  loc_B0722D: CStrVarTmp
  loc_B0722E: CVarStr var_270
  loc_B07231: PopAdLdVar
  loc_B07232: FLdPr Me
  loc_B07235: VCallAd Control_ID_ItemNotaFlex
  loc_B07238: FStAdFunc var_284
  loc_B0723B: FLdPr var_284
  loc_B0723E: LateIdCallSt
  loc_B07246: FFreeStr var_F0 = ""
  loc_B0724D: FFreeAd var_88 = "": var_DC = "": var_128 = "": var_15C = "": var_210 = ""
  loc_B0725C: FFreeVar var_98 = "": var_EC = "": var_124 = "": var_16C = "": var_17C = "": var_1AC = "": var_138 = "": var_1BC = "": var_1DC = "": var_1FC = "": var_220 = "": var_20C = ""
  loc_B07279: FLdPr Me
  loc_B0727C: VCallAd Control_ID_ItemNotaFlex
  loc_B0727F: FStAdFunc var_88
  loc_B07282: FLdPr var_88
  loc_B07285: LateIdLdVar var_98 DispID_10 0
  loc_B0728C: CI4Var
  loc_B0728E: CVarI4
  loc_B07292: PopAdLdVar
  loc_B07293: LitVarI4
  loc_B0729B: PopAdLdVar
  loc_B0729C: FLdPr Me
  loc_B0729F: VCallAd Control_ID_ItemNotaFlex
  loc_B072A2: FStAdFunc var_DC
  loc_B072A5: FLdPr var_DC
  loc_B072A8: LateIdCallLdVar
  loc_B072B2: PopAd
  loc_B072B4: FLdPr Me
  loc_B072B7: VCallAd Control_ID_ItemNotaFlex
  loc_B072BA: FStAdFunc var_128
  loc_B072BD: FLdPr var_128
  loc_B072C0: LateIdLdVar var_17C DispID_10 0
  loc_B072C7: CI4Var
  loc_B072C9: CVarI4
  loc_B072CD: PopAdLdVar
  loc_B072CE: LitVarI4
  loc_B072D6: PopAdLdVar
  loc_B072D7: LitI4 1
  loc_B072DC: LitI4 1
  loc_B072E1: LitVarStr var_100, "0.000"
  loc_B072E6: FStVarCopyObj var_138
  loc_B072E9: FLdRfVar var_138
  loc_B072EC: FLdRfVar var_EC
  loc_B072EF: CStrVarTmp
  loc_B072F0: CVarStr var_124
  loc_B072F3: FLdRfVar var_16C
  loc_B072F6: ImpAdCallFPR4  = Format(, )
  loc_B072FB: FLdRfVar var_16C
  loc_B072FE: CStrVarTmp
  loc_B072FF: CVarStr var_1AC
  loc_B07302: PopAdLdVar
  loc_B07303: FLdPr Me
  loc_B07306: VCallAd Control_ID_ItemNotaFlex
  loc_B07309: FStAdFunc var_15C
  loc_B0730C: FLdPr var_15C
  loc_B0730F: LateIdCallSt
  loc_B07317: FFreeAd var_88 = "": var_DC = "": var_128 = ""
  loc_B07322: FFreeVar var_98 = "": var_EC = "": var_124 = "": var_138 = "": var_17C = "": var_16C = ""
  loc_B07333: FLdPr Me
  loc_B07336: VCallAd Control_ID_ItemNotaFlex
  loc_B07339: FStAdFunc var_88
  loc_B0733C: FLdPr var_88
  loc_B0733F: LateIdLdVar var_98 DispID_10 0
  loc_B07346: CI4Var
  loc_B07348: CVarI4
  loc_B0734C: PopAdLdVar
  loc_B0734D: LitVarI4
  loc_B07355: PopAdLdVar
  loc_B07356: FLdPr Me
  loc_B07359: VCallAd Control_ID_ItemNotaFlex
  loc_B0735C: FStAdFunc var_DC
  loc_B0735F: FLdPr var_DC
  loc_B07362: LateIdCallLdVar
  loc_B0736C: CStrVarTmp
  loc_B0736D: FStStrNoPop var_F0
  loc_B07370: LitStr vbNullString
  loc_B07373: NeStr
  loc_B07375: FFree1Str var_F0
  loc_B07378: FFreeAd var_88 = ""
  loc_B0737F: FFreeVar var_98 = ""
  loc_B07386: BranchF loc_B074EB
  loc_B07389: FLdPr Me
  loc_B0738C: VCallAd Control_ID_ItemNotaFlex
  loc_B0738F: FStAdFunc var_88
  loc_B07392: FLdPr var_88
  loc_B07395: LateIdLdVar var_98 DispID_10 0
  loc_B0739C: CI4Var
  loc_B0739E: CVarI4
  loc_B073A2: PopAdLdVar
  loc_B073A3: LitVarI4
  loc_B073AB: PopAdLdVar
  loc_B073AC: FLdPr Me
  loc_B073AF: VCallAd Control_ID_ItemNotaFlex
  loc_B073B2: FStAdFunc var_DC
  loc_B073B5: FLdPr var_DC
  loc_B073B8: LateIdCallLdVar
  loc_B073C2: PopAd
  loc_B073C4: LitStr "0"
  loc_B073C7: LitI2_Byte &HFF
  loc_B073C9: LitI2_Byte 0
  loc_B073CB: LitI2_Byte 0
  loc_B073CD: FLdRfVar var_EC
  loc_B073D0: CStrVarTmp
  loc_B073D1: FStStrNoPop var_F0
  loc_B073D4: LitStr "importe"
  loc_B073D7: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_B073DC: FStStrNoPop var_114
  loc_B073DF: FLdPr Me
  loc_B073E2: MemStStrCopy
  loc_B073E6: FFreeStr var_F0 = ""
  loc_B073ED: FFreeAd var_88 = ""
  loc_B073F4: FFreeVar var_98 = ""
  loc_B073FB: FLdPr Me
  loc_B073FE: MemLdStr global_68
  loc_B07401: LitStr vbNullString
  loc_B07404: NeStr
  loc_B07406: BranchF loc_B07431
  loc_B07409: LitI4 0
  loc_B0740E: FLdPr Me
  loc_B07411: MemLdStr global_68
  loc_B07414: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B07419: FLdPr Me
  loc_B0741C: VCallAd Control_ID_ItemNotaFlex
  loc_B0741F: FStAdFunc var_88
  loc_B07422: FLdPr var_88
  loc_B07425: LateIdCall
  loc_B0742D: FFree1Ad var_88
  loc_B07430: ExitProcHresult
  loc_B07431: FLdPr Me
  loc_B07434: VCallAd Control_ID_ItemNotaFlex
  loc_B07437: FStAdFunc var_88
  loc_B0743A: FLdPr var_88
  loc_B0743D: LateIdLdVar var_98 DispID_10 0
  loc_B07444: CI4Var
  loc_B07446: CVarI4
  loc_B0744A: PopAdLdVar
  loc_B0744B: LitVarI4
  loc_B07453: PopAdLdVar
  loc_B07454: FLdPr Me
  loc_B07457: VCallAd Control_ID_ItemNotaFlex
  loc_B0745A: FStAdFunc var_DC
  loc_B0745D: FLdPr var_DC
  loc_B07460: LateIdCallLdVar
  loc_B0746A: PopAd
  loc_B0746C: FLdPr Me
  loc_B0746F: VCallAd Control_ID_ItemNotaFlex
  loc_B07472: FStAdFunc var_128
  loc_B07475: FLdPr var_128
  loc_B07478: LateIdLdVar var_17C DispID_10 0
  loc_B0747F: CI4Var
  loc_B07481: CVarI4
  loc_B07485: PopAdLdVar
  loc_B07486: LitVarI4
  loc_B0748E: PopAdLdVar
  loc_B0748F: LitI4 1
  loc_B07494: LitI4 1
  loc_B07499: LitVarStr var_100, "0.00"
  loc_B0749E: FStVarCopyObj var_138
  loc_B074A1: FLdRfVar var_138
  loc_B074A4: FLdRfVar var_EC
  loc_B074A7: CStrVarTmp
  loc_B074A8: CVarStr var_124
  loc_B074AB: FLdRfVar var_16C
  loc_B074AE: ImpAdCallFPR4  = Format(, )
  loc_B074B3: FLdRfVar var_16C
  loc_B074B6: CStrVarTmp
  loc_B074B7: CVarStr var_1AC
  loc_B074BA: PopAdLdVar
  loc_B074BB: FLdPr Me
  loc_B074BE: VCallAd Control_ID_ItemNotaFlex
  loc_B074C1: FStAdFunc var_15C
  loc_B074C4: FLdPr var_15C
  loc_B074C7: LateIdCallSt
  loc_B074CF: FFreeAd var_88 = "": var_DC = "": var_128 = ""
  loc_B074DA: FFreeVar var_98 = "": var_EC = "": var_124 = "": var_138 = "": var_17C = "": var_16C = ""
  loc_B074EB: Call Proc_108_33_A3C16C()
  loc_B074F0: FLdPr Me
  loc_B074F3: VCallAd Control_ID_ItemNotaFlex
  loc_B074F6: FStAdFunc var_88
  loc_B074F9: FLdPr var_88
  loc_B074FC: LateIdLdVar var_98 DispID_10 0
  loc_B07503: CI4Var
  loc_B07505: CVarI4
  loc_B07509: PopAdLdVar
  loc_B0750A: LitVarI4
  loc_B07512: PopAdLdVar
  loc_B07513: FLdPr Me
  loc_B07516: VCallAd Control_ID_ItemNotaFlex
  loc_B07519: FStAdFunc var_DC
  loc_B0751C: FLdPr var_DC
  loc_B0751F: LateIdCallLdVar
  loc_B07529: CStrVarTmp
  loc_B0752A: FStStrNoPop var_F0
  loc_B0752D: LitStr vbNullString
  loc_B07530: EqStr
  loc_B07532: FLdPr Me
  loc_B07535: VCallAd Control_ID_ItemNotaFlex
  loc_B07538: FStAdFunc var_128
  loc_B0753B: FLdPr var_128
  loc_B0753E: LateIdLdVar var_124 DispID_0 0
  loc_B07545: CStrVarTmp
  loc_B07546: FStStrNoPop var_114
  loc_B07549: FnLenStr
  loc_B0754A: LitI4 1
  loc_B0754F: LeI4
  loc_B07550: OrI4
  loc_B07551: FFreeStr var_F0 = ""
  loc_B07558: FFreeAd var_88 = "": var_DC = ""
  loc_B07561: FFreeVar var_98 = "": var_EC = ""
  loc_B0756A: BranchF loc_B07612
  loc_B0756D: FLdPr Me
  loc_B07570: VCallAd Control_ID_ItemNotaFlex
  loc_B07573: FStAdFunc var_88
  loc_B07576: FLdPr var_88
  loc_B07579: LateIdLdVar var_98 DispID_10 0
  loc_B07580: CI4Var
  loc_B07582: CVarI4
  loc_B07586: PopAdLdVar
  loc_B07587: LitVarI4
  loc_B0758F: PopAdLdVar
  loc_B07590: FLdPr Me
  loc_B07593: VCallAd Control_ID_ItemNotaFlex
  loc_B07596: FStAdFunc var_DC
  loc_B07599: FLdPr var_DC
  loc_B0759C: LateIdCallLdVar
  loc_B075A6: PopAd
  loc_B075A8: FLdRfVar var_114
  loc_B075AB: FLdRfVar var_EC
  loc_B075AE: CStrVarTmp
  loc_B075AF: FStStrNoPop var_F0
  loc_B075B2: FLdPr Me
  loc_B075B5: MemLdRfVar from_stack_1.global_52
  loc_B075B8: NewIfNullPr clscotizacion
  loc_B075BB: from_stack_2v = clscotizacion.ConsultarMarcaInsu(from_stack_1v)
  loc_B075C0: ILdRf var_114
  loc_B075C3: LitStr "1"
  loc_B075C6: EqStr
  loc_B075C8: FFreeStr var_F0 = ""
  loc_B075CF: FFreeAd var_88 = ""
  loc_B075D6: FFreeVar var_98 = ""
  loc_B075DD: BranchF loc_B07612
  loc_B075E0: LitStr "La MARCA es Obligatoria. Verifique ..."
  loc_B075E3: FLdPr Me
  loc_B075E6: MemStStrCopy
  loc_B075EA: LitI4 0
  loc_B075EF: FLdPr Me
  loc_B075F2: MemLdStr global_68
  loc_B075F5: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B075FA: FLdPr Me
  loc_B075FD: VCallAd Control_ID_ItemNotaFlex
  loc_B07600: FStAdFunc var_88
  loc_B07603: FLdPr var_88
  loc_B07606: LateIdCall
  loc_B0760E: FFree1Ad var_88
  loc_B07611: ExitProcHresult
  loc_B07612: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '958F10
  'Data Table: 4A77A4
  loc_958EF8: FLdPr Me
  loc_958EFB: VCallAd Control_ID_dgdABMS
  loc_958EFE: FStAdFunc var_88
  loc_958F01: FLdRfVar var_88
  loc_958F04: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_958F09: FFree1Ad var_88
  loc_958F0C: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '959254
  'Data Table: 4A77A4
  loc_95923C: FLdPr Me
  loc_95923F: VCallAd Control_ID_dgdABMS
  loc_959242: FStAdFunc var_88
  loc_959245: FLdRfVar var_88
  loc_959248: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_95924D: FFree1Ad var_88
  loc_959250: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '999A7C
  'Data Table: 4A77A4
  loc_999A20: FLdRfVar var_B4
  loc_999A23: FLdRfVar var_B0
  loc_999A26: FLdI2 ColIndex
  loc_999A29: CVarI2 var_A8
  loc_999A2C: PopAdLdVar
  loc_999A2D: FLdPr Me
  loc_999A30: VCallAd Control_ID_dgdABMS
  loc_999A33: FStAdFunc var_88
  loc_999A36: FLdPr var_88
  loc_999A39: LateIdLdVar var_98 DispID_105 0
  loc_999A40: CastAdVar Me
  loc_999A44: FStAdFunc var_AC
  loc_999A47: FLdPr var_AC
  loc_999A4A: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_999A4F: FLdPr var_B0
  loc_999A52:  = Me.DataField
  loc_999A57: FLdZeroAd var_B4
  loc_999A5A: PopTmpLdAdStr
  loc_999A5E: FLdPr Me
  loc_999A61: MemLdRfVar from_stack_1.global_52
  loc_999A64: NewIfNullPr clscotizacion
  loc_999A67: Call clscotizacion.Sort(from_stack_1v)
  loc_999A6C: FFree1Str var_B8
  loc_999A6F: FFreeAd var_88 = "": var_AC = ""
  loc_999A78: FFree1Var var_98 = ""
  loc_999A7B: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'BDD80C
  'Data Table: 4A77A4
  loc_BDC14C: LitStr vbNullString
  loc_BDC14F: FLdPr Me
  loc_BDC152: VCallAd Control_ID_lblCaracteristicas
  loc_BDC155: FStAdFunc var_88
  loc_BDC158: FLdPr var_88
  loc_BDC15B: Me.Caption = from_stack_1
  loc_BDC160: FFree1Ad var_88
  loc_BDC163: LitI4 -2147483630
  loc_BDC168: FLdPr Me
  loc_BDC16B: VCallAd Control_ID_DetaProvLbl
  loc_BDC16E: FStAdFunc var_88
  loc_BDC171: FLdPr var_88
  loc_BDC174: Me.ForeColor = from_stack_1
  loc_BDC179: FFree1Ad var_88
  loc_BDC17C: FLdPr Me
  loc_BDC17F: MemLdUI1 global_64
  loc_BDC183: CI2UI1
  loc_BDC185: LitI2_Byte 0
  loc_BDC187: EqI2
  loc_BDC188: FLdRfVar var_8C
  loc_BDC18B: FLdPr Me
  loc_BDC18E: MemLdRfVar from_stack_1.global_52
  loc_BDC191: NewIfNullPr clscotizacion
  loc_BDC194: from_stack_1 = clscotizacion.RecordCount
  loc_BDC199: ILdRf var_8C
  loc_BDC19C: LitI4 0
  loc_BDC1A1: GtI4
  loc_BDC1A2: AndI4
  loc_BDC1A3: BranchF loc_BDD80B
  loc_BDC1A6: FLdRfVar var_8E
  loc_BDC1A9: FLdPr Me
  loc_BDC1AC: MemLdRfVar from_stack_1.global_52
  loc_BDC1AF: NewIfNullPr clscotizacion
  loc_BDC1B2: from_stack_1 = clscotizacion.BOF
  loc_BDC1B7: FLdI2 var_8E
  loc_BDC1BA: BranchF loc_BDC1CB
  loc_BDC1BD: FLdPr Me
  loc_BDC1C0: MemLdRfVar from_stack_1.global_52
  loc_BDC1C3: NewIfNullPr clscotizacion
  loc_BDC1C6: Call clscotizacion.MoveFirst()
  loc_BDC1CB: FLdRfVar var_8E
  loc_BDC1CE: FLdPr Me
  loc_BDC1D1: MemLdRfVar from_stack_1.global_52
  loc_BDC1D4: NewIfNullPr clscotizacion
  loc_BDC1D7: from_stack_1 = clscotizacion.EOF
  loc_BDC1DC: FLdI2 var_8E
  loc_BDC1DF: BranchF loc_BDC1F0
  loc_BDC1E2: FLdPr Me
  loc_BDC1E5: MemLdRfVar from_stack_1.global_52
  loc_BDC1E8: NewIfNullPr clscotizacion
  loc_BDC1EB: Call clscotizacion.MoveLast()
  loc_BDC1F0: Call Proc_108_31_A1F868()
  loc_BDC1F5: FLdRfVar var_B8
  loc_BDC1F8: FLdRfVar var_A8
  loc_BDC1FB: LitVarStr var_A4, "CucuPers"
  loc_BDC200: PopAdLdVar
  loc_BDC201: FLdRfVar var_94
  loc_BDC204: FLdRfVar var_88
  loc_BDC207: FLdPr Me
  loc_BDC20A: MemLdRfVar from_stack_1.global_52
  loc_BDC20D: NewIfNullPr clscotizacion
  loc_BDC210: from_stack_1v = clscotizacion.RsFrmGet()
  loc_BDC215: FLdPr var_88
  loc_BDC218:  = Me.Fields
  loc_BDC21D: FLdPr var_94
  loc_BDC220: from_stack_2 = Me.Item(from_stack_1)
  loc_BDC225: FLdPr var_A8
  loc_BDC228:  = Me.Value
  loc_BDC22D: FLdRfVar var_B8
  loc_BDC230: LitVarStr var_C8, "0"
  loc_BDC235: HardType
  loc_BDC236: EqVarBool
  loc_BDC238: FFreeAd var_88 = "": var_94 = ""
  loc_BDC241: FFree1Var var_B8 = ""
  loc_BDC244: BranchF loc_BDC7E5
  loc_BDC247: LitI4 &HFF
  loc_BDC24C: FLdPr Me
  loc_BDC24F: VCallAd Control_ID_DetaProvLbl
  loc_BDC252: FStAdFunc var_88
  loc_BDC255: FLdPr var_88
  loc_BDC258: Me.ForeColor = from_stack_1
  loc_BDC25D: FFree1Ad var_88
  loc_BDC260: LitStr "SET @Total=0.00;"
  loc_BDC263: FLdPr Me
  loc_BDC266: MemLdRfVar from_stack_1.global_56
  loc_BDC269: NewIfNullPr clsbase
  loc_BDC26C: Call clsbase.RedefineRS(from_stack_1v)
  loc_BDC271: LitStr "SELECT itemnota.*, DetaInsu"
  loc_BDC274: LitStr ", Round(CantItno*ImunItno,2) TotalItem"
  loc_BDC277: ConcatStr
  loc_BDC278: FStStrNoPop var_DC
  loc_BDC27B: LitStr ", Round(@Total:=@Total+CantItno*ImunItno,2) Total"
  loc_BDC27E: ConcatStr
  loc_BDC27F: FStStrNoPop var_E0
  loc_BDC282: LitStr " FROM itemnota "
  loc_BDC285: ConcatStr
  loc_BDC286: FStStrNoPop var_E4
  loc_BDC289: LitStr " INNER JOIN infogov.insumo ON insumo.CodiInsu = itemnota.CodiInsu"
  loc_BDC28C: ConcatStr
  loc_BDC28D: FStStrNoPop var_E8
  loc_BDC290: LitStr " WHERE PeriInfo = "
  loc_BDC293: ConcatStr
  loc_BDC294: CVarStr var_D8
  loc_BDC297: FLdRfVar var_B8
  loc_BDC29A: FLdRfVar var_A8
  loc_BDC29D: LitVarStr var_A4, "PeriInfo"
  loc_BDC2A2: PopAdLdVar
  loc_BDC2A3: FLdRfVar var_94
  loc_BDC2A6: FLdRfVar var_88
  loc_BDC2A9: FLdPr Me
  loc_BDC2AC: MemLdRfVar from_stack_1.global_52
  loc_BDC2AF: NewIfNullPr clscotizacion
  loc_BDC2B2: from_stack_1v = clscotizacion.RsFrmGet()
  loc_BDC2B7: FLdPr var_88
  loc_BDC2BA:  = Me.Fields
  loc_BDC2BF: FLdPr var_94
  loc_BDC2C2: from_stack_2 = Me.Item(from_stack_1)
  loc_BDC2C7: FLdPr var_A8
  loc_BDC2CA:  = Me.Value
  loc_BDC2CF: FLdRfVar var_B8
  loc_BDC2D2: ConcatVar var_F8
  loc_BDC2D6: LitVarStr var_C8, " AND CodiNope = "
  loc_BDC2DB: ConcatVar var_108
  loc_BDC2DF: FLdRfVar var_134
  loc_BDC2E2: FLdRfVar var_124
  loc_BDC2E5: LitVarStr var_120, "CodiNope"
  loc_BDC2EA: PopAdLdVar
  loc_BDC2EB: FLdRfVar var_110
  loc_BDC2EE: FLdRfVar var_10C
  loc_BDC2F1: FLdPr Me
  loc_BDC2F4: MemLdRfVar from_stack_1.global_52
  loc_BDC2F7: NewIfNullPr clscotizacion
  loc_BDC2FA: from_stack_1v = clscotizacion.RsFrmGet()
  loc_BDC2FF: FLdPr var_10C
  loc_BDC302:  = Me.Fields
  loc_BDC307: FLdPr var_110
  loc_BDC30A: from_stack_2 = Me.Item(from_stack_1)
  loc_BDC30F: FLdPr var_124
  loc_BDC312:  = Me.Value
  loc_BDC317: FLdRfVar var_134
  loc_BDC31A: ConcatVar var_144
  loc_BDC31E: CStrVarVal var_148
  loc_BDC322: FLdPr Me
  loc_BDC325: MemLdRfVar from_stack_1.global_56
  loc_BDC328: NewIfNullPr clsbase
  loc_BDC32B: Call clsbase.RedefineRS(from_stack_1v)
  loc_BDC330: FFreeStr var_DC = "": var_E0 = "": var_E4 = "": var_E8 = ""
  loc_BDC33D: FFreeAd var_88 = "": var_94 = "": var_A8 = "": var_10C = "": var_110 = ""
  loc_BDC34C: FFreeVar var_D8 = "": var_B8 = "": var_F8 = "": var_108 = "": var_134 = ""
  loc_BDC35B: FLdRfVar var_8C
  loc_BDC35E: FLdPr Me
  loc_BDC361: MemLdRfVar from_stack_1.global_56
  loc_BDC364: NewIfNullPr clsbase
  loc_BDC367: from_stack_1 = clsbase.RecordCount
  loc_BDC36C: ILdRf var_8C
  loc_BDC36F: LitI4 0
  loc_BDC374: GtI4
  loc_BDC375: BranchF loc_BDC7E2
  loc_BDC378: FLdPr Me
  loc_BDC37B: MemLdRfVar from_stack_1.global_56
  loc_BDC37E: NewIfNullPr clsbase
  loc_BDC381: Call clsbase.MoveFirst()
  loc_BDC386: FLdRfVar var_8E
  loc_BDC389: FLdPr Me
  loc_BDC38C: MemLdRfVar from_stack_1.global_56
  loc_BDC38F: NewIfNullPr clsbase
  loc_BDC392: from_stack_1 = clsbase.EOF
  loc_BDC397: FLdI2 var_8E
  loc_BDC39A: NotI4
  loc_BDC39B: BranchF loc_BDC7E2
  loc_BDC39E: FLdRfVar var_25C
  loc_BDC3A1: LitVarStr var_258, "CantItno"
  loc_BDC3A6: PopAdLdVar
  loc_BDC3A7: FLdRfVar var_248
  loc_BDC3AA: FLdRfVar var_244
  loc_BDC3AD: FLdPr Me
  loc_BDC3B0: MemLdRfVar from_stack_1.global_56
  loc_BDC3B3: NewIfNullPr clsbase
  loc_BDC3B6: from_stack_1v = clsbase.RsFrmGet()
  loc_BDC3BB: FLdPr var_244
  loc_BDC3BE:  = Me.Fields
  loc_BDC3C3: FLdPr var_248
  loc_BDC3C6: from_stack_2 = Me.Item(from_stack_1)
  loc_BDC3CB: FLdRfVar var_2E8
  loc_BDC3CE: LitVarStr var_2E4, "ImunItno"
  loc_BDC3D3: PopAdLdVar
  loc_BDC3D4: FLdRfVar var_2D4
  loc_BDC3D7: FLdRfVar var_2D0
  loc_BDC3DA: FLdPr Me
  loc_BDC3DD: MemLdRfVar from_stack_1.global_56
  loc_BDC3E0: NewIfNullPr clsbase
  loc_BDC3E3: from_stack_1v = clsbase.RsFrmGet()
  loc_BDC3E8: FLdPr var_2D0
  loc_BDC3EB:  = Me.Fields
  loc_BDC3F0: FLdPr var_2D4
  loc_BDC3F3: from_stack_2 = Me.Item(from_stack_1)
  loc_BDC3F8: FLdRfVar var_374
  loc_BDC3FB: LitVarStr var_370, "TotalItem"
  loc_BDC400: PopAdLdVar
  loc_BDC401: FLdRfVar var_360
  loc_BDC404: FLdRfVar var_35C
  loc_BDC407: FLdPr Me
  loc_BDC40A: MemLdRfVar from_stack_1.global_56
  loc_BDC40D: NewIfNullPr clsbase
  loc_BDC410: from_stack_1v = clsbase.RsFrmGet()
  loc_BDC415: FLdPr var_35C
  loc_BDC418:  = Me.Fields
  loc_BDC41D: FLdPr var_360
  loc_BDC420: from_stack_2 = Me.Item(from_stack_1)
  loc_BDC425: FLdRfVar var_D8
  loc_BDC428: FLdRfVar var_A8
  loc_BDC42B: LitVarStr var_A4, "CodiItno"
  loc_BDC430: PopAdLdVar
  loc_BDC431: FLdRfVar var_94
  loc_BDC434: FLdRfVar var_88
  loc_BDC437: FLdPr Me
  loc_BDC43A: MemLdRfVar from_stack_1.global_56
  loc_BDC43D: NewIfNullPr clsbase
  loc_BDC440: from_stack_1v = clsbase.RsFrmGet()
  loc_BDC445: FLdPr var_88
  loc_BDC448:  = Me.Fields
  loc_BDC44D: FLdPr var_94
  loc_BDC450: from_stack_2 = Me.Item(from_stack_1)
  loc_BDC455: FLdPr var_A8
  loc_BDC458:  = Me.Value
  loc_BDC45D: FLdRfVar var_D8
  loc_BDC460: LitI4 9
  loc_BDC465: FLdRfVar var_B8
  loc_BDC468: ImpAdCallFPR4  = Chr()
  loc_BDC46D: FLdRfVar var_B8
  loc_BDC470: ConcatVar var_F8
  loc_BDC474: LitVarStr var_C8, " "
  loc_BDC479: ConcatVar var_108
  loc_BDC47D: LitI4 9
  loc_BDC482: FLdRfVar var_134
  loc_BDC485: ImpAdCallFPR4  = Chr()
  loc_BDC48A: FLdRfVar var_134
  loc_BDC48D: ConcatVar var_144
  loc_BDC491: FLdRfVar var_158
  loc_BDC494: FLdRfVar var_124
  loc_BDC497: LitVarStr var_120, "CodiInsu"
  loc_BDC49C: PopAdLdVar
  loc_BDC49D: FLdRfVar var_110
  loc_BDC4A0: FLdRfVar var_10C
  loc_BDC4A3: FLdPr Me
  loc_BDC4A6: MemLdRfVar from_stack_1.global_56
  loc_BDC4A9: NewIfNullPr clsbase
  loc_BDC4AC: from_stack_1v = clsbase.RsFrmGet()
  loc_BDC4B1: FLdPr var_10C
  loc_BDC4B4:  = Me.Fields
  loc_BDC4B9: FLdPr var_110
  loc_BDC4BC: from_stack_2 = Me.Item(from_stack_1)
  loc_BDC4C1: FLdPr var_124
  loc_BDC4C4:  = Me.Value
  loc_BDC4C9: FLdRfVar var_158
  loc_BDC4CC: ConcatVar var_168
  loc_BDC4D0: LitI4 9
  loc_BDC4D5: FLdRfVar var_178
  loc_BDC4D8: ImpAdCallFPR4  = Chr()
  loc_BDC4DD: FLdRfVar var_178
  loc_BDC4E0: ConcatVar var_188
  loc_BDC4E4: FLdRfVar var_1B4
  loc_BDC4E7: FLdRfVar var_1A4
  loc_BDC4EA: LitVarStr var_1A0, "DetaInsu"
  loc_BDC4EF: PopAdLdVar
  loc_BDC4F0: FLdRfVar var_190
  loc_BDC4F3: FLdRfVar var_18C
  loc_BDC4F6: FLdPr Me
  loc_BDC4F9: MemLdRfVar from_stack_1.global_56
  loc_BDC4FC: NewIfNullPr clsbase
  loc_BDC4FF: from_stack_1v = clsbase.RsFrmGet()
  loc_BDC504: FLdPr var_18C
  loc_BDC507:  = Me.Fields
  loc_BDC50C: FLdPr var_190
  loc_BDC50F: from_stack_2 = Me.Item(from_stack_1)
  loc_BDC514: FLdPr var_1A4
  loc_BDC517:  = Me.Value
  loc_BDC51C: FLdRfVar var_1B4
  loc_BDC51F: ConcatVar var_1C4
  loc_BDC523: LitI4 9
  loc_BDC528: FLdRfVar var_1D4
  loc_BDC52B: ImpAdCallFPR4  = Chr()
  loc_BDC530: FLdRfVar var_1D4
  loc_BDC533: ConcatVar var_1E4
  loc_BDC537: FLdRfVar var_210
  loc_BDC53A: FLdRfVar var_200
  loc_BDC53D: LitVarStr var_1FC, "DetaItno"
  loc_BDC542: PopAdLdVar
  loc_BDC543: FLdRfVar var_1EC
  loc_BDC546: FLdRfVar var_1E8
  loc_BDC549: FLdPr Me
  loc_BDC54C: MemLdRfVar from_stack_1.global_56
  loc_BDC54F: NewIfNullPr clsbase
  loc_BDC552: from_stack_1v = clsbase.RsFrmGet()
  loc_BDC557: FLdPr var_1E8
  loc_BDC55A:  = Me.Fields
  loc_BDC55F: FLdPr var_1EC
  loc_BDC562: from_stack_2 = Me.Item(from_stack_1)
  loc_BDC567: FLdPr var_200
  loc_BDC56A:  = Me.Value
  loc_BDC56F: FLdRfVar var_210
  loc_BDC572: ConcatVar var_220
  loc_BDC576: LitI4 9
  loc_BDC57B: FLdRfVar var_230
  loc_BDC57E: ImpAdCallFPR4  = Chr()
  loc_BDC583: FLdRfVar var_230
  loc_BDC586: ConcatVar var_240
  loc_BDC58A: LitI4 1
  loc_BDC58F: LitI4 1
  loc_BDC594: LitVarStr var_27C, "0.000"
  loc_BDC599: FStVarCopyObj var_28C
  loc_BDC59C: FLdRfVar var_28C
  loc_BDC59F: FLdZeroAd var_25C
  loc_BDC5A2: CVarAd
  loc_BDC5A6: ImpAdCallI2 Format$(, )
  loc_BDC5AB: CVarStr var_29C
  loc_BDC5AE: ConcatVar var_2AC
  loc_BDC5B2: LitI4 9
  loc_BDC5B7: FLdRfVar var_2BC
  loc_BDC5BA: ImpAdCallFPR4  = Chr()
  loc_BDC5BF: FLdRfVar var_2BC
  loc_BDC5C2: ConcatVar var_2CC
  loc_BDC5C6: LitI4 1
  loc_BDC5CB: LitI4 1
  loc_BDC5D0: LitVarStr var_308, "0.00"
  loc_BDC5D5: FStVarCopyObj var_318
  loc_BDC5D8: FLdRfVar var_318
  loc_BDC5DB: FLdZeroAd var_2E8
  loc_BDC5DE: CVarAd
  loc_BDC5E2: ImpAdCallI2 Format$(, )
  loc_BDC5E7: CVarStr var_328
  loc_BDC5EA: ConcatVar var_338
  loc_BDC5EE: LitI4 9
  loc_BDC5F3: FLdRfVar var_348
  loc_BDC5F6: ImpAdCallFPR4  = Chr()
  loc_BDC5FB: FLdRfVar var_348
  loc_BDC5FE: ConcatVar var_358
  loc_BDC602: LitI4 1
  loc_BDC607: LitI4 1
  loc_BDC60C: LitVarStr var_394, "0.00"
  loc_BDC611: FStVarCopyObj var_3A4
  loc_BDC614: FLdRfVar var_3A4
  loc_BDC617: FLdZeroAd var_374
  loc_BDC61A: CVarAd
  loc_BDC61E: ImpAdCallI2 Format$(, )
  loc_BDC623: CVarStr var_3B4
  loc_BDC626: ConcatVar var_3C4
  loc_BDC62A: LitI4 9
  loc_BDC62F: FLdRfVar var_3D4
  loc_BDC632: ImpAdCallFPR4  = Chr()
  loc_BDC637: FLdRfVar var_3D4
  loc_BDC63A: ConcatVar var_3E4
  loc_BDC63E: LitVarStr var_3F4, "No"
  loc_BDC643: ConcatVar var_404
  loc_BDC647: LitI4 9
  loc_BDC64C: FLdRfVar var_414
  loc_BDC64F: ImpAdCallFPR4  = Chr()
  loc_BDC654: FLdRfVar var_414
  loc_BDC657: ConcatVar var_424
  loc_BDC65B: FLdRfVar var_450
  loc_BDC65E: FLdRfVar var_440
  loc_BDC661: LitVarStr var_43C, "CaraItno"
  loc_BDC666: PopAdLdVar
  loc_BDC667: FLdRfVar var_42C
  loc_BDC66A: FLdRfVar var_428
  loc_BDC66D: FLdPr Me
  loc_BDC670: MemLdRfVar from_stack_1.global_56
  loc_BDC673: NewIfNullPr clsbase
  loc_BDC676: from_stack_1v = clsbase.RsFrmGet()
  loc_BDC67B: FLdPr var_428
  loc_BDC67E:  = Me.Fields
  loc_BDC683: FLdPr var_42C
  loc_BDC686: from_stack_2 = Me.Item(from_stack_1)
  loc_BDC68B: FLdPr var_440
  loc_BDC68E:  = Me.Value
  loc_BDC693: FLdRfVar var_450
  loc_BDC696: ConcatVar var_460
  loc_BDC69A: LitI4 9
  loc_BDC69F: FLdRfVar var_470
  loc_BDC6A2: ImpAdCallFPR4  = Chr()
  loc_BDC6A7: FLdRfVar var_470
  loc_BDC6AA: ConcatVar var_480
  loc_BDC6AE: LitVarStr var_490, vbNullString
  loc_BDC6B3: ConcatVar var_4A0
  loc_BDC6B7: CStrVarTmp
  loc_BDC6B8: CVarStr var_4B0
  loc_BDC6BB: PopAdLdVar
  loc_BDC6BC: FLdPr Me
  loc_BDC6BF: VCallAd Control_ID_ItemNotaFlex
  loc_BDC6C2: FStAdFunc var_4C4
  loc_BDC6C5: FLdPr var_4C4
  loc_BDC6C8: LateIdCall
  loc_BDC6D0: FFreeAd var_88 = "": var_94 = "": var_A8 = "": var_10C = "": var_110 = "": var_124 = "": var_18C = "": var_190 = "": var_1A4 = "": var_1E8 = "": var_1EC = "": var_200 = "": var_244 = "": var_248 = "": var_2D0 = "": var_2D4 = "": var_35C = "": var_360 = "": var_428 = "": var_42C = "": var_440 = ""
  loc_BDC6FF: FFreeVar var_3A4 = "": var_358 = "": var_3B4 = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_404 = "": var_414 = "": var_424 = "": var_450 = "": var_460 = "": var_470 = "": var_480 = "": var_4A0 = "": var_4B0 = "": var_D8 = "": var_B8 = "": var_F8 = "": var_108 = "": var_134 = "": var_144 = "": var_158 = "": var_168 = "": var_178 = "": var_188 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_210 = "": var_220 = "": var_230 = "": var_26C = "": var_28C = "": var_240 = "": var_29C = "": var_2AC = "": var_2BC = "": var_2F8 = "": var_318 = "": var_2CC = "": var_328 = "": var_338 = "": var_348 = ""
  loc_BDC75C: FLdRfVar var_A8
  loc_BDC75F: LitVarStr var_A4, "Total"
  loc_BDC764: PopAdLdVar
  loc_BDC765: FLdRfVar var_94
  loc_BDC768: FLdRfVar var_88
  loc_BDC76B: FLdPr Me
  loc_BDC76E: MemLdRfVar from_stack_1.global_56
  loc_BDC771: NewIfNullPr clsbase
  loc_BDC774: from_stack_1v = clsbase.RsFrmGet()
  loc_BDC779: FLdPr var_88
  loc_BDC77C:  = Me.Fields
  loc_BDC781: FLdPr var_94
  loc_BDC784: from_stack_2 = Me.Item(from_stack_1)
  loc_BDC789: LitI4 1
  loc_BDC78E: LitI4 1
  loc_BDC793: LitVarStr var_C8, "currency"
  loc_BDC798: FStVarCopyObj var_D8
  loc_BDC79B: FLdRfVar var_D8
  loc_BDC79E: FLdZeroAd var_A8
  loc_BDC7A1: CVarAd
  loc_BDC7A5: ImpAdCallI2 Format$(, )
  loc_BDC7AA: FStStrNoPop var_DC
  loc_BDC7AD: FLdPr Me
  loc_BDC7B0: VCallAd Control_ID_TotaCotiTxt
  loc_BDC7B3: FStAdFunc var_10C
  loc_BDC7B6: FLdPr var_10C
  loc_BDC7B9: Me.Text = from_stack_1
  loc_BDC7BE: FFree1Str var_DC
  loc_BDC7C1: FFreeAd var_88 = "": var_94 = ""
  loc_BDC7CA: FFreeVar var_B8 = ""
  loc_BDC7D1: FLdPr Me
  loc_BDC7D4: MemLdRfVar from_stack_1.global_56
  loc_BDC7D7: NewIfNullPr clsbase
  loc_BDC7DA: Call clsbase.MoveSiguiente()
  loc_BDC7DF: Branch loc_BDC386
  loc_BDC7E2: Branch loc_BDD7FD
  loc_BDC7E5: LitStr "SET @Total=0.00;"
  loc_BDC7E8: FLdPr Me
  loc_BDC7EB: MemLdRfVar from_stack_1.global_56
  loc_BDC7EE: NewIfNullPr clsbase
  loc_BDC7F1: Call clsbase.RedefineRS(from_stack_1v)
  loc_BDC7F6: LitStr "SELECT itc.*, DetaInsu, IF(itco.PeriInfo IS NULL,'No','Si') AS Incluido"
  loc_BDC7F9: LitStr ", Round(itc.CantItco*itc.ImunItco,2) TotalItem"
  loc_BDC7FC: ConcatStr
  loc_BDC7FD: FStStrNoPop var_DC
  loc_BDC800: LitStr ", Round(@Total:=@Total+itc.CantItco*itc.ImunItco,2) Total"
  loc_BDC803: ConcatStr
  loc_BDC804: FStStrNoPop var_E0
  loc_BDC807: LitStr " FROM itemcotizacion itc "
  loc_BDC80A: ConcatStr
  loc_BDC80B: FStStrNoPop var_E4
  loc_BDC80E: LitStr " INNER JOIN cotizacion c ON c.IdCoti = itc.IdCoti"
  loc_BDC811: ConcatStr
  loc_BDC812: FStStrNoPop var_E8
  loc_BDC815: LitStr " INNER JOIN infogov.insumo i ON i.CodiInsu = itc.CodiInsu "
  loc_BDC818: ConcatStr
  loc_BDC819: FStStrNoPop var_148
  loc_BDC81C: LitStr " LEFT JOIN ordencompra oc ON oc.PeriInfo = itc.PeriInfo AND oc.IdCoti = itc.IdCoti AND oc.FeanOrco IS NULL"
  loc_BDC81F: ConcatStr
  loc_BDC820: FStStrNoPop var_4C8
  loc_BDC823: LitStr " LEFT JOIN itemcompra itco ON itco.PeriInfo = oc.PeriInfo AND itco.CodiOrco = oc.CodiOrco AND itco.CodiItco = itc.CodiItco AND itco.AlteItco = itc.AlteItco"
  loc_BDC826: ConcatStr
  loc_BDC827: FStStrNoPop var_4CC
  loc_BDC82A: LitStr " WHERE itc.PeriInfo = "
  loc_BDC82D: ConcatStr
  loc_BDC82E: CVarStr var_D8
  loc_BDC831: FLdRfVar var_B8
  loc_BDC834: FLdRfVar var_A8
  loc_BDC837: LitVarStr var_A4, "PeriInfo"
  loc_BDC83C: PopAdLdVar
  loc_BDC83D: FLdRfVar var_94
  loc_BDC840: FLdRfVar var_88
  loc_BDC843: FLdPr Me
  loc_BDC846: MemLdRfVar from_stack_1.global_52
  loc_BDC849: NewIfNullPr clscotizacion
  loc_BDC84C: from_stack_1v = clscotizacion.RsFrmGet()
  loc_BDC851: FLdPr var_88
  loc_BDC854:  = Me.Fields
  loc_BDC859: FLdPr var_94
  loc_BDC85C: from_stack_2 = Me.Item(from_stack_1)
  loc_BDC861: FLdPr var_A8
  loc_BDC864:  = Me.Value
  loc_BDC869: FLdRfVar var_B8
  loc_BDC86C: ConcatVar var_F8
  loc_BDC870: LitVarStr var_C8, " AND itc.IdCoti = "
  loc_BDC875: ConcatVar var_108
  loc_BDC879: FLdRfVar var_134
  loc_BDC87C: FLdRfVar var_124
  loc_BDC87F: LitVarStr var_120, "IdCoti"
  loc_BDC884: PopAdLdVar
  loc_BDC885: FLdRfVar var_110
  loc_BDC888: FLdRfVar var_10C
  loc_BDC88B: FLdPr Me
  loc_BDC88E: MemLdRfVar from_stack_1.global_52
  loc_BDC891: NewIfNullPr clscotizacion
  loc_BDC894: from_stack_1v = clscotizacion.RsFrmGet()
  loc_BDC899: FLdPr var_10C
  loc_BDC89C:  = Me.Fields
  loc_BDC8A1: FLdPr var_110
  loc_BDC8A4: from_stack_2 = Me.Item(from_stack_1)
  loc_BDC8A9: FLdPr var_124
  loc_BDC8AC:  = Me.Value
  loc_BDC8B1: FLdRfVar var_134
  loc_BDC8B4: ConcatVar var_144
  loc_BDC8B8: LitVarStr var_1A0, " GROUP BY itc.PeriInfo, itc.CodiNope, c.CucuPers, itc.CodiItco, itc.AlteItco"
  loc_BDC8BD: ConcatVar var_158
  loc_BDC8C1: LitVarStr var_1FC, " ORDER BY itc.PeriInfo, itc.CodiNope, c.CucuPers, itc.CodiItco, itc.AlteItco;"
  loc_BDC8C6: ConcatVar var_168
  loc_BDC8CA: CStrVarVal var_4D0
  loc_BDC8CE: FLdPr Me
  loc_BDC8D1: MemLdRfVar from_stack_1.global_56
  loc_BDC8D4: NewIfNullPr clsbase
  loc_BDC8D7: Call clsbase.RedefineRS(from_stack_1v)
  loc_BDC8DC: FFreeStr var_DC = "": var_E0 = "": var_E4 = "": var_E8 = "": var_148 = "": var_4C8 = "": var_4CC = ""
  loc_BDC8EF: FFreeAd var_88 = "": var_94 = "": var_A8 = "": var_10C = "": var_110 = ""
  loc_BDC8FE: FFreeVar var_D8 = "": var_B8 = "": var_F8 = "": var_108 = "": var_134 = "": var_144 = "": var_158 = ""
  loc_BDC911: FLdRfVar var_8C
  loc_BDC914: FLdPr Me
  loc_BDC917: MemLdRfVar from_stack_1.global_56
  loc_BDC91A: NewIfNullPr clsbase
  loc_BDC91D: from_stack_1 = clsbase.RecordCount
  loc_BDC922: ILdRf var_8C
  loc_BDC925: LitI4 0
  loc_BDC92A: GtI4
  loc_BDC92B: BranchF loc_BDD7EC
  loc_BDC92E: FLdPr Me
  loc_BDC931: MemLdRfVar from_stack_1.global_56
  loc_BDC934: NewIfNullPr clsbase
  loc_BDC937: Call clsbase.MoveFirst()
  loc_BDC93C: FLdRfVar var_B8
  loc_BDC93F: FLdRfVar var_A8
  loc_BDC942: LitVarStr var_A4, "CaraItco"
  loc_BDC947: PopAdLdVar
  loc_BDC948: FLdRfVar var_94
  loc_BDC94B: FLdRfVar var_88
  loc_BDC94E: FLdPr Me
  loc_BDC951: MemLdRfVar from_stack_1.global_56
  loc_BDC954: NewIfNullPr clsbase
  loc_BDC957: from_stack_1v = clsbase.RsFrmGet()
  loc_BDC95C: FLdPr var_88
  loc_BDC95F:  = Me.Fields
  loc_BDC964: FLdPr var_94
  loc_BDC967: from_stack_2 = Me.Item(from_stack_1)
  loc_BDC96C: FLdPr var_A8
  loc_BDC96F:  = Me.Value
  loc_BDC974: FLdRfVar var_B8
  loc_BDC977: CStrVarTmp
  loc_BDC978: FStStrNoPop var_DC
  loc_BDC97B: FLdPr Me
  loc_BDC97E: VCallAd Control_ID_lblCaracteristicas
  loc_BDC981: FStAdFunc var_10C
  loc_BDC984: FLdPr var_10C
  loc_BDC987: Me.Caption = from_stack_1
  loc_BDC98C: FFree1Str var_DC
  loc_BDC98F: FFreeAd var_88 = "": var_94 = "": var_A8 = ""
  loc_BDC99A: FFree1Var var_B8 = ""
  loc_BDC99D: FLdRfVar var_8E
  loc_BDC9A0: FLdPr Me
  loc_BDC9A3: MemLdRfVar from_stack_1.global_56
  loc_BDC9A6: NewIfNullPr clsbase
  loc_BDC9A9: from_stack_1 = clsbase.EOF
  loc_BDC9AE: FLdI2 var_8E
  loc_BDC9B1: NotI4
  loc_BDC9B2: BranchF loc_BDD7E9
  loc_BDC9B5: FLdRfVar var_A8
  loc_BDC9B8: LitVarStr var_A4, "FecoNope"
  loc_BDC9BD: PopAdLdVar
  loc_BDC9BE: FLdRfVar var_94
  loc_BDC9C1: FLdRfVar var_88
  loc_BDC9C4: FLdPr Me
  loc_BDC9C7: MemLdRfVar from_stack_1.global_52
  loc_BDC9CA: NewIfNullPr clscotizacion
  loc_BDC9CD: from_stack_1v = clscotizacion.RsFrmGet()
  loc_BDC9D2: FLdPr var_88
  loc_BDC9D5:  = Me.Fields
  loc_BDC9DA: FLdPr var_94
  loc_BDC9DD: from_stack_2 = Me.Item(from_stack_1)
  loc_BDC9E2: FLdZeroAd var_A8
  loc_BDC9E5: CVarAd
  loc_BDC9E9: ImpAdCallI2 IsDate()
  loc_BDC9EE: FFreeAd var_88 = ""
  loc_BDC9F5: FFree1Var var_B8 = ""
  loc_BDC9F8: BranchF loc_BDD2EB
  loc_BDC9FB: ImpAdCallFPR4 Proc_261_34_995F34()
  loc_BDCA00: FStFPR8 var_4D8
  loc_BDCA03: FLdRfVar var_B8
  loc_BDCA06: FLdRfVar var_A8
  loc_BDCA09: LitVarStr var_A4, "FecoNope"
  loc_BDCA0E: PopAdLdVar
  loc_BDCA0F: FLdRfVar var_94
  loc_BDCA12: FLdRfVar var_88
  loc_BDCA15: FLdPr Me
  loc_BDCA18: MemLdRfVar from_stack_1.global_52
  loc_BDCA1B: NewIfNullPr clscotizacion
  loc_BDCA1E: from_stack_1v = clscotizacion.RsFrmGet()
  loc_BDCA23: FLdPr var_88
  loc_BDCA26:  = Me.Fields
  loc_BDCA2B: FLdPr var_94
  loc_BDCA2E: from_stack_2 = Me.Item(from_stack_1)
  loc_BDCA33: FLdPr var_A8
  loc_BDCA36:  = Me.Value
  loc_BDCA3B: FLdRfVar var_B8
  loc_BDCA3E: FnCDateVar
  loc_BDCA40: FLdFPR8 var_4D8
  loc_BDCA43: GeR8
  loc_BDCA44: FFreeAd var_88 = "": var_94 = ""
  loc_BDCA4D: FFree1Var var_B8 = ""
  loc_BDCA50: BranchF loc_BDCDFB
  loc_BDCA53: FLdRfVar var_2E8
  loc_BDCA56: LitVarStr var_258, "CantItco"
  loc_BDCA5B: PopAdLdVar
  loc_BDCA5C: FLdRfVar var_2D4
  loc_BDCA5F: FLdRfVar var_2D0
  loc_BDCA62: FLdPr Me
  loc_BDCA65: MemLdRfVar from_stack_1.global_56
  loc_BDCA68: NewIfNullPr clsbase
  loc_BDCA6B: from_stack_1v = clsbase.RsFrmGet()
  loc_BDCA70: FLdPr var_2D0
  loc_BDCA73:  = Me.Fields
  loc_BDCA78: FLdPr var_2D4
  loc_BDCA7B: from_stack_2 = Me.Item(from_stack_1)
  loc_BDCA80: FLdRfVar var_D8
  loc_BDCA83: FLdRfVar var_A8
  loc_BDCA86: LitVarStr var_A4, "CodiItco"
  loc_BDCA8B: PopAdLdVar
  loc_BDCA8C: FLdRfVar var_94
  loc_BDCA8F: FLdRfVar var_88
  loc_BDCA92: FLdPr Me
  loc_BDCA95: MemLdRfVar from_stack_1.global_56
  loc_BDCA98: NewIfNullPr clsbase
  loc_BDCA9B: from_stack_1v = clsbase.RsFrmGet()
  loc_BDCAA0: FLdPr var_88
  loc_BDCAA3:  = Me.Fields
  loc_BDCAA8: FLdPr var_94
  loc_BDCAAB: from_stack_2 = Me.Item(from_stack_1)
  loc_BDCAB0: FLdPr var_A8
  loc_BDCAB3:  = Me.Value
  loc_BDCAB8: FLdRfVar var_D8
  loc_BDCABB: LitI4 9
  loc_BDCAC0: FLdRfVar var_B8
  loc_BDCAC3: ImpAdCallFPR4  = Chr()
  loc_BDCAC8: FLdRfVar var_B8
  loc_BDCACB: ConcatVar var_F8
  loc_BDCACF: FLdRfVar var_108
  loc_BDCAD2: FLdRfVar var_124
  loc_BDCAD5: LitVarStr var_C8, "AlteItco"
  loc_BDCADA: PopAdLdVar
  loc_BDCADB: FLdRfVar var_110
  loc_BDCADE: FLdRfVar var_10C
  loc_BDCAE1: FLdPr Me
  loc_BDCAE4: MemLdRfVar from_stack_1.global_56
  loc_BDCAE7: NewIfNullPr clsbase
  loc_BDCAEA: from_stack_1v = clsbase.RsFrmGet()
  loc_BDCAEF: FLdPr var_10C
  loc_BDCAF2:  = Me.Fields
  loc_BDCAF7: FLdPr var_110
  loc_BDCAFA: from_stack_2 = Me.Item(from_stack_1)
  loc_BDCAFF: FLdPr var_124
  loc_BDCB02:  = Me.Value
  loc_BDCB07: FLdRfVar var_108
  loc_BDCB0A: ConcatVar var_134
  loc_BDCB0E: LitI4 9
  loc_BDCB13: FLdRfVar var_144
  loc_BDCB16: ImpAdCallFPR4  = Chr()
  loc_BDCB1B: FLdRfVar var_144
  loc_BDCB1E: ConcatVar var_158
  loc_BDCB22: FLdRfVar var_168
  loc_BDCB25: FLdRfVar var_1A4
  loc_BDCB28: LitVarStr var_120, "CodiInsu"
  loc_BDCB2D: PopAdLdVar
  loc_BDCB2E: FLdRfVar var_190
  loc_BDCB31: FLdRfVar var_18C
  loc_BDCB34: FLdPr Me
  loc_BDCB37: MemLdRfVar from_stack_1.global_56
  loc_BDCB3A: NewIfNullPr clsbase
  loc_BDCB3D: from_stack_1v = clsbase.RsFrmGet()
  loc_BDCB42: FLdPr var_18C
  loc_BDCB45:  = Me.Fields
  loc_BDCB4A: FLdPr var_190
  loc_BDCB4D: from_stack_2 = Me.Item(from_stack_1)
  loc_BDCB52: FLdPr var_1A4
  loc_BDCB55:  = Me.Value
  loc_BDCB5A: FLdRfVar var_168
  loc_BDCB5D: ConcatVar var_178
  loc_BDCB61: LitI4 9
  loc_BDCB66: FLdRfVar var_188
  loc_BDCB69: ImpAdCallFPR4  = Chr()
  loc_BDCB6E: FLdRfVar var_188
  loc_BDCB71: ConcatVar var_1B4
  loc_BDCB75: FLdRfVar var_1C4
  loc_BDCB78: FLdRfVar var_200
  loc_BDCB7B: LitVarStr var_1A0, "DetaInsu"
  loc_BDCB80: PopAdLdVar
  loc_BDCB81: FLdRfVar var_1EC
  loc_BDCB84: FLdRfVar var_1E8
  loc_BDCB87: FLdPr Me
  loc_BDCB8A: MemLdRfVar from_stack_1.global_56
  loc_BDCB8D: NewIfNullPr clsbase
  loc_BDCB90: from_stack_1v = clsbase.RsFrmGet()
  loc_BDCB95: FLdPr var_1E8
  loc_BDCB98:  = Me.Fields
  loc_BDCB9D: FLdPr var_1EC
  loc_BDCBA0: from_stack_2 = Me.Item(from_stack_1)
  loc_BDCBA5: FLdPr var_200
  loc_BDCBA8:  = Me.Value
  loc_BDCBAD: FLdRfVar var_1C4
  loc_BDCBB0: ConcatVar var_1D4
  loc_BDCBB4: LitI4 9
  loc_BDCBB9: FLdRfVar var_1E4
  loc_BDCBBC: ImpAdCallFPR4  = Chr()
  loc_BDCBC1: FLdRfVar var_1E4
  loc_BDCBC4: ConcatVar var_210
  loc_BDCBC8: FLdRfVar var_220
  loc_BDCBCB: FLdRfVar var_25C
  loc_BDCBCE: LitVarStr var_1FC, "DetaItco"
  loc_BDCBD3: PopAdLdVar
  loc_BDCBD4: FLdRfVar var_248
  loc_BDCBD7: FLdRfVar var_244
  loc_BDCBDA: FLdPr Me
  loc_BDCBDD: MemLdRfVar from_stack_1.global_56
  loc_BDCBE0: NewIfNullPr clsbase
  loc_BDCBE3: from_stack_1v = clsbase.RsFrmGet()
  loc_BDCBE8: FLdPr var_244
  loc_BDCBEB:  = Me.Fields
  loc_BDCBF0: FLdPr var_248
  loc_BDCBF3: from_stack_2 = Me.Item(from_stack_1)
  loc_BDCBF8: FLdPr var_25C
  loc_BDCBFB:  = Me.Value
  loc_BDCC00: FLdRfVar var_220
  loc_BDCC03: ConcatVar var_230
  loc_BDCC07: LitI4 9
  loc_BDCC0C: FLdRfVar var_240
  loc_BDCC0F: ImpAdCallFPR4  = Chr()
  loc_BDCC14: FLdRfVar var_240
  loc_BDCC17: ConcatVar var_26C
  loc_BDCC1B: LitI4 1
  loc_BDCC20: LitI4 1
  loc_BDCC25: LitVarStr var_27C, "0.000"
  loc_BDCC2A: FStVarCopyObj var_29C
  loc_BDCC2D: FLdRfVar var_29C
  loc_BDCC30: FLdZeroAd var_2E8
  loc_BDCC33: CVarAd
  loc_BDCC37: ImpAdCallI2 Format$(, )
  loc_BDCC3C: CVarStr var_2AC
  loc_BDCC3F: ConcatVar var_2BC
  loc_BDCC43: LitI4 9
  loc_BDCC48: FLdRfVar var_2CC
  loc_BDCC4B: ImpAdCallFPR4  = Chr()
  loc_BDCC50: FLdRfVar var_2CC
  loc_BDCC53: ConcatVar var_2F8
  loc_BDCC57: LitVarStr var_2E4, "0.00"
  loc_BDCC5C: ConcatVar var_318
  loc_BDCC60: LitI4 9
  loc_BDCC65: FLdRfVar var_328
  loc_BDCC68: ImpAdCallFPR4  = Chr()
  loc_BDCC6D: FLdRfVar var_328
  loc_BDCC70: ConcatVar var_338
  loc_BDCC74: LitVarStr var_308, "0.00"
  loc_BDCC79: ConcatVar var_348
  loc_BDCC7D: LitI4 9
  loc_BDCC82: FLdRfVar var_358
  loc_BDCC85: ImpAdCallFPR4  = Chr()
  loc_BDCC8A: FLdRfVar var_358
  loc_BDCC8D: ConcatVar var_384
  loc_BDCC91: FLdRfVar var_3A4
  loc_BDCC94: FLdRfVar var_374
  loc_BDCC97: LitVarStr var_370, "Incluido"
  loc_BDCC9C: PopAdLdVar
  loc_BDCC9D: FLdRfVar var_360
  loc_BDCCA0: FLdRfVar var_35C
  loc_BDCCA3: FLdPr Me
  loc_BDCCA6: MemLdRfVar from_stack_1.global_56
  loc_BDCCA9: NewIfNullPr clsbase
  loc_BDCCAC: from_stack_1v = clsbase.RsFrmGet()
  loc_BDCCB1: FLdPr var_35C
  loc_BDCCB4:  = Me.Fields
  loc_BDCCB9: FLdPr var_360
  loc_BDCCBC: from_stack_2 = Me.Item(from_stack_1)
  loc_BDCCC1: FLdPr var_374
  loc_BDCCC4:  = Me.Value
  loc_BDCCC9: FLdRfVar var_3A4
  loc_BDCCCC: ConcatVar var_3B4
  loc_BDCCD0: LitI4 9
  loc_BDCCD5: FLdRfVar var_3C4
  loc_BDCCD8: ImpAdCallFPR4  = Chr()
  loc_BDCCDD: FLdRfVar var_3C4
  loc_BDCCE0: ConcatVar var_3D4
  loc_BDCCE4: FLdRfVar var_3E4
  loc_BDCCE7: FLdRfVar var_440
  loc_BDCCEA: LitVarStr var_394, "CaraItco"
  loc_BDCCEF: PopAdLdVar
  loc_BDCCF0: FLdRfVar var_42C
  loc_BDCCF3: FLdRfVar var_428
  loc_BDCCF6: FLdPr Me
  loc_BDCCF9: MemLdRfVar from_stack_1.global_56
  loc_BDCCFC: NewIfNullPr clsbase
  loc_BDCCFF: from_stack_1v = clsbase.RsFrmGet()
  loc_BDCD04: FLdPr var_428
  loc_BDCD07:  = Me.Fields
  loc_BDCD0C: FLdPr var_42C
  loc_BDCD0F: from_stack_2 = Me.Item(from_stack_1)
  loc_BDCD14: FLdPr var_440
  loc_BDCD17:  = Me.Value
  loc_BDCD1C: FLdRfVar var_3E4
  loc_BDCD1F: ConcatVar var_404
  loc_BDCD23: LitI4 9
  loc_BDCD28: FLdRfVar var_414
  loc_BDCD2B: ImpAdCallFPR4  = Chr()
  loc_BDCD30: FLdRfVar var_414
  loc_BDCD33: ConcatVar var_424
  loc_BDCD37: LitVarStr var_3F4, vbNullString
  loc_BDCD3C: ConcatVar var_450
  loc_BDCD40: CStrVarTmp
  loc_BDCD41: CVarStr var_460
  loc_BDCD44: PopAdLdVar
  loc_BDCD45: FLdPr Me
  loc_BDCD48: VCallAd Control_ID_ItemNotaFlex
  loc_BDCD4B: FStAdFunc var_4C4
  loc_BDCD4E: FLdPr var_4C4
  loc_BDCD51: LateIdCall
  loc_BDCD59: FFreeAd var_88 = "": var_94 = "": var_A8 = "": var_10C = "": var_110 = "": var_124 = "": var_18C = "": var_190 = "": var_1A4 = "": var_1E8 = "": var_1EC = "": var_200 = "": var_244 = "": var_248 = "": var_25C = "": var_2D0 = "": var_2D4 = "": var_35C = "": var_360 = "": var_374 = "": var_428 = "": var_42C = "": var_440 = ""
  loc_BDCD8C: FFreeVar var_384 = "": var_3A4 = "": var_3B4 = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_404 = "": var_414 = "": var_424 = "": var_450 = "": var_460 = "": var_D8 = "": var_B8 = "": var_F8 = "": var_108 = "": var_134 = "": var_144 = "": var_158 = "": var_168 = "": var_178 = "": var_188 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_210 = "": var_220 = "": var_230 = "": var_240 = "": var_28C = "": var_29C = "": var_26C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_2F8 = "": var_318 = "": var_328 = "": var_338 = "": var_348 = ""
  loc_BDCDE1: LitStr "0.00"
  loc_BDCDE4: FLdPr Me
  loc_BDCDE7: VCallAd Control_ID_TotaCotiTxt
  loc_BDCDEA: FStAdFunc var_88
  loc_BDCDED: FLdPr var_88
  loc_BDCDF0: Me.Text = from_stack_1
  loc_BDCDF5: FFree1Ad var_88
  loc_BDCDF8: Branch loc_BDD2E8
  loc_BDCDFB: FLdRfVar var_2E8
  loc_BDCDFE: LitVarStr var_258, "CantItco"
  loc_BDCE03: PopAdLdVar
  loc_BDCE04: FLdRfVar var_2D4
  loc_BDCE07: FLdRfVar var_2D0
  loc_BDCE0A: FLdPr Me
  loc_BDCE0D: MemLdRfVar from_stack_1.global_56
  loc_BDCE10: NewIfNullPr clsbase
  loc_BDCE13: from_stack_1v = clsbase.RsFrmGet()
  loc_BDCE18: FLdPr var_2D0
  loc_BDCE1B:  = Me.Fields
  loc_BDCE20: FLdPr var_2D4
  loc_BDCE23: from_stack_2 = Me.Item(from_stack_1)
  loc_BDCE28: FLdRfVar var_374
  loc_BDCE2B: LitVarStr var_2E4, "ImunItco"
  loc_BDCE30: PopAdLdVar
  loc_BDCE31: FLdRfVar var_360
  loc_BDCE34: FLdRfVar var_35C
  loc_BDCE37: FLdPr Me
  loc_BDCE3A: MemLdRfVar from_stack_1.global_56
  loc_BDCE3D: NewIfNullPr clsbase
  loc_BDCE40: from_stack_1v = clsbase.RsFrmGet()
  loc_BDCE45: FLdPr var_35C
  loc_BDCE48:  = Me.Fields
  loc_BDCE4D: FLdPr var_360
  loc_BDCE50: from_stack_2 = Me.Item(from_stack_1)
  loc_BDCE55: FLdRfVar var_440
  loc_BDCE58: LitVarStr var_370, "TotalItem"
  loc_BDCE5D: PopAdLdVar
  loc_BDCE5E: FLdRfVar var_42C
  loc_BDCE61: FLdRfVar var_428
  loc_BDCE64: FLdPr Me
  loc_BDCE67: MemLdRfVar from_stack_1.global_56
  loc_BDCE6A: NewIfNullPr clsbase
  loc_BDCE6D: from_stack_1v = clsbase.RsFrmGet()
  loc_BDCE72: FLdPr var_428
  loc_BDCE75:  = Me.Fields
  loc_BDCE7A: FLdPr var_42C
  loc_BDCE7D: from_stack_2 = Me.Item(from_stack_1)
  loc_BDCE82: FLdRfVar var_D8
  loc_BDCE85: FLdRfVar var_A8
  loc_BDCE88: LitVarStr var_A4, "CodiItco"
  loc_BDCE8D: PopAdLdVar
  loc_BDCE8E: FLdRfVar var_94
  loc_BDCE91: FLdRfVar var_88
  loc_BDCE94: FLdPr Me
  loc_BDCE97: MemLdRfVar from_stack_1.global_56
  loc_BDCE9A: NewIfNullPr clsbase
  loc_BDCE9D: from_stack_1v = clsbase.RsFrmGet()
  loc_BDCEA2: FLdPr var_88
  loc_BDCEA5:  = Me.Fields
  loc_BDCEAA: FLdPr var_94
  loc_BDCEAD: from_stack_2 = Me.Item(from_stack_1)
  loc_BDCEB2: FLdPr var_A8
  loc_BDCEB5:  = Me.Value
  loc_BDCEBA: FLdRfVar var_D8
  loc_BDCEBD: LitI4 9
  loc_BDCEC2: FLdRfVar var_B8
  loc_BDCEC5: ImpAdCallFPR4  = Chr()
  loc_BDCECA: FLdRfVar var_B8
  loc_BDCECD: ConcatVar var_F8
  loc_BDCED1: FLdRfVar var_108
  loc_BDCED4: FLdRfVar var_124
  loc_BDCED7: LitVarStr var_C8, "AlteItco"
  loc_BDCEDC: PopAdLdVar
  loc_BDCEDD: FLdRfVar var_110
  loc_BDCEE0: FLdRfVar var_10C
  loc_BDCEE3: FLdPr Me
  loc_BDCEE6: MemLdRfVar from_stack_1.global_56
  loc_BDCEE9: NewIfNullPr clsbase
  loc_BDCEEC: from_stack_1v = clsbase.RsFrmGet()
  loc_BDCEF1: FLdPr var_10C
  loc_BDCEF4:  = Me.Fields
  loc_BDCEF9: FLdPr var_110
  loc_BDCEFC: from_stack_2 = Me.Item(from_stack_1)
  loc_BDCF01: FLdPr var_124
  loc_BDCF04:  = Me.Value
  loc_BDCF09: FLdRfVar var_108
  loc_BDCF0C: ConcatVar var_134
  loc_BDCF10: LitI4 9
  loc_BDCF15: FLdRfVar var_144
  loc_BDCF18: ImpAdCallFPR4  = Chr()
  loc_BDCF1D: FLdRfVar var_144
  loc_BDCF20: ConcatVar var_158
  loc_BDCF24: FLdRfVar var_168
  loc_BDCF27: FLdRfVar var_1A4
  loc_BDCF2A: LitVarStr var_120, "CodiInsu"
  loc_BDCF2F: PopAdLdVar
  loc_BDCF30: FLdRfVar var_190
  loc_BDCF33: FLdRfVar var_18C
  loc_BDCF36: FLdPr Me
  loc_BDCF39: MemLdRfVar from_stack_1.global_56
  loc_BDCF3C: NewIfNullPr clsbase
  loc_BDCF3F: from_stack_1v = clsbase.RsFrmGet()
  loc_BDCF44: FLdPr var_18C
  loc_BDCF47:  = Me.Fields
  loc_BDCF4C: FLdPr var_190
  loc_BDCF4F: from_stack_2 = Me.Item(from_stack_1)
  loc_BDCF54: FLdPr var_1A4
  loc_BDCF57:  = Me.Value
  loc_BDCF5C: FLdRfVar var_168
  loc_BDCF5F: ConcatVar var_178
  loc_BDCF63: LitI4 9
  loc_BDCF68: FLdRfVar var_188
  loc_BDCF6B: ImpAdCallFPR4  = Chr()
  loc_BDCF70: FLdRfVar var_188
  loc_BDCF73: ConcatVar var_1B4
  loc_BDCF77: FLdRfVar var_1C4
  loc_BDCF7A: FLdRfVar var_200
  loc_BDCF7D: LitVarStr var_1A0, "DetaInsu"
  loc_BDCF82: PopAdLdVar
  loc_BDCF83: FLdRfVar var_1EC
  loc_BDCF86: FLdRfVar var_1E8
  loc_BDCF89: FLdPr Me
  loc_BDCF8C: MemLdRfVar from_stack_1.global_56
  loc_BDCF8F: NewIfNullPr clsbase
  loc_BDCF92: from_stack_1v = clsbase.RsFrmGet()
  loc_BDCF97: FLdPr var_1E8
  loc_BDCF9A:  = Me.Fields
  loc_BDCF9F: FLdPr var_1EC
  loc_BDCFA2: from_stack_2 = Me.Item(from_stack_1)
  loc_BDCFA7: FLdPr var_200
  loc_BDCFAA:  = Me.Value
  loc_BDCFAF: FLdRfVar var_1C4
  loc_BDCFB2: ConcatVar var_1D4
  loc_BDCFB6: LitI4 9
  loc_BDCFBB: FLdRfVar var_1E4
  loc_BDCFBE: ImpAdCallFPR4  = Chr()
  loc_BDCFC3: FLdRfVar var_1E4
  loc_BDCFC6: ConcatVar var_210
  loc_BDCFCA: FLdRfVar var_220
  loc_BDCFCD: FLdRfVar var_25C
  loc_BDCFD0: LitVarStr var_1FC, "DetaItco"
  loc_BDCFD5: PopAdLdVar
  loc_BDCFD6: FLdRfVar var_248
  loc_BDCFD9: FLdRfVar var_244
  loc_BDCFDC: FLdPr Me
  loc_BDCFDF: MemLdRfVar from_stack_1.global_56
  loc_BDCFE2: NewIfNullPr clsbase
  loc_BDCFE5: from_stack_1v = clsbase.RsFrmGet()
  loc_BDCFEA: FLdPr var_244
  loc_BDCFED:  = Me.Fields
  loc_BDCFF2: FLdPr var_248
  loc_BDCFF5: from_stack_2 = Me.Item(from_stack_1)
  loc_BDCFFA: FLdPr var_25C
  loc_BDCFFD:  = Me.Value
  loc_BDD002: FLdRfVar var_220
  loc_BDD005: ConcatVar var_230
  loc_BDD009: LitI4 9
  loc_BDD00E: FLdRfVar var_240
  loc_BDD011: ImpAdCallFPR4  = Chr()
  loc_BDD016: FLdRfVar var_240
  loc_BDD019: ConcatVar var_26C
  loc_BDD01D: LitI4 1
  loc_BDD022: LitI4 1
  loc_BDD027: LitVarStr var_27C, "0.000"
  loc_BDD02C: FStVarCopyObj var_29C
  loc_BDD02F: FLdRfVar var_29C
  loc_BDD032: FLdZeroAd var_2E8
  loc_BDD035: CVarAd
  loc_BDD039: ImpAdCallI2 Format$(, )
  loc_BDD03E: CVarStr var_2AC
  loc_BDD041: ConcatVar var_2BC
  loc_BDD045: LitI4 9
  loc_BDD04A: FLdRfVar var_2CC
  loc_BDD04D: ImpAdCallFPR4  = Chr()
  loc_BDD052: FLdRfVar var_2CC
  loc_BDD055: ConcatVar var_2F8
  loc_BDD059: LitI4 1
  loc_BDD05E: LitI4 1
  loc_BDD063: LitVarStr var_308, "0.00"
  loc_BDD068: FStVarCopyObj var_328
  loc_BDD06B: FLdRfVar var_328
  loc_BDD06E: FLdZeroAd var_374
  loc_BDD071: CVarAd
  loc_BDD075: ImpAdCallI2 Format$(, )
  loc_BDD07A: CVarStr var_338
  loc_BDD07D: ConcatVar var_348
  loc_BDD081: LitI4 9
  loc_BDD086: FLdRfVar var_358
  loc_BDD089: ImpAdCallFPR4  = Chr()
  loc_BDD08E: FLdRfVar var_358
  loc_BDD091: ConcatVar var_384
  loc_BDD095: LitI4 1
  loc_BDD09A: LitI4 1
  loc_BDD09F: LitVarStr var_394, "currency"
  loc_BDD0A4: FStVarCopyObj var_3B4
  loc_BDD0A7: FLdRfVar var_3B4
  loc_BDD0AA: FLdZeroAd var_440
  loc_BDD0AD: CVarAd
  loc_BDD0B1: ImpAdCallI2 Format$(, )
  loc_BDD0B6: CVarStr var_3C4
  loc_BDD0B9: ConcatVar var_3D4
  loc_BDD0BD: LitI4 9
  loc_BDD0C2: FLdRfVar var_3E4
  loc_BDD0C5: ImpAdCallFPR4  = Chr()
  loc_BDD0CA: FLdRfVar var_3E4
  loc_BDD0CD: ConcatVar var_404
  loc_BDD0D1: FLdRfVar var_414
  loc_BDD0D4: FLdRfVar var_4E0
  loc_BDD0D7: LitVarStr var_3F4, "Incluido"
  loc_BDD0DC: PopAdLdVar
  loc_BDD0DD: FLdRfVar var_4DC
  loc_BDD0E0: FLdRfVar var_4C4
  loc_BDD0E3: FLdPr Me
  loc_BDD0E6: MemLdRfVar from_stack_1.global_56
  loc_BDD0E9: NewIfNullPr clsbase
  loc_BDD0EC: from_stack_1v = clsbase.RsFrmGet()
  loc_BDD0F1: FLdPr var_4C4
  loc_BDD0F4:  = Me.Fields
  loc_BDD0F9: FLdPr var_4DC
  loc_BDD0FC: from_stack_2 = Me.Item(from_stack_1)
  loc_BDD101: FLdPr var_4E0
  loc_BDD104:  = Me.Value
  loc_BDD109: FLdRfVar var_414
  loc_BDD10C: ConcatVar var_424
  loc_BDD110: LitI4 9
  loc_BDD115: FLdRfVar var_450
  loc_BDD118: ImpAdCallFPR4  = Chr()
  loc_BDD11D: FLdRfVar var_450
  loc_BDD120: ConcatVar var_460
  loc_BDD124: FLdRfVar var_470
  loc_BDD127: FLdRfVar var_4EC
  loc_BDD12A: LitVarStr var_43C, "CaraItco"
  loc_BDD12F: PopAdLdVar
  loc_BDD130: FLdRfVar var_4E8
  loc_BDD133: FLdRfVar var_4E4
  loc_BDD136: FLdPr Me
  loc_BDD139: MemLdRfVar from_stack_1.global_56
  loc_BDD13C: NewIfNullPr clsbase
  loc_BDD13F: from_stack_1v = clsbase.RsFrmGet()
  loc_BDD144: FLdPr var_4E4
  loc_BDD147:  = Me.Fields
  loc_BDD14C: FLdPr var_4E8
  loc_BDD14F: from_stack_2 = Me.Item(from_stack_1)
  loc_BDD154: FLdPr var_4EC
  loc_BDD157:  = Me.Value
  loc_BDD15C: FLdRfVar var_470
  loc_BDD15F: ConcatVar var_480
  loc_BDD163: LitI4 9
  loc_BDD168: FLdRfVar var_4A0
  loc_BDD16B: ImpAdCallFPR4  = Chr()
  loc_BDD170: FLdRfVar var_4A0
  loc_BDD173: ConcatVar var_4B0
  loc_BDD177: FLdRfVar var_508
  loc_BDD17A: FLdRfVar var_4F8
  loc_BDD17D: LitVarStr var_490, "MarcaItco"
  loc_BDD182: PopAdLdVar
  loc_BDD183: FLdRfVar var_4F4
  loc_BDD186: FLdRfVar var_4F0
  loc_BDD189: FLdPr Me
  loc_BDD18C: MemLdRfVar from_stack_1.global_56
  loc_BDD18F: NewIfNullPr clsbase
  loc_BDD192: from_stack_1v = clsbase.RsFrmGet()
  loc_BDD197: FLdPr var_4F0
  loc_BDD19A:  = Me.Fields
  loc_BDD19F: FLdPr var_4F4
  loc_BDD1A2: from_stack_2 = Me.Item(from_stack_1)
  loc_BDD1A7: FLdPr var_4F8
  loc_BDD1AA:  = Me.Value
  loc_BDD1AF: FLdRfVar var_508
  loc_BDD1B2: ConcatVar var_518
  loc_BDD1B6: CStrVarTmp
  loc_BDD1B7: CVarStr var_528
  loc_BDD1BA: PopAdLdVar
  loc_BDD1BB: FLdPr Me
  loc_BDD1BE: VCallAd Control_ID_ItemNotaFlex
  loc_BDD1C1: FStAdFunc var_52C
  loc_BDD1C4: FLdPr var_52C
  loc_BDD1C7: LateIdCall
  loc_BDD1CF: FFreeAd var_52C = "": var_88 = "": var_94 = "": var_A8 = "": var_10C = "": var_110 = "": var_124 = "": var_18C = "": var_190 = "": var_1A4 = "": var_1E8 = "": var_1EC = "": var_200 = "": var_244 = "": var_248 = "": var_25C = "": var_2D0 = "": var_2D4 = "": var_35C = "": var_360 = "": var_428 = "": var_42C = "": var_4C4 = "": var_4DC = "": var_4E0 = "": var_4E4 = "": var_4E8 = "": var_4EC = "": var_4F0 = "": var_4F4 = ""
  loc_BDD210: FFreeVar var_3A4 = "": var_3B4 = "": var_384 = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_404 = "": var_414 = "": var_424 = "": var_450 = "": var_460 = "": var_470 = "": var_480 = "": var_4A0 = "": var_4B0 = "": var_508 = "": var_518 = "": var_528 = "": var_D8 = "": var_B8 = "": var_F8 = "": var_108 = "": var_134 = "": var_144 = "": var_158 = "": var_168 = "": var_178 = "": var_188 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_210 = "": var_220 = "": var_230 = "": var_240 = "": var_28C = "": var_29C = "": var_26C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_318 = "": var_328 = "": var_2F8 = "": var_338 = "": var_348 = ""
  loc_BDD273: FLdRfVar var_A8
  loc_BDD276: LitVarStr var_A4, "Total"
  loc_BDD27B: PopAdLdVar
  loc_BDD27C: FLdRfVar var_94
  loc_BDD27F: FLdRfVar var_88
  loc_BDD282: FLdPr Me
  loc_BDD285: MemLdRfVar from_stack_1.global_56
  loc_BDD288: NewIfNullPr clsbase
  loc_BDD28B: from_stack_1v = clsbase.RsFrmGet()
  loc_BDD290: FLdPr var_88
  loc_BDD293:  = Me.Fields
  loc_BDD298: FLdPr var_94
  loc_BDD29B: from_stack_2 = Me.Item(from_stack_1)
  loc_BDD2A0: LitI4 1
  loc_BDD2A5: LitI4 1
  loc_BDD2AA: LitVarStr var_C8, "currency"
  loc_BDD2AF: FStVarCopyObj var_D8
  loc_BDD2B2: FLdRfVar var_D8
  loc_BDD2B5: FLdZeroAd var_A8
  loc_BDD2B8: CVarAd
  loc_BDD2BC: ImpAdCallI2 Format$(, )
  loc_BDD2C1: FStStrNoPop var_DC
  loc_BDD2C4: FLdPr Me
  loc_BDD2C7: VCallAd Control_ID_TotaCotiTxt
  loc_BDD2CA: FStAdFunc var_10C
  loc_BDD2CD: FLdPr var_10C
  loc_BDD2D0: Me.Text = from_stack_1
  loc_BDD2D5: FFree1Str var_DC
  loc_BDD2D8: FFreeAd var_88 = "": var_94 = ""
  loc_BDD2E1: FFreeVar var_B8 = ""
  loc_BDD2E8: Branch loc_BDD7D8
  loc_BDD2EB: FLdRfVar var_2E8
  loc_BDD2EE: LitVarStr var_258, "CantItco"
  loc_BDD2F3: PopAdLdVar
  loc_BDD2F4: FLdRfVar var_2D4
  loc_BDD2F7: FLdRfVar var_2D0
  loc_BDD2FA: FLdPr Me
  loc_BDD2FD: MemLdRfVar from_stack_1.global_56
  loc_BDD300: NewIfNullPr clsbase
  loc_BDD303: from_stack_1v = clsbase.RsFrmGet()
  loc_BDD308: FLdPr var_2D0
  loc_BDD30B:  = Me.Fields
  loc_BDD310: FLdPr var_2D4
  loc_BDD313: from_stack_2 = Me.Item(from_stack_1)
  loc_BDD318: FLdRfVar var_374
  loc_BDD31B: LitVarStr var_2E4, "ImunItco"
  loc_BDD320: PopAdLdVar
  loc_BDD321: FLdRfVar var_360
  loc_BDD324: FLdRfVar var_35C
  loc_BDD327: FLdPr Me
  loc_BDD32A: MemLdRfVar from_stack_1.global_56
  loc_BDD32D: NewIfNullPr clsbase
  loc_BDD330: from_stack_1v = clsbase.RsFrmGet()
  loc_BDD335: FLdPr var_35C
  loc_BDD338:  = Me.Fields
  loc_BDD33D: FLdPr var_360
  loc_BDD340: from_stack_2 = Me.Item(from_stack_1)
  loc_BDD345: FLdRfVar var_440
  loc_BDD348: LitVarStr var_370, "TotalItem"
  loc_BDD34D: PopAdLdVar
  loc_BDD34E: FLdRfVar var_42C
  loc_BDD351: FLdRfVar var_428
  loc_BDD354: FLdPr Me
  loc_BDD357: MemLdRfVar from_stack_1.global_56
  loc_BDD35A: NewIfNullPr clsbase
  loc_BDD35D: from_stack_1v = clsbase.RsFrmGet()
  loc_BDD362: FLdPr var_428
  loc_BDD365:  = Me.Fields
  loc_BDD36A: FLdPr var_42C
  loc_BDD36D: from_stack_2 = Me.Item(from_stack_1)
  loc_BDD372: FLdRfVar var_D8
  loc_BDD375: FLdRfVar var_A8
  loc_BDD378: LitVarStr var_A4, "CodiItco"
  loc_BDD37D: PopAdLdVar
  loc_BDD37E: FLdRfVar var_94
  loc_BDD381: FLdRfVar var_88
  loc_BDD384: FLdPr Me
  loc_BDD387: MemLdRfVar from_stack_1.global_56
  loc_BDD38A: NewIfNullPr clsbase
  loc_BDD38D: from_stack_1v = clsbase.RsFrmGet()
  loc_BDD392: FLdPr var_88
  loc_BDD395:  = Me.Fields
  loc_BDD39A: FLdPr var_94
  loc_BDD39D: from_stack_2 = Me.Item(from_stack_1)
  loc_BDD3A2: FLdPr var_A8
  loc_BDD3A5:  = Me.Value
  loc_BDD3AA: FLdRfVar var_D8
  loc_BDD3AD: LitI4 9
  loc_BDD3B2: FLdRfVar var_B8
  loc_BDD3B5: ImpAdCallFPR4  = Chr()
  loc_BDD3BA: FLdRfVar var_B8
  loc_BDD3BD: ConcatVar var_F8
  loc_BDD3C1: FLdRfVar var_108
  loc_BDD3C4: FLdRfVar var_124
  loc_BDD3C7: LitVarStr var_C8, "AlteItco"
  loc_BDD3CC: PopAdLdVar
  loc_BDD3CD: FLdRfVar var_110
  loc_BDD3D0: FLdRfVar var_10C
  loc_BDD3D3: FLdPr Me
  loc_BDD3D6: MemLdRfVar from_stack_1.global_56
  loc_BDD3D9: NewIfNullPr clsbase
  loc_BDD3DC: from_stack_1v = clsbase.RsFrmGet()
  loc_BDD3E1: FLdPr var_10C
  loc_BDD3E4:  = Me.Fields
  loc_BDD3E9: FLdPr var_110
  loc_BDD3EC: from_stack_2 = Me.Item(from_stack_1)
  loc_BDD3F1: FLdPr var_124
  loc_BDD3F4:  = Me.Value
  loc_BDD3F9: FLdRfVar var_108
  loc_BDD3FC: ConcatVar var_134
  loc_BDD400: LitI4 9
  loc_BDD405: FLdRfVar var_144
  loc_BDD408: ImpAdCallFPR4  = Chr()
  loc_BDD40D: FLdRfVar var_144
  loc_BDD410: ConcatVar var_158
  loc_BDD414: FLdRfVar var_168
  loc_BDD417: FLdRfVar var_1A4
  loc_BDD41A: LitVarStr var_120, "CodiInsu"
  loc_BDD41F: PopAdLdVar
  loc_BDD420: FLdRfVar var_190
  loc_BDD423: FLdRfVar var_18C
  loc_BDD426: FLdPr Me
  loc_BDD429: MemLdRfVar from_stack_1.global_56
  loc_BDD42C: NewIfNullPr clsbase
  loc_BDD42F: from_stack_1v = clsbase.RsFrmGet()
  loc_BDD434: FLdPr var_18C
  loc_BDD437:  = Me.Fields
  loc_BDD43C: FLdPr var_190
  loc_BDD43F: from_stack_2 = Me.Item(from_stack_1)
  loc_BDD444: FLdPr var_1A4
  loc_BDD447:  = Me.Value
  loc_BDD44C: FLdRfVar var_168
  loc_BDD44F: ConcatVar var_178
  loc_BDD453: LitI4 9
  loc_BDD458: FLdRfVar var_188
  loc_BDD45B: ImpAdCallFPR4  = Chr()
  loc_BDD460: FLdRfVar var_188
  loc_BDD463: ConcatVar var_1B4
  loc_BDD467: FLdRfVar var_1C4
  loc_BDD46A: FLdRfVar var_200
  loc_BDD46D: LitVarStr var_1A0, "DetaInsu"
  loc_BDD472: PopAdLdVar
  loc_BDD473: FLdRfVar var_1EC
  loc_BDD476: FLdRfVar var_1E8
  loc_BDD479: FLdPr Me
  loc_BDD47C: MemLdRfVar from_stack_1.global_56
  loc_BDD47F: NewIfNullPr clsbase
  loc_BDD482: from_stack_1v = clsbase.RsFrmGet()
  loc_BDD487: FLdPr var_1E8
  loc_BDD48A:  = Me.Fields
  loc_BDD48F: FLdPr var_1EC
  loc_BDD492: from_stack_2 = Me.Item(from_stack_1)
  loc_BDD497: FLdPr var_200
  loc_BDD49A:  = Me.Value
  loc_BDD49F: FLdRfVar var_1C4
  loc_BDD4A2: ConcatVar var_1D4
  loc_BDD4A6: LitI4 9
  loc_BDD4AB: FLdRfVar var_1E4
  loc_BDD4AE: ImpAdCallFPR4  = Chr()
  loc_BDD4B3: FLdRfVar var_1E4
  loc_BDD4B6: ConcatVar var_210
  loc_BDD4BA: FLdRfVar var_220
  loc_BDD4BD: FLdRfVar var_25C
  loc_BDD4C0: LitVarStr var_1FC, "DetaItco"
  loc_BDD4C5: PopAdLdVar
  loc_BDD4C6: FLdRfVar var_248
  loc_BDD4C9: FLdRfVar var_244
  loc_BDD4CC: FLdPr Me
  loc_BDD4CF: MemLdRfVar from_stack_1.global_56
  loc_BDD4D2: NewIfNullPr clsbase
  loc_BDD4D5: from_stack_1v = clsbase.RsFrmGet()
  loc_BDD4DA: FLdPr var_244
  loc_BDD4DD:  = Me.Fields
  loc_BDD4E2: FLdPr var_248
  loc_BDD4E5: from_stack_2 = Me.Item(from_stack_1)
  loc_BDD4EA: FLdPr var_25C
  loc_BDD4ED:  = Me.Value
  loc_BDD4F2: FLdRfVar var_220
  loc_BDD4F5: ConcatVar var_230
  loc_BDD4F9: LitI4 9
  loc_BDD4FE: FLdRfVar var_240
  loc_BDD501: ImpAdCallFPR4  = Chr()
  loc_BDD506: FLdRfVar var_240
  loc_BDD509: ConcatVar var_26C
  loc_BDD50D: LitI4 1
  loc_BDD512: LitI4 1
  loc_BDD517: LitVarStr var_27C, "0.000"
  loc_BDD51C: FStVarCopyObj var_29C
  loc_BDD51F: FLdRfVar var_29C
  loc_BDD522: FLdZeroAd var_2E8
  loc_BDD525: CVarAd
  loc_BDD529: ImpAdCallI2 Format$(, )
  loc_BDD52E: CVarStr var_2AC
  loc_BDD531: ConcatVar var_2BC
  loc_BDD535: LitI4 9
  loc_BDD53A: FLdRfVar var_2CC
  loc_BDD53D: ImpAdCallFPR4  = Chr()
  loc_BDD542: FLdRfVar var_2CC
  loc_BDD545: ConcatVar var_2F8
  loc_BDD549: LitI4 1
  loc_BDD54E: LitI4 1
  loc_BDD553: LitVarStr var_308, "0.00"
  loc_BDD558: FStVarCopyObj var_328
  loc_BDD55B: FLdRfVar var_328
  loc_BDD55E: FLdZeroAd var_374
  loc_BDD561: CVarAd
  loc_BDD565: ImpAdCallI2 Format$(, )
  loc_BDD56A: CVarStr var_338
  loc_BDD56D: ConcatVar var_348
  loc_BDD571: LitI4 9
  loc_BDD576: FLdRfVar var_358
  loc_BDD579: ImpAdCallFPR4  = Chr()
  loc_BDD57E: FLdRfVar var_358
  loc_BDD581: ConcatVar var_384
  loc_BDD585: LitI4 1
  loc_BDD58A: LitI4 1
  loc_BDD58F: LitVarStr var_394, "currency"
  loc_BDD594: FStVarCopyObj var_3B4
  loc_BDD597: FLdRfVar var_3B4
  loc_BDD59A: FLdZeroAd var_440
  loc_BDD59D: CVarAd
  loc_BDD5A1: ImpAdCallI2 Format$(, )
  loc_BDD5A6: CVarStr var_3C4
  loc_BDD5A9: ConcatVar var_3D4
  loc_BDD5AD: LitI4 9
  loc_BDD5B2: FLdRfVar var_3E4
  loc_BDD5B5: ImpAdCallFPR4  = Chr()
  loc_BDD5BA: FLdRfVar var_3E4
  loc_BDD5BD: ConcatVar var_404
  loc_BDD5C1: FLdRfVar var_414
  loc_BDD5C4: FLdRfVar var_4E0
  loc_BDD5C7: LitVarStr var_3F4, "Incluido"
  loc_BDD5CC: PopAdLdVar
  loc_BDD5CD: FLdRfVar var_4DC
  loc_BDD5D0: FLdRfVar var_4C4
  loc_BDD5D3: FLdPr Me
  loc_BDD5D6: MemLdRfVar from_stack_1.global_56
  loc_BDD5D9: NewIfNullPr clsbase
  loc_BDD5DC: from_stack_1v = clsbase.RsFrmGet()
  loc_BDD5E1: FLdPr var_4C4
  loc_BDD5E4:  = Me.Fields
  loc_BDD5E9: FLdPr var_4DC
  loc_BDD5EC: from_stack_2 = Me.Item(from_stack_1)
  loc_BDD5F1: FLdPr var_4E0
  loc_BDD5F4:  = Me.Value
  loc_BDD5F9: FLdRfVar var_414
  loc_BDD5FC: ConcatVar var_424
  loc_BDD600: LitI4 9
  loc_BDD605: FLdRfVar var_450
  loc_BDD608: ImpAdCallFPR4  = Chr()
  loc_BDD60D: FLdRfVar var_450
  loc_BDD610: ConcatVar var_460
  loc_BDD614: FLdRfVar var_470
  loc_BDD617: FLdRfVar var_4EC
  loc_BDD61A: LitVarStr var_43C, "CaraItco"
  loc_BDD61F: PopAdLdVar
  loc_BDD620: FLdRfVar var_4E8
  loc_BDD623: FLdRfVar var_4E4
  loc_BDD626: FLdPr Me
  loc_BDD629: MemLdRfVar from_stack_1.global_56
  loc_BDD62C: NewIfNullPr clsbase
  loc_BDD62F: from_stack_1v = clsbase.RsFrmGet()
  loc_BDD634: FLdPr var_4E4
  loc_BDD637:  = Me.Fields
  loc_BDD63C: FLdPr var_4E8
  loc_BDD63F: from_stack_2 = Me.Item(from_stack_1)
  loc_BDD644: FLdPr var_4EC
  loc_BDD647:  = Me.Value
  loc_BDD64C: FLdRfVar var_470
  loc_BDD64F: ConcatVar var_480
  loc_BDD653: LitI4 9
  loc_BDD658: FLdRfVar var_4A0
  loc_BDD65B: ImpAdCallFPR4  = Chr()
  loc_BDD660: FLdRfVar var_4A0
  loc_BDD663: ConcatVar var_4B0
  loc_BDD667: FLdRfVar var_508
  loc_BDD66A: FLdRfVar var_4F8
  loc_BDD66D: LitVarStr var_490, "MarcaItco"
  loc_BDD672: PopAdLdVar
  loc_BDD673: FLdRfVar var_4F4
  loc_BDD676: FLdRfVar var_4F0
  loc_BDD679: FLdPr Me
  loc_BDD67C: MemLdRfVar from_stack_1.global_56
  loc_BDD67F: NewIfNullPr clsbase
  loc_BDD682: from_stack_1v = clsbase.RsFrmGet()
  loc_BDD687: FLdPr var_4F0
  loc_BDD68A:  = Me.Fields
  loc_BDD68F: FLdPr var_4F4
  loc_BDD692: from_stack_2 = Me.Item(from_stack_1)
  loc_BDD697: FLdPr var_4F8
  loc_BDD69A:  = Me.Value
  loc_BDD69F: FLdRfVar var_508
  loc_BDD6A2: ConcatVar var_518
  loc_BDD6A6: CStrVarTmp
  loc_BDD6A7: CVarStr var_528
  loc_BDD6AA: PopAdLdVar
  loc_BDD6AB: FLdPr Me
  loc_BDD6AE: VCallAd Control_ID_ItemNotaFlex
  loc_BDD6B1: FStAdFunc var_52C
  loc_BDD6B4: FLdPr var_52C
  loc_BDD6B7: LateIdCall
  loc_BDD6BF: FFreeAd var_52C = "": var_88 = "": var_94 = "": var_A8 = "": var_10C = "": var_110 = "": var_124 = "": var_18C = "": var_190 = "": var_1A4 = "": var_1E8 = "": var_1EC = "": var_200 = "": var_244 = "": var_248 = "": var_25C = "": var_2D0 = "": var_2D4 = "": var_35C = "": var_360 = "": var_428 = "": var_42C = "": var_4C4 = "": var_4DC = "": var_4E0 = "": var_4E4 = "": var_4E8 = "": var_4EC = "": var_4F0 = "": var_4F4 = ""
  loc_BDD700: FFreeVar var_3A4 = "": var_3B4 = "": var_384 = "": var_3C4 = "": var_3D4 = "": var_3E4 = "": var_404 = "": var_414 = "": var_424 = "": var_450 = "": var_460 = "": var_470 = "": var_480 = "": var_4A0 = "": var_4B0 = "": var_508 = "": var_518 = "": var_528 = "": var_D8 = "": var_B8 = "": var_F8 = "": var_108 = "": var_134 = "": var_144 = "": var_158 = "": var_168 = "": var_178 = "": var_188 = "": var_1B4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_210 = "": var_220 = "": var_230 = "": var_240 = "": var_28C = "": var_29C = "": var_26C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_318 = "": var_328 = "": var_2F8 = "": var_338 = "": var_348 = ""
  loc_BDD763: FLdRfVar var_A8
  loc_BDD766: LitVarStr var_A4, "Total"
  loc_BDD76B: PopAdLdVar
  loc_BDD76C: FLdRfVar var_94
  loc_BDD76F: FLdRfVar var_88
  loc_BDD772: FLdPr Me
  loc_BDD775: MemLdRfVar from_stack_1.global_56
  loc_BDD778: NewIfNullPr clsbase
  loc_BDD77B: from_stack_1v = clsbase.RsFrmGet()
  loc_BDD780: FLdPr var_88
  loc_BDD783:  = Me.Fields
  loc_BDD788: FLdPr var_94
  loc_BDD78B: from_stack_2 = Me.Item(from_stack_1)
  loc_BDD790: LitI4 1
  loc_BDD795: LitI4 1
  loc_BDD79A: LitVarStr var_C8, "currency"
  loc_BDD79F: FStVarCopyObj var_D8
  loc_BDD7A2: FLdRfVar var_D8
  loc_BDD7A5: FLdZeroAd var_A8
  loc_BDD7A8: CVarAd
  loc_BDD7AC: ImpAdCallI2 Format$(, )
  loc_BDD7B1: FStStrNoPop var_DC
  loc_BDD7B4: FLdPr Me
  loc_BDD7B7: VCallAd Control_ID_TotaCotiTxt
  loc_BDD7BA: FStAdFunc var_10C
  loc_BDD7BD: FLdPr var_10C
  loc_BDD7C0: Me.Text = from_stack_1
  loc_BDD7C5: FFree1Str var_DC
  loc_BDD7C8: FFreeAd var_88 = "": var_94 = ""
  loc_BDD7D1: FFreeVar var_B8 = ""
  loc_BDD7D8: FLdPr Me
  loc_BDD7DB: MemLdRfVar from_stack_1.global_56
  loc_BDD7DE: NewIfNullPr clsbase
  loc_BDD7E1: Call clsbase.MoveSiguiente()
  loc_BDD7E6: Branch loc_BDC99D
  loc_BDD7E9: Branch loc_BDD7FD
  loc_BDD7EC: LitStr "SELECT 0 Total"
  loc_BDD7EF: FLdPr Me
  loc_BDD7F2: MemLdRfVar from_stack_1.global_56
  loc_BDD7F5: NewIfNullPr clsbase
  loc_BDD7F8: Call clsbase.RedefineRS(from_stack_1v)
  loc_BDD7FD: FLdPr Me
  loc_BDD800: MemLdRfVar from_stack_1.global_56
  loc_BDD803: NewIfNullPr clsbase
  loc_BDD806: Call clsbase.MoveLast()
  loc_BDD80B: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '9F4BCC
  'Data Table: 4A77A4
  loc_9F4A98: LitI4 0
  loc_9F4A9D: PopTmpLdAdStr var_88
  loc_9F4AA0: LitI4 0
  loc_9F4AA5: LitI4 0
  loc_9F4AAA: FLdPr Me
  loc_9F4AAD: MemLdRfVar from_stack_1.global_52
  loc_9F4AB0: NewIfNullPr clscotizacion
  loc_9F4AB3: Call clscotizacion.Encontrar(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_9F4AB8: LitI2_Byte 0
  loc_9F4ABA: CUI1I2
  loc_9F4ABC: FLdPr Me
  loc_9F4ABF: MemStUI1
  loc_9F4AC3: ILdRf Me
  loc_9F4AC6: CastAd
  loc_9F4AC9: FStAdFunc var_8C
  loc_9F4ACC: FLdRfVar var_8C
  loc_9F4ACF: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9F4AD4: FFree1Ad var_8C
  loc_9F4AD7: LitI4 0
  loc_9F4ADC: LitI4 0
  loc_9F4AE1: FLdRfVar var_90
  loc_9F4AE4: Redim
  loc_9F4AEE: FLdPr Me
  loc_9F4AF1: VCallAd Control_ID_dgdABMS
  loc_9F4AF4: CVarAd
  loc_9F4AF8: ParmAry1St
  loc_9F4AFE: FLdRfVar var_90
  loc_9F4B01: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9F4B06: FLdRfVar var_90
  loc_9F4B09: Erase
  loc_9F4B0A: FLdPr Me
  loc_9F4B0D: MemLdRfVar from_stack_1.global_52
  loc_9F4B10: NewIfNullAd
  loc_9F4B13: FStAd var_A4 
  loc_9F4B17: FLdRfVar var_A4
  loc_9F4B1A: CVarRef
  loc_9F4B1F: ILdRf Me
  loc_9F4B22: CastAd
  loc_9F4B25: FStAdFunc var_8C
  loc_9F4B28: FLdRfVar var_8C
  loc_9F4B2B: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_9F4B30: ILdRf var_A4
  loc_9F4B33: CastAd
  loc_9F4B36: FLdPr Me
  loc_9F4B39: MemStAdFunc
  loc_9F4B3D: FFreeAd var_8C = ""
  loc_9F4B44: FLdRfVar var_88
  loc_9F4B47: FLdPr Me
  loc_9F4B4A: MemLdRfVar from_stack_1.global_52
  loc_9F4B4D: NewIfNullPr clscotizacion
  loc_9F4B50: from_stack_1 = clscotizacion.RecordCount
  loc_9F4B55: ILdRf var_88
  loc_9F4B58: LitI4 0
  loc_9F4B5D: EqI4
  loc_9F4B5E: BranchF loc_9F4B75
  loc_9F4B61: ILdRf Me
  loc_9F4B64: CastAd
  loc_9F4B67: FStAdFunc var_8C
  loc_9F4B6A: FLdRfVar var_8C
  loc_9F4B6D: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_9F4B72: FFree1Ad var_8C
  loc_9F4B75: ILdRf Me
  loc_9F4B78: CastAd
  loc_9F4B7B: FStAdFunc var_8C
  loc_9F4B7E: FLdRfVar var_8C
  loc_9F4B81: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9F4B86: FFree1Ad var_8C
  loc_9F4B89: FLdPr Me
  loc_9F4B8C: VCallAd Control_ID_dgdABMS
  loc_9F4B8F: FStAdFunc var_A4
  loc_9F4B92: LitI4 0
  loc_9F4B97: FStStrCopy var_B8
  loc_9F4B9A: FLdRfVar var_B8
  loc_9F4B9D: FLdPr Me
  loc_9F4BA0: MemLdStr global_72
  loc_9F4BA3: FLdZeroAd var_A4
  loc_9F4BA6: FStAdFunc var_8C
  loc_9F4BA9: FLdRfVar var_8C
  loc_9F4BAC: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_9F4BB1: FFree1Str var_B8
  loc_9F4BB4: FFreeAd var_8C = ""
  loc_9F4BBB: LitI2_Byte 0
  loc_9F4BBD: LitVarI2 var_A0, 0
  loc_9F4BC2: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_9F4BC7: FFree1Var var_A0 = ""
  loc_9F4BCA: ExitProcHresult
End Sub

Private Sub FechCotiMsk_UnknownEvent_0 '950C40
  'Data Table: 4A77A4
  loc_950C2C: FLdPr Me
  loc_950C2F: VCallAd Control_ID_FechCotiMsk
  loc_950C32: CVarAd
  loc_950C36: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_950C3B: FFree1Var var_94 = ""
  loc_950C3E: ExitProcHresult
End Sub

Private Function FechCotiMsk_UnknownEvent_8(arg_C) '9C9A08
  'Data Table: 4A77A4
  loc_9C9934: FLdRfVar var_8A
  loc_9C9937: FLdPr Me
  loc_9C993A: VCallAd Control_ID_cmdCancelar
  loc_9C993D: FStAdFunc var_88
  loc_9C9940: FLdPr var_88
  loc_9C9943:  = Me.Value
  loc_9C9948: FLdI2 var_8A
  loc_9C994B: NotI4
  loc_9C994C: FLdPr Me
  loc_9C994F: VCallAd Control_ID_FechCotiMsk
  loc_9C9952: FStAdFunc var_90
  loc_9C9955: FLdPr var_90
  loc_9C9958: LateIdLdVar var_A0 DispID_13 -32767
  loc_9C995F: CBoolVar
  loc_9C9961: AndI4
  loc_9C9962: FFreeAd var_88 = ""
  loc_9C9969: FFree1Var var_A0 = ""
  loc_9C996C: BranchF loc_9C9A07
  loc_9C996F: FLdPr Me
  loc_9C9972: VCallAd Control_ID_FechCotiMsk
  loc_9C9975: FStAdFunc var_88
  loc_9C9978: FLdPr var_88
  loc_9C997B: LateIdLdVar var_A0 DispID_15 0
  loc_9C9982: PopAd
  loc_9C9984: FLdPr Me
  loc_9C9987: VCallAd Control_ID_FechCotiMsk
  loc_9C998A: FStAdFunc var_AC
  loc_9C998D: LitI2_Byte &HFF
  loc_9C998F: PopTmpLdAd2 var_8A
  loc_9C9992: FLdZeroAd var_AC
  loc_9C9995: FStAdFunc var_90
  loc_9C9998: FLdRfVar var_90
  loc_9C999B: LitStr "01/01/2018"
  loc_9C999E: LitI2_Byte 0
  loc_9C99A0: LitI2_Byte &HFF
  loc_9C99A2: FLdRfVar var_A0
  loc_9C99A5: CStrVarTmp
  loc_9C99A6: FStStrNoPop var_A4
  loc_9C99A9: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_9C99AE: FStStrNoPop var_A8
  loc_9C99B1: FLdPr Me
  loc_9C99B4: MemStStrCopy
  loc_9C99B8: FFreeStr var_A4 = ""
  loc_9C99BF: FFreeAd var_88 = "": var_90 = ""
  loc_9C99C8: FFree1Var var_A0 = ""
  loc_9C99CB: FLdPr Me
  loc_9C99CE: VCallAd Control_ID_FechCotiMsk
  loc_9C99D1: FStAdFunc var_B0
  loc_9C99D4: LitNothing
  loc_9C99D6: CastAd
  loc_9C99D9: FStAdFunc var_AC
  loc_9C99DC: FLdRfVar var_AC
  loc_9C99DF: FLdZeroAd var_B0
  loc_9C99E2: FStAdFuncNoPop
  loc_9C99E5: CastAd
  loc_9C99E8: FStAdFunc var_90
  loc_9C99EB: FLdRfVar var_90
  loc_9C99EE: FLdPr Me
  loc_9C99F1: MemLdRfVar from_stack_1.global_68
  loc_9C99F4: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C99F9: IStI2 arg_C
  loc_9C99FC: FFreeAd var_88 = "": var_90 = "": var_AC = ""
  loc_9C9A07: ExitProcHresult
End Function

Private Sub FechCotiMsk_KeyPress(KeyAscii As Integer) '985E70
  'Data Table: 4A77A4
  loc_985E2C: ILdI2 KeyAscii
  loc_985E2F: CI4UI1
  loc_985E30: LitI4 &H20
  loc_985E35: EqI4
  loc_985E36: BranchF loc_985E6C
  loc_985E39: LitVar_Missing var_A4
  loc_985E3C: PopAdLdVar
  loc_985E3D: LitVarI4
  loc_985E45: PopAdLdVar
  loc_985E46: ImpAdLdRf MemVar_C3D9A8
  loc_985E49: NewIfNullPr frmCalendario
  loc_985E4C: frmCalendario.Show from_stack_1, from_stack_2
  loc_985E51: ImpAdLdRf MemVar_C3D038
  loc_985E54: CDargRef
  loc_985E58: FLdPr Me
  loc_985E5B: VCallAd Control_ID_FechCotiMsk
  loc_985E5E: FStAdFunc var_A8
  loc_985E61: FLdPr var_A8
  loc_985E64: LateIdSt
  loc_985E69: FFree1Ad var_A8
  loc_985E6C: ExitProcHresult
  loc_985E6F: CStr2Ansi
End Sub

Private Sub MaofCotiTxt_GotFocus() '950970
  'Data Table: 4A77A4
  loc_95095C: FLdPr Me
  loc_95095F: VCallAd Control_ID_MaofCotiTxt
  loc_950962: CVarAd
  loc_950966: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95096B: FFree1Var var_94 = ""
  loc_95096E: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BAF8F8
  'Data Table: 4A77A4
  loc_BAE95C: ILdRf Button
  loc_BAE95F: FStAd var_88 
  loc_BAE963: FLdRfVar var_8C
  loc_BAE966: FLdPr var_88
  loc_BAE969:  = Me.Key
  loc_BAE96E: FLdZeroAd var_8C
  loc_BAE971: FStStr var_90
  loc_BAE974: ILdRf var_90
  loc_BAE977: LitStr "btnCrear"
  loc_BAE97A: EqStr
  loc_BAE97C: BranchF loc_BAEB63
  loc_BAE97F: FLdRfVar var_94
  loc_BAE982: FLdPr Me
  loc_BAE985: MemLdRfVar from_stack_1.global_52
  loc_BAE988: NewIfNullPr clscotizacion
  loc_BAE98B: from_stack_1 = clscotizacion.RecordCount
  loc_BAE990: ILdRf var_94
  loc_BAE993: LitI4 0
  loc_BAE998: GtI4
  loc_BAE999: BranchF loc_BAEB60
  loc_BAE99C: FLdRfVar var_B0
  loc_BAE99F: LitVarStr var_AC, "FeanNope"
  loc_BAE9A4: PopAdLdVar
  loc_BAE9A5: FLdRfVar var_9C
  loc_BAE9A8: FLdRfVar var_98
  loc_BAE9AB: FLdPr Me
  loc_BAE9AE: MemLdRfVar from_stack_1.global_52
  loc_BAE9B1: NewIfNullPr clscotizacion
  loc_BAE9B4: from_stack_1v = clscotizacion.RsFrmGet()
  loc_BAE9B9: FLdPr var_98
  loc_BAE9BC:  = Me.Fields
  loc_BAE9C1: FLdPr var_9C
  loc_BAE9C4: from_stack_2 = Me.Item(from_stack_1)
  loc_BAE9C9: FLdZeroAd var_B0
  loc_BAE9CC: CVarAd
  loc_BAE9D0: ImpAdCallI2 IsNull()
  loc_BAE9D5: FFreeAd var_98 = ""
  loc_BAE9DC: FFree1Var var_C0 = ""
  loc_BAE9DF: BranchF loc_BAEB38
  loc_BAE9E2: LitI2_Byte 1
  loc_BAE9E4: FLdPr Me
  loc_BAE9E7: MemStUI1
  loc_BAE9EB: ILdRf Me
  loc_BAE9EE: CastAd
  loc_BAE9F1: FStAdFunc var_98
  loc_BAE9F4: FLdRfVar var_98
  loc_BAE9F7: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BAE9FC: FFree1Ad var_98
  loc_BAE9FF: LitI4 0
  loc_BAEA04: LitI4 0
  loc_BAEA09: FLdRfVar var_C4
  loc_BAEA0C: Redim
  loc_BAEA16: FLdPr Me
  loc_BAEA19: VCallAd Control_ID_dgdABMS
  loc_BAEA1C: CVarAd
  loc_BAEA20: ParmAry1St
  loc_BAEA26: FLdRfVar var_C4
  loc_BAEA29: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BAEA2E: FLdRfVar var_C4
  loc_BAEA31: Erase
  loc_BAEA32: ILdRf Me
  loc_BAEA35: CastAd
  loc_BAEA38: FStAdFunc var_98
  loc_BAEA3B: FLdRfVar var_98
  loc_BAEA3E: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_BAEA43: FFree1Ad var_98
  loc_BAEA46: ILdRf Me
  loc_BAEA49: CastAd
  loc_BAEA4C: FStAdFunc var_98
  loc_BAEA4F: FLdRfVar var_98
  loc_BAEA52: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_BAEA57: FFree1Ad var_98
  loc_BAEA5A: FLdRfVar var_C0
  loc_BAEA5D: FLdRfVar var_B0
  loc_BAEA60: LitVarStr var_AC, "FechNope"
  loc_BAEA65: PopAdLdVar
  loc_BAEA66: FLdRfVar var_9C
  loc_BAEA69: FLdRfVar var_98
  loc_BAEA6C: FLdPr Me
  loc_BAEA6F: MemLdRfVar from_stack_1.global_52
  loc_BAEA72: NewIfNullPr clscotizacion
  loc_BAEA75: from_stack_1v = clscotizacion.RsFrmGet()
  loc_BAEA7A: FLdPr var_98
  loc_BAEA7D:  = Me.Fields
  loc_BAEA82: FLdPr var_9C
  loc_BAEA85: from_stack_2 = Me.Item(from_stack_1)
  loc_BAEA8A: FLdPr var_B0
  loc_BAEA8D:  = Me.Value
  loc_BAEA92: FLdRfVar var_C0
  loc_BAEA95: CStrVarTmp
  loc_BAEA96: CVarStr var_D4
  loc_BAEA99: PopAdLdVar
  loc_BAEA9A: FLdPr Me
  loc_BAEA9D: VCallAd Control_ID_FechCotiMsk
  loc_BAEAA0: FStAdFunc var_E8
  loc_BAEAA3: FLdPr var_E8
  loc_BAEAA6: LateIdSt
  loc_BAEAAB: FFreeAd var_98 = "": var_9C = "": var_B0 = ""
  loc_BAEAB6: FFreeVar var_C0 = ""
  loc_BAEABD: LitI4 0
  loc_BAEAC2: LitI4 4
  loc_BAEAC7: FLdRfVar var_C4
  loc_BAEACA: Redim
  loc_BAEAD4: FLdPr Me
  loc_BAEAD7: VCallAd Control_ID_CucuPersTxt
  loc_BAEADA: CVarAd
  loc_BAEADE: ParmAry1St
  loc_BAEAE4: FLdPr Me
  loc_BAEAE7: VCallAd Control_ID_FechCotiMsk
  loc_BAEAEA: CVarAd
  loc_BAEAEE: ParmAry1St
  loc_BAEAF4: FLdPr Me
  loc_BAEAF7: VCallAd Control_ID_PlenCotiTxt
  loc_BAEAFA: CVarAd
  loc_BAEAFE: ParmAry1St
  loc_BAEB04: FLdPr Me
  loc_BAEB07: VCallAd Control_ID_MaofCotiTxt
  loc_BAEB0A: CVarAd
  loc_BAEB0E: ParmAry1St
  loc_BAEB14: FLdPr Me
  loc_BAEB17: VCallAd Control_ID_ObseCotiTxt
  loc_BAEB1A: CVarAd
  loc_BAEB1E: ParmAry1St
  loc_BAEB24: FLdRfVar var_C4
  loc_BAEB27: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BAEB2C: FLdRfVar var_C4
  loc_BAEB2F: Erase
  loc_BAEB30: Call Proc_108_32_AE7DB0()
  loc_BAEB35: Branch loc_BAEB60
  loc_BAEB38: LitStr "La Nota de Pedido se encuentra anulada. No se puede crear la cotización. Verifique..."
  loc_BAEB3B: FLdPr Me
  loc_BAEB3E: MemStStrCopy
  loc_BAEB42: FLdPr Me
  loc_BAEB45: MemLdStr global_68
  loc_BAEB48: LitStr vbNullString
  loc_BAEB4B: NeStr
  loc_BAEB4D: BranchF loc_BAEB60
  loc_BAEB50: LitI4 0
  loc_BAEB55: FLdPr Me
  loc_BAEB58: MemLdStr global_68
  loc_BAEB5B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BAEB60: Branch loc_BAF8F6
  loc_BAEB63: ILdRf var_90
  loc_BAEB66: LitStr "btnModificar"
  loc_BAEB69: EqStr
  loc_BAEB6B: BranchF loc_BAED8D
  loc_BAEB6E: FLdRfVar var_94
  loc_BAEB71: FLdPr Me
  loc_BAEB74: MemLdRfVar from_stack_1.global_52
  loc_BAEB77: NewIfNullPr clscotizacion
  loc_BAEB7A: from_stack_1 = clscotizacion.RecordCount
  loc_BAEB7F: ILdRf var_94
  loc_BAEB82: LitI4 0
  loc_BAEB87: GtI4
  loc_BAEB88: BranchF loc_BAED8A
  loc_BAEB8B: FLdRfVar var_C0
  loc_BAEB8E: FLdRfVar var_B0
  loc_BAEB91: LitVarStr var_AC, "CucuPers"
  loc_BAEB96: PopAdLdVar
  loc_BAEB97: FLdRfVar var_9C
  loc_BAEB9A: FLdRfVar var_98
  loc_BAEB9D: FLdPr Me
  loc_BAEBA0: MemLdRfVar from_stack_1.global_52
  loc_BAEBA3: NewIfNullPr clscotizacion
  loc_BAEBA6: from_stack_1v = clscotizacion.RsFrmGet()
  loc_BAEBAB: FLdPr var_98
  loc_BAEBAE:  = Me.Fields
  loc_BAEBB3: FLdPr var_9C
  loc_BAEBB6: from_stack_2 = Me.Item(from_stack_1)
  loc_BAEBBB: FLdPr var_B0
  loc_BAEBBE:  = Me.Value
  loc_BAEBC3: FLdRfVar var_C0
  loc_BAEBC6: LitVarStr var_E4, "0"
  loc_BAEBCB: HardType
  loc_BAEBCC: NeVarBool
  loc_BAEBCE: FFreeAd var_98 = "": var_9C = ""
  loc_BAEBD7: FFree1Var var_C0 = ""
  loc_BAEBDA: BranchF loc_BAED7D
  loc_BAEBDD: FLdRfVar var_8C
  loc_BAEBE0: FLdRfVar var_C0
  loc_BAEBE3: FLdRfVar var_B0
  loc_BAEBE6: LitVarStr var_AC, "IdCoti"
  loc_BAEBEB: PopAdLdVar
  loc_BAEBEC: FLdRfVar var_9C
  loc_BAEBEF: FLdRfVar var_98
  loc_BAEBF2: FLdPr Me
  loc_BAEBF5: MemLdRfVar from_stack_1.global_52
  loc_BAEBF8: NewIfNullPr clscotizacion
  loc_BAEBFB: from_stack_1v = clscotizacion.RsFrmGet()
  loc_BAEC00: FLdPr var_98
  loc_BAEC03:  = Me.Fields
  loc_BAEC08: FLdPr var_9C
  loc_BAEC0B: from_stack_2 = Me.Item(from_stack_1)
  loc_BAEC10: FLdPr var_B0
  loc_BAEC13:  = Me.Value
  loc_BAEC18: FLdRfVar var_C0
  loc_BAEC1B: CI4Var
  loc_BAEC1D: FLdPr Me
  loc_BAEC20: MemLdRfVar from_stack_1.global_52
  loc_BAEC23: NewIfNullPr clscotizacion
  loc_BAEC26: from_stack_2v = clscotizacion.ValidaModificarCotizacion(from_stack_1v)
  loc_BAEC2B: ILdRf var_8C
  loc_BAEC2E: FLdPr Me
  loc_BAEC31: MemStStrCopy
  loc_BAEC35: FFree1Str var_8C
  loc_BAEC38: FFreeAd var_98 = "": var_9C = ""
  loc_BAEC41: FFree1Var var_C0 = ""
  loc_BAEC44: FLdPr Me
  loc_BAEC47: MemLdStr global_68
  loc_BAEC4A: LitStr vbNullString
  loc_BAEC4D: NeStr
  loc_BAEC4F: BranchF loc_BAEC65
  loc_BAEC52: LitI4 0
  loc_BAEC57: FLdPr Me
  loc_BAEC5A: MemLdStr global_68
  loc_BAEC5D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BAEC62: Branch loc_BAED7A
  loc_BAEC65: LitI2_Byte 2
  loc_BAEC67: FLdPr Me
  loc_BAEC6A: MemStUI1
  loc_BAEC6E: ILdRf Me
  loc_BAEC71: CastAd
  loc_BAEC74: FStAdFunc var_98
  loc_BAEC77: FLdRfVar var_98
  loc_BAEC7A: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BAEC7F: FFree1Ad var_98
  loc_BAEC82: LitI4 0
  loc_BAEC87: LitI4 0
  loc_BAEC8C: FLdRfVar var_C4
  loc_BAEC8F: Redim
  loc_BAEC99: FLdPr Me
  loc_BAEC9C: VCallAd Control_ID_dgdABMS
  loc_BAEC9F: CVarAd
  loc_BAECA3: ParmAry1St
  loc_BAECA9: FLdRfVar var_C4
  loc_BAECAC: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BAECB1: FLdRfVar var_C4
  loc_BAECB4: Erase
  loc_BAECB5: ILdRf Me
  loc_BAECB8: CastAd
  loc_BAECBB: FStAdFunc var_98
  loc_BAECBE: FLdRfVar var_98
  loc_BAECC1: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_BAECC6: FFree1Ad var_98
  loc_BAECC9: LitI4 0
  loc_BAECCE: LitI4 4
  loc_BAECD3: FLdRfVar var_C4
  loc_BAECD6: Redim
  loc_BAECE0: FLdPr Me
  loc_BAECE3: VCallAd Control_ID_FechCotiMsk
  loc_BAECE6: CVarAd
  loc_BAECEA: ParmAry1St
  loc_BAECF0: FLdPr Me
  loc_BAECF3: VCallAd Control_ID_PlenCotiTxt
  loc_BAECF6: CVarAd
  loc_BAECFA: ParmAry1St
  loc_BAED00: FLdPr Me
  loc_BAED03: VCallAd Control_ID_MaofCotiTxt
  loc_BAED06: CVarAd
  loc_BAED0A: ParmAry1St
  loc_BAED10: FLdPr Me
  loc_BAED13: VCallAd Control_ID_ObseCotiTxt
  loc_BAED16: CVarAd
  loc_BAED1A: ParmAry1St
  loc_BAED20: FLdPr Me
  loc_BAED23: VCallAd Control_ID_AgregaItemCmd
  loc_BAED26: CVarAd
  loc_BAED2A: ParmAry1St
  loc_BAED30: FLdRfVar var_C4
  loc_BAED33: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BAED38: FLdRfVar var_C4
  loc_BAED3B: Erase
  loc_BAED3C: LitStr "Municipalidad de Guaymallén"
  loc_BAED3F: LitStr "Municipalidad de Guaymallén"
  loc_BAED42: EqStr
  loc_BAED44: BranchF loc_BAED7A
  loc_BAED47: LitI4 0
  loc_BAED4C: LitI4 0
  loc_BAED51: FLdRfVar var_C4
  loc_BAED54: Redim
  loc_BAED5E: FLdPr Me
  loc_BAED61: VCallAd Control_ID_FechCotiMsk
  loc_BAED64: CVarAd
  loc_BAED68: ParmAry1St
  loc_BAED6E: FLdRfVar var_C4
  loc_BAED71: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BAED76: FLdRfVar var_C4
  loc_BAED79: Erase
  loc_BAED7A: Branch loc_BAED8A
  loc_BAED7D: LitI4 0
  loc_BAED82: LitStr "Para modificar debe seleccionar una cotización, verifique..."
  loc_BAED85: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BAED8A: Branch loc_BAF8F6
  loc_BAED8D: ILdRf var_90
  loc_BAED90: LitStr "btnEliminar"
  loc_BAED93: EqStr
  loc_BAED95: BranchF loc_BAF0BE
  loc_BAED98: FLdRfVar var_94
  loc_BAED9B: FLdPr Me
  loc_BAED9E: MemLdRfVar from_stack_1.global_52
  loc_BAEDA1: NewIfNullPr clscotizacion
  loc_BAEDA4: from_stack_1 = clscotizacion.RecordCount
  loc_BAEDA9: ILdRf var_94
  loc_BAEDAC: LitI4 0
  loc_BAEDB1: GtI4
  loc_BAEDB2: BranchF loc_BAF0BB
  loc_BAEDB5: FLdRfVar var_C0
  loc_BAEDB8: FLdRfVar var_B0
  loc_BAEDBB: LitVarStr var_AC, "CucuPers"
  loc_BAEDC0: PopAdLdVar
  loc_BAEDC1: FLdRfVar var_9C
  loc_BAEDC4: FLdRfVar var_98
  loc_BAEDC7: FLdPr Me
  loc_BAEDCA: MemLdRfVar from_stack_1.global_52
  loc_BAEDCD: NewIfNullPr clscotizacion
  loc_BAEDD0: from_stack_1v = clscotizacion.RsFrmGet()
  loc_BAEDD5: FLdPr var_98
  loc_BAEDD8:  = Me.Fields
  loc_BAEDDD: FLdPr var_9C
  loc_BAEDE0: from_stack_2 = Me.Item(from_stack_1)
  loc_BAEDE5: FLdPr var_B0
  loc_BAEDE8:  = Me.Value
  loc_BAEDED: FLdRfVar var_C0
  loc_BAEDF0: LitVarStr var_E4, "0"
  loc_BAEDF5: HardType
  loc_BAEDF6: NeVarBool
  loc_BAEDF8: FFreeAd var_98 = "": var_9C = ""
  loc_BAEE01: FFree1Var var_C0 = ""
  loc_BAEE04: BranchF loc_BAF0AE
  loc_BAEE07: FLdRfVar var_C0
  loc_BAEE0A: FLdRfVar var_B0
  loc_BAEE0D: LitVarStr var_AC, "FeanCoti"
  loc_BAEE12: PopAdLdVar
  loc_BAEE13: FLdRfVar var_9C
  loc_BAEE16: FLdRfVar var_98
  loc_BAEE19: FLdPr Me
  loc_BAEE1C: MemLdRfVar from_stack_1.global_52
  loc_BAEE1F: NewIfNullPr clscotizacion
  loc_BAEE22: from_stack_1v = clscotizacion.RsFrmGet()
  loc_BAEE27: FLdPr var_98
  loc_BAEE2A:  = Me.Fields
  loc_BAEE2F: FLdPr var_9C
  loc_BAEE32: from_stack_2 = Me.Item(from_stack_1)
  loc_BAEE37: FLdPr var_B0
  loc_BAEE3A:  = Me.Value
  loc_BAEE3F: FLdRfVar var_C0
  loc_BAEE42: LitVarStr var_E4, vbNullString
  loc_BAEE47: HardType
  loc_BAEE48: EqVarBool
  loc_BAEE4A: FFreeAd var_98 = "": var_9C = ""
  loc_BAEE53: FFree1Var var_C0 = ""
  loc_BAEE56: BranchF loc_BAF099
  loc_BAEE59: FLdRfVar var_8C
  loc_BAEE5C: FLdRfVar var_C0
  loc_BAEE5F: FLdRfVar var_B0
  loc_BAEE62: LitVarStr var_AC, "IdCoti"
  loc_BAEE67: PopAdLdVar
  loc_BAEE68: FLdRfVar var_9C
  loc_BAEE6B: FLdRfVar var_98
  loc_BAEE6E: FLdPr Me
  loc_BAEE71: MemLdRfVar from_stack_1.global_52
  loc_BAEE74: NewIfNullPr clscotizacion
  loc_BAEE77: from_stack_1v = clscotizacion.RsFrmGet()
  loc_BAEE7C: FLdPr var_98
  loc_BAEE7F:  = Me.Fields
  loc_BAEE84: FLdPr var_9C
  loc_BAEE87: from_stack_2 = Me.Item(from_stack_1)
  loc_BAEE8C: FLdPr var_B0
  loc_BAEE8F:  = Me.Value
  loc_BAEE94: FLdRfVar var_C0
  loc_BAEE97: CI4Var
  loc_BAEE99: FLdPr Me
  loc_BAEE9C: MemLdRfVar from_stack_1.global_52
  loc_BAEE9F: NewIfNullPr clscotizacion
  loc_BAEEA2: from_stack_2v = clscotizacion.ValidaEliminarCotizacion(from_stack_1v)
  loc_BAEEA7: ILdRf var_8C
  loc_BAEEAA: FLdPr Me
  loc_BAEEAD: MemStStrCopy
  loc_BAEEB1: FFree1Str var_8C
  loc_BAEEB4: FFreeAd var_98 = "": var_9C = ""
  loc_BAEEBD: FFree1Var var_C0 = ""
  loc_BAEEC0: FLdPr Me
  loc_BAEEC3: VCallAd Control_ID_tlbABMS
  loc_BAEEC6: FStAdFunc var_E8
  loc_BAEEC9: LitNothing
  loc_BAEECB: CastAd
  loc_BAEECE: FStAdFunc var_B0
  loc_BAEED1: FLdRfVar var_B0
  loc_BAEED4: FLdZeroAd var_E8
  loc_BAEED7: FStAdFuncNoPop
  loc_BAEEDA: CastAd
  loc_BAEEDD: FStAdFunc var_9C
  loc_BAEEE0: FLdRfVar var_9C
  loc_BAEEE3: FLdPr Me
  loc_BAEEE6: MemLdRfVar from_stack_1.global_68
  loc_BAEEE9: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BAEEEE: FStI2 var_11A
  loc_BAEEF1: FFreeAd var_98 = "": var_9C = "": var_B0 = ""
  loc_BAEEFC: FLdI2 var_11A
  loc_BAEEFF: NotI4
  loc_BAEF00: BranchF loc_BAEF79
  loc_BAEF03: LitI2_Byte 0
  loc_BAEF05: PopTmpLdAd2 var_11E
  loc_BAEF08: LitI2_Byte &HFF
  loc_BAEF0A: PopTmpLdAd2 var_11C
  loc_BAEF0D: LitStr "¿Desea ELIMINAR la Cotización?"
  loc_BAEF10: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BAEF15: CI4UI1
  loc_BAEF16: LitI4 6
  loc_BAEF1B: EqI4
  loc_BAEF1C: BranchF loc_BAEF76
  loc_BAEF1F: FLdRfVar var_C0
  loc_BAEF22: FLdRfVar var_B0
  loc_BAEF25: LitVarStr var_AC, "IdCoti"
  loc_BAEF2A: PopAdLdVar
  loc_BAEF2B: FLdRfVar var_9C
  loc_BAEF2E: FLdRfVar var_98
  loc_BAEF31: FLdPr Me
  loc_BAEF34: MemLdRfVar from_stack_1.global_52
  loc_BAEF37: NewIfNullPr clscotizacion
  loc_BAEF3A: from_stack_1v = clscotizacion.RsFrmGet()
  loc_BAEF3F: FLdPr var_98
  loc_BAEF42:  = Me.Fields
  loc_BAEF47: FLdPr var_9C
  loc_BAEF4A: from_stack_2 = Me.Item(from_stack_1)
  loc_BAEF4F: FLdPr var_B0
  loc_BAEF52:  = Me.Value
  loc_BAEF57: FLdRfVar var_C0
  loc_BAEF5A: CI4Var
  loc_BAEF5C: FLdPr Me
  loc_BAEF5F: MemLdRfVar from_stack_1.global_52
  loc_BAEF62: NewIfNullPr clscotizacion
  loc_BAEF65: Call clscotizacion.EliminarCotizacion(from_stack_1v)
  loc_BAEF6A: FFreeAd var_98 = "": var_9C = ""
  loc_BAEF73: FFree1Var var_C0 = ""
  loc_BAEF76: Branch loc_BAF096
  loc_BAEF79: FLdRfVar var_8C
  loc_BAEF7C: FLdRfVar var_C0
  loc_BAEF7F: FLdRfVar var_B0
  loc_BAEF82: LitVarStr var_AC, "IdCoti"
  loc_BAEF87: PopAdLdVar
  loc_BAEF88: FLdRfVar var_9C
  loc_BAEF8B: FLdRfVar var_98
  loc_BAEF8E: FLdPr Me
  loc_BAEF91: MemLdRfVar from_stack_1.global_52
  loc_BAEF94: NewIfNullPr clscotizacion
  loc_BAEF97: from_stack_1v = clscotizacion.RsFrmGet()
  loc_BAEF9C: FLdPr var_98
  loc_BAEF9F:  = Me.Fields
  loc_BAEFA4: FLdPr var_9C
  loc_BAEFA7: from_stack_2 = Me.Item(from_stack_1)
  loc_BAEFAC: FLdPr var_B0
  loc_BAEFAF:  = Me.Value
  loc_BAEFB4: FLdRfVar var_C0
  loc_BAEFB7: CI4Var
  loc_BAEFB9: FLdPr Me
  loc_BAEFBC: MemLdRfVar from_stack_1.global_52
  loc_BAEFBF: NewIfNullPr clscotizacion
  loc_BAEFC2: from_stack_2v = clscotizacion.ValidaAnularCotizacion(from_stack_1v)
  loc_BAEFC7: ILdRf var_8C
  loc_BAEFCA: FLdPr Me
  loc_BAEFCD: MemStStrCopy
  loc_BAEFD1: FFree1Str var_8C
  loc_BAEFD4: FFreeAd var_98 = "": var_9C = ""
  loc_BAEFDD: FFree1Var var_C0 = ""
  loc_BAEFE0: FLdPr Me
  loc_BAEFE3: VCallAd Control_ID_tlbABMS
  loc_BAEFE6: FStAdFunc var_E8
  loc_BAEFE9: LitNothing
  loc_BAEFEB: CastAd
  loc_BAEFEE: FStAdFunc var_B0
  loc_BAEFF1: FLdRfVar var_B0
  loc_BAEFF4: FLdZeroAd var_E8
  loc_BAEFF7: FStAdFuncNoPop
  loc_BAEFFA: CastAd
  loc_BAEFFD: FStAdFunc var_9C
  loc_BAF000: FLdRfVar var_9C
  loc_BAF003: FLdPr Me
  loc_BAF006: MemLdRfVar from_stack_1.global_68
  loc_BAF009: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_BAF00E: FStI2 var_11A
  loc_BAF011: FFreeAd var_98 = "": var_9C = "": var_B0 = ""
  loc_BAF01C: FLdI2 var_11A
  loc_BAF01F: NotI4
  loc_BAF020: BranchF loc_BAF096
  loc_BAF023: LitI2_Byte 0
  loc_BAF025: PopTmpLdAd2 var_11E
  loc_BAF028: LitI2_Byte &HFF
  loc_BAF02A: PopTmpLdAd2 var_11C
  loc_BAF02D: LitStr "¿ANULA la Cotización?"
  loc_BAF030: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BAF035: CI4UI1
  loc_BAF036: LitI4 6
  loc_BAF03B: EqI4
  loc_BAF03C: BranchF loc_BAF096
  loc_BAF03F: FLdRfVar var_C0
  loc_BAF042: FLdRfVar var_B0
  loc_BAF045: LitVarStr var_AC, "IdCoti"
  loc_BAF04A: PopAdLdVar
  loc_BAF04B: FLdRfVar var_9C
  loc_BAF04E: FLdRfVar var_98
  loc_BAF051: FLdPr Me
  loc_BAF054: MemLdRfVar from_stack_1.global_52
  loc_BAF057: NewIfNullPr clscotizacion
  loc_BAF05A: from_stack_1v = clscotizacion.RsFrmGet()
  loc_BAF05F: FLdPr var_98
  loc_BAF062:  = Me.Fields
  loc_BAF067: FLdPr var_9C
  loc_BAF06A: from_stack_2 = Me.Item(from_stack_1)
  loc_BAF06F: FLdPr var_B0
  loc_BAF072:  = Me.Value
  loc_BAF077: FLdRfVar var_C0
  loc_BAF07A: CI4Var
  loc_BAF07C: FLdPr Me
  loc_BAF07F: MemLdRfVar from_stack_1.global_52
  loc_BAF082: NewIfNullPr clscotizacion
  loc_BAF085: Call clscotizacion.AnularCotizacion(from_stack_1v)
  loc_BAF08A: FFreeAd var_98 = "": var_9C = ""
  loc_BAF093: FFree1Var var_C0 = ""
  loc_BAF096: Branch loc_BAF0A6
  loc_BAF099: LitI4 0
  loc_BAF09E: LitStr "La Cotización está Anulada. Verifique..."
  loc_BAF0A1: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BAF0A6: Call cmdCancelar_Click()
  loc_BAF0AB: Branch loc_BAF0BB
  loc_BAF0AE: LitI4 0
  loc_BAF0B3: LitStr "Para modificar debe seleccionar una cotización, verifique..."
  loc_BAF0B6: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BAF0BB: Branch loc_BAF8F6
  loc_BAF0BE: ILdRf var_90
  loc_BAF0C1: LitStr "btnGuardar"
  loc_BAF0C4: EqStr
  loc_BAF0C6: BranchF loc_BAF7F2
  loc_BAF0C9: LitStr vbNullString
  loc_BAF0CC: FLdPr Me
  loc_BAF0CF: MemStStrCopy
  loc_BAF0D3: LitI2_Byte 0
  loc_BAF0D5: PopTmpLdAd2 var_11C
  loc_BAF0D8: from_stack_2v = FechCotiMsk_UnknownEvent_8(from_stack_1v)
  loc_BAF0DD: FLdPr Me
  loc_BAF0E0: MemLdStr global_68
  loc_BAF0E3: LitStr vbNullString
  loc_BAF0E6: NeStr
  loc_BAF0E8: BranchF loc_BAF0EC
  loc_BAF0EB: ExitProcHresult
  loc_BAF0EC: LitI2_Byte 0
  loc_BAF0EE: PopTmpLdAd2 var_11C
  loc_BAF0F1: Call CucuPersTxt_Validate(from_stack_1v)
  loc_BAF0F6: FLdPr Me
  loc_BAF0F9: MemLdStr global_68
  loc_BAF0FC: LitStr vbNullString
  loc_BAF0FF: NeStr
  loc_BAF101: BranchF loc_BAF105
  loc_BAF104: ExitProcHresult
  loc_BAF105: LitI2_Byte 0
  loc_BAF107: PopTmpLdAd2 var_11C
  loc_BAF10A: Call ItemNotaFlex_UnknownEvent_8()
  loc_BAF10F: FLdPr Me
  loc_BAF112: MemLdStr global_68
  loc_BAF115: LitStr vbNullString
  loc_BAF118: NeStr
  loc_BAF11A: BranchF loc_BAF11E
  loc_BAF11D: ExitProcHresult
  loc_BAF11E: FLdPr Me
  loc_BAF121: MemLdUI1 global_64
  loc_BAF125: FStUI1 var_120
  loc_BAF129: FLdUI1
  loc_BAF12D: LitI2_Byte 1
  loc_BAF12F: EqI2
  loc_BAF130: BranchF loc_BAF486
  loc_BAF133: LitI2_Byte 1
  loc_BAF135: FLdPr Me
  loc_BAF138: MemLdRfVar from_stack_1.global_60
  loc_BAF13B: FLdPr Me
  loc_BAF13E: VCallAd Control_ID_ItemNotaFlex
  loc_BAF141: FStAdFunc var_98
  loc_BAF144: FLdPr var_98
  loc_BAF147: LateIdLdVar var_C0 DispID_4 0
  loc_BAF14E: CI4Var
  loc_BAF150: LitI4 1
  loc_BAF155: SubI4
  loc_BAF156: CI2I4
  loc_BAF157: FFree1Ad var_98
  loc_BAF15A: FFree1Var var_C0 = ""
  loc_BAF15D: ForI2 var_124
  loc_BAF163: FLdPr Me
  loc_BAF166: MemLdI2 global_60
  loc_BAF169: CI4UI1
  loc_BAF16A: CVarI4
  loc_BAF16E: PopAdLdVar
  loc_BAF16F: LitVarI4
  loc_BAF177: PopAdLdVar
  loc_BAF178: FLdPr Me
  loc_BAF17B: VCallAd Control_ID_ItemNotaFlex
  loc_BAF17E: FStAdFunc var_98
  loc_BAF181: FLdPr var_98
  loc_BAF184: LateIdCallLdVar
  loc_BAF18E: CStrVarTmp
  loc_BAF18F: FStStrNoPop var_8C
  loc_BAF192: LitStr vbNullString
  loc_BAF195: EqStr
  loc_BAF197: FLdPr Me
  loc_BAF19A: MemLdI2 global_60
  loc_BAF19D: CI4UI1
  loc_BAF19E: CVarI4
  loc_BAF1A2: PopAdLdVar
  loc_BAF1A3: LitVarI4
  loc_BAF1AB: PopAdLdVar
  loc_BAF1AC: FLdPr Me
  loc_BAF1AF: VCallAd Control_ID_ItemNotaFlex
  loc_BAF1B2: FStAdFunc var_9C
  loc_BAF1B5: FLdPr var_9C
  loc_BAF1B8: LateIdCallLdVar
  loc_BAF1C2: CStrVarTmp
  loc_BAF1C3: FStStrNoPop var_188
  loc_BAF1C6: LitStr vbNullString
  loc_BAF1C9: EqStr
  loc_BAF1CB: OrI4
  loc_BAF1CC: FLdPr Me
  loc_BAF1CF: MemLdI2 global_60
  loc_BAF1D2: CI4UI1
  loc_BAF1D3: CVarI4
  loc_BAF1D7: PopAdLdVar
  loc_BAF1D8: LitVarI4
  loc_BAF1E0: PopAdLdVar
  loc_BAF1E1: FLdPr Me
  loc_BAF1E4: VCallAd Control_ID_ItemNotaFlex
  loc_BAF1E7: FStAdFunc var_B0
  loc_BAF1EA: FLdPr var_B0
  loc_BAF1ED: LateIdCallLdVar
  loc_BAF1F7: CStrVarTmp
  loc_BAF1F8: FStStrNoPop var_1CC
  loc_BAF1FB: LitStr vbNullString
  loc_BAF1FE: EqStr
  loc_BAF200: OrI4
  loc_BAF201: FLdPr Me
  loc_BAF204: MemLdI2 global_60
  loc_BAF207: CI4UI1
  loc_BAF208: CVarI4
  loc_BAF20C: PopAdLdVar
  loc_BAF20D: LitVarI4
  loc_BAF215: PopAdLdVar
  loc_BAF216: FLdPr Me
  loc_BAF219: VCallAd Control_ID_ItemNotaFlex
  loc_BAF21C: FStAdFunc var_E8
  loc_BAF21F: FLdPr var_E8
  loc_BAF222: LateIdCallLdVar
  loc_BAF22C: CStrVarTmp
  loc_BAF22D: FStStrNoPop var_210
  loc_BAF230: LitStr vbNullString
  loc_BAF233: EqStr
  loc_BAF235: OrI4
  loc_BAF236: FLdPr Me
  loc_BAF239: MemLdI2 global_60
  loc_BAF23C: CI4UI1
  loc_BAF23D: CVarI4
  loc_BAF241: PopAdLdVar
  loc_BAF242: LitVarI4
  loc_BAF24A: PopAdLdVar
  loc_BAF24B: FLdPr Me
  loc_BAF24E: VCallAd Control_ID_ItemNotaFlex
  loc_BAF251: FStAdFunc var_254
  loc_BAF254: FLdPr var_254
  loc_BAF257: LateIdCallLdVar
  loc_BAF261: CStrVarTmp
  loc_BAF262: FStStrNoPop var_258
  loc_BAF265: LitStr vbNullString
  loc_BAF268: EqStr
  loc_BAF26A: OrI4
  loc_BAF26B: FLdPr Me
  loc_BAF26E: MemLdI2 global_60
  loc_BAF271: CI4UI1
  loc_BAF272: CVarI4
  loc_BAF276: PopAdLdVar
  loc_BAF277: LitVarI4
  loc_BAF27F: PopAdLdVar
  loc_BAF280: FLdPr Me
  loc_BAF283: VCallAd Control_ID_ItemNotaFlex
  loc_BAF286: FStAdFunc var_29C
  loc_BAF289: FLdPr var_29C
  loc_BAF28C: LateIdCallLdVar
  loc_BAF296: CStrVarTmp
  loc_BAF297: FStStrNoPop var_2B0
  loc_BAF29A: LitStr vbNullString
  loc_BAF29D: EqStr
  loc_BAF29F: OrI4
  loc_BAF2A0: FLdPr Me
  loc_BAF2A3: MemLdI2 global_60
  loc_BAF2A6: CI4UI1
  loc_BAF2A7: CVarI4
  loc_BAF2AB: PopAdLdVar
  loc_BAF2AC: LitVarI4
  loc_BAF2B4: PopAdLdVar
  loc_BAF2B5: FLdPr Me
  loc_BAF2B8: VCallAd Control_ID_ItemNotaFlex
  loc_BAF2BB: FStAdFunc var_2F4
  loc_BAF2BE: FLdPr var_2F4
  loc_BAF2C1: LateIdCallLdVar
  loc_BAF2CB: CStrVarTmp
  loc_BAF2CC: FStStrNoPop var_308
  loc_BAF2CF: LitStr vbNullString
  loc_BAF2D2: EqStr
  loc_BAF2D4: OrI4
  loc_BAF2D5: FFreeStr var_8C = "": var_188 = "": var_1CC = "": var_210 = "": var_258 = "": var_2B0 = ""
  loc_BAF2E6: FFreeAd var_98 = "": var_9C = "": var_B0 = "": var_E8 = "": var_254 = "": var_29C = ""
  loc_BAF2F7: FFreeVar var_C0 = "": var_D4 = "": var_F8 = "": var_108 = "": var_118 = "": var_2AC = ""
  loc_BAF308: BranchF loc_BAF375
  loc_BAF30B: FLdPr Me
  loc_BAF30E: MemLdI2 global_60
  loc_BAF311: CI4UI1
  loc_BAF312: CVarI4
  loc_BAF316: PopAdLdVar
  loc_BAF317: LitVarI4
  loc_BAF31F: PopAdLdVar
  loc_BAF320: FLdPr Me
  loc_BAF323: VCallAd Control_ID_ItemNotaFlex
  loc_BAF326: FStAdFunc var_98
  loc_BAF329: FLdPr var_98
  loc_BAF32C: LateIdCallLdVar
  loc_BAF336: PopAd
  loc_BAF338: LitI4 0
  loc_BAF33D: LitStr "Verifique la información ingresada. Item: "
  loc_BAF340: FLdRfVar var_C0
  loc_BAF343: CStrVarTmp
  loc_BAF344: FStStrNoPop var_8C
  loc_BAF347: ConcatStr
  loc_BAF348: FStStrNoPop var_188
  loc_BAF34B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BAF350: FFreeStr var_8C = ""
  loc_BAF357: FFree1Ad var_98
  loc_BAF35A: FFree1Var var_C0 = ""
  loc_BAF35D: FLdPr Me
  loc_BAF360: VCallAd Control_ID_ItemNotaFlex
  loc_BAF363: FStAdFunc var_98
  loc_BAF366: FLdPr var_98
  loc_BAF369: LateIdCall
  loc_BAF371: FFree1Ad var_98
  loc_BAF374: ExitProcHresult
  loc_BAF375: FLdPr Me
  loc_BAF378: MemLdRfVar from_stack_1.global_60
  loc_BAF37B: NextI2 var_124, loc_BAF163
  loc_BAF380: FLdRfVar var_D4
  loc_BAF383: FLdRfVar var_B0
  loc_BAF386: LitVarStr var_AC, "CodiNope"
  loc_BAF38B: PopAdLdVar
  loc_BAF38C: FLdRfVar var_9C
  loc_BAF38F: FLdRfVar var_98
  loc_BAF392: FLdPr Me
  loc_BAF395: MemLdRfVar from_stack_1.global_52
  loc_BAF398: NewIfNullPr clscotizacion
  loc_BAF39B: from_stack_1v = clscotizacion.RsFrmGet()
  loc_BAF3A0: FLdPr var_98
  loc_BAF3A3:  = Me.Fields
  loc_BAF3A8: FLdPr var_9C
  loc_BAF3AB: from_stack_2 = Me.Item(from_stack_1)
  loc_BAF3B0: FLdPr var_B0
  loc_BAF3B3:  = Me.Value
  loc_BAF3B8: FLdRfVar var_1CC
  loc_BAF3BB: FLdPr Me
  loc_BAF3BE: VCallAd Control_ID_CucuPersTxt
  loc_BAF3C1: FStAdFunc var_2F4
  loc_BAF3C4: FLdPr var_2F4
  loc_BAF3C7:  = Me.Text
  loc_BAF3CC: FLdPr Me
  loc_BAF3CF: VCallAd Control_ID_FechCotiMsk
  loc_BAF3D2: FStAdFunc var_E8
  loc_BAF3D5: FLdPr var_E8
  loc_BAF3D8: LateIdLdVar var_C0 DispID_15 0
  loc_BAF3DF: PopAd
  loc_BAF3E1: FLdRfVar var_258
  loc_BAF3E4: FLdPr Me
  loc_BAF3E7: VCallAd Control_ID_PlenCotiTxt
  loc_BAF3EA: FStAdFunc var_30C
  loc_BAF3ED: FLdPr var_30C
  loc_BAF3F0:  = Me.Text
  loc_BAF3F5: FLdRfVar var_8C
  loc_BAF3F8: FLdPr Me
  loc_BAF3FB: VCallAd Control_ID_MaofCotiTxt
  loc_BAF3FE: FStAdFunc var_254
  loc_BAF401: FLdPr var_254
  loc_BAF404:  = Me.Text
  loc_BAF409: FLdRfVar var_188
  loc_BAF40C: FLdPr Me
  loc_BAF40F: VCallAd Control_ID_ObseCotiTxt
  loc_BAF412: FStAdFunc var_29C
  loc_BAF415: FLdPr var_29C
  loc_BAF418:  = Me.Text
  loc_BAF41D: FLdPr Me
  loc_BAF420: VCallAd Control_ID_ItemNotaFlex
  loc_BAF423: FStAdFunc var_314
  loc_BAF426: FLdRfVar var_11C
  loc_BAF429: FLdZeroAd var_314
  loc_BAF42C: FStAdFunc var_310
  loc_BAF42F: FLdRfVar var_310
  loc_BAF432: ILdRf var_188
  loc_BAF435: ILdRf var_8C
  loc_BAF438: ILdRf var_258
  loc_BAF43B: FLdRfVar var_C0
  loc_BAF43E: CStrVarTmp
  loc_BAF43F: FStStrNoPop var_210
  loc_BAF442: ILdRf var_1CC
  loc_BAF445: FLdRfVar var_D4
  loc_BAF448: CI4Var
  loc_BAF44A: FLdPr Me
  loc_BAF44D: MemLdRfVar from_stack_1.global_52
  loc_BAF450: NewIfNullPr clscotizacion
  loc_BAF453: from_stack_8v = clscotizacion.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v)
  loc_BAF458: FFreeStr var_1CC = "": var_210 = "": var_258 = "": var_8C = ""
  loc_BAF465: FFreeAd var_98 = "": var_9C = "": var_E8 = "": var_254 = "": var_29C = "": var_B0 = "": var_2F4 = "": var_30C = "": var_310 = ""
  loc_BAF47C: FFreeVar var_C0 = ""
  loc_BAF483: Branch loc_BAF7EA
  loc_BAF486: FLdUI1
  loc_BAF48A: LitI2_Byte 2
  loc_BAF48C: EqI2
  loc_BAF48D: BranchF loc_BAF7E0
  loc_BAF490: LitI2_Byte 1
  loc_BAF492: FLdPr Me
  loc_BAF495: MemLdRfVar from_stack_1.global_60
  loc_BAF498: FLdPr Me
  loc_BAF49B: VCallAd Control_ID_ItemNotaFlex
  loc_BAF49E: FStAdFunc var_98
  loc_BAF4A1: FLdPr var_98
  loc_BAF4A4: LateIdLdVar var_C0 DispID_4 0
  loc_BAF4AB: CI4Var
  loc_BAF4AD: LitI4 1
  loc_BAF4B2: SubI4
  loc_BAF4B3: CI2I4
  loc_BAF4B4: FFree1Ad var_98
  loc_BAF4B7: FFree1Var var_C0 = ""
  loc_BAF4BA: ForI2 var_318
  loc_BAF4C0: FLdPr Me
  loc_BAF4C3: MemLdI2 global_60
  loc_BAF4C6: CI4UI1
  loc_BAF4C7: CVarI4
  loc_BAF4CB: PopAdLdVar
  loc_BAF4CC: LitVarI4
  loc_BAF4D4: PopAdLdVar
  loc_BAF4D5: FLdPr Me
  loc_BAF4D8: VCallAd Control_ID_ItemNotaFlex
  loc_BAF4DB: FStAdFunc var_98
  loc_BAF4DE: FLdPr var_98
  loc_BAF4E1: LateIdCallLdVar
  loc_BAF4EB: CStrVarTmp
  loc_BAF4EC: FStStrNoPop var_8C
  loc_BAF4EF: LitStr vbNullString
  loc_BAF4F2: EqStr
  loc_BAF4F4: FLdPr Me
  loc_BAF4F7: MemLdI2 global_60
  loc_BAF4FA: CI4UI1
  loc_BAF4FB: CVarI4
  loc_BAF4FF: PopAdLdVar
  loc_BAF500: LitVarI4
  loc_BAF508: PopAdLdVar
  loc_BAF509: FLdPr Me
  loc_BAF50C: VCallAd Control_ID_ItemNotaFlex
  loc_BAF50F: FStAdFunc var_9C
  loc_BAF512: FLdPr var_9C
  loc_BAF515: LateIdCallLdVar
  loc_BAF51F: CStrVarTmp
  loc_BAF520: FStStrNoPop var_188
  loc_BAF523: LitStr vbNullString
  loc_BAF526: EqStr
  loc_BAF528: OrI4
  loc_BAF529: FLdPr Me
  loc_BAF52C: MemLdI2 global_60
  loc_BAF52F: CI4UI1
  loc_BAF530: CVarI4
  loc_BAF534: PopAdLdVar
  loc_BAF535: LitVarI4
  loc_BAF53D: PopAdLdVar
  loc_BAF53E: FLdPr Me
  loc_BAF541: VCallAd Control_ID_ItemNotaFlex
  loc_BAF544: FStAdFunc var_B0
  loc_BAF547: FLdPr var_B0
  loc_BAF54A: LateIdCallLdVar
  loc_BAF554: CStrVarTmp
  loc_BAF555: FStStrNoPop var_1CC
  loc_BAF558: LitStr vbNullString
  loc_BAF55B: EqStr
  loc_BAF55D: OrI4
  loc_BAF55E: FLdPr Me
  loc_BAF561: MemLdI2 global_60
  loc_BAF564: CI4UI1
  loc_BAF565: CVarI4
  loc_BAF569: PopAdLdVar
  loc_BAF56A: LitVarI4
  loc_BAF572: PopAdLdVar
  loc_BAF573: FLdPr Me
  loc_BAF576: VCallAd Control_ID_ItemNotaFlex
  loc_BAF579: FStAdFunc var_E8
  loc_BAF57C: FLdPr var_E8
  loc_BAF57F: LateIdCallLdVar
  loc_BAF589: CStrVarTmp
  loc_BAF58A: FStStrNoPop var_210
  loc_BAF58D: LitStr vbNullString
  loc_BAF590: EqStr
  loc_BAF592: OrI4
  loc_BAF593: FLdPr Me
  loc_BAF596: MemLdI2 global_60
  loc_BAF599: CI4UI1
  loc_BAF59A: CVarI4
  loc_BAF59E: PopAdLdVar
  loc_BAF59F: LitVarI4
  loc_BAF5A7: PopAdLdVar
  loc_BAF5A8: FLdPr Me
  loc_BAF5AB: VCallAd Control_ID_ItemNotaFlex
  loc_BAF5AE: FStAdFunc var_254
  loc_BAF5B1: FLdPr var_254
  loc_BAF5B4: LateIdCallLdVar
  loc_BAF5BE: CStrVarTmp
  loc_BAF5BF: FStStrNoPop var_258
  loc_BAF5C2: LitStr vbNullString
  loc_BAF5C5: EqStr
  loc_BAF5C7: OrI4
  loc_BAF5C8: FFreeStr var_8C = "": var_188 = "": var_1CC = "": var_210 = ""
  loc_BAF5D5: FFreeAd var_98 = "": var_9C = "": var_B0 = "": var_E8 = ""
  loc_BAF5E2: FFreeVar var_C0 = "": var_D4 = "": var_F8 = "": var_108 = ""
  loc_BAF5EF: BranchF loc_BAF65C
  loc_BAF5F2: FLdPr Me
  loc_BAF5F5: MemLdI2 global_60
  loc_BAF5F8: CI4UI1
  loc_BAF5F9: CVarI4
  loc_BAF5FD: PopAdLdVar
  loc_BAF5FE: LitVarI4
  loc_BAF606: PopAdLdVar
  loc_BAF607: FLdPr Me
  loc_BAF60A: VCallAd Control_ID_ItemNotaFlex
  loc_BAF60D: FStAdFunc var_98
  loc_BAF610: FLdPr var_98
  loc_BAF613: LateIdCallLdVar
  loc_BAF61D: PopAd
  loc_BAF61F: LitI4 0
  loc_BAF624: LitStr "Verifique la información ingresada. Item: "
  loc_BAF627: FLdRfVar var_C0
  loc_BAF62A: CStrVarTmp
  loc_BAF62B: FStStrNoPop var_8C
  loc_BAF62E: ConcatStr
  loc_BAF62F: FStStrNoPop var_188
  loc_BAF632: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BAF637: FFreeStr var_8C = ""
  loc_BAF63E: FFree1Ad var_98
  loc_BAF641: FFree1Var var_C0 = ""
  loc_BAF644: FLdPr Me
  loc_BAF647: VCallAd Control_ID_ItemNotaFlex
  loc_BAF64A: FStAdFunc var_98
  loc_BAF64D: FLdPr var_98
  loc_BAF650: LateIdCall
  loc_BAF658: FFree1Ad var_98
  loc_BAF65B: ExitProcHresult
  loc_BAF65C: FLdPr Me
  loc_BAF65F: MemLdRfVar from_stack_1.global_60
  loc_BAF662: NextI2 var_318, loc_BAF4C0
  loc_BAF667: FLdRfVar var_D4
  loc_BAF66A: FLdRfVar var_B0
  loc_BAF66D: LitVarStr var_AC, "IdCoti"
  loc_BAF672: PopAdLdVar
  loc_BAF673: FLdRfVar var_9C
  loc_BAF676: FLdRfVar var_98
  loc_BAF679: FLdPr Me
  loc_BAF67C: MemLdRfVar from_stack_1.global_52
  loc_BAF67F: NewIfNullPr clscotizacion
  loc_BAF682: from_stack_1v = clscotizacion.RsFrmGet()
  loc_BAF687: FLdPr var_98
  loc_BAF68A:  = Me.Fields
  loc_BAF68F: FLdPr var_9C
  loc_BAF692: from_stack_2 = Me.Item(from_stack_1)
  loc_BAF697: FLdPr var_B0
  loc_BAF69A:  = Me.Value
  loc_BAF69F: FLdRfVar var_F8
  loc_BAF6A2: FLdRfVar var_29C
  loc_BAF6A5: LitVarStr var_E4, "CodiNope"
  loc_BAF6AA: PopAdLdVar
  loc_BAF6AB: FLdRfVar var_254
  loc_BAF6AE: FLdRfVar var_E8
  loc_BAF6B1: FLdPr Me
  loc_BAF6B4: MemLdRfVar from_stack_1.global_52
  loc_BAF6B7: NewIfNullPr clscotizacion
  loc_BAF6BA: from_stack_1v = clscotizacion.RsFrmGet()
  loc_BAF6BF: FLdPr var_E8
  loc_BAF6C2:  = Me.Fields
  loc_BAF6C7: FLdPr var_254
  loc_BAF6CA: from_stack_2 = Me.Item(from_stack_1)
  loc_BAF6CF: FLdPr var_29C
  loc_BAF6D2:  = Me.Value
  loc_BAF6D7: FLdRfVar var_108
  loc_BAF6DA: FLdRfVar var_310
  loc_BAF6DD: LitVarStr var_134, "CucuPers"
  loc_BAF6E2: PopAdLdVar
  loc_BAF6E3: FLdRfVar var_30C
  loc_BAF6E6: FLdRfVar var_2F4
  loc_BAF6E9: FLdPr Me
  loc_BAF6EC: MemLdRfVar from_stack_1.global_52
  loc_BAF6EF: NewIfNullPr clscotizacion
  loc_BAF6F2: from_stack_1v = clscotizacion.RsFrmGet()
  loc_BAF6F7: FLdPr var_2F4
  loc_BAF6FA:  = Me.Fields
  loc_BAF6FF: FLdPr var_30C
  loc_BAF702: from_stack_2 = Me.Item(from_stack_1)
  loc_BAF707: FLdPr var_310
  loc_BAF70A:  = Me.Value
  loc_BAF70F: FLdPr Me
  loc_BAF712: VCallAd Control_ID_FechCotiMsk
  loc_BAF715: FStAdFunc var_314
  loc_BAF718: FLdPr var_314
  loc_BAF71B: LateIdLdVar var_C0 DispID_15 0
  loc_BAF722: PopAd
  loc_BAF724: FLdRfVar var_8C
  loc_BAF727: FLdPr Me
  loc_BAF72A: VCallAd Control_ID_PlenCotiTxt
  loc_BAF72D: FStAdFunc var_31C
  loc_BAF730: FLdPr var_31C
  loc_BAF733:  = Me.Text
  loc_BAF738: FLdRfVar var_188
  loc_BAF73B: FLdPr Me
  loc_BAF73E: VCallAd Control_ID_MaofCotiTxt
  loc_BAF741: FStAdFunc var_320
  loc_BAF744: FLdPr var_320
  loc_BAF747:  = Me.Text
  loc_BAF74C: FLdRfVar var_1CC
  loc_BAF74F: FLdPr Me
  loc_BAF752: VCallAd Control_ID_ObseCotiTxt
  loc_BAF755: FStAdFunc var_324
  loc_BAF758: FLdPr var_324
  loc_BAF75B:  = Me.Text
  loc_BAF760: FLdPr Me
  loc_BAF763: VCallAd Control_ID_ItemNotaFlex
  loc_BAF766: FStAdFunc var_32C
  loc_BAF769: FLdRfVar var_11C
  loc_BAF76C: FLdZeroAd var_32C
  loc_BAF76F: FStAdFunc var_328
  loc_BAF772: FLdRfVar var_328
  loc_BAF775: ILdRf var_1CC
  loc_BAF778: ILdRf var_188
  loc_BAF77B: ILdRf var_8C
  loc_BAF77E: FLdRfVar var_C0
  loc_BAF781: CStrVarTmp
  loc_BAF782: FStStrNoPop var_258
  loc_BAF785: FLdRfVar var_108
  loc_BAF788: CStrVarTmp
  loc_BAF789: FStStrNoPop var_210
  loc_BAF78C: FLdRfVar var_F8
  loc_BAF78F: CI4Var
  loc_BAF791: FLdRfVar var_D4
  loc_BAF794: CI4Var
  loc_BAF796: FLdPr Me
  loc_BAF799: MemLdRfVar from_stack_1.global_52
  loc_BAF79C: NewIfNullPr clscotizacion
  loc_BAF79F: from_stack_9v = clscotizacion.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_BAF7A4: FFreeStr var_210 = "": var_258 = "": var_8C = "": var_188 = ""
  loc_BAF7B1: FFreeAd var_98 = "": var_9C = "": var_E8 = "": var_254 = "": var_2F4 = "": var_30C = "": var_314 = "": var_31C = "": var_320 = "": var_324 = "": var_B0 = "": var_29C = "": var_310 = "": var_328 = ""
  loc_BAF7D2: FFreeVar var_C0 = "": var_D4 = "": var_F8 = ""
  loc_BAF7DD: Branch loc_BAF7EA
  loc_BAF7E0: FLdUI1
  loc_BAF7E4: LitI2_Byte 3
  loc_BAF7E6: EqI2
  loc_BAF7E7: BranchF loc_BAF7EA
  loc_BAF7EA: Call cmdCancelar_Click()
  loc_BAF7EF: Branch loc_BAF8F6
  loc_BAF7F2: ILdRf var_90
  loc_BAF7F5: LitStr "btnCancelar"
  loc_BAF7F8: EqStr
  loc_BAF7FA: BranchF loc_BAF805
  loc_BAF7FD: Call cmdCancelar_Click()
  loc_BAF802: Branch loc_BAF8F6
  loc_BAF805: ILdRf var_90
  loc_BAF808: LitStr "btnPrimero"
  loc_BAF80B: EqStr
  loc_BAF80D: BranchF loc_BAF821
  loc_BAF810: FLdPr Me
  loc_BAF813: MemLdRfVar from_stack_1.global_52
  loc_BAF816: NewIfNullPr clscotizacion
  loc_BAF819: Call clscotizacion.MoveFirst()
  loc_BAF81E: Branch loc_BAF8F6
  loc_BAF821: ILdRf var_90
  loc_BAF824: LitStr "btnAnterior"
  loc_BAF827: EqStr
  loc_BAF829: BranchF loc_BAF83D
  loc_BAF82C: FLdPr Me
  loc_BAF82F: MemLdRfVar from_stack_1.global_52
  loc_BAF832: NewIfNullPr clscotizacion
  loc_BAF835: Call clscotizacion.MovePrevious()
  loc_BAF83A: Branch loc_BAF8F6
  loc_BAF83D: ILdRf var_90
  loc_BAF840: LitStr "btnSiguiente"
  loc_BAF843: EqStr
  loc_BAF845: BranchF loc_BAF859
  loc_BAF848: FLdPr Me
  loc_BAF84B: MemLdRfVar from_stack_1.global_52
  loc_BAF84E: NewIfNullPr clscotizacion
  loc_BAF851: Call clscotizacion.MoveNext()
  loc_BAF856: Branch loc_BAF8F6
  loc_BAF859: ILdRf var_90
  loc_BAF85C: LitStr "btnUltimo"
  loc_BAF85F: EqStr
  loc_BAF861: BranchF loc_BAF875
  loc_BAF864: FLdPr Me
  loc_BAF867: MemLdRfVar from_stack_1.global_52
  loc_BAF86A: NewIfNullPr clscotizacion
  loc_BAF86D: Call clscotizacion.MoveLast()
  loc_BAF872: Branch loc_BAF8F6
  loc_BAF875: ILdRf var_90
  loc_BAF878: LitStr "btnFiltrar"
  loc_BAF87B: EqStr
  loc_BAF87D: BranchF loc_BAF883
  loc_BAF880: Branch loc_BAF8F6
  loc_BAF883: ILdRf var_90
  loc_BAF886: LitStr "btnBuscar"
  loc_BAF889: EqStr
  loc_BAF88B: BranchF loc_BAF891
  loc_BAF88E: Branch loc_BAF8F6
  loc_BAF891: ILdRf var_90
  loc_BAF894: LitStr "btnImprimir"
  loc_BAF897: EqStr
  loc_BAF899: BranchF loc_BAF89F
  loc_BAF89C: Branch loc_BAF8F6
  loc_BAF89F: ILdRf var_90
  loc_BAF8A2: LitStr "btnAyuda"
  loc_BAF8A5: EqStr
  loc_BAF8A7: BranchF loc_BAF8D6
  loc_BAF8AA: LitVar_Missing var_108
  loc_BAF8AD: LitVar_Missing var_F8
  loc_BAF8B0: LitVar_Missing var_D4
  loc_BAF8B3: LitI4 0
  loc_BAF8B8: LitVarStr var_AC, "Opcion no disponible en esta version."
  loc_BAF8BD: FStVarCopyObj var_C0
  loc_BAF8C0: FLdRfVar var_C0
  loc_BAF8C3: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BAF8C8: FFreeVar var_C0 = "": var_D4 = "": var_F8 = ""
  loc_BAF8D3: Branch loc_BAF8F6
  loc_BAF8D6: ILdRf var_90
  loc_BAF8D9: LitStr "btnSalir"
  loc_BAF8DC: EqStr
  loc_BAF8DE: BranchF loc_BAF8F6
  loc_BAF8E1: ILdRf Me
  loc_BAF8E4: FStAdNoPop
  loc_BAF8E8: ImpAdLdRf MemVar_C44F9C
  loc_BAF8EB: NewIfNullPr Me
  loc_BAF8EE: Me.Global.Unload from_stack_1
  loc_BAF8F3: FFree1Ad var_98
  loc_BAF8F6: ExitProcHresult
End Sub

Private Function Proc_108_31_A1F868() 'A1F868
  'Data Table: 4A77A4
  loc_A1F6B0: FLdPr Me
  loc_A1F6B3: VCallAd Control_ID_ItemNotaFlex
  loc_A1F6B6: FStAdFunc var_88
  loc_A1F6B9: FLdPr var_88
  loc_A1F6BC: LateIdCall
  loc_A1F6C4: LitVarI4
  loc_A1F6CC: PopAdLdVar
  loc_A1F6CD: FLdPr var_88
  loc_A1F6D0: LateIdSt
  loc_A1F6D5: LitVarI4
  loc_A1F6DD: PopAdLdVar
  loc_A1F6DE: LitVarI4
  loc_A1F6E6: PopAdLdVar
  loc_A1F6E7: LitVarStr var_D8, "Item"
  loc_A1F6EC: PopAdLdVar
  loc_A1F6ED: FLdPr var_88
  loc_A1F6F0: LateIdCallSt
  loc_A1F6F8: LitVarI4
  loc_A1F700: PopAdLdVar
  loc_A1F701: LitVarI4
  loc_A1F709: PopAdLdVar
  loc_A1F70A: LitVarStr var_D8, "Alte"
  loc_A1F70F: PopAdLdVar
  loc_A1F710: FLdPr var_88
  loc_A1F713: LateIdCallSt
  loc_A1F71B: LitVarI4
  loc_A1F723: PopAdLdVar
  loc_A1F724: LitVarI4
  loc_A1F72C: PopAdLdVar
  loc_A1F72D: LitVarStr var_D8, "Insumo"
  loc_A1F732: PopAdLdVar
  loc_A1F733: FLdPr var_88
  loc_A1F736: LateIdCallSt
  loc_A1F73E: LitVarI4
  loc_A1F746: PopAdLdVar
  loc_A1F747: LitVarI4
  loc_A1F74F: PopAdLdVar
  loc_A1F750: LitVarStr var_D8, "Detalle del Insumo"
  loc_A1F755: PopAdLdVar
  loc_A1F756: FLdPr var_88
  loc_A1F759: LateIdCallSt
  loc_A1F761: LitVarI4
  loc_A1F769: PopAdLdVar
  loc_A1F76A: LitVarI4
  loc_A1F772: PopAdLdVar
  loc_A1F773: LitVarStr var_D8, "Detalle AMPLIADO del Insumo"
  loc_A1F778: PopAdLdVar
  loc_A1F779: FLdPr var_88
  loc_A1F77C: LateIdCallSt
  loc_A1F784: LitVarI4
  loc_A1F78C: PopAdLdVar
  loc_A1F78D: LitVarI4
  loc_A1F795: PopAdLdVar
  loc_A1F796: LitVarStr var_D8, "Cantidad"
  loc_A1F79B: PopAdLdVar
  loc_A1F79C: FLdPr var_88
  loc_A1F79F: LateIdCallSt
  loc_A1F7A7: LitVarI4
  loc_A1F7AF: PopAdLdVar
  loc_A1F7B0: LitVarI4
  loc_A1F7B8: PopAdLdVar
  loc_A1F7B9: LitVarStr var_D8, "Pr. Unitario"
  loc_A1F7BE: PopAdLdVar
  loc_A1F7BF: FLdPr var_88
  loc_A1F7C2: LateIdCallSt
  loc_A1F7CA: LitVarI4
  loc_A1F7D2: PopAdLdVar
  loc_A1F7D3: LitVarI4
  loc_A1F7DB: PopAdLdVar
  loc_A1F7DC: LitVarStr var_D8, "Total"
  loc_A1F7E1: PopAdLdVar
  loc_A1F7E2: FLdPr var_88
  loc_A1F7E5: LateIdCallSt
  loc_A1F7ED: LitVarI4
  loc_A1F7F5: PopAdLdVar
  loc_A1F7F6: LitVarI4
  loc_A1F7FE: PopAdLdVar
  loc_A1F7FF: LitVarStr var_D8, "Sald"
  loc_A1F804: PopAdLdVar
  loc_A1F805: FLdPr var_88
  loc_A1F808: LateIdCallSt
  loc_A1F810: LitVarI4
  loc_A1F818: PopAdLdVar
  loc_A1F819: LitVarI4
  loc_A1F821: PopAdLdVar
  loc_A1F822: LitVarStr var_D8, "Cara"
  loc_A1F827: PopAdLdVar
  loc_A1F828: FLdPr var_88
  loc_A1F82B: LateIdCallSt
  loc_A1F833: LitVarI4
  loc_A1F83B: PopAdLdVar
  loc_A1F83C: LitVarI4
  loc_A1F844: PopAdLdVar
  loc_A1F845: LitVarStr var_D8, "Marca"
  loc_A1F84A: PopAdLdVar
  loc_A1F84B: FLdPr var_88
  loc_A1F84E: LateIdCallSt
  loc_A1F856: FLdPr var_88
  loc_A1F859: LateIdCall
  loc_A1F861: LitNothing
  loc_A1F863: FStAd var_88 
  loc_A1F867: ExitProcHresult
End Function

Private Function Proc_108_32_AE7DB0() 'AE7DB0
  'Data Table: 4A77A4
  loc_AE77B0: from_stack_1v = Proc_108_31_A1F868()
  loc_AE77B5: LitStr "Municipalidad de Guaymallén"
  loc_AE77B8: LitStr "Municipalidad de Guaymallén"
  loc_AE77BB: EqStr
  loc_AE77BD: BranchF loc_AE78AF
  loc_AE77C0: LitStr "SELECT itemnota.CodiItno, itemnota.CodiInsu, insumo.DetaInsu, itemnota.DetaItno, itemnota.CantItno, '' ImunItno, itemnota.CaraItno"
  loc_AE77C3: LitStr ", '' TotalItem"
  loc_AE77C6: ConcatStr
  loc_AE77C7: FStStrNoPop var_88
  loc_AE77CA: LitStr " FROM itemnota "
  loc_AE77CD: ConcatStr
  loc_AE77CE: FStStrNoPop var_8C
  loc_AE77D1: LitStr " INNER JOIN infogov.insumo ON insumo.CodiInsu = itemnota.CodiInsu"
  loc_AE77D4: ConcatStr
  loc_AE77D5: FStStrNoPop var_90
  loc_AE77D8: LitStr " WHERE PeriInfo = "
  loc_AE77DB: ConcatStr
  loc_AE77DC: CVarStr var_CC
  loc_AE77DF: FLdRfVar var_BC
  loc_AE77E2: FLdRfVar var_AC
  loc_AE77E5: LitVarStr var_A8, "PeriInfo"
  loc_AE77EA: PopAdLdVar
  loc_AE77EB: FLdRfVar var_98
  loc_AE77EE: FLdRfVar var_94
  loc_AE77F1: FLdPr Me
  loc_AE77F4: MemLdRfVar from_stack_1.global_52
  loc_AE77F7: NewIfNullPr clscotizacion
  loc_AE77FA: from_stack_1v = clscotizacion.RsFrmGet()
  loc_AE77FF: FLdPr var_94
  loc_AE7802:  = Me.Fields
  loc_AE7807: FLdPr var_98
  loc_AE780A: from_stack_2 = Me.Item(from_stack_1)
  loc_AE780F: FLdPr var_AC
  loc_AE7812:  = Me.Value
  loc_AE7817: FLdRfVar var_BC
  loc_AE781A: ConcatVar var_DC
  loc_AE781E: LitVarStr var_EC, " AND CodiNope = "
  loc_AE7823: ConcatVar var_FC
  loc_AE7827: FLdRfVar var_128
  loc_AE782A: FLdRfVar var_118
  loc_AE782D: LitVarStr var_114, "CodiNope"
  loc_AE7832: PopAdLdVar
  loc_AE7833: FLdRfVar var_104
  loc_AE7836: FLdRfVar var_100
  loc_AE7839: FLdPr Me
  loc_AE783C: MemLdRfVar from_stack_1.global_52
  loc_AE783F: NewIfNullPr clscotizacion
  loc_AE7842: from_stack_1v = clscotizacion.RsFrmGet()
  loc_AE7847: FLdPr var_100
  loc_AE784A:  = Me.Fields
  loc_AE784F: FLdPr var_104
  loc_AE7852: from_stack_2 = Me.Item(from_stack_1)
  loc_AE7857: FLdPr var_118
  loc_AE785A:  = Me.Value
  loc_AE785F: FLdRfVar var_128
  loc_AE7862: ConcatVar var_138
  loc_AE7866: LitVarStr var_148, " ORDER BY PeriInfo, CodiNope;"
  loc_AE786B: ConcatVar var_158
  loc_AE786F: CStrVarVal var_15C
  loc_AE7873: FLdPr Me
  loc_AE7876: MemLdRfVar from_stack_1.global_56
  loc_AE7879: NewIfNullPr clsbase
  loc_AE787C: Call clsbase.RedefineRS(from_stack_1v)
  loc_AE7881: FFreeStr var_88 = "": var_8C = "": var_90 = ""
  loc_AE788C: FFreeAd var_94 = "": var_98 = "": var_AC = "": var_100 = "": var_104 = ""
  loc_AE789B: FFreeVar var_CC = "": var_BC = "": var_DC = "": var_FC = "": var_128 = "": var_138 = ""
  loc_AE78AC: Branch loc_AE799B
  loc_AE78AF: LitStr "SELECT itemnota.CodiItno, itemnota.CodiInsu, insumo.DetaInsu, itemnota.DetaItno, itemnota.CantItno, itemnota.ImunItno, itemnota.CaraItno"
  loc_AE78B2: LitStr ", Round(CantItno*ImunItno,2) TotalItem"
  loc_AE78B5: ConcatStr
  loc_AE78B6: FStStrNoPop var_88
  loc_AE78B9: LitStr " FROM itemnota "
  loc_AE78BC: ConcatStr
  loc_AE78BD: FStStrNoPop var_8C
  loc_AE78C0: LitStr " INNER JOIN infogov.insumo ON insumo.CodiInsu = itemnota.CodiInsu"
  loc_AE78C3: ConcatStr
  loc_AE78C4: FStStrNoPop var_90
  loc_AE78C7: LitStr " WHERE PeriInfo = "
  loc_AE78CA: ConcatStr
  loc_AE78CB: CVarStr var_CC
  loc_AE78CE: FLdRfVar var_BC
  loc_AE78D1: FLdRfVar var_AC
  loc_AE78D4: LitVarStr var_A8, "PeriInfo"
  loc_AE78D9: PopAdLdVar
  loc_AE78DA: FLdRfVar var_98
  loc_AE78DD: FLdRfVar var_94
  loc_AE78E0: FLdPr Me
  loc_AE78E3: MemLdRfVar from_stack_1.global_52
  loc_AE78E6: NewIfNullPr clscotizacion
  loc_AE78E9: from_stack_1v = clscotizacion.RsFrmGet()
  loc_AE78EE: FLdPr var_94
  loc_AE78F1:  = Me.Fields
  loc_AE78F6: FLdPr var_98
  loc_AE78F9: from_stack_2 = Me.Item(from_stack_1)
  loc_AE78FE: FLdPr var_AC
  loc_AE7901:  = Me.Value
  loc_AE7906: FLdRfVar var_BC
  loc_AE7909: ConcatVar var_DC
  loc_AE790D: LitVarStr var_EC, " AND CodiNope = "
  loc_AE7912: ConcatVar var_FC
  loc_AE7916: FLdRfVar var_128
  loc_AE7919: FLdRfVar var_118
  loc_AE791C: LitVarStr var_114, "CodiNope"
  loc_AE7921: PopAdLdVar
  loc_AE7922: FLdRfVar var_104
  loc_AE7925: FLdRfVar var_100
  loc_AE7928: FLdPr Me
  loc_AE792B: MemLdRfVar from_stack_1.global_52
  loc_AE792E: NewIfNullPr clscotizacion
  loc_AE7931: from_stack_1v = clscotizacion.RsFrmGet()
  loc_AE7936: FLdPr var_100
  loc_AE7939:  = Me.Fields
  loc_AE793E: FLdPr var_104
  loc_AE7941: from_stack_2 = Me.Item(from_stack_1)
  loc_AE7946: FLdPr var_118
  loc_AE7949:  = Me.Value
  loc_AE794E: FLdRfVar var_128
  loc_AE7951: ConcatVar var_138
  loc_AE7955: LitVarStr var_148, " ORDER BY PeriInfo, CodiNope;"
  loc_AE795A: ConcatVar var_158
  loc_AE795E: CStrVarVal var_15C
  loc_AE7962: FLdPr Me
  loc_AE7965: MemLdRfVar from_stack_1.global_56
  loc_AE7968: NewIfNullPr clsbase
  loc_AE796B: Call clsbase.RedefineRS(from_stack_1v)
  loc_AE7970: FFreeStr var_88 = "": var_8C = "": var_90 = ""
  loc_AE797B: FFreeAd var_94 = "": var_98 = "": var_AC = "": var_100 = "": var_104 = ""
  loc_AE798A: FFreeVar var_CC = "": var_BC = "": var_DC = "": var_FC = "": var_128 = "": var_138 = ""
  loc_AE799B: FLdRfVar var_160
  loc_AE799E: FLdPr Me
  loc_AE79A1: MemLdRfVar from_stack_1.global_56
  loc_AE79A4: NewIfNullPr clsbase
  loc_AE79A7: from_stack_1 = clsbase.RecordCount
  loc_AE79AC: ILdRf var_160
  loc_AE79AF: LitI4 0
  loc_AE79B4: GtI4
  loc_AE79B5: BranchF loc_AE7DAD
  loc_AE79B8: FLdPr Me
  loc_AE79BB: MemLdRfVar from_stack_1.global_56
  loc_AE79BE: NewIfNullPr clsbase
  loc_AE79C1: Call clsbase.MoveFirst()
  loc_AE79C6: FLdRfVar var_162
  loc_AE79C9: FLdPr Me
  loc_AE79CC: MemLdRfVar from_stack_1.global_56
  loc_AE79CF: NewIfNullPr clsbase
  loc_AE79D2: from_stack_1 = clsbase.EOF
  loc_AE79D7: FLdI2 var_162
  loc_AE79DA: NotI4
  loc_AE79DB: BranchF loc_AE7DAD
  loc_AE79DE: FLdRfVar var_258
  loc_AE79E1: LitVarStr var_254, "CantItno"
  loc_AE79E6: PopAdLdVar
  loc_AE79E7: FLdRfVar var_244
  loc_AE79EA: FLdRfVar var_240
  loc_AE79ED: FLdPr Me
  loc_AE79F0: MemLdRfVar from_stack_1.global_56
  loc_AE79F3: NewIfNullPr clsbase
  loc_AE79F6: from_stack_1v = clsbase.RsFrmGet()
  loc_AE79FB: FLdPr var_240
  loc_AE79FE:  = Me.Fields
  loc_AE7A03: FLdPr var_244
  loc_AE7A06: from_stack_2 = Me.Item(from_stack_1)
  loc_AE7A0B: FLdRfVar var_2E4
  loc_AE7A0E: LitVarStr var_2E0, "ImunItno"
  loc_AE7A13: PopAdLdVar
  loc_AE7A14: FLdRfVar var_2D0
  loc_AE7A17: FLdRfVar var_2CC
  loc_AE7A1A: FLdPr Me
  loc_AE7A1D: MemLdRfVar from_stack_1.global_56
  loc_AE7A20: NewIfNullPr clsbase
  loc_AE7A23: from_stack_1v = clsbase.RsFrmGet()
  loc_AE7A28: FLdPr var_2CC
  loc_AE7A2B:  = Me.Fields
  loc_AE7A30: FLdPr var_2D0
  loc_AE7A33: from_stack_2 = Me.Item(from_stack_1)
  loc_AE7A38: FLdRfVar var_370
  loc_AE7A3B: LitVarStr var_36C, "TotalItem"
  loc_AE7A40: PopAdLdVar
  loc_AE7A41: FLdRfVar var_35C
  loc_AE7A44: FLdRfVar var_358
  loc_AE7A47: FLdPr Me
  loc_AE7A4A: MemLdRfVar from_stack_1.global_56
  loc_AE7A4D: NewIfNullPr clsbase
  loc_AE7A50: from_stack_1v = clsbase.RsFrmGet()
  loc_AE7A55: FLdPr var_358
  loc_AE7A58:  = Me.Fields
  loc_AE7A5D: FLdPr var_35C
  loc_AE7A60: from_stack_2 = Me.Item(from_stack_1)
  loc_AE7A65: FLdRfVar var_CC
  loc_AE7A68: FLdRfVar var_AC
  loc_AE7A6B: LitVarStr var_A8, "CodiItno"
  loc_AE7A70: PopAdLdVar
  loc_AE7A71: FLdRfVar var_98
  loc_AE7A74: FLdRfVar var_94
  loc_AE7A77: FLdPr Me
  loc_AE7A7A: MemLdRfVar from_stack_1.global_56
  loc_AE7A7D: NewIfNullPr clsbase
  loc_AE7A80: from_stack_1v = clsbase.RsFrmGet()
  loc_AE7A85: FLdPr var_94
  loc_AE7A88:  = Me.Fields
  loc_AE7A8D: FLdPr var_98
  loc_AE7A90: from_stack_2 = Me.Item(from_stack_1)
  loc_AE7A95: FLdPr var_AC
  loc_AE7A98:  = Me.Value
  loc_AE7A9D: FLdRfVar var_CC
  loc_AE7AA0: LitI4 9
  loc_AE7AA5: FLdRfVar var_BC
  loc_AE7AA8: ImpAdCallFPR4  = Chr()
  loc_AE7AAD: FLdRfVar var_BC
  loc_AE7AB0: ConcatVar var_DC
  loc_AE7AB4: LitVarStr var_EC, "0"
  loc_AE7AB9: ConcatVar var_FC
  loc_AE7ABD: LitI4 9
  loc_AE7AC2: FLdRfVar var_128
  loc_AE7AC5: ImpAdCallFPR4  = Chr()
  loc_AE7ACA: FLdRfVar var_128
  loc_AE7ACD: ConcatVar var_138
  loc_AE7AD1: FLdRfVar var_158
  loc_AE7AD4: FLdRfVar var_118
  loc_AE7AD7: LitVarStr var_114, "CodiInsu"
  loc_AE7ADC: PopAdLdVar
  loc_AE7ADD: FLdRfVar var_104
  loc_AE7AE0: FLdRfVar var_100
  loc_AE7AE3: FLdPr Me
  loc_AE7AE6: MemLdRfVar from_stack_1.global_56
  loc_AE7AE9: NewIfNullPr clsbase
  loc_AE7AEC: from_stack_1v = clsbase.RsFrmGet()
  loc_AE7AF1: FLdPr var_100
  loc_AE7AF4:  = Me.Fields
  loc_AE7AF9: FLdPr var_104
  loc_AE7AFC: from_stack_2 = Me.Item(from_stack_1)
  loc_AE7B01: FLdPr var_118
  loc_AE7B04:  = Me.Value
  loc_AE7B09: FLdRfVar var_158
  loc_AE7B0C: ConcatVar var_174
  loc_AE7B10: LitI4 9
  loc_AE7B15: FLdRfVar var_184
  loc_AE7B18: ImpAdCallFPR4  = Chr()
  loc_AE7B1D: FLdRfVar var_184
  loc_AE7B20: ConcatVar var_194
  loc_AE7B24: FLdRfVar var_1B0
  loc_AE7B27: FLdRfVar var_1A0
  loc_AE7B2A: LitVarStr var_148, "DetaInsu"
  loc_AE7B2F: PopAdLdVar
  loc_AE7B30: FLdRfVar var_19C
  loc_AE7B33: FLdRfVar var_198
  loc_AE7B36: FLdPr Me
  loc_AE7B39: MemLdRfVar from_stack_1.global_56
  loc_AE7B3C: NewIfNullPr clsbase
  loc_AE7B3F: from_stack_1v = clsbase.RsFrmGet()
  loc_AE7B44: FLdPr var_198
  loc_AE7B47:  = Me.Fields
  loc_AE7B4C: FLdPr var_19C
  loc_AE7B4F: from_stack_2 = Me.Item(from_stack_1)
  loc_AE7B54: FLdPr var_1A0
  loc_AE7B57:  = Me.Value
  loc_AE7B5C: FLdRfVar var_1B0
  loc_AE7B5F: ConcatVar var_1C0
  loc_AE7B63: LitI4 9
  loc_AE7B68: FLdRfVar var_1D0
  loc_AE7B6B: ImpAdCallFPR4  = Chr()
  loc_AE7B70: FLdRfVar var_1D0
  loc_AE7B73: ConcatVar var_1E0
  loc_AE7B77: FLdRfVar var_20C
  loc_AE7B7A: FLdRfVar var_1FC
  loc_AE7B7D: LitVarStr var_1F8, "DetaItno"
  loc_AE7B82: PopAdLdVar
  loc_AE7B83: FLdRfVar var_1E8
  loc_AE7B86: FLdRfVar var_1E4
  loc_AE7B89: FLdPr Me
  loc_AE7B8C: MemLdRfVar from_stack_1.global_56
  loc_AE7B8F: NewIfNullPr clsbase
  loc_AE7B92: from_stack_1v = clsbase.RsFrmGet()
  loc_AE7B97: FLdPr var_1E4
  loc_AE7B9A:  = Me.Fields
  loc_AE7B9F: FLdPr var_1E8
  loc_AE7BA2: from_stack_2 = Me.Item(from_stack_1)
  loc_AE7BA7: FLdPr var_1FC
  loc_AE7BAA:  = Me.Value
  loc_AE7BAF: FLdRfVar var_20C
  loc_AE7BB2: ConcatVar var_21C
  loc_AE7BB6: LitI4 9
  loc_AE7BBB: FLdRfVar var_22C
  loc_AE7BBE: ImpAdCallFPR4  = Chr()
  loc_AE7BC3: FLdRfVar var_22C
  loc_AE7BC6: ConcatVar var_23C
  loc_AE7BCA: LitI4 1
  loc_AE7BCF: LitI4 1
  loc_AE7BD4: LitVarStr var_278, "0.000"
  loc_AE7BD9: FStVarCopyObj var_288
  loc_AE7BDC: FLdRfVar var_288
  loc_AE7BDF: FLdZeroAd var_258
  loc_AE7BE2: CVarAd
  loc_AE7BE6: ImpAdCallI2 Format$(, )
  loc_AE7BEB: CVarStr var_298
  loc_AE7BEE: ConcatVar var_2A8
  loc_AE7BF2: LitI4 9
  loc_AE7BF7: FLdRfVar var_2B8
  loc_AE7BFA: ImpAdCallFPR4  = Chr()
  loc_AE7BFF: FLdRfVar var_2B8
  loc_AE7C02: ConcatVar var_2C8
  loc_AE7C06: LitI4 1
  loc_AE7C0B: LitI4 1
  loc_AE7C10: LitVarStr var_304, "0.00"
  loc_AE7C15: FStVarCopyObj var_314
  loc_AE7C18: FLdRfVar var_314
  loc_AE7C1B: FLdZeroAd var_2E4
  loc_AE7C1E: CVarAd
  loc_AE7C22: ImpAdCallI2 Format$(, )
  loc_AE7C27: CVarStr var_324
  loc_AE7C2A: ConcatVar var_334
  loc_AE7C2E: LitI4 9
  loc_AE7C33: FLdRfVar var_344
  loc_AE7C36: ImpAdCallFPR4  = Chr()
  loc_AE7C3B: FLdRfVar var_344
  loc_AE7C3E: ConcatVar var_354
  loc_AE7C42: LitI4 1
  loc_AE7C47: LitI4 1
  loc_AE7C4C: LitVarStr var_390, "currency"
  loc_AE7C51: FStVarCopyObj var_3A0
  loc_AE7C54: FLdRfVar var_3A0
  loc_AE7C57: FLdZeroAd var_370
  loc_AE7C5A: CVarAd
  loc_AE7C5E: ImpAdCallI2 Format$(, )
  loc_AE7C63: CVarStr var_3B0
  loc_AE7C66: ConcatVar var_3C0
  loc_AE7C6A: LitI4 9
  loc_AE7C6F: FLdRfVar var_3D0
  loc_AE7C72: ImpAdCallFPR4  = Chr()
  loc_AE7C77: FLdRfVar var_3D0
  loc_AE7C7A: ConcatVar var_3E0
  loc_AE7C7E: LitVarStr var_3F0, "No"
  loc_AE7C83: ConcatVar var_400
  loc_AE7C87: LitI4 9
  loc_AE7C8C: FLdRfVar var_410
  loc_AE7C8F: ImpAdCallFPR4  = Chr()
  loc_AE7C94: FLdRfVar var_410
  loc_AE7C97: ConcatVar var_420
  loc_AE7C9B: FLdRfVar var_44C
  loc_AE7C9E: FLdRfVar var_43C
  loc_AE7CA1: LitVarStr var_438, "CaraItno"
  loc_AE7CA6: PopAdLdVar
  loc_AE7CA7: FLdRfVar var_428
  loc_AE7CAA: FLdRfVar var_424
  loc_AE7CAD: FLdPr Me
  loc_AE7CB0: MemLdRfVar from_stack_1.global_56
  loc_AE7CB3: NewIfNullPr clsbase
  loc_AE7CB6: from_stack_1v = clsbase.RsFrmGet()
  loc_AE7CBB: FLdPr var_424
  loc_AE7CBE:  = Me.Fields
  loc_AE7CC3: FLdPr var_428
  loc_AE7CC6: from_stack_2 = Me.Item(from_stack_1)
  loc_AE7CCB: FLdPr var_43C
  loc_AE7CCE:  = Me.Value
  loc_AE7CD3: FLdRfVar var_44C
  loc_AE7CD6: ConcatVar var_45C
  loc_AE7CDA: LitI4 9
  loc_AE7CDF: FLdRfVar var_46C
  loc_AE7CE2: ImpAdCallFPR4  = Chr()
  loc_AE7CE7: FLdRfVar var_46C
  loc_AE7CEA: ConcatVar var_47C
  loc_AE7CEE: LitVarStr var_48C, vbNullString
  loc_AE7CF3: ConcatVar var_49C
  loc_AE7CF7: CStrVarTmp
  loc_AE7CF8: CVarStr var_4AC
  loc_AE7CFB: PopAdLdVar
  loc_AE7CFC: FLdPr Me
  loc_AE7CFF: VCallAd Control_ID_ItemNotaFlex
  loc_AE7D02: FStAdFunc var_4C0
  loc_AE7D05: FLdPr var_4C0
  loc_AE7D08: LateIdCall
  loc_AE7D10: FFreeAd var_94 = "": var_98 = "": var_AC = "": var_100 = "": var_104 = "": var_118 = "": var_198 = "": var_19C = "": var_1A0 = "": var_1E4 = "": var_1E8 = "": var_1FC = "": var_240 = "": var_244 = "": var_2CC = "": var_2D0 = "": var_358 = "": var_35C = "": var_424 = "": var_428 = "": var_43C = ""
  loc_AE7D3F: FFreeVar var_3A0 = "": var_354 = "": var_3B0 = "": var_3C0 = "": var_3D0 = "": var_3E0 = "": var_400 = "": var_410 = "": var_420 = "": var_44C = "": var_45C = "": var_46C = "": var_47C = "": var_49C = "": var_4AC = "": var_CC = "": var_BC = "": var_DC = "": var_FC = "": var_128 = "": var_138 = "": var_158 = "": var_174 = "": var_184 = "": var_194 = "": var_1B0 = "": var_1C0 = "": var_1D0 = "": var_1E0 = "": var_20C = "": var_21C = "": var_22C = "": var_268 = "": var_288 = "": var_23C = "": var_298 = "": var_2A8 = "": var_2B8 = "": var_2F4 = "": var_314 = "": var_2C8 = "": var_324 = "": var_334 = "": var_344 = ""
  loc_AE7D9C: FLdPr Me
  loc_AE7D9F: MemLdRfVar from_stack_1.global_56
  loc_AE7DA2: NewIfNullPr clsbase
  loc_AE7DA5: Call clsbase.MoveSiguiente()
  loc_AE7DAA: Branch loc_AE79C6
  loc_AE7DAD: ExitProcHresult
End Function

Private Function Proc_108_33_A3C16C() 'A3C16C
  'Data Table: 4A77A4
  loc_A3BF50: LitI2_Byte 0
  loc_A3BF52: CR8I2
  loc_A3BF53: FStFPR8 var_90
  loc_A3BF56: LitI2_Byte 1
  loc_A3BF58: FLdRfVar var_86
  loc_A3BF5B: FLdPr Me
  loc_A3BF5E: VCallAd Control_ID_ItemNotaFlex
  loc_A3BF61: FStAdFunc var_9C
  loc_A3BF64: FLdPr var_9C
  loc_A3BF67: LateIdLdVar var_AC DispID_4 0
  loc_A3BF6E: CI4Var
  loc_A3BF70: LitI4 1
  loc_A3BF75: SubI4
  loc_A3BF76: CI2I4
  loc_A3BF77: FFree1Ad var_9C
  loc_A3BF7A: FFree1Var var_AC = ""
  loc_A3BF7D: ForI2 var_B0
  loc_A3BF83: FLdI2 var_86
  loc_A3BF86: CI4UI1
  loc_A3BF87: CVarI4
  loc_A3BF8B: PopAdLdVar
  loc_A3BF8C: LitVarI4
  loc_A3BF94: PopAdLdVar
  loc_A3BF95: FLdPr Me
  loc_A3BF98: VCallAd Control_ID_ItemNotaFlex
  loc_A3BF9B: FStAdFunc var_9C
  loc_A3BF9E: FLdPr var_9C
  loc_A3BFA1: LateIdCallLdVar
  loc_A3BFAB: CStrVarTmp
  loc_A3BFAC: CVarStr var_100
  loc_A3BFAF: ImpAdCallI2 IsNumeric()
  loc_A3BFB4: FLdI2 var_86
  loc_A3BFB7: CI4UI1
  loc_A3BFB8: CVarI4
  loc_A3BFBC: PopAdLdVar
  loc_A3BFBD: LitVarI4
  loc_A3BFC5: PopAdLdVar
  loc_A3BFC6: FLdPr Me
  loc_A3BFC9: VCallAd Control_ID_ItemNotaFlex
  loc_A3BFCC: FStAdFunc var_144
  loc_A3BFCF: FLdPr var_144
  loc_A3BFD2: LateIdCallLdVar
  loc_A3BFDC: CStrVarTmp
  loc_A3BFDD: CVarStr var_164
  loc_A3BFE0: ImpAdCallI2 IsNumeric()
  loc_A3BFE5: AndI4
  loc_A3BFE6: FFreeAd var_9C = ""
  loc_A3BFED: FFreeVar var_AC = "": var_100 = "": var_154 = ""
  loc_A3BFF8: BranchF loc_A3C125
  loc_A3BFFB: FLdI2 var_86
  loc_A3BFFE: CI4UI1
  loc_A3BFFF: CVarI4
  loc_A3C003: PopAdLdVar
  loc_A3C004: LitVarI4
  loc_A3C00C: PopAdLdVar
  loc_A3C00D: FLdPr Me
  loc_A3C010: VCallAd Control_ID_ItemNotaFlex
  loc_A3C013: FStAdFunc var_9C
  loc_A3C016: FLdPr var_9C
  loc_A3C019: LateIdCallLdVar
  loc_A3C023: PopAd
  loc_A3C025: FLdI2 var_86
  loc_A3C028: CI4UI1
  loc_A3C029: CVarI4
  loc_A3C02D: PopAdLdVar
  loc_A3C02E: LitVarI4
  loc_A3C036: PopAdLdVar
  loc_A3C037: FLdPr Me
  loc_A3C03A: VCallAd Control_ID_ItemNotaFlex
  loc_A3C03D: FStAdFunc var_144
  loc_A3C040: FLdPr var_144
  loc_A3C043: LateIdCallLdVar
  loc_A3C04D: PopAd
  loc_A3C04F: LitI4 3
  loc_A3C054: FLdRfVar var_AC
  loc_A3C057: CStrVarTmp
  loc_A3C058: FStStrNoPop var_168
  loc_A3C05B: CR8Str
  loc_A3C05D: CVarR8
  loc_A3C061: FLdRfVar var_154
  loc_A3C064: ImpAdCallFPR4  = Round(, )
  loc_A3C069: FLdRfVar var_154
  loc_A3C06C: LitI4 2
  loc_A3C071: FLdRfVar var_164
  loc_A3C074: CStrVarTmp
  loc_A3C075: FStStrNoPop var_17C
  loc_A3C078: CR8Str
  loc_A3C07A: CVarR8
  loc_A3C07E: FLdRfVar var_1AC
  loc_A3C081: ImpAdCallFPR4  = Round(, )
  loc_A3C086: FLdRfVar var_1AC
  loc_A3C089: MulVar var_1BC
  loc_A3C08D: CR4Var
  loc_A3C08E: FStFPR8 var_90
  loc_A3C091: FFreeStr var_168 = ""
  loc_A3C098: FFreeAd var_9C = ""
  loc_A3C09F: FFreeVar var_AC = "": var_100 = "": var_164 = "": var_19C = "": var_154 = ""
  loc_A3C0AE: FLdI2 var_86
  loc_A3C0B1: CI4UI1
  loc_A3C0B2: CVarI4
  loc_A3C0B6: PopAdLdVar
  loc_A3C0B7: LitVarI4
  loc_A3C0BF: PopAdLdVar
  loc_A3C0C0: LitI4 -1
  loc_A3C0C5: LitI4 0
  loc_A3C0CA: LitI4 -1
  loc_A3C0CF: LitI4 2
  loc_A3C0D4: FLdRfVar var_90
  loc_A3C0D7: CVarRef
  loc_A3C0DC: ImpAdCallI2 FormatNumber(, , , , )
  loc_A3C0E1: CVarStr var_AC
  loc_A3C0E4: PopAdLdVar
  loc_A3C0E5: FLdPr Me
  loc_A3C0E8: VCallAd Control_ID_ItemNotaFlex
  loc_A3C0EB: FStAdFunc var_9C
  loc_A3C0EE: FLdPr var_9C
  loc_A3C0F1: LateIdCallSt
  loc_A3C0F9: FFree1Ad var_9C
  loc_A3C0FC: FFree1Var var_AC = ""
  loc_A3C0FF: LitI4 2
  loc_A3C104: FLdFPR8 var_90
  loc_A3C107: FLdFPR8 var_98
  loc_A3C10A: AddR8
  loc_A3C10B: CVarR8
  loc_A3C10F: FLdRfVar var_100
  loc_A3C112: ImpAdCallFPR4  = Round(, )
  loc_A3C117: FLdRfVar var_100
  loc_A3C11A: CR4Var
  loc_A3C11B: FStFPR8 var_98
  loc_A3C11E: FFreeVar var_AC = ""
  loc_A3C125: FLdRfVar var_86
  loc_A3C128: NextI2 var_B0, loc_A3BF83
  loc_A3C12D: LitI4 -1
  loc_A3C132: LitI4 0
  loc_A3C137: LitI4 -1
  loc_A3C13C: LitI4 2
  loc_A3C141: FLdRfVar var_98
  loc_A3C144: CVarRef
  loc_A3C149: ImpAdCallI2 FormatNumber(, , , , )
  loc_A3C14E: FStStrNoPop var_168
  loc_A3C151: FLdPr Me
  loc_A3C154: VCallAd Control_ID_TotaCotiTxt
  loc_A3C157: FStAdFunc var_9C
  loc_A3C15A: FLdPr var_9C
  loc_A3C15D: Me.Text = from_stack_1
  loc_A3C162: FFree1Str var_168
  loc_A3C165: FFree1Ad var_9C
  loc_A3C168: ExitProcHresult
  loc_A3C169: CStr2Ansi
End Function
