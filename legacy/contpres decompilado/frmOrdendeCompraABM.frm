VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmOrdendeCompraABM
  Caption = "Orden de Compra"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmOrdendeCompraABM.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 15270
  ClientHeight = 10425
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
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 4
      OleObjectBlob = "frmOrdendeCompraABM.frx":08CA
    End
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
  End
  Begin VB.Frame Frame1
    Caption = " Orden de Compra "
    Left = 120
    Top = 4560
    Width = 15015
    Height = 1935
    TabIndex = 6
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 12
      Charset = 0
      Weight = 700
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.TextBox DetaNopeTxt
      Left = 1080
      Top = 960
      Width = 13695
      Height = 735
      TabIndex = 15
      MultiLine = -1  'True
      ScrollBars = 2
      MaxLength = 200
      DataField = "DetaNope"
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
    Begin MSMask.MaskEdBox FechOrcoMsk
      Left = 1080
      Top = 480
      Width = 1335
      Height = 345
      TabIndex = 8
      OleObjectBlob = "frmOrdendeCompraABM.frx":0952
    End
    Begin VB.Label Label6
      Left = 10440
      Top = 480
      Width = 4320
      Height = 360
      TabIndex = 13
      BorderStyle = 1 'Fixed Single
      DataField = "DetaTico"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
    End
    Begin VB.Label Label5
      Caption = "Tipo de compra:"
      Left = 8040
      Top = 480
      Width = 1695
      Height = 300
      TabIndex = 11
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
      Left = 9840
      Top = 480
      Width = 480
      Height = 360
      TabIndex = 12
      BorderStyle = 1 'Fixed Single
      DataField = "CodiTico"
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
    End
    Begin VB.Label lblTotalCoti
      Left = 5160
      Top = 480
      Width = 2520
      Height = 360
      TabIndex = 10
      BorderStyle = 1 'Fixed Single
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 12
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
      DataFormat = 80
    End
    Begin VB.Label Label3
      Caption = "Total de la Cotización:"
      Left = 2760
      Top = 480
      Width = 2325
      Height = 300
      TabIndex = 9
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
      Caption = "Fecha:"
      Left = 210
      Top = 480
      Width = 735
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
    Begin VB.Label Label1
      Caption = "Detalle:"
      Left = 165
      Top = 960
      Width = 810
      Height = 300
      TabIndex = 14
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
    Width = 15015
    Height = 2775
    TabIndex = 5
    OleObjectBlob = "frmOrdendeCompraABM.frx":0A02
  End
  Begin MSFlexGridLib.MSFlexGrid ItemCotizacionFlex
    Left = 120
    Top = 6600
    Width = 15015
    Height = 3375
    TabIndex = 16
    OleObjectBlob = "frmOrdendeCompraABM.frx":10D6
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmOrdendeCompraABM.frx":11C2
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15270
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmOrdendeCompraABM.frx":8D40
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmOrdendeCompraABM.frx":929C
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmOrdendeCompraABM"


Private Sub tlbABMS_ButtonClick(Button As Button) 'AB2478
  'Data Table: 484B14
  loc_AB1F38: ILdRf Button
  loc_AB1F3B: FStAd var_88 
  loc_AB1F3F: FLdRfVar var_90
  loc_AB1F42: FLdPr var_88
  loc_AB1F45:  = Me.Key
  loc_AB1F4A: FLdZeroAd var_90
  loc_AB1F4D: FStStr var_94
  loc_AB1F50: ILdRf var_94
  loc_AB1F53: LitStr "btnCrear"
  loc_AB1F56: EqStr
  loc_AB1F58: BranchF loc_AB2179
  loc_AB1F5B: FLdRfVar var_98
  loc_AB1F5E: FLdPr Me
  loc_AB1F61: MemLdRfVar from_stack_1.global_56
  loc_AB1F64: NewIfNullPr clsnotapedido
  loc_AB1F67: from_stack_1 = clsnotapedido.RecordCount
  loc_AB1F6C: ILdRf var_98
  loc_AB1F6F: LitI4 0
  loc_AB1F74: GtI4
  loc_AB1F75: BranchF loc_AB2176
  loc_AB1F78: FLdPr Me
  loc_AB1F7B: MemLdFPR8 global_120
  loc_AB1F7E: LitI2_Byte 0
  loc_AB1F80: CR8I2
  loc_AB1F81: EqR4
  loc_AB1F82: BranchF loc_AB1F95
  loc_AB1F85: LitI4 0
  loc_AB1F8A: LitStr "La Cotización está en Cero. Verifique..."
  loc_AB1F8D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AB1F92: Branch loc_AB2176
  loc_AB1F95: LitI2_Byte 1
  loc_AB1F97: FLdPr Me
  loc_AB1F9A: MemStUI1
  loc_AB1F9E: ILdRf Me
  loc_AB1FA1: CastAd
  loc_AB1FA4: FStAdFunc var_9C
  loc_AB1FA7: FLdRfVar var_9C
  loc_AB1FAA: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_AB1FAF: FFree1Ad var_9C
  loc_AB1FB2: LitI4 0
  loc_AB1FB7: LitI4 0
  loc_AB1FBC: FLdRfVar var_A0
  loc_AB1FBF: Redim
  loc_AB1FC9: FLdPr Me
  loc_AB1FCC: VCallAd Control_ID_dgdABMS
  loc_AB1FCF: CVarAd
  loc_AB1FD3: ParmAry1St
  loc_AB1FD9: FLdRfVar var_A0
  loc_AB1FDC: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_AB1FE1: FLdRfVar var_A0
  loc_AB1FE4: Erase
  loc_AB1FE5: ILdRf Me
  loc_AB1FE8: CastAd
  loc_AB1FEB: FStAdFunc var_9C
  loc_AB1FEE: FLdRfVar var_9C
  loc_AB1FF1: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_AB1FF6: FFree1Ad var_9C
  loc_AB1FF9: ILdRf Me
  loc_AB1FFC: CastAd
  loc_AB1FFF: FStAdFunc var_9C
  loc_AB2002: FLdRfVar var_9C
  loc_AB2005: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_AB200A: FFree1Ad var_9C
  loc_AB200D: LitI4 1
  loc_AB2012: LitI4 1
  loc_AB2017: LitVarStr var_D0, "currency"
  loc_AB201C: FStVarCopyObj var_B0
  loc_AB201F: FLdRfVar var_B0
  loc_AB2022: FLdPr Me
  loc_AB2025: MemLdRfVar from_stack_1.global_120
  loc_AB2028: CVarRef
  loc_AB202D: ImpAdCallI2 Format$(, )
  loc_AB2032: FStStrNoPop var_90
  loc_AB2035: FLdPr Me
  loc_AB2038: VCallAd Control_ID_lblTotalCoti
  loc_AB203B: FStAdFunc var_9C
  loc_AB203E: FLdPr var_9C
  loc_AB2041: Me.Caption = from_stack_1
  loc_AB2046: FFree1Str var_90
  loc_AB2049: FFree1Ad var_9C
  loc_AB204C: FFree1Var var_B0 = ""
  loc_AB204F: FLdRfVar var_D4
  loc_AB2052: ImpAdLdI2 MemVar_C3D064
  loc_AB2055: FLdPr Me
  loc_AB2058: MemLdRfVar from_stack_1.global_56
  loc_AB205B: NewIfNullPr clsnotapedido
  loc_AB205E: from_stack_2v = clsnotapedido.UltimaFechaOrdenCompra(from_stack_1v)
  loc_AB2063: FLdRfVar var_D4
  loc_AB2066: FLdPr Me
  loc_AB2069: MemLdRfVar from_stack_1.global_128
  loc_AB206C: StAryMove
  loc_AB206E: LitI4 0
  loc_AB2073: FLdPr Me
  loc_AB2076: MemLdStr global_128
  loc_AB2079: AryLock
  loc_AB207C: Ary1LdRf
  loc_AB207D: CDargRef
  loc_AB2081: FLdPr Me
  loc_AB2084: VCallAd Control_ID_FechOrcoMsk
  loc_AB2087: FStAdFunc var_9C
  loc_AB208A: FLdPr var_9C
  loc_AB208D: LateIdSt
  loc_AB2092: AryUnlock
  loc_AB2095: FFree1Ad var_9C
  loc_AB2098: LitI4 2
  loc_AB209D: FLdPr Me
  loc_AB20A0: MemLdStr global_128
  loc_AB20A3: AryLock
  loc_AB20A6: Ary1LdRf
  loc_AB20A7: CDargRef
  loc_AB20AB: FLdPr Me
  loc_AB20AE: VCallAd Control_ID_FechOrcoMsk
  loc_AB20B1: FStAdFunc var_9C
  loc_AB20B4: FLdPr var_9C
  loc_AB20B7: LateIdSt
  loc_AB20BC: AryUnlock
  loc_AB20BF: FFree1Ad var_9C
  loc_AB20C2: FLdRfVar var_B0
  loc_AB20C5: FLdRfVar var_E0
  loc_AB20C8: LitVarStr var_C0, "DetaNope"
  loc_AB20CD: PopAdLdVar
  loc_AB20CE: FLdRfVar var_DC
  loc_AB20D1: FLdRfVar var_9C
  loc_AB20D4: FLdPr Me
  loc_AB20D7: MemLdRfVar from_stack_1.global_56
  loc_AB20DA: NewIfNullPr clsnotapedido
  loc_AB20DD: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_AB20E2: FLdPr var_9C
  loc_AB20E5:  = Me.Fields
  loc_AB20EA: FLdPr var_DC
  loc_AB20ED: from_stack_2 = Me.Item(from_stack_1)
  loc_AB20F2: FLdPr var_E0
  loc_AB20F5:  = Me.Value
  loc_AB20FA: FLdRfVar var_B0
  loc_AB20FD: CStrVarTmp
  loc_AB20FE: FStStrNoPop var_90
  loc_AB2101: FLdPr Me
  loc_AB2104: VCallAd Control_ID_DetaNopeTxt
  loc_AB2107: FStAdFunc var_E4
  loc_AB210A: FLdPr var_E4
  loc_AB210D: Me.Text = from_stack_1
  loc_AB2112: FFree1Str var_90
  loc_AB2115: FFreeAd var_9C = "": var_DC = "": var_E0 = ""
  loc_AB2120: FFree1Var var_B0 = ""
  loc_AB2123: LitI4 0
  loc_AB2128: LitI4 2
  loc_AB212D: FLdRfVar var_A0
  loc_AB2130: Redim
  loc_AB213A: FLdPr Me
  loc_AB213D: VCallAd Control_ID_FechOrcoMsk
  loc_AB2140: CVarAd
  loc_AB2144: ParmAry1St
  loc_AB214A: FLdPr Me
  loc_AB214D: VCallAd Control_ID_DetaNopeTxt
  loc_AB2150: CVarAd
  loc_AB2154: ParmAry1St
  loc_AB215A: FLdPr Me
  loc_AB215D: VCallAd Control_ID_ItemCotizacionFlex
  loc_AB2160: CVarAd
  loc_AB2164: ParmAry1St
  loc_AB216A: FLdRfVar var_A0
  loc_AB216D: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_AB2172: FLdRfVar var_A0
  loc_AB2175: Erase
  loc_AB2176: Branch loc_AB2475
  loc_AB2179: ILdRf var_94
  loc_AB217C: LitStr "btnModificar"
  loc_AB217F: EqStr
  loc_AB2181: BranchF loc_AB2194
  loc_AB2184: LitI4 0
  loc_AB2189: LitStr "Opción no disponible en esta pantalla..."
  loc_AB218C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AB2191: Branch loc_AB2475
  loc_AB2194: ILdRf var_94
  loc_AB2197: LitStr "btnEliminar"
  loc_AB219A: EqStr
  loc_AB219C: BranchF loc_AB21AF
  loc_AB219F: LitI4 0
  loc_AB21A4: LitStr "Opción no disponible en esta pantalla..."
  loc_AB21A7: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AB21AC: Branch loc_AB2475
  loc_AB21AF: ILdRf var_94
  loc_AB21B2: LitStr "btnGuardar"
  loc_AB21B5: EqStr
  loc_AB21B7: BranchF loc_AB2359
  loc_AB21BA: LitStr vbNullString
  loc_AB21BD: FLdPr Me
  loc_AB21C0: MemStStrCopy
  loc_AB21C4: FLdRfVar var_B0
  loc_AB21C7: FLdRfVar var_E0
  loc_AB21CA: LitVarStr var_C0, "ExpeImpu"
  loc_AB21CF: PopAdLdVar
  loc_AB21D0: FLdRfVar var_DC
  loc_AB21D3: FLdRfVar var_9C
  loc_AB21D6: FLdPr Me
  loc_AB21D9: MemLdRfVar from_stack_1.global_56
  loc_AB21DC: NewIfNullPr clsnotapedido
  loc_AB21DF: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_AB21E4: FLdPr var_9C
  loc_AB21E7:  = Me.Fields
  loc_AB21EC: FLdPr var_DC
  loc_AB21EF: from_stack_2 = Me.Item(from_stack_1)
  loc_AB21F4: FLdPr var_E0
  loc_AB21F7:  = Me.Value
  loc_AB21FC: FLdRfVar var_B0
  loc_AB21FF: LitVarStr var_D0, vbNullString
  loc_AB2204: HardType
  loc_AB2205: EqVarBool
  loc_AB2207: FFreeAd var_9C = "": var_DC = ""
  loc_AB2210: FFree1Var var_B0 = ""
  loc_AB2213: BranchF loc_AB2224
  loc_AB2216: LitI4 0
  loc_AB221B: LitStr "El Expediente está vacío. Verifique..."
  loc_AB221E: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AB2223: ExitProcHresult
  loc_AB2224: LitI2_Byte 0
  loc_AB2226: PopTmpLdAd2 var_106
  loc_AB2229: Call ItemCotizacionFlex_UnknownEvent_8()
  loc_AB222E: FLdPr Me
  loc_AB2231: MemLdStr global_80
  loc_AB2234: LitStr vbNullString
  loc_AB2237: NeStr
  loc_AB2239: BranchF loc_AB223D
  loc_AB223C: ExitProcHresult
  loc_AB223D: LitI2_Byte 0
  loc_AB223F: PopTmpLdAd2 var_106
  loc_AB2242: Call DetaNopeTxt_Validate(from_stack_1v)
  loc_AB2247: FLdPr Me
  loc_AB224A: MemLdStr global_80
  loc_AB224D: LitStr vbNullString
  loc_AB2250: NeStr
  loc_AB2252: BranchF loc_AB2256
  loc_AB2255: ExitProcHresult
  loc_AB2256: LitI2_Byte 0
  loc_AB2258: PopTmpLdAd2 var_106
  loc_AB225B: Call FechOrcoMsk_UnknownEvent_8()
  loc_AB2260: FLdPr Me
  loc_AB2263: MemLdStr global_80
  loc_AB2266: LitStr vbNullString
  loc_AB2269: NeStr
  loc_AB226B: BranchF loc_AB226F
  loc_AB226E: ExitProcHresult
  loc_AB226F: FLdPr Me
  loc_AB2272: MemLdUI1 global_76
  loc_AB2276: FStUI1 var_108
  loc_AB227A: FLdUI1
  loc_AB227E: LitI2_Byte 1
  loc_AB2280: EqI2
  loc_AB2281: BranchF loc_AB2347
  loc_AB2284: FLdPr Me
  loc_AB2287: VCallAd Control_ID_ItemCotizacionFlex
  loc_AB228A: FStAdFunc var_9C
  loc_AB228D: FLdPr var_9C
  loc_AB2290: LateIdLdVar var_B0 DispID_4 0
  loc_AB2297: CI4Var
  loc_AB2299: LitI4 1
  loc_AB229E: LeI4
  loc_AB229F: FFree1Ad var_9C
  loc_AB22A2: FFree1Var var_B0 = ""
  loc_AB22A5: BranchF loc_AB22B6
  loc_AB22A8: LitI4 0
  loc_AB22AD: LitStr "NO EXISTE ningún item para incluir en la ORDEN de COMPRA. Verifique..."
  loc_AB22B0: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AB22B5: ExitProcHresult
  loc_AB22B6: FLdPr Me
  loc_AB22B9: VCallAd Control_ID_FechOrcoMsk
  loc_AB22BC: FStAdFunc var_DC
  loc_AB22BF: FLdPr var_DC
  loc_AB22C2: LateIdLdVar var_F4 DispID_11 -32767
  loc_AB22C9: PopAd
  loc_AB22CB: FLdPr Me
  loc_AB22CE: VCallAd Control_ID_FechOrcoMsk
  loc_AB22D1: FStAdFunc var_9C
  loc_AB22D4: FLdPr var_9C
  loc_AB22D7: LateIdLdVar var_B0 DispID_15 0
  loc_AB22DE: CStrVarTmp
  loc_AB22DF: FStStrNoPop var_90
  loc_AB22E2: CDateStr
  loc_AB22E4: FLdRfVar var_F4
  loc_AB22E7: CStrVarTmp
  loc_AB22E8: FStStrNoPop var_10C
  loc_AB22EB: CDateStr
  loc_AB22ED: GtR4
  loc_AB22EE: FFreeStr var_90 = ""
  loc_AB22F5: FFreeAd var_9C = ""
  loc_AB22FC: FFreeVar var_B0 = ""
  loc_AB2303: BranchF loc_AB233F
  loc_AB2306: LitI2_Byte 0
  loc_AB2308: PopTmpLdAd2 var_10E
  loc_AB230B: LitI2_Byte 0
  loc_AB230D: PopTmpLdAd2 var_106
  loc_AB2310: LitStr "Está actualizando la fecha de la OC ... "
  loc_AB2313: LitStr vbCrLf
  loc_AB2316: ConcatStr
  loc_AB2317: FStStrNoPop var_90
  loc_AB231A: LitStr " ¿Desea Continuar?"
  loc_AB231D: ConcatStr
  loc_AB231E: FStStrNoPop var_10C
  loc_AB2321: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_AB2326: CI4UI1
  loc_AB2327: LitI4 6
  loc_AB232C: EqI4
  loc_AB232D: FFreeStr var_90 = ""
  loc_AB2334: BranchF loc_AB233C
  loc_AB2337: Call Proc_127_27_C15038()
  loc_AB233C: Branch loc_AB2344
  loc_AB233F: Call Proc_127_27_C15038()
  loc_AB2344: Branch loc_AB2351
  loc_AB2347: FLdUI1
  loc_AB234B: LitI2_Byte 2
  loc_AB234D: EqI2
  loc_AB234E: BranchF loc_AB2351
  loc_AB2351: Call cmdCancelar_Click()
  loc_AB2356: Branch loc_AB2475
  loc_AB2359: ILdRf var_94
  loc_AB235C: LitStr "btnCancelar"
  loc_AB235F: EqStr
  loc_AB2361: BranchF loc_AB236C
  loc_AB2364: Call cmdCancelar_Click()
  loc_AB2369: Branch loc_AB2475
  loc_AB236C: ILdRf var_94
  loc_AB236F: LitStr "btnPrimero"
  loc_AB2372: EqStr
  loc_AB2374: BranchF loc_AB2388
  loc_AB2377: FLdPr Me
  loc_AB237A: MemLdRfVar from_stack_1.global_56
  loc_AB237D: NewIfNullPr clsnotapedido
  loc_AB2380: Call clsnotapedido.MoveFirst()
  loc_AB2385: Branch loc_AB2475
  loc_AB2388: ILdRf var_94
  loc_AB238B: LitStr "btnAnterior"
  loc_AB238E: EqStr
  loc_AB2390: BranchF loc_AB23A4
  loc_AB2393: FLdPr Me
  loc_AB2396: MemLdRfVar from_stack_1.global_56
  loc_AB2399: NewIfNullPr clsnotapedido
  loc_AB239C: Call clsnotapedido.MovePrevious()
  loc_AB23A1: Branch loc_AB2475
  loc_AB23A4: ILdRf var_94
  loc_AB23A7: LitStr "btnSiguiente"
  loc_AB23AA: EqStr
  loc_AB23AC: BranchF loc_AB23C0
  loc_AB23AF: FLdPr Me
  loc_AB23B2: MemLdRfVar from_stack_1.global_56
  loc_AB23B5: NewIfNullPr clsnotapedido
  loc_AB23B8: Call clsnotapedido.MoveNext()
  loc_AB23BD: Branch loc_AB2475
  loc_AB23C0: ILdRf var_94
  loc_AB23C3: LitStr "btnUltimo"
  loc_AB23C6: EqStr
  loc_AB23C8: BranchF loc_AB23DC
  loc_AB23CB: FLdPr Me
  loc_AB23CE: MemLdRfVar from_stack_1.global_56
  loc_AB23D1: NewIfNullPr clsnotapedido
  loc_AB23D4: Call clsnotapedido.MoveLast()
  loc_AB23D9: Branch loc_AB2475
  loc_AB23DC: ILdRf var_94
  loc_AB23DF: LitStr "btnFiltrar"
  loc_AB23E2: EqStr
  loc_AB23E4: BranchF loc_AB23EA
  loc_AB23E7: Branch loc_AB2475
  loc_AB23EA: ILdRf var_94
  loc_AB23ED: LitStr "btnBuscar"
  loc_AB23F0: EqStr
  loc_AB23F2: BranchF loc_AB23F8
  loc_AB23F5: Branch loc_AB2475
  loc_AB23F8: ILdRf var_94
  loc_AB23FB: LitStr "btnImprimir"
  loc_AB23FE: EqStr
  loc_AB2400: BranchF loc_AB241E
  loc_AB2403: LitVar_Missing var_D0
  loc_AB2406: PopAdLdVar
  loc_AB2407: LitVarI4
  loc_AB240F: PopAdLdVar
  loc_AB2410: ImpAdLdRf MemVar_C3DC8C
  loc_AB2413: NewIfNullPr rptOrdendeCompraInterno
  loc_AB2416: rptOrdendeCompraInterno.Show from_stack_1, from_stack_2
  loc_AB241B: Branch loc_AB2475
  loc_AB241E: ILdRf var_94
  loc_AB2421: LitStr "btnAyuda"
  loc_AB2424: EqStr
  loc_AB2426: BranchF loc_AB2455
  loc_AB2429: LitVar_Missing var_140
  loc_AB242C: LitVar_Missing var_104
  loc_AB242F: LitVar_Missing var_F4
  loc_AB2432: LitI4 0
  loc_AB2437: LitVarStr var_C0, "Opcion no disponible en esta version."
  loc_AB243C: FStVarCopyObj var_B0
  loc_AB243F: FLdRfVar var_B0
  loc_AB2442: ImpAdCallFPR4 MsgBox(, , , , )
  loc_AB2447: FFreeVar var_B0 = "": var_F4 = "": var_104 = ""
  loc_AB2452: Branch loc_AB2475
  loc_AB2455: ILdRf var_94
  loc_AB2458: LitStr "btnSalir"
  loc_AB245B: EqStr
  loc_AB245D: BranchF loc_AB2475
  loc_AB2460: ILdRf Me
  loc_AB2463: FStAdNoPop
  loc_AB2467: ImpAdLdRf MemVar_C44F9C
  loc_AB246A: NewIfNullPr Me
  loc_AB246D: Me.Global.Unload from_stack_1
  loc_AB2472: FFree1Ad var_9C
  loc_AB2475: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() '9ED040
  'Data Table: 484B14
  loc_9ECF18: LitI2_Byte 0
  loc_9ECF1A: CUI1I2
  loc_9ECF1C: FLdPr Me
  loc_9ECF1F: MemStUI1
  loc_9ECF23: ILdRf Me
  loc_9ECF26: CastAd
  loc_9ECF29: FStAdFunc var_88
  loc_9ECF2C: FLdRfVar var_88
  loc_9ECF2F: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9ECF34: FFree1Ad var_88
  loc_9ECF37: LitI4 0
  loc_9ECF3C: LitI4 0
  loc_9ECF41: FLdRfVar var_8C
  loc_9ECF44: Redim
  loc_9ECF4E: FLdPr Me
  loc_9ECF51: VCallAd Control_ID_dgdABMS
  loc_9ECF54: CVarAd
  loc_9ECF58: ParmAry1St
  loc_9ECF5E: FLdRfVar var_8C
  loc_9ECF61: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9ECF66: FLdRfVar var_8C
  loc_9ECF69: Erase
  loc_9ECF6A: LitI4 0
  loc_9ECF6F: LitI4 0
  loc_9ECF74: FLdRfVar var_8C
  loc_9ECF77: Redim
  loc_9ECF81: FLdPr Me
  loc_9ECF84: VCallAd Control_ID_ItemCotizacionFlex
  loc_9ECF87: CVarAd
  loc_9ECF8B: ParmAry1St
  loc_9ECF91: FLdRfVar var_8C
  loc_9ECF94: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_9ECF99: FLdRfVar var_8C
  loc_9ECF9C: Erase
  loc_9ECF9D: FLdPr Me
  loc_9ECFA0: MemLdRfVar from_stack_1.global_56
  loc_9ECFA3: NewIfNullAd
  loc_9ECFA6: FStAd var_A0 
  loc_9ECFAA: FLdRfVar var_A0
  loc_9ECFAD: CVarRef
  loc_9ECFB2: ILdRf Me
  loc_9ECFB5: CastAd
  loc_9ECFB8: FStAdFunc var_88
  loc_9ECFBB: FLdRfVar var_88
  loc_9ECFBE: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_9ECFC3: ILdRf var_A0
  loc_9ECFC6: CastAd
  loc_9ECFC9: FLdPr Me
  loc_9ECFCC: MemStAdFunc
  loc_9ECFD0: FFreeAd var_88 = ""
  loc_9ECFD7: ILdRf Me
  loc_9ECFDA: CastAd
  loc_9ECFDD: FStAdFunc var_88
  loc_9ECFE0: FLdRfVar var_88
  loc_9ECFE3: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_9ECFE8: FFree1Ad var_88
  loc_9ECFEB: LitI4 0
  loc_9ECFF0: FLdPr Me
  loc_9ECFF3: MemLdRfVar from_stack_1.global_56
  loc_9ECFF6: NewIfNullPr clsnotapedido
  loc_9ECFF9: Call clsnotapedido.Encontrar(from_stack_1v)
  loc_9ECFFE: LitI2_Byte 0
  loc_9ED000: LitVarI2 var_9C, 0
  loc_9ED005: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_9ED00A: FFree1Var var_9C = ""
  loc_9ED00D: FLdPr Me
  loc_9ED010: VCallAd Control_ID_dgdABMS
  loc_9ED013: FStAdFunc var_A0
  loc_9ED016: LitI4 0
  loc_9ED01B: FStStrCopy var_B4
  loc_9ED01E: FLdRfVar var_B4
  loc_9ED021: FLdPr Me
  loc_9ED024: MemLdStr global_92
  loc_9ED027: FLdZeroAd var_A0
  loc_9ED02A: FStAdFunc var_88
  loc_9ED02D: FLdRfVar var_88
  loc_9ED030: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_9ED035: FFree1Str var_B4
  loc_9ED038: FFreeAd var_88 = ""
  loc_9ED03F: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() 'A2D48C
  'Data Table: 484B14
  loc_A2D294: LitVarStr var_94, vbNullString
  loc_A2D299: PopAdLdVar
  loc_A2D29A: FLdPr Me
  loc_A2D29D: VCallAd Control_ID_FiltroMsk
  loc_A2D2A0: FStAdFunc var_A8
  loc_A2D2A3: FLdPr var_A8
  loc_A2D2A6: LateIdSt
  loc_A2D2AB: FFree1Ad var_A8
  loc_A2D2AE: FLdRfVar var_AA
  loc_A2D2B1: FLdPr Me
  loc_A2D2B4: VCallAd Control_ID_FiltroCbo
  loc_A2D2B7: FStAdFunc var_A8
  loc_A2D2BA: FLdPr var_A8
  loc_A2D2BD:  = Me.ListIndex
  loc_A2D2C2: FLdI2 var_AA
  loc_A2D2C5: FStI2 var_AC
  loc_A2D2C8: FFree1Ad var_A8
  loc_A2D2CB: FLdI2 var_AC
  loc_A2D2CE: LitI2_Byte 0
  loc_A2D2D0: EqI2
  loc_A2D2D1: BranchF loc_A2D30B
  loc_A2D2D4: LitVarStr var_94, "########"
  loc_A2D2D9: PopAdLdVar
  loc_A2D2DA: FLdPr Me
  loc_A2D2DD: VCallAd Control_ID_FiltroMsk
  loc_A2D2E0: FStAdFunc var_A8
  loc_A2D2E3: FLdPr var_A8
  loc_A2D2E6: LateIdSt
  loc_A2D2EB: FFree1Ad var_A8
  loc_A2D2EE: LitStr "CodiNope"
  loc_A2D2F1: FStStrCopy var_B0
  loc_A2D2F4: FLdRfVar var_B0
  loc_A2D2F7: FLdPr Me
  loc_A2D2FA: MemLdRfVar from_stack_1.global_56
  loc_A2D2FD: NewIfNullPr clsnotapedido
  loc_A2D300: Call clsnotapedido.Sort(from_stack_1v)
  loc_A2D305: FFree1Str var_B0
  loc_A2D308: Branch loc_A2D48A
  loc_A2D30B: FLdI2 var_AC
  loc_A2D30E: LitI2_Byte 1
  loc_A2D310: EqI2
  loc_A2D311: BranchF loc_A2D34B
  loc_A2D314: LitVarStr var_94, "###########"
  loc_A2D319: PopAdLdVar
  loc_A2D31A: FLdPr Me
  loc_A2D31D: VCallAd Control_ID_FiltroMsk
  loc_A2D320: FStAdFunc var_A8
  loc_A2D323: FLdPr var_A8
  loc_A2D326: LateIdSt
  loc_A2D32B: FFree1Ad var_A8
  loc_A2D32E: LitStr "CucuPers"
  loc_A2D331: FStStrCopy var_B0
  loc_A2D334: FLdRfVar var_B0
  loc_A2D337: FLdPr Me
  loc_A2D33A: MemLdRfVar from_stack_1.global_56
  loc_A2D33D: NewIfNullPr clsnotapedido
  loc_A2D340: Call clsnotapedido.Sort(from_stack_1v)
  loc_A2D345: FFree1Str var_B0
  loc_A2D348: Branch loc_A2D48A
  loc_A2D34B: FLdI2 var_AC
  loc_A2D34E: LitI2_Byte 2
  loc_A2D350: EqI2
  loc_A2D351: BranchF loc_A2D38B
  loc_A2D354: LitVarStr var_94, vbNullString
  loc_A2D359: PopAdLdVar
  loc_A2D35A: FLdPr Me
  loc_A2D35D: VCallAd Control_ID_FiltroMsk
  loc_A2D360: FStAdFunc var_A8
  loc_A2D363: FLdPr var_A8
  loc_A2D366: LateIdSt
  loc_A2D36B: FFree1Ad var_A8
  loc_A2D36E: LitStr "DetaProv"
  loc_A2D371: FStStrCopy var_B0
  loc_A2D374: FLdRfVar var_B0
  loc_A2D377: FLdPr Me
  loc_A2D37A: MemLdRfVar from_stack_1.global_56
  loc_A2D37D: NewIfNullPr clsnotapedido
  loc_A2D380: Call clsnotapedido.Sort(from_stack_1v)
  loc_A2D385: FFree1Str var_B0
  loc_A2D388: Branch loc_A2D48A
  loc_A2D38B: FLdI2 var_AC
  loc_A2D38E: LitI2_Byte 3
  loc_A2D390: EqI2
  loc_A2D391: BranchF loc_A2D3CB
  loc_A2D394: LitVarStr var_94, vbNullString
  loc_A2D399: PopAdLdVar
  loc_A2D39A: FLdPr Me
  loc_A2D39D: VCallAd Control_ID_FiltroMsk
  loc_A2D3A0: FStAdFunc var_A8
  loc_A2D3A3: FLdPr var_A8
  loc_A2D3A6: LateIdSt
  loc_A2D3AB: FFree1Ad var_A8
  loc_A2D3AE: LitStr "ExpeImpu"
  loc_A2D3B1: FStStrCopy var_B0
  loc_A2D3B4: FLdRfVar var_B0
  loc_A2D3B7: FLdPr Me
  loc_A2D3BA: MemLdRfVar from_stack_1.global_56
  loc_A2D3BD: NewIfNullPr clsnotapedido
  loc_A2D3C0: Call clsnotapedido.Sort(from_stack_1v)
  loc_A2D3C5: FFree1Str var_B0
  loc_A2D3C8: Branch loc_A2D48A
  loc_A2D3CB: FLdI2 var_AC
  loc_A2D3CE: LitI2_Byte 4
  loc_A2D3D0: EqI2
  loc_A2D3D1: BranchF loc_A2D44D
  loc_A2D3D4: LitStr "Municipalidad de Guaymallén"
  loc_A2D3D7: LitStr "Municipalidad de Maipú"
  loc_A2D3DA: EqStr
  loc_A2D3DC: BranchF loc_A2D416
  loc_A2D3DF: LitVarStr var_94, "########"
  loc_A2D3E4: PopAdLdVar
  loc_A2D3E5: FLdPr Me
  loc_A2D3E8: VCallAd Control_ID_FiltroMsk
  loc_A2D3EB: FStAdFunc var_A8
  loc_A2D3EE: FLdPr var_A8
  loc_A2D3F1: LateIdSt
  loc_A2D3F6: FFree1Ad var_A8
  loc_A2D3F9: LitStr "CoinNope"
  loc_A2D3FC: FStStrCopy var_B0
  loc_A2D3FF: FLdRfVar var_B0
  loc_A2D402: FLdPr Me
  loc_A2D405: MemLdRfVar from_stack_1.global_56
  loc_A2D408: NewIfNullPr clsnotapedido
  loc_A2D40B: Call clsnotapedido.Sort(from_stack_1v)
  loc_A2D410: FFree1Str var_B0
  loc_A2D413: Branch loc_A2D44A
  loc_A2D416: LitVarStr var_94, "##"
  loc_A2D41B: PopAdLdVar
  loc_A2D41C: FLdPr Me
  loc_A2D41F: VCallAd Control_ID_FiltroMsk
  loc_A2D422: FStAdFunc var_A8
  loc_A2D425: FLdPr var_A8
  loc_A2D428: LateIdSt
  loc_A2D42D: FFree1Ad var_A8
  loc_A2D430: LitStr "CodiTico"
  loc_A2D433: FStStrCopy var_B0
  loc_A2D436: FLdRfVar var_B0
  loc_A2D439: FLdPr Me
  loc_A2D43C: MemLdRfVar from_stack_1.global_56
  loc_A2D43F: NewIfNullPr clsnotapedido
  loc_A2D442: Call clsnotapedido.Sort(from_stack_1v)
  loc_A2D447: FFree1Str var_B0
  loc_A2D44A: Branch loc_A2D48A
  loc_A2D44D: FLdI2 var_AC
  loc_A2D450: LitI2_Byte 5
  loc_A2D452: EqI2
  loc_A2D453: BranchF loc_A2D48A
  loc_A2D456: LitVarStr var_94, "########"
  loc_A2D45B: PopAdLdVar
  loc_A2D45C: FLdPr Me
  loc_A2D45F: VCallAd Control_ID_FiltroMsk
  loc_A2D462: FStAdFunc var_A8
  loc_A2D465: FLdPr var_A8
  loc_A2D468: LateIdSt
  loc_A2D46D: FFree1Ad var_A8
  loc_A2D470: LitStr "CodiNope"
  loc_A2D473: FStStrCopy var_B0
  loc_A2D476: FLdRfVar var_B0
  loc_A2D479: FLdPr Me
  loc_A2D47C: MemLdRfVar from_stack_1.global_56
  loc_A2D47F: NewIfNullPr clsnotapedido
  loc_A2D482: Call clsnotapedido.Sort(from_stack_1v)
  loc_A2D487: FFree1Str var_B0
  loc_A2D48A: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '95E86C
  'Data Table: 484B14
  loc_95E854: FLdPr Me
  loc_95E857: VCallAd Control_ID_dgdABMS
  loc_95E85A: FStAdFunc var_88
  loc_95E85D: FLdRfVar var_88
  loc_95E860: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_95E865: FFree1Ad var_88
  loc_95E868: ExitProcHresult
  loc_95E869: CExtInstUnk
End Sub

Private Sub dgdABMS_UnknownEvent_1 '95EB18
  'Data Table: 484B14
  loc_95EB00: FLdPr Me
  loc_95EB03: VCallAd Control_ID_dgdABMS
  loc_95EB06: FStAdFunc var_88
  loc_95EB09: FLdRfVar var_88
  loc_95EB0C: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_95EB11: FFree1Ad var_88
  loc_95EB14: ExitProcHresult
  loc_95EB15: CCyI4
  loc_95EB16: DOC
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '999B20
  'Data Table: 484B14
  loc_999AC4: FLdRfVar var_B4
  loc_999AC7: FLdRfVar var_B0
  loc_999ACA: FLdI2 ColIndex
  loc_999ACD: CVarI2 var_A8
  loc_999AD0: PopAdLdVar
  loc_999AD1: FLdPr Me
  loc_999AD4: VCallAd Control_ID_dgdABMS
  loc_999AD7: FStAdFunc var_88
  loc_999ADA: FLdPr var_88
  loc_999ADD: LateIdLdVar var_98 DispID_105 0
  loc_999AE4: CastAdVar Me
  loc_999AE8: FStAdFunc var_AC
  loc_999AEB: FLdPr var_AC
  loc_999AEE: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_999AF3: FLdPr var_B0
  loc_999AF6:  = Me.DataField
  loc_999AFB: FLdZeroAd var_B4
  loc_999AFE: PopTmpLdAdStr
  loc_999B02: FLdPr Me
  loc_999B05: MemLdRfVar from_stack_1.global_56
  loc_999B08: NewIfNullPr clsnotapedido
  loc_999B0B: Call clsnotapedido.Sort(from_stack_1v)
  loc_999B10: FFree1Str var_B8
  loc_999B13: FFreeAd var_88 = "": var_AC = ""
  loc_999B1C: FFree1Var var_98 = ""
  loc_999B1F: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) 'BB8DC4
  'Data Table: 484B14
  loc_BB7EF4: FLdPr Me
  loc_BB7EF7: MemLdUI1 global_76
  loc_BB7EFB: CI2UI1
  loc_BB7EFD: LitI2_Byte 0
  loc_BB7EFF: EqI2
  loc_BB7F00: FLdRfVar var_88
  loc_BB7F03: FLdPr Me
  loc_BB7F06: MemLdRfVar from_stack_1.global_56
  loc_BB7F09: NewIfNullPr clsnotapedido
  loc_BB7F0C: from_stack_1 = clsnotapedido.RecordCount
  loc_BB7F11: ILdRf var_88
  loc_BB7F14: LitI4 0
  loc_BB7F19: GtI4
  loc_BB7F1A: AndI4
  loc_BB7F1B: BranchF loc_BB8DBD
  loc_BB7F1E: FLdRfVar var_8A
  loc_BB7F21: FLdPr Me
  loc_BB7F24: MemLdRfVar from_stack_1.global_56
  loc_BB7F27: NewIfNullPr clsnotapedido
  loc_BB7F2A: from_stack_1 = clsnotapedido.BOF
  loc_BB7F2F: FLdI2 var_8A
  loc_BB7F32: BranchF loc_BB7F43
  loc_BB7F35: FLdPr Me
  loc_BB7F38: MemLdRfVar from_stack_1.global_56
  loc_BB7F3B: NewIfNullPr clsnotapedido
  loc_BB7F3E: Call clsnotapedido.MoveFirst()
  loc_BB7F43: FLdRfVar var_8A
  loc_BB7F46: FLdPr Me
  loc_BB7F49: MemLdRfVar from_stack_1.global_56
  loc_BB7F4C: NewIfNullPr clsnotapedido
  loc_BB7F4F: from_stack_1 = clsnotapedido.EOF
  loc_BB7F54: FLdI2 var_8A
  loc_BB7F57: BranchF loc_BB7F68
  loc_BB7F5A: FLdPr Me
  loc_BB7F5D: MemLdRfVar from_stack_1.global_56
  loc_BB7F60: NewIfNullPr clsnotapedido
  loc_BB7F63: Call clsnotapedido.MoveLast()
  loc_BB7F68: Call Proc_127_26_A36368()
  loc_BB7F6D: LitStr "SET @TotalCoti=0.00;"
  loc_BB7F70: FLdPr Me
  loc_BB7F73: MemLdRfVar from_stack_1.global_60
  loc_BB7F76: NewIfNullPr clsbase
  loc_BB7F79: Call clsbase.RedefineRS(from_stack_1v)
  loc_BB7F7E: LitStr "SELECT tbl.*, CantItco*ImunItco TotalItem "
  loc_BB7F81: LitStr "FROM ("
  loc_BB7F84: ConcatStr
  loc_BB7F85: FStStrNoPop var_90
  loc_BB7F88: LitStr "SELECT itc.*, DetaInsu"
  loc_BB7F8B: ConcatStr
  loc_BB7F8C: FStStrNoPop var_94
  loc_BB7F8F: LitStr ", if(tc.ReimpTico=1,1,IF(itc.CantItco- SUM(IFNULL(itcp.CantItco,0)) < CantItno- SUM(IFNULL(itcp.CantItco,0)),itc.CantItco- SUM(IFNULL(itcp.CantItco,0)),fnSaldItno(c.PeriInfo, c.CodiNope, itc.CodiItco))) SaldItno"
  loc_BB7F92: ConcatStr
  loc_BB7F93: FStStrNoPop var_98
  loc_BB7F96: LitStr "/*, IF(itc.CantItco-SUM(IFNULL(itcp.CantItco,0)) < CantItno-SUM(IFNULL(itcp.CantItco,0)),itc.CantItco-SUM(IFNULL(itcp.CantItco,0)),fnSaldItno(c.PeriInfo, c.CodiNope, itc.CodiItco)) SaldItno*/"
  loc_BB7F99: ConcatStr
  loc_BB7F9A: FStStrNoPop var_9C
  loc_BB7F9D: LitStr ", itn.CodiPart, itn.CodiOrga, itn.CodiFifu, itn.CodiUnga"
  loc_BB7FA0: ConcatStr
  loc_BB7FA1: FStStrNoPop var_A0
  loc_BB7FA4: LitStr "/*, ROUND(if(tc.ReimpTico=1,1,IF(itc.CantItco- SUM(IFNULL(itcp.CantItco,0)) < CantItno- SUM(IFNULL(itcp.CantItco,0)),itc.CantItco- SUM(IFNULL(itcp.CantItco,0)),fnSaldItno(c.PeriInfo, c.CodiNope, itc.CodiItco))) * IF(itc.CantItco- SUM(IFNULL(itcp.CantItco,0)) < CantItno- SUM(IFNULL(itcp.CantItco,0)),itc.CantItco- SUM(IFNULL(itcp.CantItco,0)),fnSaldItno(c.PeriInfo, c.CodiNope, itc.CodiItco)),2) TotalItem*/"
  loc_BB7FA7: ConcatStr
  loc_BB7FA8: FStStrNoPop var_A4
  loc_BB7FAB: LitStr " FROM cotizacion c"
  loc_BB7FAE: ConcatStr
  loc_BB7FAF: FStStrNoPop var_A8
  loc_BB7FB2: LitStr " INNER JOIN itemcotizacion itc ON itc.IdCoti = c.IdCoti"
  loc_BB7FB5: ConcatStr
  loc_BB7FB6: FStStrNoPop var_AC
  loc_BB7FB9: LitStr " INNER JOIN infogov.insumo i ON i.CodiInsu = itc.CodiInsu"
  loc_BB7FBC: ConcatStr
  loc_BB7FBD: FStStrNoPop var_B0
  loc_BB7FC0: LitStr " INNER JOIN itemnota itn ON itn.PeriInfo = itc.PeriInfo AND itn.CodiNope = itc.CodiNope AND itn.CodiItno = itc.CodiItco AND itn.IdImpu != 0 AND fnSaldItno(c.PeriInfo, c.CodiNope, itc.CodiItco) > 0"
  loc_BB7FC3: ConcatStr
  loc_BB7FC4: FStStrNoPop var_B4
  loc_BB7FC7: LitStr " INNER JOIN notapedido np ON np.PeriInfo = c.PeriInfo AND np.CodiNope = c.CodiNope"
  loc_BB7FCA: ConcatStr
  loc_BB7FCB: FStStrNoPop var_B8
  loc_BB7FCE: LitStr " INNER JOIN tipocompra tc ON tc.CodiTico = np.CodiTico"
  loc_BB7FD1: ConcatStr
  loc_BB7FD2: FStStrNoPop var_BC
  loc_BB7FD5: LitStr " LEFT JOIN ordencompra o ON o.IdCoti = c.IdCoti AND o.FeanOrco IS NULL"
  loc_BB7FD8: ConcatStr
  loc_BB7FD9: FStStrNoPop var_C0
  loc_BB7FDC: LitStr " LEFT JOIN itemcompra itcp ON itcp.PeriInfo = o.PeriInfo AND itcp.CodiOrco = o.CodiOrco AND itcp.CodiItco = itc.CodiItco AND itcp.AlteItco = itc.AlteItco"
  loc_BB7FDF: ConcatStr
  loc_BB7FE0: FStStrNoPop var_C4
  loc_BB7FE3: LitStr " WHERE c.IdCoti = "
  loc_BB7FE6: ConcatStr
  loc_BB7FE7: CVarStr var_100
  loc_BB7FEA: FLdRfVar var_F0
  loc_BB7FED: FLdRfVar var_E0
  loc_BB7FF0: LitVarStr var_DC, "IdCoti"
  loc_BB7FF5: PopAdLdVar
  loc_BB7FF6: FLdRfVar var_CC
  loc_BB7FF9: FLdRfVar var_C8
  loc_BB7FFC: FLdPr Me
  loc_BB7FFF: MemLdRfVar from_stack_1.global_56
  loc_BB8002: NewIfNullPr clsnotapedido
  loc_BB8005: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BB800A: FLdPr var_C8
  loc_BB800D:  = Me.Fields
  loc_BB8012: FLdPr var_CC
  loc_BB8015: from_stack_2 = Me.Item(from_stack_1)
  loc_BB801A: FLdPr var_E0
  loc_BB801D:  = Me.Value
  loc_BB8022: FLdRfVar var_F0
  loc_BB8025: ConcatVar var_110
  loc_BB8029: LitVarStr var_120, " GROUP BY c.PeriInfo, c.CodiNope, itc.CodiItco, itc.AlteItco"
  loc_BB802E: ConcatVar var_130
  loc_BB8032: LitVarStr var_140, " ) AS tbl;"
  loc_BB8037: ConcatVar var_150
  loc_BB803B: CStrVarVal var_154
  loc_BB803F: FLdPr Me
  loc_BB8042: MemLdRfVar from_stack_1.global_60
  loc_BB8045: NewIfNullPr clsbase
  loc_BB8048: Call clsbase.RedefineRS(from_stack_1v)
  loc_BB804D: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = ""
  loc_BB806E: FFreeAd var_C8 = "": var_CC = ""
  loc_BB8077: FFreeVar var_100 = "": var_F0 = "": var_110 = "": var_130 = ""
  loc_BB8084: LitI2_Byte 0
  loc_BB8086: CR8I2
  loc_BB8087: FLdPr Me
  loc_BB808A: MemStFPR8 global_120
  loc_BB808D: FLdRfVar var_88
  loc_BB8090: FLdPr Me
  loc_BB8093: MemLdRfVar from_stack_1.global_60
  loc_BB8096: NewIfNullPr clsbase
  loc_BB8099: from_stack_1 = clsbase.RecordCount
  loc_BB809E: ILdRf var_88
  loc_BB80A1: LitI4 0
  loc_BB80A6: GtI4
  loc_BB80A7: BranchF loc_BB8DBA
  loc_BB80AA: FLdPr Me
  loc_BB80AD: MemLdRfVar from_stack_1.global_60
  loc_BB80B0: NewIfNullPr clsbase
  loc_BB80B3: Call clsbase.MoveFirst()
  loc_BB80B8: FLdRfVar var_8A
  loc_BB80BB: FLdPr Me
  loc_BB80BE: MemLdRfVar from_stack_1.global_60
  loc_BB80C1: NewIfNullPr clsbase
  loc_BB80C4: from_stack_1 = clsbase.EOF
  loc_BB80C9: FLdI2 var_8A
  loc_BB80CC: NotI4
  loc_BB80CD: BranchF loc_BB8D78
  loc_BB80D0: LitStr "Municipalidad de Guaymallén"
  loc_BB80D3: LitStr "Municipalidad de Guaymallén"
  loc_BB80D6: EqStr
  loc_BB80D8: FLdRfVar var_F0
  loc_BB80DB: FLdRfVar var_E0
  loc_BB80DE: LitVarStr var_DC, "CodiTico"
  loc_BB80E3: PopAdLdVar
  loc_BB80E4: FLdRfVar var_CC
  loc_BB80E7: FLdRfVar var_C8
  loc_BB80EA: FLdPr Me
  loc_BB80ED: MemLdRfVar from_stack_1.global_56
  loc_BB80F0: NewIfNullPr clsnotapedido
  loc_BB80F3: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_BB80F8: FLdPr var_C8
  loc_BB80FB:  = Me.Fields
  loc_BB8100: FLdPr var_CC
  loc_BB8103: from_stack_2 = Me.Item(from_stack_1)
  loc_BB8108: FLdPr var_E0
  loc_BB810B:  = Me.Value
  loc_BB8110: FLdRfVar var_F0
  loc_BB8113: FnCIntVar
  loc_BB8115: LitI2_Byte &HB
  loc_BB8117: EqI2
  loc_BB8118: AndI4
  loc_BB8119: FFreeAd var_C8 = "": var_CC = ""
  loc_BB8122: FFree1Var var_F0 = ""
  loc_BB8125: BranchF loc_BB8749
  loc_BB8128: FLdRfVar var_2B0
  loc_BB812B: LitVarStr var_2AC, "CantItco"
  loc_BB8130: PopAdLdVar
  loc_BB8131: FLdRfVar var_29C
  loc_BB8134: FLdRfVar var_298
  loc_BB8137: FLdPr Me
  loc_BB813A: MemLdRfVar from_stack_1.global_60
  loc_BB813D: NewIfNullPr clsbase
  loc_BB8140: from_stack_1v = clsbase.RsFrmGet()
  loc_BB8145: FLdPr var_298
  loc_BB8148:  = Me.Fields
  loc_BB814D: FLdPr var_29C
  loc_BB8150: from_stack_2 = Me.Item(from_stack_1)
  loc_BB8155: FLdRfVar var_33C
  loc_BB8158: LitVarStr var_338, "ImunItco"
  loc_BB815D: PopAdLdVar
  loc_BB815E: FLdRfVar var_328
  loc_BB8161: FLdRfVar var_324
  loc_BB8164: FLdPr Me
  loc_BB8167: MemLdRfVar from_stack_1.global_60
  loc_BB816A: NewIfNullPr clsbase
  loc_BB816D: from_stack_1v = clsbase.RsFrmGet()
  loc_BB8172: FLdPr var_324
  loc_BB8175:  = Me.Fields
  loc_BB817A: FLdPr var_328
  loc_BB817D: from_stack_2 = Me.Item(from_stack_1)
  loc_BB8182: FLdRfVar var_3C8
  loc_BB8185: LitVarStr var_3C4, "TotalItem"
  loc_BB818A: PopAdLdVar
  loc_BB818B: FLdRfVar var_3B4
  loc_BB818E: FLdRfVar var_3B0
  loc_BB8191: FLdPr Me
  loc_BB8194: MemLdRfVar from_stack_1.global_60
  loc_BB8197: NewIfNullPr clsbase
  loc_BB819A: from_stack_1v = clsbase.RsFrmGet()
  loc_BB819F: FLdPr var_3B0
  loc_BB81A2:  = Me.Fields
  loc_BB81A7: FLdPr var_3B4
  loc_BB81AA: from_stack_2 = Me.Item(from_stack_1)
  loc_BB81AF: FLdRfVar var_100
  loc_BB81B2: FLdRfVar var_E0
  loc_BB81B5: LitVarStr var_DC, "CodiItco"
  loc_BB81BA: PopAdLdVar
  loc_BB81BB: FLdRfVar var_CC
  loc_BB81BE: FLdRfVar var_C8
  loc_BB81C1: FLdPr Me
  loc_BB81C4: MemLdRfVar from_stack_1.global_60
  loc_BB81C7: NewIfNullPr clsbase
  loc_BB81CA: from_stack_1v = clsbase.RsFrmGet()
  loc_BB81CF: FLdPr var_C8
  loc_BB81D2:  = Me.Fields
  loc_BB81D7: FLdPr var_CC
  loc_BB81DA: from_stack_2 = Me.Item(from_stack_1)
  loc_BB81DF: FLdPr var_E0
  loc_BB81E2:  = Me.Value
  loc_BB81E7: FLdRfVar var_100
  loc_BB81EA: LitI4 9
  loc_BB81EF: FLdRfVar var_F0
  loc_BB81F2: ImpAdCallFPR4  = Chr()
  loc_BB81F7: FLdRfVar var_F0
  loc_BB81FA: ConcatVar var_110
  loc_BB81FE: FLdRfVar var_130
  loc_BB8201: FLdRfVar var_160
  loc_BB8204: LitVarStr var_120, "AlteItco"
  loc_BB8209: PopAdLdVar
  loc_BB820A: FLdRfVar var_15C
  loc_BB820D: FLdRfVar var_158
  loc_BB8210: FLdPr Me
  loc_BB8213: MemLdRfVar from_stack_1.global_60
  loc_BB8216: NewIfNullPr clsbase
  loc_BB8219: from_stack_1v = clsbase.RsFrmGet()
  loc_BB821E: FLdPr var_158
  loc_BB8221:  = Me.Fields
  loc_BB8226: FLdPr var_15C
  loc_BB8229: from_stack_2 = Me.Item(from_stack_1)
  loc_BB822E: FLdPr var_160
  loc_BB8231:  = Me.Value
  loc_BB8236: FLdRfVar var_130
  loc_BB8239: ConcatVar var_150
  loc_BB823D: LitI4 9
  loc_BB8242: FLdRfVar var_170
  loc_BB8245: ImpAdCallFPR4  = Chr()
  loc_BB824A: FLdRfVar var_170
  loc_BB824D: ConcatVar var_180
  loc_BB8251: FLdRfVar var_19C
  loc_BB8254: FLdRfVar var_18C
  loc_BB8257: LitVarStr var_140, "CodiInsu"
  loc_BB825C: PopAdLdVar
  loc_BB825D: FLdRfVar var_188
  loc_BB8260: FLdRfVar var_184
  loc_BB8263: FLdPr Me
  loc_BB8266: MemLdRfVar from_stack_1.global_60
  loc_BB8269: NewIfNullPr clsbase
  loc_BB826C: from_stack_1v = clsbase.RsFrmGet()
  loc_BB8271: FLdPr var_184
  loc_BB8274:  = Me.Fields
  loc_BB8279: FLdPr var_188
  loc_BB827C: from_stack_2 = Me.Item(from_stack_1)
  loc_BB8281: FLdPr var_18C
  loc_BB8284:  = Me.Value
  loc_BB8289: FLdRfVar var_19C
  loc_BB828C: ConcatVar var_1AC
  loc_BB8290: LitI4 9
  loc_BB8295: FLdRfVar var_1BC
  loc_BB8298: ImpAdCallFPR4  = Chr()
  loc_BB829D: FLdRfVar var_1BC
  loc_BB82A0: ConcatVar var_1CC
  loc_BB82A4: FLdRfVar var_1F8
  loc_BB82A7: FLdRfVar var_1E8
  loc_BB82AA: LitVarStr var_1E4, "DetaInsu"
  loc_BB82AF: PopAdLdVar
  loc_BB82B0: FLdRfVar var_1D4
  loc_BB82B3: FLdRfVar var_1D0
  loc_BB82B6: FLdPr Me
  loc_BB82B9: MemLdRfVar from_stack_1.global_60
  loc_BB82BC: NewIfNullPr clsbase
  loc_BB82BF: from_stack_1v = clsbase.RsFrmGet()
  loc_BB82C4: FLdPr var_1D0
  loc_BB82C7:  = Me.Fields
  loc_BB82CC: FLdPr var_1D4
  loc_BB82CF: from_stack_2 = Me.Item(from_stack_1)
  loc_BB82D4: FLdPr var_1E8
  loc_BB82D7:  = Me.Value
  loc_BB82DC: FLdRfVar var_1F8
  loc_BB82DF: ConcatVar var_208
  loc_BB82E3: LitI4 9
  loc_BB82E8: FLdRfVar var_218
  loc_BB82EB: ImpAdCallFPR4  = Chr()
  loc_BB82F0: FLdRfVar var_218
  loc_BB82F3: ConcatVar var_228
  loc_BB82F7: FLdRfVar var_254
  loc_BB82FA: FLdRfVar var_244
  loc_BB82FD: LitVarStr var_240, "DetaItco"
  loc_BB8302: PopAdLdVar
  loc_BB8303: FLdRfVar var_230
  loc_BB8306: FLdRfVar var_22C
  loc_BB8309: FLdPr Me
  loc_BB830C: MemLdRfVar from_stack_1.global_60
  loc_BB830F: NewIfNullPr clsbase
  loc_BB8312: from_stack_1v = clsbase.RsFrmGet()
  loc_BB8317: FLdPr var_22C
  loc_BB831A:  = Me.Fields
  loc_BB831F: FLdPr var_230
  loc_BB8322: from_stack_2 = Me.Item(from_stack_1)
  loc_BB8327: FLdPr var_244
  loc_BB832A:  = Me.Value
  loc_BB832F: FLdRfVar var_254
  loc_BB8332: CStrVarTmp
  loc_BB8333: FStStrNoPop var_90
  loc_BB8336: ImpAdCallI2 Trim$()
  loc_BB833B: CVarStr var_264
  loc_BB833E: ConcatVar var_274
  loc_BB8342: LitI4 9
  loc_BB8347: FLdRfVar var_284
  loc_BB834A: ImpAdCallFPR4  = Chr()
  loc_BB834F: FLdRfVar var_284
  loc_BB8352: ConcatVar var_294
  loc_BB8356: LitI4 1
  loc_BB835B: LitI4 1
  loc_BB8360: LitVarStr var_2D0, "0.000"
  loc_BB8365: FStVarCopyObj var_2E0
  loc_BB8368: FLdRfVar var_2E0
  loc_BB836B: FLdZeroAd var_2B0
  loc_BB836E: CVarAd
  loc_BB8372: ImpAdCallI2 Format$(, )
  loc_BB8377: CVarStr var_2F0
  loc_BB837A: ConcatVar var_300
  loc_BB837E: LitI4 9
  loc_BB8383: FLdRfVar var_310
  loc_BB8386: ImpAdCallFPR4  = Chr()
  loc_BB838B: FLdRfVar var_310
  loc_BB838E: ConcatVar var_320
  loc_BB8392: LitI4 1
  loc_BB8397: LitI4 1
  loc_BB839C: LitVarStr var_35C, "0.00"
  loc_BB83A1: FStVarCopyObj var_36C
  loc_BB83A4: FLdRfVar var_36C
  loc_BB83A7: FLdZeroAd var_33C
  loc_BB83AA: CVarAd
  loc_BB83AE: ImpAdCallI2 Format$(, )
  loc_BB83B3: CVarStr var_37C
  loc_BB83B6: ConcatVar var_38C
  loc_BB83BA: LitI4 9
  loc_BB83BF: FLdRfVar var_39C
  loc_BB83C2: ImpAdCallFPR4  = Chr()
  loc_BB83C7: FLdRfVar var_39C
  loc_BB83CA: ConcatVar var_3AC
  loc_BB83CE: LitI4 1
  loc_BB83D3: LitI4 1
  loc_BB83D8: LitVarStr var_3E8, "0.00"
  loc_BB83DD: FStVarCopyObj var_3F8
  loc_BB83E0: FLdRfVar var_3F8
  loc_BB83E3: FLdZeroAd var_3C8
  loc_BB83E6: CVarAd
  loc_BB83EA: ImpAdCallI2 Format$(, )
  loc_BB83EF: CVarStr var_408
  loc_BB83F2: ConcatVar var_418
  loc_BB83F6: LitI4 9
  loc_BB83FB: FLdRfVar var_428
  loc_BB83FE: ImpAdCallFPR4  = Chr()
  loc_BB8403: FLdRfVar var_428
  loc_BB8406: ConcatVar var_438
  loc_BB840A: FLdRfVar var_464
  loc_BB840D: FLdRfVar var_454
  loc_BB8410: LitVarStr var_450, "CodiPart"
  loc_BB8415: PopAdLdVar
  loc_BB8416: FLdRfVar var_440
  loc_BB8419: FLdRfVar var_43C
  loc_BB841C: FLdPr Me
  loc_BB841F: MemLdRfVar from_stack_1.global_60
  loc_BB8422: NewIfNullPr clsbase
  loc_BB8425: from_stack_1v = clsbase.RsFrmGet()
  loc_BB842A: FLdPr var_43C
  loc_BB842D:  = Me.Fields
  loc_BB8432: FLdPr var_440
  loc_BB8435: from_stack_2 = Me.Item(from_stack_1)
  loc_BB843A: FLdPr var_454
  loc_BB843D:  = Me.Value
  loc_BB8442: FLdRfVar var_464
  loc_BB8445: ConcatVar var_474
  loc_BB8449: LitI4 9
  loc_BB844E: FLdRfVar var_484
  loc_BB8451: ImpAdCallFPR4  = Chr()
  loc_BB8456: FLdRfVar var_484
  loc_BB8459: ConcatVar var_494
  loc_BB845D: FLdRfVar var_4C0
  loc_BB8460: FLdRfVar var_4B0
  loc_BB8463: LitVarStr var_4AC, "CodiOrga"
  loc_BB8468: PopAdLdVar
  loc_BB8469: FLdRfVar var_49C
  loc_BB846C: FLdRfVar var_498
  loc_BB846F: FLdPr Me
  loc_BB8472: MemLdRfVar from_stack_1.global_60
  loc_BB8475: NewIfNullPr clsbase
  loc_BB8478: from_stack_1v = clsbase.RsFrmGet()
  loc_BB847D: FLdPr var_498
  loc_BB8480:  = Me.Fields
  loc_BB8485: FLdPr var_49C
  loc_BB8488: from_stack_2 = Me.Item(from_stack_1)
  loc_BB848D: FLdPr var_4B0
  loc_BB8490:  = Me.Value
  loc_BB8495: FLdRfVar var_4C0
  loc_BB8498: ConcatVar var_4D0
  loc_BB849C: LitI4 9
  loc_BB84A1: FLdRfVar var_4E0
  loc_BB84A4: ImpAdCallFPR4  = Chr()
  loc_BB84A9: FLdRfVar var_4E0
  loc_BB84AC: ConcatVar var_4F0
  loc_BB84B0: FLdRfVar var_51C
  loc_BB84B3: FLdRfVar var_50C
  loc_BB84B6: LitVarStr var_508, "CodiFifu"
  loc_BB84BB: PopAdLdVar
  loc_BB84BC: FLdRfVar var_4F8
  loc_BB84BF: FLdRfVar var_4F4
  loc_BB84C2: FLdPr Me
  loc_BB84C5: MemLdRfVar from_stack_1.global_60
  loc_BB84C8: NewIfNullPr clsbase
  loc_BB84CB: from_stack_1v = clsbase.RsFrmGet()
  loc_BB84D0: FLdPr var_4F4
  loc_BB84D3:  = Me.Fields
  loc_BB84D8: FLdPr var_4F8
  loc_BB84DB: from_stack_2 = Me.Item(from_stack_1)
  loc_BB84E0: FLdPr var_50C
  loc_BB84E3:  = Me.Value
  loc_BB84E8: FLdRfVar var_51C
  loc_BB84EB: ConcatVar var_52C
  loc_BB84EF: LitI4 9
  loc_BB84F4: FLdRfVar var_53C
  loc_BB84F7: ImpAdCallFPR4  = Chr()
  loc_BB84FC: FLdRfVar var_53C
  loc_BB84FF: ConcatVar var_54C
  loc_BB8503: FLdRfVar var_578
  loc_BB8506: FLdRfVar var_568
  loc_BB8509: LitVarStr var_564, "CodiUnga"
  loc_BB850E: PopAdLdVar
  loc_BB850F: FLdRfVar var_554
  loc_BB8512: FLdRfVar var_550
  loc_BB8515: FLdPr Me
  loc_BB8518: MemLdRfVar from_stack_1.global_60
  loc_BB851B: NewIfNullPr clsbase
  loc_BB851E: from_stack_1v = clsbase.RsFrmGet()
  loc_BB8523: FLdPr var_550
  loc_BB8526:  = Me.Fields
  loc_BB852B: FLdPr var_554
  loc_BB852E: from_stack_2 = Me.Item(from_stack_1)
  loc_BB8533: FLdPr var_568
  loc_BB8536:  = Me.Value
  loc_BB853B: FLdRfVar var_578
  loc_BB853E: CStrVarTmp
  loc_BB853F: FStStrNoPop var_94
  loc_BB8542: ImpAdCallI2 Trim$()
  loc_BB8547: CVarStr var_588
  loc_BB854A: ConcatVar var_598
  loc_BB854E: LitI4 9
  loc_BB8553: FLdRfVar var_5A8
  loc_BB8556: ImpAdCallFPR4  = Chr()
  loc_BB855B: FLdRfVar var_5A8
  loc_BB855E: ConcatVar var_5B8
  loc_BB8562: FLdRfVar var_5E4
  loc_BB8565: FLdRfVar var_5D4
  loc_BB8568: LitVarStr var_5D0, "MarcaItco"
  loc_BB856D: PopAdLdVar
  loc_BB856E: FLdRfVar var_5C0
  loc_BB8571: FLdRfVar var_5BC
  loc_BB8574: FLdPr Me
  loc_BB8577: MemLdRfVar from_stack_1.global_60
  loc_BB857A: NewIfNullPr clsbase
  loc_BB857D: from_stack_1v = clsbase.RsFrmGet()
  loc_BB8582: FLdPr var_5BC
  loc_BB8585:  = Me.Fields
  loc_BB858A: FLdPr var_5C0
  loc_BB858D: from_stack_2 = Me.Item(from_stack_1)
  loc_BB8592: FLdPr var_5D4
  loc_BB8595:  = Me.Value
  loc_BB859A: FLdRfVar var_5E4
  loc_BB859D: ConcatVar var_5F4
  loc_BB85A1: LitI4 9
  loc_BB85A6: FLdRfVar var_604
  loc_BB85A9: ImpAdCallFPR4  = Chr()
  loc_BB85AE: FLdRfVar var_604
  loc_BB85B1: ConcatVar var_614
  loc_BB85B5: FLdRfVar var_640
  loc_BB85B8: FLdRfVar var_630
  loc_BB85BB: LitVarStr var_62C, "CaraItco"
  loc_BB85C0: PopAdLdVar
  loc_BB85C1: FLdRfVar var_61C
  loc_BB85C4: FLdRfVar var_618
  loc_BB85C7: FLdPr Me
  loc_BB85CA: MemLdRfVar from_stack_1.global_60
  loc_BB85CD: NewIfNullPr clsbase
  loc_BB85D0: from_stack_1v = clsbase.RsFrmGet()
  loc_BB85D5: FLdPr var_618
  loc_BB85D8:  = Me.Fields
  loc_BB85DD: FLdPr var_61C
  loc_BB85E0: from_stack_2 = Me.Item(from_stack_1)
  loc_BB85E5: FLdPr var_630
  loc_BB85E8:  = Me.Value
  loc_BB85ED: FLdRfVar var_640
  loc_BB85F0: ConcatVar var_650
  loc_BB85F4: CStrVarTmp
  loc_BB85F5: CVarStr var_660
  loc_BB85F8: PopAdLdVar
  loc_BB85F9: FLdPr Me
  loc_BB85FC: VCallAd Control_ID_ItemCotizacionFlex
  loc_BB85FF: FStAdFunc var_674
  loc_BB8602: FLdPr var_674
  loc_BB8605: LateIdCall
  loc_BB860D: FFreeStr var_90 = ""
  loc_BB8614: FFreeAd var_550 = "": var_554 = "": var_568 = "": var_5BC = "": var_5C0 = "": var_5D4 = "": var_618 = "": var_61C = "": var_630 = "": var_674 = "": var_C8 = "": var_CC = "": var_E0 = "": var_158 = "": var_15C = "": var_160 = "": var_184 = "": var_188 = "": var_18C = "": var_1D0 = "": var_1D4 = "": var_1E8 = "": var_22C = "": var_230 = "": var_244 = "": var_298 = "": var_29C = "": var_324 = "": var_328 = "": var_3B0 = "": var_3B4 = "": var_43C = "": var_440 = "": var_454 = "": var_498 = "": var_49C = "": var_4B0 = "": var_4F4 = "": var_4F8 = ""
  loc_BB8667: FFreeVar var_650 = "": var_660 = "": var_39C = "": var_3D8 = "": var_3F8 = "": var_3AC = "": var_408 = "": var_418 = "": var_428 = "": var_438 = "": var_464 = "": var_474 = "": var_484 = "": var_494 = "": var_4C0 = "": var_4D0 = "": var_4E0 = "": var_4F0 = "": var_51C = "": var_52C = "": var_53C = "": var_578 = "": var_54C = "": var_588 = "": var_598 = "": var_5A8 = "": var_5B8 = "": var_5E4 = "": var_5F4 = "": var_604 = "": var_614 = "": var_640 = "": var_100 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_180 = "": var_19C = "": var_1AC = "": var_1BC = "": var_1CC = "": var_1F8 = "": var_208 = "": var_218 = "": var_254 = "": var_228 = "": var_264 = "": var_274 = "": var_284 = "": var_2C0 = "": var_2E0 = "": var_294 = "": var_2F0 = "": var_300 = "": var_310 = "": var_34C = "": var_36C = "": var_320 = "": var_37C = ""
  loc_BB86E6: FLdPr Me
  loc_BB86E9: MemLdFPR8 global_120
  loc_BB86EC: CVarR8
  loc_BB86F0: FLdRfVar var_F0
  loc_BB86F3: FLdRfVar var_E0
  loc_BB86F6: LitVarStr var_DC, "TotalItem"
  loc_BB86FB: PopAdLdVar
  loc_BB86FC: FLdRfVar var_CC
  loc_BB86FF: FLdRfVar var_C8
  loc_BB8702: FLdPr Me
  loc_BB8705: MemLdRfVar from_stack_1.global_60
  loc_BB8708: NewIfNullPr clsbase
  loc_BB870B: from_stack_1v = clsbase.RsFrmGet()
  loc_BB8710: FLdPr var_C8
  loc_BB8713:  = Me.Fields
  loc_BB8718: FLdPr var_CC
  loc_BB871B: from_stack_2 = Me.Item(from_stack_1)
  loc_BB8720: FLdPr var_E0
  loc_BB8723:  = Me.Value
  loc_BB8728: FLdRfVar var_F0
  loc_BB872B: AddVar var_100
  loc_BB872F: CR4Var
  loc_BB8730: FLdPr Me
  loc_BB8733: MemStFPR8 global_120
  loc_BB8736: FFreeAd var_C8 = "": var_CC = ""
  loc_BB873F: FFreeVar var_F0 = ""
  loc_BB8746: Branch loc_BB8D67
  loc_BB8749: FLdRfVar var_2B0
  loc_BB874C: LitVarStr var_2AC, "SaldItno"
  loc_BB8751: PopAdLdVar
  loc_BB8752: FLdRfVar var_29C
  loc_BB8755: FLdRfVar var_298
  loc_BB8758: FLdPr Me
  loc_BB875B: MemLdRfVar from_stack_1.global_60
  loc_BB875E: NewIfNullPr clsbase
  loc_BB8761: from_stack_1v = clsbase.RsFrmGet()
  loc_BB8766: FLdPr var_298
  loc_BB8769:  = Me.Fields
  loc_BB876E: FLdPr var_29C
  loc_BB8771: from_stack_2 = Me.Item(from_stack_1)
  loc_BB8776: FLdRfVar var_33C
  loc_BB8779: LitVarStr var_338, "ImunItco"
  loc_BB877E: PopAdLdVar
  loc_BB877F: FLdRfVar var_328
  loc_BB8782: FLdRfVar var_324
  loc_BB8785: FLdPr Me
  loc_BB8788: MemLdRfVar from_stack_1.global_60
  loc_BB878B: NewIfNullPr clsbase
  loc_BB878E: from_stack_1v = clsbase.RsFrmGet()
  loc_BB8793: FLdPr var_324
  loc_BB8796:  = Me.Fields
  loc_BB879B: FLdPr var_328
  loc_BB879E: from_stack_2 = Me.Item(from_stack_1)
  loc_BB87A3: FLdRfVar var_3C8
  loc_BB87A6: LitVarStr var_3C4, "TotalItem"
  loc_BB87AB: PopAdLdVar
  loc_BB87AC: FLdRfVar var_3B4
  loc_BB87AF: FLdRfVar var_3B0
  loc_BB87B2: FLdPr Me
  loc_BB87B5: MemLdRfVar from_stack_1.global_60
  loc_BB87B8: NewIfNullPr clsbase
  loc_BB87BB: from_stack_1v = clsbase.RsFrmGet()
  loc_BB87C0: FLdPr var_3B0
  loc_BB87C3:  = Me.Fields
  loc_BB87C8: FLdPr var_3B4
  loc_BB87CB: from_stack_2 = Me.Item(from_stack_1)
  loc_BB87D0: FLdRfVar var_100
  loc_BB87D3: FLdRfVar var_E0
  loc_BB87D6: LitVarStr var_DC, "CodiItco"
  loc_BB87DB: PopAdLdVar
  loc_BB87DC: FLdRfVar var_CC
  loc_BB87DF: FLdRfVar var_C8
  loc_BB87E2: FLdPr Me
  loc_BB87E5: MemLdRfVar from_stack_1.global_60
  loc_BB87E8: NewIfNullPr clsbase
  loc_BB87EB: from_stack_1v = clsbase.RsFrmGet()
  loc_BB87F0: FLdPr var_C8
  loc_BB87F3:  = Me.Fields
  loc_BB87F8: FLdPr var_CC
  loc_BB87FB: from_stack_2 = Me.Item(from_stack_1)
  loc_BB8800: FLdPr var_E0
  loc_BB8803:  = Me.Value
  loc_BB8808: FLdRfVar var_100
  loc_BB880B: LitI4 9
  loc_BB8810: FLdRfVar var_F0
  loc_BB8813: ImpAdCallFPR4  = Chr()
  loc_BB8818: FLdRfVar var_F0
  loc_BB881B: ConcatVar var_110
  loc_BB881F: FLdRfVar var_130
  loc_BB8822: FLdRfVar var_160
  loc_BB8825: LitVarStr var_120, "AlteItco"
  loc_BB882A: PopAdLdVar
  loc_BB882B: FLdRfVar var_15C
  loc_BB882E: FLdRfVar var_158
  loc_BB8831: FLdPr Me
  loc_BB8834: MemLdRfVar from_stack_1.global_60
  loc_BB8837: NewIfNullPr clsbase
  loc_BB883A: from_stack_1v = clsbase.RsFrmGet()
  loc_BB883F: FLdPr var_158
  loc_BB8842:  = Me.Fields
  loc_BB8847: FLdPr var_15C
  loc_BB884A: from_stack_2 = Me.Item(from_stack_1)
  loc_BB884F: FLdPr var_160
  loc_BB8852:  = Me.Value
  loc_BB8857: FLdRfVar var_130
  loc_BB885A: ConcatVar var_150
  loc_BB885E: LitI4 9
  loc_BB8863: FLdRfVar var_170
  loc_BB8866: ImpAdCallFPR4  = Chr()
  loc_BB886B: FLdRfVar var_170
  loc_BB886E: ConcatVar var_180
  loc_BB8872: FLdRfVar var_19C
  loc_BB8875: FLdRfVar var_18C
  loc_BB8878: LitVarStr var_140, "CodiInsu"
  loc_BB887D: PopAdLdVar
  loc_BB887E: FLdRfVar var_188
  loc_BB8881: FLdRfVar var_184
  loc_BB8884: FLdPr Me
  loc_BB8887: MemLdRfVar from_stack_1.global_60
  loc_BB888A: NewIfNullPr clsbase
  loc_BB888D: from_stack_1v = clsbase.RsFrmGet()
  loc_BB8892: FLdPr var_184
  loc_BB8895:  = Me.Fields
  loc_BB889A: FLdPr var_188
  loc_BB889D: from_stack_2 = Me.Item(from_stack_1)
  loc_BB88A2: FLdPr var_18C
  loc_BB88A5:  = Me.Value
  loc_BB88AA: FLdRfVar var_19C
  loc_BB88AD: ConcatVar var_1AC
  loc_BB88B1: LitI4 9
  loc_BB88B6: FLdRfVar var_1BC
  loc_BB88B9: ImpAdCallFPR4  = Chr()
  loc_BB88BE: FLdRfVar var_1BC
  loc_BB88C1: ConcatVar var_1CC
  loc_BB88C5: FLdRfVar var_1F8
  loc_BB88C8: FLdRfVar var_1E8
  loc_BB88CB: LitVarStr var_1E4, "DetaInsu"
  loc_BB88D0: PopAdLdVar
  loc_BB88D1: FLdRfVar var_1D4
  loc_BB88D4: FLdRfVar var_1D0
  loc_BB88D7: FLdPr Me
  loc_BB88DA: MemLdRfVar from_stack_1.global_60
  loc_BB88DD: NewIfNullPr clsbase
  loc_BB88E0: from_stack_1v = clsbase.RsFrmGet()
  loc_BB88E5: FLdPr var_1D0
  loc_BB88E8:  = Me.Fields
  loc_BB88ED: FLdPr var_1D4
  loc_BB88F0: from_stack_2 = Me.Item(from_stack_1)
  loc_BB88F5: FLdPr var_1E8
  loc_BB88F8:  = Me.Value
  loc_BB88FD: FLdRfVar var_1F8
  loc_BB8900: ConcatVar var_208
  loc_BB8904: LitI4 9
  loc_BB8909: FLdRfVar var_218
  loc_BB890C: ImpAdCallFPR4  = Chr()
  loc_BB8911: FLdRfVar var_218
  loc_BB8914: ConcatVar var_228
  loc_BB8918: FLdRfVar var_254
  loc_BB891B: FLdRfVar var_244
  loc_BB891E: LitVarStr var_240, "DetaItco"
  loc_BB8923: PopAdLdVar
  loc_BB8924: FLdRfVar var_230
  loc_BB8927: FLdRfVar var_22C
  loc_BB892A: FLdPr Me
  loc_BB892D: MemLdRfVar from_stack_1.global_60
  loc_BB8930: NewIfNullPr clsbase
  loc_BB8933: from_stack_1v = clsbase.RsFrmGet()
  loc_BB8938: FLdPr var_22C
  loc_BB893B:  = Me.Fields
  loc_BB8940: FLdPr var_230
  loc_BB8943: from_stack_2 = Me.Item(from_stack_1)
  loc_BB8948: FLdPr var_244
  loc_BB894B:  = Me.Value
  loc_BB8950: FLdRfVar var_254
  loc_BB8953: CStrVarTmp
  loc_BB8954: FStStrNoPop var_90
  loc_BB8957: ImpAdCallI2 Trim$()
  loc_BB895C: CVarStr var_264
  loc_BB895F: ConcatVar var_274
  loc_BB8963: LitI4 9
  loc_BB8968: FLdRfVar var_284
  loc_BB896B: ImpAdCallFPR4  = Chr()
  loc_BB8970: FLdRfVar var_284
  loc_BB8973: ConcatVar var_294
  loc_BB8977: LitI4 1
  loc_BB897C: LitI4 1
  loc_BB8981: LitVarStr var_2D0, "0.000"
  loc_BB8986: FStVarCopyObj var_2E0
  loc_BB8989: FLdRfVar var_2E0
  loc_BB898C: FLdZeroAd var_2B0
  loc_BB898F: CVarAd
  loc_BB8993: ImpAdCallI2 Format$(, )
  loc_BB8998: CVarStr var_2F0
  loc_BB899B: ConcatVar var_300
  loc_BB899F: LitI4 9
  loc_BB89A4: FLdRfVar var_310
  loc_BB89A7: ImpAdCallFPR4  = Chr()
  loc_BB89AC: FLdRfVar var_310
  loc_BB89AF: ConcatVar var_320
  loc_BB89B3: LitI4 1
  loc_BB89B8: LitI4 1
  loc_BB89BD: LitVarStr var_35C, "0.00"
  loc_BB89C2: FStVarCopyObj var_36C
  loc_BB89C5: FLdRfVar var_36C
  loc_BB89C8: FLdZeroAd var_33C
  loc_BB89CB: CVarAd
  loc_BB89CF: ImpAdCallI2 Format$(, )
  loc_BB89D4: CVarStr var_37C
  loc_BB89D7: ConcatVar var_38C
  loc_BB89DB: LitI4 9
  loc_BB89E0: FLdRfVar var_39C
  loc_BB89E3: ImpAdCallFPR4  = Chr()
  loc_BB89E8: FLdRfVar var_39C
  loc_BB89EB: ConcatVar var_3AC
  loc_BB89EF: LitI4 1
  loc_BB89F4: LitI4 1
  loc_BB89F9: LitVarStr var_3E8, "0.00"
  loc_BB89FE: FStVarCopyObj var_3F8
  loc_BB8A01: FLdRfVar var_3F8
  loc_BB8A04: FLdZeroAd var_3C8
  loc_BB8A07: CVarAd
  loc_BB8A0B: ImpAdCallI2 Format$(, )
  loc_BB8A10: CVarStr var_408
  loc_BB8A13: ConcatVar var_418
  loc_BB8A17: LitI4 9
  loc_BB8A1C: FLdRfVar var_428
  loc_BB8A1F: ImpAdCallFPR4  = Chr()
  loc_BB8A24: FLdRfVar var_428
  loc_BB8A27: ConcatVar var_438
  loc_BB8A2B: FLdRfVar var_464
  loc_BB8A2E: FLdRfVar var_454
  loc_BB8A31: LitVarStr var_450, "CodiPart"
  loc_BB8A36: PopAdLdVar
  loc_BB8A37: FLdRfVar var_440
  loc_BB8A3A: FLdRfVar var_43C
  loc_BB8A3D: FLdPr Me
  loc_BB8A40: MemLdRfVar from_stack_1.global_60
  loc_BB8A43: NewIfNullPr clsbase
  loc_BB8A46: from_stack_1v = clsbase.RsFrmGet()
  loc_BB8A4B: FLdPr var_43C
  loc_BB8A4E:  = Me.Fields
  loc_BB8A53: FLdPr var_440
  loc_BB8A56: from_stack_2 = Me.Item(from_stack_1)
  loc_BB8A5B: FLdPr var_454
  loc_BB8A5E:  = Me.Value
  loc_BB8A63: FLdRfVar var_464
  loc_BB8A66: ConcatVar var_474
  loc_BB8A6A: LitI4 9
  loc_BB8A6F: FLdRfVar var_484
  loc_BB8A72: ImpAdCallFPR4  = Chr()
  loc_BB8A77: FLdRfVar var_484
  loc_BB8A7A: ConcatVar var_494
  loc_BB8A7E: FLdRfVar var_4C0
  loc_BB8A81: FLdRfVar var_4B0
  loc_BB8A84: LitVarStr var_4AC, "CodiOrga"
  loc_BB8A89: PopAdLdVar
  loc_BB8A8A: FLdRfVar var_49C
  loc_BB8A8D: FLdRfVar var_498
  loc_BB8A90: FLdPr Me
  loc_BB8A93: MemLdRfVar from_stack_1.global_60
  loc_BB8A96: NewIfNullPr clsbase
  loc_BB8A99: from_stack_1v = clsbase.RsFrmGet()
  loc_BB8A9E: FLdPr var_498
  loc_BB8AA1:  = Me.Fields
  loc_BB8AA6: FLdPr var_49C
  loc_BB8AA9: from_stack_2 = Me.Item(from_stack_1)
  loc_BB8AAE: FLdPr var_4B0
  loc_BB8AB1:  = Me.Value
  loc_BB8AB6: FLdRfVar var_4C0
  loc_BB8AB9: ConcatVar var_4D0
  loc_BB8ABD: LitI4 9
  loc_BB8AC2: FLdRfVar var_4E0
  loc_BB8AC5: ImpAdCallFPR4  = Chr()
  loc_BB8ACA: FLdRfVar var_4E0
  loc_BB8ACD: ConcatVar var_4F0
  loc_BB8AD1: FLdRfVar var_51C
  loc_BB8AD4: FLdRfVar var_50C
  loc_BB8AD7: LitVarStr var_508, "CodiFifu"
  loc_BB8ADC: PopAdLdVar
  loc_BB8ADD: FLdRfVar var_4F8
  loc_BB8AE0: FLdRfVar var_4F4
  loc_BB8AE3: FLdPr Me
  loc_BB8AE6: MemLdRfVar from_stack_1.global_60
  loc_BB8AE9: NewIfNullPr clsbase
  loc_BB8AEC: from_stack_1v = clsbase.RsFrmGet()
  loc_BB8AF1: FLdPr var_4F4
  loc_BB8AF4:  = Me.Fields
  loc_BB8AF9: FLdPr var_4F8
  loc_BB8AFC: from_stack_2 = Me.Item(from_stack_1)
  loc_BB8B01: FLdPr var_50C
  loc_BB8B04:  = Me.Value
  loc_BB8B09: FLdRfVar var_51C
  loc_BB8B0C: ConcatVar var_52C
  loc_BB8B10: LitI4 9
  loc_BB8B15: FLdRfVar var_53C
  loc_BB8B18: ImpAdCallFPR4  = Chr()
  loc_BB8B1D: FLdRfVar var_53C
  loc_BB8B20: ConcatVar var_54C
  loc_BB8B24: FLdRfVar var_578
  loc_BB8B27: FLdRfVar var_568
  loc_BB8B2A: LitVarStr var_564, "CodiUnga"
  loc_BB8B2F: PopAdLdVar
  loc_BB8B30: FLdRfVar var_554
  loc_BB8B33: FLdRfVar var_550
  loc_BB8B36: FLdPr Me
  loc_BB8B39: MemLdRfVar from_stack_1.global_60
  loc_BB8B3C: NewIfNullPr clsbase
  loc_BB8B3F: from_stack_1v = clsbase.RsFrmGet()
  loc_BB8B44: FLdPr var_550
  loc_BB8B47:  = Me.Fields
  loc_BB8B4C: FLdPr var_554
  loc_BB8B4F: from_stack_2 = Me.Item(from_stack_1)
  loc_BB8B54: FLdPr var_568
  loc_BB8B57:  = Me.Value
  loc_BB8B5C: FLdRfVar var_578
  loc_BB8B5F: CStrVarTmp
  loc_BB8B60: FStStrNoPop var_94
  loc_BB8B63: ImpAdCallI2 Trim$()
  loc_BB8B68: CVarStr var_588
  loc_BB8B6B: ConcatVar var_598
  loc_BB8B6F: LitI4 9
  loc_BB8B74: FLdRfVar var_5A8
  loc_BB8B77: ImpAdCallFPR4  = Chr()
  loc_BB8B7C: FLdRfVar var_5A8
  loc_BB8B7F: ConcatVar var_5B8
  loc_BB8B83: FLdRfVar var_5E4
  loc_BB8B86: FLdRfVar var_5D4
  loc_BB8B89: LitVarStr var_5D0, "MarcaItco"
  loc_BB8B8E: PopAdLdVar
  loc_BB8B8F: FLdRfVar var_5C0
  loc_BB8B92: FLdRfVar var_5BC
  loc_BB8B95: FLdPr Me
  loc_BB8B98: MemLdRfVar from_stack_1.global_60
  loc_BB8B9B: NewIfNullPr clsbase
  loc_BB8B9E: from_stack_1v = clsbase.RsFrmGet()
  loc_BB8BA3: FLdPr var_5BC
  loc_BB8BA6:  = Me.Fields
  loc_BB8BAB: FLdPr var_5C0
  loc_BB8BAE: from_stack_2 = Me.Item(from_stack_1)
  loc_BB8BB3: FLdPr var_5D4
  loc_BB8BB6:  = Me.Value
  loc_BB8BBB: FLdRfVar var_5E4
  loc_BB8BBE: ConcatVar var_5F4
  loc_BB8BC2: LitI4 9
  loc_BB8BC7: FLdRfVar var_604
  loc_BB8BCA: ImpAdCallFPR4  = Chr()
  loc_BB8BCF: FLdRfVar var_604
  loc_BB8BD2: ConcatVar var_614
  loc_BB8BD6: FLdRfVar var_640
  loc_BB8BD9: FLdRfVar var_630
  loc_BB8BDC: LitVarStr var_62C, "CaraItco"
  loc_BB8BE1: PopAdLdVar
  loc_BB8BE2: FLdRfVar var_61C
  loc_BB8BE5: FLdRfVar var_618
  loc_BB8BE8: FLdPr Me
  loc_BB8BEB: MemLdRfVar from_stack_1.global_60
  loc_BB8BEE: NewIfNullPr clsbase
  loc_BB8BF1: from_stack_1v = clsbase.RsFrmGet()
  loc_BB8BF6: FLdPr var_618
  loc_BB8BF9:  = Me.Fields
  loc_BB8BFE: FLdPr var_61C
  loc_BB8C01: from_stack_2 = Me.Item(from_stack_1)
  loc_BB8C06: FLdPr var_630
  loc_BB8C09:  = Me.Value
  loc_BB8C0E: FLdRfVar var_640
  loc_BB8C11: ConcatVar var_650
  loc_BB8C15: CStrVarTmp
  loc_BB8C16: CVarStr var_660
  loc_BB8C19: PopAdLdVar
  loc_BB8C1A: FLdPr Me
  loc_BB8C1D: VCallAd Control_ID_ItemCotizacionFlex
  loc_BB8C20: FStAdFunc var_674
  loc_BB8C23: FLdPr var_674
  loc_BB8C26: LateIdCall
  loc_BB8C2E: FFreeStr var_90 = ""
  loc_BB8C35: FFreeAd var_550 = "": var_554 = "": var_568 = "": var_5BC = "": var_5C0 = "": var_5D4 = "": var_618 = "": var_61C = "": var_630 = "": var_674 = "": var_C8 = "": var_CC = "": var_E0 = "": var_158 = "": var_15C = "": var_160 = "": var_184 = "": var_188 = "": var_18C = "": var_1D0 = "": var_1D4 = "": var_1E8 = "": var_22C = "": var_230 = "": var_244 = "": var_298 = "": var_29C = "": var_324 = "": var_328 = "": var_3B0 = "": var_3B4 = "": var_43C = "": var_440 = "": var_454 = "": var_498 = "": var_49C = "": var_4B0 = "": var_4F4 = "": var_4F8 = ""
  loc_BB8C88: FFreeVar var_650 = "": var_660 = "": var_39C = "": var_3D8 = "": var_3F8 = "": var_3AC = "": var_408 = "": var_418 = "": var_428 = "": var_438 = "": var_464 = "": var_474 = "": var_484 = "": var_494 = "": var_4C0 = "": var_4D0 = "": var_4E0 = "": var_4F0 = "": var_51C = "": var_52C = "": var_53C = "": var_578 = "": var_54C = "": var_588 = "": var_598 = "": var_5A8 = "": var_5B8 = "": var_5E4 = "": var_5F4 = "": var_604 = "": var_614 = "": var_640 = "": var_100 = "": var_F0 = "": var_110 = "": var_130 = "": var_150 = "": var_170 = "": var_180 = "": var_19C = "": var_1AC = "": var_1BC = "": var_1CC = "": var_1F8 = "": var_208 = "": var_218 = "": var_254 = "": var_228 = "": var_264 = "": var_274 = "": var_284 = "": var_2C0 = "": var_2E0 = "": var_294 = "": var_2F0 = "": var_300 = "": var_310 = "": var_34C = "": var_36C = "": var_320 = "": var_37C = ""
  loc_BB8D07: FLdPr Me
  loc_BB8D0A: MemLdFPR8 global_120
  loc_BB8D0D: CVarR8
  loc_BB8D11: FLdRfVar var_F0
  loc_BB8D14: FLdRfVar var_E0
  loc_BB8D17: LitVarStr var_DC, "TotalItem"
  loc_BB8D1C: PopAdLdVar
  loc_BB8D1D: FLdRfVar var_CC
  loc_BB8D20: FLdRfVar var_C8
  loc_BB8D23: FLdPr Me
  loc_BB8D26: MemLdRfVar from_stack_1.global_60
  loc_BB8D29: NewIfNullPr clsbase
  loc_BB8D2C: from_stack_1v = clsbase.RsFrmGet()
  loc_BB8D31: FLdPr var_C8
  loc_BB8D34:  = Me.Fields
  loc_BB8D39: FLdPr var_CC
  loc_BB8D3C: from_stack_2 = Me.Item(from_stack_1)
  loc_BB8D41: FLdPr var_E0
  loc_BB8D44:  = Me.Value
  loc_BB8D49: FLdRfVar var_F0
  loc_BB8D4C: AddVar var_100
  loc_BB8D50: CR4Var
  loc_BB8D51: FLdPr Me
  loc_BB8D54: MemStFPR8 global_120
  loc_BB8D57: FFreeAd var_C8 = "": var_CC = ""
  loc_BB8D60: FFreeVar var_F0 = ""
  loc_BB8D67: FLdPr Me
  loc_BB8D6A: MemLdRfVar from_stack_1.global_60
  loc_BB8D6D: NewIfNullPr clsbase
  loc_BB8D70: Call clsbase.MoveSiguiente()
  loc_BB8D75: Branch loc_BB80B8
  loc_BB8D78: LitI4 1
  loc_BB8D7D: LitI4 1
  loc_BB8D82: LitVarStr var_120, "currency"
  loc_BB8D87: FStVarCopyObj var_F0
  loc_BB8D8A: FLdRfVar var_F0
  loc_BB8D8D: FLdPr Me
  loc_BB8D90: MemLdRfVar from_stack_1.global_120
  loc_BB8D93: CVarRef
  loc_BB8D98: ImpAdCallI2 Format$(, )
  loc_BB8D9D: FStStrNoPop var_90
  loc_BB8DA0: FLdPr Me
  loc_BB8DA3: VCallAd Control_ID_lblTotalCoti
  loc_BB8DA6: FStAdFunc var_C8
  loc_BB8DA9: FLdPr var_C8
  loc_BB8DAC: Me.Caption = from_stack_1
  loc_BB8DB1: FFree1Str var_90
  loc_BB8DB4: FFree1Ad var_C8
  loc_BB8DB7: FFree1Var var_F0 = ""
  loc_BB8DBA: Branch loc_BB8DC2
  loc_BB8DBD: Call Proc_127_26_A36368()
  loc_BB8DC2: ExitProcHresult
End Sub

Private Sub DetaNopeTxt_GotFocus() '94A280
  'Data Table: 484B14
  loc_94A26C: FLdPr Me
  loc_94A26F: VCallAd Control_ID_DetaNopeTxt
  loc_94A272: CVarAd
  loc_94A276: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A27B: FFree1Var var_94 = ""
  loc_94A27E: ExitProcHresult
End Sub

Private Sub DetaNopeTxt_Validate(Cancel As Boolean) '9C00D4
  'Data Table: 484B14
  loc_9C0018: FLdRfVar var_8A
  loc_9C001B: FLdPr Me
  loc_9C001E: VCallAd Control_ID_cmdCancelar
  loc_9C0021: FStAdFunc var_88
  loc_9C0024: FLdPr var_88
  loc_9C0027:  = Me.Value
  loc_9C002C: FLdI2 var_8A
  loc_9C002F: NotI4
  loc_9C0030: FLdRfVar var_92
  loc_9C0033: FLdPr Me
  loc_9C0036: VCallAd Control_ID_DetaNopeTxt
  loc_9C0039: FStAdFunc var_90
  loc_9C003C: FLdPr var_90
  loc_9C003F:  = Me.Enabled
  loc_9C0044: FLdI2 var_92
  loc_9C0047: AndI4
  loc_9C0048: FFreeAd var_88 = ""
  loc_9C004F: BranchF loc_9C00D0
  loc_9C0052: FLdRfVar var_98
  loc_9C0055: FLdPr Me
  loc_9C0058: VCallAd Control_ID_DetaNopeTxt
  loc_9C005B: FStAdFunc var_88
  loc_9C005E: FLdPr var_88
  loc_9C0061:  = Me.Text
  loc_9C0066: LitI2_Byte 0
  loc_9C0068: PopTmpLdAd2 var_9A
  loc_9C006B: LitI2_Byte 0
  loc_9C006D: PopTmpLdAd2 var_92
  loc_9C0070: LitI2_Byte 0
  loc_9C0072: PopTmpLdAd2 var_8A
  loc_9C0075: ILdRf var_98
  loc_9C0078: LitStr "Detalle de la Orden de Compra"
  loc_9C007B: ImpAdCallI2 Proc_266_26_A54CD8(, , , , )
  loc_9C0080: FStStrNoPop var_A0
  loc_9C0083: FLdPr Me
  loc_9C0086: MemStStrCopy
  loc_9C008A: FFreeStr var_98 = ""
  loc_9C0091: FFree1Ad var_88
  loc_9C0094: FLdPr Me
  loc_9C0097: VCallAd Control_ID_DetaNopeTxt
  loc_9C009A: FStAdFunc var_A8
  loc_9C009D: LitNothing
  loc_9C009F: CastAd
  loc_9C00A2: FStAdFunc var_A4
  loc_9C00A5: FLdRfVar var_A4
  loc_9C00A8: FLdZeroAd var_A8
  loc_9C00AB: FStAdFuncNoPop
  loc_9C00AE: CastAd
  loc_9C00B1: FStAdFunc var_90
  loc_9C00B4: FLdRfVar var_90
  loc_9C00B7: FLdPr Me
  loc_9C00BA: MemLdRfVar from_stack_1.global_80
  loc_9C00BD: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_9C00C2: IStI2 Cancel
  loc_9C00C5: FFreeAd var_88 = "": var_90 = "": var_A4 = ""
  loc_9C00D0: ExitProcHresult
  loc_9C00D1: ImpAdLdRf MemVar_519398
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '94A3E8
  'Data Table: 484B14
  loc_94A3D4: FLdPr Me
  loc_94A3D7: VCallAd Control_ID_FiltroMsk
  loc_94A3DA: CVarAd
  loc_94A3DE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A3E3: FFree1Var var_94 = ""
  loc_94A3E6: ExitProcHresult
End Sub

Private Sub FiltroMsk_Change() 'AB35DC
  'Data Table: 484B14
  loc_AB3070: ILdRf Me
  loc_AB3073: CastAd
  loc_AB3076: FStAdFunc var_88
  loc_AB3079: FLdRfVar var_88
  loc_AB307C: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_AB3081: FFree1Ad var_88
  loc_AB3084: FLdPr Me
  loc_AB3087: VCallAd Control_ID_FiltroMsk
  loc_AB308A: FStAdFunc var_88
  loc_AB308D: FLdPr var_88
  loc_AB3090: LateIdLdVar var_98 DispID_22 0
  loc_AB3097: CStrVarTmp
  loc_AB3098: FStStrNoPop var_9C
  loc_AB309B: ImpAdCallI2 Trim$()
  loc_AB30A0: FStStrNoPop var_A0
  loc_AB30A3: LitStr vbNullString
  loc_AB30A6: NeStr
  loc_AB30A8: FFreeStr var_9C = ""
  loc_AB30AF: FFree1Ad var_88
  loc_AB30B2: FFree1Var var_98 = ""
  loc_AB30B5: BranchF loc_AB34A7
  loc_AB30B8: FLdRfVar var_A2
  loc_AB30BB: FLdPr Me
  loc_AB30BE: VCallAd Control_ID_FiltroCbo
  loc_AB30C1: FStAdFunc var_88
  loc_AB30C4: FLdPr var_88
  loc_AB30C7:  = Me.ListIndex
  loc_AB30CC: FLdI2 var_A2
  loc_AB30CF: LitI2_Byte 0
  loc_AB30D1: EqI2
  loc_AB30D2: FFree1Ad var_88
  loc_AB30D5: BranchF loc_AB3147
  loc_AB30D8: LitStr "CodiNope = "
  loc_AB30DB: FLdPr Me
  loc_AB30DE: VCallAd Control_ID_FiltroMsk
  loc_AB30E1: FStAdFunc var_88
  loc_AB30E4: FLdPr var_88
  loc_AB30E7: LateIdLdVar var_98 DispID_22 0
  loc_AB30EE: CStrVarTmp
  loc_AB30EF: FStStrNoPop var_9C
  loc_AB30F2: ConcatStr
  loc_AB30F3: PopTmpLdAdStr
  loc_AB30F7: FLdPr Me
  loc_AB30FA: MemLdRfVar from_stack_1.global_56
  loc_AB30FD: NewIfNullPr clsnotapedido
  loc_AB3100: Call clsnotapedido.Filter(from_stack_1v)
  loc_AB3105: FFreeStr var_9C = ""
  loc_AB310C: FFree1Ad var_88
  loc_AB310F: FFree1Var var_98 = ""
  loc_AB3112: LitStr "número de la Nota de Pedido sea igual a:"
  loc_AB3115: FLdPr Me
  loc_AB3118: VCallAd Control_ID_FiltroMsk
  loc_AB311B: FStAdFunc var_88
  loc_AB311E: FLdPr var_88
  loc_AB3121: LateIdLdVar var_98 DispID_22 0
  loc_AB3128: CStrVarTmp
  loc_AB3129: FStStrNoPop var_9C
  loc_AB312C: ConcatStr
  loc_AB312D: FStStrNoPop var_A0
  loc_AB3130: FLdPr Me
  loc_AB3133: MemStStrCopy
  loc_AB3137: FFreeStr var_9C = ""
  loc_AB313E: FFree1Ad var_88
  loc_AB3141: FFree1Var var_98 = ""
  loc_AB3144: Branch loc_AB34A4
  loc_AB3147: FLdRfVar var_A2
  loc_AB314A: FLdPr Me
  loc_AB314D: VCallAd Control_ID_FiltroCbo
  loc_AB3150: FStAdFunc var_88
  loc_AB3153: FLdPr var_88
  loc_AB3156:  = Me.ListIndex
  loc_AB315B: FLdI2 var_A2
  loc_AB315E: LitI2_Byte 1
  loc_AB3160: EqI2
  loc_AB3161: FFree1Ad var_88
  loc_AB3164: BranchF loc_AB31D6
  loc_AB3167: LitStr "CucuPers = "
  loc_AB316A: FLdPr Me
  loc_AB316D: VCallAd Control_ID_FiltroMsk
  loc_AB3170: FStAdFunc var_88
  loc_AB3173: FLdPr var_88
  loc_AB3176: LateIdLdVar var_98 DispID_22 0
  loc_AB317D: CStrVarTmp
  loc_AB317E: FStStrNoPop var_9C
  loc_AB3181: ConcatStr
  loc_AB3182: PopTmpLdAdStr
  loc_AB3186: FLdPr Me
  loc_AB3189: MemLdRfVar from_stack_1.global_56
  loc_AB318C: NewIfNullPr clsnotapedido
  loc_AB318F: Call clsnotapedido.Filter(from_stack_1v)
  loc_AB3194: FFreeStr var_9C = ""
  loc_AB319B: FFree1Ad var_88
  loc_AB319E: FFree1Var var_98 = ""
  loc_AB31A1: LitStr "CUIT-CUIL del Proveedor sea igual a: "
  loc_AB31A4: FLdPr Me
  loc_AB31A7: VCallAd Control_ID_FiltroMsk
  loc_AB31AA: FStAdFunc var_88
  loc_AB31AD: FLdPr var_88
  loc_AB31B0: LateIdLdVar var_98 DispID_22 0
  loc_AB31B7: CStrVarTmp
  loc_AB31B8: FStStrNoPop var_9C
  loc_AB31BB: ConcatStr
  loc_AB31BC: FStStrNoPop var_A0
  loc_AB31BF: FLdPr Me
  loc_AB31C2: MemStStrCopy
  loc_AB31C6: FFreeStr var_9C = ""
  loc_AB31CD: FFree1Ad var_88
  loc_AB31D0: FFree1Var var_98 = ""
  loc_AB31D3: Branch loc_AB34A4
  loc_AB31D6: FLdRfVar var_A2
  loc_AB31D9: FLdPr Me
  loc_AB31DC: VCallAd Control_ID_FiltroCbo
  loc_AB31DF: FStAdFunc var_88
  loc_AB31E2: FLdPr var_88
  loc_AB31E5:  = Me.ListIndex
  loc_AB31EA: FLdI2 var_A2
  loc_AB31ED: LitI2_Byte 2
  loc_AB31EF: EqI2
  loc_AB31F0: FFree1Ad var_88
  loc_AB31F3: BranchF loc_AB326E
  loc_AB31F6: LitStr "DetaProv LIKE '" & Chr(37)
  loc_AB31F9: FLdPr Me
  loc_AB31FC: VCallAd Control_ID_FiltroMsk
  loc_AB31FF: FStAdFunc var_88
  loc_AB3202: FLdPr var_88
  loc_AB3205: LateIdLdVar var_98 DispID_22 0
  loc_AB320C: CStrVarTmp
  loc_AB320D: FStStrNoPop var_9C
  loc_AB3210: ConcatStr
  loc_AB3211: FStStrNoPop var_A0
  loc_AB3214: LitStr Chr(37) & "'"
  loc_AB3217: ConcatStr
  loc_AB3218: PopTmpLdAdStr
  loc_AB321C: FLdPr Me
  loc_AB321F: MemLdRfVar from_stack_1.global_56
  loc_AB3222: NewIfNullPr clsnotapedido
  loc_AB3225: Call clsnotapedido.Filter(from_stack_1v)
  loc_AB322A: FFreeStr var_9C = "": var_A0 = ""
  loc_AB3233: FFree1Ad var_88
  loc_AB3236: FFree1Var var_98 = ""
  loc_AB3239: LitStr "nombre del Proveedor contiene: "
  loc_AB323C: FLdPr Me
  loc_AB323F: VCallAd Control_ID_FiltroMsk
  loc_AB3242: FStAdFunc var_88
  loc_AB3245: FLdPr var_88
  loc_AB3248: LateIdLdVar var_98 DispID_22 0
  loc_AB324F: CStrVarTmp
  loc_AB3250: FStStrNoPop var_9C
  loc_AB3253: ConcatStr
  loc_AB3254: FStStrNoPop var_A0
  loc_AB3257: FLdPr Me
  loc_AB325A: MemStStrCopy
  loc_AB325E: FFreeStr var_9C = ""
  loc_AB3265: FFree1Ad var_88
  loc_AB3268: FFree1Var var_98 = ""
  loc_AB326B: Branch loc_AB34A4
  loc_AB326E: FLdRfVar var_A2
  loc_AB3271: FLdPr Me
  loc_AB3274: VCallAd Control_ID_FiltroCbo
  loc_AB3277: FStAdFunc var_88
  loc_AB327A: FLdPr var_88
  loc_AB327D:  = Me.ListIndex
  loc_AB3282: FLdI2 var_A2
  loc_AB3285: LitI2_Byte 3
  loc_AB3287: EqI2
  loc_AB3288: FFree1Ad var_88
  loc_AB328B: BranchF loc_AB3306
  loc_AB328E: LitStr "ExpeImpu LIKE '"
  loc_AB3291: FLdPr Me
  loc_AB3294: VCallAd Control_ID_FiltroMsk
  loc_AB3297: FStAdFunc var_88
  loc_AB329A: FLdPr var_88
  loc_AB329D: LateIdLdVar var_98 DispID_22 0
  loc_AB32A4: CStrVarTmp
  loc_AB32A5: FStStrNoPop var_9C
  loc_AB32A8: ConcatStr
  loc_AB32A9: FStStrNoPop var_A0
  loc_AB32AC: LitStr Chr(37) & "'"
  loc_AB32AF: ConcatStr
  loc_AB32B0: PopTmpLdAdStr
  loc_AB32B4: FLdPr Me
  loc_AB32B7: MemLdRfVar from_stack_1.global_56
  loc_AB32BA: NewIfNullPr clsnotapedido
  loc_AB32BD: Call clsnotapedido.Filter(from_stack_1v)
  loc_AB32C2: FFreeStr var_9C = "": var_A0 = ""
  loc_AB32CB: FFree1Ad var_88
  loc_AB32CE: FFree1Var var_98 = ""
  loc_AB32D1: LitStr "Expediente comience con: "
  loc_AB32D4: FLdPr Me
  loc_AB32D7: VCallAd Control_ID_FiltroMsk
  loc_AB32DA: FStAdFunc var_88
  loc_AB32DD: FLdPr var_88
  loc_AB32E0: LateIdLdVar var_98 DispID_22 0
  loc_AB32E7: CStrVarTmp
  loc_AB32E8: FStStrNoPop var_9C
  loc_AB32EB: ConcatStr
  loc_AB32EC: FStStrNoPop var_A0
  loc_AB32EF: FLdPr Me
  loc_AB32F2: MemStStrCopy
  loc_AB32F6: FFreeStr var_9C = ""
  loc_AB32FD: FFree1Ad var_88
  loc_AB3300: FFree1Var var_98 = ""
  loc_AB3303: Branch loc_AB34A4
  loc_AB3306: FLdRfVar var_A2
  loc_AB3309: FLdPr Me
  loc_AB330C: VCallAd Control_ID_FiltroCbo
  loc_AB330F: FStAdFunc var_88
  loc_AB3312: FLdPr var_88
  loc_AB3315:  = Me.ListIndex
  loc_AB331A: FLdI2 var_A2
  loc_AB331D: LitI2_Byte 4
  loc_AB331F: EqI2
  loc_AB3320: FFree1Ad var_88
  loc_AB3323: BranchF loc_AB340F
  loc_AB3326: LitStr "Municipalidad de Guaymallén"
  loc_AB3329: LitStr "Municipalidad de Maipú"
  loc_AB332C: EqStr
  loc_AB332E: BranchF loc_AB33A0
  loc_AB3331: LitStr "CoinNope = "
  loc_AB3334: FLdPr Me
  loc_AB3337: VCallAd Control_ID_FiltroMsk
  loc_AB333A: FStAdFunc var_88
  loc_AB333D: FLdPr var_88
  loc_AB3340: LateIdLdVar var_98 DispID_22 0
  loc_AB3347: CStrVarTmp
  loc_AB3348: FStStrNoPop var_9C
  loc_AB334B: ConcatStr
  loc_AB334C: PopTmpLdAdStr
  loc_AB3350: FLdPr Me
  loc_AB3353: MemLdRfVar from_stack_1.global_56
  loc_AB3356: NewIfNullPr clsnotapedido
  loc_AB3359: Call clsnotapedido.Filter(from_stack_1v)
  loc_AB335E: FFreeStr var_9C = ""
  loc_AB3365: FFree1Ad var_88
  loc_AB3368: FFree1Var var_98 = ""
  loc_AB336B: LitStr "NP interna igual a:"
  loc_AB336E: FLdPr Me
  loc_AB3371: VCallAd Control_ID_FiltroMsk
  loc_AB3374: FStAdFunc var_88
  loc_AB3377: FLdPr var_88
  loc_AB337A: LateIdLdVar var_98 DispID_22 0
  loc_AB3381: CStrVarTmp
  loc_AB3382: FStStrNoPop var_9C
  loc_AB3385: ConcatStr
  loc_AB3386: FStStrNoPop var_A0
  loc_AB3389: FLdPr Me
  loc_AB338C: MemStStrCopy
  loc_AB3390: FFreeStr var_9C = ""
  loc_AB3397: FFree1Ad var_88
  loc_AB339A: FFree1Var var_98 = ""
  loc_AB339D: Branch loc_AB340C
  loc_AB33A0: LitStr "CodiTico = "
  loc_AB33A3: FLdPr Me
  loc_AB33A6: VCallAd Control_ID_FiltroMsk
  loc_AB33A9: FStAdFunc var_88
  loc_AB33AC: FLdPr var_88
  loc_AB33AF: LateIdLdVar var_98 DispID_22 0
  loc_AB33B6: CStrVarTmp
  loc_AB33B7: FStStrNoPop var_9C
  loc_AB33BA: ConcatStr
  loc_AB33BB: PopTmpLdAdStr
  loc_AB33BF: FLdPr Me
  loc_AB33C2: MemLdRfVar from_stack_1.global_56
  loc_AB33C5: NewIfNullPr clsnotapedido
  loc_AB33C8: Call clsnotapedido.Filter(from_stack_1v)
  loc_AB33CD: FFreeStr var_9C = ""
  loc_AB33D4: FFree1Ad var_88
  loc_AB33D7: FFree1Var var_98 = ""
  loc_AB33DA: LitStr "Tipo de compra igual a:"
  loc_AB33DD: FLdPr Me
  loc_AB33E0: VCallAd Control_ID_FiltroMsk
  loc_AB33E3: FStAdFunc var_88
  loc_AB33E6: FLdPr var_88
  loc_AB33E9: LateIdLdVar var_98 DispID_22 0
  loc_AB33F0: CStrVarTmp
  loc_AB33F1: FStStrNoPop var_9C
  loc_AB33F4: ConcatStr
  loc_AB33F5: FStStrNoPop var_A0
  loc_AB33F8: FLdPr Me
  loc_AB33FB: MemStStrCopy
  loc_AB33FF: FFreeStr var_9C = ""
  loc_AB3406: FFree1Ad var_88
  loc_AB3409: FFree1Var var_98 = ""
  loc_AB340C: Branch loc_AB34A4
  loc_AB340F: FLdRfVar var_A2
  loc_AB3412: FLdPr Me
  loc_AB3415: VCallAd Control_ID_FiltroCbo
  loc_AB3418: FStAdFunc var_88
  loc_AB341B: FLdPr var_88
  loc_AB341E:  = Me.ListIndex
  loc_AB3423: FLdI2 var_A2
  loc_AB3426: LitI2_Byte 5
  loc_AB3428: EqI2
  loc_AB3429: FFree1Ad var_88
  loc_AB342C: BranchF loc_AB34A4
  loc_AB342F: LitStr "IdCoti LIKE '" & Chr(37)
  loc_AB3432: FLdPr Me
  loc_AB3435: VCallAd Control_ID_FiltroMsk
  loc_AB3438: FStAdFunc var_88
  loc_AB343B: FLdPr var_88
  loc_AB343E: LateIdLdVar var_98 DispID_22 0
  loc_AB3445: CStrVarTmp
  loc_AB3446: FStStrNoPop var_9C
  loc_AB3449: ConcatStr
  loc_AB344A: FStStrNoPop var_A0
  loc_AB344D: LitStr Chr(37) & "'"
  loc_AB3450: ConcatStr
  loc_AB3451: PopTmpLdAdStr
  loc_AB3455: FLdPr Me
  loc_AB3458: MemLdRfVar from_stack_1.global_56
  loc_AB345B: NewIfNullPr clsnotapedido
  loc_AB345E: Call clsnotapedido.Filter(from_stack_1v)
  loc_AB3463: FFreeStr var_9C = "": var_A0 = ""
  loc_AB346C: FFree1Ad var_88
  loc_AB346F: FFree1Var var_98 = ""
  loc_AB3472: LitStr "Cotización Nro. contiene: "
  loc_AB3475: FLdPr Me
  loc_AB3478: VCallAd Control_ID_FiltroMsk
  loc_AB347B: FStAdFunc var_88
  loc_AB347E: FLdPr var_88
  loc_AB3481: LateIdLdVar var_98 DispID_22 0
  loc_AB3488: CStrVarTmp
  loc_AB3489: FStStrNoPop var_9C
  loc_AB348C: ConcatStr
  loc_AB348D: FStStrNoPop var_A0
  loc_AB3490: FLdPr Me
  loc_AB3493: MemStStrCopy
  loc_AB3497: FFreeStr var_9C = ""
  loc_AB349E: FFree1Ad var_88
  loc_AB34A1: FFree1Var var_98 = ""
  loc_AB34A4: Branch loc_AB34CB
  loc_AB34A7: LitStr vbNullString
  loc_AB34AA: FStStrCopy var_9C
  loc_AB34AD: FLdRfVar var_9C
  loc_AB34B0: FLdPr Me
  loc_AB34B3: MemLdRfVar from_stack_1.global_56
  loc_AB34B6: NewIfNullPr clsnotapedido
  loc_AB34B9: Call clsnotapedido.Filter(from_stack_1v)
  loc_AB34BE: FFree1Str var_9C
  loc_AB34C1: LitStr vbNullString
  loc_AB34C4: FLdPr Me
  loc_AB34C7: MemStStrCopy
  loc_AB34CB: FLdRfVar var_AC
  loc_AB34CE: FLdPr Me
  loc_AB34D1: MemLdRfVar from_stack_1.global_56
  loc_AB34D4: NewIfNullPr clsnotapedido
  loc_AB34D7: from_stack_1 = clsnotapedido.RecordCount
  loc_AB34DC: ILdRf var_AC
  loc_AB34DF: LitI4 0
  loc_AB34E4: GtI4
  loc_AB34E5: BranchF loc_AB3592
  loc_AB34E8: FLdPr Me
  loc_AB34EB: MemLdRfVar from_stack_1.global_56
  loc_AB34EE: NewIfNullAd
  loc_AB34F1: FStAd var_B0 
  loc_AB34F5: FLdRfVar var_B0
  loc_AB34F8: CVarRef
  loc_AB34FD: ILdRf Me
  loc_AB3500: CastAd
  loc_AB3503: FStAdFunc var_88
  loc_AB3506: FLdRfVar var_88
  loc_AB3509: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_AB350E: ILdRf var_B0
  loc_AB3511: CastAd
  loc_AB3514: FLdPr Me
  loc_AB3517: MemStAdFunc
  loc_AB351B: FFreeAd var_88 = ""
  loc_AB3522: LitI4 0
  loc_AB3527: LitI4 1
  loc_AB352C: FLdRfVar var_C4
  loc_AB352F: Redim
  loc_AB3539: FLdPr Me
  loc_AB353C: MemLdRfVar from_stack_1.global_56
  loc_AB353F: NewIfNullAd
  loc_AB3542: FStAd var_88 
  loc_AB3546: FLdRfVar var_88
  loc_AB3549: CVarRef
  loc_AB354E: ParmAry1St
  loc_AB3554: FLdPr Me
  loc_AB3557: VCallAd Control_ID_dgdABMS
  loc_AB355A: CVarAd
  loc_AB355E: ParmAry1St
  loc_AB3564: FLdRfVar var_C4
  loc_AB3567: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_AB356C: ILdRf var_88
  loc_AB356F: CastAd
  loc_AB3572: FLdPr Me
  loc_AB3575: MemStAdFunc
  loc_AB3579: FLdRfVar var_C4
  loc_AB357C: Erase
  loc_AB357D: FFree1Ad var_88
  loc_AB3580: LitI2_Byte 0
  loc_AB3582: LitVarI2 var_98, 0
  loc_AB3587: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_AB358C: FFree1Var var_98 = ""
  loc_AB358F: Branch loc_AB35A6
  loc_AB3592: ILdRf Me
  loc_AB3595: CastAd
  loc_AB3598: FStAdFunc var_88
  loc_AB359B: FLdRfVar var_88
  loc_AB359E: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_AB35A3: FFree1Ad var_88
  loc_AB35A6: FLdPr Me
  loc_AB35A9: VCallAd Control_ID_dgdABMS
  loc_AB35AC: FStAdFunc var_B0
  loc_AB35AF: LitI4 0
  loc_AB35B4: FStStrCopy var_9C
  loc_AB35B7: FLdRfVar var_9C
  loc_AB35BA: FLdPr Me
  loc_AB35BD: MemLdStr global_92
  loc_AB35C0: FLdZeroAd var_B0
  loc_AB35C3: FStAdFunc var_88
  loc_AB35C6: FLdRfVar var_88
  loc_AB35C9: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_AB35CE: FFree1Str var_9C
  loc_AB35D1: FFreeAd var_88 = ""
  loc_AB35D8: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '996D64
  'Data Table: 484B14
  loc_996D00: ILdI2 KeyAscii
  loc_996D03: LitI2_Byte &H27
  loc_996D05: EqI2
  loc_996D06: BranchF loc_996D0E
  loc_996D09: LitI2_Byte 0
  loc_996D0B: IStI2 KeyAscii
  loc_996D0E: FLdRfVar var_88
  loc_996D11: FLdPr Me
  loc_996D14: MemLdRfVar from_stack_1.global_56
  loc_996D17: NewIfNullPr clsnotapedido
  loc_996D1A: from_stack_1 = clsnotapedido.RecordCount
  loc_996D1F: ILdRf var_88
  loc_996D22: LitI4 0
  loc_996D27: EqI4
  loc_996D28: ILdI2 KeyAscii
  loc_996D2B: CI4UI1
  loc_996D2C: LitI4 8
  loc_996D31: NeI4
  loc_996D32: AndI4
  loc_996D33: FLdPr Me
  loc_996D36: VCallAd Control_ID_FiltroMsk
  loc_996D39: FStAdFunc var_8C
  loc_996D3C: FLdPr var_8C
  loc_996D3F: LateIdLdVar var_9C DispID_16 0
  loc_996D46: CStrVarTmp
  loc_996D47: FStStrNoPop var_A0
  loc_996D4A: LitStr vbNullString
  loc_996D4D: EqStr
  loc_996D4F: AndI4
  loc_996D50: FFree1Str var_A0
  loc_996D53: FFree1Ad var_8C
  loc_996D56: FFree1Var var_9C = ""
  loc_996D59: BranchF loc_996D61
  loc_996D5C: LitI2_Byte 0
  loc_996D5E: IStI2 KeyAscii
  loc_996D61: ExitProcHresult
End Sub

Private Sub Form_Load() 'ACD14C
  'Data Table: 484B14
  loc_ACCB58: ILdRf Me
  loc_ACCB5B: CastAd
  loc_ACCB5E: FStAdFunc var_88
  loc_ACCB61: FLdRfVar var_88
  loc_ACCB64: ImpAdCallFPR4 Proc_261_41_999BCC()
  loc_ACCB69: FFree1Ad var_88
  loc_ACCB6C: ILdRf Me
  loc_ACCB6F: CastAd
  loc_ACCB72: FStAdFunc var_88
  loc_ACCB75: FLdRfVar var_88
  loc_ACCB78: ImpAdCallFPR4 Proc_261_42_9991A0()
  loc_ACCB7D: FFree1Ad var_88
  loc_ACCB80: LitI2_Byte 0
  loc_ACCB82: CR8I2
  loc_ACCB83: PopFPR4
  loc_ACCB84: FLdPr Me
  loc_ACCB87: Me.Left = from_stack_1s
  loc_ACCB8C: LitI2_Byte 0
  loc_ACCB8E: CR8I2
  loc_ACCB8F: PopFPR4
  loc_ACCB90: FLdPr Me
  loc_ACCB93: Me.Top = from_stack_1s
  loc_ACCB98: LitStr "SELECT tbl.*, IFNULL(GROUP_CONCAT(DISTINCT tbl.IdCoti),0) IdCoti, tbl.CucuPers, DetaTico, ImpoDiseTico, DetaProv, FactProv, DetaOrga"
  loc_ACCB9B: LitStr " , IFNULL(GROUP_CONCAT(DISTINCT tbl.CodiOrco),0) CodiOrco"
  loc_ACCB9E: ConcatStr
  loc_ACCB9F: FStStrNoPop var_8C
  loc_ACCBA2: LitStr " FROM ("
  loc_ACCBA5: ConcatStr
  loc_ACCBA6: FStStrNoPop var_90
  loc_ACCBA9: LitStr " SELECT np.*, c.IdCoti, c.CucuPers, DetaProv, FactProv, DetaOrga, oc.CodiOrco"
  loc_ACCBAC: ConcatStr
  loc_ACCBAD: FStStrNoPop var_94
  loc_ACCBB0: LitStr " FROM notapedido np"
  loc_ACCBB3: ConcatStr
  loc_ACCBB4: FStStrNoPop var_98
  loc_ACCBB7: LitStr " INNER JOIN orgaxusua oxu ON oxu.PeriInfo = np.PeriInfo AND oxu.CodiOrga = np.CodiOrga AND oxu.CodiUsua = '"
  loc_ACCBBA: ConcatStr
  loc_ACCBBB: FStStrNoPop var_9C
  loc_ACCBBE: ImpAdLdI4 MemVar_C3D03C
  loc_ACCBC1: ConcatStr
  loc_ACCBC2: FStStrNoPop var_A0
  loc_ACCBC5: LitStr "'"
  loc_ACCBC8: ConcatStr
  loc_ACCBC9: FStStrNoPop var_A4
  loc_ACCBCC: LitStr " INNER JOIN itemnota itn ON itn.PeriInfo = np.PeriInfo AND itn.CodiNope = np.CodiNope AND itn.IdImpu != 0"
  loc_ACCBCF: ConcatStr
  loc_ACCBD0: FStStrNoPop var_A8
  loc_ACCBD3: LitStr " AND contpres.fnSaldItno(itn.PeriInfo, itn.CodiNope, itn.CodiItno) > 0"
  loc_ACCBD6: ConcatStr
  loc_ACCBD7: FStStrNoPop var_AC
  loc_ACCBDA: LitStr " AND contpres.fnSaldItnoPrev(itn.PeriInfo, itn.CodiNope, itn.CodiItno) > 0"
  loc_ACCBDD: ConcatStr
  loc_ACCBDE: FStStrNoPop var_B0
  loc_ACCBE1: LitStr " INNER JOIN cotizacion c ON c.PeriInfo = np.PeriInfo AND c.CodiNope = np.CodiNope AND c.FeanCoti IS NULL"
  loc_ACCBE4: ConcatStr
  loc_ACCBE5: FStStrNoPop var_B4
  loc_ACCBE8: LitStr " INNER JOIN proveedor p ON p.CucuPers = c.CucuPers"
  loc_ACCBEB: ConcatStr
  loc_ACCBEC: FStStrNoPop var_B8
  loc_ACCBEF: LitStr " INNER JOIN infogov.organigrama o ON o.PeriInfo = np.PeriInfo AND o.CodiOrga = np.CodiOrga"
  loc_ACCBF2: ConcatStr
  loc_ACCBF3: FStStrNoPop var_BC
  loc_ACCBF6: LitStr " LEFT JOIN ordencompra oc ON oc.IdCoti = c.IdCoti AND oc.FeanOrco IS NULL"
  loc_ACCBF9: ConcatStr
  loc_ACCBFA: FStStrNoPop var_C0
  loc_ACCBFD: LitStr " WHERE np.PeriInfo = "
  loc_ACCC00: ConcatStr
  loc_ACCC01: FStStrNoPop var_C4
  loc_ACCC04: ImpAdLdI2 MemVar_C3D064
  loc_ACCC07: CStrUI1
  loc_ACCC09: FStStrNoPop var_C8
  loc_ACCC0C: ConcatStr
  loc_ACCC0D: FStStrNoPop var_CC
  loc_ACCC10: LitStr " AND oc.DetaOrco IS NULL"
  loc_ACCC13: ConcatStr
  loc_ACCC14: FStStrNoPop var_D0
  loc_ACCC17: LitStr " ) AS tbl"
  loc_ACCC1A: ConcatStr
  loc_ACCC1B: FStStrNoPop var_D4
  loc_ACCC1E: LitStr " INNER JOIN tipocompra ON tipocompra.CodiTico = tbl.CodiTico"
  loc_ACCC21: ConcatStr
  loc_ACCC22: FStStrNoPop var_D8
  loc_ACCC25: LitStr " GROUP BY tbl.PeriInfo, tbl.CodiNope, tbl.IdCoti;"
  loc_ACCC28: ConcatStr
  loc_ACCC29: FStStrNoPop var_DC
  loc_ACCC2C: FLdPr Me
  loc_ACCC2F: MemLdRfVar from_stack_1.global_56
  loc_ACCC32: NewIfNullPr clsnotapedido
  loc_ACCC35: Call clsnotapedido.RedefineRS(from_stack_1v)
  loc_ACCC3A: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_AC = "": var_B0 = "": var_B4 = "": var_B8 = "": var_BC = "": var_C0 = "": var_C4 = "": var_C8 = "": var_CC = "": var_D0 = "": var_D4 = "": var_D8 = ""
  loc_ACCC67: FLdPr Me
  loc_ACCC6A: VCallAd Control_ID_ItemCotizacionFlex
  loc_ACCC6D: FStAdFunc var_E0
  loc_ACCC70: LitVarI4
  loc_ACCC78: PopAdLdVar
  loc_ACCC79: LitVarI4
  loc_ACCC81: PopAdLdVar
  loc_ACCC82: FLdPr var_E0
  loc_ACCC85: LateIdCallSt
  loc_ACCC8D: LitVarI4
  loc_ACCC95: PopAdLdVar
  loc_ACCC96: LitVarI4
  loc_ACCC9E: PopAdLdVar
  loc_ACCC9F: FLdPr var_E0
  loc_ACCCA2: LateIdCallSt
  loc_ACCCAA: LitVarI4
  loc_ACCCB2: PopAdLdVar
  loc_ACCCB3: LitVarI4
  loc_ACCCBB: PopAdLdVar
  loc_ACCCBC: FLdPr var_E0
  loc_ACCCBF: LateIdCallSt
  loc_ACCCC7: LitVarI4
  loc_ACCCCF: PopAdLdVar
  loc_ACCCD0: LitVarI4
  loc_ACCCD8: PopAdLdVar
  loc_ACCCD9: FLdPr var_E0
  loc_ACCCDC: LateIdCallSt
  loc_ACCCE4: LitVarI4
  loc_ACCCEC: PopAdLdVar
  loc_ACCCED: LitVarI4
  loc_ACCCF5: PopAdLdVar
  loc_ACCCF6: FLdPr var_E0
  loc_ACCCF9: LateIdCallSt
  loc_ACCD01: LitVarI4
  loc_ACCD09: PopAdLdVar
  loc_ACCD0A: LitVarI4
  loc_ACCD12: PopAdLdVar
  loc_ACCD13: FLdPr var_E0
  loc_ACCD16: LateIdCallSt
  loc_ACCD1E: LitVarI4
  loc_ACCD26: PopAdLdVar
  loc_ACCD27: LitVarI4
  loc_ACCD2F: PopAdLdVar
  loc_ACCD30: FLdPr var_E0
  loc_ACCD33: LateIdCallSt
  loc_ACCD3B: LitVarI4
  loc_ACCD43: PopAdLdVar
  loc_ACCD44: LitVarI4
  loc_ACCD4C: PopAdLdVar
  loc_ACCD4D: FLdPr var_E0
  loc_ACCD50: LateIdCallSt
  loc_ACCD58: LitVarI4
  loc_ACCD60: PopAdLdVar
  loc_ACCD61: LitVarI4
  loc_ACCD69: PopAdLdVar
  loc_ACCD6A: FLdPr var_E0
  loc_ACCD6D: LateIdCallSt
  loc_ACCD75: LitVarI4
  loc_ACCD7D: PopAdLdVar
  loc_ACCD7E: LitVarI4
  loc_ACCD86: PopAdLdVar
  loc_ACCD87: FLdPr var_E0
  loc_ACCD8A: LateIdCallSt
  loc_ACCD92: LitVarI4
  loc_ACCD9A: PopAdLdVar
  loc_ACCD9B: LitVarI4
  loc_ACCDA3: PopAdLdVar
  loc_ACCDA4: FLdPr var_E0
  loc_ACCDA7: LateIdCallSt
  loc_ACCDAF: LitVarI4
  loc_ACCDB7: PopAdLdVar
  loc_ACCDB8: LitVarI4
  loc_ACCDC0: PopAdLdVar
  loc_ACCDC1: FLdPr var_E0
  loc_ACCDC4: LateIdCallSt
  loc_ACCDCC: LitVarI4
  loc_ACCDD4: PopAdLdVar
  loc_ACCDD5: LitVarI4
  loc_ACCDDD: PopAdLdVar
  loc_ACCDDE: FLdPr var_E0
  loc_ACCDE1: LateIdCallSt
  loc_ACCDE9: LitVarI4
  loc_ACCDF1: PopAdLdVar
  loc_ACCDF2: LitVarI4
  loc_ACCDFA: PopAdLdVar
  loc_ACCDFB: FLdPr var_E0
  loc_ACCDFE: LateIdCallSt
  loc_ACCE06: LitVarI4
  loc_ACCE0E: PopAdLdVar
  loc_ACCE0F: LitVarI4
  loc_ACCE17: PopAdLdVar
  loc_ACCE18: LitVarStr var_130, "Item"
  loc_ACCE1D: PopAdLdVar
  loc_ACCE1E: FLdPr var_E0
  loc_ACCE21: LateIdCallSt
  loc_ACCE29: LitVarI4
  loc_ACCE31: PopAdLdVar
  loc_ACCE32: LitVarI4
  loc_ACCE3A: PopAdLdVar
  loc_ACCE3B: LitVarStr var_130, "Alt."
  loc_ACCE40: PopAdLdVar
  loc_ACCE41: FLdPr var_E0
  loc_ACCE44: LateIdCallSt
  loc_ACCE4C: LitVarI4
  loc_ACCE54: PopAdLdVar
  loc_ACCE55: LitVarI4
  loc_ACCE5D: PopAdLdVar
  loc_ACCE5E: LitVarStr var_130, "Codigo"
  loc_ACCE63: PopAdLdVar
  loc_ACCE64: FLdPr var_E0
  loc_ACCE67: LateIdCallSt
  loc_ACCE6F: LitVarI4
  loc_ACCE77: PopAdLdVar
  loc_ACCE78: LitVarI4
  loc_ACCE80: PopAdLdVar
  loc_ACCE81: LitVarStr var_130, "Detalle del Insumo"
  loc_ACCE86: PopAdLdVar
  loc_ACCE87: FLdPr var_E0
  loc_ACCE8A: LateIdCallSt
  loc_ACCE92: LitVarI4
  loc_ACCE9A: PopAdLdVar
  loc_ACCE9B: LitVarI4
  loc_ACCEA3: PopAdLdVar
  loc_ACCEA4: LitVarStr var_130, "Detalle AMPLIADO del Insumo"
  loc_ACCEA9: PopAdLdVar
  loc_ACCEAA: FLdPr var_E0
  loc_ACCEAD: LateIdCallSt
  loc_ACCEB5: LitVarI4
  loc_ACCEBD: PopAdLdVar
  loc_ACCEBE: LitVarI4
  loc_ACCEC6: PopAdLdVar
  loc_ACCEC7: LitVarStr var_130, "Cantidad"
  loc_ACCECC: PopAdLdVar
  loc_ACCECD: FLdPr var_E0
  loc_ACCED0: LateIdCallSt
  loc_ACCED8: LitVarI4
  loc_ACCEE0: PopAdLdVar
  loc_ACCEE1: LitVarI4
  loc_ACCEE9: PopAdLdVar
  loc_ACCEEA: LitVarStr var_130, "Pr. Unitario"
  loc_ACCEEF: PopAdLdVar
  loc_ACCEF0: FLdPr var_E0
  loc_ACCEF3: LateIdCallSt
  loc_ACCEFB: LitVarI4
  loc_ACCF03: PopAdLdVar
  loc_ACCF04: LitVarI4
  loc_ACCF0C: PopAdLdVar
  loc_ACCF0D: LitVarStr var_130, "Total"
  loc_ACCF12: PopAdLdVar
  loc_ACCF13: FLdPr var_E0
  loc_ACCF16: LateIdCallSt
  loc_ACCF1E: LitVarI4
  loc_ACCF26: PopAdLdVar
  loc_ACCF27: LitVarI4
  loc_ACCF2F: PopAdLdVar
  loc_ACCF30: LitVarStr var_130, "Partida"
  loc_ACCF35: PopAdLdVar
  loc_ACCF36: FLdPr var_E0
  loc_ACCF39: LateIdCallSt
  loc_ACCF41: LitVarI4
  loc_ACCF49: PopAdLdVar
  loc_ACCF4A: LitVarI4
  loc_ACCF52: PopAdLdVar
  loc_ACCF53: LitVarStr var_130, "Organigr."
  loc_ACCF58: PopAdLdVar
  loc_ACCF59: FLdPr var_E0
  loc_ACCF5C: LateIdCallSt
  loc_ACCF64: LitVarI4
  loc_ACCF6C: PopAdLdVar
  loc_ACCF6D: LitVarI4
  loc_ACCF75: PopAdLdVar
  loc_ACCF76: LitVarStr var_130, "Fin.-Fun."
  loc_ACCF7B: PopAdLdVar
  loc_ACCF7C: FLdPr var_E0
  loc_ACCF7F: LateIdCallSt
  loc_ACCF87: LitVarI4
  loc_ACCF8F: PopAdLdVar
  loc_ACCF90: LitVarI4
  loc_ACCF98: PopAdLdVar
  loc_ACCF99: LitVarStr var_130, "U.G."
  loc_ACCF9E: PopAdLdVar
  loc_ACCF9F: FLdPr var_E0
  loc_ACCFA2: LateIdCallSt
  loc_ACCFAA: LitVarI4
  loc_ACCFB2: PopAdLdVar
  loc_ACCFB3: LitVarI4
  loc_ACCFBB: PopAdLdVar
  loc_ACCFBC: LitVarStr var_130, "Marca"
  loc_ACCFC1: PopAdLdVar
  loc_ACCFC2: FLdPr var_E0
  loc_ACCFC5: LateIdCallSt
  loc_ACCFCD: LitVarI4
  loc_ACCFD5: PopAdLdVar
  loc_ACCFD6: LitVarI4
  loc_ACCFDE: PopAdLdVar
  loc_ACCFDF: LitVarStr var_130, "Caract."
  loc_ACCFE4: PopAdLdVar
  loc_ACCFE5: FLdPr var_E0
  loc_ACCFE8: LateIdCallSt
  loc_ACCFF0: LitNothing
  loc_ACCFF2: FStAd var_E0 
  loc_ACCFF6: LitVarI2 var_F0, 0
  loc_ACCFFB: PopAdLdVar
  loc_ACCFFC: LitStr "Nota de Pedido"
  loc_ACCFFF: FLdPr Me
  loc_ACD002: VCallAd Control_ID_FiltroCbo
  loc_ACD005: FStAdFunc var_88
  loc_ACD008: FLdPr var_88
  loc_ACD00B: Me.AddItem from_stack_1, from_stack_2
  loc_ACD010: FFree1Ad var_88
  loc_ACD013: LitVarI2 var_F0, 1
  loc_ACD018: PopAdLdVar
  loc_ACD019: LitStr "Proveedor (CUIT)"
  loc_ACD01C: FLdPr Me
  loc_ACD01F: VCallAd Control_ID_FiltroCbo
  loc_ACD022: FStAdFunc var_88
  loc_ACD025: FLdPr var_88
  loc_ACD028: Me.AddItem from_stack_1, from_stack_2
  loc_ACD02D: FFree1Ad var_88
  loc_ACD030: LitVarI2 var_F0, 2
  loc_ACD035: PopAdLdVar
  loc_ACD036: LitStr "Proveedor (Nombre)"
  loc_ACD039: FLdPr Me
  loc_ACD03C: VCallAd Control_ID_FiltroCbo
  loc_ACD03F: FStAdFunc var_88
  loc_ACD042: FLdPr var_88
  loc_ACD045: Me.AddItem from_stack_1, from_stack_2
  loc_ACD04A: FFree1Ad var_88
  loc_ACD04D: LitVarI2 var_F0, 3
  loc_ACD052: PopAdLdVar
  loc_ACD053: LitStr "Expediente"
  loc_ACD056: FLdPr Me
  loc_ACD059: VCallAd Control_ID_FiltroCbo
  loc_ACD05C: FStAdFunc var_88
  loc_ACD05F: FLdPr var_88
  loc_ACD062: Me.AddItem from_stack_1, from_stack_2
  loc_ACD067: FFree1Ad var_88
  loc_ACD06A: LitStr "Municipalidad de Guaymallén"
  loc_ACD06D: LitStr "Municipalidad de Maipú"
  loc_ACD070: EqStr
  loc_ACD072: BranchF loc_ACD095
  loc_ACD075: LitVarI2 var_F0, 4
  loc_ACD07A: PopAdLdVar
  loc_ACD07B: LitStr "NP interna"
  loc_ACD07E: FLdPr Me
  loc_ACD081: VCallAd Control_ID_FiltroCbo
  loc_ACD084: FStAdFunc var_88
  loc_ACD087: FLdPr var_88
  loc_ACD08A: Me.AddItem from_stack_1, from_stack_2
  loc_ACD08F: FFree1Ad var_88
  loc_ACD092: Branch loc_ACD0B2
  loc_ACD095: LitVarI2 var_F0, 4
  loc_ACD09A: PopAdLdVar
  loc_ACD09B: LitStr "Tipo de compra"
  loc_ACD09E: FLdPr Me
  loc_ACD0A1: VCallAd Control_ID_FiltroCbo
  loc_ACD0A4: FStAdFunc var_88
  loc_ACD0A7: FLdPr var_88
  loc_ACD0AA: Me.AddItem from_stack_1, from_stack_2
  loc_ACD0AF: FFree1Ad var_88
  loc_ACD0B2: LitVarI2 var_F0, 5
  loc_ACD0B7: PopAdLdVar
  loc_ACD0B8: LitStr "Cotización Nro."
  loc_ACD0BB: FLdPr Me
  loc_ACD0BE: VCallAd Control_ID_FiltroCbo
  loc_ACD0C1: FStAdFunc var_88
  loc_ACD0C4: FLdPr var_88
  loc_ACD0C7: Me.AddItem from_stack_1, from_stack_2
  loc_ACD0CC: FFree1Ad var_88
  loc_ACD0CF: LitI2_Byte 0
  loc_ACD0D1: FLdPr Me
  loc_ACD0D4: VCallAd Control_ID_FiltroCbo
  loc_ACD0D7: FStAdFunc var_88
  loc_ACD0DA: FLdPr var_88
  loc_ACD0DD: Me.ListIndex = from_stack_1
  loc_ACD0E2: FFree1Ad var_88
  loc_ACD0E5: Call cmdCancelar_Click()
  loc_ACD0EA: LitI4 0
  loc_ACD0EF: LitI4 1
  loc_ACD0F4: FLdRfVar var_144
  loc_ACD0F7: Redim
  loc_ACD101: FLdPr Me
  loc_ACD104: MemLdRfVar from_stack_1.global_56
  loc_ACD107: NewIfNullAd
  loc_ACD10A: FStAd var_88 
  loc_ACD10E: FLdRfVar var_88
  loc_ACD111: CVarRef
  loc_ACD116: ParmAry1St
  loc_ACD11C: FLdPr Me
  loc_ACD11F: VCallAd Control_ID_dgdABMS
  loc_ACD122: CVarAd
  loc_ACD126: ParmAry1St
  loc_ACD12C: FLdRfVar var_144
  loc_ACD12F: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_ACD134: ILdRf var_88
  loc_ACD137: CastAd
  loc_ACD13A: FLdPr Me
  loc_ACD13D: MemStAdFunc
  loc_ACD141: FLdRfVar var_144
  loc_ACD144: Erase
  loc_ACD145: FFree1Ad var_88
  loc_ACD148: ExitProcHresult
End Sub

Private Sub Form_Activate() '9A82A8
  'Data Table: 484B14
  loc_9A8224: FLdRfVar var_C2
  loc_9A8227: FLdRfVar var_C0
  loc_9A822A: LitVarI2 var_B8, 1
  loc_9A822F: FLdPr Me
  loc_9A8232: VCallAd Control_ID_tlbABMS
  loc_9A8235: FStAdFunc var_88
  loc_9A8238: FLdPr var_88
  loc_9A823B: LateIdLdVar var_98 DispID_3 0
  loc_9A8242: CastAdVar Me
  loc_9A8246: FStAdFunc var_BC
  loc_9A8249: FLdPr var_BC
  loc_9A824C:  = Me.Buttons.ControlDefault
  loc_9A8251: FLdPr var_C0
  loc_9A8254:  = Me.Enabled
  loc_9A8259: FLdI2 var_C2
  loc_9A825C: FFreeAd var_88 = "": var_BC = ""
  loc_9A8265: FFreeVar var_98 = ""
  loc_9A826C: BranchF loc_9A827D
  loc_9A826F: FLdPr Me
  loc_9A8272: MemLdRfVar from_stack_1.global_56
  loc_9A8275: NewIfNullPr clsnotapedido
  loc_9A8278: Call clsnotapedido.Requery()
  loc_9A827D: ImpAdLdI2 MemVar_C3D064
  loc_9A8280: LitI2 2025
  loc_9A8283: LeI2
  loc_9A8284: BranchF loc_9A82A4
  loc_9A8287: LitVarI4
  loc_9A828F: PopAdLdVar
  loc_9A8290: FLdPr Me
  loc_9A8293: VCallAd Control_ID_dgdABMS
  loc_9A8296: FStAdFunc var_88
  loc_9A8299: FLdPr var_88
  loc_9A829C: LateIdSt
  loc_9A82A1: FFree1Ad var_88
  loc_9A82A4: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '949BBC
  'Data Table: 484B14
  loc_949BA8: ILdI2 KeyAscii
  loc_949BAB: CI4UI1
  loc_949BAC: LitI4 &HD
  loc_949BB1: EqI4
  loc_949BB2: BranchF loc_949BBA
  loc_949BB5: ImpAdCallFPR4 Proc_261_52_966EEC()
  loc_949BBA: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '956BBC
  'Data Table: 484B14
  loc_956BA4: ILdI2 KeyCode
  loc_956BA7: ILdRf Me
  loc_956BAA: CastAd
  loc_956BAD: FStAdFunc var_88
  loc_956BB0: FLdRfVar var_88
  loc_956BB3: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_956BB8: FFree1Ad var_88
  loc_956BBB: ExitProcHresult
End Sub

Private Sub ItemCotizacionFlex_UnknownEvent_0 '956C54
  'Data Table: 484B14
  loc_956C3C: FLdPr Me
  loc_956C3F: VCallAd Control_ID_ItemCotizacionFlex
  loc_956C42: FStAdFunc var_88
  loc_956C45: FLdRfVar var_88
  loc_956C48: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_956C4D: FFree1Ad var_88
  loc_956C50: ExitProcHresult
End Sub

Private Sub ItemCotizacionFlex_UnknownEvent_1 '95EF8C
  'Data Table: 484B14
  loc_95EF74: FLdPr Me
  loc_95EF77: VCallAd Control_ID_ItemCotizacionFlex
  loc_95EF7A: FStAdFunc var_88
  loc_95EF7D: FLdRfVar var_88
  loc_95EF80: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_95EF85: FFree1Ad var_88
  loc_95EF88: ExitProcHresult
End Sub

Private Sub ItemCotizacionFlex_UnknownEvent_8 'AD2E28
  'Data Table: 484B14
  loc_AD2804: FLdPr Me
  loc_AD2807: MemLdUI1 global_76
  loc_AD280B: CI2UI1
  loc_AD280D: LitI2_Byte 0
  loc_AD280F: NeI2
  loc_AD2810: BranchF loc_AD2E25
  loc_AD2813: FLdPr Me
  loc_AD2816: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD2819: FStAdFunc var_90
  loc_AD281C: FLdPr var_90
  loc_AD281F: LateIdLdVar var_A0 DispID_13 -32767
  loc_AD2826: CBoolVar
  loc_AD2828: FFree1Ad var_90
  loc_AD282B: FFree1Var var_A0 = ""
  loc_AD282E: BranchF loc_AD2E25
  loc_AD2831: FLdPr Me
  loc_AD2834: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD2837: FStAdFunc var_90
  loc_AD283A: FLdPr var_90
  loc_AD283D: LateIdLdVar var_A0 DispID_4 0
  loc_AD2844: CI4Var
  loc_AD2846: LitI4 1
  loc_AD284B: GtI4
  loc_AD284C: FFree1Ad var_90
  loc_AD284F: FFree1Var var_A0 = ""
  loc_AD2852: BranchF loc_AD2E25
  loc_AD2855: FLdPr Me
  loc_AD2858: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD285B: FStAdFunc var_90
  loc_AD285E: FLdPr var_90
  loc_AD2861: LateIdLdVar var_A0 DispID_10 0
  loc_AD2868: CI4Var
  loc_AD286A: CVarI4
  loc_AD286E: PopAdLdVar
  loc_AD286F: LitVarI4
  loc_AD2877: PopAdLdVar
  loc_AD2878: FLdPr Me
  loc_AD287B: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD287E: FStAdFunc var_E4
  loc_AD2881: FLdPr var_E4
  loc_AD2884: LateIdCallLdVar
  loc_AD288E: PopAd
  loc_AD2890: LitStr "0"
  loc_AD2893: LitI2_Byte &HFF
  loc_AD2895: LitI2_Byte 0
  loc_AD2897: LitI2_Byte 0
  loc_AD2899: FLdRfVar var_F4
  loc_AD289C: CStrVarTmp
  loc_AD289D: FStStrNoPop var_F8
  loc_AD28A0: LitStr "Cantidad"
  loc_AD28A3: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_AD28A8: FStStrNoPop var_FC
  loc_AD28AB: FLdPr Me
  loc_AD28AE: MemStStrCopy
  loc_AD28B2: FFreeStr var_F8 = ""
  loc_AD28B9: FFreeAd var_90 = ""
  loc_AD28C0: FFreeVar var_A0 = ""
  loc_AD28C7: FLdPr Me
  loc_AD28CA: MemLdStr global_80
  loc_AD28CD: LitStr vbNullString
  loc_AD28D0: NeStr
  loc_AD28D2: BranchF loc_AD2902
  loc_AD28D5: LitI4 0
  loc_AD28DA: FLdPr Me
  loc_AD28DD: MemLdStr global_80
  loc_AD28E0: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AD28E5: FLdPr Me
  loc_AD28E8: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD28EB: FStAdFunc var_90
  loc_AD28EE: FLdPr var_90
  loc_AD28F1: LateIdCall
  loc_AD28F9: FFree1Ad var_90
  loc_AD28FC: LitI2_Byte &HFF
  loc_AD28FE: IStI2 KeyCode
  loc_AD2901: ExitProcHresult
  loc_AD2902: FLdPr Me
  loc_AD2905: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD2908: FStAdFunc var_90
  loc_AD290B: FLdPr var_90
  loc_AD290E: LateIdLdVar var_A0 DispID_10 0
  loc_AD2915: CI4Var
  loc_AD2917: CVarI4
  loc_AD291B: PopAdLdVar
  loc_AD291C: LitVarI4
  loc_AD2924: PopAdLdVar
  loc_AD2925: FLdPr Me
  loc_AD2928: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD292B: FStAdFunc var_E4
  loc_AD292E: FLdPr var_E4
  loc_AD2931: LateIdCallLdVar
  loc_AD293B: CStrVarTmp
  loc_AD293C: CVarStr var_10C
  loc_AD293F: ImpAdCallI2 IsNumeric()
  loc_AD2944: FLdPr Me
  loc_AD2947: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD294A: FStAdFunc var_110
  loc_AD294D: FLdPr var_110
  loc_AD2950: LateIdLdVar var_120 DispID_10 0
  loc_AD2957: CI4Var
  loc_AD2959: CVarI4
  loc_AD295D: PopAdLdVar
  loc_AD295E: LitVarI4
  loc_AD2966: PopAdLdVar
  loc_AD2967: FLdPr Me
  loc_AD296A: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD296D: FStAdFunc var_164
  loc_AD2970: FLdPr var_164
  loc_AD2973: LateIdCallLdVar
  loc_AD297D: CStrVarTmp
  loc_AD297E: CVarStr var_184
  loc_AD2981: ImpAdCallI2 IsNumeric()
  loc_AD2986: AndI4
  loc_AD2987: FFreeAd var_90 = "": var_E4 = "": var_110 = ""
  loc_AD2992: FFreeVar var_A0 = "": var_F4 = "": var_10C = "": var_120 = "": var_174 = ""
  loc_AD29A1: BranchF loc_AD2AE5
  loc_AD29A4: FLdPr Me
  loc_AD29A7: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD29AA: FStAdFunc var_90
  loc_AD29AD: FLdPr var_90
  loc_AD29B0: LateIdLdVar var_A0 DispID_10 0
  loc_AD29B7: CI4Var
  loc_AD29B9: CVarI4
  loc_AD29BD: PopAdLdVar
  loc_AD29BE: LitVarI4
  loc_AD29C6: PopAdLdVar
  loc_AD29C7: FLdPr Me
  loc_AD29CA: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD29CD: FStAdFunc var_E4
  loc_AD29D0: FLdPr var_E4
  loc_AD29D3: LateIdCallLdVar
  loc_AD29DD: PopAd
  loc_AD29DF: LitI4 3
  loc_AD29E4: FLdRfVar var_F4
  loc_AD29E7: CStrVarTmp
  loc_AD29E8: FStStrNoPop var_F8
  loc_AD29EB: CR8Str
  loc_AD29ED: CVarR8
  loc_AD29F1: FLdRfVar var_120
  loc_AD29F4: ImpAdCallFPR4  = Round(, )
  loc_AD29F9: FLdPr Me
  loc_AD29FC: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD29FF: FStAdFunc var_110
  loc_AD2A02: FLdPr var_110
  loc_AD2A05: LateIdLdVar var_174 DispID_10 0
  loc_AD2A0C: CI4Var
  loc_AD2A0E: CVarI4
  loc_AD2A12: PopAdLdVar
  loc_AD2A13: LitVarI4
  loc_AD2A1B: PopAdLdVar
  loc_AD2A1C: FLdPr Me
  loc_AD2A1F: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD2A22: FStAdFunc var_164
  loc_AD2A25: FLdPr var_164
  loc_AD2A28: LateIdCallLdVar
  loc_AD2A32: PopAd
  loc_AD2A34: LitI4 2
  loc_AD2A39: FLdRfVar var_184
  loc_AD2A3C: CStrVarTmp
  loc_AD2A3D: FStStrNoPop var_FC
  loc_AD2A40: CR8Str
  loc_AD2A42: CVarR8
  loc_AD2A46: FLdRfVar var_1C4
  loc_AD2A49: ImpAdCallFPR4  = Round(, )
  loc_AD2A4E: FLdPr Me
  loc_AD2A51: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD2A54: FStAdFunc var_208
  loc_AD2A57: FLdPr var_208
  loc_AD2A5A: LateIdLdVar var_218 DispID_10 0
  loc_AD2A61: CI4Var
  loc_AD2A63: CVarI4
  loc_AD2A67: PopAdLdVar
  loc_AD2A68: LitVarI4
  loc_AD2A70: PopAdLdVar
  loc_AD2A71: LitI4 1
  loc_AD2A76: LitI4 1
  loc_AD2A7B: LitVarStr var_1F4, "###,###,##0.00"
  loc_AD2A80: FStVarCopyObj var_204
  loc_AD2A83: FLdRfVar var_204
  loc_AD2A86: FLdRfVar var_120
  loc_AD2A89: FLdRfVar var_1C4
  loc_AD2A8C: MulVar var_1D4
  loc_AD2A90: FStVar var_1E4
  loc_AD2A94: FLdRfVar var_1E4
  loc_AD2A97: ImpAdCallI2 Format$(, )
  loc_AD2A9C: CVarStr var_268
  loc_AD2A9F: PopAdLdVar
  loc_AD2AA0: FLdPr Me
  loc_AD2AA3: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD2AA6: FStAdFunc var_27C
  loc_AD2AA9: FLdPr var_27C
  loc_AD2AAC: LateIdCallSt
  loc_AD2AB4: FFreeStr var_F8 = ""
  loc_AD2ABB: FFreeAd var_90 = "": var_E4 = "": var_110 = "": var_164 = "": var_208 = ""
  loc_AD2ACA: FFreeVar var_A0 = "": var_F4 = "": var_10C = "": var_174 = "": var_184 = "": var_1B4 = "": var_120 = "": var_1C4 = "": var_1E4 = "": var_204 = "": var_218 = ""
  loc_AD2AE5: LitI2_Byte 0
  loc_AD2AE7: CR8I2
  loc_AD2AE8: FLdPr Me
  loc_AD2AEB: MemStFPR8 global_120
  loc_AD2AEE: LitI2_Byte 1
  loc_AD2AF0: FLdPr Me
  loc_AD2AF3: MemLdRfVar from_stack_1.global_68
  loc_AD2AF6: FLdPr Me
  loc_AD2AF9: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD2AFC: FStAdFunc var_90
  loc_AD2AFF: FLdPr var_90
  loc_AD2B02: LateIdLdVar var_A0 DispID_4 0
  loc_AD2B09: CI4Var
  loc_AD2B0B: LitI4 1
  loc_AD2B10: SubI4
  loc_AD2B11: CI2I4
  loc_AD2B12: FFree1Ad var_90
  loc_AD2B15: FFree1Var var_A0 = ""
  loc_AD2B18: ForI2 var_280
  loc_AD2B1E: FLdPr Me
  loc_AD2B21: MemLdI2 global_68
  loc_AD2B24: CI4UI1
  loc_AD2B25: CVarI4
  loc_AD2B29: PopAdLdVar
  loc_AD2B2A: LitVarI4
  loc_AD2B32: PopAdLdVar
  loc_AD2B33: FLdPr Me
  loc_AD2B36: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD2B39: FStAdFunc var_90
  loc_AD2B3C: FLdPr var_90
  loc_AD2B3F: LateIdCallLdVar
  loc_AD2B49: CStrVarTmp
  loc_AD2B4A: FStStrNoPop var_F8
  loc_AD2B4D: CI2Str
  loc_AD2B4F: FLdPr Me
  loc_AD2B52: MemStI2 global_74
  loc_AD2B55: FFree1Str var_F8
  loc_AD2B58: FFree1Ad var_90
  loc_AD2B5B: FFree1Var var_A0 = ""
  loc_AD2B5E: FLdPr Me
  loc_AD2B61: MemLdI2 global_68
  loc_AD2B64: CI4UI1
  loc_AD2B65: CVarI4
  loc_AD2B69: PopAdLdVar
  loc_AD2B6A: LitVarI4
  loc_AD2B72: PopAdLdVar
  loc_AD2B73: FLdPr Me
  loc_AD2B76: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD2B79: FStAdFunc var_90
  loc_AD2B7C: FLdPr var_90
  loc_AD2B7F: LateIdCallLdVar
  loc_AD2B89: CStrVarTmp
  loc_AD2B8A: FStStrNoPop var_F8
  loc_AD2B8D: CI2Str
  loc_AD2B8F: FLdPr Me
  loc_AD2B92: MemStI2 global_72
  loc_AD2B95: FFree1Str var_F8
  loc_AD2B98: FFree1Ad var_90
  loc_AD2B9B: FFree1Var var_A0 = ""
  loc_AD2B9E: LitI2_Byte 0
  loc_AD2BA0: CR8I2
  loc_AD2BA1: FLdPr Me
  loc_AD2BA4: MemStFPR8 global_84
  loc_AD2BA7: LitI2_Byte 1
  loc_AD2BA9: FLdPr Me
  loc_AD2BAC: MemLdRfVar from_stack_1.global_70
  loc_AD2BAF: FLdPr Me
  loc_AD2BB2: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD2BB5: FStAdFunc var_90
  loc_AD2BB8: FLdPr var_90
  loc_AD2BBB: LateIdLdVar var_A0 DispID_4 0
  loc_AD2BC2: CI4Var
  loc_AD2BC4: LitI4 1
  loc_AD2BC9: SubI4
  loc_AD2BCA: CI2I4
  loc_AD2BCB: FFree1Ad var_90
  loc_AD2BCE: FFree1Var var_A0 = ""
  loc_AD2BD1: ForI2 var_284
  loc_AD2BD7: FLdPr Me
  loc_AD2BDA: MemLdI2 global_70
  loc_AD2BDD: CI4UI1
  loc_AD2BDE: CVarI4
  loc_AD2BE2: PopAdLdVar
  loc_AD2BE3: LitVarI4
  loc_AD2BEB: PopAdLdVar
  loc_AD2BEC: FLdPr Me
  loc_AD2BEF: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD2BF2: FStAdFunc var_90
  loc_AD2BF5: FLdPr var_90
  loc_AD2BF8: LateIdCallLdVar
  loc_AD2C02: CStrVarTmp
  loc_AD2C03: FStStrNoPop var_F8
  loc_AD2C06: CR8Str
  loc_AD2C08: FLdPr Me
  loc_AD2C0B: MemLdI2 global_74
  loc_AD2C0E: CR8I2
  loc_AD2C0F: EqR4
  loc_AD2C10: FFree1Str var_F8
  loc_AD2C13: FFree1Ad var_90
  loc_AD2C16: FFree1Var var_A0 = ""
  loc_AD2C19: BranchF loc_AD2C83
  loc_AD2C1C: FLdPr Me
  loc_AD2C1F: MemLdI2 global_70
  loc_AD2C22: CI4UI1
  loc_AD2C23: CVarI4
  loc_AD2C27: PopAdLdVar
  loc_AD2C28: LitVarI4
  loc_AD2C30: PopAdLdVar
  loc_AD2C31: FLdPr Me
  loc_AD2C34: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD2C37: FStAdFunc var_90
  loc_AD2C3A: FLdPr var_90
  loc_AD2C3D: LateIdCallLdVar
  loc_AD2C47: PopAd
  loc_AD2C49: LitI4 3
  loc_AD2C4E: FLdPr Me
  loc_AD2C51: MemLdFPR8 global_84
  loc_AD2C54: FLdRfVar var_A0
  loc_AD2C57: CStrVarTmp
  loc_AD2C58: FStStrNoPop var_F8
  loc_AD2C5B: CR8Str
  loc_AD2C5D: AddR8
  loc_AD2C5E: CVarR8
  loc_AD2C62: FLdRfVar var_10C
  loc_AD2C65: ImpAdCallFPR4  = Round(, )
  loc_AD2C6A: FLdRfVar var_10C
  loc_AD2C6D: CR4Var
  loc_AD2C6E: FLdPr Me
  loc_AD2C71: MemStFPR8 global_84
  loc_AD2C74: FFree1Str var_F8
  loc_AD2C77: FFree1Ad var_90
  loc_AD2C7A: FFreeVar var_A0 = "": var_F4 = ""
  loc_AD2C83: FLdPr Me
  loc_AD2C86: MemLdRfVar from_stack_1.global_70
  loc_AD2C89: NextI2 var_284, loc_AD2BD7
  loc_AD2C8E: FLdRfVar var_A0
  loc_AD2C91: FLdRfVar var_110
  loc_AD2C94: LitVarStr var_B0, "CodiNope"
  loc_AD2C99: PopAdLdVar
  loc_AD2C9A: FLdRfVar var_E4
  loc_AD2C9D: FLdRfVar var_90
  loc_AD2CA0: FLdPr Me
  loc_AD2CA3: MemLdRfVar from_stack_1.global_56
  loc_AD2CA6: NewIfNullPr clsnotapedido
  loc_AD2CA9: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_AD2CAE: FLdPr var_90
  loc_AD2CB1:  = Me.Fields
  loc_AD2CB6: FLdPr var_E4
  loc_AD2CB9: from_stack_2 = Me.Item(from_stack_1)
  loc_AD2CBE: FLdPr var_110
  loc_AD2CC1:  = Me.Value
  loc_AD2CC6: FLdRfVar var_28C
  loc_AD2CC9: FLdPr Me
  loc_AD2CCC: MemLdI2 global_74
  loc_AD2CCF: FLdRfVar var_A0
  loc_AD2CD2: CI4Var
  loc_AD2CD4: ImpAdLdI2 MemVar_C3D064
  loc_AD2CD7: FLdPr Me
  loc_AD2CDA: MemLdRfVar from_stack_1.global_52
  loc_AD2CDD: NewIfNullPr clsordencompra
  loc_AD2CE0: from_stack_4v = clsordencompra.BuscaSaldoItemNotaPedido(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AD2CE5: FLdFPR8 var_28C
  loc_AD2CE8: FStFPR8 var_8C
  loc_AD2CEB: FFreeAd var_90 = "": var_E4 = ""
  loc_AD2CF4: FFree1Var var_A0 = ""
  loc_AD2CF7: FLdPr Me
  loc_AD2CFA: MemLdFPR8 global_84
  loc_AD2CFD: FLdFPR8 var_8C
  loc_AD2D00: GtR4
  loc_AD2D01: BranchF loc_AD2DCE
  loc_AD2D04: LitStr "Municipalidad de Guaymallén"
  loc_AD2D07: LitStr "Municipalidad de Guaymallén"
  loc_AD2D0A: EqStr
  loc_AD2D0C: FLdRfVar var_A0
  loc_AD2D0F: FLdRfVar var_110
  loc_AD2D12: LitVarStr var_B0, "CodiTico"
  loc_AD2D17: PopAdLdVar
  loc_AD2D18: FLdRfVar var_E4
  loc_AD2D1B: FLdRfVar var_90
  loc_AD2D1E: FLdPr Me
  loc_AD2D21: MemLdRfVar from_stack_1.global_56
  loc_AD2D24: NewIfNullPr clsnotapedido
  loc_AD2D27: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_AD2D2C: FLdPr var_90
  loc_AD2D2F:  = Me.Fields
  loc_AD2D34: FLdPr var_E4
  loc_AD2D37: from_stack_2 = Me.Item(from_stack_1)
  loc_AD2D3C: FLdPr var_110
  loc_AD2D3F:  = Me.Value
  loc_AD2D44: FLdRfVar var_A0
  loc_AD2D47: FnCIntVar
  loc_AD2D49: LitI2_Byte &HB
  loc_AD2D4B: EqI2
  loc_AD2D4C: AndI4
  loc_AD2D4D: FFreeAd var_90 = "": var_E4 = ""
  loc_AD2D56: FFree1Var var_A0 = ""
  loc_AD2D59: BranchF loc_AD2D5F
  loc_AD2D5C: Branch loc_AD2DCE
  loc_AD2D5F: LitStr "La cantidad ingresada del insumo es mayor al saldo de la nota de pedido. Para el Item: "
  loc_AD2D62: FLdPr Me
  loc_AD2D65: MemLdI2 global_74
  loc_AD2D68: CStrUI1
  loc_AD2D6A: FStStrNoPop var_F8
  loc_AD2D6D: ConcatStr
  loc_AD2D6E: FStStrNoPop var_FC
  loc_AD2D71: LitStr " el saldo es: "
  loc_AD2D74: ConcatStr
  loc_AD2D75: FStStrNoPop var_290
  loc_AD2D78: FLdFPR8 var_8C
  loc_AD2D7B: CStrR8
  loc_AD2D7D: FStStrNoPop var_294
  loc_AD2D80: ConcatStr
  loc_AD2D81: FStStrNoPop var_298
  loc_AD2D84: LitStr " .Verifique..."
  loc_AD2D87: ConcatStr
  loc_AD2D88: FStStrNoPop var_29C
  loc_AD2D8B: FLdPr Me
  loc_AD2D8E: MemStStrCopy
  loc_AD2D92: FFreeStr var_F8 = "": var_FC = "": var_290 = "": var_294 = "": var_298 = ""
  loc_AD2DA1: LitI4 0
  loc_AD2DA6: FLdPr Me
  loc_AD2DA9: MemLdStr global_80
  loc_AD2DAC: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AD2DB1: FLdPr Me
  loc_AD2DB4: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD2DB7: FStAdFunc var_90
  loc_AD2DBA: FLdPr var_90
  loc_AD2DBD: LateIdCall
  loc_AD2DC5: FFree1Ad var_90
  loc_AD2DC8: LitI2_Byte &HFF
  loc_AD2DCA: IStI2 KeyCode
  loc_AD2DCD: ExitProcHresult
  loc_AD2DCE: FLdPr Me
  loc_AD2DD1: MemLdI2 global_68
  loc_AD2DD4: CI4UI1
  loc_AD2DD5: CVarI4
  loc_AD2DD9: PopAdLdVar
  loc_AD2DDA: LitVarI4
  loc_AD2DE2: PopAdLdVar
  loc_AD2DE3: FLdPr Me
  loc_AD2DE6: VCallAd Control_ID_ItemCotizacionFlex
  loc_AD2DE9: FStAdFunc var_90
  loc_AD2DEC: FLdPr var_90
  loc_AD2DEF: LateIdCallLdVar
  loc_AD2DF9: PopAd
  loc_AD2DFB: FLdPr Me
  loc_AD2DFE: MemLdFPR8 global_120
  loc_AD2E01: FLdRfVar var_A0
  loc_AD2E04: CStrVarTmp
  loc_AD2E05: FStStrNoPop var_F8
  loc_AD2E08: CR8Str
  loc_AD2E0A: AddR8
  loc_AD2E0B: FLdPr Me
  loc_AD2E0E: MemStFPR8 global_120
  loc_AD2E11: FFree1Str var_F8
  loc_AD2E14: FFree1Ad var_90
  loc_AD2E17: FFree1Var var_A0 = ""
  loc_AD2E1A: FLdPr Me
  loc_AD2E1D: MemLdRfVar from_stack_1.global_68
  loc_AD2E20: NextI2 var_280, loc_AD2B1E
  loc_AD2E25: ExitProcHresult
  loc_AD2E26: BranchF loc_ADC503
End Sub

Private Sub ItemCotizacionFlex_KeyDown(KeyCode As Integer, Shift As Integer) 'A1A6E4
  'Data Table: 484B14
  loc_A1A55C: FLdPr Me
  loc_A1A55F: MemLdUI1 global_76
  loc_A1A563: CI2UI1
  loc_A1A565: LitI2_Byte 0
  loc_A1A567: NeI2
  loc_A1A568: BranchF loc_A1A6AB
  loc_A1A56D: ILdI2 KeyCode
  loc_A1A570: CI4UI1
  loc_A1A571: LitI4 &H2E
  loc_A1A576: EqI4
  loc_A1A577: BranchF loc_A1A6A9
  loc_A1A57C: FLdPr Me
  loc_A1A57F: VCallAd Control_ID_ItemCotizacionFlex
  loc_A1A582: FStAdFunc var_88
  loc_A1A585: FLdPr var_88
  loc_A1A588: LateIdLdVar var_98 DispID_10 0
  loc_A1A58F: CI4Var
  loc_A1A591: LitI4 0
  loc_A1A596: NeI4
  loc_A1A597: FFree1Ad var_88
  loc_A1A59A: FFree1Var var_98 = ""
  loc_A1A59D: BranchF loc_A1A6A7
  loc_A1A5A2: OnErrorGoto loc_A1A6AD
  loc_A1A5A7: FLdPr Me
  loc_A1A5AA: VCallAd Control_ID_ItemCotizacionFlex
  loc_A1A5AD: FStAdFunc var_88
  loc_A1A5B0: FLdPr var_88
  loc_A1A5B3: LateIdLdVar var_98 DispID_10 0
  loc_A1A5BA: CI4Var
  loc_A1A5BC: CVarI4
  loc_A1A5C0: PopAdLdVar
  loc_A1A5C1: LitVarI4
  loc_A1A5C9: PopAdLdVar
  loc_A1A5CA: FLdPr Me
  loc_A1A5CD: VCallAd Control_ID_ItemCotizacionFlex
  loc_A1A5D0: FStAdFunc var_DC
  loc_A1A5D3: FLdPr var_DC
  loc_A1A5D6: LateIdCallLdVar
  loc_A1A5E0: PopAd
  loc_A1A5E2: FLdPr Me
  loc_A1A5E5: MemLdFPR8 global_120
  loc_A1A5E8: CVarR8
  loc_A1A5EC: LitI4 2
  loc_A1A5F1: FLdRfVar var_EC
  loc_A1A5F4: CStrVarTmp
  loc_A1A5F5: FStStrNoPop var_F0
  loc_A1A5F8: CR8Str
  loc_A1A5FA: CVarR8
  loc_A1A5FE: FLdRfVar var_120
  loc_A1A601: ImpAdCallFPR4  = Round(, )
  loc_A1A606: FLdRfVar var_120
  loc_A1A609: SubVar var_140
  loc_A1A60D: CR4Var
  loc_A1A60E: FLdPr Me
  loc_A1A611: MemStFPR8 global_120
  loc_A1A614: FFree1Str var_F0
  loc_A1A617: FFreeAd var_88 = ""
  loc_A1A61E: FFreeVar var_98 = "": var_EC = "": var_110 = ""
  loc_A1A62B: LitI4 1
  loc_A1A630: LitI4 1
  loc_A1A635: LitVarStr var_B8, "currency"
  loc_A1A63A: FStVarCopyObj var_98
  loc_A1A63D: FLdRfVar var_98
  loc_A1A640: FLdPr Me
  loc_A1A643: MemLdRfVar from_stack_1.global_120
  loc_A1A646: CVarRef
  loc_A1A64B: ImpAdCallI2 Format$(, )
  loc_A1A650: FStStrNoPop var_F0
  loc_A1A653: FLdPr Me
  loc_A1A656: VCallAd Control_ID_lblTotalCoti
  loc_A1A659: FStAdFunc var_88
  loc_A1A65C: FLdPr var_88
  loc_A1A65F: Me.Caption = from_stack_1
  loc_A1A664: FFree1Str var_F0
  loc_A1A667: FFree1Ad var_88
  loc_A1A66A: FFree1Var var_98 = ""
  loc_A1A66F: FLdPr Me
  loc_A1A672: VCallAd Control_ID_ItemCotizacionFlex
  loc_A1A675: FStAdFunc var_88
  loc_A1A678: FLdPr var_88
  loc_A1A67B: LateIdLdVar var_98 DispID_10 0
  loc_A1A682: CI4Var
  loc_A1A684: CVarI4
  loc_A1A688: PopAdLdVar
  loc_A1A689: FLdPr Me
  loc_A1A68C: VCallAd Control_ID_ItemCotizacionFlex
  loc_A1A68F: FStAdFunc var_DC
  loc_A1A692: FLdPr var_DC
  loc_A1A695: LateIdCall
  loc_A1A69D: FFreeAd var_88 = ""
  loc_A1A6A4: FFree1Var var_98 = ""
  loc_A1A6AF: FLdRfVar var_144
  loc_A1A6B2: ImpAdCallI2 Err 'rtcErrObj
  loc_A1A6B7: FStAdFunc var_88
  loc_A1A6BA: FLdPr var_88
  loc_A1A6BD:  = Err.Number
  loc_A1A6C2: ILdRf var_144
  loc_A1A6C5: LitI4 &H753F
  loc_A1A6CA: EqI4
  loc_A1A6CB: FFree1Ad var_88
  loc_A1A6CE: BranchF loc_A1A6DE
  loc_A1A6D3: Call Proc_127_26_A36368()
  loc_A1A6DA: Resume
  loc_A1A6E2: ExitProcHresult
End Sub

Private Sub ItemCotizacionFlex_DblClick() '9E3A9C
  'Data Table: 484B14
  loc_9E398C: FLdPr Me
  loc_9E398F: MemLdUI1 global_76
  loc_9E3993: CI2UI1
  loc_9E3995: LitI2_Byte 0
  loc_9E3997: NeI2
  loc_9E3998: BranchF loc_9E3A9B
  loc_9E399B: FLdPr Me
  loc_9E399E: VCallAd Control_ID_ItemCotizacionFlex
  loc_9E39A1: FStAdFunc var_88
  loc_9E39A4: FLdPr var_88
  loc_9E39A7: LateIdLdVar var_98 DispID_10 0
  loc_9E39AE: CI4Var
  loc_9E39B0: CVarI4
  loc_9E39B4: PopAdLdVar
  loc_9E39B5: LitVarI4
  loc_9E39BD: PopAdLdVar
  loc_9E39BE: FLdPr Me
  loc_9E39C1: VCallAd Control_ID_ItemCotizacionFlex
  loc_9E39C4: FStAdFunc var_DC
  loc_9E39C7: FLdPr var_DC
  loc_9E39CA: LateIdCallLdVar
  loc_9E39D4: CStrVarTmp
  loc_9E39D5: FStStrNoPop var_F0
  loc_9E39D8: ImpAdLdRf MemVar_C3D814
  loc_9E39DB: NewIfNullPr dlgDetalleNotaPedido
  loc_9E39DE: VCallAd Control_ID_CaraItnoTxt
  loc_9E39E1: FStAdFunc var_F4
  loc_9E39E4: FLdPr var_F4
  loc_9E39E7: dlgDetalleNotaPedido.TextBox.Text = from_stack_1
  loc_9E39EC: FFree1Str var_F0
  loc_9E39EF: FFreeAd var_88 = "": var_DC = ""
  loc_9E39F8: FFreeVar var_98 = ""
  loc_9E39FF: LitStr "Detalle del Item de la Orden de Compra"
  loc_9E3A02: ImpAdLdRf MemVar_C3D814
  loc_9E3A05: NewIfNullPr dlgDetalleNotaPedido
  loc_9E3A08: dlgDetalleNotaPedido.Caption = from_stack_1
  loc_9E3A0D: LitVar_Missing var_B8
  loc_9E3A10: PopAdLdVar
  loc_9E3A11: LitVarI4
  loc_9E3A19: PopAdLdVar
  loc_9E3A1A: ImpAdLdRf MemVar_C3D814
  loc_9E3A1D: NewIfNullPr dlgDetalleNotaPedido
  loc_9E3A20: dlgDetalleNotaPedido.Show from_stack_1, from_stack_2
  loc_9E3A25: FLdRfVar var_F0
  loc_9E3A28: ImpAdLdRf MemVar_C3D814
  loc_9E3A2B: NewIfNullPr dlgDetalleNotaPedido
  loc_9E3A2E: from_stack_1v = dlgDetalleNotaPedido.sPasaDetalleGet()
  loc_9E3A33: ILdRf var_F0
  loc_9E3A36: LitStr vbNullString
  loc_9E3A39: NeStr
  loc_9E3A3B: FFree1Str var_F0
  loc_9E3A3E: BranchF loc_9E3A9B
  loc_9E3A41: FLdPr Me
  loc_9E3A44: VCallAd Control_ID_
  loc_9E3A47: FStAdFunc var_88
  loc_9E3A4A: FLdPr var_88
  loc_9E3A4D: LateIdLdVar var_98 DispID_10 0
  loc_9E3A54: CI4Var
  loc_9E3A56: CVarI4
  loc_9E3A5A: PopAdLdVar
  loc_9E3A5B: LitVarI4
  loc_9E3A63: PopAdLdVar
  loc_9E3A64: FLdRfVar var_F0
  loc_9E3A67: ImpAdLdRf MemVar_C3D814
  loc_9E3A6A: NewIfNullPr dlgDetalleNotaPedido
  loc_9E3A6D: from_stack_1v = dlgDetalleNotaPedido.sPasaDetalleGet()
  loc_9E3A72: FLdZeroAd var_F0
  loc_9E3A75: CVarStr var_EC
  loc_9E3A78: PopAdLdVar
  loc_9E3A79: FLdPr Me
  loc_9E3A7C: VCallAd Control_ID_
  loc_9E3A7F: FStAdFunc var_DC
  loc_9E3A82: FLdPr var_DC
  loc_9E3A85: LateIdCallSt
  loc_9E3A8D: FFreeAd var_88 = ""
  loc_9E3A94: FFreeVar var_98 = ""
  loc_9E3A9B: ExitProcHresult
End Sub

Private Sub ItemCotizacionFlex_KeyPress(KeyAscii As Integer) 'A2FC14
  'Data Table: 484B14
  loc_A2FA34: FLdPr Me
  loc_A2FA37: MemLdUI1 global_76
  loc_A2FA3B: CI2UI1
  loc_A2FA3D: LitI2_Byte 0
  loc_A2FA3F: NeI2
  loc_A2FA40: BranchF loc_A2FC10
  loc_A2FA43: ILdI2 KeyAscii
  loc_A2FA46: LitI2_Byte 8
  loc_A2FA48: EqI2
  loc_A2FA49: BranchF loc_A2FB37
  loc_A2FA4C: FLdPr Me
  loc_A2FA4F: VCallAd Control_ID_ItemCotizacionFlex
  loc_A2FA52: FStAdFunc var_88
  loc_A2FA55: FLdPr var_88
  loc_A2FA58: LateIdLdVar var_98 DispID_11 0
  loc_A2FA5F: CI4Var
  loc_A2FA61: FStR4 var_9C
  loc_A2FA64: FFree1Ad var_88
  loc_A2FA67: FFree1Var var_98 = ""
  loc_A2FA6A: ILdRf var_9C
  loc_A2FA6D: LitI4 5
  loc_A2FA72: EqI4
  loc_A2FA73: BranchF loc_A2FB34
  loc_A2FA76: FLdPr Me
  loc_A2FA79: VCallAd Control_ID_ItemCotizacionFlex
  loc_A2FA7C: FStAdFunc var_88
  loc_A2FA7F: FLdPr var_88
  loc_A2FA82: LateIdLdVar var_98 DispID_0 0
  loc_A2FA89: CStrVarTmp
  loc_A2FA8A: FStStrNoPop var_A0
  loc_A2FA8D: LitStr vbNullString
  loc_A2FA90: NeStr
  loc_A2FA92: FLdPr Me
  loc_A2FA95: VCallAd Control_ID_ItemCotizacionFlex
  loc_A2FA98: FStAdFunc var_A4
  loc_A2FA9B: FLdPr var_A4
  loc_A2FA9E: LateIdLdVar var_B4 DispID_0 0
  loc_A2FAA5: CStrVarTmp
  loc_A2FAA6: FStStrNoPop var_B8
  loc_A2FAA9: LitStr " "
  loc_A2FAAC: NeStr
  loc_A2FAAE: AndI4
  loc_A2FAAF: FFreeStr var_A0 = ""
  loc_A2FAB6: FFreeAd var_88 = ""
  loc_A2FABD: FFreeVar var_98 = ""
  loc_A2FAC4: BranchF loc_A2FB34
  loc_A2FAC7: FLdPr Me
  loc_A2FACA: VCallAd Control_ID_ItemCotizacionFlex
  loc_A2FACD: FStAdFunc var_88
  loc_A2FAD0: FLdPr var_88
  loc_A2FAD3: LateIdLdVar var_98 DispID_0 0
  loc_A2FADA: PopAd
  loc_A2FADC: FLdPr Me
  loc_A2FADF: VCallAd Control_ID_ItemCotizacionFlex
  loc_A2FAE2: FStAdFunc var_A4
  loc_A2FAE5: FLdPr var_A4
  loc_A2FAE8: LateIdLdVar var_B4 DispID_0 0
  loc_A2FAEF: CStrVarTmp
  loc_A2FAF0: FStStrNoPop var_A0
  loc_A2FAF3: FnLenStr
  loc_A2FAF4: LitI4 1
  loc_A2FAF9: SubI4
  loc_A2FAFA: FLdRfVar var_98
  loc_A2FAFD: CStrVarTmp
  loc_A2FAFE: FStStrNoPop var_B8
  loc_A2FB01: ImpAdCallI2 Left$(, )
  loc_A2FB06: CVarStr var_C8
  loc_A2FB09: PopAdLdVar
  loc_A2FB0A: FLdPr Me
  loc_A2FB0D: VCallAd Control_ID_ItemCotizacionFlex
  loc_A2FB10: FStAdFunc var_DC
  loc_A2FB13: FLdPr var_DC
  loc_A2FB16: LateIdSt
  loc_A2FB1B: FFreeStr var_A0 = ""
  loc_A2FB22: FFreeAd var_88 = "": var_A4 = ""
  loc_A2FB2B: FFreeVar var_98 = "": var_B4 = ""
  loc_A2FB34: Branch loc_A2FC10
  loc_A2FB37: FLdPr Me
  loc_A2FB3A: VCallAd Control_ID_ItemCotizacionFlex
  loc_A2FB3D: FStAdFunc var_88
  loc_A2FB40: FLdPr var_88
  loc_A2FB43: LateIdLdVar var_98 DispID_11 0
  loc_A2FB4A: CI4Var
  loc_A2FB4C: FStR4 var_E0
  loc_A2FB4F: FFree1Ad var_88
  loc_A2FB52: FFree1Var var_98 = ""
  loc_A2FB55: ILdRf var_E0
  loc_A2FB58: LitI4 5
  loc_A2FB5D: EqI4
  loc_A2FB5E: BranchF loc_A2FC10
  loc_A2FB61: ILdI2 KeyAscii
  loc_A2FB64: LitStr "."
  loc_A2FB67: ImpAdCallI2 Asc()
  loc_A2FB6C: EqI2
  loc_A2FB6D: BranchF loc_A2FB7B
  loc_A2FB70: LitStr ","
  loc_A2FB73: ImpAdCallI2 Asc()
  loc_A2FB78: IStI2 KeyAscii
  loc_A2FB7B: LitStr "1234567890,"
  loc_A2FB7E: FStStrCopy var_A0
  loc_A2FB81: FLdRfVar var_A0
  loc_A2FB84: ILdRf KeyAscii
  loc_A2FB87: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_A2FB8C: IStI2 KeyAscii
  loc_A2FB8F: FFree1Str var_A0
  loc_A2FB92: FLdPr Me
  loc_A2FB95: VCallAd Control_ID_ItemCotizacionFlex
  loc_A2FB98: FStAdFunc var_88
  loc_A2FB9B: FLdPr var_88
  loc_A2FB9E: LateIdLdVar var_98 DispID_0 0
  loc_A2FBA5: CStrVarTmp
  loc_A2FBA6: FStStrNoPop var_A0
  loc_A2FBA9: FnLenStr
  loc_A2FBAA: LitI4 &HC
  loc_A2FBAF: LeI4
  loc_A2FBB0: FFree1Str var_A0
  loc_A2FBB3: FFree1Ad var_88
  loc_A2FBB6: FFree1Var var_98 = ""
  loc_A2FBB9: BranchF loc_A2FC10
  loc_A2FBBC: FLdPr Me
  loc_A2FBBF: VCallAd Control_ID_ItemCotizacionFlex
  loc_A2FBC2: FStAdFunc var_88
  loc_A2FBC5: FLdPr var_88
  loc_A2FBC8: LateIdLdVar var_98 DispID_0 0
  loc_A2FBCF: CStrVarTmp
  loc_A2FBD0: CVarStr var_C8
  loc_A2FBD3: ILdI2 KeyAscii
  loc_A2FBD6: CI4UI1
  loc_A2FBD7: FLdRfVar var_B4
  loc_A2FBDA: ImpAdCallFPR4  = Chr()
  loc_A2FBDF: FLdRfVar var_B4
  loc_A2FBE2: AddVar var_F0
  loc_A2FBE6: CStrVarTmp
  loc_A2FBE7: CVarStr var_100
  loc_A2FBEA: PopAdLdVar
  loc_A2FBEB: FLdPr Me
  loc_A2FBEE: VCallAd Control_ID_ItemCotizacionFlex
  loc_A2FBF1: FStAdFunc var_A4
  loc_A2FBF4: FLdPr var_A4
  loc_A2FBF7: LateIdSt
  loc_A2FBFC: FFreeAd var_88 = ""
  loc_A2FC03: FFreeVar var_98 = "": var_C8 = "": var_B4 = "": var_F0 = ""
  loc_A2FC10: ExitProcHresult
End Sub

Private Sub ItemCotizacionFlex_LeaveCell() 'AEA358
  'Data Table: 484B14
  loc_AE9C84: FLdPr Me
  loc_AE9C87: MemLdUI1 global_76
  loc_AE9C8B: CI2UI1
  loc_AE9C8D: LitI2_Byte 0
  loc_AE9C8F: NeI2
  loc_AE9C90: BranchF loc_AEA355
  loc_AE9C93: FLdPr Me
  loc_AE9C96: VCallAd Control_ID_ItemCotizacionFlex
  loc_AE9C99: FStAdFunc var_88
  loc_AE9C9C: FLdPr var_88
  loc_AE9C9F: LateIdLdVar var_98 DispID_4 0
  loc_AE9CA6: CI4Var
  loc_AE9CA8: LitI4 0
  loc_AE9CAD: GtI4
  loc_AE9CAE: FFree1Ad var_88
  loc_AE9CB1: FFree1Var var_98 = ""
  loc_AE9CB4: BranchF loc_AEA355
  loc_AE9CB7: FLdPr Me
  loc_AE9CBA: VCallAd Control_ID_ItemCotizacionFlex
  loc_AE9CBD: FStAdFunc var_88
  loc_AE9CC0: FLdPr var_88
  loc_AE9CC3: LateIdLdVar var_98 DispID_11 0
  loc_AE9CCA: CI4Var
  loc_AE9CCC: LitI4 5
  loc_AE9CD1: EqI4
  loc_AE9CD2: FFree1Ad var_88
  loc_AE9CD5: FFree1Var var_98 = ""
  loc_AE9CD8: BranchF loc_AEA355
  loc_AE9CDB: FLdPr Me
  loc_AE9CDE: VCallAd Control_ID_ItemCotizacionFlex
  loc_AE9CE1: FStAdFunc var_88
  loc_AE9CE4: FLdPr var_88
  loc_AE9CE7: LateIdLdVar var_98 DispID_10 0
  loc_AE9CEE: CI4Var
  loc_AE9CF0: CVarI4
  loc_AE9CF4: PopAdLdVar
  loc_AE9CF5: LitVarI4
  loc_AE9CFD: PopAdLdVar
  loc_AE9CFE: FLdPr Me
  loc_AE9D01: VCallAd Control_ID_ItemCotizacionFlex
  loc_AE9D04: FStAdFunc var_DC
  loc_AE9D07: FLdPr var_DC
  loc_AE9D0A: LateIdCallLdVar
  loc_AE9D14: PopAd
  loc_AE9D16: LitStr "0"
  loc_AE9D19: LitI2_Byte &HFF
  loc_AE9D1B: LitI2_Byte 0
  loc_AE9D1D: LitI2_Byte 0
  loc_AE9D1F: FLdRfVar var_EC
  loc_AE9D22: CStrVarTmp
  loc_AE9D23: FStStrNoPop var_F0
  loc_AE9D26: LitStr "cantidad"
  loc_AE9D29: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_AE9D2E: FStStrNoPop var_F4
  loc_AE9D31: FLdPr Me
  loc_AE9D34: MemStStrCopy
  loc_AE9D38: FFreeStr var_F0 = ""
  loc_AE9D3F: FFreeAd var_88 = ""
  loc_AE9D46: FFreeVar var_98 = ""
  loc_AE9D4D: FLdPr Me
  loc_AE9D50: MemLdStr global_80
  loc_AE9D53: LitStr vbNullString
  loc_AE9D56: NeStr
  loc_AE9D58: BranchF loc_AE9D83
  loc_AE9D5B: LitI4 0
  loc_AE9D60: FLdPr Me
  loc_AE9D63: MemLdStr global_80
  loc_AE9D66: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AE9D6B: FLdPr Me
  loc_AE9D6E: VCallAd Control_ID_ItemCotizacionFlex
  loc_AE9D71: FStAdFunc var_88
  loc_AE9D74: FLdPr var_88
  loc_AE9D77: LateIdCall
  loc_AE9D7F: FFree1Ad var_88
  loc_AE9D82: ExitProcHresult
  loc_AE9D83: LitI2_Byte 0
  loc_AE9D85: CR8I2
  loc_AE9D86: FLdPr Me
  loc_AE9D89: MemStFPR8 global_84
  loc_AE9D8C: LitI2_Byte 1
  loc_AE9D8E: FLdPr Me
  loc_AE9D91: MemLdRfVar from_stack_1.global_68
  loc_AE9D94: FLdPr Me
  loc_AE9D97: VCallAd Control_ID_ItemCotizacionFlex
  loc_AE9D9A: FStAdFunc var_88
  loc_AE9D9D: FLdPr var_88
  loc_AE9DA0: LateIdLdVar var_98 DispID_4 0
  loc_AE9DA7: CI4Var
  loc_AE9DA9: LitI4 1
  loc_AE9DAE: SubI4
  loc_AE9DAF: CI2I4
  loc_AE9DB0: FFree1Ad var_88
  loc_AE9DB3: FFree1Var var_98 = ""
  loc_AE9DB6: ForI2 var_F8
  loc_AE9DBC: FLdPr Me
  loc_AE9DBF: MemLdI2 global_68
  loc_AE9DC2: CI4UI1
  loc_AE9DC3: CVarI4
  loc_AE9DC7: PopAdLdVar
  loc_AE9DC8: LitVarI4
  loc_AE9DD0: PopAdLdVar
  loc_AE9DD1: FLdPr Me
  loc_AE9DD4: VCallAd Control_ID_ItemCotizacionFlex
  loc_AE9DD7: FStAdFunc var_88
  loc_AE9DDA: FLdPr var_88
  loc_AE9DDD: LateIdCallLdVar
  loc_AE9DE7: CStrVarTmp
  loc_AE9DE8: FStStrNoPop var_F0
  loc_AE9DEB: FLdPr Me
  loc_AE9DEE: VCallAd Control_ID_ItemCotizacionFlex
  loc_AE9DF1: FStAdFunc var_DC
  loc_AE9DF4: FLdPr var_DC
  loc_AE9DF7: LateIdLdVar var_EC DispID_10 0
  loc_AE9DFE: CI4Var
  loc_AE9E00: CVarI4
  loc_AE9E04: PopAdLdVar
  loc_AE9E05: LitVarI4
  loc_AE9E0D: PopAdLdVar
  loc_AE9E0E: FLdPr Me
  loc_AE9E11: VCallAd Control_ID_ItemCotizacionFlex
  loc_AE9E14: FStAdFunc var_13C
  loc_AE9E17: FLdPr var_13C
  loc_AE9E1A: LateIdCallLdVar
  loc_AE9E24: CStrVarTmp
  loc_AE9E25: FStStrNoPop var_F4
  loc_AE9E28: EqStr
  loc_AE9E2A: FFreeStr var_F0 = ""
  loc_AE9E31: FFreeAd var_88 = "": var_DC = ""
  loc_AE9E3A: FFreeVar var_98 = "": var_EC = ""
  loc_AE9E43: BranchF loc_AE9EAD
  loc_AE9E46: FLdPr Me
  loc_AE9E49: MemLdI2 global_68
  loc_AE9E4C: CI4UI1
  loc_AE9E4D: CVarI4
  loc_AE9E51: PopAdLdVar
  loc_AE9E52: LitVarI4
  loc_AE9E5A: PopAdLdVar
  loc_AE9E5B: FLdPr Me
  loc_AE9E5E: VCallAd Control_ID_ItemCotizacionFlex
  loc_AE9E61: FStAdFunc var_88
  loc_AE9E64: FLdPr var_88
  loc_AE9E67: LateIdCallLdVar
  loc_AE9E71: PopAd
  loc_AE9E73: LitI4 2
  loc_AE9E78: FLdPr Me
  loc_AE9E7B: MemLdFPR8 global_84
  loc_AE9E7E: FLdRfVar var_98
  loc_AE9E81: CStrVarTmp
  loc_AE9E82: FStStrNoPop var_F0
  loc_AE9E85: CR8Str
  loc_AE9E87: AddR8
  loc_AE9E88: CVarR8
  loc_AE9E8C: FLdRfVar var_14C
  loc_AE9E8F: ImpAdCallFPR4  = Round(, )
  loc_AE9E94: FLdRfVar var_14C
  loc_AE9E97: CR4Var
  loc_AE9E98: FLdPr Me
  loc_AE9E9B: MemStFPR8 global_84
  loc_AE9E9E: FFree1Str var_F0
  loc_AE9EA1: FFree1Ad var_88
  loc_AE9EA4: FFreeVar var_98 = "": var_EC = ""
  loc_AE9EAD: FLdPr Me
  loc_AE9EB0: MemLdRfVar from_stack_1.global_68
  loc_AE9EB3: NextI2 var_F8, loc_AE9DBC
  loc_AE9EB8: FLdRfVar var_14C
  loc_AE9EBB: FLdRfVar var_13C
  loc_AE9EBE: LitVarStr var_A8, "CodiNope"
  loc_AE9EC3: PopAdLdVar
  loc_AE9EC4: FLdRfVar var_DC
  loc_AE9EC7: FLdRfVar var_88
  loc_AE9ECA: FLdPr Me
  loc_AE9ECD: MemLdRfVar from_stack_1.global_56
  loc_AE9ED0: NewIfNullPr clsnotapedido
  loc_AE9ED3: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_AE9ED8: FLdPr var_88
  loc_AE9EDB:  = Me.Fields
  loc_AE9EE0: FLdPr var_DC
  loc_AE9EE3: from_stack_2 = Me.Item(from_stack_1)
  loc_AE9EE8: FLdPr var_13C
  loc_AE9EEB:  = Me.Value
  loc_AE9EF0: FLdPr Me
  loc_AE9EF3: VCallAd Control_ID_ItemCotizacionFlex
  loc_AE9EF6: FStAdFunc var_150
  loc_AE9EF9: FLdPr var_150
  loc_AE9EFC: LateIdLdVar var_98 DispID_10 0
  loc_AE9F03: CI4Var
  loc_AE9F05: CVarI4
  loc_AE9F09: PopAdLdVar
  loc_AE9F0A: LitVarI4
  loc_AE9F12: PopAdLdVar
  loc_AE9F13: FLdPr Me
  loc_AE9F16: VCallAd Control_ID_ItemCotizacionFlex
  loc_AE9F19: FStAdFunc var_154
  loc_AE9F1C: FLdPr var_154
  loc_AE9F1F: LateIdCallLdVar
  loc_AE9F29: PopAd
  loc_AE9F2B: FLdRfVar var_15C
  loc_AE9F2E: FLdRfVar var_EC
  loc_AE9F31: CStrVarTmp
  loc_AE9F32: FStStrNoPop var_F0
  loc_AE9F35: CI2Str
  loc_AE9F37: FLdRfVar var_14C
  loc_AE9F3A: CI4Var
  loc_AE9F3C: ImpAdLdI2 MemVar_C3D064
  loc_AE9F3F: FLdPr Me
  loc_AE9F42: MemLdRfVar from_stack_1.global_52
  loc_AE9F45: NewIfNullPr clsordencompra
  loc_AE9F48: from_stack_4v = clsordencompra.BuscaSaldoItemNotaPedido(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_AE9F4D: FLdPr Me
  loc_AE9F50: MemLdFPR8 global_84
  loc_AE9F53: FLdFPR8 var_15C
  loc_AE9F56: GtR4
  loc_AE9F57: FFree1Str var_F0
  loc_AE9F5A: FFreeAd var_88 = "": var_DC = "": var_150 = "": var_154 = ""
  loc_AE9F67: FFreeVar var_98 = "": var_EC = ""
  loc_AE9F70: BranchF loc_AEA103
  loc_AE9F73: LitStr "Municipalidad de Guaymallén"
  loc_AE9F76: LitStr "Municipalidad de Guaymallén"
  loc_AE9F79: EqStr
  loc_AE9F7B: FLdRfVar var_98
  loc_AE9F7E: FLdRfVar var_13C
  loc_AE9F81: LitVarStr var_A8, "CodiTico"
  loc_AE9F86: PopAdLdVar
  loc_AE9F87: FLdRfVar var_DC
  loc_AE9F8A: FLdRfVar var_88
  loc_AE9F8D: FLdPr Me
  loc_AE9F90: MemLdRfVar from_stack_1.global_56
  loc_AE9F93: NewIfNullPr clsnotapedido
  loc_AE9F96: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_AE9F9B: FLdPr var_88
  loc_AE9F9E:  = Me.Fields
  loc_AE9FA3: FLdPr var_DC
  loc_AE9FA6: from_stack_2 = Me.Item(from_stack_1)
  loc_AE9FAB: FLdPr var_13C
  loc_AE9FAE:  = Me.Value
  loc_AE9FB3: FLdRfVar var_98
  loc_AE9FB6: FnCIntVar
  loc_AE9FB8: LitI2_Byte &HB
  loc_AE9FBA: EqI2
  loc_AE9FBB: AndI4
  loc_AE9FBC: FFreeAd var_88 = "": var_DC = ""
  loc_AE9FC5: FFree1Var var_98 = ""
  loc_AE9FC8: BranchF loc_AE9FCE
  loc_AE9FCB: Branch loc_AEA103
  loc_AE9FCE: LitStr "Item: "
  loc_AE9FD1: FLdPr Me
  loc_AE9FD4: VCallAd Control_ID_ItemCotizacionFlex
  loc_AE9FD7: FStAdFunc var_88
  loc_AE9FDA: FLdPr var_88
  loc_AE9FDD: LateIdLdVar var_98 DispID_10 0
  loc_AE9FE4: CI4Var
  loc_AE9FE6: CVarI4
  loc_AE9FEA: PopAdLdVar
  loc_AE9FEB: LitVarI4
  loc_AE9FF3: PopAdLdVar
  loc_AE9FF4: FLdPr Me
  loc_AE9FF7: VCallAd Control_ID_ItemCotizacionFlex
  loc_AE9FFA: FStAdFunc var_DC
  loc_AE9FFD: FLdPr var_DC
  loc_AEA000: LateIdCallLdVar
  loc_AEA00A: CStrVarTmp
  loc_AEA00B: FStStrNoPop var_F0
  loc_AEA00E: ConcatStr
  loc_AEA00F: FStStrNoPop var_F4
  loc_AEA012: LitStr " - Altern.: "
  loc_AEA015: ConcatStr
  loc_AEA016: FStStrNoPop var_170
  loc_AEA019: FLdPr Me
  loc_AEA01C: VCallAd Control_ID_ItemCotizacionFlex
  loc_AEA01F: FStAdFunc var_13C
  loc_AEA022: FLdPr var_13C
  loc_AEA025: LateIdLdVar var_14C DispID_10 0
  loc_AEA02C: CI4Var
  loc_AEA02E: CVarI4
  loc_AEA032: PopAdLdVar
  loc_AEA033: LitVarI4
  loc_AEA03B: PopAdLdVar
  loc_AEA03C: FLdPr Me
  loc_AEA03F: VCallAd Control_ID_ItemCotizacionFlex
  loc_AEA042: FStAdFunc var_150
  loc_AEA045: FLdPr var_150
  loc_AEA048: LateIdCallLdVar
  loc_AEA052: CStrVarTmp
  loc_AEA053: FStStrNoPop var_174
  loc_AEA056: ConcatStr
  loc_AEA057: FStStrNoPop var_178
  loc_AEA05A: LitStr "La cantidad ingresada del insumo es mayor al saldo de la nota de pedido. Verifique..."
  loc_AEA05D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AEA062: FFreeStr var_F0 = "": var_F4 = "": var_170 = "": var_174 = ""
  loc_AEA06F: FFreeAd var_88 = "": var_DC = "": var_13C = ""
  loc_AEA07A: FFreeVar var_98 = "": var_EC = "": var_14C = ""
  loc_AEA085: FLdPr Me
  loc_AEA088: VCallAd Control_ID_ItemCotizacionFlex
  loc_AEA08B: FStAdFunc var_88
  loc_AEA08E: FLdPr var_88
  loc_AEA091: LateIdLdVar var_98 DispID_0 0
  loc_AEA098: PopAd
  loc_AEA09A: LitI4 1
  loc_AEA09F: LitI4 1
  loc_AEA0A4: LitVarStr var_A8, "0.000"
  loc_AEA0A9: FStVarCopyObj var_14C
  loc_AEA0AC: FLdRfVar var_14C
  loc_AEA0AF: FLdRfVar var_98
  loc_AEA0B2: CStrVarTmp
  loc_AEA0B3: CVarStr var_EC
  loc_AEA0B6: FLdRfVar var_16C
  loc_AEA0B9: ImpAdCallFPR4  = Format(, )
  loc_AEA0BE: FLdRfVar var_16C
  loc_AEA0C1: CStrVarTmp
  loc_AEA0C2: CVarStr var_188
  loc_AEA0C5: PopAdLdVar
  loc_AEA0C6: FLdPr Me
  loc_AEA0C9: VCallAd Control_ID_ItemCotizacionFlex
  loc_AEA0CC: FStAdFunc var_DC
  loc_AEA0CF: FLdPr var_DC
  loc_AEA0D2: LateIdSt
  loc_AEA0D7: FFreeAd var_88 = ""
  loc_AEA0DE: FFreeVar var_98 = "": var_EC = "": var_14C = "": var_16C = ""
  loc_AEA0EB: FLdPr Me
  loc_AEA0EE: VCallAd Control_ID_ItemCotizacionFlex
  loc_AEA0F1: FStAdFunc var_88
  loc_AEA0F4: FLdPr var_88
  loc_AEA0F7: LateIdCall
  loc_AEA0FF: FFree1Ad var_88
  loc_AEA102: ExitProcHresult
  loc_AEA103: FLdPr Me
  loc_AEA106: VCallAd Control_ID_ItemCotizacionFlex
  loc_AEA109: FStAdFunc var_88
  loc_AEA10C: FLdPr var_88
  loc_AEA10F: LateIdLdVar var_98 DispID_0 0
  loc_AEA116: PopAd
  loc_AEA118: LitI4 1
  loc_AEA11D: LitI4 1
  loc_AEA122: LitVarStr var_A8, "0.000"
  loc_AEA127: FStVarCopyObj var_14C
  loc_AEA12A: FLdRfVar var_14C
  loc_AEA12D: FLdRfVar var_98
  loc_AEA130: CStrVarTmp
  loc_AEA131: CVarStr var_EC
  loc_AEA134: FLdRfVar var_16C
  loc_AEA137: ImpAdCallFPR4  = Format(, )
  loc_AEA13C: FLdRfVar var_16C
  loc_AEA13F: CStrVarTmp
  loc_AEA140: CVarStr var_188
  loc_AEA143: PopAdLdVar
  loc_AEA144: FLdPr Me
  loc_AEA147: VCallAd Control_ID_ItemCotizacionFlex
  loc_AEA14A: FStAdFunc var_DC
  loc_AEA14D: FLdPr var_DC
  loc_AEA150: LateIdSt
  loc_AEA155: FFreeAd var_88 = ""
  loc_AEA15C: FFreeVar var_98 = "": var_EC = "": var_14C = "": var_16C = ""
  loc_AEA169: FLdPr Me
  loc_AEA16C: VCallAd Control_ID_ItemCotizacionFlex
  loc_AEA16F: FStAdFunc var_88
  loc_AEA172: FLdPr var_88
  loc_AEA175: LateIdLdVar var_98 DispID_10 0
  loc_AEA17C: CI4Var
  loc_AEA17E: CVarI4
  loc_AEA182: PopAdLdVar
  loc_AEA183: LitVarI4
  loc_AEA18B: PopAdLdVar
  loc_AEA18C: FLdPr Me
  loc_AEA18F: VCallAd Control_ID_ItemCotizacionFlex
  loc_AEA192: FStAdFunc var_DC
  loc_AEA195: FLdPr var_DC
  loc_AEA198: LateIdCallLdVar
  loc_AEA1A2: CStrVarTmp
  loc_AEA1A3: CVarStr var_14C
  loc_AEA1A6: ImpAdCallI2 IsNumeric()
  loc_AEA1AB: FLdPr Me
  loc_AEA1AE: VCallAd Control_ID_ItemCotizacionFlex
  loc_AEA1B1: FStAdFunc var_13C
  loc_AEA1B4: FLdPr var_13C
  loc_AEA1B7: LateIdLdVar var_16C DispID_10 0
  loc_AEA1BE: CI4Var
  loc_AEA1C0: CVarI4
  loc_AEA1C4: PopAdLdVar
  loc_AEA1C5: LitVarI4
  loc_AEA1CD: PopAdLdVar
  loc_AEA1CE: FLdPr Me
  loc_AEA1D1: VCallAd Control_ID_ItemCotizacionFlex
  loc_AEA1D4: FStAdFunc var_150
  loc_AEA1D7: FLdPr var_150
  loc_AEA1DA: LateIdCallLdVar
  loc_AEA1E4: CStrVarTmp
  loc_AEA1E5: CVarStr var_198
  loc_AEA1E8: ImpAdCallI2 IsNumeric()
  loc_AEA1ED: AndI4
  loc_AEA1EE: FFreeAd var_88 = "": var_DC = "": var_13C = ""
  loc_AEA1F9: FFreeVar var_98 = "": var_EC = "": var_14C = "": var_16C = "": var_188 = ""
  loc_AEA208: BranchF loc_AEA355
  loc_AEA20B: FLdPr Me
  loc_AEA20E: VCallAd Control_ID_ItemCotizacionFlex
  loc_AEA211: FStAdFunc var_88
  loc_AEA214: FLdPr var_88
  loc_AEA217: LateIdLdVar var_98 DispID_10 0
  loc_AEA21E: CI4Var
  loc_AEA220: CVarI4
  loc_AEA224: PopAdLdVar
  loc_AEA225: LitVarI4
  loc_AEA22D: PopAdLdVar
  loc_AEA22E: FLdPr Me
  loc_AEA231: VCallAd Control_ID_ItemCotizacionFlex
  loc_AEA234: FStAdFunc var_DC
  loc_AEA237: FLdPr var_DC
  loc_AEA23A: LateIdCallLdVar
  loc_AEA244: PopAd
  loc_AEA246: LitI4 3
  loc_AEA24B: FLdRfVar var_EC
  loc_AEA24E: CStrVarTmp
  loc_AEA24F: FStStrNoPop var_F0
  loc_AEA252: CR8Str
  loc_AEA254: CVarR8
  loc_AEA258: FLdRfVar var_16C
  loc_AEA25B: ImpAdCallFPR4  = Round(, )
  loc_AEA260: FLdPr Me
  loc_AEA263: VCallAd Control_ID_ItemCotizacionFlex
  loc_AEA266: FStAdFunc var_13C
  loc_AEA269: FLdPr var_13C
  loc_AEA26C: LateIdLdVar var_188 DispID_10 0
  loc_AEA273: CI4Var
  loc_AEA275: CVarI4
  loc_AEA279: PopAdLdVar
  loc_AEA27A: LitVarI4
  loc_AEA282: PopAdLdVar
  loc_AEA283: FLdPr Me
  loc_AEA286: VCallAd Control_ID_ItemCotizacionFlex
  loc_AEA289: FStAdFunc var_150
  loc_AEA28C: FLdPr var_150
  loc_AEA28F: LateIdCallLdVar
  loc_AEA299: PopAd
  loc_AEA29B: LitI4 2
  loc_AEA2A0: FLdRfVar var_198
  loc_AEA2A3: CStrVarTmp
  loc_AEA2A4: FStStrNoPop var_F4
  loc_AEA2A7: CR8Str
  loc_AEA2A9: CVarR8
  loc_AEA2AD: FLdRfVar var_1D8
  loc_AEA2B0: ImpAdCallFPR4  = Round(, )
  loc_AEA2B5: FLdPr Me
  loc_AEA2B8: VCallAd Control_ID_ItemCotizacionFlex
  loc_AEA2BB: FStAdFunc var_154
  loc_AEA2BE: FLdPr var_154
  loc_AEA2C1: LateIdLdVar var_238 DispID_10 0
  loc_AEA2C8: CI4Var
  loc_AEA2CA: CVarI4
  loc_AEA2CE: PopAdLdVar
  loc_AEA2CF: LitVarI4
  loc_AEA2D7: PopAdLdVar
  loc_AEA2D8: LitI4 1
  loc_AEA2DD: LitI4 1
  loc_AEA2E2: LitVarStr var_208, "###,###,##0.00"
  loc_AEA2E7: FStVarCopyObj var_218
  loc_AEA2EA: FLdRfVar var_218
  loc_AEA2ED: FLdRfVar var_16C
  loc_AEA2F0: FLdRfVar var_1D8
  loc_AEA2F3: MulVar var_1E8
  loc_AEA2F7: FStVar var_1F8
  loc_AEA2FB: FLdRfVar var_1F8
  loc_AEA2FE: FLdRfVar var_228
  loc_AEA301: ImpAdCallFPR4  = Format(, )
  loc_AEA306: FLdRfVar var_228
  loc_AEA309: CStrVarTmp
  loc_AEA30A: CVarStr var_288
  loc_AEA30D: PopAdLdVar
  loc_AEA30E: FLdPr Me
  loc_AEA311: VCallAd Control_ID_ItemCotizacionFlex
  loc_AEA314: FStAdFunc var_29C
  loc_AEA317: FLdPr var_29C
  loc_AEA31A: LateIdCallSt
  loc_AEA322: FFreeStr var_F0 = ""
  loc_AEA329: FFreeAd var_88 = "": var_DC = "": var_13C = "": var_150 = "": var_154 = ""
  loc_AEA338: FFreeVar var_98 = "": var_EC = "": var_14C = "": var_188 = "": var_198 = "": var_1C8 = "": var_16C = "": var_1D8 = "": var_1F8 = "": var_218 = "": var_238 = "": var_228 = ""
  loc_AEA355: ExitProcHresult
  loc_AEA356: PopAdLd4
End Sub

Private Sub FechOrcoMsk_UnknownEvent_0 '94A940
  'Data Table: 484B14
  loc_94A92C: FLdPr Me
  loc_94A92F: VCallAd Control_ID_FechOrcoMsk
  loc_94A932: CVarAd
  loc_94A936: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_94A93B: FFree1Var var_94 = ""
  loc_94A93E: ExitProcHresult
End Sub

Private Function FechOrcoMsk_UnknownEvent_8(arg_C) 'A6A468
  'Data Table: 484B14
  loc_A6A10C: FLdRfVar var_8A
  loc_A6A10F: FLdPr Me
  loc_A6A112: VCallAd Control_ID_cmdCancelar
  loc_A6A115: FStAdFunc var_88
  loc_A6A118: FLdPr var_88
  loc_A6A11B:  = Me.Value
  loc_A6A120: FLdI2 var_8A
  loc_A6A123: NotI4
  loc_A6A124: FLdPr Me
  loc_A6A127: VCallAd Control_ID_FechOrcoMsk
  loc_A6A12A: FStAdFunc var_90
  loc_A6A12D: FLdPr var_90
  loc_A6A130: LateIdLdVar var_A0 DispID_13 -32767
  loc_A6A137: CBoolVar
  loc_A6A139: AndI4
  loc_A6A13A: FFreeAd var_88 = ""
  loc_A6A141: FFree1Var var_A0 = ""
  loc_A6A144: BranchF loc_A6A465
  loc_A6A147: FLdPr Me
  loc_A6A14A: VCallAd Control_ID_FechOrcoMsk
  loc_A6A14D: FStAdFunc var_88
  loc_A6A150: FLdPr var_88
  loc_A6A153: LateIdLdVar var_A0 DispID_15 0
  loc_A6A15A: PopAd
  loc_A6A15C: FLdPr Me
  loc_A6A15F: VCallAd Control_ID_FechOrcoMsk
  loc_A6A162: FStAdFunc var_90
  loc_A6A165: FLdPr var_90
  loc_A6A168: LateIdLdVar var_B0 DispID_11 -32767
  loc_A6A16F: PopAd
  loc_A6A171: FLdPr Me
  loc_A6A174: VCallAd Control_ID_FechOrcoMsk
  loc_A6A177: FStAdFunc var_C4
  loc_A6A17A: LitI2_Byte &HFF
  loc_A6A17C: PopTmpLdAd2 var_8A
  loc_A6A17F: FLdZeroAd var_C4
  loc_A6A182: FStAdFunc var_BC
  loc_A6A185: FLdRfVar var_BC
  loc_A6A188: FLdRfVar var_B0
  loc_A6A18B: CStrVarTmp
  loc_A6A18C: FStStrNoPop var_B8
  loc_A6A18F: LitI2_Byte 0
  loc_A6A191: LitI2_Byte &HFF
  loc_A6A193: FLdRfVar var_A0
  loc_A6A196: CStrVarTmp
  loc_A6A197: FStStrNoPop var_B4
  loc_A6A19A: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_A6A19F: FStStrNoPop var_C0
  loc_A6A1A2: FLdPr Me
  loc_A6A1A5: MemStStrCopy
  loc_A6A1A9: FFreeStr var_B4 = "": var_B8 = ""
  loc_A6A1B2: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_A6A1BD: FFreeVar var_A0 = ""
  loc_A6A1C4: FLdPr Me
  loc_A6A1C7: MemLdStr global_80
  loc_A6A1CA: LitStr vbNullString
  loc_A6A1CD: NeStr
  loc_A6A1CF: BranchF loc_A6A40D
  loc_A6A1D2: FLdPr Me
  loc_A6A1D5: MemLdStr global_80
  loc_A6A1D8: LitStr "El Periodo ingresado es distinto al Periodo de trabajo. Verifique..."
  loc_A6A1DB: NeStr
  loc_A6A1DD: CVarBoolI2 var_F4
  loc_A6A1E1: LitI4 &HD
  loc_A6A1E6: FLdPr Me
  loc_A6A1E9: MemLdRfVar from_stack_1.global_80
  loc_A6A1EC: CVarRef
  loc_A6A1F1: FLdRfVar var_A0
  loc_A6A1F4: ImpAdCallFPR4  = Left(, )
  loc_A6A1F9: FLdRfVar var_A0
  loc_A6A1FC: LitVarStr var_E4, "Fecha futura:"
  loc_A6A201: HardType
  loc_A6A202: NeVar var_B0
  loc_A6A206: AndVar var_104
  loc_A6A20A: CBoolVarNull
  loc_A6A20C: FFreeVar var_A0 = ""
  loc_A6A213: BranchF loc_A6A40D
  loc_A6A216: FLdPr Me
  loc_A6A219: MemLdStr global_80
  loc_A6A21C: LitStr vbNullString
  loc_A6A21F: NeStr
  loc_A6A221: LitStr "Municipalidad de Guaymallén"
  loc_A6A224: LitStr "Municipalidad de Guaymallén"
  loc_A6A227: EqStr
  loc_A6A229: AndI4
  loc_A6A22A: CVarBoolI2 var_124
  loc_A6A22E: LitI4 1
  loc_A6A233: FLdRfVar var_BC
  loc_A6A236: LitVarStr var_D4, "ExpeImpu"
  loc_A6A23B: PopAdLdVar
  loc_A6A23C: FLdRfVar var_90
  loc_A6A23F: FLdRfVar var_88
  loc_A6A242: FLdPr Me
  loc_A6A245: MemLdRfVar from_stack_1.global_56
  loc_A6A248: NewIfNullPr clsnotapedido
  loc_A6A24B: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_A6A250: FLdPr var_88
  loc_A6A253:  = Me.Fields
  loc_A6A258: FLdPr var_90
  loc_A6A25B: from_stack_2 = Me.Item(from_stack_1)
  loc_A6A260: FLdZeroAd var_BC
  loc_A6A263: CVarAd
  loc_A6A267: FLdRfVar var_B0
  loc_A6A26A: ImpAdCallFPR4  = Ucase()
  loc_A6A26F: FLdRfVar var_B0
  loc_A6A272: LitVarStr var_E4, "DPD"
  loc_A6A277: LitI4 0
  loc_A6A27C: FnInStr4Var
  loc_A6A280: LitVarI2 var_F4, 0
  loc_A6A285: HardType
  loc_A6A286: GtVar var_114
  loc_A6A28A: AndVar var_134
  loc_A6A28E: CBoolVarNull
  loc_A6A290: FFreeAd var_88 = ""
  loc_A6A297: FFreeVar var_A0 = "": var_B0 = "": var_104 = ""
  loc_A6A2A2: BranchF loc_A6A2BC
  loc_A6A2A5: LitStr "Advertencia: "
  loc_A6A2A8: FLdPr Me
  loc_A6A2AB: MemLdStr global_80
  loc_A6A2AE: ConcatStr
  loc_A6A2AF: FStStrNoPop var_B4
  loc_A6A2B2: FLdPr Me
  loc_A6A2B5: MemStStrCopy
  loc_A6A2B9: FFree1Str var_B4
  loc_A6A2BC: FLdPr Me
  loc_A6A2BF: MemLdStr global_80
  loc_A6A2C2: LitStr vbNullString
  loc_A6A2C5: NeStr
  loc_A6A2C7: LitStr "Municipalidad de Guaymallén"
  loc_A6A2CA: LitStr "Municipalidad de Santa Rosa"
  loc_A6A2CD: EqStr
  loc_A6A2CF: AndI4
  loc_A6A2D0: ImpAdLdI4 MemVar_C3D03C
  loc_A6A2D3: LitStr "Mariela"
  loc_A6A2D6: EqStr
  loc_A6A2D8: ImpAdLdI4 MemVar_C3D03C
  loc_A6A2DB: LitStr "Marisa"
  loc_A6A2DE: EqStr
  loc_A6A2E0: OrI4
  loc_A6A2E1: ImpAdLdI4 MemVar_C3D03C
  loc_A6A2E4: LitStr "vanesac"
  loc_A6A2E7: EqStr
  loc_A6A2E9: OrI4
  loc_A6A2EA: ImpAdLdI4 MemVar_C3D03C
  loc_A6A2ED: LitStr "arayaj"
  loc_A6A2F0: EqStr
  loc_A6A2F2: OrI4
  loc_A6A2F3: ImpAdLdI4 MemVar_C3D03C
  loc_A6A2F6: LitStr "varaya"
  loc_A6A2F9: EqStr
  loc_A6A2FB: OrI4
  loc_A6A2FC: ImpAdLdI4 MemVar_C3D03C
  loc_A6A2FF: LitStr "arayaj"
  loc_A6A302: EqStr
  loc_A6A304: OrI4
  loc_A6A305: ImpAdLdI4 MemVar_C3D03C
  loc_A6A308: LitStr "gabriel"
  loc_A6A30B: EqStr
  loc_A6A30D: OrI4
  loc_A6A30E: ImpAdLdI4 MemVar_C3D03C
  loc_A6A311: LitStr "caicedol"
  loc_A6A314: EqStr
  loc_A6A316: OrI4
  loc_A6A317: ImpAdLdI4 MemVar_C3D03C
  loc_A6A31A: LitStr "floros"
  loc_A6A31D: EqStr
  loc_A6A31F: OrI4
  loc_A6A320: AndI4
  loc_A6A321: BranchF loc_A6A33B
  loc_A6A324: LitStr "Advertencia: "
  loc_A6A327: FLdPr Me
  loc_A6A32A: MemLdStr global_80
  loc_A6A32D: ConcatStr
  loc_A6A32E: FStStrNoPop var_B4
  loc_A6A331: FLdPr Me
  loc_A6A334: MemStStrCopy
  loc_A6A338: FFree1Str var_B4
  loc_A6A33B: FLdPr Me
  loc_A6A33E: MemLdStr global_80
  loc_A6A341: LitStr vbNullString
  loc_A6A344: NeStr
  loc_A6A346: LitStr "Municipalidad de Guaymallén"
  loc_A6A349: LitStr "Municipalidad de La Paz"
  loc_A6A34C: EqStr
  loc_A6A34E: AndI4
  loc_A6A34F: ImpAdLdI4 MemVar_C3D03C
  loc_A6A352: LitStr "root"
  loc_A6A355: EqStr
  loc_A6A357: ImpAdLdI4 MemVar_C3D03C
  loc_A6A35A: LitStr "fredyh"
  loc_A6A35D: EqStr
  loc_A6A35F: OrI4
  loc_A6A360: ImpAdLdI4 MemVar_C3D03C
  loc_A6A363: LitStr "evespa"
  loc_A6A366: EqStr
  loc_A6A368: OrI4
  loc_A6A369: ImpAdLdI4 MemVar_C3D03C
  loc_A6A36C: LitStr "root"
  loc_A6A36F: EqStr
  loc_A6A371: OrI4
  loc_A6A372: AndI4
  loc_A6A373: BranchF loc_A6A38D
  loc_A6A376: LitStr "Advertencia: "
  loc_A6A379: FLdPr Me
  loc_A6A37C: MemLdStr global_80
  loc_A6A37F: ConcatStr
  loc_A6A380: FStStrNoPop var_B4
  loc_A6A383: FLdPr Me
  loc_A6A386: MemStStrCopy
  loc_A6A38A: FFree1Str var_B4
  loc_A6A38D: FLdPr Me
  loc_A6A390: MemLdStr global_80
  loc_A6A393: LitStr vbNullString
  loc_A6A396: NeStr
  loc_A6A398: LitStr "Municipalidad de Guaymallén"
  loc_A6A39B: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_A6A39E: EqStr
  loc_A6A3A0: AndI4
  loc_A6A3A1: BranchF loc_A6A3BB
  loc_A6A3A4: LitStr "Advertencia: "
  loc_A6A3A7: FLdPr Me
  loc_A6A3AA: MemLdStr global_80
  loc_A6A3AD: ConcatStr
  loc_A6A3AE: FStStrNoPop var_B4
  loc_A6A3B1: FLdPr Me
  loc_A6A3B4: MemStStrCopy
  loc_A6A3B8: FFree1Str var_B4
  loc_A6A3BB: FLdPr Me
  loc_A6A3BE: MemLdStr global_80
  loc_A6A3C1: LitStr vbNullString
  loc_A6A3C4: NeStr
  loc_A6A3C6: LitStr "Municipalidad de Guaymallén"
  loc_A6A3C9: LitStr "Municipalidad de Tupungato"
  loc_A6A3CC: EqStr
  loc_A6A3CE: AndI4
  loc_A6A3CF: ImpAdLdI4 MemVar_C3D03C
  loc_A6A3D2: LitStr "ysagas"
  loc_A6A3D5: EqStr
  loc_A6A3D7: ImpAdLdI4 MemVar_C3D03C
  loc_A6A3DA: LitStr "lcarmona"
  loc_A6A3DD: EqStr
  loc_A6A3DF: OrI4
  loc_A6A3E0: ImpAdLdI4 MemVar_C3D03C
  loc_A6A3E3: LitStr "mbalde"
  loc_A6A3E6: EqStr
  loc_A6A3E8: OrI4
  loc_A6A3E9: ImpAdLdI4 MemVar_C3D03C
  loc_A6A3EC: LitStr "root"
  loc_A6A3EF: EqStr
  loc_A6A3F1: OrI4
  loc_A6A3F2: AndI4
  loc_A6A3F3: BranchF loc_A6A40D
  loc_A6A3F6: LitStr "Advertencia: "
  loc_A6A3F9: FLdPr Me
  loc_A6A3FC: MemLdStr global_80
  loc_A6A3FF: ConcatStr
  loc_A6A400: FStStrNoPop var_B4
  loc_A6A403: FLdPr Me
  loc_A6A406: MemStStrCopy
  loc_A6A40A: FFree1Str var_B4
  loc_A6A40D: FLdPr Me
  loc_A6A410: VCallAd Control_ID_FechOrcoMsk
  loc_A6A413: FStAdFunc var_C4
  loc_A6A416: LitNothing
  loc_A6A418: CastAd
  loc_A6A41B: FStAdFunc var_BC
  loc_A6A41E: FLdRfVar var_BC
  loc_A6A421: FLdZeroAd var_C4
  loc_A6A424: FStAdFuncNoPop
  loc_A6A427: CastAd
  loc_A6A42A: FStAdFunc var_90
  loc_A6A42D: FLdRfVar var_90
  loc_A6A430: FLdPr Me
  loc_A6A433: MemLdRfVar from_stack_1.global_80
  loc_A6A436: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_A6A43B: IStI2 arg_C
  loc_A6A43E: FFreeAd var_88 = "": var_90 = "": var_BC = ""
  loc_A6A449: ILdI2 arg_C
  loc_A6A44C: BranchF loc_A6A465
  loc_A6A44F: LitI4 0
  loc_A6A454: LitI4 1
  loc_A6A459: FLdPr Me
  loc_A6A45C: MemLdStr global_128
  loc_A6A45F: Ary1LdI4
  loc_A6A460: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A6A465: ExitProcHresult
End Function

Private Sub FechOrcoMsk_KeyPress(KeyAscii As Integer) '989BD8
  'Data Table: 484B14
  loc_989B94: ILdI2 KeyAscii
  loc_989B97: CI4UI1
  loc_989B98: LitI4 &H20
  loc_989B9D: EqI4
  loc_989B9E: BranchF loc_989BD4
  loc_989BA1: LitVar_Missing var_A4
  loc_989BA4: PopAdLdVar
  loc_989BA5: LitVarI4
  loc_989BAD: PopAdLdVar
  loc_989BAE: ImpAdLdRf MemVar_C3D9A8
  loc_989BB1: NewIfNullPr frmCalendario
  loc_989BB4: frmCalendario.Show from_stack_1, from_stack_2
  loc_989BB9: ImpAdLdRf MemVar_C3D038
  loc_989BBC: CDargRef
  loc_989BC0: FLdPr Me
  loc_989BC3: VCallAd Control_ID_FechOrcoMsk
  loc_989BC6: FStAdFunc var_A8
  loc_989BC9: FLdPr var_A8
  loc_989BCC: LateIdSt
  loc_989BD1: FFree1Ad var_A8
  loc_989BD4: ExitProcHresult
  loc_989BD5: ILdRf arg_1BFF
End Sub

Private Function Proc_127_26_A36368() 'A36368
  'Data Table: 484B14
  loc_A36144: FLdPr Me
  loc_A36147: VCallAd Control_ID_ItemCotizacionFlex
  loc_A3614A: FStAdFunc var_88
  loc_A3614D: FLdPr var_88
  loc_A36150: LateIdCall
  loc_A36158: LitVarI4
  loc_A36160: PopAdLdVar
  loc_A36161: FLdPr var_88
  loc_A36164: LateIdSt
  loc_A36169: LitVarI4
  loc_A36171: PopAdLdVar
  loc_A36172: LitVarI4
  loc_A3617A: PopAdLdVar
  loc_A3617B: LitVarStr var_D8, "Item"
  loc_A36180: PopAdLdVar
  loc_A36181: FLdPr var_88
  loc_A36184: LateIdCallSt
  loc_A3618C: LitVarI4
  loc_A36194: PopAdLdVar
  loc_A36195: LitVarI4
  loc_A3619D: PopAdLdVar
  loc_A3619E: LitVarStr var_D8, "Alt."
  loc_A361A3: PopAdLdVar
  loc_A361A4: FLdPr var_88
  loc_A361A7: LateIdCallSt
  loc_A361AF: LitVarI4
  loc_A361B7: PopAdLdVar
  loc_A361B8: LitVarI4
  loc_A361C0: PopAdLdVar
  loc_A361C1: LitVarStr var_D8, "Codigo"
  loc_A361C6: PopAdLdVar
  loc_A361C7: FLdPr var_88
  loc_A361CA: LateIdCallSt
  loc_A361D2: LitVarI4
  loc_A361DA: PopAdLdVar
  loc_A361DB: LitVarI4
  loc_A361E3: PopAdLdVar
  loc_A361E4: LitVarStr var_D8, "Detalle del Insumo"
  loc_A361E9: PopAdLdVar
  loc_A361EA: FLdPr var_88
  loc_A361ED: LateIdCallSt
  loc_A361F5: LitVarI4
  loc_A361FD: PopAdLdVar
  loc_A361FE: LitVarI4
  loc_A36206: PopAdLdVar
  loc_A36207: LitVarStr var_D8, "Detalle AMPLIADO del Insumo"
  loc_A3620C: PopAdLdVar
  loc_A3620D: FLdPr var_88
  loc_A36210: LateIdCallSt
  loc_A36218: LitVarI4
  loc_A36220: PopAdLdVar
  loc_A36221: LitVarI4
  loc_A36229: PopAdLdVar
  loc_A3622A: LitVarStr var_D8, "Cantidad"
  loc_A3622F: PopAdLdVar
  loc_A36230: FLdPr var_88
  loc_A36233: LateIdCallSt
  loc_A3623B: LitVarI4
  loc_A36243: PopAdLdVar
  loc_A36244: LitVarI4
  loc_A3624C: PopAdLdVar
  loc_A3624D: LitVarStr var_D8, "Pr. Unitario"
  loc_A36252: PopAdLdVar
  loc_A36253: FLdPr var_88
  loc_A36256: LateIdCallSt
  loc_A3625E: LitVarI4
  loc_A36266: PopAdLdVar
  loc_A36267: LitVarI4
  loc_A3626F: PopAdLdVar
  loc_A36270: LitVarStr var_D8, "Total"
  loc_A36275: PopAdLdVar
  loc_A36276: FLdPr var_88
  loc_A36279: LateIdCallSt
  loc_A36281: LitVarI4
  loc_A36289: PopAdLdVar
  loc_A3628A: LitVarI4
  loc_A36292: PopAdLdVar
  loc_A36293: LitVarStr var_D8, "Partida"
  loc_A36298: PopAdLdVar
  loc_A36299: FLdPr var_88
  loc_A3629C: LateIdCallSt
  loc_A362A4: LitVarI4
  loc_A362AC: PopAdLdVar
  loc_A362AD: LitVarI4
  loc_A362B5: PopAdLdVar
  loc_A362B6: LitVarStr var_D8, "Organigrama"
  loc_A362BB: PopAdLdVar
  loc_A362BC: FLdPr var_88
  loc_A362BF: LateIdCallSt
  loc_A362C7: LitVarI4
  loc_A362CF: PopAdLdVar
  loc_A362D0: LitVarI4
  loc_A362D8: PopAdLdVar
  loc_A362D9: LitVarStr var_D8, "Fin. y Fun."
  loc_A362DE: PopAdLdVar
  loc_A362DF: FLdPr var_88
  loc_A362E2: LateIdCallSt
  loc_A362EA: LitVarI4
  loc_A362F2: PopAdLdVar
  loc_A362F3: LitVarI4
  loc_A362FB: PopAdLdVar
  loc_A362FC: LitVarStr var_D8, "U.G."
  loc_A36301: PopAdLdVar
  loc_A36302: FLdPr var_88
  loc_A36305: LateIdCallSt
  loc_A3630D: LitVarI4
  loc_A36315: PopAdLdVar
  loc_A36316: LitVarI4
  loc_A3631E: PopAdLdVar
  loc_A3631F: LitVarStr var_D8, "Marca"
  loc_A36324: PopAdLdVar
  loc_A36325: FLdPr var_88
  loc_A36328: LateIdCallSt
  loc_A36330: LitVarI4
  loc_A36338: PopAdLdVar
  loc_A36339: LitVarI4
  loc_A36341: PopAdLdVar
  loc_A36342: LitVarStr var_D8, "Carac."
  loc_A36347: PopAdLdVar
  loc_A36348: FLdPr var_88
  loc_A3634B: LateIdCallSt
  loc_A36353: FLdPr var_88
  loc_A36356: LateIdCall
  loc_A3635E: LitNothing
  loc_A36360: FStAd var_88 
  loc_A36364: ExitProcHresult
End Function

Private Function Proc_127_27_C15038() 'C15038
  'Data Table: 484B14
  loc_C12598: FLdRfVar var_E4
  loc_C1259B: FLdRfVar var_D4
  loc_C1259E: LitVarStr var_D0, "ImpoDiseTico"
  loc_C125A3: PopAdLdVar
  loc_C125A4: FLdRfVar var_C0
  loc_C125A7: FLdRfVar var_BC
  loc_C125AA: FLdPr Me
  loc_C125AD: MemLdRfVar from_stack_1.global_56
  loc_C125B0: NewIfNullPr clsnotapedido
  loc_C125B3: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C125B8: FLdPr var_BC
  loc_C125BB:  = Me.Fields
  loc_C125C0: FLdPr var_C0
  loc_C125C3: from_stack_2 = Me.Item(from_stack_1)
  loc_C125C8: FLdPr var_D4
  loc_C125CB:  = Me.Value
  loc_C125D0: FLdRfVar var_B8
  loc_C125D3: FLdRfVar var_A8
  loc_C125D6: LitVarStr var_A4, "ImpoDiseTico"
  loc_C125DB: PopAdLdVar
  loc_C125DC: FLdRfVar var_94
  loc_C125DF: FLdRfVar var_90
  loc_C125E2: FLdPr Me
  loc_C125E5: MemLdRfVar from_stack_1.global_56
  loc_C125E8: NewIfNullPr clsnotapedido
  loc_C125EB: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C125F0: FLdPr var_90
  loc_C125F3:  = Me.Fields
  loc_C125F8: FLdPr var_94
  loc_C125FB: from_stack_2 = Me.Item(from_stack_1)
  loc_C12600: FLdPr var_A8
  loc_C12603:  = Me.Value
  loc_C12608: FLdRfVar var_B8
  loc_C1260B: FnCLngVar
  loc_C1260D: LitI4 0
  loc_C12612: GtI4
  loc_C12613: FLdPr Me
  loc_C12616: MemLdFPR8 global_120
  loc_C12619: FLdRfVar var_E4
  loc_C1261C: FnCLngVar
  loc_C1261E: CR8I4
  loc_C1261F: GeR8
  loc_C12620: AndI4
  loc_C12621: FFreeAd var_90 = "": var_94 = "": var_A8 = "": var_BC = "": var_C0 = ""
  loc_C12630: FFreeVar var_B8 = ""
  loc_C12637: BranchF loc_C12930
  loc_C1263A: FLdPr Me
  loc_C1263D: MemLdR8 global_120
  loc_C12640: ImpAdLdRf MemVar_C3DCA0
  loc_C12643: NewIfNullPr mdlSellos
  loc_C12646: Call mdlSellos.ImpoLimitePut(from_stack_1v)
  loc_C1264B: FLdRfVar var_B8
  loc_C1264E: FLdRfVar var_A8
  loc_C12651: LitVarStr var_A4, "FactProv"
  loc_C12656: PopAdLdVar
  loc_C12657: FLdRfVar var_94
  loc_C1265A: FLdRfVar var_90
  loc_C1265D: FLdPr Me
  loc_C12660: MemLdRfVar from_stack_1.global_56
  loc_C12663: NewIfNullPr clsnotapedido
  loc_C12666: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C1266B: FLdPr var_90
  loc_C1266E:  = Me.Fields
  loc_C12673: FLdPr var_94
  loc_C12676: from_stack_2 = Me.Item(from_stack_1)
  loc_C1267B: FLdPr var_A8
  loc_C1267E:  = Me.Value
  loc_C12683: FLdRfVar var_B8
  loc_C12686: LitVarStr var_D0, "fca"
  loc_C1268B: HardType
  loc_C1268C: EqVar var_E4
  loc_C12690: FLdRfVar var_104
  loc_C12693: FLdRfVar var_D4
  loc_C12696: LitVarStr var_F4, "FactProv"
  loc_C1269B: PopAdLdVar
  loc_C1269C: FLdRfVar var_C0
  loc_C1269F: FLdRfVar var_BC
  loc_C126A2: FLdPr Me
  loc_C126A5: MemLdRfVar from_stack_1.global_56
  loc_C126A8: NewIfNullPr clsnotapedido
  loc_C126AB: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C126B0: FLdPr var_BC
  loc_C126B3:  = Me.Fields
  loc_C126B8: FLdPr var_C0
  loc_C126BB: from_stack_2 = Me.Item(from_stack_1)
  loc_C126C0: FLdPr var_D4
  loc_C126C3:  = Me.Value
  loc_C126C8: FLdRfVar var_104
  loc_C126CB: LitVarStr var_114, "fcb"
  loc_C126D0: HardType
  loc_C126D1: EqVar var_124
  loc_C126D5: OrVar var_134
  loc_C126D9: CBoolVarNull
  loc_C126DB: FFreeAd var_90 = "": var_94 = "": var_A8 = "": var_BC = "": var_C0 = ""
  loc_C126EA: FFreeVar var_B8 = ""
  loc_C126F1: BranchF loc_C127DF
  loc_C126F4: LitStr "0"
  loc_C126F7: ImpAdLdRf MemVar_C3DCA0
  loc_C126FA: NewIfNullPr mdlSellos
  loc_C126FD: VCallAd Control_ID_Impo105Txt
  loc_C12700: FStAdFunc var_90
  loc_C12703: FLdPr var_90
  loc_C12706: mdlSellos.TextBox.Text = from_stack_1
  loc_C1270B: FFree1Ad var_90
  loc_C1270E: LitStr "Municipalidad de Guaymallén"
  loc_C12711: LitStr "Municipalidad de Santa Rosa"
  loc_C12714: EqStr
  loc_C12716: BranchF loc_C1276F
  loc_C12719: LitI4 2
  loc_C1271E: FLdPr Me
  loc_C12721: MemLdFPR8 global_120
  loc_C12724: LitDate 1.21
  loc_C1272D: DivR8
  loc_C1272E: LitDate 0.00625
  loc_C12737: MulR8
  loc_C12738: CVarR8
  loc_C1273C: FLdRfVar var_E4
  loc_C1273F: ImpAdCallFPR4  = Round(, )
  loc_C12744: FLdRfVar var_E4
  loc_C12747: CStrVarVal var_138
  loc_C1274B: ImpAdLdRf MemVar_C3DCA0
  loc_C1274E: NewIfNullPr mdlSellos
  loc_C12751: VCallAd Control_ID_Impo21Txt
  loc_C12754: FStAdFunc var_90
  loc_C12757: FLdPr var_90
  loc_C1275A: mdlSellos.TextBox.Text = from_stack_1
  loc_C1275F: FFree1Str var_138
  loc_C12762: FFree1Ad var_90
  loc_C12765: FFreeVar var_B8 = ""
  loc_C1276C: Branch loc_C127C2
  loc_C1276F: LitI4 2
  loc_C12774: FLdPr Me
  loc_C12777: MemLdFPR8 global_120
  loc_C1277A: LitDate 1.21
  loc_C12783: DivR8
  loc_C12784: LitDate 0.00625
  loc_C1278D: MulR8
  loc_C1278E: CVarR8
  loc_C12792: FLdRfVar var_E4
  loc_C12795: ImpAdCallFPR4  = Round(, )
  loc_C1279A: FLdRfVar var_E4
  loc_C1279D: CStrVarVal var_138
  loc_C127A1: ImpAdLdRf MemVar_C3DCA0
  loc_C127A4: NewIfNullPr mdlSellos
  loc_C127A7: VCallAd Control_ID_Impo21Txt
  loc_C127AA: FStAdFunc var_90
  loc_C127AD: FLdPr var_90
  loc_C127B0: mdlSellos.TextBox.Text = from_stack_1
  loc_C127B5: FFree1Str var_138
  loc_C127B8: FFree1Ad var_90
  loc_C127BB: FFreeVar var_B8 = ""
  loc_C127C2: LitStr "0"
  loc_C127C5: ImpAdLdRf MemVar_C3DCA0
  loc_C127C8: NewIfNullPr mdlSellos
  loc_C127CB: VCallAd Control_ID_Impo27Txt
  loc_C127CE: FStAdFunc var_90
  loc_C127D1: FLdPr var_90
  loc_C127D4: mdlSellos.TextBox.Text = from_stack_1
  loc_C127D9: FFree1Ad var_90
  loc_C127DC: Branch loc_C12915
  loc_C127DF: FLdRfVar var_B8
  loc_C127E2: FLdRfVar var_A8
  loc_C127E5: LitVarStr var_A4, "FactProv"
  loc_C127EA: PopAdLdVar
  loc_C127EB: FLdRfVar var_94
  loc_C127EE: FLdRfVar var_90
  loc_C127F1: FLdPr Me
  loc_C127F4: MemLdRfVar from_stack_1.global_56
  loc_C127F7: NewIfNullPr clsnotapedido
  loc_C127FA: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C127FF: FLdPr var_90
  loc_C12802:  = Me.Fields
  loc_C12807: FLdPr var_94
  loc_C1280A: from_stack_2 = Me.Item(from_stack_1)
  loc_C1280F: FLdPr var_A8
  loc_C12812:  = Me.Value
  loc_C12817: FLdRfVar var_B8
  loc_C1281A: LitVarStr var_D0, "fcc"
  loc_C1281F: HardType
  loc_C12820: EqVarBool
  loc_C12822: FFreeAd var_90 = "": var_94 = ""
  loc_C1282B: FFree1Var var_B8 = ""
  loc_C1282E: BranchF loc_C12908
  loc_C12831: LitStr "0"
  loc_C12834: ImpAdLdRf MemVar_C3DCA0
  loc_C12837: NewIfNullPr mdlSellos
  loc_C1283A: VCallAd Control_ID_Impo105Txt
  loc_C1283D: FStAdFunc var_90
  loc_C12840: FLdPr var_90
  loc_C12843: mdlSellos.TextBox.Text = from_stack_1
  loc_C12848: FFree1Ad var_90
  loc_C1284B: LitStr "Municipalidad de Guaymallén"
  loc_C1284E: LitStr "Municipalidad de Santa Rosa"
  loc_C12851: EqStr
  loc_C12853: BranchF loc_C128A2
  loc_C12856: LitI4 2
  loc_C1285B: FLdPr Me
  loc_C1285E: MemLdFPR8 global_120
  loc_C12861: LitDate 0.00625
  loc_C1286A: MulR8
  loc_C1286B: CVarR8
  loc_C1286F: FLdRfVar var_E4
  loc_C12872: ImpAdCallFPR4  = Round(, )
  loc_C12877: FLdRfVar var_E4
  loc_C1287A: CStrVarVal var_138
  loc_C1287E: ImpAdLdRf MemVar_C3DCA0
  loc_C12881: NewIfNullPr mdlSellos
  loc_C12884: VCallAd Control_ID_Impo21Txt
  loc_C12887: FStAdFunc var_90
  loc_C1288A: FLdPr var_90
  loc_C1288D: mdlSellos.TextBox.Text = from_stack_1
  loc_C12892: FFree1Str var_138
  loc_C12895: FFree1Ad var_90
  loc_C12898: FFreeVar var_B8 = ""
  loc_C1289F: Branch loc_C128EB
  loc_C128A2: LitI4 2
  loc_C128A7: FLdPr Me
  loc_C128AA: MemLdFPR8 global_120
  loc_C128AD: LitDate 0.00625
  loc_C128B6: MulR8
  loc_C128B7: CVarR8
  loc_C128BB: FLdRfVar var_E4
  loc_C128BE: ImpAdCallFPR4  = Round(, )
  loc_C128C3: FLdRfVar var_E4
  loc_C128C6: CStrVarVal var_138
  loc_C128CA: ImpAdLdRf MemVar_C3DCA0
  loc_C128CD: NewIfNullPr mdlSellos
  loc_C128D0: VCallAd Control_ID_Impo21Txt
  loc_C128D3: FStAdFunc var_90
  loc_C128D6: FLdPr var_90
  loc_C128D9: mdlSellos.TextBox.Text = from_stack_1
  loc_C128DE: FFree1Str var_138
  loc_C128E1: FFree1Ad var_90
  loc_C128E4: FFreeVar var_B8 = ""
  loc_C128EB: LitStr "0"
  loc_C128EE: ImpAdLdRf MemVar_C3DCA0
  loc_C128F1: NewIfNullPr mdlSellos
  loc_C128F4: VCallAd Control_ID_Impo27Txt
  loc_C128F7: FStAdFunc var_90
  loc_C128FA: FLdPr var_90
  loc_C128FD: mdlSellos.TextBox.Text = from_stack_1
  loc_C12902: FFree1Ad var_90
  loc_C12905: Branch loc_C12915
  loc_C12908: LitI4 0
  loc_C1290D: LitStr "Advertencia: revisar el tipo de factura ..."
  loc_C12910: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C12915: LitVar_Missing var_D0
  loc_C12918: PopAdLdVar
  loc_C12919: LitVarI4
  loc_C12921: PopAdLdVar
  loc_C12922: ImpAdLdRf MemVar_C3DCA0
  loc_C12925: NewIfNullPr mdlSellos
  loc_C12928: mdlSellos.Show from_stack_1, from_stack_2
  loc_C1292D: Branch loc_C129AB
  loc_C12930: LitStr "0"
  loc_C12933: ImpAdLdRf MemVar_C3DCA0
  loc_C12936: NewIfNullPr mdlSellos
  loc_C12939: VCallAd Control_ID_Impo105Txt
  loc_C1293C: FStAdFunc var_90
  loc_C1293F: FLdPr var_90
  loc_C12942: mdlSellos.TextBox.Text = from_stack_1
  loc_C12947: FFree1Ad var_90
  loc_C1294A: LitStr "0"
  loc_C1294D: ImpAdLdRf MemVar_C3DCA0
  loc_C12950: NewIfNullPr mdlSellos
  loc_C12953: VCallAd Control_ID_Impo21Txt
  loc_C12956: FStAdFunc var_90
  loc_C12959: FLdPr var_90
  loc_C1295C: mdlSellos.TextBox.Text = from_stack_1
  loc_C12961: FFree1Ad var_90
  loc_C12964: LitStr "0"
  loc_C12967: ImpAdLdRf MemVar_C3DCA0
  loc_C1296A: NewIfNullPr mdlSellos
  loc_C1296D: VCallAd Control_ID_Impo27Txt
  loc_C12970: FStAdFunc var_90
  loc_C12973: FLdPr var_90
  loc_C12976: mdlSellos.TextBox.Text = from_stack_1
  loc_C1297B: FFree1Ad var_90
  loc_C1297E: LitI2_Byte 0
  loc_C12980: CR8I2
  loc_C12981: PopFPR8
  loc_C12982: ImpAdLdRf MemVar_C3DCA0
  loc_C12985: NewIfNullPr mdlSellos
  loc_C12988: Call mdlSellos.Impo105Put(from_stack_1v)
  loc_C1298D: LitI2_Byte 0
  loc_C1298F: CR8I2
  loc_C12990: PopFPR8
  loc_C12991: ImpAdLdRf MemVar_C3DCA0
  loc_C12994: NewIfNullPr mdlSellos
  loc_C12997: Call mdlSellos.Impo21Put(from_stack_1v)
  loc_C1299C: LitI2_Byte 0
  loc_C1299E: CR8I2
  loc_C1299F: PopFPR8
  loc_C129A0: ImpAdLdRf MemVar_C3DCA0
  loc_C129A3: NewIfNullPr mdlSellos
  loc_C129A6: Call mdlSellos.Impo27Put(from_stack_1v)
  loc_C129AB: LitStr vbNullString
  loc_C129AE: FStStrCopy var_8C
  loc_C129B1: FLdRfVar var_138
  loc_C129B4: FLdPr Me
  loc_C129B7: VCallAd Control_ID_cmdAceptar
  loc_C129BA: FStAdFunc var_90
  loc_C129BD: FLdPr var_90
  loc_C129C0:  = mdlSellos.TextBox.Text
  loc_C129C5: FLdRfVar var_368
  loc_C129C8: FLdRfVar var_BC
  loc_C129CB: LitVarStr var_A4, "CodiNope"
  loc_C129D0: PopAdLdVar
  loc_C129D1: FLdRfVar var_A8
  loc_C129D4: FLdRfVar var_94
  loc_C129D7: FLdPr Me
  loc_C129DA: MemLdRfVar from_stack_1.global_56
  loc_C129DD: NewIfNullPr clsnotapedido
  loc_C129E0: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C129E5: FLdPr var_94
  loc_C129E8:  = Me.Fields
  loc_C129ED: FLdPr var_A8
  loc_C129F0: from_stack_2 = Me.Item(from_stack_1)
  loc_C129F5: FLdPr var_BC
  loc_C129F8:  = Me.Value
  loc_C129FD: FLdRfVar var_378
  loc_C12A00: FLdRfVar var_13C
  loc_C12A03: LitVarStr var_D0, "IdCoti"
  loc_C12A08: PopAdLdVar
  loc_C12A09: FLdRfVar var_D4
  loc_C12A0C: FLdRfVar var_C0
  loc_C12A0F: FLdPr Me
  loc_C12A12: MemLdRfVar from_stack_1.global_56
  loc_C12A15: NewIfNullPr clsnotapedido
  loc_C12A18: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C12A1D: FLdPr var_C0
  loc_C12A20:  = Me.Fields
  loc_C12A25: FLdPr var_D4
  loc_C12A28: from_stack_2 = Me.Item(from_stack_1)
  loc_C12A2D: FLdPr var_13C
  loc_C12A30:  = Me.Value
  loc_C12A35: FLdRfVar var_388
  loc_C12A38: FLdRfVar var_148
  loc_C12A3B: LitVarStr var_F4, "CodiTico"
  loc_C12A40: PopAdLdVar
  loc_C12A41: FLdRfVar var_144
  loc_C12A44: FLdRfVar var_140
  loc_C12A47: FLdPr Me
  loc_C12A4A: MemLdRfVar from_stack_1.global_56
  loc_C12A4D: NewIfNullPr clsnotapedido
  loc_C12A50: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C12A55: FLdPr var_140
  loc_C12A58:  = Me.Fields
  loc_C12A5D: FLdPr var_144
  loc_C12A60: from_stack_2 = Me.Item(from_stack_1)
  loc_C12A65: FLdPr var_148
  loc_C12A68:  = Me.Value
  loc_C12A6D: FLdRfVar var_398
  loc_C12A70: FLdRfVar var_154
  loc_C12A73: LitVarStr var_114, "CucuPers"
  loc_C12A78: PopAdLdVar
  loc_C12A79: FLdRfVar var_150
  loc_C12A7C: FLdRfVar var_14C
  loc_C12A7F: FLdPr Me
  loc_C12A82: MemLdRfVar from_stack_1.global_56
  loc_C12A85: NewIfNullPr clsnotapedido
  loc_C12A88: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C12A8D: FLdPr var_14C
  loc_C12A90:  = Me.Fields
  loc_C12A95: FLdPr var_150
  loc_C12A98: from_stack_2 = Me.Item(from_stack_1)
  loc_C12A9D: FLdPr var_154
  loc_C12AA0:  = Me.Value
  loc_C12AA5: FLdRfVar var_3AC
  loc_C12AA8: FLdRfVar var_170
  loc_C12AAB: LitVarStr var_16C, "CodiOrga"
  loc_C12AB0: PopAdLdVar
  loc_C12AB1: FLdRfVar var_15C
  loc_C12AB4: FLdRfVar var_158
  loc_C12AB7: FLdPr Me
  loc_C12ABA: MemLdRfVar from_stack_1.global_56
  loc_C12ABD: NewIfNullPr clsnotapedido
  loc_C12AC0: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C12AC5: FLdPr var_158
  loc_C12AC8:  = Me.Fields
  loc_C12ACD: FLdPr var_15C
  loc_C12AD0: from_stack_2 = Me.Item(from_stack_1)
  loc_C12AD5: FLdPr var_170
  loc_C12AD8:  = Me.Value
  loc_C12ADD: FLdRfVar var_3C0
  loc_C12AE0: FLdRfVar var_18C
  loc_C12AE3: LitVarStr var_188, "ExpeImpu"
  loc_C12AE8: PopAdLdVar
  loc_C12AE9: FLdRfVar var_178
  loc_C12AEC: FLdRfVar var_174
  loc_C12AEF: FLdPr Me
  loc_C12AF2: MemLdRfVar from_stack_1.global_56
  loc_C12AF5: NewIfNullPr clsnotapedido
  loc_C12AF8: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C12AFD: FLdPr var_174
  loc_C12B00:  = Me.Fields
  loc_C12B05: FLdPr var_178
  loc_C12B08: from_stack_2 = Me.Item(from_stack_1)
  loc_C12B0D: FLdPr var_18C
  loc_C12B10:  = Me.Value
  loc_C12B15: FLdPr Me
  loc_C12B18: VCallAd Control_ID_FechOrcoMsk
  loc_C12B1B: FStAdFunc var_190
  loc_C12B1E: FLdPr var_190
  loc_C12B21: LateIdLdVar var_B8 DispID_15 0
  loc_C12B28: PopAd
  loc_C12B2A: FLdPr Me
  loc_C12B2D: VCallAd Control_ID_ItemCotizacionFlex
  loc_C12B30: FStAdFunc var_3DC
  loc_C12B33: FLdRfVar var_198
  loc_C12B36: ImpAdLdRf MemVar_C3DCA0
  loc_C12B39: NewIfNullPr mdlSellos
  loc_C12B3C: from_stack_1v = mdlSellos.Impo21Get()
  loc_C12B41: FLdRfVar var_1A0
  loc_C12B44: ImpAdLdRf MemVar_C3DCA0
  loc_C12B47: NewIfNullPr mdlSellos
  loc_C12B4A: from_stack_1v = mdlSellos.Impo105Get()
  loc_C12B4F: FLdRfVar var_1A8
  loc_C12B52: ImpAdLdRf MemVar_C3DCA0
  loc_C12B55: NewIfNullPr mdlSellos
  loc_C12B58: from_stack_1v = mdlSellos.Impo27Get()
  loc_C12B5D: LitVarI2 var_104, 0
  loc_C12B62: LitVarI2 var_E4, 27
  loc_C12B67: FLdFPR8 var_1A8
  loc_C12B6A: LitI2_Byte 0
  loc_C12B6C: CR8I2
  loc_C12B6D: NeR8
  loc_C12B6E: CVarBoolI2 var_1B8
  loc_C12B72: FLdRfVar var_124
  loc_C12B75: ImpAdCallFPR4  = IIf(, , )
  loc_C12B7A: FLdRfVar var_124
  loc_C12B7D: LitVarR8
  loc_C12B89: FLdFPR8 var_1A0
  loc_C12B8C: LitI2_Byte 0
  loc_C12B8E: CR8I2
  loc_C12B8F: NeR8
  loc_C12B90: CVarBoolI2 var_1E8
  loc_C12B94: FLdRfVar var_208
  loc_C12B97: ImpAdCallFPR4  = IIf(, , )
  loc_C12B9C: FLdRfVar var_208
  loc_C12B9F: LitVarI2 var_238, 21
  loc_C12BA4: FLdFPR8 var_198
  loc_C12BA7: LitI2_Byte 0
  loc_C12BA9: CR8I2
  loc_C12BAA: NeR8
  loc_C12BAB: CVarBoolI2 var_218
  loc_C12BAF: FLdRfVar var_248
  loc_C12BB2: ImpAdCallFPR4  = IIf(, , )
  loc_C12BB7: FLdRfVar var_250
  loc_C12BBA: ImpAdLdRf MemVar_C3DCA0
  loc_C12BBD: NewIfNullPr mdlSellos
  loc_C12BC0: from_stack_1v = mdlSellos.Impo21Get()
  loc_C12BC5: FLdRfVar var_258
  loc_C12BC8: ImpAdLdRf MemVar_C3DCA0
  loc_C12BCB: NewIfNullPr mdlSellos
  loc_C12BCE: from_stack_1v = mdlSellos.Impo21Get()
  loc_C12BD3: FLdRfVar var_260
  loc_C12BD6: ImpAdLdRf MemVar_C3DCA0
  loc_C12BD9: NewIfNullPr mdlSellos
  loc_C12BDC: from_stack_1v = mdlSellos.Impo105Get()
  loc_C12BE1: FLdRfVar var_268
  loc_C12BE4: ImpAdLdRf MemVar_C3DCA0
  loc_C12BE7: NewIfNullPr mdlSellos
  loc_C12BEA: from_stack_1v = mdlSellos.Impo105Get()
  loc_C12BEF: FLdRfVar var_270
  loc_C12BF2: ImpAdLdRf MemVar_C3DCA0
  loc_C12BF5: NewIfNullPr mdlSellos
  loc_C12BF8: from_stack_1v = mdlSellos.Impo27Get()
  loc_C12BFD: FLdRfVar var_278
  loc_C12C00: ImpAdLdRf MemVar_C3DCA0
  loc_C12C03: NewIfNullPr mdlSellos
  loc_C12C06: from_stack_1v = mdlSellos.Impo27Get()
  loc_C12C0B: LitVarI2 var_2C8, 0
  loc_C12C10: FLdFPR8 var_278
  loc_C12C13: CVarR8
  loc_C12C17: FLdFPR8 var_270
  loc_C12C1A: LitI2_Byte 0
  loc_C12C1C: CR8I2
  loc_C12C1D: NeR8
  loc_C12C1E: CVarBoolI2 var_288
  loc_C12C22: FLdRfVar var_2D8
  loc_C12C25: ImpAdCallFPR4  = IIf(, , )
  loc_C12C2A: FLdRfVar var_2D8
  loc_C12C2D: FLdFPR8 var_268
  loc_C12C30: CVarR8
  loc_C12C34: FLdFPR8 var_260
  loc_C12C37: LitI2_Byte 0
  loc_C12C39: CR8I2
  loc_C12C3A: NeR8
  loc_C12C3B: CVarBoolI2 var_2E8
  loc_C12C3F: FLdRfVar var_318
  loc_C12C42: ImpAdCallFPR4  = IIf(, , )
  loc_C12C47: FLdRfVar var_318
  loc_C12C4A: FLdFPR8 var_258
  loc_C12C4D: CVarR8
  loc_C12C51: FLdFPR8 var_250
  loc_C12C54: LitI2_Byte 0
  loc_C12C56: CR8I2
  loc_C12C57: NeR8
  loc_C12C58: CVarBoolI2 var_328
  loc_C12C5C: FLdRfVar var_358
  loc_C12C5F: ImpAdCallFPR4  = IIf(, , )
  loc_C12C64: FLdRfVar var_3D8
  loc_C12C67: FLdRfVar var_358
  loc_C12C6A: CStrVarVal var_3D4
  loc_C12C6E: FLdRfVar var_248
  loc_C12C71: CStrVarVal var_3D0
  loc_C12C75: FLdZeroAd var_3DC
  loc_C12C78: FStAdFunc var_3CC
  loc_C12C7B: FLdRfVar var_3CC
  loc_C12C7E: FLdRfVar var_B8
  loc_C12C81: CStrVarTmp
  loc_C12C82: FStStrNoPop var_3C8
  loc_C12C85: FLdRfVar var_3C0
  loc_C12C88: CStrVarTmp
  loc_C12C89: FStStrNoPop var_3C4
  loc_C12C8C: FLdRfVar var_3AC
  loc_C12C8F: CStrVarTmp
  loc_C12C90: FStStrNoPop var_3B0
  loc_C12C93: FLdRfVar var_398
  loc_C12C96: CStrVarTmp
  loc_C12C97: FStStrNoPop var_39C
  loc_C12C9A: FLdRfVar var_388
  loc_C12C9D: CUI1Var
  loc_C12C9F: FLdRfVar var_378
  loc_C12CA2: CI4Var
  loc_C12CA4: FLdRfVar var_368
  loc_C12CA7: CI4Var
  loc_C12CA9: ILdRf var_138
  loc_C12CAC: ImpAdLdI2 MemVar_C3D064
  loc_C12CAF: FLdPr Me
  loc_C12CB2: MemLdRfVar from_stack_1.global_52
  loc_C12CB5: NewIfNullPr clsordencompra
  loc_C12CB8: from_stack_13v = clsordencompra.AddNew(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v)
  loc_C12CBD: ILdRf var_3D8
  loc_C12CC0: FStR4 var_88
  loc_C12CC3: FFreeStr var_138 = "": var_39C = "": var_3B0 = "": var_3C4 = "": var_3C8 = "": var_3D0 = ""
  loc_C12CD4: FFreeAd var_90 = "": var_94 = "": var_A8 = "": var_C0 = "": var_D4 = "": var_140 = "": var_144 = "": var_14C = "": var_150 = "": var_158 = "": var_15C = "": var_174 = "": var_178 = "": var_190 = "": var_BC = "": var_13C = "": var_148 = "": var_154 = "": var_170 = "": var_18C = "": var_3CC = ""
  loc_C12D03: FFreeVar var_B8 = "": var_1B8 = "": var_E4 = "": var_104 = "": var_1E8 = "": var_134 = "": var_124 = "": var_218 = "": var_238 = "": var_208 = "": var_288 = "": var_2A8 = "": var_2C8 = "": var_2E8 = "": var_308 = "": var_2D8 = "": var_328 = "": var_348 = "": var_318 = "": var_368 = "": var_378 = "": var_388 = "": var_398 = "": var_3AC = "": var_3C0 = "": var_248 = ""
  loc_C12D3C: ILdRf var_88
  loc_C12D3F: LitI4 0
  loc_C12D44: EqI4
  loc_C12D45: BranchF loc_C12D4B
  loc_C12D48: Branch loc_C15036
  loc_C12D4B: FLdRfVar var_B8
  loc_C12D4E: FLdRfVar var_A8
  loc_C12D51: LitVarStr var_A4, "CucuPers"
  loc_C12D56: PopAdLdVar
  loc_C12D57: FLdRfVar var_94
  loc_C12D5A: FLdRfVar var_90
  loc_C12D5D: FLdPr Me
  loc_C12D60: MemLdRfVar from_stack_1.global_56
  loc_C12D63: NewIfNullPr clsnotapedido
  loc_C12D66: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C12D6B: FLdPr var_90
  loc_C12D6E:  = Me.Fields
  loc_C12D73: FLdPr var_94
  loc_C12D76: from_stack_2 = Me.Item(from_stack_1)
  loc_C12D7B: FLdPr var_A8
  loc_C12D7E:  = Me.Value
  loc_C12D83: FLdRfVar var_B8
  loc_C12D86: CStrVarTmp
  loc_C12D87: FStStr var_8C
  loc_C12D8A: FFreeAd var_90 = "": var_94 = ""
  loc_C12D93: FFree1Var var_B8 = ""
  loc_C12D96: LitI2_Byte &HFF
  loc_C12D98: BranchF loc_C12E30
  loc_C12D9B: FLdRfVar var_39C
  loc_C12D9E: FLdRfVar var_B8
  loc_C12DA1: FLdRfVar var_A8
  loc_C12DA4: LitVarStr var_A4, "CucuPers"
  loc_C12DA9: PopAdLdVar
  loc_C12DAA: FLdRfVar var_94
  loc_C12DAD: FLdRfVar var_90
  loc_C12DB0: FLdPr Me
  loc_C12DB3: MemLdRfVar from_stack_1.global_56
  loc_C12DB6: NewIfNullPr clsnotapedido
  loc_C12DB9: from_stack_1v = clsnotapedido.RsFrmGet()
  loc_C12DBE: FLdPr var_90
  loc_C12DC1:  = Me.Fields
  loc_C12DC6: FLdPr var_94
  loc_C12DC9: from_stack_2 = Me.Item(from_stack_1)
  loc_C12DCE: FLdPr var_A8
  loc_C12DD1:  = Me.Value
  loc_C12DD6: FLdRfVar var_B8
  loc_C12DD9: CStrVarTmp
  loc_C12DDA: FStStrNoPop var_138
  loc_C12DDD: FLdPr Me
  loc_C12DE0: MemLdRfVar from_stack_1.global_52
  loc_C12DE3: NewIfNullPr clsordencompra
  loc_C12DE6: from_stack_2v = clsordencompra.BuscaDeudaComercio(from_stack_1v)
  loc_C12DEB: ILdRf var_39C
  loc_C12DEE: FLdPr Me
  loc_C12DF1: MemStStrCopy
  loc_C12DF5: FFreeStr var_138 = ""
  loc_C12DFC: FFreeAd var_90 = "": var_94 = ""
  loc_C12E05: FFree1Var var_B8 = ""
  loc_C12E08: FLdPr Me
  loc_C12E0B: MemLdStr global_80
  loc_C12E0E: LitStr "0"
  loc_C12E11: NeStr
  loc_C12E13: BranchF loc_C12E30
  loc_C12E16: LitI4 0
  loc_C12E1B: LitStr "El proveedor registra una deuda por comercio de $ "
  loc_C12E1E: FLdPr Me
  loc_C12E21: MemLdStr global_80
  loc_C12E24: ConcatStr
  loc_C12E25: FStStrNoPop var_138
  loc_C12E28: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C12E2D: FFree1Str var_138
  loc_C12E30: LitI2_Byte 0
  loc_C12E32: BranchF loc_C14DD4
  loc_C12E35: LitI2_Byte &HFF
  loc_C12E37: PopTmpLdAd2 var_3F0
  loc_C12E3A: LitI2_Byte 0
  loc_C12E3C: PopTmpLdAd2 var_3EE
  loc_C12E3F: LitStr "Se Generó la Orden de Compra número "
  loc_C12E42: ILdRf var_88
  loc_C12E45: CStrI4
  loc_C12E47: FStStrNoPop var_138
  loc_C12E4A: ConcatStr
  loc_C12E4B: FStStrNoPop var_39C
  loc_C12E4E: LitStr vbCrLf
  loc_C12E51: ConcatStr
  loc_C12E52: FStStrNoPop var_3B0
  loc_C12E55: LitStr " ¿Desea Imputarla?"
  loc_C12E58: ConcatStr
  loc_C12E59: FStStrNoPop var_3C4
  loc_C12E5C: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C12E61: CI4UI1
  loc_C12E62: LitI4 6
  loc_C12E67: EqI4
  loc_C12E68: FFreeStr var_138 = "": var_39C = "": var_3B0 = ""
  loc_C12E73: BranchF loc_C14DD1
  loc_C12E76: LitStr "SELECT itc.* , oc.ExpeImpu, oc.CucuPers, oc.CodiNope, CantItco * ImunItco doImpoImpu"
  loc_C12E79: LitStr ", itn.IdImpu IdImpuNP"
  loc_C12E7C: ConcatStr
  loc_C12E7D: FStStrNoPop var_138
  loc_C12E80: LitStr " FROM ordencompra oc"
  loc_C12E83: ConcatStr
  loc_C12E84: FStStrNoPop var_39C
  loc_C12E87: LitStr " INNER JOIN itemcompra itc ON itc.PeriInfo = oc.PeriInfo AND itc.CodiOrco = oc.CodiOrco "
  loc_C12E8A: ConcatStr
  loc_C12E8B: FStStrNoPop var_3B0
  loc_C12E8E: LitStr " /*INNER JOIN notapedido np ON np.PeriInfo = oc.PeriInfo AND np.CodiNope = oc.CodiNope*/"
  loc_C12E91: ConcatStr
  loc_C12E92: FStStrNoPop var_3C4
  loc_C12E95: LitStr " INNER JOIN itemnota itn ON itn.PeriInfo = oc.PeriInfo AND itn.CodiNope = oc.CodiNope AND itn.CodiItno = itc.CodiItco"
  loc_C12E98: ConcatStr
  loc_C12E99: FStStrNoPop var_3C8
  loc_C12E9C: LitStr " WHERE oc.PeriInfo = "
  loc_C12E9F: ConcatStr
  loc_C12EA0: FStStrNoPop var_3D0
  loc_C12EA3: ImpAdLdI2 MemVar_C3D064
  loc_C12EA6: CStrUI1
  loc_C12EA8: FStStrNoPop var_3D4
  loc_C12EAB: ConcatStr
  loc_C12EAC: FStStrNoPop var_3F4
  loc_C12EAF: LitStr " AND oc.CodiOrco = "
  loc_C12EB2: ConcatStr
  loc_C12EB3: FStStrNoPop var_3F8
  loc_C12EB6: ILdRf var_88
  loc_C12EB9: CStrI4
  loc_C12EBB: FStStrNoPop var_3FC
  loc_C12EBE: ConcatStr
  loc_C12EBF: FStStrNoPop var_400
  loc_C12EC2: FLdPr Me
  loc_C12EC5: MemLdRfVar from_stack_1.global_60
  loc_C12EC8: NewIfNullPr clsbase
  loc_C12ECB: Call clsbase.RedefineRS(from_stack_1v)
  loc_C12ED0: FFreeStr var_138 = "": var_39C = "": var_3B0 = "": var_3C4 = "": var_3C8 = "": var_3D0 = "": var_3D4 = "": var_3F4 = "": var_3F8 = "": var_3FC = ""
  loc_C12EE9: FLdRfVar var_3D8
  loc_C12EEC: FLdPr Me
  loc_C12EEF: MemLdRfVar from_stack_1.global_60
  loc_C12EF2: NewIfNullPr clsbase
  loc_C12EF5: from_stack_1 = clsbase.RecordCount
  loc_C12EFA: ILdRf var_3D8
  loc_C12EFD: LitI4 0
  loc_C12F02: GtI4
  loc_C12F03: BranchF loc_C14C8D
  loc_C12F06: FLdPr Me
  loc_C12F09: MemLdRfVar from_stack_1.global_60
  loc_C12F0C: NewIfNullPr clsbase
  loc_C12F0F: Call clsbase.MoveFirst()
  loc_C12F14: FLdRfVar var_3EE
  loc_C12F17: FLdPr Me
  loc_C12F1A: MemLdRfVar from_stack_1.global_60
  loc_C12F1D: NewIfNullPr clsbase
  loc_C12F20: from_stack_1 = clsbase.EOF
  loc_C12F25: FLdI2 var_3EE
  loc_C12F28: NotI4
  loc_C12F29: BranchF loc_C14C8D
  loc_C12F2C: FLdRfVar var_B8
  loc_C12F2F: FLdRfVar var_A8
  loc_C12F32: LitVarStr var_A4, "CodiPart"
  loc_C12F37: PopAdLdVar
  loc_C12F38: FLdRfVar var_94
  loc_C12F3B: FLdRfVar var_90
  loc_C12F3E: FLdPr Me
  loc_C12F41: MemLdRfVar from_stack_1.global_60
  loc_C12F44: NewIfNullPr clsbase
  loc_C12F47: from_stack_1v = clsbase.RsFrmGet()
  loc_C12F4C: FLdPr var_90
  loc_C12F4F:  = Me.Fields
  loc_C12F54: FLdPr var_94
  loc_C12F57: from_stack_2 = Me.Item(from_stack_1)
  loc_C12F5C: FLdPr var_A8
  loc_C12F5F:  = Me.Value
  loc_C12F64: FLdRfVar var_B8
  loc_C12F67: LitVarStr var_D0, vbNullString
  loc_C12F6C: HardType
  loc_C12F6D: NeVar var_E4
  loc_C12F71: FLdRfVar var_104
  loc_C12F74: FLdRfVar var_D4
  loc_C12F77: LitVarStr var_F4, "CodiOrga"
  loc_C12F7C: PopAdLdVar
  loc_C12F7D: FLdRfVar var_C0
  loc_C12F80: FLdRfVar var_BC
  loc_C12F83: FLdPr Me
  loc_C12F86: MemLdRfVar from_stack_1.global_60
  loc_C12F89: NewIfNullPr clsbase
  loc_C12F8C: from_stack_1v = clsbase.RsFrmGet()
  loc_C12F91: FLdPr var_BC
  loc_C12F94:  = Me.Fields
  loc_C12F99: FLdPr var_C0
  loc_C12F9C: from_stack_2 = Me.Item(from_stack_1)
  loc_C12FA1: FLdPr var_D4
  loc_C12FA4:  = Me.Value
  loc_C12FA9: FLdRfVar var_104
  loc_C12FAC: LitVarStr var_114, vbNullString
  loc_C12FB1: HardType
  loc_C12FB2: NeVar var_124
  loc_C12FB6: AndVar var_134
  loc_C12FBA: FLdRfVar var_208
  loc_C12FBD: FLdRfVar var_144
  loc_C12FC0: LitVarStr var_16C, "CodiFifu"
  loc_C12FC5: PopAdLdVar
  loc_C12FC6: FLdRfVar var_140
  loc_C12FC9: FLdRfVar var_13C
  loc_C12FCC: FLdPr Me
  loc_C12FCF: MemLdRfVar from_stack_1.global_60
  loc_C12FD2: NewIfNullPr clsbase
  loc_C12FD5: from_stack_1v = clsbase.RsFrmGet()
  loc_C12FDA: FLdPr var_13C
  loc_C12FDD:  = Me.Fields
  loc_C12FE2: FLdPr var_140
  loc_C12FE5: from_stack_2 = Me.Item(from_stack_1)
  loc_C12FEA: FLdPr var_144
  loc_C12FED:  = Me.Value
  loc_C12FF2: FLdRfVar var_208
  loc_C12FF5: LitVarStr var_188, vbNullString
  loc_C12FFA: HardType
  loc_C12FFB: NeVar var_238
  loc_C12FFF: AndVar var_248
  loc_C13003: FLdRfVar var_2A8
  loc_C13006: FLdRfVar var_150
  loc_C13009: LitVarStr var_1B8, "IdImpu"
  loc_C1300E: PopAdLdVar
  loc_C1300F: FLdRfVar var_14C
  loc_C13012: FLdRfVar var_148
  loc_C13015: FLdPr Me
  loc_C13018: MemLdRfVar from_stack_1.global_60
  loc_C1301B: NewIfNullPr clsbase
  loc_C1301E: from_stack_1v = clsbase.RsFrmGet()
  loc_C13023: FLdPr var_148
  loc_C13026:  = Me.Fields
  loc_C1302B: FLdPr var_14C
  loc_C1302E: from_stack_2 = Me.Item(from_stack_1)
  loc_C13033: FLdPr var_150
  loc_C13036:  = Me.Value
  loc_C1303B: FLdRfVar var_2A8
  loc_C1303E: FnCLngVar
  loc_C13040: LitI4 0
  loc_C13045: EqI4
  loc_C13046: CVarBoolI2 var_1C8
  loc_C1304A: AndVar var_2C8
  loc_C1304E: CBoolVarNull
  loc_C13050: FFreeAd var_90 = "": var_94 = "": var_A8 = "": var_BC = "": var_C0 = "": var_D4 = "": var_13C = "": var_140 = "": var_144 = "": var_148 = "": var_14C = ""
  loc_C1306B: FFreeVar var_B8 = "": var_104 = "": var_208 = "": var_2A8 = ""
  loc_C13078: BranchF loc_C14C7C
  loc_C1307B: FLdRfVar var_B8
  loc_C1307E: FLdRfVar var_A8
  loc_C13081: LitVarStr var_A4, "CodiPart"
  loc_C13086: PopAdLdVar
  loc_C13087: FLdRfVar var_94
  loc_C1308A: FLdRfVar var_90
  loc_C1308D: FLdPr Me
  loc_C13090: MemLdRfVar from_stack_1.global_60
  loc_C13093: NewIfNullPr clsbase
  loc_C13096: from_stack_1v = clsbase.RsFrmGet()
  loc_C1309B: FLdPr var_90
  loc_C1309E:  = Me.Fields
  loc_C130A3: FLdPr var_94
  loc_C130A6: from_stack_2 = Me.Item(from_stack_1)
  loc_C130AB: FLdPr var_A8
  loc_C130AE:  = Me.Value
  loc_C130B3: FLdPr Me
  loc_C130B6: MemLdRfVar from_stack_1.global_100
  loc_C130B9: NewIfNullRf
  loc_C130BD: FLdRfVar var_B8
  loc_C130C0: CStrVarTmp
  loc_C130C1: FStStrNoPop var_138
  loc_C130C4: ImpAdLdI2 MemVar_C3D064
  loc_C130C7: ImpAdCallFPR4 Proc_259_24_B2B61C(, , )
  loc_C130CC: FFree1Str var_138
  loc_C130CF: FFreeAd var_90 = "": var_94 = ""
  loc_C130D8: FFree1Var var_B8 = ""
  loc_C130DB: FLdRfVar var_B8
  loc_C130DE: FLdRfVar var_A8
  loc_C130E1: LitVarStr var_A4, "CodiOrga"
  loc_C130E6: PopAdLdVar
  loc_C130E7: FLdRfVar var_94
  loc_C130EA: FLdRfVar var_90
  loc_C130ED: FLdPr Me
  loc_C130F0: MemLdRfVar from_stack_1.global_60
  loc_C130F3: NewIfNullPr clsbase
  loc_C130F6: from_stack_1v = clsbase.RsFrmGet()
  loc_C130FB: FLdPr var_90
  loc_C130FE:  = Me.Fields
  loc_C13103: FLdPr var_94
  loc_C13106: from_stack_2 = Me.Item(from_stack_1)
  loc_C1310B: FLdPr var_A8
  loc_C1310E:  = Me.Value
  loc_C13113: FLdPr Me
  loc_C13116: MemLdRfVar from_stack_1.global_104
  loc_C13119: NewIfNullRf
  loc_C1311D: FLdRfVar var_B8
  loc_C13120: CStrVarTmp
  loc_C13121: FStStrNoPop var_138
  loc_C13124: ImpAdLdI2 MemVar_C3D064
  loc_C13127: ImpAdCallFPR4 Proc_259_20_B23018(, , )
  loc_C1312C: FFree1Str var_138
  loc_C1312F: FFreeAd var_90 = "": var_94 = ""
  loc_C13138: FFree1Var var_B8 = ""
  loc_C1313B: FLdRfVar var_B8
  loc_C1313E: FLdRfVar var_A8
  loc_C13141: LitVarStr var_A4, "CodiFifu"
  loc_C13146: PopAdLdVar
  loc_C13147: FLdRfVar var_94
  loc_C1314A: FLdRfVar var_90
  loc_C1314D: FLdPr Me
  loc_C13150: MemLdRfVar from_stack_1.global_60
  loc_C13153: NewIfNullPr clsbase
  loc_C13156: from_stack_1v = clsbase.RsFrmGet()
  loc_C1315B: FLdPr var_90
  loc_C1315E:  = Me.Fields
  loc_C13163: FLdPr var_94
  loc_C13166: from_stack_2 = Me.Item(from_stack_1)
  loc_C1316B: FLdPr var_A8
  loc_C1316E:  = Me.Value
  loc_C13173: FLdPr Me
  loc_C13176: MemLdRfVar from_stack_1.global_108
  loc_C13179: NewIfNullRf
  loc_C1317D: FLdRfVar var_B8
  loc_C13180: CStrVarTmp
  loc_C13181: FStStrNoPop var_138
  loc_C13184: ImpAdLdI2 MemVar_C3D064
  loc_C13187: ImpAdCallFPR4 Proc_259_12_AE1238(, , )
  loc_C1318C: FFree1Str var_138
  loc_C1318F: FFreeAd var_90 = "": var_94 = ""
  loc_C13198: FFree1Var var_B8 = ""
  loc_C1319B: FLdRfVar var_A8
  loc_C1319E: LitVarStr var_A4, "doImpoImpu"
  loc_C131A3: PopAdLdVar
  loc_C131A4: FLdRfVar var_94
  loc_C131A7: FLdRfVar var_90
  loc_C131AA: FLdPr Me
  loc_C131AD: MemLdRfVar from_stack_1.global_60
  loc_C131B0: NewIfNullPr clsbase
  loc_C131B3: from_stack_1v = clsbase.RsFrmGet()
  loc_C131B8: FLdPr var_90
  loc_C131BB:  = Me.Fields
  loc_C131C0: FLdPr var_94
  loc_C131C3: from_stack_2 = Me.Item(from_stack_1)
  loc_C131C8: LitI4 2
  loc_C131CD: FLdZeroAd var_A8
  loc_C131D0: CVarAd
  loc_C131D4: FLdRfVar var_E4
  loc_C131D7: ImpAdCallFPR4  = Round(, )
  loc_C131DC: FLdRfVar var_E4
  loc_C131DF: CR4Var
  loc_C131E0: FStFPR8 var_3E4
  loc_C131E3: FFreeAd var_90 = ""
  loc_C131EA: FFreeVar var_B8 = ""
  loc_C131F1: FLdRfVar var_B8
  loc_C131F4: FLdRfVar var_A8
  loc_C131F7: LitVarStr var_A4, "IdImpuNP"
  loc_C131FC: PopAdLdVar
  loc_C131FD: FLdRfVar var_94
  loc_C13200: FLdRfVar var_90
  loc_C13203: FLdPr Me
  loc_C13206: MemLdRfVar from_stack_1.global_60
  loc_C13209: NewIfNullPr clsbase
  loc_C1320C: from_stack_1v = clsbase.RsFrmGet()
  loc_C13211: FLdPr var_90
  loc_C13214:  = Me.Fields
  loc_C13219: FLdPr var_94
  loc_C1321C: from_stack_2 = Me.Item(from_stack_1)
  loc_C13221: FLdPr var_A8
  loc_C13224:  = Me.Value
  loc_C13229: FLdRfVar var_198
  loc_C1322C: FLdRfVar var_B8
  loc_C1322F: CI4Var
  loc_C13231: ImpAdLdI2 MemVar_C3D064
  loc_C13234: FLdPr Me
  loc_C13237: MemLdRfVar from_stack_1.global_64
  loc_C1323A: NewIfNullPr clsimputacion
  loc_C1323D: from_stack_3v = clsimputacion.BuscaSaldPrev(from_stack_1v, from_stack_2v)
  loc_C13242: FLdFPR8 var_198
  loc_C13245: FStFPR8 var_3EC
  loc_C13248: FFreeAd var_90 = "": var_94 = ""
  loc_C13251: FFree1Var var_B8 = ""
  loc_C13254: FLdFPR8 var_3EC
  loc_C13257: FLdFPR8 var_3E4
  loc_C1325A: NeR8
  loc_C1325B: BranchF loc_C14831
  loc_C1325E: FLdRfVar var_B8
  loc_C13261: FLdRfVar var_A8
  loc_C13264: LitVarStr var_A4, "CodiItco"
  loc_C13269: PopAdLdVar
  loc_C1326A: FLdRfVar var_94
  loc_C1326D: FLdRfVar var_90
  loc_C13270: FLdPr Me
  loc_C13273: MemLdRfVar from_stack_1.global_60
  loc_C13276: NewIfNullPr clsbase
  loc_C13279: from_stack_1v = clsbase.RsFrmGet()
  loc_C1327E: FLdPr var_90
  loc_C13281:  = Me.Fields
  loc_C13286: FLdPr var_94
  loc_C13289: from_stack_2 = Me.Item(from_stack_1)
  loc_C1328E: FLdPr var_A8
  loc_C13291:  = Me.Value
  loc_C13296: FLdRfVar var_124
  loc_C13299: FLdRfVar var_D4
  loc_C1329C: LitVarStr var_114, "AlteItco"
  loc_C132A1: PopAdLdVar
  loc_C132A2: FLdRfVar var_C0
  loc_C132A5: FLdRfVar var_BC
  loc_C132A8: FLdPr Me
  loc_C132AB: MemLdRfVar from_stack_1.global_60
  loc_C132AE: NewIfNullPr clsbase
  loc_C132B1: from_stack_1v = clsbase.RsFrmGet()
  loc_C132B6: FLdPr var_BC
  loc_C132B9:  = Me.Fields
  loc_C132BE: FLdPr var_C0
  loc_C132C1: from_stack_2 = Me.Item(from_stack_1)
  loc_C132C6: FLdPr var_D4
  loc_C132C9:  = Me.Value
  loc_C132CE: LitI4 1
  loc_C132D3: LitI4 1
  loc_C132D8: LitVarStr var_1C8, "currency"
  loc_C132DD: FStVarCopyObj var_248
  loc_C132E0: FLdRfVar var_248
  loc_C132E3: FLdRfVar var_3E4
  loc_C132E6: CVarRef
  loc_C132EB: ImpAdCallI2 Format$(, )
  loc_C132F0: FStStr var_39C
  loc_C132F3: LitI4 &HD
  loc_C132F8: FLdRfVar var_2D8
  loc_C132FB: ImpAdCallFPR4  = Chr()
  loc_C13300: LitI4 1
  loc_C13305: LitI4 1
  loc_C1330A: LitVarStr var_1F8, "currency"
  loc_C1330F: FStVarCopyObj var_348
  loc_C13312: FLdRfVar var_348
  loc_C13315: FLdRfVar var_3EC
  loc_C13318: CVarRef
  loc_C1331D: ImpAdCallI2 Format$(, )
  loc_C13322: FStStr var_3B0
  loc_C13325: LitI4 0
  loc_C1332A: LitVarStr var_D0, "El Total del Item "
  loc_C1332F: FLdRfVar var_B8
  loc_C13332: ConcatVar var_E4
  loc_C13336: LitVarStr var_F4, " Alternativa "
  loc_C1333B: ConcatVar var_104
  loc_C1333F: FLdRfVar var_124
  loc_C13342: ConcatVar var_134
  loc_C13346: LitVarStr var_16C, vbCrLf
  loc_C1334B: ConcatVar var_208
  loc_C1334F: LitVarStr var_188, "Importe: "
  loc_C13354: ConcatVar var_238
  loc_C13358: FLdZeroAd var_39C
  loc_C1335B: CVarStr var_2A8
  loc_C1335E: ConcatVar var_2C8
  loc_C13362: FLdRfVar var_2D8
  loc_C13365: ConcatVar var_308
  loc_C13369: LitVarStr var_1D8, "es Distinto del Saldo de la Preventiva: "
  loc_C1336E: ConcatVar var_318
  loc_C13372: FLdZeroAd var_3B0
  loc_C13375: CVarStr var_358
  loc_C13378: ConcatVar var_368
  loc_C1337C: CStrVarVal var_138
  loc_C13380: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C13385: FFreeStr var_138 = "": var_39C = ""
  loc_C1338E: FFreeAd var_90 = "": var_94 = "": var_A8 = "": var_BC = "": var_C0 = ""
  loc_C1339D: FFreeVar var_B8 = "": var_E4 = "": var_104 = "": var_124 = "": var_134 = "": var_208 = "": var_248 = "": var_238 = "": var_2A8 = "": var_2C8 = "": var_2D8 = "": var_308 = "": var_348 = "": var_318 = "": var_358 = ""
  loc_C133C0: FLdFPR8 var_3EC
  loc_C133C3: FLdFPR8 var_3E4
  loc_C133C6: GtR4
  loc_C133C7: BranchF loc_C13FB1
  loc_C133CA: LitI2_Byte 0
  loc_C133CC: PopTmpLdAd2 var_3F0
  loc_C133CF: LitI2_Byte &HFF
  loc_C133D1: PopTmpLdAd2 var_3EE
  loc_C133D4: LitStr "¿Genera la Desafectación de la Preventiva?"
  loc_C133D7: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C133DC: CI4UI1
  loc_C133DD: LitI4 6
  loc_C133E2: EqI4
  loc_C133E3: BranchF loc_C13B63
  loc_C133E6: FLdRfVar var_208
  loc_C133E9: FLdRfVar var_A8
  loc_C133EC: LitVarStr var_A4, "CodiPart"
  loc_C133F1: PopAdLdVar
  loc_C133F2: FLdRfVar var_94
  loc_C133F5: FLdRfVar var_90
  loc_C133F8: FLdPr Me
  loc_C133FB: MemLdRfVar from_stack_1.global_60
  loc_C133FE: NewIfNullPr clsbase
  loc_C13401: from_stack_1v = clsbase.RsFrmGet()
  loc_C13406: FLdPr var_90
  loc_C13409:  = Me.Fields
  loc_C1340E: FLdPr var_94
  loc_C13411: from_stack_2 = Me.Item(from_stack_1)
  loc_C13416: FLdPr var_A8
  loc_C13419:  = Me.Value
  loc_C1341E: FLdRfVar var_238
  loc_C13421: FLdRfVar var_D4
  loc_C13424: LitVarStr var_D0, "CodiOrga"
  loc_C13429: PopAdLdVar
  loc_C1342A: FLdRfVar var_C0
  loc_C1342D: FLdRfVar var_BC
  loc_C13430: FLdPr Me
  loc_C13433: MemLdRfVar from_stack_1.global_60
  loc_C13436: NewIfNullPr clsbase
  loc_C13439: from_stack_1v = clsbase.RsFrmGet()
  loc_C1343E: FLdPr var_BC
  loc_C13441:  = Me.Fields
  loc_C13446: FLdPr var_C0
  loc_C13449: from_stack_2 = Me.Item(from_stack_1)
  loc_C1344E: FLdPr var_D4
  loc_C13451:  = Me.Value
  loc_C13456: FLdRfVar var_248
  loc_C13459: FLdRfVar var_144
  loc_C1345C: LitVarStr var_F4, "CodiUnga"
  loc_C13461: PopAdLdVar
  loc_C13462: FLdRfVar var_140
  loc_C13465: FLdRfVar var_13C
  loc_C13468: FLdPr Me
  loc_C1346B: MemLdRfVar from_stack_1.global_60
  loc_C1346E: NewIfNullPr clsbase
  loc_C13471: from_stack_1v = clsbase.RsFrmGet()
  loc_C13476: FLdPr var_13C
  loc_C13479:  = Me.Fields
  loc_C1347E: FLdPr var_140
  loc_C13481: from_stack_2 = Me.Item(from_stack_1)
  loc_C13486: FLdPr var_144
  loc_C13489:  = Me.Value
  loc_C1348E: FLdRfVar var_2A8
  loc_C13491: FLdRfVar var_150
  loc_C13494: LitVarStr var_114, "CodiInsu"
  loc_C13499: PopAdLdVar
  loc_C1349A: FLdRfVar var_14C
  loc_C1349D: FLdRfVar var_148
  loc_C134A0: FLdPr Me
  loc_C134A3: MemLdRfVar from_stack_1.global_60
  loc_C134A6: NewIfNullPr clsbase
  loc_C134A9: from_stack_1v = clsbase.RsFrmGet()
  loc_C134AE: FLdPr var_148
  loc_C134B1:  = Me.Fields
  loc_C134B6: FLdPr var_14C
  loc_C134B9: from_stack_2 = Me.Item(from_stack_1)
  loc_C134BE: FLdPr var_150
  loc_C134C1:  = Me.Value
  loc_C134C6: FLdRfVar var_2C8
  loc_C134C9: FLdRfVar var_15C
  loc_C134CC: LitVarStr var_16C, "CodiFifu"
  loc_C134D1: PopAdLdVar
  loc_C134D2: FLdRfVar var_158
  loc_C134D5: FLdRfVar var_154
  loc_C134D8: FLdPr Me
  loc_C134DB: MemLdRfVar from_stack_1.global_60
  loc_C134DE: NewIfNullPr clsbase
  loc_C134E1: from_stack_1v = clsbase.RsFrmGet()
  loc_C134E6: FLdPr var_154
  loc_C134E9:  = Me.Fields
  loc_C134EE: FLdPr var_158
  loc_C134F1: from_stack_2 = Me.Item(from_stack_1)
  loc_C134F6: FLdPr var_15C
  loc_C134F9:  = Me.Value
  loc_C134FE: FLdPr Me
  loc_C13501: VCallAd Control_ID_FechOrcoMsk
  loc_C13504: FStAdFunc var_170
  loc_C13507: FLdPr var_170
  loc_C1350A: LateIdLdVar var_B8 DispID_15 0
  loc_C13511: PopAd
  loc_C13513: FLdRfVar var_2D8
  loc_C13516: FLdRfVar var_18C
  loc_C13519: LitVarStr var_188, "ExpeImpu"
  loc_C1351E: PopAdLdVar
  loc_C1351F: FLdRfVar var_178
  loc_C13522: FLdRfVar var_174
  loc_C13525: FLdPr Me
  loc_C13528: MemLdRfVar from_stack_1.global_60
  loc_C1352B: NewIfNullPr clsbase
  loc_C1352E: from_stack_1v = clsbase.RsFrmGet()
  loc_C13533: FLdPr var_174
  loc_C13536:  = Me.Fields
  loc_C1353B: FLdPr var_178
  loc_C1353E: from_stack_2 = Me.Item(from_stack_1)
  loc_C13543: FLdPr var_18C
  loc_C13546:  = Me.Value
  loc_C1354B: LitI4 2
  loc_C13550: FLdFPR8 var_3EC
  loc_C13553: FLdFPR8 var_3E4
  loc_C13556: SubR4
  loc_C13557: CVarR8
  loc_C1355B: FLdRfVar var_104
  loc_C1355E: ImpAdCallFPR4  = Round(, )
  loc_C13563: LitI4 2
  loc_C13568: FLdFPR8 var_3EC
  loc_C1356B: FLdFPR8 var_3E4
  loc_C1356E: SubR4
  loc_C1356F: CVarR8
  loc_C13573: FLdRfVar var_134
  loc_C13576: ImpAdCallFPR4  = Round(, )
  loc_C1357B: FLdRfVar var_308
  loc_C1357E: FLdRfVar var_3DC
  loc_C13581: LitVarStr var_1D8, "DetaItco"
  loc_C13586: PopAdLdVar
  loc_C13587: FLdRfVar var_3CC
  loc_C1358A: FLdRfVar var_190
  loc_C1358D: FLdPr Me
  loc_C13590: MemLdRfVar from_stack_1.global_60
  loc_C13593: NewIfNullPr clsbase
  loc_C13596: from_stack_1v = clsbase.RsFrmGet()
  loc_C1359B: FLdPr var_190
  loc_C1359E:  = Me.Fields
  loc_C135A3: FLdPr var_3CC
  loc_C135A6: from_stack_2 = Me.Item(from_stack_1)
  loc_C135AB: FLdPr var_3DC
  loc_C135AE:  = Me.Value
  loc_C135B3: FLdRfVar var_318
  loc_C135B6: FLdRfVar var_40C
  loc_C135B9: LitVarStr var_1E8, "CodiNope"
  loc_C135BE: PopAdLdVar
  loc_C135BF: FLdRfVar var_408
  loc_C135C2: FLdRfVar var_404
  loc_C135C5: FLdPr Me
  loc_C135C8: MemLdRfVar from_stack_1.global_60
  loc_C135CB: NewIfNullPr clsbase
  loc_C135CE: from_stack_1v = clsbase.RsFrmGet()
  loc_C135D3: FLdPr var_404
  loc_C135D6:  = Me.Fields
  loc_C135DB: FLdPr var_408
  loc_C135DE: from_stack_2 = Me.Item(from_stack_1)
  loc_C135E3: FLdPr var_40C
  loc_C135E6:  = Me.Value
  loc_C135EB: FLdRfVar var_348
  loc_C135EE: FLdRfVar var_418
  loc_C135F1: LitVarStr var_1F8, "CodiItco"
  loc_C135F6: PopAdLdVar
  loc_C135F7: FLdRfVar var_414
  loc_C135FA: FLdRfVar var_410
  loc_C135FD: FLdPr Me
  loc_C13600: MemLdRfVar from_stack_1.global_60
  loc_C13603: NewIfNullPr clsbase
  loc_C13606: from_stack_1v = clsbase.RsFrmGet()
  loc_C1360B: FLdPr var_410
  loc_C1360E:  = Me.Fields
  loc_C13613: FLdPr var_414
  loc_C13616: from_stack_2 = Me.Item(from_stack_1)
  loc_C1361B: FLdPr var_418
  loc_C1361E:  = Me.Value
  loc_C13623: FLdRfVar var_3D8
  loc_C13626: LitI2_Byte 0
  loc_C13628: LitI2_Byte 0
  loc_C1362A: LitI4 0
  loc_C1362F: FLdRfVar var_348
  loc_C13632: CI2Var
  loc_C13633: FLdRfVar var_318
  loc_C13636: CI4Var
  loc_C13638: FLdRfVar var_308
  loc_C1363B: CStrVarTmp
  loc_C1363C: FStStrNoPop var_3D0
  loc_C1363F: FLdRfVar var_134
  loc_C13642: CR4Var
  loc_C13643: PopFPR8
  loc_C13644: FLdRfVar var_104
  loc_C13647: CR4Var
  loc_C13648: PopFPR8
  loc_C13649: LitI2_Byte 1
  loc_C1364B: CR8I2
  loc_C1364C: PopFPR8
  loc_C1364D: FLdRfVar var_2D8
  loc_C13650: CStrVarTmp
  loc_C13651: FStStrNoPop var_3C8
  loc_C13654: FLdRfVar var_B8
  loc_C13657: CStrVarTmp
  loc_C13658: FStStrNoPop var_3C4
  loc_C1365B: FLdRfVar var_2C8
  loc_C1365E: CStrVarTmp
  loc_C1365F: FStStrNoPop var_3B0
  loc_C13662: FLdRfVar var_2A8
  loc_C13665: CI4Var
  loc_C13667: FLdRfVar var_248
  loc_C1366A: CI2Var
  loc_C1366B: FLdRfVar var_238
  loc_C1366E: CStrVarTmp
  loc_C1366F: FStStrNoPop var_39C
  loc_C13672: FLdRfVar var_208
  loc_C13675: CStrVarTmp
  loc_C13676: FStStrNoPop var_138
  loc_C13679: FLdPr Me
  loc_C1367C: MemLdRfVar from_stack_1.global_64
  loc_C1367F: NewIfNullPr clsimputacion
  loc_C13682: from_stack_16v = clsimputacion.DesafectarPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C13687: ILdRf var_3D8
  loc_C1368A: FLdPr Me
  loc_C1368D: MemStI4 global_96
  loc_C13690: FFreeStr var_138 = "": var_39C = "": var_3B0 = "": var_3C4 = "": var_3C8 = ""
  loc_C1369F: FFreeAd var_90 = "": var_94 = "": var_BC = "": var_C0 = "": var_13C = "": var_140 = "": var_148 = "": var_14C = "": var_154 = "": var_158 = "": var_170 = "": var_174 = "": var_178 = "": var_190 = "": var_3CC = "": var_404 = "": var_408 = "": var_410 = "": var_414 = "": var_A8 = "": var_D4 = "": var_144 = "": var_150 = "": var_15C = "": var_18C = "": var_3DC = "": var_40C = ""
  loc_C136DA: FFreeVar var_B8 = "": var_E4 = "": var_124 = "": var_208 = "": var_238 = "": var_248 = "": var_2A8 = "": var_2C8 = "": var_2D8 = "": var_104 = "": var_134 = "": var_308 = "": var_318 = ""
  loc_C136F9: FLdPr Me
  loc_C136FC: MemLdStr global_96
  loc_C136FF: LitI4 0
  loc_C13704: EqI4
  loc_C13705: BranchF loc_C13715
  loc_C13708: LitI4 0
  loc_C1370D: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C13710: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C13715: FLdRfVar var_E4
  loc_C13718: FLdRfVar var_A8
  loc_C1371B: LitVarStr var_A4, "CodiPart"
  loc_C13720: PopAdLdVar
  loc_C13721: FLdRfVar var_94
  loc_C13724: FLdRfVar var_90
  loc_C13727: FLdPr Me
  loc_C1372A: MemLdRfVar from_stack_1.global_60
  loc_C1372D: NewIfNullPr clsbase
  loc_C13730: from_stack_1v = clsbase.RsFrmGet()
  loc_C13735: FLdPr var_90
  loc_C13738:  = Me.Fields
  loc_C1373D: FLdPr var_94
  loc_C13740: from_stack_2 = Me.Item(from_stack_1)
  loc_C13745: FLdPr var_A8
  loc_C13748:  = Me.Value
  loc_C1374D: FLdRfVar var_104
  loc_C13750: FLdRfVar var_D4
  loc_C13753: LitVarStr var_D0, "CodiOrga"
  loc_C13758: PopAdLdVar
  loc_C13759: FLdRfVar var_C0
  loc_C1375C: FLdRfVar var_BC
  loc_C1375F: FLdPr Me
  loc_C13762: MemLdRfVar from_stack_1.global_60
  loc_C13765: NewIfNullPr clsbase
  loc_C13768: from_stack_1v = clsbase.RsFrmGet()
  loc_C1376D: FLdPr var_BC
  loc_C13770:  = Me.Fields
  loc_C13775: FLdPr var_C0
  loc_C13778: from_stack_2 = Me.Item(from_stack_1)
  loc_C1377D: FLdPr var_D4
  loc_C13780:  = Me.Value
  loc_C13785: FLdRfVar var_124
  loc_C13788: FLdRfVar var_144
  loc_C1378B: LitVarStr var_F4, "CodiUnga"
  loc_C13790: PopAdLdVar
  loc_C13791: FLdRfVar var_140
  loc_C13794: FLdRfVar var_13C
  loc_C13797: FLdPr Me
  loc_C1379A: MemLdRfVar from_stack_1.global_60
  loc_C1379D: NewIfNullPr clsbase
  loc_C137A0: from_stack_1v = clsbase.RsFrmGet()
  loc_C137A5: FLdPr var_13C
  loc_C137A8:  = Me.Fields
  loc_C137AD: FLdPr var_140
  loc_C137B0: from_stack_2 = Me.Item(from_stack_1)
  loc_C137B5: FLdPr var_144
  loc_C137B8:  = Me.Value
  loc_C137BD: FLdRfVar var_134
  loc_C137C0: FLdRfVar var_150
  loc_C137C3: LitVarStr var_114, "CodiInsu"
  loc_C137C8: PopAdLdVar
  loc_C137C9: FLdRfVar var_14C
  loc_C137CC: FLdRfVar var_148
  loc_C137CF: FLdPr Me
  loc_C137D2: MemLdRfVar from_stack_1.global_60
  loc_C137D5: NewIfNullPr clsbase
  loc_C137D8: from_stack_1v = clsbase.RsFrmGet()
  loc_C137DD: FLdPr var_148
  loc_C137E0:  = Me.Fields
  loc_C137E5: FLdPr var_14C
  loc_C137E8: from_stack_2 = Me.Item(from_stack_1)
  loc_C137ED: FLdPr var_150
  loc_C137F0:  = Me.Value
  loc_C137F5: FLdRfVar var_208
  loc_C137F8: FLdRfVar var_15C
  loc_C137FB: LitVarStr var_16C, "CodiFifu"
  loc_C13800: PopAdLdVar
  loc_C13801: FLdRfVar var_158
  loc_C13804: FLdRfVar var_154
  loc_C13807: FLdPr Me
  loc_C1380A: MemLdRfVar from_stack_1.global_60
  loc_C1380D: NewIfNullPr clsbase
  loc_C13810: from_stack_1v = clsbase.RsFrmGet()
  loc_C13815: FLdPr var_154
  loc_C13818:  = Me.Fields
  loc_C1381D: FLdPr var_158
  loc_C13820: from_stack_2 = Me.Item(from_stack_1)
  loc_C13825: FLdPr var_15C
  loc_C13828:  = Me.Value
  loc_C1382D: FLdPr Me
  loc_C13830: VCallAd Control_ID_FechOrcoMsk
  loc_C13833: FStAdFunc var_170
  loc_C13836: FLdPr var_170
  loc_C13839: LateIdLdVar var_B8 DispID_15 0
  loc_C13840: PopAd
  loc_C13842: FLdRfVar var_238
  loc_C13845: FLdRfVar var_18C
  loc_C13848: LitVarStr var_188, "ExpeImpu"
  loc_C1384D: PopAdLdVar
  loc_C1384E: FLdRfVar var_178
  loc_C13851: FLdRfVar var_174
  loc_C13854: FLdPr Me
  loc_C13857: MemLdRfVar from_stack_1.global_60
  loc_C1385A: NewIfNullPr clsbase
  loc_C1385D: from_stack_1v = clsbase.RsFrmGet()
  loc_C13862: FLdPr var_174
  loc_C13865:  = Me.Fields
  loc_C1386A: FLdPr var_178
  loc_C1386D: from_stack_2 = Me.Item(from_stack_1)
  loc_C13872: FLdPr var_18C
  loc_C13875:  = Me.Value
  loc_C1387A: FLdRfVar var_248
  loc_C1387D: FLdRfVar var_3DC
  loc_C13880: LitVarStr var_1B8, "CantItco"
  loc_C13885: PopAdLdVar
  loc_C13886: FLdRfVar var_3CC
  loc_C13889: FLdRfVar var_190
  loc_C1388C: FLdPr Me
  loc_C1388F: MemLdRfVar from_stack_1.global_60
  loc_C13892: NewIfNullPr clsbase
  loc_C13895: from_stack_1v = clsbase.RsFrmGet()
  loc_C1389A: FLdPr var_190
  loc_C1389D:  = Me.Fields
  loc_C138A2: FLdPr var_3CC
  loc_C138A5: from_stack_2 = Me.Item(from_stack_1)
  loc_C138AA: FLdPr var_3DC
  loc_C138AD:  = Me.Value
  loc_C138B2: FLdRfVar var_2A8
  loc_C138B5: FLdRfVar var_40C
  loc_C138B8: LitVarStr var_1C8, "ImunItco"
  loc_C138BD: PopAdLdVar
  loc_C138BE: FLdRfVar var_408
  loc_C138C1: FLdRfVar var_404
  loc_C138C4: FLdPr Me
  loc_C138C7: MemLdRfVar from_stack_1.global_60
  loc_C138CA: NewIfNullPr clsbase
  loc_C138CD: from_stack_1v = clsbase.RsFrmGet()
  loc_C138D2: FLdPr var_404
  loc_C138D5:  = Me.Fields
  loc_C138DA: FLdPr var_408
  loc_C138DD: from_stack_2 = Me.Item(from_stack_1)
  loc_C138E2: FLdPr var_40C
  loc_C138E5:  = Me.Value
  loc_C138EA: FLdRfVar var_2C8
  loc_C138ED: FLdRfVar var_418
  loc_C138F0: LitVarStr var_1D8, "DetaItco"
  loc_C138F5: PopAdLdVar
  loc_C138F6: FLdRfVar var_414
  loc_C138F9: FLdRfVar var_410
  loc_C138FC: FLdPr Me
  loc_C138FF: MemLdRfVar from_stack_1.global_60
  loc_C13902: NewIfNullPr clsbase
  loc_C13905: from_stack_1v = clsbase.RsFrmGet()
  loc_C1390A: FLdPr var_410
  loc_C1390D:  = Me.Fields
  loc_C13912: FLdPr var_414
  loc_C13915: from_stack_2 = Me.Item(from_stack_1)
  loc_C1391A: FLdPr var_418
  loc_C1391D:  = Me.Value
  loc_C13922: FLdRfVar var_2D8
  loc_C13925: FLdRfVar var_424
  loc_C13928: LitVarStr var_1E8, "CodiNope"
  loc_C1392D: PopAdLdVar
  loc_C1392E: FLdRfVar var_420
  loc_C13931: FLdRfVar var_41C
  loc_C13934: FLdPr Me
  loc_C13937: MemLdRfVar from_stack_1.global_60
  loc_C1393A: NewIfNullPr clsbase
  loc_C1393D: from_stack_1v = clsbase.RsFrmGet()
  loc_C13942: FLdPr var_41C
  loc_C13945:  = Me.Fields
  loc_C1394A: FLdPr var_420
  loc_C1394D: from_stack_2 = Me.Item(from_stack_1)
  loc_C13952: FLdPr var_424
  loc_C13955:  = Me.Value
  loc_C1395A: FLdRfVar var_308
  loc_C1395D: FLdRfVar var_430
  loc_C13960: LitVarStr var_1F8, "CodiOrco"
  loc_C13965: PopAdLdVar
  loc_C13966: FLdRfVar var_42C
  loc_C13969: FLdRfVar var_428
  loc_C1396C: FLdPr Me
  loc_C1396F: MemLdRfVar from_stack_1.global_60
  loc_C13972: NewIfNullPr clsbase
  loc_C13975: from_stack_1v = clsbase.RsFrmGet()
  loc_C1397A: FLdPr var_428
  loc_C1397D:  = Me.Fields
  loc_C13982: FLdPr var_42C
  loc_C13985: from_stack_2 = Me.Item(from_stack_1)
  loc_C1398A: FLdPr var_430
  loc_C1398D:  = Me.Value
  loc_C13992: FLdRfVar var_318
  loc_C13995: FLdRfVar var_43C
  loc_C13998: LitVarStr var_218, "CodiItco"
  loc_C1399D: PopAdLdVar
  loc_C1399E: FLdRfVar var_438
  loc_C139A1: FLdRfVar var_434
  loc_C139A4: FLdPr Me
  loc_C139A7: MemLdRfVar from_stack_1.global_60
  loc_C139AA: NewIfNullPr clsbase
  loc_C139AD: from_stack_1v = clsbase.RsFrmGet()
  loc_C139B2: FLdPr var_434
  loc_C139B5:  = Me.Fields
  loc_C139BA: FLdPr var_438
  loc_C139BD: from_stack_2 = Me.Item(from_stack_1)
  loc_C139C2: FLdPr var_43C
  loc_C139C5:  = Me.Value
  loc_C139CA: FLdRfVar var_348
  loc_C139CD: FLdRfVar var_448
  loc_C139D0: LitVarStr var_228, "AlteItco"
  loc_C139D5: PopAdLdVar
  loc_C139D6: FLdRfVar var_444
  loc_C139D9: FLdRfVar var_440
  loc_C139DC: FLdPr Me
  loc_C139DF: MemLdRfVar from_stack_1.global_60
  loc_C139E2: NewIfNullPr clsbase
  loc_C139E5: from_stack_1v = clsbase.RsFrmGet()
  loc_C139EA: FLdPr var_440
  loc_C139ED:  = Me.Fields
  loc_C139F2: FLdPr var_444
  loc_C139F5: from_stack_2 = Me.Item(from_stack_1)
  loc_C139FA: FLdPr var_448
  loc_C139FD:  = Me.Value
  loc_C13A02: FLdRfVar var_358
  loc_C13A05: FLdRfVar var_454
  loc_C13A08: LitVarStr var_288, "CucuPers"
  loc_C13A0D: PopAdLdVar
  loc_C13A0E: FLdRfVar var_450
  loc_C13A11: FLdRfVar var_44C
  loc_C13A14: FLdPr Me
  loc_C13A17: MemLdRfVar from_stack_1.global_60
  loc_C13A1A: NewIfNullPr clsbase
  loc_C13A1D: from_stack_1v = clsbase.RsFrmGet()
  loc_C13A22: FLdPr var_44C
  loc_C13A25:  = Me.Fields
  loc_C13A2A: FLdPr var_450
  loc_C13A2D: from_stack_2 = Me.Item(from_stack_1)
  loc_C13A32: FLdPr var_454
  loc_C13A35:  = Me.Value
  loc_C13A3A: FLdRfVar var_3D8
  loc_C13A3D: LitI2_Byte 0
  loc_C13A3F: LitI2_Byte 0
  loc_C13A41: LitI2_Byte 0
  loc_C13A43: LitI4 0
  loc_C13A48: FLdRfVar var_358
  loc_C13A4B: CStrVarTmp
  loc_C13A4C: FStStrNoPop var_3D4
  loc_C13A4F: FLdRfVar var_348
  loc_C13A52: CUI1Var
  loc_C13A54: FLdRfVar var_318
  loc_C13A57: CI2Var
  loc_C13A58: FLdRfVar var_308
  loc_C13A5B: CI4Var
  loc_C13A5D: FLdRfVar var_2D8
  loc_C13A60: CI4Var
  loc_C13A62: FLdRfVar var_2C8
  loc_C13A65: CStrVarTmp
  loc_C13A66: FStStrNoPop var_3D0
  loc_C13A69: FLdR8 var_3E4
  loc_C13A6C: FLdRfVar var_2A8
  loc_C13A6F: CR4Var
  loc_C13A70: PopFPR8
  loc_C13A71: FLdRfVar var_248
  loc_C13A74: CR4Var
  loc_C13A75: PopFPR8
  loc_C13A76: FLdRfVar var_238
  loc_C13A79: CStrVarTmp
  loc_C13A7A: FStStrNoPop var_3C8
  loc_C13A7D: FLdRfVar var_B8
  loc_C13A80: CStrVarTmp
  loc_C13A81: FStStrNoPop var_3C4
  loc_C13A84: FLdRfVar var_208
  loc_C13A87: CStrVarTmp
  loc_C13A88: FStStrNoPop var_3B0
  loc_C13A8B: FLdRfVar var_134
  loc_C13A8E: CI4Var
  loc_C13A90: FLdRfVar var_124
  loc_C13A93: CI2Var
  loc_C13A94: FLdRfVar var_104
  loc_C13A97: CStrVarTmp
  loc_C13A98: FStStrNoPop var_39C
  loc_C13A9B: FLdRfVar var_E4
  loc_C13A9E: CStrVarTmp
  loc_C13A9F: FStStrNoPop var_138
  loc_C13AA2: FLdPr Me
  loc_C13AA5: MemLdRfVar from_stack_1.global_64
  loc_C13AA8: NewIfNullPr clsimputacion
  loc_C13AAB: from_stack_16v = clsimputacion.AddNewDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C13AB0: ILdRf var_3D8
  loc_C13AB3: FLdPr Me
  loc_C13AB6: MemStI4 global_96
  loc_C13AB9: FFreeStr var_138 = "": var_39C = "": var_3B0 = "": var_3C4 = "": var_3C8 = "": var_3D0 = ""
  loc_C13ACA: FFreeAd var_D4 = "": var_144 = "": var_150 = "": var_15C = "": var_18C = "": var_3DC = "": var_40C = "": var_418 = "": var_424 = "": var_430 = "": var_43C = "": var_448 = "": var_454 = "": var_90 = "": var_94 = "": var_BC = "": var_C0 = "": var_13C = "": var_140 = "": var_148 = "": var_14C = "": var_154 = "": var_158 = "": var_170 = "": var_174 = "": var_178 = "": var_190 = "": var_3CC = "": var_404 = "": var_408 = "": var_410 = "": var_414 = "": var_41C = "": var_420 = "": var_428 = "": var_42C = "": var_434 = "": var_438 = "": var_440 = "": var_444 = "": var_44C = "": var_450 = ""
  loc_C13B23: FFreeVar var_B8 = "": var_E4 = "": var_104 = "": var_124 = "": var_134 = "": var_208 = "": var_238 = "": var_248 = "": var_2A8 = "": var_2C8 = "": var_2D8 = "": var_308 = "": var_318 = "": var_348 = ""
  loc_C13B44: FLdPr Me
  loc_C13B47: MemLdStr global_96
  loc_C13B4A: LitI4 0
  loc_C13B4F: EqI4
  loc_C13B50: BranchF loc_C13B60
  loc_C13B53: LitI4 0
  loc_C13B58: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C13B5B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C13B60: Branch loc_C13FAE
  loc_C13B63: FLdRfVar var_E4
  loc_C13B66: FLdRfVar var_A8
  loc_C13B69: LitVarStr var_A4, "CodiPart"
  loc_C13B6E: PopAdLdVar
  loc_C13B6F: FLdRfVar var_94
  loc_C13B72: FLdRfVar var_90
  loc_C13B75: FLdPr Me
  loc_C13B78: MemLdRfVar from_stack_1.global_60
  loc_C13B7B: NewIfNullPr clsbase
  loc_C13B7E: from_stack_1v = clsbase.RsFrmGet()
  loc_C13B83: FLdPr var_90
  loc_C13B86:  = Me.Fields
  loc_C13B8B: FLdPr var_94
  loc_C13B8E: from_stack_2 = Me.Item(from_stack_1)
  loc_C13B93: FLdPr var_A8
  loc_C13B96:  = Me.Value
  loc_C13B9B: FLdRfVar var_104
  loc_C13B9E: FLdRfVar var_D4
  loc_C13BA1: LitVarStr var_D0, "CodiOrga"
  loc_C13BA6: PopAdLdVar
  loc_C13BA7: FLdRfVar var_C0
  loc_C13BAA: FLdRfVar var_BC
  loc_C13BAD: FLdPr Me
  loc_C13BB0: MemLdRfVar from_stack_1.global_60
  loc_C13BB3: NewIfNullPr clsbase
  loc_C13BB6: from_stack_1v = clsbase.RsFrmGet()
  loc_C13BBB: FLdPr var_BC
  loc_C13BBE:  = Me.Fields
  loc_C13BC3: FLdPr var_C0
  loc_C13BC6: from_stack_2 = Me.Item(from_stack_1)
  loc_C13BCB: FLdPr var_D4
  loc_C13BCE:  = Me.Value
  loc_C13BD3: FLdRfVar var_124
  loc_C13BD6: FLdRfVar var_144
  loc_C13BD9: LitVarStr var_F4, "CodiUnga"
  loc_C13BDE: PopAdLdVar
  loc_C13BDF: FLdRfVar var_140
  loc_C13BE2: FLdRfVar var_13C
  loc_C13BE5: FLdPr Me
  loc_C13BE8: MemLdRfVar from_stack_1.global_60
  loc_C13BEB: NewIfNullPr clsbase
  loc_C13BEE: from_stack_1v = clsbase.RsFrmGet()
  loc_C13BF3: FLdPr var_13C
  loc_C13BF6:  = Me.Fields
  loc_C13BFB: FLdPr var_140
  loc_C13BFE: from_stack_2 = Me.Item(from_stack_1)
  loc_C13C03: FLdPr var_144
  loc_C13C06:  = Me.Value
  loc_C13C0B: FLdRfVar var_134
  loc_C13C0E: FLdRfVar var_150
  loc_C13C11: LitVarStr var_114, "CodiInsu"
  loc_C13C16: PopAdLdVar
  loc_C13C17: FLdRfVar var_14C
  loc_C13C1A: FLdRfVar var_148
  loc_C13C1D: FLdPr Me
  loc_C13C20: MemLdRfVar from_stack_1.global_60
  loc_C13C23: NewIfNullPr clsbase
  loc_C13C26: from_stack_1v = clsbase.RsFrmGet()
  loc_C13C2B: FLdPr var_148
  loc_C13C2E:  = Me.Fields
  loc_C13C33: FLdPr var_14C
  loc_C13C36: from_stack_2 = Me.Item(from_stack_1)
  loc_C13C3B: FLdPr var_150
  loc_C13C3E:  = Me.Value
  loc_C13C43: FLdRfVar var_208
  loc_C13C46: FLdRfVar var_15C
  loc_C13C49: LitVarStr var_16C, "CodiFifu"
  loc_C13C4E: PopAdLdVar
  loc_C13C4F: FLdRfVar var_158
  loc_C13C52: FLdRfVar var_154
  loc_C13C55: FLdPr Me
  loc_C13C58: MemLdRfVar from_stack_1.global_60
  loc_C13C5B: NewIfNullPr clsbase
  loc_C13C5E: from_stack_1v = clsbase.RsFrmGet()
  loc_C13C63: FLdPr var_154
  loc_C13C66:  = Me.Fields
  loc_C13C6B: FLdPr var_158
  loc_C13C6E: from_stack_2 = Me.Item(from_stack_1)
  loc_C13C73: FLdPr var_15C
  loc_C13C76:  = Me.Value
  loc_C13C7B: FLdPr Me
  loc_C13C7E: VCallAd Control_ID_FechOrcoMsk
  loc_C13C81: FStAdFunc var_170
  loc_C13C84: FLdPr var_170
  loc_C13C87: LateIdLdVar var_B8 DispID_15 0
  loc_C13C8E: PopAd
  loc_C13C90: FLdRfVar var_238
  loc_C13C93: FLdRfVar var_18C
  loc_C13C96: LitVarStr var_188, "ExpeImpu"
  loc_C13C9B: PopAdLdVar
  loc_C13C9C: FLdRfVar var_178
  loc_C13C9F: FLdRfVar var_174
  loc_C13CA2: FLdPr Me
  loc_C13CA5: MemLdRfVar from_stack_1.global_60
  loc_C13CA8: NewIfNullPr clsbase
  loc_C13CAB: from_stack_1v = clsbase.RsFrmGet()
  loc_C13CB0: FLdPr var_174
  loc_C13CB3:  = Me.Fields
  loc_C13CB8: FLdPr var_178
  loc_C13CBB: from_stack_2 = Me.Item(from_stack_1)
  loc_C13CC0: FLdPr var_18C
  loc_C13CC3:  = Me.Value
  loc_C13CC8: FLdRfVar var_248
  loc_C13CCB: FLdRfVar var_3DC
  loc_C13CCE: LitVarStr var_1B8, "CantItco"
  loc_C13CD3: PopAdLdVar
  loc_C13CD4: FLdRfVar var_3CC
  loc_C13CD7: FLdRfVar var_190
  loc_C13CDA: FLdPr Me
  loc_C13CDD: MemLdRfVar from_stack_1.global_60
  loc_C13CE0: NewIfNullPr clsbase
  loc_C13CE3: from_stack_1v = clsbase.RsFrmGet()
  loc_C13CE8: FLdPr var_190
  loc_C13CEB:  = Me.Fields
  loc_C13CF0: FLdPr var_3CC
  loc_C13CF3: from_stack_2 = Me.Item(from_stack_1)
  loc_C13CF8: FLdPr var_3DC
  loc_C13CFB:  = Me.Value
  loc_C13D00: FLdRfVar var_2A8
  loc_C13D03: FLdRfVar var_40C
  loc_C13D06: LitVarStr var_1C8, "ImunItco"
  loc_C13D0B: PopAdLdVar
  loc_C13D0C: FLdRfVar var_408
  loc_C13D0F: FLdRfVar var_404
  loc_C13D12: FLdPr Me
  loc_C13D15: MemLdRfVar from_stack_1.global_60
  loc_C13D18: NewIfNullPr clsbase
  loc_C13D1B: from_stack_1v = clsbase.RsFrmGet()
  loc_C13D20: FLdPr var_404
  loc_C13D23:  = Me.Fields
  loc_C13D28: FLdPr var_408
  loc_C13D2B: from_stack_2 = Me.Item(from_stack_1)
  loc_C13D30: FLdPr var_40C
  loc_C13D33:  = Me.Value
  loc_C13D38: FLdRfVar var_2C8
  loc_C13D3B: FLdRfVar var_418
  loc_C13D3E: LitVarStr var_1D8, "DetaItco"
  loc_C13D43: PopAdLdVar
  loc_C13D44: FLdRfVar var_414
  loc_C13D47: FLdRfVar var_410
  loc_C13D4A: FLdPr Me
  loc_C13D4D: MemLdRfVar from_stack_1.global_60
  loc_C13D50: NewIfNullPr clsbase
  loc_C13D53: from_stack_1v = clsbase.RsFrmGet()
  loc_C13D58: FLdPr var_410
  loc_C13D5B:  = Me.Fields
  loc_C13D60: FLdPr var_414
  loc_C13D63: from_stack_2 = Me.Item(from_stack_1)
  loc_C13D68: FLdPr var_418
  loc_C13D6B:  = Me.Value
  loc_C13D70: FLdRfVar var_2D8
  loc_C13D73: FLdRfVar var_424
  loc_C13D76: LitVarStr var_1E8, "CodiNope"
  loc_C13D7B: PopAdLdVar
  loc_C13D7C: FLdRfVar var_420
  loc_C13D7F: FLdRfVar var_41C
  loc_C13D82: FLdPr Me
  loc_C13D85: MemLdRfVar from_stack_1.global_60
  loc_C13D88: NewIfNullPr clsbase
  loc_C13D8B: from_stack_1v = clsbase.RsFrmGet()
  loc_C13D90: FLdPr var_41C
  loc_C13D93:  = Me.Fields
  loc_C13D98: FLdPr var_420
  loc_C13D9B: from_stack_2 = Me.Item(from_stack_1)
  loc_C13DA0: FLdPr var_424
  loc_C13DA3:  = Me.Value
  loc_C13DA8: FLdRfVar var_308
  loc_C13DAB: FLdRfVar var_430
  loc_C13DAE: LitVarStr var_1F8, "CodiOrco"
  loc_C13DB3: PopAdLdVar
  loc_C13DB4: FLdRfVar var_42C
  loc_C13DB7: FLdRfVar var_428
  loc_C13DBA: FLdPr Me
  loc_C13DBD: MemLdRfVar from_stack_1.global_60
  loc_C13DC0: NewIfNullPr clsbase
  loc_C13DC3: from_stack_1v = clsbase.RsFrmGet()
  loc_C13DC8: FLdPr var_428
  loc_C13DCB:  = Me.Fields
  loc_C13DD0: FLdPr var_42C
  loc_C13DD3: from_stack_2 = Me.Item(from_stack_1)
  loc_C13DD8: FLdPr var_430
  loc_C13DDB:  = Me.Value
  loc_C13DE0: FLdRfVar var_318
  loc_C13DE3: FLdRfVar var_43C
  loc_C13DE6: LitVarStr var_218, "CodiItco"
  loc_C13DEB: PopAdLdVar
  loc_C13DEC: FLdRfVar var_438
  loc_C13DEF: FLdRfVar var_434
  loc_C13DF2: FLdPr Me
  loc_C13DF5: MemLdRfVar from_stack_1.global_60
  loc_C13DF8: NewIfNullPr clsbase
  loc_C13DFB: from_stack_1v = clsbase.RsFrmGet()
  loc_C13E00: FLdPr var_434
  loc_C13E03:  = Me.Fields
  loc_C13E08: FLdPr var_438
  loc_C13E0B: from_stack_2 = Me.Item(from_stack_1)
  loc_C13E10: FLdPr var_43C
  loc_C13E13:  = Me.Value
  loc_C13E18: FLdRfVar var_348
  loc_C13E1B: FLdRfVar var_448
  loc_C13E1E: LitVarStr var_228, "AlteItco"
  loc_C13E23: PopAdLdVar
  loc_C13E24: FLdRfVar var_444
  loc_C13E27: FLdRfVar var_440
  loc_C13E2A: FLdPr Me
  loc_C13E2D: MemLdRfVar from_stack_1.global_60
  loc_C13E30: NewIfNullPr clsbase
  loc_C13E33: from_stack_1v = clsbase.RsFrmGet()
  loc_C13E38: FLdPr var_440
  loc_C13E3B:  = Me.Fields
  loc_C13E40: FLdPr var_444
  loc_C13E43: from_stack_2 = Me.Item(from_stack_1)
  loc_C13E48: FLdPr var_448
  loc_C13E4B:  = Me.Value
  loc_C13E50: FLdRfVar var_358
  loc_C13E53: FLdRfVar var_454
  loc_C13E56: LitVarStr var_288, "CucuPers"
  loc_C13E5B: PopAdLdVar
  loc_C13E5C: FLdRfVar var_450
  loc_C13E5F: FLdRfVar var_44C
  loc_C13E62: FLdPr Me
  loc_C13E65: MemLdRfVar from_stack_1.global_60
  loc_C13E68: NewIfNullPr clsbase
  loc_C13E6B: from_stack_1v = clsbase.RsFrmGet()
  loc_C13E70: FLdPr var_44C
  loc_C13E73:  = Me.Fields
  loc_C13E78: FLdPr var_450
  loc_C13E7B: from_stack_2 = Me.Item(from_stack_1)
  loc_C13E80: FLdPr var_454
  loc_C13E83:  = Me.Value
  loc_C13E88: FLdRfVar var_3D8
  loc_C13E8B: LitI2_Byte 0
  loc_C13E8D: LitI2_Byte 0
  loc_C13E8F: LitI2_Byte 0
  loc_C13E91: LitI4 0
  loc_C13E96: FLdRfVar var_358
  loc_C13E99: CStrVarTmp
  loc_C13E9A: FStStrNoPop var_3D4
  loc_C13E9D: FLdRfVar var_348
  loc_C13EA0: CUI1Var
  loc_C13EA2: FLdRfVar var_318
  loc_C13EA5: CI2Var
  loc_C13EA6: FLdRfVar var_308
  loc_C13EA9: CI4Var
  loc_C13EAB: FLdRfVar var_2D8
  loc_C13EAE: CI4Var
  loc_C13EB0: FLdRfVar var_2C8
  loc_C13EB3: CStrVarTmp
  loc_C13EB4: FStStrNoPop var_3D0
  loc_C13EB7: FLdR8 var_3E4
  loc_C13EBA: FLdRfVar var_2A8
  loc_C13EBD: CR4Var
  loc_C13EBE: PopFPR8
  loc_C13EBF: FLdRfVar var_248
  loc_C13EC2: CR4Var
  loc_C13EC3: PopFPR8
  loc_C13EC4: FLdRfVar var_238
  loc_C13EC7: CStrVarTmp
  loc_C13EC8: FStStrNoPop var_3C8
  loc_C13ECB: FLdRfVar var_B8
  loc_C13ECE: CStrVarTmp
  loc_C13ECF: FStStrNoPop var_3C4
  loc_C13ED2: FLdRfVar var_208
  loc_C13ED5: CStrVarTmp
  loc_C13ED6: FStStrNoPop var_3B0
  loc_C13ED9: FLdRfVar var_134
  loc_C13EDC: CI4Var
  loc_C13EDE: FLdRfVar var_124
  loc_C13EE1: CI2Var
  loc_C13EE2: FLdRfVar var_104
  loc_C13EE5: CStrVarTmp
  loc_C13EE6: FStStrNoPop var_39C
  loc_C13EE9: FLdRfVar var_E4
  loc_C13EEC: CStrVarTmp
  loc_C13EED: FStStrNoPop var_138
  loc_C13EF0: FLdPr Me
  loc_C13EF3: MemLdRfVar from_stack_1.global_64
  loc_C13EF6: NewIfNullPr clsimputacion
  loc_C13EF9: from_stack_16v = clsimputacion.AddNewDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C13EFE: ILdRf var_3D8
  loc_C13F01: FLdPr Me
  loc_C13F04: MemStI4 global_96
  loc_C13F07: FFreeStr var_138 = "": var_39C = "": var_3B0 = "": var_3C4 = "": var_3C8 = "": var_3D0 = ""
  loc_C13F18: FFreeAd var_D4 = "": var_144 = "": var_150 = "": var_15C = "": var_18C = "": var_3DC = "": var_40C = "": var_418 = "": var_424 = "": var_430 = "": var_43C = "": var_448 = "": var_454 = "": var_90 = "": var_94 = "": var_BC = "": var_C0 = "": var_13C = "": var_140 = "": var_148 = "": var_14C = "": var_154 = "": var_158 = "": var_170 = "": var_174 = "": var_178 = "": var_190 = "": var_3CC = "": var_404 = "": var_408 = "": var_410 = "": var_414 = "": var_41C = "": var_420 = "": var_428 = "": var_42C = "": var_434 = "": var_438 = "": var_440 = "": var_444 = "": var_44C = "": var_450 = ""
  loc_C13F71: FFreeVar var_B8 = "": var_E4 = "": var_104 = "": var_124 = "": var_134 = "": var_208 = "": var_238 = "": var_248 = "": var_2A8 = "": var_2C8 = "": var_2D8 = "": var_308 = "": var_318 = "": var_348 = ""
  loc_C13F92: FLdPr Me
  loc_C13F95: MemLdStr global_96
  loc_C13F98: LitI4 0
  loc_C13F9D: EqI4
  loc_C13F9E: BranchF loc_C13FAE
  loc_C13FA1: LitI4 0
  loc_C13FA6: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C13FA9: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C13FAE: Branch loc_C1482E
  loc_C13FB1: FLdFPR8 var_3EC
  loc_C13FB4: FLdFPR8 var_3E4
  loc_C13FB7: LtR8
  loc_C13FB8: BranchF loc_C1482E
  loc_C13FBB: LitI4 2
  loc_C13FC0: FLdFPR8 var_3E4
  loc_C13FC3: FLdFPR8 var_3EC
  loc_C13FC6: SubR4
  loc_C13FC7: CVarR8
  loc_C13FCB: FLdRfVar var_E4
  loc_C13FCE: ImpAdCallFPR4  = Round(, )
  loc_C13FD3: FLdPr Me
  loc_C13FD6: VCallAd Control_ID_FechOrcoMsk
  loc_C13FD9: FStAdFunc var_90
  loc_C13FDC: FLdPr var_90
  loc_C13FDF: LateIdLdVar var_104 DispID_15 0
  loc_C13FE6: PopAd
  loc_C13FE8: FLdRfVar var_3B0
  loc_C13FEB: LitI2_Byte 0
  loc_C13FED: PopTmpLdAd2 var_3EE
  loc_C13FF0: LitStr "0"
  loc_C13FF3: FLdRfVar var_104
  loc_C13FF6: CStrVarTmp
  loc_C13FF7: FStStrNoPop var_39C
  loc_C13FFA: FLdPr Me
  loc_C13FFD: MemLdRfVar from_stack_1.global_112
  loc_C14000: NewIfNullRf
  loc_C14004: FLdPr Me
  loc_C14007: MemLdRfVar from_stack_1.global_108
  loc_C1400A: NewIfNullRf
  loc_C1400E: FLdPr Me
  loc_C14011: MemLdRfVar from_stack_1.global_104
  loc_C14014: NewIfNullRf
  loc_C14018: FLdPr Me
  loc_C1401B: MemLdRfVar from_stack_1.global_100
  loc_C1401E: NewIfNullRf
  loc_C14022: FLdRfVar var_E4
  loc_C14025: CStrVarVal var_138
  loc_C14029: FLdPr Me
  loc_C1402C: MemLdRfVar from_stack_1.global_64
  loc_C1402F: NewIfNullPr clsimputacion
  loc_C14032: from_stack_9v = clsimputacion.ValidaPrevImpu(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v)
  loc_C14037: ILdRf var_3B0
  loc_C1403A: FLdPr Me
  loc_C1403D: MemStStrCopy
  loc_C14041: FFreeStr var_138 = "": var_39C = ""
  loc_C1404A: FFree1Ad var_90
  loc_C1404D: FFreeVar var_B8 = "": var_104 = ""
  loc_C14056: FLdPr Me
  loc_C14059: MemLdStr global_80
  loc_C1405C: LitStr vbNullString
  loc_C1405F: NeStr
  loc_C14061: BranchF loc_C14067
  loc_C14064: Branch loc_C1482E
  loc_C14067: LitI2_Byte &HFF
  loc_C14069: PopTmpLdAd2 var_3F0
  loc_C1406C: LitI2_Byte &HFF
  loc_C1406E: PopTmpLdAd2 var_3EE
  loc_C14071: LitVarStr var_A4, "Si NO Genera la Preventiva NO se Imputará el Item..."
  loc_C14076: LitI4 &HA
  loc_C1407B: FLdRfVar var_B8
  loc_C1407E: ImpAdCallFPR4  = Chr()
  loc_C14083: FLdRfVar var_B8
  loc_C14086: ConcatVar var_E4
  loc_C1408A: LitVarStr var_D0, "¿Genera la Afectación Preventiva?"
  loc_C1408F: ConcatVar var_104
  loc_C14093: CStrVarVal var_138
  loc_C14097: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C1409C: CI4UI1
  loc_C1409D: LitI4 6
  loc_C140A2: EqI4
  loc_C140A3: FFree1Str var_138
  loc_C140A6: FFreeVar var_B8 = "": var_E4 = ""
  loc_C140AF: BranchF loc_C1482E
  loc_C140B2: FLdRfVar var_208
  loc_C140B5: FLdRfVar var_A8
  loc_C140B8: LitVarStr var_A4, "CodiPart"
  loc_C140BD: PopAdLdVar
  loc_C140BE: FLdRfVar var_94
  loc_C140C1: FLdRfVar var_90
  loc_C140C4: FLdPr Me
  loc_C140C7: MemLdRfVar from_stack_1.global_60
  loc_C140CA: NewIfNullPr clsbase
  loc_C140CD: from_stack_1v = clsbase.RsFrmGet()
  loc_C140D2: FLdPr var_90
  loc_C140D5:  = Me.Fields
  loc_C140DA: FLdPr var_94
  loc_C140DD: from_stack_2 = Me.Item(from_stack_1)
  loc_C140E2: FLdPr var_A8
  loc_C140E5:  = Me.Value
  loc_C140EA: FLdRfVar var_238
  loc_C140ED: FLdRfVar var_D4
  loc_C140F0: LitVarStr var_D0, "CodiOrga"
  loc_C140F5: PopAdLdVar
  loc_C140F6: FLdRfVar var_C0
  loc_C140F9: FLdRfVar var_BC
  loc_C140FC: FLdPr Me
  loc_C140FF: MemLdRfVar from_stack_1.global_60
  loc_C14102: NewIfNullPr clsbase
  loc_C14105: from_stack_1v = clsbase.RsFrmGet()
  loc_C1410A: FLdPr var_BC
  loc_C1410D:  = Me.Fields
  loc_C14112: FLdPr var_C0
  loc_C14115: from_stack_2 = Me.Item(from_stack_1)
  loc_C1411A: FLdPr var_D4
  loc_C1411D:  = Me.Value
  loc_C14122: FLdRfVar var_248
  loc_C14125: FLdRfVar var_144
  loc_C14128: LitVarStr var_F4, "CodiUnga"
  loc_C1412D: PopAdLdVar
  loc_C1412E: FLdRfVar var_140
  loc_C14131: FLdRfVar var_13C
  loc_C14134: FLdPr Me
  loc_C14137: MemLdRfVar from_stack_1.global_60
  loc_C1413A: NewIfNullPr clsbase
  loc_C1413D: from_stack_1v = clsbase.RsFrmGet()
  loc_C14142: FLdPr var_13C
  loc_C14145:  = Me.Fields
  loc_C1414A: FLdPr var_140
  loc_C1414D: from_stack_2 = Me.Item(from_stack_1)
  loc_C14152: FLdPr var_144
  loc_C14155:  = Me.Value
  loc_C1415A: FLdRfVar var_2A8
  loc_C1415D: FLdRfVar var_150
  loc_C14160: LitVarStr var_114, "CodiInsu"
  loc_C14165: PopAdLdVar
  loc_C14166: FLdRfVar var_14C
  loc_C14169: FLdRfVar var_148
  loc_C1416C: FLdPr Me
  loc_C1416F: MemLdRfVar from_stack_1.global_60
  loc_C14172: NewIfNullPr clsbase
  loc_C14175: from_stack_1v = clsbase.RsFrmGet()
  loc_C1417A: FLdPr var_148
  loc_C1417D:  = Me.Fields
  loc_C14182: FLdPr var_14C
  loc_C14185: from_stack_2 = Me.Item(from_stack_1)
  loc_C1418A: FLdPr var_150
  loc_C1418D:  = Me.Value
  loc_C14192: FLdRfVar var_2C8
  loc_C14195: FLdRfVar var_15C
  loc_C14198: LitVarStr var_16C, "CodiFifu"
  loc_C1419D: PopAdLdVar
  loc_C1419E: FLdRfVar var_158
  loc_C141A1: FLdRfVar var_154
  loc_C141A4: FLdPr Me
  loc_C141A7: MemLdRfVar from_stack_1.global_60
  loc_C141AA: NewIfNullPr clsbase
  loc_C141AD: from_stack_1v = clsbase.RsFrmGet()
  loc_C141B2: FLdPr var_154
  loc_C141B5:  = Me.Fields
  loc_C141BA: FLdPr var_158
  loc_C141BD: from_stack_2 = Me.Item(from_stack_1)
  loc_C141C2: FLdPr var_15C
  loc_C141C5:  = Me.Value
  loc_C141CA: FLdPr Me
  loc_C141CD: VCallAd Control_ID_FechOrcoMsk
  loc_C141D0: FStAdFunc var_170
  loc_C141D3: FLdPr var_170
  loc_C141D6: LateIdLdVar var_B8 DispID_15 0
  loc_C141DD: PopAd
  loc_C141DF: FLdRfVar var_2D8
  loc_C141E2: FLdRfVar var_18C
  loc_C141E5: LitVarStr var_188, "ExpeImpu"
  loc_C141EA: PopAdLdVar
  loc_C141EB: FLdRfVar var_178
  loc_C141EE: FLdRfVar var_174
  loc_C141F1: FLdPr Me
  loc_C141F4: MemLdRfVar from_stack_1.global_60
  loc_C141F7: NewIfNullPr clsbase
  loc_C141FA: from_stack_1v = clsbase.RsFrmGet()
  loc_C141FF: FLdPr var_174
  loc_C14202:  = Me.Fields
  loc_C14207: FLdPr var_178
  loc_C1420A: from_stack_2 = Me.Item(from_stack_1)
  loc_C1420F: FLdPr var_18C
  loc_C14212:  = Me.Value
  loc_C14217: LitI4 2
  loc_C1421C: FLdFPR8 var_3E4
  loc_C1421F: FLdFPR8 var_3EC
  loc_C14222: SubR4
  loc_C14223: CVarR8
  loc_C14227: FLdRfVar var_104
  loc_C1422A: ImpAdCallFPR4  = Round(, )
  loc_C1422F: LitI4 2
  loc_C14234: FLdFPR8 var_3E4
  loc_C14237: FLdFPR8 var_3EC
  loc_C1423A: SubR4
  loc_C1423B: CVarR8
  loc_C1423F: FLdRfVar var_134
  loc_C14242: ImpAdCallFPR4  = Round(, )
  loc_C14247: FLdRfVar var_308
  loc_C1424A: FLdRfVar var_3DC
  loc_C1424D: LitVarStr var_1D8, "DetaItco"
  loc_C14252: PopAdLdVar
  loc_C14253: FLdRfVar var_3CC
  loc_C14256: FLdRfVar var_190
  loc_C14259: FLdPr Me
  loc_C1425C: MemLdRfVar from_stack_1.global_60
  loc_C1425F: NewIfNullPr clsbase
  loc_C14262: from_stack_1v = clsbase.RsFrmGet()
  loc_C14267: FLdPr var_190
  loc_C1426A:  = Me.Fields
  loc_C1426F: FLdPr var_3CC
  loc_C14272: from_stack_2 = Me.Item(from_stack_1)
  loc_C14277: FLdPr var_3DC
  loc_C1427A:  = Me.Value
  loc_C1427F: FLdRfVar var_318
  loc_C14282: FLdRfVar var_40C
  loc_C14285: LitVarStr var_1E8, "CodiNope"
  loc_C1428A: PopAdLdVar
  loc_C1428B: FLdRfVar var_408
  loc_C1428E: FLdRfVar var_404
  loc_C14291: FLdPr Me
  loc_C14294: MemLdRfVar from_stack_1.global_60
  loc_C14297: NewIfNullPr clsbase
  loc_C1429A: from_stack_1v = clsbase.RsFrmGet()
  loc_C1429F: FLdPr var_404
  loc_C142A2:  = Me.Fields
  loc_C142A7: FLdPr var_408
  loc_C142AA: from_stack_2 = Me.Item(from_stack_1)
  loc_C142AF: FLdPr var_40C
  loc_C142B2:  = Me.Value
  loc_C142B7: FLdRfVar var_348
  loc_C142BA: FLdRfVar var_418
  loc_C142BD: LitVarStr var_1F8, "CodiItco"
  loc_C142C2: PopAdLdVar
  loc_C142C3: FLdRfVar var_414
  loc_C142C6: FLdRfVar var_410
  loc_C142C9: FLdPr Me
  loc_C142CC: MemLdRfVar from_stack_1.global_60
  loc_C142CF: NewIfNullPr clsbase
  loc_C142D2: from_stack_1v = clsbase.RsFrmGet()
  loc_C142D7: FLdPr var_410
  loc_C142DA:  = Me.Fields
  loc_C142DF: FLdPr var_414
  loc_C142E2: from_stack_2 = Me.Item(from_stack_1)
  loc_C142E7: FLdPr var_418
  loc_C142EA:  = Me.Value
  loc_C142EF: FLdRfVar var_3D8
  loc_C142F2: LitI2_Byte 0
  loc_C142F4: LitI2_Byte 0
  loc_C142F6: LitI2_Byte 0
  loc_C142F8: LitI4 0
  loc_C142FD: FLdRfVar var_348
  loc_C14300: CI2Var
  loc_C14301: FLdRfVar var_318
  loc_C14304: CI4Var
  loc_C14306: FLdRfVar var_308
  loc_C14309: CStrVarTmp
  loc_C1430A: FStStrNoPop var_3D0
  loc_C1430D: FLdRfVar var_134
  loc_C14310: CR4Var
  loc_C14311: PopFPR8
  loc_C14312: FLdRfVar var_104
  loc_C14315: CR4Var
  loc_C14316: PopFPR8
  loc_C14317: LitI2_Byte 1
  loc_C14319: CR8I2
  loc_C1431A: PopFPR8
  loc_C1431B: FLdRfVar var_2D8
  loc_C1431E: CStrVarTmp
  loc_C1431F: FStStrNoPop var_3C8
  loc_C14322: FLdRfVar var_B8
  loc_C14325: CStrVarTmp
  loc_C14326: FStStrNoPop var_3C4
  loc_C14329: FLdRfVar var_2C8
  loc_C1432C: CStrVarTmp
  loc_C1432D: FStStrNoPop var_3B0
  loc_C14330: FLdRfVar var_2A8
  loc_C14333: CI4Var
  loc_C14335: FLdRfVar var_248
  loc_C14338: CI2Var
  loc_C14339: FLdRfVar var_238
  loc_C1433C: CStrVarTmp
  loc_C1433D: FStStrNoPop var_39C
  loc_C14340: FLdRfVar var_208
  loc_C14343: CStrVarTmp
  loc_C14344: FStStrNoPop var_138
  loc_C14347: FLdPr Me
  loc_C1434A: MemLdRfVar from_stack_1.global_64
  loc_C1434D: NewIfNullPr clsimputacion
  loc_C14350: from_stack_16v = clsimputacion.AddNewPreventiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C14355: ILdRf var_3D8
  loc_C14358: FLdPr Me
  loc_C1435B: MemStI4 global_96
  loc_C1435E: FFreeStr var_138 = "": var_39C = "": var_3B0 = "": var_3C4 = "": var_3C8 = ""
  loc_C1436D: FFreeAd var_90 = "": var_94 = "": var_BC = "": var_C0 = "": var_13C = "": var_140 = "": var_148 = "": var_14C = "": var_154 = "": var_158 = "": var_170 = "": var_174 = "": var_178 = "": var_190 = "": var_3CC = "": var_404 = "": var_408 = "": var_410 = "": var_414 = "": var_A8 = "": var_D4 = "": var_144 = "": var_150 = "": var_15C = "": var_18C = "": var_3DC = "": var_40C = ""
  loc_C143A8: FFreeVar var_B8 = "": var_E4 = "": var_124 = "": var_208 = "": var_238 = "": var_248 = "": var_2A8 = "": var_2C8 = "": var_2D8 = "": var_104 = "": var_134 = "": var_308 = "": var_318 = ""
  loc_C143C7: FLdPr Me
  loc_C143CA: MemLdStr global_96
  loc_C143CD: LitI4 0
  loc_C143D2: EqI4
  loc_C143D3: BranchF loc_C143E3
  loc_C143D6: LitI4 0
  loc_C143DB: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C143DE: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C143E3: FLdRfVar var_E4
  loc_C143E6: FLdRfVar var_A8
  loc_C143E9: LitVarStr var_A4, "CodiPart"
  loc_C143EE: PopAdLdVar
  loc_C143EF: FLdRfVar var_94
  loc_C143F2: FLdRfVar var_90
  loc_C143F5: FLdPr Me
  loc_C143F8: MemLdRfVar from_stack_1.global_60
  loc_C143FB: NewIfNullPr clsbase
  loc_C143FE: from_stack_1v = clsbase.RsFrmGet()
  loc_C14403: FLdPr var_90
  loc_C14406:  = Me.Fields
  loc_C1440B: FLdPr var_94
  loc_C1440E: from_stack_2 = Me.Item(from_stack_1)
  loc_C14413: FLdPr var_A8
  loc_C14416:  = Me.Value
  loc_C1441B: FLdRfVar var_104
  loc_C1441E: FLdRfVar var_D4
  loc_C14421: LitVarStr var_D0, "CodiOrga"
  loc_C14426: PopAdLdVar
  loc_C14427: FLdRfVar var_C0
  loc_C1442A: FLdRfVar var_BC
  loc_C1442D: FLdPr Me
  loc_C14430: MemLdRfVar from_stack_1.global_60
  loc_C14433: NewIfNullPr clsbase
  loc_C14436: from_stack_1v = clsbase.RsFrmGet()
  loc_C1443B: FLdPr var_BC
  loc_C1443E:  = Me.Fields
  loc_C14443: FLdPr var_C0
  loc_C14446: from_stack_2 = Me.Item(from_stack_1)
  loc_C1444B: FLdPr var_D4
  loc_C1444E:  = Me.Value
  loc_C14453: FLdRfVar var_124
  loc_C14456: FLdRfVar var_144
  loc_C14459: LitVarStr var_F4, "CodiUnga"
  loc_C1445E: PopAdLdVar
  loc_C1445F: FLdRfVar var_140
  loc_C14462: FLdRfVar var_13C
  loc_C14465: FLdPr Me
  loc_C14468: MemLdRfVar from_stack_1.global_60
  loc_C1446B: NewIfNullPr clsbase
  loc_C1446E: from_stack_1v = clsbase.RsFrmGet()
  loc_C14473: FLdPr var_13C
  loc_C14476:  = Me.Fields
  loc_C1447B: FLdPr var_140
  loc_C1447E: from_stack_2 = Me.Item(from_stack_1)
  loc_C14483: FLdPr var_144
  loc_C14486:  = Me.Value
  loc_C1448B: FLdRfVar var_134
  loc_C1448E: FLdRfVar var_150
  loc_C14491: LitVarStr var_114, "CodiInsu"
  loc_C14496: PopAdLdVar
  loc_C14497: FLdRfVar var_14C
  loc_C1449A: FLdRfVar var_148
  loc_C1449D: FLdPr Me
  loc_C144A0: MemLdRfVar from_stack_1.global_60
  loc_C144A3: NewIfNullPr clsbase
  loc_C144A6: from_stack_1v = clsbase.RsFrmGet()
  loc_C144AB: FLdPr var_148
  loc_C144AE:  = Me.Fields
  loc_C144B3: FLdPr var_14C
  loc_C144B6: from_stack_2 = Me.Item(from_stack_1)
  loc_C144BB: FLdPr var_150
  loc_C144BE:  = Me.Value
  loc_C144C3: FLdRfVar var_208
  loc_C144C6: FLdRfVar var_15C
  loc_C144C9: LitVarStr var_16C, "CodiFifu"
  loc_C144CE: PopAdLdVar
  loc_C144CF: FLdRfVar var_158
  loc_C144D2: FLdRfVar var_154
  loc_C144D5: FLdPr Me
  loc_C144D8: MemLdRfVar from_stack_1.global_60
  loc_C144DB: NewIfNullPr clsbase
  loc_C144DE: from_stack_1v = clsbase.RsFrmGet()
  loc_C144E3: FLdPr var_154
  loc_C144E6:  = Me.Fields
  loc_C144EB: FLdPr var_158
  loc_C144EE: from_stack_2 = Me.Item(from_stack_1)
  loc_C144F3: FLdPr var_15C
  loc_C144F6:  = Me.Value
  loc_C144FB: FLdPr Me
  loc_C144FE: VCallAd Control_ID_FechOrcoMsk
  loc_C14501: FStAdFunc var_170
  loc_C14504: FLdPr var_170
  loc_C14507: LateIdLdVar var_B8 DispID_15 0
  loc_C1450E: PopAd
  loc_C14510: FLdRfVar var_238
  loc_C14513: FLdRfVar var_18C
  loc_C14516: LitVarStr var_188, "ExpeImpu"
  loc_C1451B: PopAdLdVar
  loc_C1451C: FLdRfVar var_178
  loc_C1451F: FLdRfVar var_174
  loc_C14522: FLdPr Me
  loc_C14525: MemLdRfVar from_stack_1.global_60
  loc_C14528: NewIfNullPr clsbase
  loc_C1452B: from_stack_1v = clsbase.RsFrmGet()
  loc_C14530: FLdPr var_174
  loc_C14533:  = Me.Fields
  loc_C14538: FLdPr var_178
  loc_C1453B: from_stack_2 = Me.Item(from_stack_1)
  loc_C14540: FLdPr var_18C
  loc_C14543:  = Me.Value
  loc_C14548: FLdRfVar var_248
  loc_C1454B: FLdRfVar var_3DC
  loc_C1454E: LitVarStr var_1B8, "CantItco"
  loc_C14553: PopAdLdVar
  loc_C14554: FLdRfVar var_3CC
  loc_C14557: FLdRfVar var_190
  loc_C1455A: FLdPr Me
  loc_C1455D: MemLdRfVar from_stack_1.global_60
  loc_C14560: NewIfNullPr clsbase
  loc_C14563: from_stack_1v = clsbase.RsFrmGet()
  loc_C14568: FLdPr var_190
  loc_C1456B:  = Me.Fields
  loc_C14570: FLdPr var_3CC
  loc_C14573: from_stack_2 = Me.Item(from_stack_1)
  loc_C14578: FLdPr var_3DC
  loc_C1457B:  = Me.Value
  loc_C14580: FLdRfVar var_2A8
  loc_C14583: FLdRfVar var_40C
  loc_C14586: LitVarStr var_1C8, "ImunItco"
  loc_C1458B: PopAdLdVar
  loc_C1458C: FLdRfVar var_408
  loc_C1458F: FLdRfVar var_404
  loc_C14592: FLdPr Me
  loc_C14595: MemLdRfVar from_stack_1.global_60
  loc_C14598: NewIfNullPr clsbase
  loc_C1459B: from_stack_1v = clsbase.RsFrmGet()
  loc_C145A0: FLdPr var_404
  loc_C145A3:  = Me.Fields
  loc_C145A8: FLdPr var_408
  loc_C145AB: from_stack_2 = Me.Item(from_stack_1)
  loc_C145B0: FLdPr var_40C
  loc_C145B3:  = Me.Value
  loc_C145B8: FLdRfVar var_2C8
  loc_C145BB: FLdRfVar var_418
  loc_C145BE: LitVarStr var_1D8, "DetaItco"
  loc_C145C3: PopAdLdVar
  loc_C145C4: FLdRfVar var_414
  loc_C145C7: FLdRfVar var_410
  loc_C145CA: FLdPr Me
  loc_C145CD: MemLdRfVar from_stack_1.global_60
  loc_C145D0: NewIfNullPr clsbase
  loc_C145D3: from_stack_1v = clsbase.RsFrmGet()
  loc_C145D8: FLdPr var_410
  loc_C145DB:  = Me.Fields
  loc_C145E0: FLdPr var_414
  loc_C145E3: from_stack_2 = Me.Item(from_stack_1)
  loc_C145E8: FLdPr var_418
  loc_C145EB:  = Me.Value
  loc_C145F0: FLdRfVar var_2D8
  loc_C145F3: FLdRfVar var_424
  loc_C145F6: LitVarStr var_1E8, "CodiNope"
  loc_C145FB: PopAdLdVar
  loc_C145FC: FLdRfVar var_420
  loc_C145FF: FLdRfVar var_41C
  loc_C14602: FLdPr Me
  loc_C14605: MemLdRfVar from_stack_1.global_60
  loc_C14608: NewIfNullPr clsbase
  loc_C1460B: from_stack_1v = clsbase.RsFrmGet()
  loc_C14610: FLdPr var_41C
  loc_C14613:  = Me.Fields
  loc_C14618: FLdPr var_420
  loc_C1461B: from_stack_2 = Me.Item(from_stack_1)
  loc_C14620: FLdPr var_424
  loc_C14623:  = Me.Value
  loc_C14628: FLdRfVar var_308
  loc_C1462B: FLdRfVar var_430
  loc_C1462E: LitVarStr var_1F8, "CodiOrco"
  loc_C14633: PopAdLdVar
  loc_C14634: FLdRfVar var_42C
  loc_C14637: FLdRfVar var_428
  loc_C1463A: FLdPr Me
  loc_C1463D: MemLdRfVar from_stack_1.global_60
  loc_C14640: NewIfNullPr clsbase
  loc_C14643: from_stack_1v = clsbase.RsFrmGet()
  loc_C14648: FLdPr var_428
  loc_C1464B:  = Me.Fields
  loc_C14650: FLdPr var_42C
  loc_C14653: from_stack_2 = Me.Item(from_stack_1)
  loc_C14658: FLdPr var_430
  loc_C1465B:  = Me.Value
  loc_C14660: FLdRfVar var_318
  loc_C14663: FLdRfVar var_43C
  loc_C14666: LitVarStr var_218, "CodiItco"
  loc_C1466B: PopAdLdVar
  loc_C1466C: FLdRfVar var_438
  loc_C1466F: FLdRfVar var_434
  loc_C14672: FLdPr Me
  loc_C14675: MemLdRfVar from_stack_1.global_60
  loc_C14678: NewIfNullPr clsbase
  loc_C1467B: from_stack_1v = clsbase.RsFrmGet()
  loc_C14680: FLdPr var_434
  loc_C14683:  = Me.Fields
  loc_C14688: FLdPr var_438
  loc_C1468B: from_stack_2 = Me.Item(from_stack_1)
  loc_C14690: FLdPr var_43C
  loc_C14693:  = Me.Value
  loc_C14698: FLdRfVar var_348
  loc_C1469B: FLdRfVar var_448
  loc_C1469E: LitVarStr var_228, "AlteItco"
  loc_C146A3: PopAdLdVar
  loc_C146A4: FLdRfVar var_444
  loc_C146A7: FLdRfVar var_440
  loc_C146AA: FLdPr Me
  loc_C146AD: MemLdRfVar from_stack_1.global_60
  loc_C146B0: NewIfNullPr clsbase
  loc_C146B3: from_stack_1v = clsbase.RsFrmGet()
  loc_C146B8: FLdPr var_440
  loc_C146BB:  = Me.Fields
  loc_C146C0: FLdPr var_444
  loc_C146C3: from_stack_2 = Me.Item(from_stack_1)
  loc_C146C8: FLdPr var_448
  loc_C146CB:  = Me.Value
  loc_C146D0: FLdRfVar var_358
  loc_C146D3: FLdRfVar var_454
  loc_C146D6: LitVarStr var_288, "CucuPers"
  loc_C146DB: PopAdLdVar
  loc_C146DC: FLdRfVar var_450
  loc_C146DF: FLdRfVar var_44C
  loc_C146E2: FLdPr Me
  loc_C146E5: MemLdRfVar from_stack_1.global_60
  loc_C146E8: NewIfNullPr clsbase
  loc_C146EB: from_stack_1v = clsbase.RsFrmGet()
  loc_C146F0: FLdPr var_44C
  loc_C146F3:  = Me.Fields
  loc_C146F8: FLdPr var_450
  loc_C146FB: from_stack_2 = Me.Item(from_stack_1)
  loc_C14700: FLdPr var_454
  loc_C14703:  = Me.Value
  loc_C14708: FLdRfVar var_3D8
  loc_C1470B: LitI2_Byte 0
  loc_C1470D: LitI2_Byte 0
  loc_C1470F: LitI2_Byte 0
  loc_C14711: LitI4 0
  loc_C14716: FLdRfVar var_358
  loc_C14719: CStrVarTmp
  loc_C1471A: FStStrNoPop var_3D4
  loc_C1471D: FLdRfVar var_348
  loc_C14720: CUI1Var
  loc_C14722: FLdRfVar var_318
  loc_C14725: CI2Var
  loc_C14726: FLdRfVar var_308
  loc_C14729: CI4Var
  loc_C1472B: FLdRfVar var_2D8
  loc_C1472E: CI4Var
  loc_C14730: FLdRfVar var_2C8
  loc_C14733: CStrVarTmp
  loc_C14734: FStStrNoPop var_3D0
  loc_C14737: FLdR8 var_3E4
  loc_C1473A: FLdRfVar var_2A8
  loc_C1473D: CR4Var
  loc_C1473E: PopFPR8
  loc_C1473F: FLdRfVar var_248
  loc_C14742: CR4Var
  loc_C14743: PopFPR8
  loc_C14744: FLdRfVar var_238
  loc_C14747: CStrVarTmp
  loc_C14748: FStStrNoPop var_3C8
  loc_C1474B: FLdRfVar var_B8
  loc_C1474E: CStrVarTmp
  loc_C1474F: FStStrNoPop var_3C4
  loc_C14752: FLdRfVar var_208
  loc_C14755: CStrVarTmp
  loc_C14756: FStStrNoPop var_3B0
  loc_C14759: FLdRfVar var_134
  loc_C1475C: CI4Var
  loc_C1475E: FLdRfVar var_124
  loc_C14761: CI2Var
  loc_C14762: FLdRfVar var_104
  loc_C14765: CStrVarTmp
  loc_C14766: FStStrNoPop var_39C
  loc_C14769: FLdRfVar var_E4
  loc_C1476C: CStrVarTmp
  loc_C1476D: FStStrNoPop var_138
  loc_C14770: FLdPr Me
  loc_C14773: MemLdRfVar from_stack_1.global_64
  loc_C14776: NewIfNullPr clsimputacion
  loc_C14779: from_stack_16v = clsimputacion.AddNewDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C1477E: ILdRf var_3D8
  loc_C14781: FLdPr Me
  loc_C14784: MemStI4 global_96
  loc_C14787: FFreeStr var_138 = "": var_39C = "": var_3B0 = "": var_3C4 = "": var_3C8 = "": var_3D0 = ""
  loc_C14798: FFreeAd var_D4 = "": var_144 = "": var_150 = "": var_15C = "": var_18C = "": var_3DC = "": var_40C = "": var_418 = "": var_424 = "": var_430 = "": var_43C = "": var_448 = "": var_454 = "": var_90 = "": var_94 = "": var_BC = "": var_C0 = "": var_13C = "": var_140 = "": var_148 = "": var_14C = "": var_154 = "": var_158 = "": var_170 = "": var_174 = "": var_178 = "": var_190 = "": var_3CC = "": var_404 = "": var_408 = "": var_410 = "": var_414 = "": var_41C = "": var_420 = "": var_428 = "": var_42C = "": var_434 = "": var_438 = "": var_440 = "": var_444 = "": var_44C = "": var_450 = ""
  loc_C147F1: FFreeVar var_B8 = "": var_E4 = "": var_104 = "": var_124 = "": var_134 = "": var_208 = "": var_238 = "": var_248 = "": var_2A8 = "": var_2C8 = "": var_2D8 = "": var_308 = "": var_318 = "": var_348 = ""
  loc_C14812: FLdPr Me
  loc_C14815: MemLdStr global_96
  loc_C14818: LitI4 0
  loc_C1481D: EqI4
  loc_C1481E: BranchF loc_C1482E
  loc_C14821: LitI4 0
  loc_C14826: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C14829: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C1482E: Branch loc_C14C7C
  loc_C14831: FLdRfVar var_E4
  loc_C14834: FLdRfVar var_A8
  loc_C14837: LitVarStr var_A4, "CodiPart"
  loc_C1483C: PopAdLdVar
  loc_C1483D: FLdRfVar var_94
  loc_C14840: FLdRfVar var_90
  loc_C14843: FLdPr Me
  loc_C14846: MemLdRfVar from_stack_1.global_60
  loc_C14849: NewIfNullPr clsbase
  loc_C1484C: from_stack_1v = clsbase.RsFrmGet()
  loc_C14851: FLdPr var_90
  loc_C14854:  = Me.Fields
  loc_C14859: FLdPr var_94
  loc_C1485C: from_stack_2 = Me.Item(from_stack_1)
  loc_C14861: FLdPr var_A8
  loc_C14864:  = Me.Value
  loc_C14869: FLdRfVar var_104
  loc_C1486C: FLdRfVar var_D4
  loc_C1486F: LitVarStr var_D0, "CodiOrga"
  loc_C14874: PopAdLdVar
  loc_C14875: FLdRfVar var_C0
  loc_C14878: FLdRfVar var_BC
  loc_C1487B: FLdPr Me
  loc_C1487E: MemLdRfVar from_stack_1.global_60
  loc_C14881: NewIfNullPr clsbase
  loc_C14884: from_stack_1v = clsbase.RsFrmGet()
  loc_C14889: FLdPr var_BC
  loc_C1488C:  = Me.Fields
  loc_C14891: FLdPr var_C0
  loc_C14894: from_stack_2 = Me.Item(from_stack_1)
  loc_C14899: FLdPr var_D4
  loc_C1489C:  = Me.Value
  loc_C148A1: FLdRfVar var_124
  loc_C148A4: FLdRfVar var_144
  loc_C148A7: LitVarStr var_F4, "CodiUnga"
  loc_C148AC: PopAdLdVar
  loc_C148AD: FLdRfVar var_140
  loc_C148B0: FLdRfVar var_13C
  loc_C148B3: FLdPr Me
  loc_C148B6: MemLdRfVar from_stack_1.global_60
  loc_C148B9: NewIfNullPr clsbase
  loc_C148BC: from_stack_1v = clsbase.RsFrmGet()
  loc_C148C1: FLdPr var_13C
  loc_C148C4:  = Me.Fields
  loc_C148C9: FLdPr var_140
  loc_C148CC: from_stack_2 = Me.Item(from_stack_1)
  loc_C148D1: FLdPr var_144
  loc_C148D4:  = Me.Value
  loc_C148D9: FLdRfVar var_134
  loc_C148DC: FLdRfVar var_150
  loc_C148DF: LitVarStr var_114, "CodiInsu"
  loc_C148E4: PopAdLdVar
  loc_C148E5: FLdRfVar var_14C
  loc_C148E8: FLdRfVar var_148
  loc_C148EB: FLdPr Me
  loc_C148EE: MemLdRfVar from_stack_1.global_60
  loc_C148F1: NewIfNullPr clsbase
  loc_C148F4: from_stack_1v = clsbase.RsFrmGet()
  loc_C148F9: FLdPr var_148
  loc_C148FC:  = Me.Fields
  loc_C14901: FLdPr var_14C
  loc_C14904: from_stack_2 = Me.Item(from_stack_1)
  loc_C14909: FLdPr var_150
  loc_C1490C:  = Me.Value
  loc_C14911: FLdRfVar var_208
  loc_C14914: FLdRfVar var_15C
  loc_C14917: LitVarStr var_16C, "CodiFifu"
  loc_C1491C: PopAdLdVar
  loc_C1491D: FLdRfVar var_158
  loc_C14920: FLdRfVar var_154
  loc_C14923: FLdPr Me
  loc_C14926: MemLdRfVar from_stack_1.global_60
  loc_C14929: NewIfNullPr clsbase
  loc_C1492C: from_stack_1v = clsbase.RsFrmGet()
  loc_C14931: FLdPr var_154
  loc_C14934:  = Me.Fields
  loc_C14939: FLdPr var_158
  loc_C1493C: from_stack_2 = Me.Item(from_stack_1)
  loc_C14941: FLdPr var_15C
  loc_C14944:  = Me.Value
  loc_C14949: FLdPr Me
  loc_C1494C: VCallAd Control_ID_FechOrcoMsk
  loc_C1494F: FStAdFunc var_170
  loc_C14952: FLdPr var_170
  loc_C14955: LateIdLdVar var_B8 DispID_15 0
  loc_C1495C: PopAd
  loc_C1495E: FLdRfVar var_238
  loc_C14961: FLdRfVar var_18C
  loc_C14964: LitVarStr var_188, "ExpeImpu"
  loc_C14969: PopAdLdVar
  loc_C1496A: FLdRfVar var_178
  loc_C1496D: FLdRfVar var_174
  loc_C14970: FLdPr Me
  loc_C14973: MemLdRfVar from_stack_1.global_60
  loc_C14976: NewIfNullPr clsbase
  loc_C14979: from_stack_1v = clsbase.RsFrmGet()
  loc_C1497E: FLdPr var_174
  loc_C14981:  = Me.Fields
  loc_C14986: FLdPr var_178
  loc_C14989: from_stack_2 = Me.Item(from_stack_1)
  loc_C1498E: FLdPr var_18C
  loc_C14991:  = Me.Value
  loc_C14996: FLdRfVar var_248
  loc_C14999: FLdRfVar var_3DC
  loc_C1499C: LitVarStr var_1B8, "CantItco"
  loc_C149A1: PopAdLdVar
  loc_C149A2: FLdRfVar var_3CC
  loc_C149A5: FLdRfVar var_190
  loc_C149A8: FLdPr Me
  loc_C149AB: MemLdRfVar from_stack_1.global_60
  loc_C149AE: NewIfNullPr clsbase
  loc_C149B1: from_stack_1v = clsbase.RsFrmGet()
  loc_C149B6: FLdPr var_190
  loc_C149B9:  = Me.Fields
  loc_C149BE: FLdPr var_3CC
  loc_C149C1: from_stack_2 = Me.Item(from_stack_1)
  loc_C149C6: FLdPr var_3DC
  loc_C149C9:  = Me.Value
  loc_C149CE: FLdRfVar var_2A8
  loc_C149D1: FLdRfVar var_40C
  loc_C149D4: LitVarStr var_1C8, "ImunItco"
  loc_C149D9: PopAdLdVar
  loc_C149DA: FLdRfVar var_408
  loc_C149DD: FLdRfVar var_404
  loc_C149E0: FLdPr Me
  loc_C149E3: MemLdRfVar from_stack_1.global_60
  loc_C149E6: NewIfNullPr clsbase
  loc_C149E9: from_stack_1v = clsbase.RsFrmGet()
  loc_C149EE: FLdPr var_404
  loc_C149F1:  = Me.Fields
  loc_C149F6: FLdPr var_408
  loc_C149F9: from_stack_2 = Me.Item(from_stack_1)
  loc_C149FE: FLdPr var_40C
  loc_C14A01:  = Me.Value
  loc_C14A06: FLdRfVar var_2C8
  loc_C14A09: FLdRfVar var_418
  loc_C14A0C: LitVarStr var_1D8, "DetaItco"
  loc_C14A11: PopAdLdVar
  loc_C14A12: FLdRfVar var_414
  loc_C14A15: FLdRfVar var_410
  loc_C14A18: FLdPr Me
  loc_C14A1B: MemLdRfVar from_stack_1.global_60
  loc_C14A1E: NewIfNullPr clsbase
  loc_C14A21: from_stack_1v = clsbase.RsFrmGet()
  loc_C14A26: FLdPr var_410
  loc_C14A29:  = Me.Fields
  loc_C14A2E: FLdPr var_414
  loc_C14A31: from_stack_2 = Me.Item(from_stack_1)
  loc_C14A36: FLdPr var_418
  loc_C14A39:  = Me.Value
  loc_C14A3E: FLdRfVar var_2D8
  loc_C14A41: FLdRfVar var_424
  loc_C14A44: LitVarStr var_1E8, "CodiNope"
  loc_C14A49: PopAdLdVar
  loc_C14A4A: FLdRfVar var_420
  loc_C14A4D: FLdRfVar var_41C
  loc_C14A50: FLdPr Me
  loc_C14A53: MemLdRfVar from_stack_1.global_60
  loc_C14A56: NewIfNullPr clsbase
  loc_C14A59: from_stack_1v = clsbase.RsFrmGet()
  loc_C14A5E: FLdPr var_41C
  loc_C14A61:  = Me.Fields
  loc_C14A66: FLdPr var_420
  loc_C14A69: from_stack_2 = Me.Item(from_stack_1)
  loc_C14A6E: FLdPr var_424
  loc_C14A71:  = Me.Value
  loc_C14A76: FLdRfVar var_308
  loc_C14A79: FLdRfVar var_430
  loc_C14A7C: LitVarStr var_1F8, "CodiOrco"
  loc_C14A81: PopAdLdVar
  loc_C14A82: FLdRfVar var_42C
  loc_C14A85: FLdRfVar var_428
  loc_C14A88: FLdPr Me
  loc_C14A8B: MemLdRfVar from_stack_1.global_60
  loc_C14A8E: NewIfNullPr clsbase
  loc_C14A91: from_stack_1v = clsbase.RsFrmGet()
  loc_C14A96: FLdPr var_428
  loc_C14A99:  = Me.Fields
  loc_C14A9E: FLdPr var_42C
  loc_C14AA1: from_stack_2 = Me.Item(from_stack_1)
  loc_C14AA6: FLdPr var_430
  loc_C14AA9:  = Me.Value
  loc_C14AAE: FLdRfVar var_318
  loc_C14AB1: FLdRfVar var_43C
  loc_C14AB4: LitVarStr var_218, "CodiItco"
  loc_C14AB9: PopAdLdVar
  loc_C14ABA: FLdRfVar var_438
  loc_C14ABD: FLdRfVar var_434
  loc_C14AC0: FLdPr Me
  loc_C14AC3: MemLdRfVar from_stack_1.global_60
  loc_C14AC6: NewIfNullPr clsbase
  loc_C14AC9: from_stack_1v = clsbase.RsFrmGet()
  loc_C14ACE: FLdPr var_434
  loc_C14AD1:  = Me.Fields
  loc_C14AD6: FLdPr var_438
  loc_C14AD9: from_stack_2 = Me.Item(from_stack_1)
  loc_C14ADE: FLdPr var_43C
  loc_C14AE1:  = Me.Value
  loc_C14AE6: FLdRfVar var_348
  loc_C14AE9: FLdRfVar var_448
  loc_C14AEC: LitVarStr var_228, "AlteItco"
  loc_C14AF1: PopAdLdVar
  loc_C14AF2: FLdRfVar var_444
  loc_C14AF5: FLdRfVar var_440
  loc_C14AF8: FLdPr Me
  loc_C14AFB: MemLdRfVar from_stack_1.global_60
  loc_C14AFE: NewIfNullPr clsbase
  loc_C14B01: from_stack_1v = clsbase.RsFrmGet()
  loc_C14B06: FLdPr var_440
  loc_C14B09:  = Me.Fields
  loc_C14B0E: FLdPr var_444
  loc_C14B11: from_stack_2 = Me.Item(from_stack_1)
  loc_C14B16: FLdPr var_448
  loc_C14B19:  = Me.Value
  loc_C14B1E: FLdRfVar var_358
  loc_C14B21: FLdRfVar var_454
  loc_C14B24: LitVarStr var_288, "CucuPers"
  loc_C14B29: PopAdLdVar
  loc_C14B2A: FLdRfVar var_450
  loc_C14B2D: FLdRfVar var_44C
  loc_C14B30: FLdPr Me
  loc_C14B33: MemLdRfVar from_stack_1.global_60
  loc_C14B36: NewIfNullPr clsbase
  loc_C14B39: from_stack_1v = clsbase.RsFrmGet()
  loc_C14B3E: FLdPr var_44C
  loc_C14B41:  = Me.Fields
  loc_C14B46: FLdPr var_450
  loc_C14B49: from_stack_2 = Me.Item(from_stack_1)
  loc_C14B4E: FLdPr var_454
  loc_C14B51:  = Me.Value
  loc_C14B56: FLdRfVar var_3D8
  loc_C14B59: LitI2_Byte 0
  loc_C14B5B: LitI2_Byte 0
  loc_C14B5D: LitI2_Byte 0
  loc_C14B5F: LitI4 0
  loc_C14B64: FLdRfVar var_358
  loc_C14B67: CStrVarTmp
  loc_C14B68: FStStrNoPop var_3D4
  loc_C14B6B: FLdRfVar var_348
  loc_C14B6E: CUI1Var
  loc_C14B70: FLdRfVar var_318
  loc_C14B73: CI2Var
  loc_C14B74: FLdRfVar var_308
  loc_C14B77: CI4Var
  loc_C14B79: FLdRfVar var_2D8
  loc_C14B7C: CI4Var
  loc_C14B7E: FLdRfVar var_2C8
  loc_C14B81: CStrVarTmp
  loc_C14B82: FStStrNoPop var_3D0
  loc_C14B85: FLdR8 var_3E4
  loc_C14B88: FLdRfVar var_2A8
  loc_C14B8B: CR4Var
  loc_C14B8C: PopFPR8
  loc_C14B8D: FLdRfVar var_248
  loc_C14B90: CR4Var
  loc_C14B91: PopFPR8
  loc_C14B92: FLdRfVar var_238
  loc_C14B95: CStrVarTmp
  loc_C14B96: FStStrNoPop var_3C8
  loc_C14B99: FLdRfVar var_B8
  loc_C14B9C: CStrVarTmp
  loc_C14B9D: FStStrNoPop var_3C4
  loc_C14BA0: FLdRfVar var_208
  loc_C14BA3: CStrVarTmp
  loc_C14BA4: FStStrNoPop var_3B0
  loc_C14BA7: FLdRfVar var_134
  loc_C14BAA: CI4Var
  loc_C14BAC: FLdRfVar var_124
  loc_C14BAF: CI2Var
  loc_C14BB0: FLdRfVar var_104
  loc_C14BB3: CStrVarTmp
  loc_C14BB4: FStStrNoPop var_39C
  loc_C14BB7: FLdRfVar var_E4
  loc_C14BBA: CStrVarTmp
  loc_C14BBB: FStStrNoPop var_138
  loc_C14BBE: FLdPr Me
  loc_C14BC1: MemLdRfVar from_stack_1.global_64
  loc_C14BC4: NewIfNullPr clsimputacion
  loc_C14BC7: from_stack_16v = clsimputacion.AddNewDefinitiva(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v, from_stack_10v, from_stack_11v, from_stack_12v, from_stack_13v, from_stack_14v, from_stack_15v)
  loc_C14BCC: ILdRf var_3D8
  loc_C14BCF: FLdPr Me
  loc_C14BD2: MemStI4 global_96
  loc_C14BD5: FFreeStr var_138 = "": var_39C = "": var_3B0 = "": var_3C4 = "": var_3C8 = "": var_3D0 = ""
  loc_C14BE6: FFreeAd var_D4 = "": var_144 = "": var_150 = "": var_15C = "": var_18C = "": var_3DC = "": var_40C = "": var_418 = "": var_424 = "": var_430 = "": var_43C = "": var_448 = "": var_454 = "": var_90 = "": var_94 = "": var_BC = "": var_C0 = "": var_13C = "": var_140 = "": var_148 = "": var_14C = "": var_154 = "": var_158 = "": var_170 = "": var_174 = "": var_178 = "": var_190 = "": var_3CC = "": var_404 = "": var_408 = "": var_410 = "": var_414 = "": var_41C = "": var_420 = "": var_428 = "": var_42C = "": var_434 = "": var_438 = "": var_440 = "": var_444 = "": var_44C = "": var_450 = ""
  loc_C14C3F: FFreeVar var_B8 = "": var_E4 = "": var_104 = "": var_124 = "": var_134 = "": var_208 = "": var_238 = "": var_248 = "": var_2A8 = "": var_2C8 = "": var_2D8 = "": var_308 = "": var_318 = "": var_348 = ""
  loc_C14C60: FLdPr Me
  loc_C14C63: MemLdStr global_96
  loc_C14C66: LitI4 0
  loc_C14C6B: EqI4
  loc_C14C6C: BranchF loc_C14C7C
  loc_C14C6F: LitI4 0
  loc_C14C74: LitStr "La Transacción NO se ejecutó. Consulte con el Administrador de Sistema..."
  loc_C14C77: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_C14C7C: FLdPr Me
  loc_C14C7F: MemLdRfVar from_stack_1.global_60
  loc_C14C82: NewIfNullPr clsbase
  loc_C14C85: Call clsbase.MoveSiguiente()
  loc_C14C8A: Branch loc_C12F14
  loc_C14C8D: LitI2_Byte &HFF
  loc_C14C8F: PopTmpLdAd2 var_3F0
  loc_C14C92: LitI2_Byte 0
  loc_C14C94: PopTmpLdAd2 var_3EE
  loc_C14C97: LitStr "¿Imprime el Volante de Imputaciones?"
  loc_C14C9A: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C14C9F: CI4UI1
  loc_C14CA0: LitI4 6
  loc_C14CA5: EqI4
  loc_C14CA6: BranchF loc_C14D4B
  loc_C14CA9: ImpAdLdRf MemVar_C3D9BC
  loc_C14CAC: NewIfNullAd
  loc_C14CAF: FStAdNoPop
  loc_C14CB3: ImpAdLdRf MemVar_C44F9C
  loc_C14CB6: NewIfNullPr Me
  loc_C14CB9: Me.Global.Load from_stack_1
  loc_C14CBE: FFree1Ad var_90
  loc_C14CC1: FLdPr Me
  loc_C14CC4: MemLdRfVar from_stack_1.global_60
  loc_C14CC7: NewIfNullPr clsbase
  loc_C14CCA: Call clsbase.MoveFirst()
  loc_C14CCF: FLdRfVar var_B8
  loc_C14CD2: FLdRfVar var_A8
  loc_C14CD5: LitVarStr var_A4, "ExpeImpu"
  loc_C14CDA: PopAdLdVar
  loc_C14CDB: FLdRfVar var_94
  loc_C14CDE: FLdRfVar var_90
  loc_C14CE1: FLdPr Me
  loc_C14CE4: MemLdRfVar from_stack_1.global_60
  loc_C14CE7: NewIfNullPr clsbase
  loc_C14CEA: from_stack_1v = clsbase.RsFrmGet()
  loc_C14CEF: FLdPr var_90
  loc_C14CF2:  = Me.Fields
  loc_C14CF7: FLdPr var_94
  loc_C14CFA: from_stack_2 = Me.Item(from_stack_1)
  loc_C14CFF: FLdPr var_A8
  loc_C14D02:  = Me.Value
  loc_C14D07: FLdRfVar var_B8
  loc_C14D0A: CStrVarTmp
  loc_C14D0B: FStStrNoPop var_138
  loc_C14D0E: ImpAdLdRf MemVar_C3D9BC
  loc_C14D11: NewIfNullPr rptVolantedeImputaciones
  loc_C14D14: VCallAd Control_ID_cboExorImpu
  loc_C14D17: FStAdFunc var_BC
  loc_C14D1A: FLdPr var_BC
  loc_C14D1D: rptVolantedeImputaciones.ComboBox.Text = from_stack_1
  loc_C14D22: FFree1Str var_138
  loc_C14D25: FFreeAd var_90 = "": var_94 = "": var_A8 = ""
  loc_C14D30: FFree1Var var_B8 = ""
  loc_C14D33: LitVar_Missing var_D0
  loc_C14D36: PopAdLdVar
  loc_C14D37: LitVarI4
  loc_C14D3F: PopAdLdVar
  loc_C14D40: ImpAdLdRf MemVar_C3D9BC
  loc_C14D43: NewIfNullPr rptVolantedeImputaciones
  loc_C14D46: rptVolantedeImputaciones.Show from_stack_1, from_stack_2
  loc_C14D4B: LitI2_Byte &HFF
  loc_C14D4D: PopTmpLdAd2 var_3F0
  loc_C14D50: LitI2_Byte 0
  loc_C14D52: PopTmpLdAd2 var_3EE
  loc_C14D55: LitStr "Desea imprimir la Orden de Compra número "
  loc_C14D58: ILdRf var_88
  loc_C14D5B: CStrI4
  loc_C14D5D: FStStrNoPop var_138
  loc_C14D60: ConcatStr
  loc_C14D61: FStStrNoPop var_39C
  loc_C14D64: LitStr vbCrLf
  loc_C14D67: ConcatStr
  loc_C14D68: FStStrNoPop var_3B0
  loc_C14D6B: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C14D70: CI4UI1
  loc_C14D71: LitI4 6
  loc_C14D76: EqI4
  loc_C14D77: FFreeStr var_138 = "": var_39C = ""
  loc_C14D80: BranchF loc_C14DD1
  loc_C14D83: ImpAdLdRf MemVar_C3DCB4
  loc_C14D86: NewIfNullAd
  loc_C14D89: CastAd
  loc_C14D8C: FStAdFuncNoPop
  loc_C14D8F: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_C14D94: FFree1Ad var_90
  loc_C14D97: ILdRf var_88
  loc_C14D9A: CStrI4
  loc_C14D9C: FStStrNoPop var_138
  loc_C14D9F: ImpAdLdRf MemVar_C3DCB4
  loc_C14DA2: NewIfNullPr rptOrdendeCompra
  loc_C14DA5: VCallAd Control_ID_CodiOrcoTxt
  loc_C14DA8: FStAdFunc var_90
  loc_C14DAB: FLdPr var_90
  loc_C14DAE: rptOrdendeCompra.TextBox.Text = from_stack_1
  loc_C14DB3: FFree1Str var_138
  loc_C14DB6: FFree1Ad var_90
  loc_C14DB9: LitVar_Missing var_D0
  loc_C14DBC: PopAdLdVar
  loc_C14DBD: LitVarI4
  loc_C14DC5: PopAdLdVar
  loc_C14DC6: ImpAdLdRf MemVar_C3DCB4
  loc_C14DC9: NewIfNullPr rptOrdendeCompra
  loc_C14DCC: rptOrdendeCompra.Show from_stack_1, from_stack_2
  loc_C14DD1: Branch loc_C14E63
  loc_C14DD4: LitI2_Byte &HFF
  loc_C14DD6: PopTmpLdAd2 var_3F0
  loc_C14DD9: LitI2_Byte 0
  loc_C14DDB: PopTmpLdAd2 var_3EE
  loc_C14DDE: LitStr "Se Generó la Orden de Compra número "
  loc_C14DE1: ILdRf var_88
  loc_C14DE4: CStrI4
  loc_C14DE6: FStStrNoPop var_138
  loc_C14DE9: ConcatStr
  loc_C14DEA: FStStrNoPop var_39C
  loc_C14DED: LitStr vbCrLf
  loc_C14DF0: ConcatStr
  loc_C14DF1: FStStrNoPop var_3B0
  loc_C14DF4: LitStr " ¿Desea Imprimirla?"
  loc_C14DF7: ConcatStr
  loc_C14DF8: FStStrNoPop var_3C4
  loc_C14DFB: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_C14E00: CI4UI1
  loc_C14E01: LitI4 6
  loc_C14E06: EqI4
  loc_C14E07: FFreeStr var_138 = "": var_39C = "": var_3B0 = ""
  loc_C14E12: BranchF loc_C14E63
  loc_C14E15: ImpAdLdRf MemVar_C3DC8C
  loc_C14E18: NewIfNullAd
  loc_C14E1B: CastAd
  loc_C14E1E: FStAdFuncNoPop
  loc_C14E21: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_C14E26: FFree1Ad var_90
  loc_C14E29: ILdRf var_88
  loc_C14E2C: CStrI4
  loc_C14E2E: FStStrNoPop var_138
  loc_C14E31: ImpAdLdRf MemVar_C3DC8C
  loc_C14E34: NewIfNullPr rptOrdendeCompraInterno
  loc_C14E37: VCallAd Control_ID_CodiOrcoTxt
  loc_C14E3A: FStAdFunc var_90
  loc_C14E3D: FLdPr var_90
  loc_C14E40: rptOrdendeCompraInterno.TextBox.Text = from_stack_1
  loc_C14E45: FFree1Str var_138
  loc_C14E48: FFree1Ad var_90
  loc_C14E4B: LitVar_Missing var_D0
  loc_C14E4E: PopAdLdVar
  loc_C14E4F: LitVarI4
  loc_C14E57: PopAdLdVar
  loc_C14E58: ImpAdLdRf MemVar_C3DC8C
  loc_C14E5B: NewIfNullPr rptOrdendeCompraInterno
  loc_C14E5E: rptOrdendeCompraInterno.Show from_stack_1, from_stack_2
  loc_C14E63: LitI2_Byte 0
  loc_C14E65: ImpAdLdI2 MemVar_C3D064
  loc_C14E68: LitI2 2022
  loc_C14E6B: GeI2
  loc_C14E6C: AndI4
  loc_C14E6D: BranchF loc_C15036
  loc_C14E70: FLdPr Me
  loc_C14E73: MemLdRfVar from_stack_1.global_116
  loc_C14E76: NewIfNullRf
  loc_C14E7A: ILdRf var_8C
  loc_C14E7D: ImpAdCallFPR4 Proc_259_26_B6A94C(, )
  loc_C14E82: FLdRfVar var_138
  loc_C14E85: FLdPr Me
  loc_C14E88: MemLdRfVar from_stack_1.global_116
  loc_C14E8B: NewIfNullPr tblproveedor
  loc_C14E8E: from_stack_1v = tblproveedor.CucuPersGet()
  loc_C14E93: FLdRfVar var_39C
  loc_C14E96: FLdPr Me
  loc_C14E99: MemLdRfVar from_stack_1.global_116
  loc_C14E9C: NewIfNullPr tblproveedor
  loc_C14E9F: from_stack_1v = tblproveedor.CucuPersGet()
  loc_C14EA4: FLdRfVar var_3B0
  loc_C14EA7: FLdPr Me
  loc_C14EAA: MemLdRfVar from_stack_1.global_116
  loc_C14EAD: NewIfNullPr tblproveedor
  loc_C14EB0: from_stack_1v = tblproveedor.CucuPersGet()
  loc_C14EB5: FLdRfVar var_3C4
  loc_C14EB8: FLdPr Me
  loc_C14EBB: MemLdRfVar from_stack_1.global_116
  loc_C14EBE: NewIfNullPr tblproveedor
  loc_C14EC1: from_stack_1v = tblproveedor.CucuPersGet()
  loc_C14EC6: FLdRfVar var_3C8
  loc_C14EC9: FLdPr Me
  loc_C14ECC: MemLdRfVar from_stack_1.global_116
  loc_C14ECF: NewIfNullPr tblproveedor
  loc_C14ED2: from_stack_1v = tblproveedor.CucuPersGet()
  loc_C14ED7: LitI4 2
  loc_C14EDC: FLdZeroAd var_138
  loc_C14EDF: CVarStr var_B8
  loc_C14EE2: FLdRfVar var_E4
  loc_C14EE5: ImpAdCallFPR4  = Left(, )
  loc_C14EEA: FLdRfVar var_E4
  loc_C14EED: LitVarStr var_A4, "30"
  loc_C14EF2: HardType
  loc_C14EF3: EqVar var_104
  loc_C14EF7: LitI4 2
  loc_C14EFC: FLdZeroAd var_39C
  loc_C14EFF: CVarStr var_124
  loc_C14F02: FLdRfVar var_134
  loc_C14F05: ImpAdCallFPR4  = Left(, )
  loc_C14F0A: FLdRfVar var_134
  loc_C14F0D: LitVarStr var_D0, "31"
  loc_C14F12: HardType
  loc_C14F13: EqVar var_208
  loc_C14F17: OrVar var_238
  loc_C14F1B: LitI4 2
  loc_C14F20: FLdZeroAd var_3B0
  loc_C14F23: CVarStr var_248
  loc_C14F26: FLdRfVar var_2A8
  loc_C14F29: ImpAdCallFPR4  = Left(, )
  loc_C14F2E: FLdRfVar var_2A8
  loc_C14F31: LitVarStr var_F4, "32"
  loc_C14F36: HardType
  loc_C14F37: EqVar var_2C8
  loc_C14F3B: OrVar var_2D8
  loc_C14F3F: LitI4 2
  loc_C14F44: FLdZeroAd var_3C4
  loc_C14F47: CVarStr var_308
  loc_C14F4A: FLdRfVar var_318
  loc_C14F4D: ImpAdCallFPR4  = Left(, )
  loc_C14F52: FLdRfVar var_318
  loc_C14F55: LitVarStr var_114, "33"
  loc_C14F5A: HardType
  loc_C14F5B: EqVar var_348
  loc_C14F5F: OrVar var_358
  loc_C14F63: LitI4 2
  loc_C14F68: FLdZeroAd var_3C8
  loc_C14F6B: CVarStr var_368
  loc_C14F6E: FLdRfVar var_378
  loc_C14F71: ImpAdCallFPR4  = Left(, )
  loc_C14F76: FLdRfVar var_378
  loc_C14F79: LitVarStr var_16C, "34"
  loc_C14F7E: HardType
  loc_C14F7F: EqVar var_388
  loc_C14F83: OrVar var_398
  loc_C14F87: CBoolVarNull
  loc_C14F89: FFreeVar var_B8 = "": var_E4 = "": var_124 = "": var_134 = "": var_248 = "": var_2A8 = "": var_308 = "": var_318 = "": var_368 = ""
  loc_C14FA0: BranchF loc_C15036
  loc_C14FA3: FLdRfVar var_138
  loc_C14FA6: FLdPr Me
  loc_C14FA9: MemLdRfVar from_stack_1.global_116
  loc_C14FAC: NewIfNullPr tblproveedor
  loc_C14FAF: from_stack_1v = tblproveedor.IdUsprosGet()
  loc_C14FB4: ILdRf var_138
  loc_C14FB7: LitStr vbNullString
  loc_C14FBA: EqStr
  loc_C14FBC: FFree1Str var_138
  loc_C14FBF: BranchF loc_C15036
  loc_C14FC2: FLdRfVar var_138
  loc_C14FC5: FLdPr Me
  loc_C14FC8: MemLdRfVar from_stack_1.global_116
  loc_C14FCB: NewIfNullPr tblproveedor
  loc_C14FCE: from_stack_1v = tblproveedor.CucuPersGet()
  loc_C14FD3: ILdRf var_138
  loc_C14FD6: ImpAdLdRf MemVar_C3DCC8
  loc_C14FD9: NewIfNullPr dlgGuardarCorreo
  loc_C14FDC: VCallAd Control_ID_lblCUIT
  loc_C14FDF: FStAdFunc var_90
  loc_C14FE2: FLdPr var_90
  loc_C14FE5: dlgGuardarCorreo.Label.Caption = from_stack_1
  loc_C14FEA: FFree1Str var_138
  loc_C14FED: FFree1Ad var_90
  loc_C14FF0: FLdRfVar var_138
  loc_C14FF3: FLdPr Me
  loc_C14FF6: MemLdRfVar from_stack_1.global_116
  loc_C14FF9: NewIfNullPr tblproveedor
  loc_C14FFC: from_stack_1v = tblproveedor.DetaProvGet()
  loc_C15001: ILdRf var_138
  loc_C15004: ImpAdLdRf MemVar_C3DCC8
  loc_C15007: NewIfNullPr dlgGuardarCorreo
  loc_C1500A: VCallAd Control_ID_lblDetaProv
  loc_C1500D: FStAdFunc var_90
  loc_C15010: FLdPr var_90
  loc_C15013: dlgGuardarCorreo.Label.Caption = from_stack_1
  loc_C15018: FFree1Str var_138
  loc_C1501B: FFree1Ad var_90
  loc_C1501E: LitVar_Missing var_D0
  loc_C15021: PopAdLdVar
  loc_C15022: LitVarI4
  loc_C1502A: PopAdLdVar
  loc_C1502B: ImpAdLdRf MemVar_C3DCC8
  loc_C1502E: NewIfNullPr dlgGuardarCorreo
  loc_C15031: dlgGuardarCorreo.Show from_stack_1, from_stack_2
  loc_C15036: ExitProcHresult
End Function
