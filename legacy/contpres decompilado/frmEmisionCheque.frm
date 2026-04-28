VERSION 5.00
Object = "{C932BA88-4374-101B-A56C00AA003668DC}#1.1#0"; "C:\WINDOWS\SysWOW64\msmask32.ocx"
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmEmisionCheque
  Caption = "Emisión y de cheques"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmEmisionCheque.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 720
  ClientWidth = 15525
  ClientHeight = 10725
  BeginProperty Font
    Name = "MS Sans Serif"
    Size = 12
    Charset = 0
    Weight = 400
    Underline = 0 'False
    Italic = 0 'False
    Strikethrough = 0 'False
  EndProperty
  Begin VB.Frame FrameImprimir
    Caption = " Imprimir "
    Left = 11040
    Top = 720
    Width = 4095
    Height = 855
    TabIndex = 5
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
    Begin VB.CommandButton cmdImprimirLiquidacion
      Caption = "Liquidación"
      Left = 2760
      Top = 360
      Width = 1215
      Height = 375
      TabIndex = 23
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CommandButton CmdImprimirCaratula
      Caption = "Carátula"
      Left = 1440
      Top = 360
      Width = 1215
      Height = 375
      TabIndex = 7
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
    Begin VB.CommandButton CmdImprimirOrdendePago
      Caption = "OP"
      Left = 120
      Top = 360
      Width = 1215
      Height = 375
      TabIndex = 6
      BeginProperty Font
        Name = "MS Sans Serif"
        Size = 9,75
        Charset = 0
        Weight = 400
        Underline = 0 'False
        Italic = 0 'False
        Strikethrough = 0 'False
      EndProperty
    End
  End
  Begin VB.CommandButton cmdAgregarNoalaOrden
    Caption = "Agregar >NO A LA ORDEN<"
    Left = 9600
    Top = 5040
    Width = 2175
    Height = 255
    TabIndex = 20
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
  Begin VB.CommandButton cmdBorrarNoalaOrden
    Caption = "Borrar >NO A LA ORDEN<"
    Left = 7200
    Top = 5040
    Width = 2175
    Height = 255
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
  Begin VB.CommandButton cmdEliminar
    Caption = "Eliminar cheque dividido"
    Left = 4800
    Top = 5040
    Width = 2175
    Height = 255
    TabIndex = 18
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
  Begin VB.CommandButton cmdInsertar
    Caption = "Dividir Cheque"
    Left = 2400
    Top = 5040
    Width = 2175
    Height = 255
    TabIndex = 17
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
  Begin VB.Frame FiltroFra
    Left = 120
    Top = 720
    Width = 10695
    Height = 855
    TabIndex = 2
    Begin MSMask.MaskEdBox FiltroMsk
      Left = 4800
      Top = 360
      Width = 5775
      Height = 420
      TabIndex = 4
      OleObjectBlob = "frmEmisionCheque.frx":08CA
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
  Begin VB.CheckBox RepetirFechCheqChk
    Caption = "Repetir"
    Left = 120
    Top = 5040
    Width = 1215
    Height = 255
    TabIndex = 16
    BeginProperty Font
      Name = "MS Sans Serif"
      Size = 9,75
      Charset = 0
      Weight = 400
      Underline = 0 'False
      Italic = 0 'False
      Strikethrough = 0 'False
    EndProperty
  End
  Begin VB.Frame Frame1
    Caption = " Emisión de Cheques "
    Left = 120
    Top = 3720
    Width = 15015
    Height = 1215
    TabIndex = 9
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
      Left = 7080
      Top = 720
      Width = 2295
      Height = 375
      TabIndex = 22
      MaxLength = 70
    End
    Begin VB.CommandButton cmdDividirVsChqs
      Caption = "Dividir Varios Cheques"
      Left = 3240
      Top = 240
      Width = 3015
      Height = 375
      TabIndex = 10
    End
    Begin VB.CheckBox ChequeUnicoChk
      Caption = "Cambiar CUIT y/o Unificar valores"
      Left = 7080
      Top = 360
      Width = 3975
      Height = 300
      TabIndex = 11
    End
    Begin VB.ComboBox BancoCbo
      Style = 2
      Left = 960
      Top = 720
      Width = 4455
      Height = 420
      TabIndex = 13
      CausesValidation = 0   'False
    End
    Begin VB.Label Label10
      Caption = "CUIT/CUIL:"
      Left = 5760
      Top = 720
      Width = 1215
      Height = 375
      TabIndex = 14
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
    Begin VB.Label DetaProvLbl
      Left = 9480
      Top = 720
      Width = 5415
      Height = 375
      TabIndex = 15
      BorderStyle = 1 'Fixed Single
    End
    Begin VB.Label Label7
      Caption = "Banco:"
      Left = 120
      Top = 720
      Width = 750
      Height = 300
      TabIndex = 12
      AutoSize = -1  'True
    End
  End
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 120
    Top = 1680
    Width = 15015
    Height = 1935
    TabIndex = 8
    OleObjectBlob = "frmEmisionCheque.frx":092A
  End
  Begin MSFlexGridLib.MSFlexGrid FlexCheque
    Left = 120
    Top = 5400
    Width = 15015
    Height = 4815
    TabIndex = 21
    OleObjectBlob = "frmEmisionCheque.frx":0D26
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmEmisionCheque.frx":0E12
    Left = 8160
    Top = 0
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 15525
    Height = 660
    TabIndex = 0
    OleObjectBlob = "frmEmisionCheque.frx":8990
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 1
      TabStop = 0   'False
      Picture = "frmEmisionCheque.frx":8EEC
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmEmisionCheque"


Private Sub CucuPersTxt_GotFocus() '953790
  'Data Table: 4B2A08
  loc_95377C: FLdPr Me
  loc_95377F: VCallAd Control_ID_CucuPersTxt
  loc_953782: CVarAd
  loc_953786: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_95378B: FFree1Var var_94 = ""
  loc_95378E: ExitProcHresult
End Sub

Private Sub CucuPersTxt_KeyUp(KeyCode As Integer, Shift As Integer) 'A0D3D0
  'Data Table: 4B2A08
  loc_A0D26C: ILdI2 Shift
  loc_A0D26F: CI4UI1
  loc_A0D270: LitI4 2
  loc_A0D275: EqI4
  loc_A0D276: ILdI2 KeyCode
  loc_A0D279: CI4UI1
  loc_A0D27A: LitI4 &H42
  loc_A0D27F: EqI4
  loc_A0D280: AndI4
  loc_A0D281: BranchF loc_A0D3CC
  loc_A0D284: LitI2_Byte &HFF
  loc_A0D286: ImpAdLdRf MemVar_C3D74C
  loc_A0D289: NewIfNullPr bscProveedor
  loc_A0D28C: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_A0D291: LitNothing
  loc_A0D293: CastAd
  loc_A0D296: FStAdFuncNoPop
  loc_A0D299: FLdRfVar var_88
  loc_A0D29C: ImpAdLdRf MemVar_C3D74C
  loc_A0D29F: NewIfNullPr bscProveedor
  loc_A0D2A2: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0D2A7: FLdPr var_88
  loc_A0D2AA: Call clsbase.RsFrmSet(from_stack_1v)
  loc_A0D2AF: FFreeAd var_8C = ""
  loc_A0D2B6: LitVar_Missing var_AC
  loc_A0D2B9: PopAdLdVar
  loc_A0D2BA: LitVarI4
  loc_A0D2C2: PopAdLdVar
  loc_A0D2C3: ImpAdLdRf MemVar_C3D74C
  loc_A0D2C6: NewIfNullPr bscProveedor
  loc_A0D2C9: bscProveedor.Show from_stack_1, from_stack_2
  loc_A0D2CE: FLdRfVar var_B0
  loc_A0D2D1: FLdRfVar var_88
  loc_A0D2D4: ImpAdLdRf MemVar_C3D74C
  loc_A0D2D7: NewIfNullPr bscProveedor
  loc_A0D2DA: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0D2DF: FLdPr var_88
  loc_A0D2E2: from_stack_1 = clsbase.RecordCount
  loc_A0D2E7: ILdRf var_B0
  loc_A0D2EA: LitI4 0
  loc_A0D2EF: GtI4
  loc_A0D2F0: FFree1Ad var_88
  loc_A0D2F3: BranchF loc_A0D3CC
  loc_A0D2F6: FLdRfVar var_C8
  loc_A0D2F9: FLdRfVar var_B8
  loc_A0D2FC: LitVarStr var_9C, "CucuPers"
  loc_A0D301: PopAdLdVar
  loc_A0D302: FLdRfVar var_B4
  loc_A0D305: FLdRfVar var_8C
  loc_A0D308: FLdRfVar var_88
  loc_A0D30B: ImpAdLdRf MemVar_C3D74C
  loc_A0D30E: NewIfNullPr bscProveedor
  loc_A0D311: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0D316: FLdPr var_88
  loc_A0D319: from_stack_1v = clsbase.RsFrmGet()
  loc_A0D31E: FLdPr var_8C
  loc_A0D321:  = Me.Fields
  loc_A0D326: FLdPr var_B4
  loc_A0D329: from_stack_2 = Me.Item(from_stack_1)
  loc_A0D32E: FLdPr var_B8
  loc_A0D331:  = Me.Value
  loc_A0D336: FLdRfVar var_C8
  loc_A0D339: CStrVarTmp
  loc_A0D33A: FStStrNoPop var_CC
  loc_A0D33D: FLdPr Me
  loc_A0D340: VCallAd Control_ID_CucuPersTxt
  loc_A0D343: FStAdFunc var_D0
  loc_A0D346: FLdPr var_D0
  loc_A0D349: Me.Text = from_stack_1
  loc_A0D34E: FFree1Str var_CC
  loc_A0D351: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0D35E: FFree1Var var_C8 = ""
  loc_A0D361: FLdRfVar var_C8
  loc_A0D364: FLdRfVar var_B8
  loc_A0D367: LitVarStr var_9C, "DetaProv"
  loc_A0D36C: PopAdLdVar
  loc_A0D36D: FLdRfVar var_B4
  loc_A0D370: FLdRfVar var_8C
  loc_A0D373: FLdRfVar var_88
  loc_A0D376: ImpAdLdRf MemVar_C3D74C
  loc_A0D379: NewIfNullPr bscProveedor
  loc_A0D37C: from_stack_1v = bscProveedor.global_4315292Get()
  loc_A0D381: FLdPr var_88
  loc_A0D384: from_stack_1v = clsbase.RsFrmGet()
  loc_A0D389: FLdPr var_8C
  loc_A0D38C:  = Me.Fields
  loc_A0D391: FLdPr var_B4
  loc_A0D394: from_stack_2 = Me.Item(from_stack_1)
  loc_A0D399: FLdPr var_B8
  loc_A0D39C:  = Me.Value
  loc_A0D3A1: FLdRfVar var_C8
  loc_A0D3A4: CStrVarTmp
  loc_A0D3A5: FStStrNoPop var_CC
  loc_A0D3A8: FLdPr Me
  loc_A0D3AB: VCallAd Control_ID_DetaProvLbl
  loc_A0D3AE: FStAdFunc var_D0
  loc_A0D3B1: FLdPr var_D0
  loc_A0D3B4: Me.Caption = from_stack_1
  loc_A0D3B9: FFree1Str var_CC
  loc_A0D3BC: FFreeAd var_88 = "": var_8C = "": var_B4 = "": var_B8 = ""
  loc_A0D3C9: FFree1Var var_C8 = ""
  loc_A0D3CC: ExitProcHresult
End Sub

Private Sub CucuPersTxt_Validate(Cancel As Boolean) 'B49CC0
  'Data Table: 4B2A08
  loc_B49218: FLdRfVar var_8C
  loc_B4921B: FLdPr Me
  loc_B4921E: VCallAd Control_ID_CucuPersTxt
  loc_B49221: FStAdFunc var_88
  loc_B49224: FLdPr var_88
  loc_B49227:  = Me.Text
  loc_B4922C: ILdRf var_8C
  loc_B4922F: ImpAdCallI2 Trim$()
  loc_B49234: FStStrNoPop var_90
  loc_B49237: LitStr vbNullString
  loc_B4923A: NeStr
  loc_B4923C: FFreeStr var_8C = ""
  loc_B49243: FFree1Ad var_88
  loc_B49246: BranchF loc_B49B0D
  loc_B49249: FLdPr Me
  loc_B4924C: VCallAd Control_ID_CucuPersTxt
  loc_B4924F: FStAdFunc var_88
  loc_B49252: FLdRfVar var_88
  loc_B49255: ImpAdCallI2 Proc_266_39_9F3844()
  loc_B4925A: FFree1Ad var_88
  loc_B4925D: BranchF loc_B496A7
  loc_B49260: LitI2_Byte &HFF
  loc_B49262: ImpAdLdRf MemVar_C3D74C
  loc_B49265: NewIfNullPr bscProveedor
  loc_B49268: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_B4926D: LitStr "AND proveedor.CucuPers LIKE '" & Chr(37)
  loc_B49270: FLdRfVar var_8C
  loc_B49273: FLdPr Me
  loc_B49276: VCallAd Control_ID_
  loc_B49279: FStAdFunc var_88
  loc_B4927C: FLdPr var_88
  loc_B4927F:  = bscProveedor.TextBox.Text
  loc_B49284: ILdRf var_8C
  loc_B49287: ConcatStr
  loc_B49288: FStStrNoPop var_90
  loc_B4928B: LitStr Chr(37) & "' ORDER BY DetaProv"
  loc_B4928E: ConcatStr
  loc_B4928F: FStStrNoPop var_94
  loc_B49292: ImpAdLdRf MemVar_C3D74C
  loc_B49295: NewIfNullPr bscProveedor
  loc_B49298: Call bscProveedor.Constructor(from_stack_1v)
  loc_B4929D: FFreeStr var_8C = "": var_90 = ""
  loc_B492A6: FFree1Ad var_88
  loc_B492A9: FLdRfVar var_9C
  loc_B492AC: FLdRfVar var_98
  loc_B492AF: FLdRfVar var_88
  loc_B492B2: ImpAdLdRf MemVar_C3D74C
  loc_B492B5: NewIfNullPr bscProveedor
  loc_B492B8: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B492BD: FLdPr var_88
  loc_B492C0: from_stack_1v = clsbase.RsFrmGet()
  loc_B492C5: FLdPr var_98
  loc_B492C8:  = Me.RecordCount
  loc_B492CD: ILdRf var_9C
  loc_B492D0: LitI4 1
  loc_B492D5: EqI4
  loc_B492D6: FFreeAd var_88 = ""
  loc_B492DD: BranchF loc_B49400
  loc_B492E0: FLdRfVar var_C4
  loc_B492E3: FLdRfVar var_B4
  loc_B492E6: LitVarStr var_B0, "CucuPers"
  loc_B492EB: PopAdLdVar
  loc_B492EC: FLdRfVar var_A0
  loc_B492EF: FLdRfVar var_98
  loc_B492F2: FLdRfVar var_88
  loc_B492F5: ImpAdLdRf MemVar_C3D74C
  loc_B492F8: NewIfNullPr bscProveedor
  loc_B492FB: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B49300: FLdPr var_88
  loc_B49303: from_stack_1v = clsbase.RsFrmGet()
  loc_B49308: FLdPr var_98
  loc_B4930B:  = Me.Fields
  loc_B49310: FLdPr var_A0
  loc_B49313: from_stack_2 = Me.Item(from_stack_1)
  loc_B49318: FLdPr var_B4
  loc_B4931B:  = Me.Value
  loc_B49320: FLdRfVar var_C4
  loc_B49323: CStrVarTmp
  loc_B49324: FStStrNoPop var_8C
  loc_B49327: FLdPr Me
  loc_B4932A: VCallAd Control_ID_CucuPersTxt
  loc_B4932D: FStAdFunc var_C8
  loc_B49330: FLdPr var_C8
  loc_B49333: Me.Text = from_stack_1
  loc_B49338: FFree1Str var_8C
  loc_B4933B: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B49348: FFree1Var var_C4 = ""
  loc_B4934B: FLdRfVar var_C4
  loc_B4934E: FLdRfVar var_B4
  loc_B49351: LitVarStr var_B0, "DetaProv"
  loc_B49356: PopAdLdVar
  loc_B49357: FLdRfVar var_A0
  loc_B4935A: FLdRfVar var_98
  loc_B4935D: FLdRfVar var_88
  loc_B49360: ImpAdLdRf MemVar_C3D74C
  loc_B49363: NewIfNullPr bscProveedor
  loc_B49366: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4936B: FLdPr var_88
  loc_B4936E: from_stack_1v = clsbase.RsFrmGet()
  loc_B49373: FLdPr var_98
  loc_B49376:  = Me.Fields
  loc_B4937B: FLdPr var_A0
  loc_B4937E: from_stack_2 = Me.Item(from_stack_1)
  loc_B49383: FLdPr var_B4
  loc_B49386:  = Me.Value
  loc_B4938B: FLdRfVar var_C4
  loc_B4938E: CStrVarTmp
  loc_B4938F: FStStrNoPop var_8C
  loc_B49392: FLdPr Me
  loc_B49395: VCallAd Control_ID_DetaProvLbl
  loc_B49398: FStAdFunc var_C8
  loc_B4939B: FLdPr var_C8
  loc_B4939E: Me.Caption = from_stack_1
  loc_B493A3: FFree1Str var_8C
  loc_B493A6: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B493B3: FFree1Var var_C4 = ""
  loc_B493B6: LitStr vbNullString
  loc_B493B9: FLdPr Me
  loc_B493BC: MemStStrCopy
  loc_B493C0: FLdPr Me
  loc_B493C3: VCallAd Control_ID_CucuPersTxt
  loc_B493C6: FStAdFunc var_B4
  loc_B493C9: FLdPr Me
  loc_B493CC: VCallAd Control_ID_DetaProvLbl
  loc_B493CF: FStAdFunc var_A0
  loc_B493D2: FLdRfVar var_A0
  loc_B493D5: FLdZeroAd var_B4
  loc_B493D8: FStAdFuncNoPop
  loc_B493DB: CastAd
  loc_B493DE: FStAdFunc var_98
  loc_B493E1: FLdRfVar var_98
  loc_B493E4: FLdPr Me
  loc_B493E7: MemLdRfVar from_stack_1.global_68
  loc_B493EA: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B493EF: IStI2 Cancel
  loc_B493F2: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B493FD: Branch loc_B496A4
  loc_B49400: FLdRfVar var_9C
  loc_B49403: FLdRfVar var_98
  loc_B49406: FLdRfVar var_88
  loc_B49409: ImpAdLdRf MemVar_C3D74C
  loc_B4940C: NewIfNullPr bscProveedor
  loc_B4940F: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B49414: FLdPr var_88
  loc_B49417: from_stack_1v = clsbase.RsFrmGet()
  loc_B4941C: FLdPr var_98
  loc_B4941F:  = Me.RecordCount
  loc_B49424: ILdRf var_9C
  loc_B49427: LitI4 1
  loc_B4942C: GtI4
  loc_B4942D: FFreeAd var_88 = ""
  loc_B49434: BranchF loc_B4960F
  loc_B49437: LitVar_Missing var_D8
  loc_B4943A: PopAdLdVar
  loc_B4943B: LitVarI4
  loc_B49443: PopAdLdVar
  loc_B49444: ImpAdLdRf MemVar_C3D74C
  loc_B49447: NewIfNullPr bscProveedor
  loc_B4944A: bscProveedor.Show from_stack_1, from_stack_2
  loc_B4944F: FLdRfVar var_9C
  loc_B49452: FLdRfVar var_88
  loc_B49455: ImpAdLdRf MemVar_C3D74C
  loc_B49458: NewIfNullPr bscProveedor
  loc_B4945B: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B49460: FLdPr var_88
  loc_B49463: from_stack_1 = clsbase.RecordCount
  loc_B49468: ILdRf var_9C
  loc_B4946B: LitI4 0
  loc_B49470: GtI4
  loc_B49471: FFree1Ad var_88
  loc_B49474: BranchF loc_B49597
  loc_B49477: FLdRfVar var_C4
  loc_B4947A: FLdRfVar var_B4
  loc_B4947D: LitVarStr var_B0, "CucuPers"
  loc_B49482: PopAdLdVar
  loc_B49483: FLdRfVar var_A0
  loc_B49486: FLdRfVar var_98
  loc_B49489: FLdRfVar var_88
  loc_B4948C: ImpAdLdRf MemVar_C3D74C
  loc_B4948F: NewIfNullPr bscProveedor
  loc_B49492: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B49497: FLdPr var_88
  loc_B4949A: from_stack_1v = clsbase.RsFrmGet()
  loc_B4949F: FLdPr var_98
  loc_B494A2:  = Me.Fields
  loc_B494A7: FLdPr var_A0
  loc_B494AA: from_stack_2 = Me.Item(from_stack_1)
  loc_B494AF: FLdPr var_B4
  loc_B494B2:  = Me.Value
  loc_B494B7: FLdRfVar var_C4
  loc_B494BA: CStrVarTmp
  loc_B494BB: FStStrNoPop var_8C
  loc_B494BE: FLdPr Me
  loc_B494C1: VCallAd Control_ID_CucuPersTxt
  loc_B494C4: FStAdFunc var_C8
  loc_B494C7: FLdPr var_C8
  loc_B494CA: Me.Text = from_stack_1
  loc_B494CF: FFree1Str var_8C
  loc_B494D2: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B494DF: FFree1Var var_C4 = ""
  loc_B494E2: FLdRfVar var_C4
  loc_B494E5: FLdRfVar var_B4
  loc_B494E8: LitVarStr var_B0, "DetaProv"
  loc_B494ED: PopAdLdVar
  loc_B494EE: FLdRfVar var_A0
  loc_B494F1: FLdRfVar var_98
  loc_B494F4: FLdRfVar var_88
  loc_B494F7: ImpAdLdRf MemVar_C3D74C
  loc_B494FA: NewIfNullPr bscProveedor
  loc_B494FD: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B49502: FLdPr var_88
  loc_B49505: from_stack_1v = clsbase.RsFrmGet()
  loc_B4950A: FLdPr var_98
  loc_B4950D:  = Me.Fields
  loc_B49512: FLdPr var_A0
  loc_B49515: from_stack_2 = Me.Item(from_stack_1)
  loc_B4951A: FLdPr var_B4
  loc_B4951D:  = Me.Value
  loc_B49522: FLdRfVar var_C4
  loc_B49525: CStrVarTmp
  loc_B49526: FStStrNoPop var_8C
  loc_B49529: FLdPr Me
  loc_B4952C: VCallAd Control_ID_DetaProvLbl
  loc_B4952F: FStAdFunc var_C8
  loc_B49532: FLdPr var_C8
  loc_B49535: Me.Caption = from_stack_1
  loc_B4953A: FFree1Str var_8C
  loc_B4953D: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B4954A: FFree1Var var_C4 = ""
  loc_B4954D: LitStr vbNullString
  loc_B49550: FLdPr Me
  loc_B49553: MemStStrCopy
  loc_B49557: FLdPr Me
  loc_B4955A: VCallAd Control_ID_CucuPersTxt
  loc_B4955D: FStAdFunc var_B4
  loc_B49560: FLdPr Me
  loc_B49563: VCallAd Control_ID_DetaProvLbl
  loc_B49566: FStAdFunc var_A0
  loc_B49569: FLdRfVar var_A0
  loc_B4956C: FLdZeroAd var_B4
  loc_B4956F: FStAdFuncNoPop
  loc_B49572: CastAd
  loc_B49575: FStAdFunc var_98
  loc_B49578: FLdRfVar var_98
  loc_B4957B: FLdPr Me
  loc_B4957E: MemLdRfVar from_stack_1.global_68
  loc_B49581: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B49586: IStI2 Cancel
  loc_B49589: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B49594: Branch loc_B4960C
  loc_B49597: LitStr vbNullString
  loc_B4959A: FLdPr Me
  loc_B4959D: VCallAd Control_ID_CucuPersTxt
  loc_B495A0: FStAdFunc var_88
  loc_B495A3: FLdPr var_88
  loc_B495A6: Me.Text = from_stack_1
  loc_B495AB: FFree1Ad var_88
  loc_B495AE: LitStr vbNullString
  loc_B495B1: FLdPr Me
  loc_B495B4: VCallAd Control_ID_DetaProvLbl
  loc_B495B7: FStAdFunc var_88
  loc_B495BA: FLdPr var_88
  loc_B495BD: Me.Caption = from_stack_1
  loc_B495C2: FFree1Ad var_88
  loc_B495C5: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B495C8: FLdPr Me
  loc_B495CB: MemStStrCopy
  loc_B495CF: FLdPr Me
  loc_B495D2: VCallAd Control_ID_CucuPersTxt
  loc_B495D5: FStAdFunc var_B4
  loc_B495D8: FLdPr Me
  loc_B495DB: VCallAd Control_ID_DetaProvLbl
  loc_B495DE: FStAdFunc var_A0
  loc_B495E1: FLdRfVar var_A0
  loc_B495E4: FLdZeroAd var_B4
  loc_B495E7: FStAdFuncNoPop
  loc_B495EA: CastAd
  loc_B495ED: FStAdFunc var_98
  loc_B495F0: FLdRfVar var_98
  loc_B495F3: FLdPr Me
  loc_B495F6: MemLdRfVar from_stack_1.global_68
  loc_B495F9: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B495FE: IStI2 Cancel
  loc_B49601: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B4960C: Branch loc_B496A4
  loc_B4960F: FLdRfVar var_9C
  loc_B49612: FLdRfVar var_98
  loc_B49615: FLdRfVar var_88
  loc_B49618: ImpAdLdRf MemVar_C3D74C
  loc_B4961B: NewIfNullPr bscProveedor
  loc_B4961E: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B49623: FLdPr var_88
  loc_B49626: from_stack_1v = clsbase.RsFrmGet()
  loc_B4962B: FLdPr var_98
  loc_B4962E:  = Me.RecordCount
  loc_B49633: ILdRf var_9C
  loc_B49636: LitI4 1
  loc_B4963B: LtI4
  loc_B4963C: FFreeAd var_88 = ""
  loc_B49643: BranchF loc_B496A4
  loc_B49646: LitStr vbNullString
  loc_B49649: FLdPr Me
  loc_B4964C: VCallAd Control_ID_DetaProvLbl
  loc_B4964F: FStAdFunc var_88
  loc_B49652: FLdPr var_88
  loc_B49655: Me.Caption = from_stack_1
  loc_B4965A: FFree1Ad var_88
  loc_B4965D: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B49660: FLdPr Me
  loc_B49663: MemStStrCopy
  loc_B49667: FLdPr Me
  loc_B4966A: VCallAd Control_ID_CucuPersTxt
  loc_B4966D: FStAdFunc var_B4
  loc_B49670: FLdPr Me
  loc_B49673: VCallAd Control_ID_DetaProvLbl
  loc_B49676: FStAdFunc var_A0
  loc_B49679: FLdRfVar var_A0
  loc_B4967C: FLdZeroAd var_B4
  loc_B4967F: FStAdFuncNoPop
  loc_B49682: CastAd
  loc_B49685: FStAdFunc var_98
  loc_B49688: FLdRfVar var_98
  loc_B4968B: FLdPr Me
  loc_B4968E: MemLdRfVar from_stack_1.global_68
  loc_B49691: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B49696: IStI2 Cancel
  loc_B49699: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B496A4: Branch loc_B49B0A
  loc_B496A7: LitI2_Byte &HFF
  loc_B496A9: ImpAdLdRf MemVar_C3D74C
  loc_B496AC: NewIfNullPr bscProveedor
  loc_B496AF: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_B496B4: FLdRfVar var_8C
  loc_B496B7: FLdPr Me
  loc_B496BA: VCallAd Control_ID_
  loc_B496BD: FStAdFunc var_88
  loc_B496C0: FLdPr var_88
  loc_B496C3:  = bscProveedor.TextBox.Text
  loc_B496C8: LitStr " AND DetaProv LIKE '" & Chr(37)
  loc_B496CB: LitI4 0
  loc_B496D0: LitI4 -1
  loc_B496D5: LitI4 1
  loc_B496DA: LitStr Chr(37)
  loc_B496DD: LitStr " "
  loc_B496E0: ILdRf var_8C
  loc_B496E3: ImpAdCallI2 Replace(, , , , , )
  loc_B496E8: FStStrNoPop var_90
  loc_B496EB: ConcatStr
  loc_B496EC: FStStrNoPop var_94
  loc_B496EF: LitStr Chr(37) & "' ORDER BY DetaProv"
  loc_B496F2: ConcatStr
  loc_B496F3: FStStrNoPop var_DC
  loc_B496F6: ImpAdLdRf MemVar_C3D74C
  loc_B496F9: NewIfNullPr bscProveedor
  loc_B496FC: Call bscProveedor.Constructor(from_stack_1v)
  loc_B49701: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_B4970C: FFree1Ad var_88
  loc_B4970F: FLdRfVar var_9C
  loc_B49712: FLdRfVar var_98
  loc_B49715: FLdRfVar var_88
  loc_B49718: ImpAdLdRf MemVar_C3D74C
  loc_B4971B: NewIfNullPr bscProveedor
  loc_B4971E: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B49723: FLdPr var_88
  loc_B49726: from_stack_1v = clsbase.RsFrmGet()
  loc_B4972B: FLdPr var_98
  loc_B4972E:  = Me.RecordCount
  loc_B49733: ILdRf var_9C
  loc_B49736: LitI4 1
  loc_B4973B: EqI4
  loc_B4973C: FFreeAd var_88 = ""
  loc_B49743: BranchF loc_B49866
  loc_B49746: FLdRfVar var_C4
  loc_B49749: FLdRfVar var_B4
  loc_B4974C: LitVarStr var_B0, "CucuPers"
  loc_B49751: PopAdLdVar
  loc_B49752: FLdRfVar var_A0
  loc_B49755: FLdRfVar var_98
  loc_B49758: FLdRfVar var_88
  loc_B4975B: ImpAdLdRf MemVar_C3D74C
  loc_B4975E: NewIfNullPr bscProveedor
  loc_B49761: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B49766: FLdPr var_88
  loc_B49769: from_stack_1v = clsbase.RsFrmGet()
  loc_B4976E: FLdPr var_98
  loc_B49771:  = Me.Fields
  loc_B49776: FLdPr var_A0
  loc_B49779: from_stack_2 = Me.Item(from_stack_1)
  loc_B4977E: FLdPr var_B4
  loc_B49781:  = Me.Value
  loc_B49786: FLdRfVar var_C4
  loc_B49789: CStrVarTmp
  loc_B4978A: FStStrNoPop var_8C
  loc_B4978D: FLdPr Me
  loc_B49790: VCallAd Control_ID_CucuPersTxt
  loc_B49793: FStAdFunc var_C8
  loc_B49796: FLdPr var_C8
  loc_B49799: Me.Text = from_stack_1
  loc_B4979E: FFree1Str var_8C
  loc_B497A1: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B497AE: FFree1Var var_C4 = ""
  loc_B497B1: FLdRfVar var_C4
  loc_B497B4: FLdRfVar var_B4
  loc_B497B7: LitVarStr var_B0, "DetaProv"
  loc_B497BC: PopAdLdVar
  loc_B497BD: FLdRfVar var_A0
  loc_B497C0: FLdRfVar var_98
  loc_B497C3: FLdRfVar var_88
  loc_B497C6: ImpAdLdRf MemVar_C3D74C
  loc_B497C9: NewIfNullPr bscProveedor
  loc_B497CC: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B497D1: FLdPr var_88
  loc_B497D4: from_stack_1v = clsbase.RsFrmGet()
  loc_B497D9: FLdPr var_98
  loc_B497DC:  = Me.Fields
  loc_B497E1: FLdPr var_A0
  loc_B497E4: from_stack_2 = Me.Item(from_stack_1)
  loc_B497E9: FLdPr var_B4
  loc_B497EC:  = Me.Value
  loc_B497F1: FLdRfVar var_C4
  loc_B497F4: CStrVarTmp
  loc_B497F5: FStStrNoPop var_8C
  loc_B497F8: FLdPr Me
  loc_B497FB: VCallAd Control_ID_DetaProvLbl
  loc_B497FE: FStAdFunc var_C8
  loc_B49801: FLdPr var_C8
  loc_B49804: Me.Caption = from_stack_1
  loc_B49809: FFree1Str var_8C
  loc_B4980C: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B49819: FFree1Var var_C4 = ""
  loc_B4981C: LitStr vbNullString
  loc_B4981F: FLdPr Me
  loc_B49822: MemStStrCopy
  loc_B49826: FLdPr Me
  loc_B49829: VCallAd Control_ID_CucuPersTxt
  loc_B4982C: FStAdFunc var_B4
  loc_B4982F: FLdPr Me
  loc_B49832: VCallAd Control_ID_DetaProvLbl
  loc_B49835: FStAdFunc var_A0
  loc_B49838: FLdRfVar var_A0
  loc_B4983B: FLdZeroAd var_B4
  loc_B4983E: FStAdFuncNoPop
  loc_B49841: CastAd
  loc_B49844: FStAdFunc var_98
  loc_B49847: FLdRfVar var_98
  loc_B4984A: FLdPr Me
  loc_B4984D: MemLdRfVar from_stack_1.global_68
  loc_B49850: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B49855: IStI2 Cancel
  loc_B49858: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B49863: Branch loc_B49B0A
  loc_B49866: FLdRfVar var_9C
  loc_B49869: FLdRfVar var_98
  loc_B4986C: FLdRfVar var_88
  loc_B4986F: ImpAdLdRf MemVar_C3D74C
  loc_B49872: NewIfNullPr bscProveedor
  loc_B49875: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B4987A: FLdPr var_88
  loc_B4987D: from_stack_1v = clsbase.RsFrmGet()
  loc_B49882: FLdPr var_98
  loc_B49885:  = Me.RecordCount
  loc_B4988A: ILdRf var_9C
  loc_B4988D: LitI4 1
  loc_B49892: GtI4
  loc_B49893: FFreeAd var_88 = ""
  loc_B4989A: BranchF loc_B49A75
  loc_B4989D: LitVar_Missing var_D8
  loc_B498A0: PopAdLdVar
  loc_B498A1: LitVarI4
  loc_B498A9: PopAdLdVar
  loc_B498AA: ImpAdLdRf MemVar_C3D74C
  loc_B498AD: NewIfNullPr bscProveedor
  loc_B498B0: bscProveedor.Show from_stack_1, from_stack_2
  loc_B498B5: FLdRfVar var_9C
  loc_B498B8: FLdRfVar var_88
  loc_B498BB: ImpAdLdRf MemVar_C3D74C
  loc_B498BE: NewIfNullPr bscProveedor
  loc_B498C1: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B498C6: FLdPr var_88
  loc_B498C9: from_stack_1 = clsbase.RecordCount
  loc_B498CE: ILdRf var_9C
  loc_B498D1: LitI4 0
  loc_B498D6: GtI4
  loc_B498D7: FFree1Ad var_88
  loc_B498DA: BranchF loc_B499FD
  loc_B498DD: FLdRfVar var_C4
  loc_B498E0: FLdRfVar var_B4
  loc_B498E3: LitVarStr var_B0, "CucuPers"
  loc_B498E8: PopAdLdVar
  loc_B498E9: FLdRfVar var_A0
  loc_B498EC: FLdRfVar var_98
  loc_B498EF: FLdRfVar var_88
  loc_B498F2: ImpAdLdRf MemVar_C3D74C
  loc_B498F5: NewIfNullPr bscProveedor
  loc_B498F8: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B498FD: FLdPr var_88
  loc_B49900: from_stack_1v = clsbase.RsFrmGet()
  loc_B49905: FLdPr var_98
  loc_B49908:  = Me.Fields
  loc_B4990D: FLdPr var_A0
  loc_B49910: from_stack_2 = Me.Item(from_stack_1)
  loc_B49915: FLdPr var_B4
  loc_B49918:  = Me.Value
  loc_B4991D: FLdRfVar var_C4
  loc_B49920: CStrVarTmp
  loc_B49921: FStStrNoPop var_8C
  loc_B49924: FLdPr Me
  loc_B49927: VCallAd Control_ID_CucuPersTxt
  loc_B4992A: FStAdFunc var_C8
  loc_B4992D: FLdPr var_C8
  loc_B49930: Me.Text = from_stack_1
  loc_B49935: FFree1Str var_8C
  loc_B49938: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B49945: FFree1Var var_C4 = ""
  loc_B49948: FLdRfVar var_C4
  loc_B4994B: FLdRfVar var_B4
  loc_B4994E: LitVarStr var_B0, "DetaProv"
  loc_B49953: PopAdLdVar
  loc_B49954: FLdRfVar var_A0
  loc_B49957: FLdRfVar var_98
  loc_B4995A: FLdRfVar var_88
  loc_B4995D: ImpAdLdRf MemVar_C3D74C
  loc_B49960: NewIfNullPr bscProveedor
  loc_B49963: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B49968: FLdPr var_88
  loc_B4996B: from_stack_1v = clsbase.RsFrmGet()
  loc_B49970: FLdPr var_98
  loc_B49973:  = Me.Fields
  loc_B49978: FLdPr var_A0
  loc_B4997B: from_stack_2 = Me.Item(from_stack_1)
  loc_B49980: FLdPr var_B4
  loc_B49983:  = Me.Value
  loc_B49988: FLdRfVar var_C4
  loc_B4998B: CStrVarTmp
  loc_B4998C: FStStrNoPop var_8C
  loc_B4998F: FLdPr Me
  loc_B49992: VCallAd Control_ID_DetaProvLbl
  loc_B49995: FStAdFunc var_C8
  loc_B49998: FLdPr var_C8
  loc_B4999B: Me.Caption = from_stack_1
  loc_B499A0: FFree1Str var_8C
  loc_B499A3: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B499B0: FFree1Var var_C4 = ""
  loc_B499B3: LitStr vbNullString
  loc_B499B6: FLdPr Me
  loc_B499B9: MemStStrCopy
  loc_B499BD: FLdPr Me
  loc_B499C0: VCallAd Control_ID_CucuPersTxt
  loc_B499C3: FStAdFunc var_B4
  loc_B499C6: FLdPr Me
  loc_B499C9: VCallAd Control_ID_DetaProvLbl
  loc_B499CC: FStAdFunc var_A0
  loc_B499CF: FLdRfVar var_A0
  loc_B499D2: FLdZeroAd var_B4
  loc_B499D5: FStAdFuncNoPop
  loc_B499D8: CastAd
  loc_B499DB: FStAdFunc var_98
  loc_B499DE: FLdRfVar var_98
  loc_B499E1: FLdPr Me
  loc_B499E4: MemLdRfVar from_stack_1.global_68
  loc_B499E7: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B499EC: IStI2 Cancel
  loc_B499EF: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B499FA: Branch loc_B49A72
  loc_B499FD: LitStr vbNullString
  loc_B49A00: FLdPr Me
  loc_B49A03: VCallAd Control_ID_CucuPersTxt
  loc_B49A06: FStAdFunc var_88
  loc_B49A09: FLdPr var_88
  loc_B49A0C: Me.Text = from_stack_1
  loc_B49A11: FFree1Ad var_88
  loc_B49A14: LitStr vbNullString
  loc_B49A17: FLdPr Me
  loc_B49A1A: VCallAd Control_ID_DetaProvLbl
  loc_B49A1D: FStAdFunc var_88
  loc_B49A20: FLdPr var_88
  loc_B49A23: Me.Caption = from_stack_1
  loc_B49A28: FFree1Ad var_88
  loc_B49A2B: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B49A2E: FLdPr Me
  loc_B49A31: MemStStrCopy
  loc_B49A35: FLdPr Me
  loc_B49A38: VCallAd Control_ID_CucuPersTxt
  loc_B49A3B: FStAdFunc var_B4
  loc_B49A3E: FLdPr Me
  loc_B49A41: VCallAd Control_ID_DetaProvLbl
  loc_B49A44: FStAdFunc var_A0
  loc_B49A47: FLdRfVar var_A0
  loc_B49A4A: FLdZeroAd var_B4
  loc_B49A4D: FStAdFuncNoPop
  loc_B49A50: CastAd
  loc_B49A53: FStAdFunc var_98
  loc_B49A56: FLdRfVar var_98
  loc_B49A59: FLdPr Me
  loc_B49A5C: MemLdRfVar from_stack_1.global_68
  loc_B49A5F: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B49A64: IStI2 Cancel
  loc_B49A67: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B49A72: Branch loc_B49B0A
  loc_B49A75: FLdRfVar var_9C
  loc_B49A78: FLdRfVar var_98
  loc_B49A7B: FLdRfVar var_88
  loc_B49A7E: ImpAdLdRf MemVar_C3D74C
  loc_B49A81: NewIfNullPr bscProveedor
  loc_B49A84: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B49A89: FLdPr var_88
  loc_B49A8C: from_stack_1v = clsbase.RsFrmGet()
  loc_B49A91: FLdPr var_98
  loc_B49A94:  = Me.RecordCount
  loc_B49A99: ILdRf var_9C
  loc_B49A9C: LitI4 1
  loc_B49AA1: LtI4
  loc_B49AA2: FFreeAd var_88 = ""
  loc_B49AA9: BranchF loc_B49B0A
  loc_B49AAC: LitStr vbNullString
  loc_B49AAF: FLdPr Me
  loc_B49AB2: VCallAd Control_ID_DetaProvLbl
  loc_B49AB5: FStAdFunc var_88
  loc_B49AB8: FLdPr var_88
  loc_B49ABB: Me.Caption = from_stack_1
  loc_B49AC0: FFree1Ad var_88
  loc_B49AC3: LitStr "El Proveedor NO EXISTE. Verique..."
  loc_B49AC6: FLdPr Me
  loc_B49AC9: MemStStrCopy
  loc_B49ACD: FLdPr Me
  loc_B49AD0: VCallAd Control_ID_CucuPersTxt
  loc_B49AD3: FStAdFunc var_B4
  loc_B49AD6: FLdPr Me
  loc_B49AD9: VCallAd Control_ID_DetaProvLbl
  loc_B49ADC: FStAdFunc var_A0
  loc_B49ADF: FLdRfVar var_A0
  loc_B49AE2: FLdZeroAd var_B4
  loc_B49AE5: FStAdFuncNoPop
  loc_B49AE8: CastAd
  loc_B49AEB: FStAdFunc var_98
  loc_B49AEE: FLdRfVar var_98
  loc_B49AF1: FLdPr Me
  loc_B49AF4: MemLdRfVar from_stack_1.global_68
  loc_B49AF7: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B49AFC: IStI2 Cancel
  loc_B49AFF: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B49B0A: Branch loc_B49CBE
  loc_B49B0D: LitI2_Byte &HFF
  loc_B49B0F: ImpAdLdRf MemVar_C3D74C
  loc_B49B12: NewIfNullPr bscProveedor
  loc_B49B15: Call bscProveedor.MuestroAnuladosPut(from_stack_1v)
  loc_B49B1A: LitNothing
  loc_B49B1C: CastAd
  loc_B49B1F: FStAdFuncNoPop
  loc_B49B22: ImpAdLdRf MemVar_C3D74C
  loc_B49B25: NewIfNullPr bscProveedor
  loc_B49B28: Call bscProveedor.global_4315292Set(from_stack_1v)
  loc_B49B2D: FFree1Ad var_88
  loc_B49B30: LitVar_Missing var_D8
  loc_B49B33: PopAdLdVar
  loc_B49B34: LitVarI4
  loc_B49B3C: PopAdLdVar
  loc_B49B3D: ImpAdLdRf MemVar_C3D74C
  loc_B49B40: NewIfNullPr bscProveedor
  loc_B49B43: bscProveedor.Show from_stack_1, from_stack_2
  loc_B49B48: FLdRfVar var_9C
  loc_B49B4B: FLdRfVar var_88
  loc_B49B4E: ImpAdLdRf MemVar_C3D74C
  loc_B49B51: NewIfNullPr bscProveedor
  loc_B49B54: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B49B59: FLdPr var_88
  loc_B49B5C: from_stack_1 = clsbase.RecordCount
  loc_B49B61: ILdRf var_9C
  loc_B49B64: LitI4 0
  loc_B49B69: GtI4
  loc_B49B6A: FFree1Ad var_88
  loc_B49B6D: BranchF loc_B49C49
  loc_B49B70: FLdRfVar var_C4
  loc_B49B73: FLdRfVar var_B4
  loc_B49B76: LitVarStr var_B0, "CucuPers"
  loc_B49B7B: PopAdLdVar
  loc_B49B7C: FLdRfVar var_A0
  loc_B49B7F: FLdRfVar var_98
  loc_B49B82: FLdRfVar var_88
  loc_B49B85: ImpAdLdRf MemVar_C3D74C
  loc_B49B88: NewIfNullPr bscProveedor
  loc_B49B8B: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B49B90: FLdPr var_88
  loc_B49B93: from_stack_1v = clsbase.RsFrmGet()
  loc_B49B98: FLdPr var_98
  loc_B49B9B:  = Me.Fields
  loc_B49BA0: FLdPr var_A0
  loc_B49BA3: from_stack_2 = Me.Item(from_stack_1)
  loc_B49BA8: FLdPr var_B4
  loc_B49BAB:  = Me.Value
  loc_B49BB0: FLdRfVar var_C4
  loc_B49BB3: CStrVarTmp
  loc_B49BB4: FStStrNoPop var_8C
  loc_B49BB7: FLdPr Me
  loc_B49BBA: VCallAd Control_ID_CucuPersTxt
  loc_B49BBD: FStAdFunc var_C8
  loc_B49BC0: FLdPr var_C8
  loc_B49BC3: Me.Text = from_stack_1
  loc_B49BC8: FFree1Str var_8C
  loc_B49BCB: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B49BD8: FFree1Var var_C4 = ""
  loc_B49BDB: FLdRfVar var_C4
  loc_B49BDE: FLdRfVar var_B4
  loc_B49BE1: LitVarStr var_B0, "DetaProv"
  loc_B49BE6: PopAdLdVar
  loc_B49BE7: FLdRfVar var_A0
  loc_B49BEA: FLdRfVar var_98
  loc_B49BED: FLdRfVar var_88
  loc_B49BF0: ImpAdLdRf MemVar_C3D74C
  loc_B49BF3: NewIfNullPr bscProveedor
  loc_B49BF6: from_stack_1v = bscProveedor.global_4315292Get()
  loc_B49BFB: FLdPr var_88
  loc_B49BFE: from_stack_1v = clsbase.RsFrmGet()
  loc_B49C03: FLdPr var_98
  loc_B49C06:  = Me.Fields
  loc_B49C0B: FLdPr var_A0
  loc_B49C0E: from_stack_2 = Me.Item(from_stack_1)
  loc_B49C13: FLdPr var_B4
  loc_B49C16:  = Me.Value
  loc_B49C1B: FLdRfVar var_C4
  loc_B49C1E: CStrVarTmp
  loc_B49C1F: FStStrNoPop var_8C
  loc_B49C22: FLdPr Me
  loc_B49C25: VCallAd Control_ID_DetaProvLbl
  loc_B49C28: FStAdFunc var_C8
  loc_B49C2B: FLdPr var_C8
  loc_B49C2E: Me.Caption = from_stack_1
  loc_B49C33: FFree1Str var_8C
  loc_B49C36: FFreeAd var_88 = "": var_98 = "": var_A0 = "": var_B4 = ""
  loc_B49C43: FFree1Var var_C4 = ""
  loc_B49C46: Branch loc_B49CBE
  loc_B49C49: LitStr vbNullString
  loc_B49C4C: FLdPr Me
  loc_B49C4F: VCallAd Control_ID_CucuPersTxt
  loc_B49C52: FStAdFunc var_88
  loc_B49C55: FLdPr var_88
  loc_B49C58: Me.Text = from_stack_1
  loc_B49C5D: FFree1Ad var_88
  loc_B49C60: LitStr vbNullString
  loc_B49C63: FLdPr Me
  loc_B49C66: VCallAd Control_ID_DetaProvLbl
  loc_B49C69: FStAdFunc var_88
  loc_B49C6C: FLdPr var_88
  loc_B49C6F: Me.Caption = from_stack_1
  loc_B49C74: FFree1Ad var_88
  loc_B49C77: LitStr "El Proveedor NO EXISTE. Verifique..."
  loc_B49C7A: FLdPr Me
  loc_B49C7D: MemStStrCopy
  loc_B49C81: FLdPr Me
  loc_B49C84: VCallAd Control_ID_CucuPersTxt
  loc_B49C87: FStAdFunc var_B4
  loc_B49C8A: FLdPr Me
  loc_B49C8D: VCallAd Control_ID_DetaProvLbl
  loc_B49C90: FStAdFunc var_A0
  loc_B49C93: FLdRfVar var_A0
  loc_B49C96: FLdZeroAd var_B4
  loc_B49C99: FStAdFuncNoPop
  loc_B49C9C: CastAd
  loc_B49C9F: FStAdFunc var_98
  loc_B49CA2: FLdRfVar var_98
  loc_B49CA5: FLdPr Me
  loc_B49CA8: MemLdRfVar from_stack_1.global_68
  loc_B49CAB: ImpAdCallI2 Proc_266_36_9A5460(, , )
  loc_B49CB0: IStI2 Cancel
  loc_B49CB3: FFreeAd var_88 = "": var_98 = "": var_A0 = ""
  loc_B49CBE: ExitProcHresult
End Sub

Private Sub RepetirFechCheqChk_Click() '9E369C
  'Data Table: 4B2A08
  loc_9E3584: FLdRfVar var_8E
  loc_9E3587: FLdPr Me
  loc_9E358A: VCallAd Control_ID_RepetirFechCheqChk
  loc_9E358D: FStAdFunc var_8C
  loc_9E3590: FLdPr var_8C
  loc_9E3593:  = Me.Value
  loc_9E3598: FLdI2 var_8E
  loc_9E359B: LitI2_Byte 1
  loc_9E359D: EqI2
  loc_9E359E: FFree1Ad var_8C
  loc_9E35A1: BranchF loc_9E3698
  loc_9E35A4: LitStr vbNullString
  loc_9E35A7: FStStrCopy var_88
  loc_9E35AA: LitI2_Byte 1
  loc_9E35AC: FLdPr Me
  loc_9E35AF: MemLdRfVar from_stack_1.global_72
  loc_9E35B2: FLdPr Me
  loc_9E35B5: VCallAd Control_ID_FlexCheque
  loc_9E35B8: FStAdFunc var_8C
  loc_9E35BB: FLdPr var_8C
  loc_9E35BE: LateIdLdVar var_A0 DispID_4 0
  loc_9E35C5: CI4Var
  loc_9E35C7: LitI4 1
  loc_9E35CC: SubI4
  loc_9E35CD: CI2I4
  loc_9E35CE: FFree1Ad var_8C
  loc_9E35D1: FFree1Var var_A0 = ""
  loc_9E35D4: ForI2 var_A4
  loc_9E35DA: FLdPr Me
  loc_9E35DD: MemLdI2 global_72
  loc_9E35E0: CI4UI1
  loc_9E35E1: CVarI4
  loc_9E35E5: PopAdLdVar
  loc_9E35E6: LitVarI4
  loc_9E35EE: PopAdLdVar
  loc_9E35EF: FLdPr Me
  loc_9E35F2: VCallAd Control_ID_FlexCheque
  loc_9E35F5: FStAdFunc var_8C
  loc_9E35F8: FLdPr var_8C
  loc_9E35FB: LateIdCallLdVar
  loc_9E3605: CStrVarTmp
  loc_9E3606: FStStrNoPop var_E8
  loc_9E3609: LitStr "No"
  loc_9E360C: EqStr
  loc_9E360E: FFree1Str var_E8
  loc_9E3611: FFree1Ad var_8C
  loc_9E3614: FFree1Var var_A0 = ""
  loc_9E3617: BranchF loc_9E368D
  loc_9E361A: ILdRf var_88
  loc_9E361D: LitStr vbNullString
  loc_9E3620: EqStr
  loc_9E3622: BranchF loc_9E365A
  loc_9E3625: FLdPr Me
  loc_9E3628: MemLdI2 global_72
  loc_9E362B: CI4UI1
  loc_9E362C: CVarI4
  loc_9E3630: PopAdLdVar
  loc_9E3631: LitVarI4
  loc_9E3639: PopAdLdVar
  loc_9E363A: FLdPr Me
  loc_9E363D: VCallAd Control_ID_FlexCheque
  loc_9E3640: FStAdFunc var_8C
  loc_9E3643: FLdPr var_8C
  loc_9E3646: LateIdCallLdVar
  loc_9E3650: CStrVarTmp
  loc_9E3651: FStStr var_88
  loc_9E3654: FFree1Ad var_8C
  loc_9E3657: FFree1Var var_A0 = ""
  loc_9E365A: FLdPr Me
  loc_9E365D: MemLdI2 global_72
  loc_9E3660: CI4UI1
  loc_9E3661: CVarI4
  loc_9E3665: PopAdLdVar
  loc_9E3666: LitVarI4
  loc_9E366E: PopAdLdVar
  loc_9E366F: FLdRfVar var_88
  loc_9E3672: CDargRef
  loc_9E3676: FLdPr Me
  loc_9E3679: VCallAd Control_ID_FlexCheque
  loc_9E367C: FStAdFunc var_8C
  loc_9E367F: FLdPr var_8C
  loc_9E3682: LateIdCallSt
  loc_9E368A: FFree1Ad var_8C
  loc_9E368D: FLdPr Me
  loc_9E3690: MemLdRfVar from_stack_1.global_72
  loc_9E3693: NextI2 var_A4, loc_9E35DA
  loc_9E3698: ExitProcHresult
  loc_9E3699: CI4Str
  loc_9E369A: CExtInstUnk
End Sub

Private Sub BancoCbo_LostFocus() 'AA0E68
  'Data Table: 4B2A08
  loc_AA09AC: FLdRfVar var_8C
  loc_AA09AF: FLdPr Me
  loc_AA09B2: VCallAd Control_ID_BancoCbo
  loc_AA09B5: FStAdFunc var_88
  loc_AA09B8: FLdPr var_88
  loc_AA09BB:  = Me.Text
  loc_AA09C0: LitVarI2 var_AC, 2
  loc_AA09C5: LitI4 1
  loc_AA09CA: ILdRf var_8C
  loc_AA09CD: ImpAdCallI2 Mid$(, , )
  loc_AA09D2: CVarStr var_BC
  loc_AA09D5: ImpAdCallI2 IsNumeric()
  loc_AA09DA: FFree1Str var_8C
  loc_AA09DD: FFree1Ad var_88
  loc_AA09E0: FFreeVar var_AC = ""
  loc_AA09E7: BranchF loc_AA0E67
  loc_AA09EA: FLdRfVar var_CC
  loc_AA09ED: FLdPr Me
  loc_AA09F0: VCallAd Control_ID_BancoCbo
  loc_AA09F3: FStAdFunc var_88
  loc_AA09F6: FLdPr var_88
  loc_AA09F9:  = Me.Text
  loc_AA09FE: LitStr "SELECT *"
  loc_AA0A01: LitStr " FROM banco"
  loc_AA0A04: ConcatStr
  loc_AA0A05: FStStrNoPop var_8C
  loc_AA0A08: LitStr " WHERE PeriInfo = "
  loc_AA0A0B: ConcatStr
  loc_AA0A0C: FStStrNoPop var_C0
  loc_AA0A0F: ImpAdLdI2 MemVar_C3D064
  loc_AA0A12: CStrUI1
  loc_AA0A14: FStStrNoPop var_C4
  loc_AA0A17: ConcatStr
  loc_AA0A18: FStStrNoPop var_C8
  loc_AA0A1B: LitStr " AND CodiBanc = "
  loc_AA0A1E: ConcatStr
  loc_AA0A1F: FStStrNoPop var_D8
  loc_AA0A22: LitI4 1
  loc_AA0A27: FLdRfVar var_D4
  loc_AA0A2A: FLdPr Me
  loc_AA0A2D: VCallAd Control_ID_BancoCbo
  loc_AA0A30: FStAdFunc var_D0
  loc_AA0A33: FLdPr var_D0
  loc_AA0A36:  = Me.Text
  loc_AA0A3B: ILdRf var_D4
  loc_AA0A3E: LitStr "-"
  loc_AA0A41: LitI4 0
  loc_AA0A46: FnInStr4
  loc_AA0A48: LitI4 1
  loc_AA0A4D: SubI4
  loc_AA0A4E: CVarI4
  loc_AA0A52: LitI4 1
  loc_AA0A57: ILdRf var_CC
  loc_AA0A5A: ImpAdCallI2 Mid$(, , )
  loc_AA0A5F: FStStrNoPop var_DC
  loc_AA0A62: ConcatStr
  loc_AA0A63: FStStrNoPop var_E0
  loc_AA0A66: LitStr ";"
  loc_AA0A69: ConcatStr
  loc_AA0A6A: FStStrNoPop var_E4
  loc_AA0A6D: FLdPr Me
  loc_AA0A70: MemLdRfVar from_stack_1.global_56
  loc_AA0A73: NewIfNullPr clsbanco
  loc_AA0A76: Call clsbanco.RedefineRS(from_stack_1v)
  loc_AA0A7B: FFreeStr var_8C = "": var_C0 = "": var_C4 = "": var_C8 = "": var_D4 = "": var_CC = "": var_D8 = "": var_DC = "": var_E0 = ""
  loc_AA0A92: FFreeAd var_88 = ""
  loc_AA0A99: FFree1Var var_AC = ""
  loc_AA0A9C: FLdRfVar var_AC
  loc_AA0A9F: FLdRfVar var_E8
  loc_AA0AA2: LitVarStr var_9C, "UlchBanc"
  loc_AA0AA7: PopAdLdVar
  loc_AA0AA8: FLdRfVar var_D0
  loc_AA0AAB: FLdRfVar var_88
  loc_AA0AAE: FLdPr Me
  loc_AA0AB1: MemLdRfVar from_stack_1.global_56
  loc_AA0AB4: NewIfNullPr clsbanco
  loc_AA0AB7: from_stack_1v = clsbanco.RsFrmGet()
  loc_AA0ABC: FLdPr var_88
  loc_AA0ABF:  = Me.Fields
  loc_AA0AC4: FLdPr var_D0
  loc_AA0AC7: from_stack_2 = Me.Item(from_stack_1)
  loc_AA0ACC: FLdPr var_E8
  loc_AA0ACF:  = Me.Value
  loc_AA0AD4: FLdRfVar var_AC
  loc_AA0AD7: CI4Var
  loc_AA0AD9: FLdPr Me
  loc_AA0ADC: MemStI4 global_76
  loc_AA0ADF: FFreeAd var_88 = "": var_D0 = ""
  loc_AA0AE8: FFree1Var var_AC = ""
  loc_AA0AEB: LitI2_Byte 1
  loc_AA0AED: FLdPr Me
  loc_AA0AF0: MemLdRfVar from_stack_1.global_72
  loc_AA0AF3: FLdPr Me
  loc_AA0AF6: VCallAd Control_ID_FlexCheque
  loc_AA0AF9: FStAdFunc var_88
  loc_AA0AFC: FLdPr var_88
  loc_AA0AFF: LateIdLdVar var_AC DispID_4 0
  loc_AA0B06: CI4Var
  loc_AA0B08: LitI4 1
  loc_AA0B0D: SubI4
  loc_AA0B0E: CI2I4
  loc_AA0B0F: FFree1Ad var_88
  loc_AA0B12: FFree1Var var_AC = ""
  loc_AA0B15: ForI2 var_EC
  loc_AA0B1B: FLdRfVar var_8C
  loc_AA0B1E: FLdPr Me
  loc_AA0B21: VCallAd Control_ID_BancoCbo
  loc_AA0B24: FStAdFunc var_88
  loc_AA0B27: FLdPr var_88
  loc_AA0B2A:  = Me.Text
  loc_AA0B2F: FLdPr Me
  loc_AA0B32: MemLdI2 global_72
  loc_AA0B35: CI4UI1
  loc_AA0B36: CVarI4
  loc_AA0B3A: PopAdLdVar
  loc_AA0B3B: LitVarI4
  loc_AA0B43: PopAdLdVar
  loc_AA0B44: LitVarI2 var_AC, 20
  loc_AA0B49: LitI4 1
  loc_AA0B4E: ILdRf var_8C
  loc_AA0B51: ImpAdCallI2 Mid$(, , )
  loc_AA0B56: CVarStr var_BC
  loc_AA0B59: PopAdLdVar
  loc_AA0B5A: FLdPr Me
  loc_AA0B5D: VCallAd Control_ID_FlexCheque
  loc_AA0B60: FStAdFunc var_D0
  loc_AA0B63: FLdPr var_D0
  loc_AA0B66: LateIdCallSt
  loc_AA0B6E: FFree1Str var_8C
  loc_AA0B71: FFreeAd var_88 = ""
  loc_AA0B78: FFreeVar var_AC = ""
  loc_AA0B7F: FLdPr Me
  loc_AA0B82: MemLdI2 global_72
  loc_AA0B85: CI4UI1
  loc_AA0B86: CVarI4
  loc_AA0B8A: PopAdLdVar
  loc_AA0B8B: LitVarI4
  loc_AA0B93: PopAdLdVar
  loc_AA0B94: FLdPr Me
  loc_AA0B97: VCallAd Control_ID_FlexCheque
  loc_AA0B9A: FStAdFunc var_88
  loc_AA0B9D: FLdPr var_88
  loc_AA0BA0: LateIdCallLdVar
  loc_AA0BAA: CStrVarTmp
  loc_AA0BAB: FStStrNoPop var_8C
  loc_AA0BAE: LitStr "0"
  loc_AA0BB1: EqStr
  loc_AA0BB3: FLdPr Me
  loc_AA0BB6: MemLdI2 global_72
  loc_AA0BB9: CI4UI1
  loc_AA0BBA: CVarI4
  loc_AA0BBE: PopAdLdVar
  loc_AA0BBF: LitVarI4
  loc_AA0BC7: PopAdLdVar
  loc_AA0BC8: FLdPr Me
  loc_AA0BCB: VCallAd Control_ID_FlexCheque
  loc_AA0BCE: FStAdFunc var_D0
  loc_AA0BD1: FLdPr var_D0
  loc_AA0BD4: LateIdCallLdVar
  loc_AA0BDE: CStrVarTmp
  loc_AA0BDF: FStStrNoPop var_C0
  loc_AA0BE2: LitStr vbNullString
  loc_AA0BE5: EqStr
  loc_AA0BE7: AndI4
  loc_AA0BE8: FLdPr Me
  loc_AA0BEB: MemLdI2 global_72
  loc_AA0BEE: CI4UI1
  loc_AA0BEF: CVarI4
  loc_AA0BF3: PopAdLdVar
  loc_AA0BF4: LitVarI4
  loc_AA0BFC: PopAdLdVar
  loc_AA0BFD: FLdPr Me
  loc_AA0C00: VCallAd Control_ID_FlexCheque
  loc_AA0C03: FStAdFunc var_E8
  loc_AA0C06: FLdPr var_E8
  loc_AA0C09: LateIdCallLdVar
  loc_AA0C13: CStrVarTmp
  loc_AA0C14: FStStrNoPop var_C4
  loc_AA0C17: LitStr "Manual"
  loc_AA0C1A: EqStr
  loc_AA0C1C: FLdPr Me
  loc_AA0C1F: MemLdI2 global_72
  loc_AA0C22: CI4UI1
  loc_AA0C23: CVarI4
  loc_AA0C27: PopAdLdVar
  loc_AA0C28: LitVarI4
  loc_AA0C30: PopAdLdVar
  loc_AA0C31: FLdPr Me
  loc_AA0C34: VCallAd Control_ID_FlexCheque
  loc_AA0C37: FStAdFunc var_1F0
  loc_AA0C3A: FLdPr var_1F0
  loc_AA0C3D: LateIdCallLdVar
  loc_AA0C47: CStrVarTmp
  loc_AA0C48: FStStrNoPop var_C8
  loc_AA0C4B: LitStr "eCheq"
  loc_AA0C4E: EqStr
  loc_AA0C50: OrI4
  loc_AA0C51: AndI4
  loc_AA0C52: FFreeStr var_8C = "": var_C0 = "": var_C4 = ""
  loc_AA0C5D: FFreeAd var_88 = "": var_D0 = "": var_E8 = ""
  loc_AA0C68: FFreeVar var_AC = "": var_BC = "": var_1AC = ""
  loc_AA0C73: BranchF loc_AA0E5C
  loc_AA0C76: FLdPr Me
  loc_AA0C79: MemLdI2 global_72
  loc_AA0C7C: CI4UI1
  loc_AA0C7D: CVarI4
  loc_AA0C81: PopAdLdVar
  loc_AA0C82: LitVarI4
  loc_AA0C8A: PopAdLdVar
  loc_AA0C8B: LitI2_Byte 0
  loc_AA0C8D: PopTmpLdAd2 var_202
  loc_AA0C90: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_AA0C95: CStrDate
  loc_AA0C97: CVarStr var_AC
  loc_AA0C9A: PopAdLdVar
  loc_AA0C9B: FLdPr Me
  loc_AA0C9E: VCallAd Control_ID_FlexCheque
  loc_AA0CA1: FStAdFunc var_88
  loc_AA0CA4: FLdPr var_88
  loc_AA0CA7: LateIdCallSt
  loc_AA0CAF: FFree1Ad var_88
  loc_AA0CB2: FFree1Var var_AC = ""
  loc_AA0CB5: FLdRfVar var_AC
  loc_AA0CB8: FLdRfVar var_E8
  loc_AA0CBB: LitVarStr var_9C, "EmauCheq"
  loc_AA0CC0: PopAdLdVar
  loc_AA0CC1: FLdRfVar var_D0
  loc_AA0CC4: FLdRfVar var_88
  loc_AA0CC7: FLdPr Me
  loc_AA0CCA: MemLdRfVar from_stack_1.global_56
  loc_AA0CCD: NewIfNullPr clsbanco
  loc_AA0CD0: from_stack_1v = clsbanco.RsFrmGet()
  loc_AA0CD5: FLdPr var_88
  loc_AA0CD8:  = Me.Fields
  loc_AA0CDD: FLdPr var_D0
  loc_AA0CE0: from_stack_2 = Me.Item(from_stack_1)
  loc_AA0CE5: FLdPr var_E8
  loc_AA0CE8:  = Me.Value
  loc_AA0CED: FLdRfVar var_AC
  loc_AA0CF0: LitVarStr var_FC, "0"
  loc_AA0CF5: HardType
  loc_AA0CF6: EqVarBool
  loc_AA0CF8: FFreeAd var_88 = "": var_D0 = ""
  loc_AA0D01: FFree1Var var_AC = ""
  loc_AA0D04: BranchF loc_AA0DD8
  loc_AA0D07: FLdPr Me
  loc_AA0D0A: MemLdStr global_76
  loc_AA0D0D: LitI4 1
  loc_AA0D12: AddI4
  loc_AA0D13: FLdPr Me
  loc_AA0D16: MemStI4 global_76
  loc_AA0D19: FLdPr Me
  loc_AA0D1C: MemLdI2 global_72
  loc_AA0D1F: CI4UI1
  loc_AA0D20: CVarI4
  loc_AA0D24: PopAdLdVar
  loc_AA0D25: LitVarI4
  loc_AA0D2D: PopAdLdVar
  loc_AA0D2E: FLdRfVar var_AC
  loc_AA0D31: FLdRfVar var_E8
  loc_AA0D34: LitVarStr var_9C, "NumeOrpa"
  loc_AA0D39: PopAdLdVar
  loc_AA0D3A: FLdRfVar var_D0
  loc_AA0D3D: FLdRfVar var_88
  loc_AA0D40: FLdPr Me
  loc_AA0D43: MemLdRfVar from_stack_1.global_52
  loc_AA0D46: NewIfNullPr clsordenpago
  loc_AA0D49: from_stack_1v = clsordenpago.RsFrmGet()
  loc_AA0D4E: FLdPr var_88
  loc_AA0D51:  = Me.Fields
  loc_AA0D56: FLdPr var_D0
  loc_AA0D59: from_stack_2 = Me.Item(from_stack_1)
  loc_AA0D5E: FLdPr var_E8
  loc_AA0D61:  = Me.Value
  loc_AA0D66: FLdRfVar var_AC
  loc_AA0D69: FLdPr Me
  loc_AA0D6C: MemLdI2 global_72
  loc_AA0D6F: CVarI2 var_FC
  loc_AA0D72: ConcatVar var_BC
  loc_AA0D76: CStrVarTmp
  loc_AA0D77: CVarStr var_1AC
  loc_AA0D7A: PopAdLdVar
  loc_AA0D7B: FLdPr Me
  loc_AA0D7E: VCallAd Control_ID_FlexCheque
  loc_AA0D81: FStAdFunc var_1F0
  loc_AA0D84: FLdPr var_1F0
  loc_AA0D87: LateIdCallSt
  loc_AA0D8F: FFreeAd var_88 = "": var_D0 = "": var_E8 = ""
  loc_AA0D9A: FFreeVar var_AC = "": var_BC = ""
  loc_AA0DA3: FLdPr Me
  loc_AA0DA6: MemLdI2 global_72
  loc_AA0DA9: CI4UI1
  loc_AA0DAA: CVarI4
  loc_AA0DAE: PopAdLdVar
  loc_AA0DAF: LitVarI4
  loc_AA0DB7: PopAdLdVar
  loc_AA0DB8: LitVarStr var_12C, "Manual"
  loc_AA0DBD: PopAdLdVar
  loc_AA0DBE: FLdPr Me
  loc_AA0DC1: VCallAd Control_ID_FlexCheque
  loc_AA0DC4: FStAdFunc var_88
  loc_AA0DC7: FLdPr var_88
  loc_AA0DCA: LateIdCallSt
  loc_AA0DD2: FFree1Ad var_88
  loc_AA0DD5: Branch loc_AA0E5C
  loc_AA0DD8: FLdRfVar var_AC
  loc_AA0DDB: FLdRfVar var_E8
  loc_AA0DDE: LitVarStr var_9C, "EmauCheq"
  loc_AA0DE3: PopAdLdVar
  loc_AA0DE4: FLdRfVar var_D0
  loc_AA0DE7: FLdRfVar var_88
  loc_AA0DEA: FLdPr Me
  loc_AA0DED: MemLdRfVar from_stack_1.global_56
  loc_AA0DF0: NewIfNullPr clsbanco
  loc_AA0DF3: from_stack_1v = clsbanco.RsFrmGet()
  loc_AA0DF8: FLdPr var_88
  loc_AA0DFB:  = Me.Fields
  loc_AA0E00: FLdPr var_D0
  loc_AA0E03: from_stack_2 = Me.Item(from_stack_1)
  loc_AA0E08: FLdPr var_E8
  loc_AA0E0B:  = Me.Value
  loc_AA0E10: FLdRfVar var_AC
  loc_AA0E13: LitVarStr var_FC, "1"
  loc_AA0E18: HardType
  loc_AA0E19: EqVarBool
  loc_AA0E1B: FFreeAd var_88 = "": var_D0 = ""
  loc_AA0E24: FFree1Var var_AC = ""
  loc_AA0E27: BranchF loc_AA0E5C
  loc_AA0E2A: FLdPr Me
  loc_AA0E2D: MemLdI2 global_72
  loc_AA0E30: CI4UI1
  loc_AA0E31: CVarI4
  loc_AA0E35: PopAdLdVar
  loc_AA0E36: LitVarI4
  loc_AA0E3E: PopAdLdVar
  loc_AA0E3F: LitVarStr var_12C, "Impreso"
  loc_AA0E44: PopAdLdVar
  loc_AA0E45: FLdPr Me
  loc_AA0E48: VCallAd Control_ID_FlexCheque
  loc_AA0E4B: FStAdFunc var_88
  loc_AA0E4E: FLdPr var_88
  loc_AA0E51: LateIdCallSt
  loc_AA0E59: FFree1Ad var_88
  loc_AA0E5C: FLdPr Me
  loc_AA0E5F: MemLdRfVar from_stack_1.global_72
  loc_AA0E62: NextI2 var_EC, loc_AA0B1B
  loc_AA0E67: ExitProcHresult
End Sub

Private Sub FiltroCbo_Click() '9B84D4
  'Data Table: 4B2A08
  loc_9B841C: LitVarStr var_94, vbNullString
  loc_9B8421: PopAdLdVar
  loc_9B8422: FLdPr Me
  loc_9B8425: VCallAd Control_ID_FiltroMsk
  loc_9B8428: FStAdFunc var_A8
  loc_9B842B: FLdPr var_A8
  loc_9B842E: LateIdSt
  loc_9B8433: FFree1Ad var_A8
  loc_9B8436: FLdRfVar var_AA
  loc_9B8439: FLdPr Me
  loc_9B843C: VCallAd Control_ID_FiltroCbo
  loc_9B843F: FStAdFunc var_A8
  loc_9B8442: FLdPr var_A8
  loc_9B8445:  = Me.ListIndex
  loc_9B844A: FLdI2 var_AA
  loc_9B844D: FStI2 var_AC
  loc_9B8450: FFree1Ad var_A8
  loc_9B8453: FLdI2 var_AC
  loc_9B8456: LitI2_Byte 0
  loc_9B8458: EqI2
  loc_9B8459: BranchF loc_9B8493
  loc_9B845C: LitVarStr var_94, "######"
  loc_9B8461: PopAdLdVar
  loc_9B8462: FLdPr Me
  loc_9B8465: VCallAd Control_ID_FiltroMsk
  loc_9B8468: FStAdFunc var_A8
  loc_9B846B: FLdPr var_A8
  loc_9B846E: LateIdSt
  loc_9B8473: FFree1Ad var_A8
  loc_9B8476: LitStr "NumeOrpa"
  loc_9B8479: FStStrCopy var_B0
  loc_9B847C: FLdRfVar var_B0
  loc_9B847F: FLdPr Me
  loc_9B8482: MemLdRfVar from_stack_1.global_52
  loc_9B8485: NewIfNullPr clsordenpago
  loc_9B8488: Call clsordenpago.Sort(from_stack_1v)
  loc_9B848D: FFree1Str var_B0
  loc_9B8490: Branch loc_9B84D0
  loc_9B8493: FLdI2 var_AC
  loc_9B8496: LitI2_Byte 1
  loc_9B8498: EqI2
  loc_9B8499: BranchF loc_9B84D0
  loc_9B849C: LitVarStr var_94, vbNullString
  loc_9B84A1: PopAdLdVar
  loc_9B84A2: FLdPr Me
  loc_9B84A5: VCallAd Control_ID_FiltroMsk
  loc_9B84A8: FStAdFunc var_A8
  loc_9B84AB: FLdPr var_A8
  loc_9B84AE: LateIdSt
  loc_9B84B3: FFree1Ad var_A8
  loc_9B84B6: LitStr "ExpeImpu"
  loc_9B84B9: FStStrCopy var_B0
  loc_9B84BC: FLdRfVar var_B0
  loc_9B84BF: FLdPr Me
  loc_9B84C2: MemLdRfVar from_stack_1.global_52
  loc_9B84C5: NewIfNullPr clsordenpago
  loc_9B84C8: Call clsordenpago.Sort(from_stack_1v)
  loc_9B84CD: FFree1Str var_B0
  loc_9B84D0: ExitProcHresult
End Sub

Private Sub CmdImprimirOrdendePago_Click() 'A51EF8
  'Data Table: 4B2A08
  loc_A51C48: FLdRfVar var_88
  loc_A51C4B: FLdPr Me
  loc_A51C4E: MemLdRfVar from_stack_1.global_52
  loc_A51C51: NewIfNullPr clsordenpago
  loc_A51C54: from_stack_1 = clsordenpago.RecordCount
  loc_A51C59: ILdRf var_88
  loc_A51C5C: LitI4 0
  loc_A51C61: GtI4
  loc_A51C62: BranchF loc_A51D2D
  loc_A51C65: FLdRfVar var_B4
  loc_A51C68: FLdRfVar var_A4
  loc_A51C6B: LitVarStr var_A0, "PeriInfo"
  loc_A51C70: PopAdLdVar
  loc_A51C71: FLdRfVar var_90
  loc_A51C74: FLdRfVar var_8C
  loc_A51C77: FLdPr Me
  loc_A51C7A: MemLdRfVar from_stack_1.global_52
  loc_A51C7D: NewIfNullPr clsordenpago
  loc_A51C80: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A51C85: FLdPr var_8C
  loc_A51C88:  = Me.Fields
  loc_A51C8D: FLdPr var_90
  loc_A51C90: from_stack_2 = Me.Item(from_stack_1)
  loc_A51C95: FLdPr var_A4
  loc_A51C98:  = Me.Value
  loc_A51C9D: FLdRfVar var_B4
  loc_A51CA0: CStrVarTmp
  loc_A51CA1: FStStrNoPop var_B8
  loc_A51CA4: ImpAdLdRf MemVar_C3DAD4
  loc_A51CA7: NewIfNullPr rptOrdenPago
  loc_A51CAA: VCallAd Control_ID_cboPeriodo
  loc_A51CAD: FStAdFunc var_BC
  loc_A51CB0: FLdPr var_BC
  loc_A51CB3: rptOrdenPago.ComboBox.Text = from_stack_1
  loc_A51CB8: FFree1Str var_B8
  loc_A51CBB: FFreeAd var_8C = "": var_90 = "": var_A4 = ""
  loc_A51CC6: FFree1Var var_B4 = ""
  loc_A51CC9: FLdRfVar var_B4
  loc_A51CCC: FLdRfVar var_A4
  loc_A51CCF: LitVarStr var_A0, "NumeOrpa"
  loc_A51CD4: PopAdLdVar
  loc_A51CD5: FLdRfVar var_90
  loc_A51CD8: FLdRfVar var_8C
  loc_A51CDB: FLdPr Me
  loc_A51CDE: MemLdRfVar from_stack_1.global_52
  loc_A51CE1: NewIfNullPr clsordenpago
  loc_A51CE4: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A51CE9: FLdPr var_8C
  loc_A51CEC:  = Me.Fields
  loc_A51CF1: FLdPr var_90
  loc_A51CF4: from_stack_2 = Me.Item(from_stack_1)
  loc_A51CF9: FLdPr var_A4
  loc_A51CFC:  = Me.Value
  loc_A51D01: FLdRfVar var_B4
  loc_A51D04: CStrVarTmp
  loc_A51D05: FStStrNoPop var_B8
  loc_A51D08: ImpAdLdRf MemVar_C3DAD4
  loc_A51D0B: NewIfNullPr rptOrdenPago
  loc_A51D0E: VCallAd Control_ID_NumeOrpaTxt
  loc_A51D11: FStAdFunc var_BC
  loc_A51D14: FLdPr var_BC
  loc_A51D17: rptOrdenPago.TextBox.Text = from_stack_1
  loc_A51D1C: FFree1Str var_B8
  loc_A51D1F: FFreeAd var_8C = "": var_90 = "": var_A4 = ""
  loc_A51D2A: FFree1Var var_B4 = ""
  loc_A51D2D: LitVar_Missing var_CC
  loc_A51D30: PopAdLdVar
  loc_A51D31: LitVarI4
  loc_A51D39: PopAdLdVar
  loc_A51D3A: ImpAdLdRf MemVar_C3DAD4
  loc_A51D3D: NewIfNullPr rptOrdenPago
  loc_A51D40: rptOrdenPago.Show from_stack_1, from_stack_2
  loc_A51D45: FLdRfVar var_88
  loc_A51D48: FLdPr Me
  loc_A51D4B: MemLdRfVar from_stack_1.global_52
  loc_A51D4E: NewIfNullPr clsordenpago
  loc_A51D51: from_stack_1 = clsordenpago.RecordCount
  loc_A51D56: ILdRf var_88
  loc_A51D59: LitI4 0
  loc_A51D5E: GtI4
  loc_A51D5F: BranchF loc_A51EF6
  loc_A51D62: FLdRfVar var_B4
  loc_A51D65: FLdRfVar var_A4
  loc_A51D68: LitVarStr var_A0, "PeriInfo"
  loc_A51D6D: PopAdLdVar
  loc_A51D6E: FLdRfVar var_90
  loc_A51D71: FLdRfVar var_8C
  loc_A51D74: FLdPr Me
  loc_A51D77: MemLdRfVar from_stack_1.global_52
  loc_A51D7A: NewIfNullPr clsordenpago
  loc_A51D7D: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A51D82: FLdPr var_8C
  loc_A51D85:  = Me.Fields
  loc_A51D8A: FLdPr var_90
  loc_A51D8D: from_stack_2 = Me.Item(from_stack_1)
  loc_A51D92: FLdPr var_A4
  loc_A51D95:  = Me.Value
  loc_A51D9A: FLdRfVar var_E4
  loc_A51D9D: FLdRfVar var_D4
  loc_A51DA0: LitVarStr var_CC, "NumeOrpa"
  loc_A51DA5: PopAdLdVar
  loc_A51DA6: FLdRfVar var_D0
  loc_A51DA9: FLdRfVar var_BC
  loc_A51DAC: FLdPr Me
  loc_A51DAF: MemLdRfVar from_stack_1.global_52
  loc_A51DB2: NewIfNullPr clsordenpago
  loc_A51DB5: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A51DBA: FLdPr var_BC
  loc_A51DBD:  = Me.Fields
  loc_A51DC2: FLdPr var_D0
  loc_A51DC5: from_stack_2 = Me.Item(from_stack_1)
  loc_A51DCA: FLdPr var_D4
  loc_A51DCD:  = Me.Value
  loc_A51DD2: FLdRfVar var_E6
  loc_A51DD5: LitI4 0
  loc_A51DDA: FStStrCopy var_B8
  loc_A51DDD: FLdRfVar var_B8
  loc_A51DE0: FLdRfVar var_E4
  loc_A51DE3: CI4Var
  loc_A51DE5: FLdRfVar var_B4
  loc_A51DE8: CI2Var
  loc_A51DE9: FLdPr Me
  loc_A51DEC: MemLdRfVar from_stack_1.global_52
  loc_A51DEF: NewIfNullPr clsordenpago
  loc_A51DF2: from_stack_4v = clsordenpago.TieneRetenciones(from_stack_1v, from_stack_2v, from_stack_3v)
  loc_A51DF7: FLdI2 var_E6
  loc_A51DFA: FFree1Str var_B8
  loc_A51DFD: FFreeAd var_8C = "": var_90 = "": var_BC = "": var_D0 = "": var_A4 = ""
  loc_A51E0C: FFreeVar var_B4 = ""
  loc_A51E13: BranchF loc_A51EF6
  loc_A51E16: FLdRfVar var_B4
  loc_A51E19: FLdRfVar var_A4
  loc_A51E1C: LitVarStr var_A0, "PeriInfo"
  loc_A51E21: PopAdLdVar
  loc_A51E22: FLdRfVar var_90
  loc_A51E25: FLdRfVar var_8C
  loc_A51E28: FLdPr Me
  loc_A51E2B: MemLdRfVar from_stack_1.global_52
  loc_A51E2E: NewIfNullPr clsordenpago
  loc_A51E31: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A51E36: FLdPr var_8C
  loc_A51E39:  = Me.Fields
  loc_A51E3E: FLdPr var_90
  loc_A51E41: from_stack_2 = Me.Item(from_stack_1)
  loc_A51E46: FLdPr var_A4
  loc_A51E49:  = Me.Value
  loc_A51E4E: FLdRfVar var_B4
  loc_A51E51: CStrVarTmp
  loc_A51E52: FStStrNoPop var_B8
  loc_A51E55: ImpAdLdRf MemVar_C3D85C
  loc_A51E58: NewIfNullPr rptCertificadoderetencion
  loc_A51E5B: VCallAd Control_ID_cboPeriodo
  loc_A51E5E: FStAdFunc var_BC
  loc_A51E61: FLdPr var_BC
  loc_A51E64: rptCertificadoderetencion.ComboBox.Text = from_stack_1
  loc_A51E69: FFree1Str var_B8
  loc_A51E6C: FFreeAd var_8C = "": var_90 = "": var_A4 = ""
  loc_A51E77: FFree1Var var_B4 = ""
  loc_A51E7A: FLdRfVar var_B4
  loc_A51E7D: FLdRfVar var_A4
  loc_A51E80: LitVarStr var_A0, "NumeOrpa"
  loc_A51E85: PopAdLdVar
  loc_A51E86: FLdRfVar var_90
  loc_A51E89: FLdRfVar var_8C
  loc_A51E8C: FLdPr Me
  loc_A51E8F: MemLdRfVar from_stack_1.global_52
  loc_A51E92: NewIfNullPr clsordenpago
  loc_A51E95: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A51E9A: FLdPr var_8C
  loc_A51E9D:  = Me.Fields
  loc_A51EA2: FLdPr var_90
  loc_A51EA5: from_stack_2 = Me.Item(from_stack_1)
  loc_A51EAA: FLdPr var_A4
  loc_A51EAD:  = Me.Value
  loc_A51EB2: FLdRfVar var_B4
  loc_A51EB5: CStrVarTmp
  loc_A51EB6: FStStrNoPop var_B8
  loc_A51EB9: ImpAdLdRf MemVar_C3D85C
  loc_A51EBC: NewIfNullPr rptCertificadoderetencion
  loc_A51EBF: VCallAd Control_ID_NumeOrpaTxt
  loc_A51EC2: FStAdFunc var_BC
  loc_A51EC5: FLdPr var_BC
  loc_A51EC8: rptCertificadoderetencion.TextBox.Text = from_stack_1
  loc_A51ECD: FFree1Str var_B8
  loc_A51ED0: FFreeAd var_8C = "": var_90 = "": var_A4 = ""
  loc_A51EDB: FFree1Var var_B4 = ""
  loc_A51EDE: LitVar_Missing var_CC
  loc_A51EE1: PopAdLdVar
  loc_A51EE2: LitVarI4
  loc_A51EEA: PopAdLdVar
  loc_A51EEB: ImpAdLdRf MemVar_C3D85C
  loc_A51EEE: NewIfNullPr rptCertificadoderetencion
  loc_A51EF1: rptCertificadoderetencion.Show from_stack_1, from_stack_2
  loc_A51EF6: ExitProcHresult
End Sub

Private Sub FlexCheque_UnknownEvent_0 '9B3C64
  'Data Table: 4B2A08
  loc_9B3BC0: FLdPr Me
  loc_9B3BC3: VCallAd Control_ID_FlexCheque
  loc_9B3BC6: FStAdFunc var_88
  loc_9B3BC9: FLdPr var_88
  loc_9B3BCC: LateIdLdVar var_98 DispID_11 0
  loc_9B3BD3: CI4Var
  loc_9B3BD5: LitI4 2
  loc_9B3BDA: EqI4
  loc_9B3BDB: FFree1Ad var_88
  loc_9B3BDE: FFree1Var var_98 = ""
  loc_9B3BE1: BranchF loc_9B3C60
  loc_9B3BE4: FLdPr Me
  loc_9B3BE7: VCallAd Control_ID_FlexCheque
  loc_9B3BEA: FStAdFunc var_88
  loc_9B3BED: FLdPr var_88
  loc_9B3BF0: LateIdLdVar var_98 DispID_0 0
  loc_9B3BF7: CStrVarTmp
  loc_9B3BF8: FStStrNoPop var_9C
  loc_9B3BFB: LitStr vbNullString
  loc_9B3BFE: NeStr
  loc_9B3C00: FFree1Str var_9C
  loc_9B3C03: FFree1Ad var_88
  loc_9B3C06: FFree1Var var_98 = ""
  loc_9B3C09: BranchF loc_9B3C57
  loc_9B3C0C: FLdPr Me
  loc_9B3C0F: VCallAd Control_ID_FlexCheque
  loc_9B3C12: FStAdFunc var_88
  loc_9B3C15: FLdPr var_88
  loc_9B3C18: LateIdLdVar var_98 DispID_0 0
  loc_9B3C1F: PopAd
  loc_9B3C21: LitI4 2
  loc_9B3C26: FLdRfVar var_98
  loc_9B3C29: CStrVarTmp
  loc_9B3C2A: FStStrNoPop var_9C
  loc_9B3C2D: CR8Str
  loc_9B3C2F: CVarR8
  loc_9B3C33: FLdRfVar var_CC
  loc_9B3C36: ImpAdCallFPR4  = Round(, )
  loc_9B3C3B: FLdRfVar var_CC
  loc_9B3C3E: CR4Var
  loc_9B3C3F: FLdPr Me
  loc_9B3C42: MemStFPR8 global_92
  loc_9B3C45: FFree1Str var_9C
  loc_9B3C48: FFree1Ad var_88
  loc_9B3C4B: FFreeVar var_98 = "": var_BC = ""
  loc_9B3C54: Branch loc_9B3C60
  loc_9B3C57: LitI2_Byte 0
  loc_9B3C59: CR8I2
  loc_9B3C5A: FLdPr Me
  loc_9B3C5D: MemStFPR8 global_92
  loc_9B3C60: ExitProcHresult
  loc_9B3C63: LitI2_Byte &H90
End Sub

Private Function FlexCheque_UnknownEvent_8(arg_C) 'BE7168
  'Data Table: 4B2A08
  loc_BE5774: FLdRfVar var_8A
  loc_BE5777: FLdPr Me
  loc_BE577A: VCallAd Control_ID_cmdCancelar
  loc_BE577D: FStAdFunc var_88
  loc_BE5780: FLdPr var_88
  loc_BE5783:  = Me.Value
  loc_BE5788: FLdI2 var_8A
  loc_BE578B: NotI4
  loc_BE578C: FLdPr Me
  loc_BE578F: VCallAd Control_ID_FlexCheque
  loc_BE5792: FStAdFunc var_90
  loc_BE5795: FLdPr var_90
  loc_BE5798: LateIdLdVar var_A0 DispID_13 -32767
  loc_BE579F: CBoolVar
  loc_BE57A1: AndI4
  loc_BE57A2: FFreeAd var_88 = ""
  loc_BE57A9: FFree1Var var_A0 = ""
  loc_BE57AC: BranchF loc_BE7165
  loc_BE57AF: FLdPr Me
  loc_BE57B2: MemLdUI1 global_64
  loc_BE57B6: CI2UI1
  loc_BE57B8: LitI2_Byte 1
  loc_BE57BA: EqI2
  loc_BE57BB: BranchF loc_BE6FC0
  loc_BE57BE: LitI2_Byte 0
  loc_BE57C0: FLdPr Me
  loc_BE57C3: MemStI2 global_102
  loc_BE57C6: LitI2_Byte 0
  loc_BE57C8: FLdPr Me
  loc_BE57CB: MemStI2 global_100
  loc_BE57CE: FLdPr Me
  loc_BE57D1: MemLdI2 global_80
  loc_BE57D4: LitI2_Byte &HFF
  loc_BE57D6: EqI2
  loc_BE57D7: BranchF loc_BE605B
  loc_BE57DA: FLdPr Me
  loc_BE57DD: VCallAd Control_ID_FlexCheque
  loc_BE57E0: FStAdFunc var_88
  loc_BE57E3: FLdPr var_88
  loc_BE57E6: LateIdLdVar var_A0 DispID_4 0
  loc_BE57ED: CI4Var
  loc_BE57EF: LitI4 1
  loc_BE57F4: SubI4
  loc_BE57F5: CI2I4
  loc_BE57F6: FLdPr Me
  loc_BE57F9: MemLdRfVar from_stack_1.global_72
  loc_BE57FC: LitI2_Byte 1
  loc_BE57FE: LitI2_Byte &HFF
  loc_BE5800: FFree1Ad var_88
  loc_BE5803: FFree1Var var_A0 = ""
  loc_BE5806: ForStepI2 var_A4
  loc_BE580C: FLdPr Me
  loc_BE580F: MemLdI2 global_72
  loc_BE5812: FLdPr Me
  loc_BE5815: VCallAd Control_ID_FlexCheque
  loc_BE5818: FStAdFunc var_88
  loc_BE581B: FLdPr var_88
  loc_BE581E: LateIdLdVar var_A0 DispID_10 0
  loc_BE5825: CI4Var
  loc_BE5827: CI2I4
  loc_BE5828: LeI2
  loc_BE5829: FFree1Ad var_88
  loc_BE582C: FFree1Var var_A0 = ""
  loc_BE582F: BranchF loc_BE5881
  loc_BE5832: FLdPr Me
  loc_BE5835: MemLdI2 global_72
  loc_BE5838: CI4UI1
  loc_BE5839: CVarI4
  loc_BE583D: PopAdLdVar
  loc_BE583E: LitVarI4
  loc_BE5846: PopAdLdVar
  loc_BE5847: FLdPr Me
  loc_BE584A: VCallAd Control_ID_FlexCheque
  loc_BE584D: FStAdFunc var_88
  loc_BE5850: FLdPr var_88
  loc_BE5853: LateIdCallLdVar
  loc_BE585D: CStrVarTmp
  loc_BE585E: FStStrNoPop var_E8
  loc_BE5861: LitStr vbNullString
  loc_BE5864: NeStr
  loc_BE5866: FFree1Str var_E8
  loc_BE5869: FFree1Ad var_88
  loc_BE586C: FFree1Var var_A0 = ""
  loc_BE586F: BranchF loc_BE5881
  loc_BE5872: FLdPr Me
  loc_BE5875: MemLdI2 global_72
  loc_BE5878: FLdPr Me
  loc_BE587B: MemStI2 global_102
  loc_BE587E: Branch loc_BE588C
  loc_BE5881: FLdPr Me
  loc_BE5884: MemLdRfVar from_stack_1.global_72
  loc_BE5887: NextStepI2 var_A4, loc_BE580C
  loc_BE588C: LitI2_Byte 1
  loc_BE588E: FLdPr Me
  loc_BE5891: MemLdRfVar from_stack_1.global_72
  loc_BE5894: FLdPr Me
  loc_BE5897: VCallAd Control_ID_FlexCheque
  loc_BE589A: FStAdFunc var_88
  loc_BE589D: FLdPr var_88
  loc_BE58A0: LateIdLdVar var_A0 DispID_4 0
  loc_BE58A7: CI4Var
  loc_BE58A9: LitI4 1
  loc_BE58AE: SubI4
  loc_BE58AF: CI2I4
  loc_BE58B0: FFree1Ad var_88
  loc_BE58B3: FFree1Var var_A0 = ""
  loc_BE58B6: ForI2 var_EC
  loc_BE58BC: FLdPr Me
  loc_BE58BF: MemLdI2 global_72
  loc_BE58C2: FLdPr Me
  loc_BE58C5: VCallAd Control_ID_FlexCheque
  loc_BE58C8: FStAdFunc var_88
  loc_BE58CB: FLdPr var_88
  loc_BE58CE: LateIdLdVar var_A0 DispID_10 0
  loc_BE58D5: CI4Var
  loc_BE58D7: CI2I4
  loc_BE58D8: GeI2
  loc_BE58D9: FFree1Ad var_88
  loc_BE58DC: FFree1Var var_A0 = ""
  loc_BE58DF: BranchF loc_BE5931
  loc_BE58E2: FLdPr Me
  loc_BE58E5: MemLdI2 global_72
  loc_BE58E8: CI4UI1
  loc_BE58E9: CVarI4
  loc_BE58ED: PopAdLdVar
  loc_BE58EE: LitVarI4
  loc_BE58F6: PopAdLdVar
  loc_BE58F7: FLdPr Me
  loc_BE58FA: VCallAd Control_ID_FlexCheque
  loc_BE58FD: FStAdFunc var_88
  loc_BE5900: FLdPr var_88
  loc_BE5903: LateIdCallLdVar
  loc_BE590D: CStrVarTmp
  loc_BE590E: FStStrNoPop var_E8
  loc_BE5911: LitStr vbNullString
  loc_BE5914: NeStr
  loc_BE5916: FFree1Str var_E8
  loc_BE5919: FFree1Ad var_88
  loc_BE591C: FFree1Var var_A0 = ""
  loc_BE591F: BranchF loc_BE5931
  loc_BE5922: FLdPr Me
  loc_BE5925: MemLdI2 global_72
  loc_BE5928: FLdPr Me
  loc_BE592B: MemStI2 global_100
  loc_BE592E: Branch loc_BE593C
  loc_BE5931: FLdPr Me
  loc_BE5934: MemLdRfVar from_stack_1.global_72
  loc_BE5937: NextI2 var_EC, loc_BE58BC
  loc_BE593C: FLdPr Me
  loc_BE593F: MemLdI2 global_100
  loc_BE5942: LitI2_Byte 0
  loc_BE5944: EqI2
  loc_BE5945: BranchF loc_BE5970
  loc_BE5948: FLdPr Me
  loc_BE594B: VCallAd Control_ID_FlexCheque
  loc_BE594E: FStAdFunc var_88
  loc_BE5951: FLdPr var_88
  loc_BE5954: LateIdLdVar var_A0 DispID_4 0
  loc_BE595B: CI4Var
  loc_BE595D: LitI4 1
  loc_BE5962: SubI4
  loc_BE5963: CI2I4
  loc_BE5964: FLdPr Me
  loc_BE5967: MemStI2 global_100
  loc_BE596A: FFree1Ad var_88
  loc_BE596D: FFree1Var var_A0 = ""
  loc_BE5970: FLdPr Me
  loc_BE5973: MemLdI2 global_102
  loc_BE5976: FLdPr Me
  loc_BE5979: MemLdRfVar from_stack_1.global_72
  loc_BE597C: FLdPr Me
  loc_BE597F: MemLdI2 global_100
  loc_BE5982: LitI2_Byte 1
  loc_BE5984: SubI2
  loc_BE5985: ForI2 var_F0
  loc_BE598B: FLdPr Me
  loc_BE598E: MemLdI2 global_72
  loc_BE5991: CI4UI1
  loc_BE5992: CVarI4
  loc_BE5996: PopAdLdVar
  loc_BE5997: LitVarI4
  loc_BE599F: PopAdLdVar
  loc_BE59A0: FLdPr Me
  loc_BE59A3: VCallAd Control_ID_FlexCheque
  loc_BE59A6: FStAdFunc var_88
  loc_BE59A9: FLdPr var_88
  loc_BE59AC: LateIdCallLdVar
  loc_BE59B6: CStrVarTmp
  loc_BE59B7: FStStrNoPop var_E8
  loc_BE59BA: LitStr vbNullString
  loc_BE59BD: NeStr
  loc_BE59BF: FLdPr Me
  loc_BE59C2: VCallAd Control_ID_FlexCheque
  loc_BE59C5: FStAdFunc var_90
  loc_BE59C8: FLdPr var_90
  loc_BE59CB: LateIdLdVar var_100 DispID_10 0
  loc_BE59D2: CI4Var
  loc_BE59D4: CVarI4
  loc_BE59D8: PopAdLdVar
  loc_BE59D9: LitVarI4
  loc_BE59E1: PopAdLdVar
  loc_BE59E2: FLdPr Me
  loc_BE59E5: VCallAd Control_ID_FlexCheque
  loc_BE59E8: FStAdFunc var_144
  loc_BE59EB: FLdPr var_144
  loc_BE59EE: LateIdCallLdVar
  loc_BE59F8: CStrVarTmp
  loc_BE59F9: FStStrNoPop var_158
  loc_BE59FC: LitStr vbNullString
  loc_BE59FF: EqStr
  loc_BE5A01: AndI4
  loc_BE5A02: FFreeStr var_E8 = ""
  loc_BE5A09: FFreeAd var_88 = "": var_90 = ""
  loc_BE5A12: FFreeVar var_A0 = "": var_100 = ""
  loc_BE5A1B: BranchF loc_BE603F
  loc_BE5A1E: FLdPr Me
  loc_BE5A21: VCallAd Control_ID_FlexCheque
  loc_BE5A24: FStAdFunc var_88
  loc_BE5A27: FLdPr var_88
  loc_BE5A2A: LateIdLdVar var_A0 DispID_10 0
  loc_BE5A31: CI4Var
  loc_BE5A33: CVarI4
  loc_BE5A37: PopAdLdVar
  loc_BE5A38: LitVarI4
  loc_BE5A40: PopAdLdVar
  loc_BE5A41: FLdPr Me
  loc_BE5A44: VCallAd Control_ID_FlexCheque
  loc_BE5A47: FStAdFunc var_90
  loc_BE5A4A: FLdPr var_90
  loc_BE5A4D: LateIdCallLdVar
  loc_BE5A57: CStrVarTmp
  loc_BE5A58: CVarStr var_154
  loc_BE5A5B: ImpAdCallI2 IsNumeric()
  loc_BE5A60: NotI4
  loc_BE5A61: FFreeAd var_88 = ""
  loc_BE5A68: FFreeVar var_A0 = "": var_100 = ""
  loc_BE5A71: BranchF loc_BE5AC1
  loc_BE5A74: FLdPr Me
  loc_BE5A77: VCallAd Control_ID_FlexCheque
  loc_BE5A7A: FStAdFunc var_88
  loc_BE5A7D: FLdPr var_88
  loc_BE5A80: LateIdLdVar var_A0 DispID_10 0
  loc_BE5A87: CI4Var
  loc_BE5A89: CVarI4
  loc_BE5A8D: PopAdLdVar
  loc_BE5A8E: LitVarI4
  loc_BE5A96: PopAdLdVar
  loc_BE5A97: LitI2_Byte 0
  loc_BE5A99: CStrUI1
  loc_BE5A9B: CVarStr var_100
  loc_BE5A9E: PopAdLdVar
  loc_BE5A9F: FLdPr Me
  loc_BE5AA2: VCallAd Control_ID_FlexCheque
  loc_BE5AA5: FStAdFunc var_90
  loc_BE5AA8: FLdPr var_90
  loc_BE5AAB: LateIdCallSt
  loc_BE5AB3: FFreeAd var_88 = ""
  loc_BE5ABA: FFreeVar var_A0 = ""
  loc_BE5AC1: FLdPr Me
  loc_BE5AC4: VCallAd Control_ID_FlexCheque
  loc_BE5AC7: FStAdFunc var_88
  loc_BE5ACA: FLdPr var_88
  loc_BE5ACD: LateIdLdVar var_A0 DispID_10 0
  loc_BE5AD4: CI4Var
  loc_BE5AD6: CVarI4
  loc_BE5ADA: PopAdLdVar
  loc_BE5ADB: LitVarI4
  loc_BE5AE3: PopAdLdVar
  loc_BE5AE4: FLdPr Me
  loc_BE5AE7: VCallAd Control_ID_FlexCheque
  loc_BE5AEA: FStAdFunc var_90
  loc_BE5AED: FLdPr var_90
  loc_BE5AF0: LateIdCallLdVar
  loc_BE5AFA: CStrVarTmp
  loc_BE5AFB: CVarStr var_154
  loc_BE5AFE: ImpAdCallI2 IsNumeric()
  loc_BE5B03: FFreeAd var_88 = ""
  loc_BE5B0A: FFreeVar var_A0 = "": var_100 = ""
  loc_BE5B13: BranchF loc_BE603F
  loc_BE5B16: FLdPr Me
  loc_BE5B19: MemLdI2 global_72
  loc_BE5B1C: CI4UI1
  loc_BE5B1D: CVarI4
  loc_BE5B21: PopAdLdVar
  loc_BE5B22: LitVarI4
  loc_BE5B2A: PopAdLdVar
  loc_BE5B2B: FLdPr Me
  loc_BE5B2E: VCallAd Control_ID_FlexCheque
  loc_BE5B31: FStAdFunc var_88
  loc_BE5B34: FLdPr var_88
  loc_BE5B37: LateIdCallLdVar
  loc_BE5B41: PopAd
  loc_BE5B43: FLdPr Me
  loc_BE5B46: VCallAd Control_ID_FlexCheque
  loc_BE5B49: FStAdFunc var_90
  loc_BE5B4C: FLdPr var_90
  loc_BE5B4F: LateIdLdVar var_100 DispID_10 0
  loc_BE5B56: CI4Var
  loc_BE5B58: CVarI4
  loc_BE5B5C: PopAdLdVar
  loc_BE5B5D: LitVarI4
  loc_BE5B65: PopAdLdVar
  loc_BE5B66: FLdPr Me
  loc_BE5B69: VCallAd Control_ID_FlexCheque
  loc_BE5B6C: FStAdFunc var_144
  loc_BE5B6F: FLdPr var_144
  loc_BE5B72: LateIdCallLdVar
  loc_BE5B7C: PopAd
  loc_BE5B7E: LitI4 2
  loc_BE5B83: FLdRfVar var_A0
  loc_BE5B86: CStrVarTmp
  loc_BE5B87: FStStrNoPop var_E8
  loc_BE5B8A: CR8Str
  loc_BE5B8C: FLdRfVar var_154
  loc_BE5B8F: CStrVarTmp
  loc_BE5B90: FStStrNoPop var_158
  loc_BE5B93: CR8Str
  loc_BE5B95: SubR4
  loc_BE5B96: FLdPr Me
  loc_BE5B99: MemLdFPR8 global_92
  loc_BE5B9C: AddR8
  loc_BE5B9D: CVarR8
  loc_BE5BA1: FLdRfVar var_188
  loc_BE5BA4: ImpAdCallFPR4  = Round(, )
  loc_BE5BA9: FLdRfVar var_188
  loc_BE5BAC: LitVarI2 var_198, 0
  loc_BE5BB1: HardType
  loc_BE5BB2: LeVarBool
  loc_BE5BB4: FFreeStr var_E8 = ""
  loc_BE5BBB: FFreeAd var_88 = "": var_90 = ""
  loc_BE5BC4: FFreeVar var_A0 = "": var_100 = "": var_154 = "": var_178 = ""
  loc_BE5BD1: BranchF loc_BE5D91
  loc_BE5BD4: LitStr "El cheque original no puede ser 0 o menor a cero"
  loc_BE5BD7: FLdPr Me
  loc_BE5BDA: MemStStrCopy
  loc_BE5BDE: LitI4 0
  loc_BE5BE3: FLdPr Me
  loc_BE5BE6: MemLdStr global_68
  loc_BE5BE9: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE5BEE: FLdPr Me
  loc_BE5BF1: VCallAd Control_ID_FlexCheque
  loc_BE5BF4: FStAdFunc var_88
  loc_BE5BF7: FLdPr var_88
  loc_BE5BFA: LateIdLdVar var_178 DispID_10 0
  loc_BE5C01: CI4Var
  loc_BE5C03: CVarI4
  loc_BE5C07: PopAdLdVar
  loc_BE5C08: LitVarI4
  loc_BE5C10: PopAdLdVar
  loc_BE5C11: LitI4 1
  loc_BE5C16: LitI4 1
  loc_BE5C1B: LitVarStr var_C4, "0.00"
  loc_BE5C20: FStVarCopyObj var_100
  loc_BE5C23: FLdRfVar var_100
  loc_BE5C26: LitVarI2 var_A0, 0
  loc_BE5C2B: FLdRfVar var_154
  loc_BE5C2E: ImpAdCallFPR4  = Format(, )
  loc_BE5C33: FLdRfVar var_154
  loc_BE5C36: CStrVarTmp
  loc_BE5C37: CVarStr var_188
  loc_BE5C3A: PopAdLdVar
  loc_BE5C3B: FLdPr Me
  loc_BE5C3E: VCallAd Control_ID_FlexCheque
  loc_BE5C41: FStAdFunc var_90
  loc_BE5C44: FLdPr var_90
  loc_BE5C47: LateIdCallSt
  loc_BE5C4F: FFreeAd var_88 = ""
  loc_BE5C56: FFreeVar var_A0 = "": var_100 = "": var_178 = "": var_154 = ""
  loc_BE5C63: FLdPr Me
  loc_BE5C66: MemLdI2 global_72
  loc_BE5C69: CI4UI1
  loc_BE5C6A: CVarI4
  loc_BE5C6E: PopAdLdVar
  loc_BE5C6F: LitVarI4
  loc_BE5C77: PopAdLdVar
  loc_BE5C78: FLdPr Me
  loc_BE5C7B: VCallAd Control_ID_FlexCheque
  loc_BE5C7E: FStAdFunc var_88
  loc_BE5C81: FLdPr var_88
  loc_BE5C84: LateIdCallLdVar
  loc_BE5C8E: PopAd
  loc_BE5C90: FLdPr Me
  loc_BE5C93: VCallAd Control_ID_FlexCheque
  loc_BE5C96: FStAdFunc var_90
  loc_BE5C99: FLdPr var_90
  loc_BE5C9C: LateIdLdVar var_100 DispID_10 0
  loc_BE5CA3: CI4Var
  loc_BE5CA5: CVarI4
  loc_BE5CA9: PopAdLdVar
  loc_BE5CAA: LitVarI4
  loc_BE5CB2: PopAdLdVar
  loc_BE5CB3: FLdPr Me
  loc_BE5CB6: VCallAd Control_ID_FlexCheque
  loc_BE5CB9: FStAdFunc var_144
  loc_BE5CBC: FLdPr var_144
  loc_BE5CBF: LateIdCallLdVar
  loc_BE5CC9: PopAd
  loc_BE5CCB: LitI4 2
  loc_BE5CD0: FLdRfVar var_A0
  loc_BE5CD3: CStrVarTmp
  loc_BE5CD4: FStStrNoPop var_E8
  loc_BE5CD7: CR8Str
  loc_BE5CD9: FLdRfVar var_154
  loc_BE5CDC: CStrVarTmp
  loc_BE5CDD: FStStrNoPop var_158
  loc_BE5CE0: CR8Str
  loc_BE5CE2: SubR4
  loc_BE5CE3: FLdPr Me
  loc_BE5CE6: MemLdFPR8 global_92
  loc_BE5CE9: AddR8
  loc_BE5CEA: CVarR8
  loc_BE5CEE: FLdRfVar var_188
  loc_BE5CF1: ImpAdCallFPR4  = Round(, )
  loc_BE5CF6: FLdPr Me
  loc_BE5CF9: MemLdI2 global_72
  loc_BE5CFC: CI4UI1
  loc_BE5CFD: CVarI4
  loc_BE5D01: PopAdLdVar
  loc_BE5D02: LitVarI4
  loc_BE5D0A: PopAdLdVar
  loc_BE5D0B: LitI4 1
  loc_BE5D10: LitI4 1
  loc_BE5D15: LitVarStr var_198, "0.00"
  loc_BE5D1A: FStVarCopyObj var_1A8
  loc_BE5D1D: FLdRfVar var_1A8
  loc_BE5D20: FLdRfVar var_188
  loc_BE5D23: FLdRfVar var_1B8
  loc_BE5D26: ImpAdCallFPR4  = Format(, )
  loc_BE5D2B: FLdRfVar var_1B8
  loc_BE5D2E: CStrVarTmp
  loc_BE5D2F: CVarStr var_208
  loc_BE5D32: PopAdLdVar
  loc_BE5D33: FLdPr Me
  loc_BE5D36: VCallAd Control_ID_FlexCheque
  loc_BE5D39: FStAdFunc var_21C
  loc_BE5D3C: FLdPr var_21C
  loc_BE5D3F: LateIdCallSt
  loc_BE5D47: FFreeStr var_E8 = ""
  loc_BE5D4E: FFreeAd var_88 = "": var_90 = "": var_144 = ""
  loc_BE5D59: FFreeVar var_A0 = "": var_100 = "": var_154 = "": var_178 = "": var_188 = "": var_1A8 = "": var_1B8 = ""
  loc_BE5D6C: FLdPr Me
  loc_BE5D6F: VCallAd Control_ID_FlexCheque
  loc_BE5D72: FStAdFunc var_88
  loc_BE5D75: FLdPr var_88
  loc_BE5D78: LateIdCall
  loc_BE5D80: FFree1Ad var_88
  loc_BE5D83: LitI2_Byte 0
  loc_BE5D85: FLdPr Me
  loc_BE5D88: MemStI2 global_80
  loc_BE5D8B: LitI2_Byte &HFF
  loc_BE5D8D: IStI2 arg_C
  loc_BE5D90: ExitProcHresult
  loc_BE5D91: FLdPr Me
  loc_BE5D94: MemLdI2 global_72
  loc_BE5D97: CI4UI1
  loc_BE5D98: CVarI4
  loc_BE5D9C: PopAdLdVar
  loc_BE5D9D: LitVarI4
  loc_BE5DA5: PopAdLdVar
  loc_BE5DA6: FLdPr Me
  loc_BE5DA9: VCallAd Control_ID_FlexCheque
  loc_BE5DAC: FStAdFunc var_88
  loc_BE5DAF: FLdPr var_88
  loc_BE5DB2: LateIdCallLdVar
  loc_BE5DBC: PopAd
  loc_BE5DBE: FLdPr Me
  loc_BE5DC1: VCallAd Control_ID_FlexCheque
  loc_BE5DC4: FStAdFunc var_90
  loc_BE5DC7: FLdPr var_90
  loc_BE5DCA: LateIdLdVar var_100 DispID_10 0
  loc_BE5DD1: CI4Var
  loc_BE5DD3: CVarI4
  loc_BE5DD7: PopAdLdVar
  loc_BE5DD8: LitVarI4
  loc_BE5DE0: PopAdLdVar
  loc_BE5DE1: FLdPr Me
  loc_BE5DE4: VCallAd Control_ID_FlexCheque
  loc_BE5DE7: FStAdFunc var_144
  loc_BE5DEA: FLdPr var_144
  loc_BE5DED: LateIdCallLdVar
  loc_BE5DF7: PopAd
  loc_BE5DF9: LitI4 2
  loc_BE5DFE: FLdRfVar var_A0
  loc_BE5E01: CStrVarTmp
  loc_BE5E02: FStStrNoPop var_E8
  loc_BE5E05: CR8Str
  loc_BE5E07: FLdRfVar var_154
  loc_BE5E0A: CStrVarTmp
  loc_BE5E0B: FStStrNoPop var_158
  loc_BE5E0E: CR8Str
  loc_BE5E10: SubR4
  loc_BE5E11: FLdPr Me
  loc_BE5E14: MemLdFPR8 global_92
  loc_BE5E17: AddR8
  loc_BE5E18: CVarR8
  loc_BE5E1C: FLdRfVar var_188
  loc_BE5E1F: ImpAdCallFPR4  = Round(, )
  loc_BE5E24: FLdPr Me
  loc_BE5E27: MemLdI2 global_72
  loc_BE5E2A: CI4UI1
  loc_BE5E2B: CVarI4
  loc_BE5E2F: PopAdLdVar
  loc_BE5E30: LitVarI4
  loc_BE5E38: PopAdLdVar
  loc_BE5E39: LitI4 1
  loc_BE5E3E: LitI4 1
  loc_BE5E43: LitVarStr var_198, "0.00"
  loc_BE5E48: FStVarCopyObj var_1A8
  loc_BE5E4B: FLdRfVar var_1A8
  loc_BE5E4E: FLdRfVar var_188
  loc_BE5E51: FLdRfVar var_1B8
  loc_BE5E54: ImpAdCallFPR4  = Format(, )
  loc_BE5E59: FLdRfVar var_1B8
  loc_BE5E5C: CStrVarTmp
  loc_BE5E5D: CVarStr var_208
  loc_BE5E60: PopAdLdVar
  loc_BE5E61: FLdPr Me
  loc_BE5E64: VCallAd Control_ID_FlexCheque
  loc_BE5E67: FStAdFunc var_21C
  loc_BE5E6A: FLdPr var_21C
  loc_BE5E6D: LateIdCallSt
  loc_BE5E75: FFreeStr var_E8 = ""
  loc_BE5E7C: FFreeAd var_88 = "": var_90 = "": var_144 = ""
  loc_BE5E87: FFreeVar var_A0 = "": var_100 = "": var_154 = "": var_178 = "": var_188 = "": var_1A8 = "": var_1B8 = ""
  loc_BE5E9A: FLdPr Me
  loc_BE5E9D: VCallAd Control_ID_FlexCheque
  loc_BE5EA0: FStAdFunc var_88
  loc_BE5EA3: FLdPr var_88
  loc_BE5EA6: LateIdLdVar var_A0 DispID_10 0
  loc_BE5EAD: CI4Var
  loc_BE5EAF: CVarI4
  loc_BE5EB3: PopAdLdVar
  loc_BE5EB4: LitVarI4
  loc_BE5EBC: PopAdLdVar
  loc_BE5EBD: FLdPr Me
  loc_BE5EC0: VCallAd Control_ID_FlexCheque
  loc_BE5EC3: FStAdFunc var_90
  loc_BE5EC6: FLdPr var_90
  loc_BE5EC9: LateIdCallLdVar
  loc_BE5ED3: CStrVarTmp
  loc_BE5ED4: CVarStr var_154
  loc_BE5ED7: ImpAdCallI2 IsNumeric()
  loc_BE5EDC: FLdPr Me
  loc_BE5EDF: VCallAd Control_ID_FlexCheque
  loc_BE5EE2: FStAdFunc var_144
  loc_BE5EE5: FLdPr var_144
  loc_BE5EE8: LateIdLdVar var_178 DispID_10 0
  loc_BE5EEF: CI4Var
  loc_BE5EF1: CVarI4
  loc_BE5EF5: PopAdLdVar
  loc_BE5EF6: LitVarI4
  loc_BE5EFE: PopAdLdVar
  loc_BE5EFF: FLdPr Me
  loc_BE5F02: VCallAd Control_ID_FlexCheque
  loc_BE5F05: FStAdFunc var_21C
  loc_BE5F08: FLdPr var_21C
  loc_BE5F0B: LateIdCallLdVar
  loc_BE5F15: CStrVarTmp
  loc_BE5F16: FStStrNoPop var_E8
  loc_BE5F19: CR8Str
  loc_BE5F1B: LitI2_Byte 0
  loc_BE5F1D: CR8I2
  loc_BE5F1E: EqR4
  loc_BE5F1F: AndI4
  loc_BE5F20: FFree1Str var_E8
  loc_BE5F23: FFreeAd var_88 = "": var_90 = "": var_144 = ""
  loc_BE5F2E: FFreeVar var_A0 = "": var_100 = "": var_154 = "": var_178 = ""
  loc_BE5F3B: BranchF loc_BE5F85
  loc_BE5F3E: FLdPr Me
  loc_BE5F41: VCallAd Control_ID_FlexCheque
  loc_BE5F44: FStAdFunc var_88
  loc_BE5F47: FLdPr var_88
  loc_BE5F4A: LateIdLdVar var_A0 DispID_10 0
  loc_BE5F51: CI4Var
  loc_BE5F53: CVarI4
  loc_BE5F57: PopAdLdVar
  loc_BE5F58: LitVarI4
  loc_BE5F60: PopAdLdVar
  loc_BE5F61: LitVarStr var_110, vbNullString
  loc_BE5F66: PopAdLdVar
  loc_BE5F67: FLdPr Me
  loc_BE5F6A: VCallAd Control_ID_FlexCheque
  loc_BE5F6D: FStAdFunc var_90
  loc_BE5F70: FLdPr var_90
  loc_BE5F73: LateIdCallSt
  loc_BE5F7B: FFreeAd var_88 = ""
  loc_BE5F82: FFree1Var var_A0 = ""
  loc_BE5F85: FLdPr Me
  loc_BE5F88: VCallAd Control_ID_FlexCheque
  loc_BE5F8B: FStAdFunc var_88
  loc_BE5F8E: FLdPr var_88
  loc_BE5F91: LateIdLdVar var_A0 DispID_10 0
  loc_BE5F98: CI4Var
  loc_BE5F9A: CVarI4
  loc_BE5F9E: PopAdLdVar
  loc_BE5F9F: LitVarI4
  loc_BE5FA7: PopAdLdVar
  loc_BE5FA8: FLdPr Me
  loc_BE5FAB: VCallAd Control_ID_FlexCheque
  loc_BE5FAE: FStAdFunc var_90
  loc_BE5FB1: FLdPr var_90
  loc_BE5FB4: LateIdCallLdVar
  loc_BE5FBE: PopAd
  loc_BE5FC0: FLdPr Me
  loc_BE5FC3: VCallAd Control_ID_FlexCheque
  loc_BE5FC6: FStAdFunc var_144
  loc_BE5FC9: FLdPr var_144
  loc_BE5FCC: LateIdLdVar var_1A8 DispID_10 0
  loc_BE5FD3: CI4Var
  loc_BE5FD5: CVarI4
  loc_BE5FD9: PopAdLdVar
  loc_BE5FDA: LitVarI4
  loc_BE5FE2: PopAdLdVar
  loc_BE5FE3: LitI4 1
  loc_BE5FE8: LitI4 1
  loc_BE5FED: LitVarStr var_110, "0.00"
  loc_BE5FF2: FStVarCopyObj var_178
  loc_BE5FF5: FLdRfVar var_178
  loc_BE5FF8: FLdRfVar var_100
  loc_BE5FFB: CStrVarTmp
  loc_BE5FFC: CVarStr var_154
  loc_BE5FFF: FLdRfVar var_188
  loc_BE6002: ImpAdCallFPR4  = Format(, )
  loc_BE6007: FLdRfVar var_188
  loc_BE600A: CStrVarTmp
  loc_BE600B: CVarStr var_1B8
  loc_BE600E: PopAdLdVar
  loc_BE600F: FLdPr Me
  loc_BE6012: VCallAd Control_ID_FlexCheque
  loc_BE6015: FStAdFunc var_21C
  loc_BE6018: FLdPr var_21C
  loc_BE601B: LateIdCallSt
  loc_BE6023: FFreeAd var_88 = "": var_90 = "": var_144 = ""
  loc_BE602E: FFreeVar var_A0 = "": var_100 = "": var_154 = "": var_178 = "": var_1A8 = "": var_188 = ""
  loc_BE603F: FLdPr Me
  loc_BE6042: MemLdRfVar from_stack_1.global_72
  loc_BE6045: NextI2 var_F0, loc_BE598B
  loc_BE604A: LitI2_Byte 0
  loc_BE604C: FLdPr Me
  loc_BE604F: MemStI2 global_80
  loc_BE6052: LitI2_Byte 0
  loc_BE6054: CR8I2
  loc_BE6055: FLdPr Me
  loc_BE6058: MemStFPR8 global_92
  loc_BE605B: LitI2_Byte 1
  loc_BE605D: FLdPr Me
  loc_BE6060: MemLdRfVar from_stack_1.global_72
  loc_BE6063: FLdPr Me
  loc_BE6066: VCallAd Control_ID_FlexCheque
  loc_BE6069: FStAdFunc var_88
  loc_BE606C: FLdPr var_88
  loc_BE606F: LateIdLdVar var_A0 DispID_4 0
  loc_BE6076: CI4Var
  loc_BE6078: LitI4 1
  loc_BE607D: SubI4
  loc_BE607E: CI2I4
  loc_BE607F: FFree1Ad var_88
  loc_BE6082: FFree1Var var_A0 = ""
  loc_BE6085: ForI2 var_220
  loc_BE608B: LitStr vbNullString
  loc_BE608E: FLdPr Me
  loc_BE6091: MemStStrCopy
  loc_BE6095: FLdPr Me
  loc_BE6098: MemLdI2 global_72
  loc_BE609B: CI4UI1
  loc_BE609C: CVarI4
  loc_BE60A0: PopAdLdVar
  loc_BE60A1: LitVarI4
  loc_BE60A9: PopAdLdVar
  loc_BE60AA: FLdPr Me
  loc_BE60AD: VCallAd Control_ID_FlexCheque
  loc_BE60B0: FStAdFunc var_88
  loc_BE60B3: FLdPr var_88
  loc_BE60B6: LateIdCallLdVar
  loc_BE60C0: PopAd
  loc_BE60C2: LitStr "0"
  loc_BE60C5: LitI2_Byte &HFF
  loc_BE60C7: LitI2_Byte 0
  loc_BE60C9: LitI2_Byte 0
  loc_BE60CB: FLdRfVar var_A0
  loc_BE60CE: CStrVarTmp
  loc_BE60CF: FStStrNoPop var_E8
  loc_BE60D2: LitStr "Importe"
  loc_BE60D5: ImpAdCallI2 Proc_266_25_A07298(, , , , , )
  loc_BE60DA: FStStrNoPop var_158
  loc_BE60DD: FLdPr Me
  loc_BE60E0: MemStStrCopy
  loc_BE60E4: FFreeStr var_E8 = ""
  loc_BE60EB: FFree1Ad var_88
  loc_BE60EE: FFree1Var var_A0 = ""
  loc_BE60F1: FLdPr Me
  loc_BE60F4: MemLdStr global_68
  loc_BE60F7: LitStr vbNullString
  loc_BE60FA: NeStr
  loc_BE60FC: BranchF loc_BE6147
  loc_BE60FF: LitI4 0
  loc_BE6104: FLdPr Me
  loc_BE6107: MemLdStr global_68
  loc_BE610A: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE610F: FLdPr Me
  loc_BE6112: MemLdI2 global_72
  loc_BE6115: CI4UI1
  loc_BE6116: CVarI4
  loc_BE611A: PopAdLdVar
  loc_BE611B: LitVarI4
  loc_BE6123: PopAdLdVar
  loc_BE6124: LitVarStr var_110, vbNullString
  loc_BE6129: PopAdLdVar
  loc_BE612A: FLdPr Me
  loc_BE612D: VCallAd Control_ID_FlexCheque
  loc_BE6130: FStAdFunc var_88
  loc_BE6133: FLdPr var_88
  loc_BE6136: LateIdCallSt
  loc_BE613E: FFree1Ad var_88
  loc_BE6141: LitI2_Byte &HFF
  loc_BE6143: IStI2 arg_C
  loc_BE6146: ExitProcHresult
  loc_BE6147: LitStr vbNullString
  loc_BE614A: FLdPr Me
  loc_BE614D: MemStStrCopy
  loc_BE6151: FLdPr Me
  loc_BE6154: MemLdI2 global_72
  loc_BE6157: CI4UI1
  loc_BE6158: CVarI4
  loc_BE615C: PopAdLdVar
  loc_BE615D: LitVarI4
  loc_BE6165: PopAdLdVar
  loc_BE6166: FLdPr Me
  loc_BE6169: VCallAd Control_ID_FlexCheque
  loc_BE616C: FStAdFunc var_88
  loc_BE616F: FLdPr var_88
  loc_BE6172: LateIdCallLdVar
  loc_BE617C: CStrVarTmp
  loc_BE617D: FStStrNoPop var_E8
  loc_BE6180: LitStr vbNullString
  loc_BE6183: NeStr
  loc_BE6185: FFree1Str var_E8
  loc_BE6188: FFree1Ad var_88
  loc_BE618B: FFree1Var var_A0 = ""
  loc_BE618E: BranchF loc_BE624D
  loc_BE6191: FLdPr Me
  loc_BE6194: MemLdI2 global_72
  loc_BE6197: CI4UI1
  loc_BE6198: CVarI4
  loc_BE619C: PopAdLdVar
  loc_BE619D: LitVarI4
  loc_BE61A5: PopAdLdVar
  loc_BE61A6: FLdPr Me
  loc_BE61A9: VCallAd Control_ID_FlexCheque
  loc_BE61AC: FStAdFunc var_88
  loc_BE61AF: FLdPr var_88
  loc_BE61B2: LateIdCallLdVar
  loc_BE61BC: PopAd
  loc_BE61BE: FLdPr Me
  loc_BE61C1: MemLdI2 global_72
  loc_BE61C4: CI4UI1
  loc_BE61C5: CVarI4
  loc_BE61C9: PopAdLdVar
  loc_BE61CA: LitVarI4
  loc_BE61D2: PopAdLdVar
  loc_BE61D3: FLdPr Me
  loc_BE61D6: VCallAd Control_ID_FlexCheque
  loc_BE61D9: FStAdFunc var_90
  loc_BE61DC: FLdPr var_90
  loc_BE61DF: LateIdCallLdVar
  loc_BE61E9: PopAd
  loc_BE61EB: LitI4 1
  loc_BE61F0: FLdRfVar var_100
  loc_BE61F3: CStrVarTmp
  loc_BE61F4: FStStrNoPop var_E8
  loc_BE61F7: LitStr "-"
  loc_BE61FA: LitI4 0
  loc_BE61FF: FnInStr4
  loc_BE6201: LitI4 1
  loc_BE6206: SubI4
  loc_BE6207: FLdRfVar var_A0
  loc_BE620A: CStrVarTmp
  loc_BE620B: FStStrNoPop var_158
  loc_BE620E: ImpAdCallI2 Left$(, )
  loc_BE6213: FStStr var_22C
  loc_BE6216: LitI2_Byte 0
  loc_BE6218: LitI2_Byte 0
  loc_BE621A: FLdZeroAd var_22C
  loc_BE621D: FStStrNoPop var_224
  loc_BE6220: LitStr "Banco"
  loc_BE6223: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_BE6228: FStStrNoPop var_228
  loc_BE622B: FLdPr Me
  loc_BE622E: MemStStrCopy
  loc_BE6232: FFreeStr var_E8 = "": var_158 = "": var_224 = "": var_228 = ""
  loc_BE623F: FFreeAd var_88 = ""
  loc_BE6246: FFreeVar var_A0 = ""
  loc_BE624D: FLdPr Me
  loc_BE6250: MemLdStr global_68
  loc_BE6253: LitStr vbNullString
  loc_BE6256: NeStr
  loc_BE6258: BranchF loc_BE62A3
  loc_BE625B: LitI4 0
  loc_BE6260: FLdPr Me
  loc_BE6263: MemLdStr global_68
  loc_BE6266: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE626B: FLdPr Me
  loc_BE626E: MemLdI2 global_72
  loc_BE6271: CI4UI1
  loc_BE6272: CVarI4
  loc_BE6276: PopAdLdVar
  loc_BE6277: LitVarI4
  loc_BE627F: PopAdLdVar
  loc_BE6280: LitVarStr var_110, vbNullString
  loc_BE6285: PopAdLdVar
  loc_BE6286: FLdPr Me
  loc_BE6289: VCallAd Control_ID_FlexCheque
  loc_BE628C: FStAdFunc var_88
  loc_BE628F: FLdPr var_88
  loc_BE6292: LateIdCallSt
  loc_BE629A: FFree1Ad var_88
  loc_BE629D: LitI2_Byte &HFF
  loc_BE629F: IStI2 arg_C
  loc_BE62A2: ExitProcHresult
  loc_BE62A3: FLdPr Me
  loc_BE62A6: MemLdI2 global_72
  loc_BE62A9: CI4UI1
  loc_BE62AA: CVarI4
  loc_BE62AE: PopAdLdVar
  loc_BE62AF: LitVarI4
  loc_BE62B7: PopAdLdVar
  loc_BE62B8: FLdPr Me
  loc_BE62BB: VCallAd Control_ID_FlexCheque
  loc_BE62BE: FStAdFunc var_88
  loc_BE62C1: FLdPr var_88
  loc_BE62C4: LateIdCallLdVar
  loc_BE62CE: CStrVarTmp
  loc_BE62CF: FStStrNoPop var_E8
  loc_BE62D2: LitStr vbNullString
  loc_BE62D5: EqStr
  loc_BE62D7: FFree1Str var_E8
  loc_BE62DA: FFree1Ad var_88
  loc_BE62DD: FFree1Var var_A0 = ""
  loc_BE62E0: BranchF loc_BE6650
  loc_BE62E3: FLdPr Me
  loc_BE62E6: MemLdI2 global_72
  loc_BE62E9: CI4UI1
  loc_BE62EA: CVarI4
  loc_BE62EE: PopAdLdVar
  loc_BE62EF: LitVarI4
  loc_BE62F7: PopAdLdVar
  loc_BE62F8: FLdPr Me
  loc_BE62FB: VCallAd Control_ID_FlexCheque
  loc_BE62FE: FStAdFunc var_88
  loc_BE6301: FLdPr var_88
  loc_BE6304: LateIdCallLdVar
  loc_BE630E: CStrVarTmp
  loc_BE630F: FStStrNoPop var_E8
  loc_BE6312: LitStr "Manual"
  loc_BE6315: EqStr
  loc_BE6317: FLdPr Me
  loc_BE631A: MemLdI2 global_72
  loc_BE631D: CI4UI1
  loc_BE631E: CVarI4
  loc_BE6322: PopAdLdVar
  loc_BE6323: LitVarI4
  loc_BE632B: PopAdLdVar
  loc_BE632C: FLdPr Me
  loc_BE632F: VCallAd Control_ID_FlexCheque
  loc_BE6332: FStAdFunc var_90
  loc_BE6335: FLdPr var_90
  loc_BE6338: LateIdCallLdVar
  loc_BE6342: CStrVarTmp
  loc_BE6343: FStStrNoPop var_158
  loc_BE6346: LitStr "eCheq"
  loc_BE6349: EqStr
  loc_BE634B: OrI4
  loc_BE634C: FFreeStr var_E8 = ""
  loc_BE6353: FFreeAd var_88 = ""
  loc_BE635A: FFreeVar var_A0 = ""
  loc_BE6361: BranchF loc_BE645F
  loc_BE6364: LitStr vbNullString
  loc_BE6367: FLdPr Me
  loc_BE636A: MemStStrCopy
  loc_BE636E: FLdPr Me
  loc_BE6371: MemLdI2 global_72
  loc_BE6374: CI4UI1
  loc_BE6375: CVarI4
  loc_BE6379: PopAdLdVar
  loc_BE637A: LitVarI4
  loc_BE6382: PopAdLdVar
  loc_BE6383: FLdPr Me
  loc_BE6386: VCallAd Control_ID_FlexCheque
  loc_BE6389: FStAdFunc var_88
  loc_BE638C: FLdPr var_88
  loc_BE638F: LateIdCallLdVar
  loc_BE6399: PopAd
  loc_BE639B: LitI2_Byte 0
  loc_BE639D: LitI2_Byte 0
  loc_BE639F: FLdRfVar var_A0
  loc_BE63A2: CStrVarTmp
  loc_BE63A3: FStStrNoPop var_E8
  loc_BE63A6: LitStr "Cheque"
  loc_BE63A9: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_BE63AE: FStStrNoPop var_158
  loc_BE63B1: FLdPr Me
  loc_BE63B4: MemStStrCopy
  loc_BE63B8: FFreeStr var_E8 = ""
  loc_BE63BF: FFree1Ad var_88
  loc_BE63C2: FFree1Var var_A0 = ""
  loc_BE63C5: FLdPr Me
  loc_BE63C8: MemLdStr global_68
  loc_BE63CB: LitStr vbNullString
  loc_BE63CE: NeStr
  loc_BE63D0: BranchF loc_BE645C
  loc_BE63D3: FLdPr Me
  loc_BE63D6: MemLdI2 global_72
  loc_BE63D9: CI4UI1
  loc_BE63DA: CVarI4
  loc_BE63DE: PopAdLdVar
  loc_BE63DF: LitVarI4
  loc_BE63E7: PopAdLdVar
  loc_BE63E8: FLdPr Me
  loc_BE63EB: VCallAd Control_ID_FlexCheque
  loc_BE63EE: FStAdFunc var_88
  loc_BE63F1: FLdPr var_88
  loc_BE63F4: LateIdCallLdVar
  loc_BE63FE: CStrVarTmp
  loc_BE63FF: FStStrNoPop var_E8
  loc_BE6402: LitStr vbNullString
  loc_BE6405: NeStr
  loc_BE6407: FFree1Str var_E8
  loc_BE640A: FFree1Ad var_88
  loc_BE640D: FFree1Var var_A0 = ""
  loc_BE6410: BranchF loc_BE645C
  loc_BE6413: LitStr "Número de movimiento"
  loc_BE6416: FLdPr Me
  loc_BE6419: MemLdStr global_68
  loc_BE641C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE6421: FLdPr Me
  loc_BE6424: MemLdI2 global_72
  loc_BE6427: CI4UI1
  loc_BE6428: CVarI4
  loc_BE642C: PopAdLdVar
  loc_BE642D: LitVarI4
  loc_BE6435: PopAdLdVar
  loc_BE6436: LitVarStr var_110, vbNullString
  loc_BE643B: PopAdLdVar
  loc_BE643C: FLdPr Me
  loc_BE643F: VCallAd Control_ID_FlexCheque
  loc_BE6442: FStAdFunc var_88
  loc_BE6445: FLdPr var_88
  loc_BE6448: LateIdCallSt
  loc_BE6450: FFree1Ad var_88
  loc_BE6453: LitI2_Byte &HFF
  loc_BE6455: IStI2 arg_C
  loc_BE6458: ExitProcHresult
  loc_BE6459: Branch loc_BE645C
  loc_BE645C: Branch loc_BE6650
  loc_BE645F: FLdPr Me
  loc_BE6462: MemLdI2 global_72
  loc_BE6465: CI4UI1
  loc_BE6466: CVarI4
  loc_BE646A: PopAdLdVar
  loc_BE646B: LitVarI4
  loc_BE6473: PopAdLdVar
  loc_BE6474: FLdPr Me
  loc_BE6477: VCallAd Control_ID_FlexCheque
  loc_BE647A: FStAdFunc var_88
  loc_BE647D: FLdPr var_88
  loc_BE6480: LateIdCallLdVar
  loc_BE648A: CStrVarTmp
  loc_BE648B: FStStrNoPop var_E8
  loc_BE648E: LitStr "Impreso"
  loc_BE6491: EqStr
  loc_BE6493: FFree1Str var_E8
  loc_BE6496: FFree1Ad var_88
  loc_BE6499: FFree1Var var_A0 = ""
  loc_BE649C: BranchF loc_BE6559
  loc_BE649F: LitStr vbNullString
  loc_BE64A2: FLdPr Me
  loc_BE64A5: MemStStrCopy
  loc_BE64A9: FLdPr Me
  loc_BE64AC: MemLdI2 global_72
  loc_BE64AF: CI4UI1
  loc_BE64B0: CVarI4
  loc_BE64B4: PopAdLdVar
  loc_BE64B5: LitVarI4
  loc_BE64BD: PopAdLdVar
  loc_BE64BE: FLdPr Me
  loc_BE64C1: VCallAd Control_ID_FlexCheque
  loc_BE64C4: FStAdFunc var_88
  loc_BE64C7: FLdPr var_88
  loc_BE64CA: LateIdCallLdVar
  loc_BE64D4: PopAd
  loc_BE64D6: LitI2_Byte &HFF
  loc_BE64D8: LitI2_Byte 0
  loc_BE64DA: FLdRfVar var_A0
  loc_BE64DD: CStrVarTmp
  loc_BE64DE: FStStrNoPop var_E8
  loc_BE64E1: LitStr "Cheque"
  loc_BE64E4: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_BE64E9: FStStrNoPop var_158
  loc_BE64EC: FLdPr Me
  loc_BE64EF: MemStStrCopy
  loc_BE64F3: FFreeStr var_E8 = ""
  loc_BE64FA: FFree1Ad var_88
  loc_BE64FD: FFree1Var var_A0 = ""
  loc_BE6500: FLdPr Me
  loc_BE6503: MemLdStr global_68
  loc_BE6506: LitStr vbNullString
  loc_BE6509: NeStr
  loc_BE650B: BranchF loc_BE6556
  loc_BE650E: LitI4 0
  loc_BE6513: FLdPr Me
  loc_BE6516: MemLdStr global_68
  loc_BE6519: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE651E: FLdPr Me
  loc_BE6521: MemLdI2 global_72
  loc_BE6524: CI4UI1
  loc_BE6525: CVarI4
  loc_BE6529: PopAdLdVar
  loc_BE652A: LitVarI4
  loc_BE6532: PopAdLdVar
  loc_BE6533: LitVarStr var_110, "0"
  loc_BE6538: PopAdLdVar
  loc_BE6539: FLdPr Me
  loc_BE653C: VCallAd Control_ID_FlexCheque
  loc_BE653F: FStAdFunc var_88
  loc_BE6542: FLdPr var_88
  loc_BE6545: LateIdCallSt
  loc_BE654D: FFree1Ad var_88
  loc_BE6550: LitI2_Byte &HFF
  loc_BE6552: IStI2 arg_C
  loc_BE6555: ExitProcHresult
  loc_BE6556: Branch loc_BE6650
  loc_BE6559: FLdPr Me
  loc_BE655C: MemLdI2 global_72
  loc_BE655F: CI4UI1
  loc_BE6560: CVarI4
  loc_BE6564: PopAdLdVar
  loc_BE6565: LitVarI4
  loc_BE656D: PopAdLdVar
  loc_BE656E: FLdPr Me
  loc_BE6571: VCallAd Control_ID_FlexCheque
  loc_BE6574: FStAdFunc var_88
  loc_BE6577: FLdPr var_88
  loc_BE657A: LateIdCallLdVar
  loc_BE6584: CStrVarTmp
  loc_BE6585: FStStrNoPop var_E8
  loc_BE6588: LitStr "Transferencia"
  loc_BE658B: EqStr
  loc_BE658D: FFree1Str var_E8
  loc_BE6590: FFree1Ad var_88
  loc_BE6593: FFree1Var var_A0 = ""
  loc_BE6596: BranchF loc_BE6650
  loc_BE6599: LitStr vbNullString
  loc_BE659C: FLdPr Me
  loc_BE659F: MemStStrCopy
  loc_BE65A3: FLdPr Me
  loc_BE65A6: MemLdI2 global_72
  loc_BE65A9: CI4UI1
  loc_BE65AA: CVarI4
  loc_BE65AE: PopAdLdVar
  loc_BE65AF: LitVarI4
  loc_BE65B7: PopAdLdVar
  loc_BE65B8: FLdPr Me
  loc_BE65BB: VCallAd Control_ID_FlexCheque
  loc_BE65BE: FStAdFunc var_88
  loc_BE65C1: FLdPr var_88
  loc_BE65C4: LateIdCallLdVar
  loc_BE65CE: PopAd
  loc_BE65D0: LitI2_Byte &HFF
  loc_BE65D2: LitI2_Byte 0
  loc_BE65D4: FLdRfVar var_A0
  loc_BE65D7: CStrVarTmp
  loc_BE65D8: FStStrNoPop var_E8
  loc_BE65DB: LitStr "Cheque"
  loc_BE65DE: ImpAdCallI2 Proc_266_27_9A5218(, , , )
  loc_BE65E3: FStStrNoPop var_158
  loc_BE65E6: FLdPr Me
  loc_BE65E9: MemStStrCopy
  loc_BE65ED: FFreeStr var_E8 = ""
  loc_BE65F4: FFree1Ad var_88
  loc_BE65F7: FFree1Var var_A0 = ""
  loc_BE65FA: FLdPr Me
  loc_BE65FD: MemLdStr global_68
  loc_BE6600: LitStr vbNullString
  loc_BE6603: NeStr
  loc_BE6605: BranchF loc_BE6650
  loc_BE6608: LitI4 0
  loc_BE660D: FLdPr Me
  loc_BE6610: MemLdStr global_68
  loc_BE6613: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE6618: FLdPr Me
  loc_BE661B: MemLdI2 global_72
  loc_BE661E: CI4UI1
  loc_BE661F: CVarI4
  loc_BE6623: PopAdLdVar
  loc_BE6624: LitVarI4
  loc_BE662C: PopAdLdVar
  loc_BE662D: LitVarStr var_110, "0"
  loc_BE6632: PopAdLdVar
  loc_BE6633: FLdPr Me
  loc_BE6636: VCallAd Control_ID_FlexCheque
  loc_BE6639: FStAdFunc var_88
  loc_BE663C: FLdPr var_88
  loc_BE663F: LateIdCallSt
  loc_BE6647: FFree1Ad var_88
  loc_BE664A: LitI2_Byte &HFF
  loc_BE664C: IStI2 arg_C
  loc_BE664F: ExitProcHresult
  loc_BE6650: FLdPr Me
  loc_BE6653: MemLdUI1 global_64
  loc_BE6657: CI2UI1
  loc_BE6659: LitI2_Byte 1
  loc_BE665B: EqI2
  loc_BE665C: FLdPr Me
  loc_BE665F: MemLdI2 global_72
  loc_BE6662: CI4UI1
  loc_BE6663: CVarI4
  loc_BE6667: PopAdLdVar
  loc_BE6668: LitVarI4
  loc_BE6670: PopAdLdVar
  loc_BE6671: FLdPr Me
  loc_BE6674: VCallAd Control_ID_FlexCheque
  loc_BE6677: FStAdFunc var_88
  loc_BE667A: FLdPr var_88
  loc_BE667D: LateIdCallLdVar
  loc_BE6687: CStrVarTmp
  loc_BE6688: FStStrNoPop var_E8
  loc_BE668B: LitStr vbNullString
  loc_BE668E: EqStr
  loc_BE6690: AndI4
  loc_BE6691: FFree1Str var_E8
  loc_BE6694: FFree1Ad var_88
  loc_BE6697: FFree1Var var_A0 = ""
  loc_BE669A: BranchF loc_BE67B0
  loc_BE669D: LitStr vbNullString
  loc_BE66A0: FLdPr Me
  loc_BE66A3: MemStStrCopy
  loc_BE66A7: FLdPr Me
  loc_BE66AA: MemLdI2 global_72
  loc_BE66AD: CI4UI1
  loc_BE66AE: CVarI4
  loc_BE66B2: PopAdLdVar
  loc_BE66B3: LitVarI4
  loc_BE66BB: PopAdLdVar
  loc_BE66BC: FLdPr Me
  loc_BE66BF: VCallAd Control_ID_FlexCheque
  loc_BE66C2: FStAdFunc var_88
  loc_BE66C5: FLdPr var_88
  loc_BE66C8: LateIdCallLdVar
  loc_BE66D2: PopAd
  loc_BE66D4: FLdRfVar var_100
  loc_BE66D7: FLdRfVar var_21C
  loc_BE66DA: LitVarStr var_110, "FechOrpa"
  loc_BE66DF: PopAdLdVar
  loc_BE66E0: FLdRfVar var_144
  loc_BE66E3: FLdRfVar var_90
  loc_BE66E6: FLdPr Me
  loc_BE66E9: MemLdRfVar from_stack_1.global_52
  loc_BE66EC: NewIfNullPr clsordenpago
  loc_BE66EF: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BE66F4: FLdPr var_90
  loc_BE66F7:  = Me.Fields
  loc_BE66FC: FLdPr var_144
  loc_BE66FF: from_stack_2 = Me.Item(from_stack_1)
  loc_BE6704: FLdPr var_21C
  loc_BE6707:  = Me.Value
  loc_BE670C: LitI2_Byte &HFF
  loc_BE670E: PopTmpLdAd2 var_8A
  loc_BE6711: LitNothing
  loc_BE6713: CastAd
  loc_BE6716: FStAdFunc var_230
  loc_BE6719: FLdRfVar var_230
  loc_BE671C: FLdRfVar var_100
  loc_BE671F: CStrVarTmp
  loc_BE6720: FStStrNoPop var_158
  loc_BE6723: LitI2_Byte &HFF
  loc_BE6725: LitI2_Byte &HFF
  loc_BE6727: FLdRfVar var_A0
  loc_BE672A: CStrVarTmp
  loc_BE672B: FStStrNoPop var_E8
  loc_BE672E: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_BE6733: FStStrNoPop var_224
  loc_BE6736: FLdPr Me
  loc_BE6739: MemStStrCopy
  loc_BE673D: FFreeStr var_E8 = "": var_158 = ""
  loc_BE6746: FFreeAd var_88 = "": var_90 = "": var_144 = "": var_21C = ""
  loc_BE6753: FFreeVar var_A0 = ""
  loc_BE675A: FLdPr Me
  loc_BE675D: MemLdStr global_68
  loc_BE6760: LitStr vbNullString
  loc_BE6763: NeStr
  loc_BE6765: BranchF loc_BE67B0
  loc_BE6768: LitI4 0
  loc_BE676D: FLdPr Me
  loc_BE6770: MemLdStr global_68
  loc_BE6773: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE6778: FLdPr Me
  loc_BE677B: MemLdI2 global_72
  loc_BE677E: CI4UI1
  loc_BE677F: CVarI4
  loc_BE6783: PopAdLdVar
  loc_BE6784: LitVarI4
  loc_BE678C: PopAdLdVar
  loc_BE678D: LitVarStr var_110, vbNullString
  loc_BE6792: PopAdLdVar
  loc_BE6793: FLdPr Me
  loc_BE6796: VCallAd Control_ID_FlexCheque
  loc_BE6799: FStAdFunc var_88
  loc_BE679C: FLdPr var_88
  loc_BE679F: LateIdCallSt
  loc_BE67A7: FFree1Ad var_88
  loc_BE67AA: LitI2_Byte &HFF
  loc_BE67AC: IStI2 arg_C
  loc_BE67AF: ExitProcHresult
  loc_BE67B0: FLdRfVar var_8A
  loc_BE67B3: FLdPr Me
  loc_BE67B6: VCallAd Control_ID_ChequeUnicoChk
  loc_BE67B9: FStAdFunc var_88
  loc_BE67BC: FLdPr var_88
  loc_BE67BF:  = Me.Value
  loc_BE67C4: FLdI2 var_8A
  loc_BE67C7: LitI2_Byte 0
  loc_BE67C9: EqI2
  loc_BE67CA: FFree1Ad var_88
  loc_BE67CD: BranchF loc_BE6C85
  loc_BE67D0: FLdPr Me
  loc_BE67D3: MemLdI2 global_72
  loc_BE67D6: CI4UI1
  loc_BE67D7: CVarI4
  loc_BE67DB: PopAdLdVar
  loc_BE67DC: LitVarI4
  loc_BE67E4: PopAdLdVar
  loc_BE67E5: FLdPr Me
  loc_BE67E8: VCallAd Control_ID_FlexCheque
  loc_BE67EB: FStAdFunc var_88
  loc_BE67EE: FLdPr var_88
  loc_BE67F1: LateIdCallLdVar
  loc_BE67FB: CStrVarTmp
  loc_BE67FC: FStStrNoPop var_E8
  loc_BE67FF: LitStr "Manual"
  loc_BE6802: EqStr
  loc_BE6804: FFree1Str var_E8
  loc_BE6807: FFree1Ad var_88
  loc_BE680A: FFree1Var var_A0 = ""
  loc_BE680D: BranchF loc_BE6C85
  loc_BE6810: FLdPr Me
  loc_BE6813: MemLdI2 global_72
  loc_BE6816: CI4UI1
  loc_BE6817: CVarI4
  loc_BE681B: PopAdLdVar
  loc_BE681C: LitVarI4
  loc_BE6824: PopAdLdVar
  loc_BE6825: FLdPr Me
  loc_BE6828: VCallAd Control_ID_FlexCheque
  loc_BE682B: FStAdFunc var_88
  loc_BE682E: FLdPr var_88
  loc_BE6831: LateIdCallLdVar
  loc_BE683B: CStrVarTmp
  loc_BE683C: FStStrNoPop var_E8
  loc_BE683F: LitStr vbNullString
  loc_BE6842: NeStr
  loc_BE6844: FFree1Str var_E8
  loc_BE6847: FFree1Ad var_88
  loc_BE684A: FFree1Var var_A0 = ""
  loc_BE684D: BranchF loc_BE6C85
  loc_BE6850: FLdPr Me
  loc_BE6853: MemLdI2 global_72
  loc_BE6856: CI4UI1
  loc_BE6857: CVarI4
  loc_BE685B: PopAdLdVar
  loc_BE685C: LitVarI4
  loc_BE6864: PopAdLdVar
  loc_BE6865: FLdPr Me
  loc_BE6868: VCallAd Control_ID_FlexCheque
  loc_BE686B: FStAdFunc var_88
  loc_BE686E: FLdPr var_88
  loc_BE6871: LateIdCallLdVar
  loc_BE687B: PopAd
  loc_BE687D: LitI4 1
  loc_BE6882: FLdPr Me
  loc_BE6885: MemLdI2 global_72
  loc_BE6888: CI4UI1
  loc_BE6889: CVarI4
  loc_BE688D: PopAdLdVar
  loc_BE688E: LitVarI4
  loc_BE6896: PopAdLdVar
  loc_BE6897: FLdPr Me
  loc_BE689A: VCallAd Control_ID_FlexCheque
  loc_BE689D: FStAdFunc var_90
  loc_BE68A0: FLdPr var_90
  loc_BE68A3: LateIdCallLdVar
  loc_BE68AD: CStrVarTmp
  loc_BE68AE: FStStrNoPop var_E8
  loc_BE68B1: LitStr "-"
  loc_BE68B4: LitI4 0
  loc_BE68B9: FnInStr4
  loc_BE68BB: LitI4 1
  loc_BE68C0: SubI4
  loc_BE68C1: CVarI4
  loc_BE68C5: LitI4 1
  loc_BE68CA: FLdRfVar var_A0
  loc_BE68CD: CStrVarTmp
  loc_BE68CE: FStStrNoPop var_158
  loc_BE68D1: ImpAdCallI2 Mid$(, , )
  loc_BE68D6: CVarStr var_178
  loc_BE68D9: ImpAdCallI2 IsNumeric()
  loc_BE68DE: FFreeStr var_E8 = ""
  loc_BE68E5: FFreeAd var_88 = ""
  loc_BE68EC: FFreeVar var_A0 = "": var_100 = "": var_154 = ""
  loc_BE68F7: BranchF loc_BE6C85
  loc_BE68FA: FLdPr Me
  loc_BE68FD: MemLdI2 global_72
  loc_BE6900: CI4UI1
  loc_BE6901: CVarI4
  loc_BE6905: PopAdLdVar
  loc_BE6906: LitVarI4
  loc_BE690E: PopAdLdVar
  loc_BE690F: FLdPr Me
  loc_BE6912: VCallAd Control_ID_FlexCheque
  loc_BE6915: FStAdFunc var_88
  loc_BE6918: FLdPr var_88
  loc_BE691B: LateIdCallLdVar
  loc_BE6925: PopAd
  loc_BE6927: LitI4 1
  loc_BE692C: FLdPr Me
  loc_BE692F: MemLdI2 global_72
  loc_BE6932: CI4UI1
  loc_BE6933: CVarI4
  loc_BE6937: PopAdLdVar
  loc_BE6938: LitVarI4
  loc_BE6940: PopAdLdVar
  loc_BE6941: FLdPr Me
  loc_BE6944: VCallAd Control_ID_FlexCheque
  loc_BE6947: FStAdFunc var_90
  loc_BE694A: FLdPr var_90
  loc_BE694D: LateIdCallLdVar
  loc_BE6957: CStrVarTmp
  loc_BE6958: FStStrNoPop var_E8
  loc_BE695B: LitStr "-"
  loc_BE695E: LitI4 0
  loc_BE6963: FnInStr4
  loc_BE6965: LitI4 1
  loc_BE696A: SubI4
  loc_BE696B: CVarI4
  loc_BE696F: LitI4 1
  loc_BE6974: FLdRfVar var_A0
  loc_BE6977: CStrVarTmp
  loc_BE6978: FStStrNoPop var_158
  loc_BE697B: ImpAdCallI2 Mid$(, , )
  loc_BE6980: FStStrNoPop var_224
  loc_BE6983: CI4Str
  loc_BE6984: FLdPr Me
  loc_BE6987: MemStI4 global_84
  loc_BE698A: FFreeStr var_E8 = "": var_158 = ""
  loc_BE6993: FFreeAd var_88 = ""
  loc_BE699A: FFreeVar var_A0 = "": var_100 = ""
  loc_BE69A3: FLdPr Me
  loc_BE69A6: MemLdI2 global_72
  loc_BE69A9: CI4UI1
  loc_BE69AA: CVarI4
  loc_BE69AE: PopAdLdVar
  loc_BE69AF: LitVarI4
  loc_BE69B7: PopAdLdVar
  loc_BE69B8: FLdPr Me
  loc_BE69BB: VCallAd Control_ID_FlexCheque
  loc_BE69BE: FStAdFunc var_88
  loc_BE69C1: FLdPr var_88
  loc_BE69C4: LateIdCallLdVar
  loc_BE69CE: CStrVarTmp
  loc_BE69CF: FStStrNoPop var_E8
  loc_BE69D2: CI4Str
  loc_BE69D3: FLdPr Me
  loc_BE69D6: MemStI4 global_88
  loc_BE69D9: FFree1Str var_E8
  loc_BE69DC: FFree1Ad var_88
  loc_BE69DF: FFree1Var var_A0 = ""
  loc_BE69E2: LitI2_Byte 1
  loc_BE69E4: FLdPr Me
  loc_BE69E7: MemLdRfVar from_stack_1.global_74
  loc_BE69EA: FLdPr Me
  loc_BE69ED: VCallAd Control_ID_FlexCheque
  loc_BE69F0: FStAdFunc var_88
  loc_BE69F3: FLdPr var_88
  loc_BE69F6: LateIdLdVar var_A0 DispID_4 0
  loc_BE69FD: CI4Var
  loc_BE69FF: LitI4 1
  loc_BE6A04: SubI4
  loc_BE6A05: CI2I4
  loc_BE6A06: FFree1Ad var_88
  loc_BE6A09: FFree1Var var_A0 = ""
  loc_BE6A0C: ForI2 var_234
  loc_BE6A12: FLdPr Me
  loc_BE6A15: MemLdI2 global_72
  loc_BE6A18: FLdPr Me
  loc_BE6A1B: MemLdI2 global_74
  loc_BE6A1E: NeI2
  loc_BE6A1F: BranchF loc_BE6C7A
  loc_BE6A22: FLdPr Me
  loc_BE6A25: MemLdI2 global_74
  loc_BE6A28: CI4UI1
  loc_BE6A29: CVarI4
  loc_BE6A2D: PopAdLdVar
  loc_BE6A2E: LitVarI4
  loc_BE6A36: PopAdLdVar
  loc_BE6A37: FLdPr Me
  loc_BE6A3A: VCallAd Control_ID_FlexCheque
  loc_BE6A3D: FStAdFunc var_90
  loc_BE6A40: FLdPr var_90
  loc_BE6A43: LateIdCallLdVar
  loc_BE6A4D: PopAd
  loc_BE6A4F: FLdPr Me
  loc_BE6A52: MemLdI2 global_74
  loc_BE6A55: CI4UI1
  loc_BE6A56: CVarI4
  loc_BE6A5A: PopAdLdVar
  loc_BE6A5B: LitVarI4
  loc_BE6A63: PopAdLdVar
  loc_BE6A64: FLdPr Me
  loc_BE6A67: VCallAd Control_ID_FlexCheque
  loc_BE6A6A: FStAdFunc var_88
  loc_BE6A6D: FLdPr var_88
  loc_BE6A70: LateIdCallLdVar
  loc_BE6A7A: CStrVarTmp
  loc_BE6A7B: CVarStr var_100
  loc_BE6A7E: ImpAdCallI2 IsNumeric()
  loc_BE6A83: LitI4 1
  loc_BE6A88: FLdPr Me
  loc_BE6A8B: MemLdI2 global_72
  loc_BE6A8E: CI4UI1
  loc_BE6A8F: CVarI4
  loc_BE6A93: PopAdLdVar
  loc_BE6A94: LitVarI4
  loc_BE6A9C: PopAdLdVar
  loc_BE6A9D: FLdPr Me
  loc_BE6AA0: VCallAd Control_ID_FlexCheque
  loc_BE6AA3: FStAdFunc var_144
  loc_BE6AA6: FLdPr var_144
  loc_BE6AA9: LateIdCallLdVar
  loc_BE6AB3: CStrVarTmp
  loc_BE6AB4: FStStrNoPop var_E8
  loc_BE6AB7: LitStr "-"
  loc_BE6ABA: LitI4 0
  loc_BE6ABF: FnInStr4
  loc_BE6AC1: LitI4 1
  loc_BE6AC6: SubI4
  loc_BE6AC7: CVarI4
  loc_BE6ACB: LitI4 1
  loc_BE6AD0: FLdRfVar var_154
  loc_BE6AD3: CStrVarTmp
  loc_BE6AD4: FStStrNoPop var_158
  loc_BE6AD7: ImpAdCallI2 Mid$(, , )
  loc_BE6ADC: CVarStr var_1A8
  loc_BE6ADF: ImpAdCallI2 IsNumeric()
  loc_BE6AE4: AndI4
  loc_BE6AE5: FFreeStr var_E8 = ""
  loc_BE6AEC: FFreeAd var_88 = "": var_90 = ""
  loc_BE6AF5: FFreeVar var_A0 = "": var_100 = "": var_154 = "": var_178 = "": var_188 = ""
  loc_BE6B04: BranchF loc_BE6C7A
  loc_BE6B07: FLdPr Me
  loc_BE6B0A: MemLdI2 global_74
  loc_BE6B0D: CI4UI1
  loc_BE6B0E: CVarI4
  loc_BE6B12: PopAdLdVar
  loc_BE6B13: LitVarI4
  loc_BE6B1B: PopAdLdVar
  loc_BE6B1C: FLdPr Me
  loc_BE6B1F: VCallAd Control_ID_FlexCheque
  loc_BE6B22: FStAdFunc var_88
  loc_BE6B25: FLdPr var_88
  loc_BE6B28: LateIdCallLdVar
  loc_BE6B32: PopAd
  loc_BE6B34: FLdPr Me
  loc_BE6B37: MemLdI2 global_72
  loc_BE6B3A: CI4UI1
  loc_BE6B3B: CVarI4
  loc_BE6B3F: PopAdLdVar
  loc_BE6B40: LitVarI4
  loc_BE6B48: PopAdLdVar
  loc_BE6B49: FLdPr Me
  loc_BE6B4C: VCallAd Control_ID_FlexCheque
  loc_BE6B4F: FStAdFunc var_90
  loc_BE6B52: FLdPr var_90
  loc_BE6B55: LateIdCallLdVar
  loc_BE6B5F: PopAd
  loc_BE6B61: LitI4 1
  loc_BE6B66: FLdRfVar var_100
  loc_BE6B69: CStrVarTmp
  loc_BE6B6A: FStStrNoPop var_E8
  loc_BE6B6D: LitStr "-"
  loc_BE6B70: LitI4 0
  loc_BE6B75: FnInStr4
  loc_BE6B77: LitI4 1
  loc_BE6B7C: SubI4
  loc_BE6B7D: CVarI4
  loc_BE6B81: LitI4 1
  loc_BE6B86: FLdRfVar var_A0
  loc_BE6B89: CStrVarTmp
  loc_BE6B8A: FStStrNoPop var_158
  loc_BE6B8D: ImpAdCallI2 Mid$(, , )
  loc_BE6B92: FStStr var_22C
  loc_BE6B95: FLdPr Me
  loc_BE6B98: MemLdI2 global_74
  loc_BE6B9B: CI4UI1
  loc_BE6B9C: CVarI4
  loc_BE6BA0: PopAdLdVar
  loc_BE6BA1: LitVarI4
  loc_BE6BA9: PopAdLdVar
  loc_BE6BAA: FLdPr Me
  loc_BE6BAD: VCallAd Control_ID_FlexCheque
  loc_BE6BB0: FStAdFunc var_144
  loc_BE6BB3: FLdPr var_144
  loc_BE6BB6: LateIdCallLdVar
  loc_BE6BC0: PopAd
  loc_BE6BC2: FLdPr Me
  loc_BE6BC5: MemLdStr global_84
  loc_BE6BC8: CR8I4
  loc_BE6BC9: FLdZeroAd var_22C
  loc_BE6BCC: FStStrNoPop var_224
  loc_BE6BCF: CR8Str
  loc_BE6BD1: EqR4
  loc_BE6BD2: FLdPr Me
  loc_BE6BD5: MemLdStr global_88
  loc_BE6BD8: CR8I4
  loc_BE6BD9: FLdRfVar var_178
  loc_BE6BDC: CStrVarTmp
  loc_BE6BDD: FStStrNoPop var_228
  loc_BE6BE0: CR8Str
  loc_BE6BE2: EqR4
  loc_BE6BE3: AndI4
  loc_BE6BE4: FFreeStr var_E8 = "": var_158 = "": var_224 = "": var_228 = ""
  loc_BE6BF1: FFreeAd var_88 = "": var_90 = ""
  loc_BE6BFA: FFreeVar var_A0 = "": var_100 = "": var_154 = ""
  loc_BE6C05: BranchF loc_BE6C7A
  loc_BE6C08: LitStr "El número de cheque: "
  loc_BE6C0B: FLdPr Me
  loc_BE6C0E: MemLdStr global_88
  loc_BE6C11: CStrI4
  loc_BE6C13: FStStrNoPop var_E8
  loc_BE6C16: ConcatStr
  loc_BE6C17: FStStrNoPop var_158
  loc_BE6C1A: LitStr " del Banco: "
  loc_BE6C1D: ConcatStr
  loc_BE6C1E: FStStrNoPop var_224
  loc_BE6C21: FLdPr Me
  loc_BE6C24: MemLdStr global_84
  loc_BE6C27: CStrI4
  loc_BE6C29: FStStrNoPop var_228
  loc_BE6C2C: ConcatStr
  loc_BE6C2D: FStStrNoPop var_22C
  loc_BE6C30: LitStr " no se puede repetir. Verifique..."
  loc_BE6C33: ConcatStr
  loc_BE6C34: FStStrNoPop var_238
  loc_BE6C37: FLdPr Me
  loc_BE6C3A: MemStStrCopy
  loc_BE6C3E: FFreeStr var_E8 = "": var_158 = "": var_224 = "": var_228 = "": var_22C = ""
  loc_BE6C4D: LitI4 0
  loc_BE6C52: FLdPr Me
  loc_BE6C55: MemLdStr global_68
  loc_BE6C58: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE6C5D: FLdPr Me
  loc_BE6C60: VCallAd Control_ID_FlexCheque
  loc_BE6C63: FStAdFunc var_88
  loc_BE6C66: FLdPr var_88
  loc_BE6C69: LateIdCall
  loc_BE6C71: FFree1Ad var_88
  loc_BE6C74: LitI2_Byte &HFF
  loc_BE6C76: IStI2 arg_C
  loc_BE6C79: ExitProcHresult
  loc_BE6C7A: FLdPr Me
  loc_BE6C7D: MemLdRfVar from_stack_1.global_74
  loc_BE6C80: NextI2 var_234, loc_BE6A12
  loc_BE6C85: FLdPr Me
  loc_BE6C88: MemLdI2 global_72
  loc_BE6C8B: CI4UI1
  loc_BE6C8C: CVarI4
  loc_BE6C90: PopAdLdVar
  loc_BE6C91: LitVarI4
  loc_BE6C99: PopAdLdVar
  loc_BE6C9A: FLdPr Me
  loc_BE6C9D: VCallAd Control_ID_FlexCheque
  loc_BE6CA0: FStAdFunc var_88
  loc_BE6CA3: FLdPr var_88
  loc_BE6CA6: LateIdCallLdVar
  loc_BE6CB0: CStrVarTmp
  loc_BE6CB1: FStStrNoPop var_E8
  loc_BE6CB4: LitStr "Manual"
  loc_BE6CB7: EqStr
  loc_BE6CB9: FFree1Str var_E8
  loc_BE6CBC: FFree1Ad var_88
  loc_BE6CBF: FFree1Var var_A0 = ""
  loc_BE6CC2: BranchF loc_BE6FB5
  loc_BE6CC5: FLdPr Me
  loc_BE6CC8: MemLdI2 global_72
  loc_BE6CCB: CI4UI1
  loc_BE6CCC: CVarI4
  loc_BE6CD0: PopAdLdVar
  loc_BE6CD1: LitVarI4
  loc_BE6CD9: PopAdLdVar
  loc_BE6CDA: FLdPr Me
  loc_BE6CDD: VCallAd Control_ID_FlexCheque
  loc_BE6CE0: FStAdFunc var_88
  loc_BE6CE3: FLdPr var_88
  loc_BE6CE6: LateIdCallLdVar
  loc_BE6CF0: CStrVarTmp
  loc_BE6CF1: FStStrNoPop var_E8
  loc_BE6CF4: LitStr vbNullString
  loc_BE6CF7: NeStr
  loc_BE6CF9: FFree1Str var_E8
  loc_BE6CFC: FFree1Ad var_88
  loc_BE6CFF: FFree1Var var_A0 = ""
  loc_BE6D02: BranchF loc_BE6FB5
  loc_BE6D05: FLdPr Me
  loc_BE6D08: MemLdI2 global_72
  loc_BE6D0B: CI4UI1
  loc_BE6D0C: CVarI4
  loc_BE6D10: PopAdLdVar
  loc_BE6D11: LitVarI4
  loc_BE6D19: PopAdLdVar
  loc_BE6D1A: FLdPr Me
  loc_BE6D1D: VCallAd Control_ID_FlexCheque
  loc_BE6D20: FStAdFunc var_88
  loc_BE6D23: FLdPr var_88
  loc_BE6D26: LateIdCallLdVar
  loc_BE6D30: PopAd
  loc_BE6D32: LitI4 1
  loc_BE6D37: FLdPr Me
  loc_BE6D3A: MemLdI2 global_72
  loc_BE6D3D: CI4UI1
  loc_BE6D3E: CVarI4
  loc_BE6D42: PopAdLdVar
  loc_BE6D43: LitVarI4
  loc_BE6D4B: PopAdLdVar
  loc_BE6D4C: FLdPr Me
  loc_BE6D4F: VCallAd Control_ID_FlexCheque
  loc_BE6D52: FStAdFunc var_90
  loc_BE6D55: FLdPr var_90
  loc_BE6D58: LateIdCallLdVar
  loc_BE6D62: CStrVarTmp
  loc_BE6D63: FStStrNoPop var_E8
  loc_BE6D66: LitStr "-"
  loc_BE6D69: LitI4 0
  loc_BE6D6E: FnInStr4
  loc_BE6D70: LitI4 1
  loc_BE6D75: SubI4
  loc_BE6D76: CVarI4
  loc_BE6D7A: LitI4 1
  loc_BE6D7F: FLdRfVar var_A0
  loc_BE6D82: CStrVarTmp
  loc_BE6D83: FStStrNoPop var_158
  loc_BE6D86: ImpAdCallI2 Mid$(, , )
  loc_BE6D8B: CVarStr var_178
  loc_BE6D8E: ImpAdCallI2 IsNumeric()
  loc_BE6D93: FLdPr Me
  loc_BE6D96: MemLdI2 global_72
  loc_BE6D99: CI4UI1
  loc_BE6D9A: CVarI4
  loc_BE6D9E: PopAdLdVar
  loc_BE6D9F: LitVarI4
  loc_BE6DA7: PopAdLdVar
  loc_BE6DA8: FLdPr Me
  loc_BE6DAB: VCallAd Control_ID_FlexCheque
  loc_BE6DAE: FStAdFunc var_144
  loc_BE6DB1: FLdPr var_144
  loc_BE6DB4: LateIdCallLdVar
  loc_BE6DBE: CStrVarTmp
  loc_BE6DBF: CVarStr var_1A8
  loc_BE6DC2: ImpAdCallI2 IsNumeric()
  loc_BE6DC7: AndI4
  loc_BE6DC8: FFreeStr var_E8 = ""
  loc_BE6DCF: FFreeAd var_88 = "": var_90 = ""
  loc_BE6DD8: FFreeVar var_A0 = "": var_100 = "": var_154 = "": var_178 = "": var_188 = ""
  loc_BE6DE7: BranchF loc_BE6FB5
  loc_BE6DEA: FLdPr Me
  loc_BE6DED: MemLdI2 global_72
  loc_BE6DF0: CI4UI1
  loc_BE6DF1: CVarI4
  loc_BE6DF5: PopAdLdVar
  loc_BE6DF6: LitVarI4
  loc_BE6DFE: PopAdLdVar
  loc_BE6DFF: FLdPr Me
  loc_BE6E02: VCallAd Control_ID_FlexCheque
  loc_BE6E05: FStAdFunc var_88
  loc_BE6E08: FLdPr var_88
  loc_BE6E0B: LateIdCallLdVar
  loc_BE6E15: PopAd
  loc_BE6E17: FLdPr Me
  loc_BE6E1A: MemLdI2 global_72
  loc_BE6E1D: CI4UI1
  loc_BE6E1E: CVarI4
  loc_BE6E22: PopAdLdVar
  loc_BE6E23: LitVarI4
  loc_BE6E2B: PopAdLdVar
  loc_BE6E2C: FLdPr Me
  loc_BE6E2F: VCallAd Control_ID_FlexCheque
  loc_BE6E32: FStAdFunc var_90
  loc_BE6E35: FLdPr var_90
  loc_BE6E38: LateIdCallLdVar
  loc_BE6E42: PopAd
  loc_BE6E44: LitI4 1
  loc_BE6E49: FLdRfVar var_100
  loc_BE6E4C: CStrVarTmp
  loc_BE6E4D: FStStrNoPop var_E8
  loc_BE6E50: LitStr "-"
  loc_BE6E53: LitI4 0
  loc_BE6E58: FnInStr4
  loc_BE6E5A: LitI4 1
  loc_BE6E5F: SubI4
  loc_BE6E60: CVarI4
  loc_BE6E64: LitI4 1
  loc_BE6E69: FLdRfVar var_A0
  loc_BE6E6C: CStrVarTmp
  loc_BE6E6D: FStStrNoPop var_158
  loc_BE6E70: ImpAdCallI2 Mid$(, , )
  loc_BE6E75: FStStr var_238
  loc_BE6E78: FLdPr Me
  loc_BE6E7B: MemLdI2 global_72
  loc_BE6E7E: CI4UI1
  loc_BE6E7F: CVarI4
  loc_BE6E83: PopAdLdVar
  loc_BE6E84: LitVarI4
  loc_BE6E8C: PopAdLdVar
  loc_BE6E8D: FLdPr Me
  loc_BE6E90: VCallAd Control_ID_FlexCheque
  loc_BE6E93: FStAdFunc var_144
  loc_BE6E96: FLdPr var_144
  loc_BE6E99: LateIdCallLdVar
  loc_BE6EA3: PopAd
  loc_BE6EA5: FLdRfVar var_188
  loc_BE6EA8: FLdRfVar var_23C
  loc_BE6EAB: LitVarStr var_1F8, "PeriInfo"
  loc_BE6EB0: PopAdLdVar
  loc_BE6EB1: FLdRfVar var_230
  loc_BE6EB4: FLdRfVar var_21C
  loc_BE6EB7: FLdPr Me
  loc_BE6EBA: MemLdRfVar from_stack_1.global_52
  loc_BE6EBD: NewIfNullPr clsordenpago
  loc_BE6EC0: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BE6EC5: FLdPr var_21C
  loc_BE6EC8:  = Me.Fields
  loc_BE6ECD: FLdPr var_230
  loc_BE6ED0: from_stack_2 = Me.Item(from_stack_1)
  loc_BE6ED5: FLdPr var_23C
  loc_BE6ED8:  = Me.Value
  loc_BE6EDD: FLdRfVar var_1A8
  loc_BE6EE0: FLdRfVar var_248
  loc_BE6EE3: LitVarStr var_218, "NumeOrpa"
  loc_BE6EE8: PopAdLdVar
  loc_BE6EE9: FLdRfVar var_244
  loc_BE6EEC: FLdRfVar var_240
  loc_BE6EEF: FLdPr Me
  loc_BE6EF2: MemLdRfVar from_stack_1.global_52
  loc_BE6EF5: NewIfNullPr clsordenpago
  loc_BE6EF8: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BE6EFD: FLdPr var_240
  loc_BE6F00:  = Me.Fields
  loc_BE6F05: FLdPr var_244
  loc_BE6F08: from_stack_2 = Me.Item(from_stack_1)
  loc_BE6F0D: FLdPr var_248
  loc_BE6F10:  = Me.Value
  loc_BE6F15: FLdRfVar var_22C
  loc_BE6F18: FLdRfVar var_1A8
  loc_BE6F1B: CI4Var
  loc_BE6F1D: FLdRfVar var_188
  loc_BE6F20: CI2Var
  loc_BE6F21: FLdRfVar var_178
  loc_BE6F24: CStrVarTmp
  loc_BE6F25: FStStrNoPop var_228
  loc_BE6F28: CI4Str
  loc_BE6F29: FLdZeroAd var_238
  loc_BE6F2C: FStStrNoPop var_224
  loc_BE6F2F: CI4Str
  loc_BE6F30: FLdPr Me
  loc_BE6F33: MemLdRfVar from_stack_1.global_60
  loc_BE6F36: NewIfNullPr clscheque
  loc_BE6F39: from_stack_5v = clscheque.ValidaNumeroCheque(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v)
  loc_BE6F3E: ILdRf var_22C
  loc_BE6F41: FLdPr Me
  loc_BE6F44: MemStStrCopy
  loc_BE6F48: FFreeStr var_E8 = "": var_158 = "": var_224 = "": var_228 = "": var_22C = ""
  loc_BE6F57: FFreeAd var_88 = "": var_90 = "": var_144 = "": var_21C = "": var_230 = "": var_240 = "": var_244 = "": var_23C = ""
  loc_BE6F6C: FFreeVar var_A0 = "": var_100 = "": var_154 = "": var_178 = "": var_188 = ""
  loc_BE6F7B: FLdPr Me
  loc_BE6F7E: MemLdStr global_68
  loc_BE6F81: LitStr vbNullString
  loc_BE6F84: NeStr
  loc_BE6F86: BranchF loc_BE6FB5
  loc_BE6F89: LitI4 0
  loc_BE6F8E: FLdPr Me
  loc_BE6F91: MemLdStr global_68
  loc_BE6F94: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE6F99: FLdPr Me
  loc_BE6F9C: VCallAd Control_ID_FlexCheque
  loc_BE6F9F: FStAdFunc var_88
  loc_BE6FA2: FLdPr var_88
  loc_BE6FA5: LateIdCall
  loc_BE6FAD: FFree1Ad var_88
  loc_BE6FB0: LitI2_Byte &HFF
  loc_BE6FB2: IStI2 arg_C
  loc_BE6FB5: FLdPr Me
  loc_BE6FB8: MemLdRfVar from_stack_1.global_72
  loc_BE6FBB: NextI2 var_220, loc_BE608B
  loc_BE6FC0: FLdPr Me
  loc_BE6FC3: MemLdUI1 global_64
  loc_BE6FC7: CI2UI1
  loc_BE6FC9: LitI2_Byte 3
  loc_BE6FCB: EqI2
  loc_BE6FCC: BranchF loc_BE7165
  loc_BE6FCF: LitI2_Byte 1
  loc_BE6FD1: FLdPr Me
  loc_BE6FD4: MemLdRfVar from_stack_1.global_72
  loc_BE6FD7: FLdPr Me
  loc_BE6FDA: VCallAd Control_ID_FlexCheque
  loc_BE6FDD: FStAdFunc var_88
  loc_BE6FE0: FLdPr var_88
  loc_BE6FE3: LateIdLdVar var_A0 DispID_4 0
  loc_BE6FEA: CI4Var
  loc_BE6FEC: LitI4 1
  loc_BE6FF1: SubI4
  loc_BE6FF2: CI2I4
  loc_BE6FF3: FFree1Ad var_88
  loc_BE6FF6: FFree1Var var_A0 = ""
  loc_BE6FF9: ForI2 var_24C
  loc_BE6FFF: FLdPr Me
  loc_BE7002: MemLdI2 global_72
  loc_BE7005: CI4UI1
  loc_BE7006: CVarI4
  loc_BE700A: PopAdLdVar
  loc_BE700B: LitVarI4
  loc_BE7013: PopAdLdVar
  loc_BE7014: FLdPr Me
  loc_BE7017: VCallAd Control_ID_FlexCheque
  loc_BE701A: FStAdFunc var_88
  loc_BE701D: FLdPr var_88
  loc_BE7020: LateIdCallLdVar
  loc_BE702A: CStrVarTmp
  loc_BE702B: FStStrNoPop var_E8
  loc_BE702E: LitStr vbNullString
  loc_BE7031: NeStr
  loc_BE7033: FFree1Str var_E8
  loc_BE7036: FFree1Ad var_88
  loc_BE7039: FFree1Var var_A0 = ""
  loc_BE703C: BranchF loc_BE715A
  loc_BE703F: LitStr vbNullString
  loc_BE7042: FLdPr Me
  loc_BE7045: MemStStrCopy
  loc_BE7049: FLdPr Me
  loc_BE704C: MemLdI2 global_72
  loc_BE704F: CI4UI1
  loc_BE7050: CVarI4
  loc_BE7054: PopAdLdVar
  loc_BE7055: LitVarI4
  loc_BE705D: PopAdLdVar
  loc_BE705E: FLdPr Me
  loc_BE7061: VCallAd Control_ID_FlexCheque
  loc_BE7064: FStAdFunc var_88
  loc_BE7067: FLdPr var_88
  loc_BE706A: LateIdCallLdVar
  loc_BE7074: PopAd
  loc_BE7076: FLdPr Me
  loc_BE7079: MemLdI2 global_72
  loc_BE707C: CI4UI1
  loc_BE707D: CVarI4
  loc_BE7081: PopAdLdVar
  loc_BE7082: LitVarI4
  loc_BE708A: PopAdLdVar
  loc_BE708B: FLdPr Me
  loc_BE708E: VCallAd Control_ID_FlexCheque
  loc_BE7091: FStAdFunc var_90
  loc_BE7094: FLdPr var_90
  loc_BE7097: LateIdCallLdVar
  loc_BE70A1: PopAd
  loc_BE70A3: LitI2_Byte &HFF
  loc_BE70A5: PopTmpLdAd2 var_8A
  loc_BE70A8: LitNothing
  loc_BE70AA: CastAd
  loc_BE70AD: FStAdFunc var_144
  loc_BE70B0: FLdRfVar var_144
  loc_BE70B3: FLdRfVar var_100
  loc_BE70B6: CStrVarTmp
  loc_BE70B7: FStStrNoPop var_158
  loc_BE70BA: LitI2_Byte &HFF
  loc_BE70BC: LitI2_Byte &HFF
  loc_BE70BE: FLdRfVar var_A0
  loc_BE70C1: CStrVarTmp
  loc_BE70C2: FStStrNoPop var_E8
  loc_BE70C5: ImpAdCallI2 Proc_266_30_AB69EC(, , , , , )
  loc_BE70CA: FStStrNoPop var_224
  loc_BE70CD: FLdPr Me
  loc_BE70D0: MemStStrCopy
  loc_BE70D4: FFreeStr var_E8 = "": var_158 = ""
  loc_BE70DD: FFreeAd var_88 = "": var_90 = ""
  loc_BE70E6: FFreeVar var_A0 = ""
  loc_BE70ED: FLdPr Me
  loc_BE70F0: MemLdStr global_68
  loc_BE70F3: LitStr vbNullString
  loc_BE70F6: NeStr
  loc_BE70F8: BranchF loc_BE715A
  loc_BE70FB: LitI4 0
  loc_BE7100: FLdPr Me
  loc_BE7103: MemLdStr global_68
  loc_BE7106: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BE710B: FLdPr Me
  loc_BE710E: MemLdI2 global_72
  loc_BE7111: CI4UI1
  loc_BE7112: CVarI4
  loc_BE7116: PopAdLdVar
  loc_BE7117: LitVarI4
  loc_BE711F: PopAdLdVar
  loc_BE7120: LitVarStr var_110, vbNullString
  loc_BE7125: PopAdLdVar
  loc_BE7126: FLdPr Me
  loc_BE7129: VCallAd Control_ID_FlexCheque
  loc_BE712C: FStAdFunc var_88
  loc_BE712F: FLdPr var_88
  loc_BE7132: LateIdCallSt
  loc_BE713A: FFree1Ad var_88
  loc_BE713D: FLdPr Me
  loc_BE7140: VCallAd Control_ID_FlexCheque
  loc_BE7143: FStAdFunc var_88
  loc_BE7146: FLdPr var_88
  loc_BE7149: LateIdCall
  loc_BE7151: FFree1Ad var_88
  loc_BE7154: LitI2_Byte &HFF
  loc_BE7156: IStI2 arg_C
  loc_BE7159: ExitProcHresult
  loc_BE715A: FLdPr Me
  loc_BE715D: MemLdRfVar from_stack_1.global_72
  loc_BE7160: NextI2 var_24C, loc_BE6FFF
  loc_BE7165: ExitProcHresult
End Function

Private Sub FlexCheque_DblClick() 'AB4700
  'Data Table: 4B2A08
  loc_AB41B4: FLdPr Me
  loc_AB41B7: MemLdUI1 global_64
  loc_AB41BB: CI2UI1
  loc_AB41BD: LitI2_Byte 1
  loc_AB41BF: EqI2
  loc_AB41C0: FLdPr Me
  loc_AB41C3: MemLdUI1 global_64
  loc_AB41C7: CI2UI1
  loc_AB41C9: LitI2_Byte 2
  loc_AB41CB: EqI2
  loc_AB41CC: OrI4
  loc_AB41CD: BranchF loc_AB46FF
  loc_AB41D0: FLdPr Me
  loc_AB41D3: VCallAd Control_ID_FlexCheque
  loc_AB41D6: FStAdFunc var_88
  loc_AB41D9: FLdPr var_88
  loc_AB41DC: LateIdLdVar var_98 DispID_10 0
  loc_AB41E3: CI4Var
  loc_AB41E5: CVarI4
  loc_AB41E9: PopAdLdVar
  loc_AB41EA: LitVarI4
  loc_AB41F2: PopAdLdVar
  loc_AB41F3: FLdPr Me
  loc_AB41F6: VCallAd Control_ID_FlexCheque
  loc_AB41F9: FStAdFunc var_DC
  loc_AB41FC: FLdPr var_DC
  loc_AB41FF: LateIdCallLdVar
  loc_AB4209: CStrVarTmp
  loc_AB420A: FStStrNoPop var_F0
  loc_AB420D: LitStr vbNullString
  loc_AB4210: EqStr
  loc_AB4212: FLdPr Me
  loc_AB4215: VCallAd Control_ID_FlexCheque
  loc_AB4218: FStAdFunc var_F4
  loc_AB421B: FLdPr var_F4
  loc_AB421E: LateIdLdVar var_104 DispID_10 0
  loc_AB4225: CI4Var
  loc_AB4227: CVarI4
  loc_AB422B: PopAdLdVar
  loc_AB422C: LitVarI4
  loc_AB4234: PopAdLdVar
  loc_AB4235: FLdPr Me
  loc_AB4238: VCallAd Control_ID_FlexCheque
  loc_AB423B: FStAdFunc var_148
  loc_AB423E: FLdPr var_148
  loc_AB4241: LateIdCallLdVar
  loc_AB424B: CStrVarTmp
  loc_AB424C: FStStrNoPop var_15C
  loc_AB424F: LitStr "Manual"
  loc_AB4252: EqStr
  loc_AB4254: OrI4
  loc_AB4255: FLdPr Me
  loc_AB4258: VCallAd Control_ID_FlexCheque
  loc_AB425B: FStAdFunc var_160
  loc_AB425E: FLdPr var_160
  loc_AB4261: LateIdLdVar var_170 DispID_10 0
  loc_AB4268: CI4Var
  loc_AB426A: CVarI4
  loc_AB426E: PopAdLdVar
  loc_AB426F: LitVarI4
  loc_AB4277: PopAdLdVar
  loc_AB4278: FLdPr Me
  loc_AB427B: VCallAd Control_ID_FlexCheque
  loc_AB427E: FStAdFunc var_1B4
  loc_AB4281: FLdPr var_1B4
  loc_AB4284: LateIdCallLdVar
  loc_AB428E: CStrVarTmp
  loc_AB428F: FStStrNoPop var_1C8
  loc_AB4292: LitStr "0"
  loc_AB4295: EqStr
  loc_AB4297: OrI4
  loc_AB4298: FLdPr Me
  loc_AB429B: VCallAd Control_ID_FlexCheque
  loc_AB429E: FStAdFunc var_1CC
  loc_AB42A1: FLdPr var_1CC
  loc_AB42A4: LateIdLdVar var_1DC DispID_10 0
  loc_AB42AB: CI4Var
  loc_AB42AD: CVarI4
  loc_AB42B1: PopAdLdVar
  loc_AB42B2: LitVarI4
  loc_AB42BA: PopAdLdVar
  loc_AB42BB: FLdPr Me
  loc_AB42BE: VCallAd Control_ID_FlexCheque
  loc_AB42C1: FStAdFunc var_220
  loc_AB42C4: FLdPr var_220
  loc_AB42C7: LateIdCallLdVar
  loc_AB42D1: CStrVarTmp
  loc_AB42D2: FStStrNoPop var_234
  loc_AB42D5: LitStr vbNullString
  loc_AB42D8: EqStr
  loc_AB42DA: OrI4
  loc_AB42DB: FFreeStr var_F0 = "": var_15C = "": var_1C8 = ""
  loc_AB42E6: FFreeAd var_88 = "": var_DC = "": var_F4 = "": var_148 = "": var_160 = "": var_1B4 = "": var_1CC = ""
  loc_AB42F9: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_158 = "": var_170 = "": var_1C4 = "": var_1DC = ""
  loc_AB430C: BranchF loc_AB46FF
  loc_AB430F: FLdPr Me
  loc_AB4312: VCallAd Control_ID_FlexCheque
  loc_AB4315: FStAdFunc var_88
  loc_AB4318: FLdPr var_88
  loc_AB431B: LateIdLdVar var_98 DispID_10 0
  loc_AB4322: CI4Var
  loc_AB4324: CVarI4
  loc_AB4328: PopAdLdVar
  loc_AB4329: LitVarI4
  loc_AB4331: PopAdLdVar
  loc_AB4332: FLdPr Me
  loc_AB4335: VCallAd Control_ID_FlexCheque
  loc_AB4338: FStAdFunc var_DC
  loc_AB433B: FLdPr var_DC
  loc_AB433E: LateIdCallLdVar
  loc_AB4348: CStrVarTmp
  loc_AB4349: FStStrNoPop var_F0
  loc_AB434C: LitStr "Si"
  loc_AB434F: EqStr
  loc_AB4351: FFree1Str var_F0
  loc_AB4354: FFreeAd var_88 = ""
  loc_AB435B: FFreeVar var_98 = ""
  loc_AB4362: BranchF loc_AB438C
  loc_AB4365: LitI4 0
  loc_AB436A: LitStr "No se puede modificar el cheque esta dado de baja."
  loc_AB436D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_AB4372: FLdPr Me
  loc_AB4375: VCallAd Control_ID_FlexCheque
  loc_AB4378: FStAdFunc var_88
  loc_AB437B: FLdPr var_88
  loc_AB437E: LateIdCall
  loc_AB4386: FFree1Ad var_88
  loc_AB4389: Branch loc_AB46FF
  loc_AB438C: FLdPr Me
  loc_AB438F: VCallAd Control_ID_FlexCheque
  loc_AB4392: FStAdFunc var_88
  loc_AB4395: FLdPr var_88
  loc_AB4398: LateIdLdVar var_98 DispID_11 0
  loc_AB439F: CI4Var
  loc_AB43A1: LitI4 5
  loc_AB43A6: EqI4
  loc_AB43A7: FLdPr Me
  loc_AB43AA: VCallAd Control_ID_FlexCheque
  loc_AB43AD: FStAdFunc var_DC
  loc_AB43B0: FLdPr var_DC
  loc_AB43B3: LateIdLdVar var_EC DispID_0 0
  loc_AB43BA: CStrVarTmp
  loc_AB43BB: FStStrNoPop var_F0
  loc_AB43BE: LitStr vbNullString
  loc_AB43C1: EqStr
  loc_AB43C3: AndI4
  loc_AB43C4: FFree1Str var_F0
  loc_AB43C7: FFreeAd var_88 = ""
  loc_AB43CE: FFreeVar var_98 = ""
  loc_AB43D5: BranchF loc_AB444E
  loc_AB43D8: LitVarStr var_A8, "Manual"
  loc_AB43DD: PopAdLdVar
  loc_AB43DE: FLdPr Me
  loc_AB43E1: VCallAd Control_ID_FlexCheque
  loc_AB43E4: FStAdFunc var_88
  loc_AB43E7: FLdPr var_88
  loc_AB43EA: LateIdSt
  loc_AB43EF: FFree1Ad var_88
  loc_AB43F2: LitStr "Municipalidad de Guaymallén"
  loc_AB43F5: LitStr "Municipalidad de Malargüe"
  loc_AB43F8: EqStr
  loc_AB43FA: BranchF loc_AB444B
  loc_AB43FD: FLdPr Me
  loc_AB4400: VCallAd Control_ID_FlexCheque
  loc_AB4403: FStAdFunc var_88
  loc_AB4406: FLdPr var_88
  loc_AB4409: LateIdLdVar var_98 DispID_10 0
  loc_AB4410: CI4Var
  loc_AB4412: CVarI4
  loc_AB4416: PopAdLdVar
  loc_AB4417: LitVarI4
  loc_AB441F: PopAdLdVar
  loc_AB4420: ImpAdLdFPR8 MemVar_C3D04C
  loc_AB4423: CStrDate
  loc_AB4425: CVarStr var_EC
  loc_AB4428: PopAdLdVar
  loc_AB4429: FLdPr Me
  loc_AB442C: VCallAd Control_ID_FlexCheque
  loc_AB442F: FStAdFunc var_DC
  loc_AB4432: FLdPr var_DC
  loc_AB4435: LateIdCallSt
  loc_AB443D: FFreeAd var_88 = ""
  loc_AB4444: FFreeVar var_98 = ""
  loc_AB444B: Branch loc_AB46FF
  loc_AB444E: FLdPr Me
  loc_AB4451: VCallAd Control_ID_FlexCheque
  loc_AB4454: FStAdFunc var_88
  loc_AB4457: FLdPr var_88
  loc_AB445A: LateIdLdVar var_98 DispID_11 0
  loc_AB4461: CI4Var
  loc_AB4463: LitI4 5
  loc_AB4468: EqI4
  loc_AB4469: FLdPr Me
  loc_AB446C: VCallAd Control_ID_FlexCheque
  loc_AB446F: FStAdFunc var_DC
  loc_AB4472: FLdPr var_DC
  loc_AB4475: LateIdLdVar var_EC DispID_0 0
  loc_AB447C: CStrVarTmp
  loc_AB447D: FStStrNoPop var_F0
  loc_AB4480: LitStr "Manual"
  loc_AB4483: EqStr
  loc_AB4485: AndI4
  loc_AB4486: FFree1Str var_F0
  loc_AB4489: FFreeAd var_88 = ""
  loc_AB4490: FFreeVar var_98 = ""
  loc_AB4497: BranchF loc_AB4504
  loc_AB449A: LitVarStr var_A8, "Impreso"
  loc_AB449F: PopAdLdVar
  loc_AB44A0: FLdPr Me
  loc_AB44A3: VCallAd Control_ID_FlexCheque
  loc_AB44A6: FStAdFunc var_88
  loc_AB44A9: FLdPr var_88
  loc_AB44AC: LateIdSt
  loc_AB44B1: FFree1Ad var_88
  loc_AB44B4: FLdPr Me
  loc_AB44B7: VCallAd Control_ID_FlexCheque
  loc_AB44BA: FStAdFunc var_88
  loc_AB44BD: FLdPr var_88
  loc_AB44C0: LateIdLdVar var_98 DispID_10 0
  loc_AB44C7: CI4Var
  loc_AB44C9: CVarI4
  loc_AB44CD: PopAdLdVar
  loc_AB44CE: LitVarI4
  loc_AB44D6: PopAdLdVar
  loc_AB44D7: LitI2_Byte 0
  loc_AB44D9: CStrUI1
  loc_AB44DB: CVarStr var_EC
  loc_AB44DE: PopAdLdVar
  loc_AB44DF: FLdPr Me
  loc_AB44E2: VCallAd Control_ID_FlexCheque
  loc_AB44E5: FStAdFunc var_DC
  loc_AB44E8: FLdPr var_DC
  loc_AB44EB: LateIdCallSt
  loc_AB44F3: FFreeAd var_88 = ""
  loc_AB44FA: FFreeVar var_98 = ""
  loc_AB4501: Branch loc_AB46FF
  loc_AB4504: FLdPr Me
  loc_AB4507: VCallAd Control_ID_FlexCheque
  loc_AB450A: FStAdFunc var_88
  loc_AB450D: FLdPr var_88
  loc_AB4510: LateIdLdVar var_98 DispID_11 0
  loc_AB4517: CI4Var
  loc_AB4519: LitI4 5
  loc_AB451E: EqI4
  loc_AB451F: FLdPr Me
  loc_AB4522: VCallAd Control_ID_FlexCheque
  loc_AB4525: FStAdFunc var_DC
  loc_AB4528: FLdPr var_DC
  loc_AB452B: LateIdLdVar var_EC DispID_0 0
  loc_AB4532: CStrVarTmp
  loc_AB4533: FStStrNoPop var_F0
  loc_AB4536: LitStr "Impreso"
  loc_AB4539: EqStr
  loc_AB453B: AndI4
  loc_AB453C: FFree1Str var_F0
  loc_AB453F: FFreeAd var_88 = ""
  loc_AB4546: FFreeVar var_98 = ""
  loc_AB454D: BranchF loc_AB4608
  loc_AB4550: LitVarStr var_A8, "Transferencia"
  loc_AB4555: PopAdLdVar
  loc_AB4556: FLdPr Me
  loc_AB4559: VCallAd Control_ID_FlexCheque
  loc_AB455C: FStAdFunc var_88
  loc_AB455F: FLdPr var_88
  loc_AB4562: LateIdSt
  loc_AB4567: FFree1Ad var_88
  loc_AB456A: FLdPr Me
  loc_AB456D: VCallAd Control_ID_FlexCheque
  loc_AB4570: FStAdFunc var_88
  loc_AB4573: FLdPr var_88
  loc_AB4576: LateIdLdVar var_98 DispID_10 0
  loc_AB457D: CI4Var
  loc_AB457F: CVarI4
  loc_AB4583: PopAdLdVar
  loc_AB4584: LitVarI4
  loc_AB458C: PopAdLdVar
  loc_AB458D: LitI2_Byte 0
  loc_AB458F: CStrUI1
  loc_AB4591: CVarStr var_EC
  loc_AB4594: PopAdLdVar
  loc_AB4595: FLdPr Me
  loc_AB4598: VCallAd Control_ID_FlexCheque
  loc_AB459B: FStAdFunc var_DC
  loc_AB459E: FLdPr var_DC
  loc_AB45A1: LateIdCallSt
  loc_AB45A9: FFreeAd var_88 = ""
  loc_AB45B0: FFreeVar var_98 = ""
  loc_AB45B7: FLdPr Me
  loc_AB45BA: VCallAd Control_ID_FlexCheque
  loc_AB45BD: FStAdFunc var_88
  loc_AB45C0: FLdPr var_88
  loc_AB45C3: LateIdLdVar var_98 DispID_10 0
  loc_AB45CA: CI4Var
  loc_AB45CC: CVarI4
  loc_AB45D0: PopAdLdVar
  loc_AB45D1: LitVarI4
  loc_AB45D9: PopAdLdVar
  loc_AB45DA: ImpAdLdFPR8 MemVar_C3D04C
  loc_AB45DD: CStrDate
  loc_AB45DF: CVarStr var_EC
  loc_AB45E2: PopAdLdVar
  loc_AB45E3: FLdPr Me
  loc_AB45E6: VCallAd Control_ID_FlexCheque
  loc_AB45E9: FStAdFunc var_DC
  loc_AB45EC: FLdPr var_DC
  loc_AB45EF: LateIdCallSt
  loc_AB45F7: FFreeAd var_88 = ""
  loc_AB45FE: FFreeVar var_98 = ""
  loc_AB4605: Branch loc_AB46FF
  loc_AB4608: FLdPr Me
  loc_AB460B: VCallAd Control_ID_FlexCheque
  loc_AB460E: FStAdFunc var_88
  loc_AB4611: FLdPr var_88
  loc_AB4614: LateIdLdVar var_98 DispID_11 0
  loc_AB461B: CI4Var
  loc_AB461D: LitI4 5
  loc_AB4622: EqI4
  loc_AB4623: FLdPr Me
  loc_AB4626: VCallAd Control_ID_FlexCheque
  loc_AB4629: FStAdFunc var_DC
  loc_AB462C: FLdPr var_DC
  loc_AB462F: LateIdLdVar var_EC DispID_0 0
  loc_AB4636: CStrVarTmp
  loc_AB4637: FStStrNoPop var_F0
  loc_AB463A: LitStr "Transferencia"
  loc_AB463D: EqStr
  loc_AB463F: AndI4
  loc_AB4640: FFree1Str var_F0
  loc_AB4643: FFreeAd var_88 = ""
  loc_AB464A: FFreeVar var_98 = ""
  loc_AB4651: BranchF loc_AB4699
  loc_AB4654: LitStr "Municipalidad de Guaymallén"
  loc_AB4657: LitStr "Municipalidad de Maipú"
  loc_AB465A: EqStr
  loc_AB465C: BranchF loc_AB467C
  loc_AB465F: LitVarStr var_A8, "eCheq"
  loc_AB4664: PopAdLdVar
  loc_AB4665: FLdPr Me
  loc_AB4668: VCallAd Control_ID_FlexCheque
  loc_AB466B: FStAdFunc var_88
  loc_AB466E: FLdPr var_88
  loc_AB4671: LateIdSt
  loc_AB4676: FFree1Ad var_88
  loc_AB4679: Branch loc_AB4696
  loc_AB467C: LitVarStr var_A8, "Manual"
  loc_AB4681: PopAdLdVar
  loc_AB4682: FLdPr Me
  loc_AB4685: VCallAd Control_ID_FlexCheque
  loc_AB4688: FStAdFunc var_88
  loc_AB468B: FLdPr var_88
  loc_AB468E: LateIdSt
  loc_AB4693: FFree1Ad var_88
  loc_AB4696: Branch loc_AB46FF
  loc_AB4699: FLdPr Me
  loc_AB469C: VCallAd Control_ID_FlexCheque
  loc_AB469F: FStAdFunc var_88
  loc_AB46A2: FLdPr var_88
  loc_AB46A5: LateIdLdVar var_98 DispID_11 0
  loc_AB46AC: CI4Var
  loc_AB46AE: LitI4 5
  loc_AB46B3: EqI4
  loc_AB46B4: FLdPr Me
  loc_AB46B7: VCallAd Control_ID_FlexCheque
  loc_AB46BA: FStAdFunc var_DC
  loc_AB46BD: FLdPr var_DC
  loc_AB46C0: LateIdLdVar var_EC DispID_0 0
  loc_AB46C7: CStrVarTmp
  loc_AB46C8: FStStrNoPop var_F0
  loc_AB46CB: LitStr "eCheq"
  loc_AB46CE: EqStr
  loc_AB46D0: AndI4
  loc_AB46D1: FFree1Str var_F0
  loc_AB46D4: FFreeAd var_88 = ""
  loc_AB46DB: FFreeVar var_98 = ""
  loc_AB46E2: BranchF loc_AB46FF
  loc_AB46E5: LitVarStr var_A8, "Manual"
  loc_AB46EA: PopAdLdVar
  loc_AB46EB: FLdPr Me
  loc_AB46EE: VCallAd Control_ID_FlexCheque
  loc_AB46F1: FStAdFunc var_88
  loc_AB46F4: FLdPr var_88
  loc_AB46F7: LateIdSt
  loc_AB46FC: FFree1Ad var_88
  loc_AB46FF: ExitProcHresult
End Sub

Private Sub FlexCheque_KeyPress(KeyAscii As Integer) 'BA390C
  'Data Table: 4B2A08
  loc_BA29B4: FLdPr Me
  loc_BA29B7: MemLdUI1 global_64
  loc_BA29BB: CI2UI1
  loc_BA29BD: LitI2_Byte 1
  loc_BA29BF: EqI2
  loc_BA29C0: BranchF loc_BA368E
  loc_BA29C3: FLdPr Me
  loc_BA29C6: VCallAd Control_ID_FlexCheque
  loc_BA29C9: FStAdFunc var_88
  loc_BA29CC: FLdPr Me
  loc_BA29CF: VCallAd Control_ID_FlexCheque
  loc_BA29D2: FStAdFunc var_8C
  loc_BA29D5: FLdPr var_8C
  loc_BA29D8: LateIdLdVar var_9C DispID_11 0
  loc_BA29DF: CI4Var
  loc_BA29E1: LitI4 4
  loc_BA29E6: EqI4
  loc_BA29E7: FFree1Ad var_8C
  loc_BA29EA: FFree1Var var_9C = ""
  loc_BA29ED: BranchF loc_BA2B72
  loc_BA29F0: FLdPr var_88
  loc_BA29F3: LateIdLdVar var_9C DispID_10 0
  loc_BA29FA: CI4Var
  loc_BA29FC: CVarI4
  loc_BA2A00: PopAdLdVar
  loc_BA2A01: LitVarI4
  loc_BA2A09: PopAdLdVar
  loc_BA2A0A: FLdPr var_88
  loc_BA2A0D: LateIdCallLdVar
  loc_BA2A17: CStrVarTmp
  loc_BA2A18: FStStrNoPop var_F0
  loc_BA2A1B: LitStr "Impreso"
  loc_BA2A1E: EqStr
  loc_BA2A20: ILdI2 KeyAscii
  loc_BA2A23: LitI2_Byte &H20
  loc_BA2A25: NeI2
  loc_BA2A26: AndI4
  loc_BA2A27: ILdI2 KeyAscii
  loc_BA2A2A: LitI2_Byte 8
  loc_BA2A2C: NeI2
  loc_BA2A2D: AndI4
  loc_BA2A2E: FFree1Str var_F0
  loc_BA2A31: FFreeVar var_9C = ""
  loc_BA2A38: BranchF loc_BA2A54
  loc_BA2A3B: LitI4 0
  loc_BA2A40: LitStr "El cheque es Impreso. Verifique..."
  loc_BA2A43: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA2A48: FLdPr var_88
  loc_BA2A4B: LateIdCall
  loc_BA2A53: ExitProcHresult
  loc_BA2A54: FLdPr var_88
  loc_BA2A57: LateIdLdVar var_9C DispID_10 0
  loc_BA2A5E: CI4Var
  loc_BA2A60: CVarI4
  loc_BA2A64: PopAdLdVar
  loc_BA2A65: LitVarI4
  loc_BA2A6D: PopAdLdVar
  loc_BA2A6E: FLdPr var_88
  loc_BA2A71: LateIdCallLdVar
  loc_BA2A7B: CStrVarTmp
  loc_BA2A7C: FStStrNoPop var_F0
  loc_BA2A7F: LitStr "Si"
  loc_BA2A82: EqStr
  loc_BA2A84: FFree1Str var_F0
  loc_BA2A87: FFreeVar var_9C = ""
  loc_BA2A8E: BranchF loc_BA2AAA
  loc_BA2A91: LitI4 0
  loc_BA2A96: LitStr "El cheque está ANULADO. Verifique..."
  loc_BA2A99: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA2A9E: FLdPr var_88
  loc_BA2AA1: LateIdCall
  loc_BA2AA9: ExitProcHresult
  loc_BA2AAA: FLdPr var_88
  loc_BA2AAD: LateIdLdVar var_9C DispID_10 0
  loc_BA2AB4: CI4Var
  loc_BA2AB6: CVarI4
  loc_BA2ABA: PopAdLdVar
  loc_BA2ABB: LitVarI4
  loc_BA2AC3: PopAdLdVar
  loc_BA2AC4: FLdPr var_88
  loc_BA2AC7: LateIdCallLdVar
  loc_BA2AD1: CStrVarTmp
  loc_BA2AD2: FStStrNoPop var_F0
  loc_BA2AD5: LitStr "Transferencia"
  loc_BA2AD8: EqStr
  loc_BA2ADA: ILdI2 KeyAscii
  loc_BA2ADD: LitI2_Byte &H20
  loc_BA2ADF: NeI2
  loc_BA2AE0: ILdI2 KeyAscii
  loc_BA2AE3: LitI2_Byte 8
  loc_BA2AE5: NeI2
  loc_BA2AE6: OrI4
  loc_BA2AE7: AndI4
  loc_BA2AE8: FFree1Str var_F0
  loc_BA2AEB: FFreeVar var_9C = ""
  loc_BA2AF2: BranchF loc_BA2B0E
  loc_BA2AF5: LitI4 0
  loc_BA2AFA: LitStr "El número de transferencia se ingresa en el Pagado. Verifique..."
  loc_BA2AFD: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA2B02: FLdPr var_88
  loc_BA2B05: LateIdCall
  loc_BA2B0D: ExitProcHresult
  loc_BA2B0E: FLdPr var_88
  loc_BA2B11: LateIdLdVar var_9C DispID_10 0
  loc_BA2B18: CI4Var
  loc_BA2B1A: CVarI4
  loc_BA2B1E: PopAdLdVar
  loc_BA2B1F: LitVarI4
  loc_BA2B27: PopAdLdVar
  loc_BA2B28: FLdPr var_88
  loc_BA2B2B: LateIdCallLdVar
  loc_BA2B35: CStrVarTmp
  loc_BA2B36: FStStrNoPop var_F0
  loc_BA2B39: LitStr "Impreso"
  loc_BA2B3C: EqStr
  loc_BA2B3E: ILdI2 KeyAscii
  loc_BA2B41: LitI2_Byte &H20
  loc_BA2B43: NeI2
  loc_BA2B44: ILdI2 KeyAscii
  loc_BA2B47: LitI2_Byte 8
  loc_BA2B49: NeI2
  loc_BA2B4A: OrI4
  loc_BA2B4B: AndI4
  loc_BA2B4C: FFree1Str var_F0
  loc_BA2B4F: FFreeVar var_9C = ""
  loc_BA2B56: BranchF loc_BA2B72
  loc_BA2B59: LitI4 0
  loc_BA2B5E: LitStr "El número de cheque se ingresa en la Impresión. Verifique..."
  loc_BA2B61: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BA2B66: FLdPr var_88
  loc_BA2B69: LateIdCall
  loc_BA2B71: ExitProcHresult
  loc_BA2B72: ILdI2 KeyAscii
  loc_BA2B75: LitI2_Byte &H20
  loc_BA2B77: EqI2
  loc_BA2B78: BranchF loc_BA2EBA
  loc_BA2B7B: FLdPr Me
  loc_BA2B7E: VCallAd Control_ID_FlexCheque
  loc_BA2B81: FStAdFunc var_8C
  loc_BA2B84: FLdPr var_8C
  loc_BA2B87: LateIdLdVar var_9C DispID_11 0
  loc_BA2B8E: CI4Var
  loc_BA2B90: LitI4 3
  loc_BA2B95: EqI4
  loc_BA2B96: FFree1Ad var_8C
  loc_BA2B99: FFree1Var var_9C = ""
  loc_BA2B9C: BranchF loc_BA2E3F
  loc_BA2B9F: LitVar_Missing var_BC
  loc_BA2BA2: PopAdLdVar
  loc_BA2BA3: LitVarI4
  loc_BA2BAB: PopAdLdVar
  loc_BA2BAC: ImpAdLdRf MemVar_C3D6AC
  loc_BA2BAF: NewIfNullPr bscBanco
  loc_BA2BB2: bscBanco.Show from_stack_1, from_stack_2
  loc_BA2BB7: FLdRfVar var_F4
  loc_BA2BBA: FLdRfVar var_8C
  loc_BA2BBD: ImpAdLdRf MemVar_C3D6AC
  loc_BA2BC0: NewIfNullPr bscBanco
  loc_BA2BC3: from_stack_1v = bscBanco.global_4317104Get()
  loc_BA2BC8: FLdPr var_8C
  loc_BA2BCB: from_stack_1 = clsbase.RecordCount
  loc_BA2BD0: ILdRf var_F4
  loc_BA2BD3: LitI4 0
  loc_BA2BD8: GtI4
  loc_BA2BD9: FFree1Ad var_8C
  loc_BA2BDC: BranchF loc_BA2E3A
  loc_BA2BDF: FLdRfVar var_9C
  loc_BA2BE2: FLdRfVar var_100
  loc_BA2BE5: LitVarStr var_AC, "CodiBanc"
  loc_BA2BEA: PopAdLdVar
  loc_BA2BEB: FLdRfVar var_FC
  loc_BA2BEE: FLdRfVar var_F8
  loc_BA2BF1: FLdRfVar var_8C
  loc_BA2BF4: ImpAdLdRf MemVar_C3D6AC
  loc_BA2BF7: NewIfNullPr bscBanco
  loc_BA2BFA: from_stack_1v = bscBanco.global_4317104Get()
  loc_BA2BFF: FLdPr var_8C
  loc_BA2C02: from_stack_1v = clsbase.RsFrmGet()
  loc_BA2C07: FLdPr var_F8
  loc_BA2C0A:  = Me.Fields
  loc_BA2C0F: FLdPr var_FC
  loc_BA2C12: from_stack_2 = Me.Item(from_stack_1)
  loc_BA2C17: FLdPr var_100
  loc_BA2C1A:  = Me.Value
  loc_BA2C1F: FLdRfVar var_9C
  loc_BA2C22: LitVarStr var_BC, " - "
  loc_BA2C27: ConcatVar var_EC
  loc_BA2C2B: FLdRfVar var_120
  loc_BA2C2E: FLdRfVar var_110
  loc_BA2C31: LitVarStr var_CC, "DetaBanc"
  loc_BA2C36: PopAdLdVar
  loc_BA2C37: FLdRfVar var_10C
  loc_BA2C3A: FLdRfVar var_108
  loc_BA2C3D: FLdRfVar var_104
  loc_BA2C40: ImpAdLdRf MemVar_C3D6AC
  loc_BA2C43: NewIfNullPr bscBanco
  loc_BA2C46: from_stack_1v = bscBanco.global_4317104Get()
  loc_BA2C4B: FLdPr var_104
  loc_BA2C4E: from_stack_1v = clsbase.RsFrmGet()
  loc_BA2C53: FLdPr var_108
  loc_BA2C56:  = Me.Fields
  loc_BA2C5B: FLdPr var_10C
  loc_BA2C5E: from_stack_2 = Me.Item(from_stack_1)
  loc_BA2C63: FLdPr var_110
  loc_BA2C66:  = Me.Value
  loc_BA2C6B: FLdRfVar var_120
  loc_BA2C6E: ConcatVar var_130
  loc_BA2C72: CStrVarTmp
  loc_BA2C73: CVarStr var_140
  loc_BA2C76: PopAdLdVar
  loc_BA2C77: FLdPr Me
  loc_BA2C7A: VCallAd Control_ID_FlexCheque
  loc_BA2C7D: FStAdFunc var_144
  loc_BA2C80: FLdPr var_144
  loc_BA2C83: LateIdSt
  loc_BA2C88: FFreeAd var_8C = "": var_F8 = "": var_FC = "": var_100 = "": var_104 = "": var_108 = "": var_10C = "": var_110 = ""
  loc_BA2C9D: FFreeVar var_9C = "": var_EC = "": var_120 = "": var_130 = ""
  loc_BA2CAA: FLdRfVar var_9C
  loc_BA2CAD: FLdRfVar var_100
  loc_BA2CB0: LitVarStr var_AC, "EmauCheq"
  loc_BA2CB5: PopAdLdVar
  loc_BA2CB6: FLdRfVar var_FC
  loc_BA2CB9: FLdRfVar var_F8
  loc_BA2CBC: FLdRfVar var_8C
  loc_BA2CBF: ImpAdLdRf MemVar_C3D6AC
  loc_BA2CC2: NewIfNullPr bscBanco
  loc_BA2CC5: from_stack_1v = bscBanco.global_4317104Get()
  loc_BA2CCA: FLdPr var_8C
  loc_BA2CCD: from_stack_1v = clsbase.RsFrmGet()
  loc_BA2CD2: FLdPr var_F8
  loc_BA2CD5:  = Me.Fields
  loc_BA2CDA: FLdPr var_FC
  loc_BA2CDD: from_stack_2 = Me.Item(from_stack_1)
  loc_BA2CE2: FLdPr var_100
  loc_BA2CE5:  = Me.Value
  loc_BA2CEA: FLdRfVar var_9C
  loc_BA2CED: LitVarStr var_BC, "0"
  loc_BA2CF2: HardType
  loc_BA2CF3: EqVarBool
  loc_BA2CF5: FFreeAd var_8C = "": var_F8 = "": var_FC = ""
  loc_BA2D00: FFree1Var var_9C = ""
  loc_BA2D03: BranchF loc_BA2D50
  loc_BA2D06: FLdPr Me
  loc_BA2D09: VCallAd Control_ID_FlexCheque
  loc_BA2D0C: FStAdFunc var_8C
  loc_BA2D0F: FLdPr var_8C
  loc_BA2D12: LateIdLdVar var_9C DispID_10 0
  loc_BA2D19: CI4Var
  loc_BA2D1B: CVarI4
  loc_BA2D1F: PopAdLdVar
  loc_BA2D20: LitVarI4
  loc_BA2D28: PopAdLdVar
  loc_BA2D29: LitVarStr var_154, "Manual"
  loc_BA2D2E: PopAdLdVar
  loc_BA2D2F: FLdPr Me
  loc_BA2D32: VCallAd Control_ID_FlexCheque
  loc_BA2D35: FStAdFunc var_F8
  loc_BA2D38: FLdPr var_F8
  loc_BA2D3B: LateIdCallSt
  loc_BA2D43: FFreeAd var_8C = ""
  loc_BA2D4A: FFree1Var var_9C = ""
  loc_BA2D4D: Branch loc_BA2E3A
  loc_BA2D50: FLdRfVar var_9C
  loc_BA2D53: FLdRfVar var_100
  loc_BA2D56: LitVarStr var_AC, "EmauCheq"
  loc_BA2D5B: PopAdLdVar
  loc_BA2D5C: FLdRfVar var_FC
  loc_BA2D5F: FLdRfVar var_F8
  loc_BA2D62: FLdRfVar var_8C
  loc_BA2D65: ImpAdLdRf MemVar_C3D6AC
  loc_BA2D68: NewIfNullPr bscBanco
  loc_BA2D6B: from_stack_1v = bscBanco.global_4317104Get()
  loc_BA2D70: FLdPr var_8C
  loc_BA2D73: from_stack_1v = clsbase.RsFrmGet()
  loc_BA2D78: FLdPr var_F8
  loc_BA2D7B:  = Me.Fields
  loc_BA2D80: FLdPr var_FC
  loc_BA2D83: from_stack_2 = Me.Item(from_stack_1)
  loc_BA2D88: FLdPr var_100
  loc_BA2D8B:  = Me.Value
  loc_BA2D90: FLdRfVar var_9C
  loc_BA2D93: LitVarStr var_BC, "1"
  loc_BA2D98: HardType
  loc_BA2D99: EqVarBool
  loc_BA2D9B: FFreeAd var_8C = "": var_F8 = "": var_FC = ""
  loc_BA2DA6: FFree1Var var_9C = ""
  loc_BA2DA9: BranchF loc_BA2E3A
  loc_BA2DAC: FLdPr Me
  loc_BA2DAF: VCallAd Control_ID_FlexCheque
  loc_BA2DB2: FStAdFunc var_8C
  loc_BA2DB5: FLdPr var_8C
  loc_BA2DB8: LateIdLdVar var_9C DispID_10 0
  loc_BA2DBF: CI4Var
  loc_BA2DC1: CVarI4
  loc_BA2DC5: PopAdLdVar
  loc_BA2DC6: LitVarI4
  loc_BA2DCE: PopAdLdVar
  loc_BA2DCF: LitVarStr var_154, "Impreso"
  loc_BA2DD4: PopAdLdVar
  loc_BA2DD5: FLdPr Me
  loc_BA2DD8: VCallAd Control_ID_FlexCheque
  loc_BA2DDB: FStAdFunc var_F8
  loc_BA2DDE: FLdPr var_F8
  loc_BA2DE1: LateIdCallSt
  loc_BA2DE9: FFreeAd var_8C = ""
  loc_BA2DF0: FFree1Var var_9C = ""
  loc_BA2DF3: FLdPr Me
  loc_BA2DF6: VCallAd Control_ID_FlexCheque
  loc_BA2DF9: FStAdFunc var_8C
  loc_BA2DFC: FLdPr var_8C
  loc_BA2DFF: LateIdLdVar var_9C DispID_10 0
  loc_BA2E06: CI4Var
  loc_BA2E08: CVarI4
  loc_BA2E0C: PopAdLdVar
  loc_BA2E0D: LitVarI4
  loc_BA2E15: PopAdLdVar
  loc_BA2E16: LitVarStr var_154, "0"
  loc_BA2E1B: PopAdLdVar
  loc_BA2E1C: FLdPr Me
  loc_BA2E1F: VCallAd Control_ID_FlexCheque
  loc_BA2E22: FStAdFunc var_F8
  loc_BA2E25: FLdPr var_F8
  loc_BA2E28: LateIdCallSt
  loc_BA2E30: FFreeAd var_8C = ""
  loc_BA2E37: FFree1Var var_9C = ""
  loc_BA2E3A: Call Proc_113_39_AA4D94()
  loc_BA2E3F: FLdPr Me
  loc_BA2E42: VCallAd Control_ID_FlexCheque
  loc_BA2E45: FStAdFunc var_8C
  loc_BA2E48: FLdPr var_8C
  loc_BA2E4B: LateIdLdVar var_9C DispID_11 0
  loc_BA2E52: CI4Var
  loc_BA2E54: LitI4 1
  loc_BA2E59: EqI4
  loc_BA2E5A: FFree1Ad var_8C
  loc_BA2E5D: FFree1Var var_9C = ""
  loc_BA2E60: BranchF loc_BA2EB7
  loc_BA2E63: FLdPr Me
  loc_BA2E66: VCallAd Control_ID_FlexCheque
  loc_BA2E69: FStAdFunc var_8C
  loc_BA2E6C: FLdPr var_8C
  loc_BA2E6F: LateIdLdVar var_9C DispID_0 0
  loc_BA2E76: CStrVarTmp
  loc_BA2E77: CVarStr var_120
  loc_BA2E7A: ILdI2 KeyAscii
  loc_BA2E7D: CI4UI1
  loc_BA2E7E: FLdRfVar var_EC
  loc_BA2E81: ImpAdCallFPR4  = Chr()
  loc_BA2E86: FLdRfVar var_EC
  loc_BA2E89: AddVar var_130
  loc_BA2E8D: CStrVarTmp
  loc_BA2E8E: CVarStr var_140
  loc_BA2E91: PopAdLdVar
  loc_BA2E92: FLdPr Me
  loc_BA2E95: VCallAd Control_ID_FlexCheque
  loc_BA2E98: FStAdFunc var_F8
  loc_BA2E9B: FLdPr var_F8
  loc_BA2E9E: LateIdSt
  loc_BA2EA3: FFreeAd var_8C = ""
  loc_BA2EAA: FFreeVar var_9C = "": var_120 = "": var_EC = "": var_130 = ""
  loc_BA2EB7: Branch loc_BA3685
  loc_BA2EBA: ILdI2 KeyAscii
  loc_BA2EBD: LitI2_Byte 8
  loc_BA2EBF: EqI2
  loc_BA2EC0: BranchF loc_BA3334
  loc_BA2EC3: FLdPr Me
  loc_BA2EC6: VCallAd Control_ID_FlexCheque
  loc_BA2EC9: FStAdFunc var_8C
  loc_BA2ECC: FLdPr var_8C
  loc_BA2ECF: LateIdLdVar var_9C DispID_11 0
  loc_BA2ED6: CI4Var
  loc_BA2ED8: FStR4 var_168
  loc_BA2EDB: FFree1Ad var_8C
  loc_BA2EDE: FFree1Var var_9C = ""
  loc_BA2EE1: ILdRf var_168
  loc_BA2EE4: LitI4 1
  loc_BA2EE9: EqI4
  loc_BA2EEA: BranchF loc_BA30C0
  loc_BA2EED: FLdPr Me
  loc_BA2EF0: VCallAd Control_ID_FlexCheque
  loc_BA2EF3: FStAdFunc var_8C
  loc_BA2EF6: FLdPr var_8C
  loc_BA2EF9: LateIdLdVar var_9C DispID_10 0
  loc_BA2F00: CI4Var
  loc_BA2F02: CVarI4
  loc_BA2F06: PopAdLdVar
  loc_BA2F07: LitVarI4
  loc_BA2F0F: PopAdLdVar
  loc_BA2F10: FLdPr Me
  loc_BA2F13: VCallAd Control_ID_FlexCheque
  loc_BA2F16: FStAdFunc var_F8
  loc_BA2F19: FLdPr var_F8
  loc_BA2F1C: LateIdCallLdVar
  loc_BA2F26: CStrVarTmp
  loc_BA2F27: FStStrNoPop var_F0
  loc_BA2F2A: LitStr "1"
  loc_BA2F2D: EqStr
  loc_BA2F2F: FFree1Str var_F0
  loc_BA2F32: FFreeAd var_8C = ""
  loc_BA2F39: FFreeVar var_9C = ""
  loc_BA2F40: BranchF loc_BA2FDB
  loc_BA2F43: FLdPr Me
  loc_BA2F46: VCallAd Control_ID_FlexCheque
  loc_BA2F49: FStAdFunc var_8C
  loc_BA2F4C: FLdPr var_8C
  loc_BA2F4F: LateIdLdVar var_9C DispID_0 0
  loc_BA2F56: CStrVarTmp
  loc_BA2F57: FStStrNoPop var_F0
  loc_BA2F5A: LitStr vbNullString
  loc_BA2F5D: NeStr
  loc_BA2F5F: FFree1Str var_F0
  loc_BA2F62: FFree1Ad var_8C
  loc_BA2F65: FFree1Var var_9C = ""
  loc_BA2F68: BranchF loc_BA2FD8
  loc_BA2F6B: FLdPr Me
  loc_BA2F6E: VCallAd Control_ID_FlexCheque
  loc_BA2F71: FStAdFunc var_8C
  loc_BA2F74: FLdPr var_8C
  loc_BA2F77: LateIdLdVar var_9C DispID_0 0
  loc_BA2F7E: PopAd
  loc_BA2F80: FLdPr Me
  loc_BA2F83: VCallAd Control_ID_FlexCheque
  loc_BA2F86: FStAdFunc var_F8
  loc_BA2F89: FLdPr var_F8
  loc_BA2F8C: LateIdLdVar var_EC DispID_0 0
  loc_BA2F93: CStrVarTmp
  loc_BA2F94: FStStrNoPop var_F0
  loc_BA2F97: FnLenStr
  loc_BA2F98: LitI4 1
  loc_BA2F9D: SubI4
  loc_BA2F9E: FLdRfVar var_9C
  loc_BA2FA1: CStrVarTmp
  loc_BA2FA2: FStStrNoPop var_16C
  loc_BA2FA5: ImpAdCallI2 Left$(, )
  loc_BA2FAA: CVarStr var_120
  loc_BA2FAD: PopAdLdVar
  loc_BA2FAE: FLdPr Me
  loc_BA2FB1: VCallAd Control_ID_FlexCheque
  loc_BA2FB4: FStAdFunc var_FC
  loc_BA2FB7: FLdPr var_FC
  loc_BA2FBA: LateIdSt
  loc_BA2FBF: FFreeStr var_F0 = ""
  loc_BA2FC6: FFreeAd var_8C = "": var_F8 = ""
  loc_BA2FCF: FFreeVar var_9C = "": var_EC = ""
  loc_BA2FD8: Branch loc_BA30BD
  loc_BA2FDB: FLdPr Me
  loc_BA2FDE: VCallAd Control_ID_FlexCheque
  loc_BA2FE1: FStAdFunc var_8C
  loc_BA2FE4: FLdPr var_8C
  loc_BA2FE7: LateIdLdVar var_9C DispID_0 0
  loc_BA2FEE: CStrVarTmp
  loc_BA2FEF: FStStrNoPop var_F0
  loc_BA2FF2: FnLenStr
  loc_BA2FF3: FLdPr Me
  loc_BA2FF6: VCallAd Control_ID_FlexCheque
  loc_BA2FF9: FStAdFunc var_F8
  loc_BA2FFC: FLdPr var_F8
  loc_BA2FFF: LateIdLdVar var_EC DispID_10 0
  loc_BA3006: CI4Var
  loc_BA3008: CVarI4
  loc_BA300C: PopAdLdVar
  loc_BA300D: LitVarI4
  loc_BA3015: PopAdLdVar
  loc_BA3016: FLdPr Me
  loc_BA3019: VCallAd Control_ID_FlexCheque
  loc_BA301C: FStAdFunc var_FC
  loc_BA301F: FLdPr var_FC
  loc_BA3022: LateIdCallLdVar
  loc_BA302C: CStrVarTmp
  loc_BA302D: FStStrNoPop var_16C
  loc_BA3030: CUI1Str
  loc_BA3032: CI4UI1
  loc_BA3033: GtI4
  loc_BA3034: FFreeStr var_F0 = ""
  loc_BA303B: FFreeAd var_8C = "": var_F8 = ""
  loc_BA3044: FFreeVar var_9C = "": var_EC = ""
  loc_BA304D: BranchF loc_BA30BD
  loc_BA3050: FLdPr Me
  loc_BA3053: VCallAd Control_ID_FlexCheque
  loc_BA3056: FStAdFunc var_8C
  loc_BA3059: FLdPr var_8C
  loc_BA305C: LateIdLdVar var_9C DispID_0 0
  loc_BA3063: PopAd
  loc_BA3065: FLdPr Me
  loc_BA3068: VCallAd Control_ID_FlexCheque
  loc_BA306B: FStAdFunc var_F8
  loc_BA306E: FLdPr var_F8
  loc_BA3071: LateIdLdVar var_EC DispID_0 0
  loc_BA3078: CStrVarTmp
  loc_BA3079: FStStrNoPop var_F0
  loc_BA307C: FnLenStr
  loc_BA307D: LitI4 1
  loc_BA3082: SubI4
  loc_BA3083: FLdRfVar var_9C
  loc_BA3086: CStrVarTmp
  loc_BA3087: FStStrNoPop var_16C
  loc_BA308A: ImpAdCallI2 Left$(, )
  loc_BA308F: CVarStr var_120
  loc_BA3092: PopAdLdVar
  loc_BA3093: FLdPr Me
  loc_BA3096: VCallAd Control_ID_FlexCheque
  loc_BA3099: FStAdFunc var_FC
  loc_BA309C: FLdPr var_FC
  loc_BA309F: LateIdSt
  loc_BA30A4: FFreeStr var_F0 = ""
  loc_BA30AB: FFreeAd var_8C = "": var_F8 = ""
  loc_BA30B4: FFreeVar var_9C = "": var_EC = ""
  loc_BA30BD: Branch loc_BA3331
  loc_BA30C0: ILdRf var_168
  loc_BA30C3: LitI4 2
  loc_BA30C8: EqI4
  loc_BA30C9: BranchF loc_BA31EC
  loc_BA30CC: FLdPr Me
  loc_BA30CF: VCallAd Control_ID_FlexCheque
  loc_BA30D2: FStAdFunc var_8C
  loc_BA30D5: FLdPr var_8C
  loc_BA30D8: LateIdLdVar var_9C DispID_10 0
  loc_BA30DF: CI4Var
  loc_BA30E1: CVarI4
  loc_BA30E5: PopAdLdVar
  loc_BA30E6: LitVarI4
  loc_BA30EE: PopAdLdVar
  loc_BA30EF: FLdPr Me
  loc_BA30F2: VCallAd Control_ID_FlexCheque
  loc_BA30F5: FStAdFunc var_F8
  loc_BA30F8: FLdPr var_F8
  loc_BA30FB: LateIdCallLdVar
  loc_BA3105: CStrVarTmp
  loc_BA3106: FStStrNoPop var_F0
  loc_BA3109: LitStr vbNullString
  loc_BA310C: EqStr
  loc_BA310E: FFree1Str var_F0
  loc_BA3111: FFreeAd var_8C = ""
  loc_BA3118: FFreeVar var_9C = ""
  loc_BA311F: BranchF loc_BA31E9
  loc_BA3122: FLdPr Me
  loc_BA3125: VCallAd Control_ID_FlexCheque
  loc_BA3128: FStAdFunc var_8C
  loc_BA312B: FLdPr var_8C
  loc_BA312E: LateIdLdVar var_9C DispID_0 0
  loc_BA3135: CStrVarTmp
  loc_BA3136: FStStrNoPop var_F0
  loc_BA3139: LitStr vbNullString
  loc_BA313C: NeStr
  loc_BA313E: FFree1Str var_F0
  loc_BA3141: FFree1Ad var_8C
  loc_BA3144: FFree1Var var_9C = ""
  loc_BA3147: BranchF loc_BA31E9
  loc_BA314A: FLdPr Me
  loc_BA314D: VCallAd Control_ID_FlexCheque
  loc_BA3150: FStAdFunc var_8C
  loc_BA3153: FLdPr var_8C
  loc_BA3156: LateIdLdVar var_9C DispID_0 0
  loc_BA315D: PopAd
  loc_BA315F: FLdPr Me
  loc_BA3162: VCallAd Control_ID_FlexCheque
  loc_BA3165: FStAdFunc var_F8
  loc_BA3168: FLdPr var_F8
  loc_BA316B: LateIdLdVar var_EC DispID_0 0
  loc_BA3172: CStrVarTmp
  loc_BA3173: FStStrNoPop var_F0
  loc_BA3176: FnLenStr
  loc_BA3177: LitI4 1
  loc_BA317C: SubI4
  loc_BA317D: FLdRfVar var_9C
  loc_BA3180: CStrVarTmp
  loc_BA3181: FStStrNoPop var_16C
  loc_BA3184: ImpAdCallI2 Left$(, )
  loc_BA3189: CVarStr var_120
  loc_BA318C: PopAdLdVar
  loc_BA318D: FLdPr Me
  loc_BA3190: VCallAd Control_ID_FlexCheque
  loc_BA3193: FStAdFunc var_FC
  loc_BA3196: FLdPr var_FC
  loc_BA3199: LateIdSt
  loc_BA319E: FFreeStr var_F0 = ""
  loc_BA31A5: FFreeAd var_8C = "": var_F8 = ""
  loc_BA31AE: FFreeVar var_9C = "": var_EC = ""
  loc_BA31B7: FLdPr Me
  loc_BA31BA: VCallAd Control_ID_FlexCheque
  loc_BA31BD: FStAdFunc var_8C
  loc_BA31C0: FLdPr var_8C
  loc_BA31C3: LateIdLdVar var_9C DispID_0 0
  loc_BA31CA: CStrVarTmp
  loc_BA31CB: FStStrNoPop var_F0
  loc_BA31CE: FnLenStr
  loc_BA31CF: LitI4 0
  loc_BA31D4: EqI4
  loc_BA31D5: FFree1Str var_F0
  loc_BA31D8: FFree1Ad var_8C
  loc_BA31DB: FFree1Var var_9C = ""
  loc_BA31DE: BranchF loc_BA31E9
  loc_BA31E1: LitI2_Byte &HFF
  loc_BA31E3: FLdPr Me
  loc_BA31E6: MemStI2 global_80
  loc_BA31E9: Branch loc_BA3331
  loc_BA31EC: ILdRf var_168
  loc_BA31EF: LitI4 4
  loc_BA31F4: EqI4
  loc_BA31F5: BranchF loc_BA3290
  loc_BA31F8: FLdPr Me
  loc_BA31FB: VCallAd Control_ID_FlexCheque
  loc_BA31FE: FStAdFunc var_8C
  loc_BA3201: FLdPr var_8C
  loc_BA3204: LateIdLdVar var_9C DispID_0 0
  loc_BA320B: CStrVarTmp
  loc_BA320C: FStStrNoPop var_F0
  loc_BA320F: LitStr vbNullString
  loc_BA3212: NeStr
  loc_BA3214: FFree1Str var_F0
  loc_BA3217: FFree1Ad var_8C
  loc_BA321A: FFree1Var var_9C = ""
  loc_BA321D: BranchF loc_BA328D
  loc_BA3220: FLdPr Me
  loc_BA3223: VCallAd Control_ID_FlexCheque
  loc_BA3226: FStAdFunc var_8C
  loc_BA3229: FLdPr var_8C
  loc_BA322C: LateIdLdVar var_9C DispID_0 0
  loc_BA3233: PopAd
  loc_BA3235: FLdPr Me
  loc_BA3238: VCallAd Control_ID_FlexCheque
  loc_BA323B: FStAdFunc var_F8
  loc_BA323E: FLdPr var_F8
  loc_BA3241: LateIdLdVar var_EC DispID_0 0
  loc_BA3248: CStrVarTmp
  loc_BA3249: FStStrNoPop var_F0
  loc_BA324C: FnLenStr
  loc_BA324D: LitI4 1
  loc_BA3252: SubI4
  loc_BA3253: FLdRfVar var_9C
  loc_BA3256: CStrVarTmp
  loc_BA3257: FStStrNoPop var_16C
  loc_BA325A: ImpAdCallI2 Left$(, )
  loc_BA325F: CVarStr var_120
  loc_BA3262: PopAdLdVar
  loc_BA3263: FLdPr Me
  loc_BA3266: VCallAd Control_ID_FlexCheque
  loc_BA3269: FStAdFunc var_FC
  loc_BA326C: FLdPr var_FC
  loc_BA326F: LateIdSt
  loc_BA3274: FFreeStr var_F0 = ""
  loc_BA327B: FFreeAd var_8C = "": var_F8 = ""
  loc_BA3284: FFreeVar var_9C = "": var_EC = ""
  loc_BA328D: Branch loc_BA3331
  loc_BA3290: ILdRf var_168
  loc_BA3293: LitI4 6
  loc_BA3298: EqI4
  loc_BA3299: BranchF loc_BA3331
  loc_BA329C: FLdPr Me
  loc_BA329F: VCallAd Control_ID_FlexCheque
  loc_BA32A2: FStAdFunc var_8C
  loc_BA32A5: FLdPr var_8C
  loc_BA32A8: LateIdLdVar var_9C DispID_0 0
  loc_BA32AF: CStrVarTmp
  loc_BA32B0: FStStrNoPop var_F0
  loc_BA32B3: LitStr vbNullString
  loc_BA32B6: NeStr
  loc_BA32B8: FFree1Str var_F0
  loc_BA32BB: FFree1Ad var_8C
  loc_BA32BE: FFree1Var var_9C = ""
  loc_BA32C1: BranchF loc_BA3331
  loc_BA32C4: FLdPr Me
  loc_BA32C7: VCallAd Control_ID_FlexCheque
  loc_BA32CA: FStAdFunc var_8C
  loc_BA32CD: FLdPr var_8C
  loc_BA32D0: LateIdLdVar var_9C DispID_0 0
  loc_BA32D7: PopAd
  loc_BA32D9: FLdPr Me
  loc_BA32DC: VCallAd Control_ID_FlexCheque
  loc_BA32DF: FStAdFunc var_F8
  loc_BA32E2: FLdPr var_F8
  loc_BA32E5: LateIdLdVar var_EC DispID_0 0
  loc_BA32EC: CStrVarTmp
  loc_BA32ED: FStStrNoPop var_F0
  loc_BA32F0: FnLenStr
  loc_BA32F1: LitI4 1
  loc_BA32F6: SubI4
  loc_BA32F7: FLdRfVar var_9C
  loc_BA32FA: CStrVarTmp
  loc_BA32FB: FStStrNoPop var_16C
  loc_BA32FE: ImpAdCallI2 Left$(, )
  loc_BA3303: CVarStr var_120
  loc_BA3306: PopAdLdVar
  loc_BA3307: FLdPr Me
  loc_BA330A: VCallAd Control_ID_FlexCheque
  loc_BA330D: FStAdFunc var_FC
  loc_BA3310: FLdPr var_FC
  loc_BA3313: LateIdSt
  loc_BA3318: FFreeStr var_F0 = ""
  loc_BA331F: FFreeAd var_8C = "": var_F8 = ""
  loc_BA3328: FFreeVar var_9C = "": var_EC = ""
  loc_BA3331: Branch loc_BA3685
  loc_BA3334: FLdPr Me
  loc_BA3337: VCallAd Control_ID_FlexCheque
  loc_BA333A: FStAdFunc var_8C
  loc_BA333D: FLdPr var_8C
  loc_BA3340: LateIdLdVar var_9C DispID_11 0
  loc_BA3347: CI4Var
  loc_BA3349: FStR4 var_170
  loc_BA334C: FFree1Ad var_8C
  loc_BA334F: FFree1Var var_9C = ""
  loc_BA3352: ILdRf var_170
  loc_BA3355: LitI4 1
  loc_BA335A: EqI4
  loc_BA335B: BranchF loc_BA33DF
  loc_BA335E: FLdPr Me
  loc_BA3361: VCallAd Control_ID_FlexCheque
  loc_BA3364: FStAdFunc var_8C
  loc_BA3367: FLdPr var_8C
  loc_BA336A: LateIdLdVar var_9C DispID_0 0
  loc_BA3371: CStrVarTmp
  loc_BA3372: FStStrNoPop var_F0
  loc_BA3375: FnLenStr
  loc_BA3376: LitI4 &H5A
  loc_BA337B: LeI4
  loc_BA337C: FFree1Str var_F0
  loc_BA337F: FFree1Ad var_8C
  loc_BA3382: FFree1Var var_9C = ""
  loc_BA3385: BranchF loc_BA33DC
  loc_BA3388: FLdPr Me
  loc_BA338B: VCallAd Control_ID_FlexCheque
  loc_BA338E: FStAdFunc var_8C
  loc_BA3391: FLdPr var_8C
  loc_BA3394: LateIdLdVar var_9C DispID_0 0
  loc_BA339B: CStrVarTmp
  loc_BA339C: CVarStr var_120
  loc_BA339F: ILdI2 KeyAscii
  loc_BA33A2: CI4UI1
  loc_BA33A3: FLdRfVar var_EC
  loc_BA33A6: ImpAdCallFPR4  = Chr()
  loc_BA33AB: FLdRfVar var_EC
  loc_BA33AE: AddVar var_130
  loc_BA33B2: CStrVarTmp
  loc_BA33B3: CVarStr var_140
  loc_BA33B6: PopAdLdVar
  loc_BA33B7: FLdPr Me
  loc_BA33BA: VCallAd Control_ID_FlexCheque
  loc_BA33BD: FStAdFunc var_F8
  loc_BA33C0: FLdPr var_F8
  loc_BA33C3: LateIdSt
  loc_BA33C8: FFreeAd var_8C = ""
  loc_BA33CF: FFreeVar var_9C = "": var_120 = "": var_EC = "": var_130 = ""
  loc_BA33DC: Branch loc_BA3685
  loc_BA33DF: ILdRf var_170
  loc_BA33E2: LitI4 2
  loc_BA33E7: EqI4
  loc_BA33E8: BranchF loc_BA34FB
  loc_BA33EB: FLdPr Me
  loc_BA33EE: VCallAd Control_ID_FlexCheque
  loc_BA33F1: FStAdFunc var_8C
  loc_BA33F4: FLdPr var_8C
  loc_BA33F7: LateIdLdVar var_9C DispID_10 0
  loc_BA33FE: CI4Var
  loc_BA3400: CVarI4
  loc_BA3404: PopAdLdVar
  loc_BA3405: LitVarI4
  loc_BA340D: PopAdLdVar
  loc_BA340E: FLdPr Me
  loc_BA3411: VCallAd Control_ID_FlexCheque
  loc_BA3414: FStAdFunc var_F8
  loc_BA3417: FLdPr var_F8
  loc_BA341A: LateIdCallLdVar
  loc_BA3424: CStrVarTmp
  loc_BA3425: FStStrNoPop var_F0
  loc_BA3428: LitStr vbNullString
  loc_BA342B: EqStr
  loc_BA342D: FFree1Str var_F0
  loc_BA3430: FFreeAd var_8C = ""
  loc_BA3437: FFreeVar var_9C = ""
  loc_BA343E: BranchF loc_BA34F8
  loc_BA3441: LitStr "1234567890.,"
  loc_BA3444: FStStrCopy var_F0
  loc_BA3447: FLdRfVar var_F0
  loc_BA344A: ILdRf KeyAscii
  loc_BA344D: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_BA3452: IStI2 KeyAscii
  loc_BA3455: FFree1Str var_F0
  loc_BA3458: FLdPr Me
  loc_BA345B: VCallAd Control_ID_FlexCheque
  loc_BA345E: FStAdFunc var_8C
  loc_BA3461: FLdPr var_8C
  loc_BA3464: LateIdLdVar var_9C DispID_0 0
  loc_BA346B: CStrVarTmp
  loc_BA346C: FStStrNoPop var_F0
  loc_BA346F: FnLenStr
  loc_BA3470: LitI4 &HC
  loc_BA3475: LeI4
  loc_BA3476: FFree1Str var_F0
  loc_BA3479: FFree1Ad var_8C
  loc_BA347C: FFree1Var var_9C = ""
  loc_BA347F: BranchF loc_BA34F8
  loc_BA3482: ILdI2 KeyAscii
  loc_BA3485: LitStr "."
  loc_BA3488: ImpAdCallI2 Asc()
  loc_BA348D: EqI2
  loc_BA348E: BranchF loc_BA349C
  loc_BA3491: LitStr ","
  loc_BA3494: ImpAdCallI2 Asc()
  loc_BA3499: IStI2 KeyAscii
  loc_BA349C: FLdPr Me
  loc_BA349F: VCallAd Control_ID_FlexCheque
  loc_BA34A2: FStAdFunc var_8C
  loc_BA34A5: FLdPr var_8C
  loc_BA34A8: LateIdLdVar var_9C DispID_0 0
  loc_BA34AF: CStrVarTmp
  loc_BA34B0: CVarStr var_120
  loc_BA34B3: ILdI2 KeyAscii
  loc_BA34B6: CI4UI1
  loc_BA34B7: FLdRfVar var_EC
  loc_BA34BA: ImpAdCallFPR4  = Chr()
  loc_BA34BF: FLdRfVar var_EC
  loc_BA34C2: AddVar var_130
  loc_BA34C6: CStrVarTmp
  loc_BA34C7: CVarStr var_140
  loc_BA34CA: PopAdLdVar
  loc_BA34CB: FLdPr Me
  loc_BA34CE: VCallAd Control_ID_FlexCheque
  loc_BA34D1: FStAdFunc var_F8
  loc_BA34D4: FLdPr var_F8
  loc_BA34D7: LateIdSt
  loc_BA34DC: FFreeAd var_8C = ""
  loc_BA34E3: FFreeVar var_9C = "": var_120 = "": var_EC = "": var_130 = ""
  loc_BA34F0: LitI2_Byte &HFF
  loc_BA34F2: FLdPr Me
  loc_BA34F5: MemStI2 global_80
  loc_BA34F8: Branch loc_BA3685
  loc_BA34FB: ILdRf var_170
  loc_BA34FE: LitI4 4
  loc_BA3503: EqI4
  loc_BA3504: BranchF loc_BA35E4
  loc_BA3507: LitStr "1234567890"
  loc_BA350A: FStStrCopy var_F0
  loc_BA350D: FLdRfVar var_F0
  loc_BA3510: ILdRf KeyAscii
  loc_BA3513: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_BA3518: IStI2 KeyAscii
  loc_BA351B: FFree1Str var_F0
  loc_BA351E: FLdPr Me
  loc_BA3521: VCallAd Control_ID_FlexCheque
  loc_BA3524: FStAdFunc var_8C
  loc_BA3527: FLdPr var_8C
  loc_BA352A: LateIdLdVar var_9C DispID_0 0
  loc_BA3531: CStrVarTmp
  loc_BA3532: FStStrNoPop var_F0
  loc_BA3535: FnLenStr
  loc_BA3536: LitI4 7
  loc_BA353B: LeI4
  loc_BA353C: FFree1Str var_F0
  loc_BA353F: FFree1Ad var_8C
  loc_BA3542: FFree1Var var_9C = ""
  loc_BA3545: BranchF loc_BA35E1
  loc_BA3548: FLdPr var_88
  loc_BA354B: LateIdLdVar var_9C DispID_10 0
  loc_BA3552: CI4Var
  loc_BA3554: CVarI4
  loc_BA3558: PopAdLdVar
  loc_BA3559: LitVarI4
  loc_BA3561: PopAdLdVar
  loc_BA3562: FLdPr var_88
  loc_BA3565: LateIdCallLdVar
  loc_BA356F: CStrVarTmp
  loc_BA3570: FStStrNoPop var_F0
  loc_BA3573: LitStr "Transferencia"
  loc_BA3576: NeStr
  loc_BA3578: FFree1Str var_F0
  loc_BA357B: FFreeVar var_9C = ""
  loc_BA3582: BranchF loc_BA35E1
  loc_BA3585: FLdPr Me
  loc_BA3588: VCallAd Control_ID_FlexCheque
  loc_BA358B: FStAdFunc var_8C
  loc_BA358E: FLdPr var_8C
  loc_BA3591: LateIdLdVar var_9C DispID_0 0
  loc_BA3598: CStrVarTmp
  loc_BA3599: CVarStr var_120
  loc_BA359C: ILdI2 KeyAscii
  loc_BA359F: CI4UI1
  loc_BA35A0: FLdRfVar var_EC
  loc_BA35A3: ImpAdCallFPR4  = Chr()
  loc_BA35A8: FLdRfVar var_EC
  loc_BA35AB: AddVar var_130
  loc_BA35AF: CStrVarTmp
  loc_BA35B0: CVarStr var_140
  loc_BA35B3: PopAdLdVar
  loc_BA35B4: FLdPr Me
  loc_BA35B7: VCallAd Control_ID_FlexCheque
  loc_BA35BA: FStAdFunc var_F8
  loc_BA35BD: FLdPr var_F8
  loc_BA35C0: LateIdSt
  loc_BA35C5: FFreeAd var_8C = ""
  loc_BA35CC: FFreeVar var_9C = "": var_120 = "": var_EC = "": var_130 = ""
  loc_BA35D9: LitI2_Byte &HFF
  loc_BA35DB: FLdPr Me
  loc_BA35DE: MemStI2 global_82
  loc_BA35E1: Branch loc_BA3685
  loc_BA35E4: ILdRf var_170
  loc_BA35E7: LitI4 6
  loc_BA35EC: EqI4
  loc_BA35ED: BranchF loc_BA3685
  loc_BA35F0: LitStr "1234567890/"
  loc_BA35F3: FStStrCopy var_F0
  loc_BA35F6: FLdRfVar var_F0
  loc_BA35F9: ILdRf KeyAscii
  loc_BA35FC: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_BA3601: IStI2 KeyAscii
  loc_BA3604: FFree1Str var_F0
  loc_BA3607: FLdPr Me
  loc_BA360A: VCallAd Control_ID_FlexCheque
  loc_BA360D: FStAdFunc var_8C
  loc_BA3610: FLdPr var_8C
  loc_BA3613: LateIdLdVar var_9C DispID_0 0
  loc_BA361A: CStrVarTmp
  loc_BA361B: FStStrNoPop var_F0
  loc_BA361E: FnLenStr
  loc_BA361F: LitI4 &HA
  loc_BA3624: LeI4
  loc_BA3625: FFree1Str var_F0
  loc_BA3628: FFree1Ad var_8C
  loc_BA362B: FFree1Var var_9C = ""
  loc_BA362E: BranchF loc_BA3685
  loc_BA3631: FLdPr Me
  loc_BA3634: VCallAd Control_ID_FlexCheque
  loc_BA3637: FStAdFunc var_8C
  loc_BA363A: FLdPr var_8C
  loc_BA363D: LateIdLdVar var_9C DispID_0 0
  loc_BA3644: CStrVarTmp
  loc_BA3645: CVarStr var_120
  loc_BA3648: ILdI2 KeyAscii
  loc_BA364B: CI4UI1
  loc_BA364C: FLdRfVar var_EC
  loc_BA364F: ImpAdCallFPR4  = Chr()
  loc_BA3654: FLdRfVar var_EC
  loc_BA3657: AddVar var_130
  loc_BA365B: CStrVarTmp
  loc_BA365C: CVarStr var_140
  loc_BA365F: PopAdLdVar
  loc_BA3660: FLdPr Me
  loc_BA3663: VCallAd Control_ID_FlexCheque
  loc_BA3666: FStAdFunc var_F8
  loc_BA3669: FLdPr var_F8
  loc_BA366C: LateIdSt
  loc_BA3671: FFreeAd var_8C = ""
  loc_BA3678: FFreeVar var_9C = "": var_120 = "": var_EC = "": var_130 = ""
  loc_BA3685: LitNothing
  loc_BA3687: FStAd var_88 
  loc_BA368B: Branch loc_BA390A
  loc_BA368E: FLdPr Me
  loc_BA3691: MemLdUI1 global_64
  loc_BA3695: CI2UI1
  loc_BA3697: LitI2_Byte 3
  loc_BA3699: EqI2
  loc_BA369A: BranchF loc_BA390A
  loc_BA369D: FLdPr Me
  loc_BA36A0: VCallAd Control_ID_FlexCheque
  loc_BA36A3: FStAdFunc var_8C
  loc_BA36A6: FLdPr var_8C
  loc_BA36A9: LateIdLdVar var_9C DispID_11 0
  loc_BA36B0: CI4Var
  loc_BA36B2: FStR4 var_174
  loc_BA36B5: FFree1Ad var_8C
  loc_BA36B8: FFree1Var var_9C = ""
  loc_BA36BB: ILdRf var_174
  loc_BA36BE: LitI4 7
  loc_BA36C3: EqI4
  loc_BA36C4: BranchF loc_BA390A
  loc_BA36C7: FLdPr Me
  loc_BA36CA: VCallAd Control_ID_FlexCheque
  loc_BA36CD: FStAdFunc var_8C
  loc_BA36D0: FLdPr var_8C
  loc_BA36D3: LateIdLdVar var_9C DispID_10 0
  loc_BA36DA: CI4Var
  loc_BA36DC: CVarI4
  loc_BA36E0: PopAdLdVar
  loc_BA36E1: LitVarI4
  loc_BA36E9: PopAdLdVar
  loc_BA36EA: FLdPr Me
  loc_BA36ED: VCallAd Control_ID_FlexCheque
  loc_BA36F0: FStAdFunc var_F8
  loc_BA36F3: FLdPr var_F8
  loc_BA36F6: LateIdCallLdVar
  loc_BA3700: CStrVarTmp
  loc_BA3701: FStStrNoPop var_F0
  loc_BA3704: LitStr "0"
  loc_BA3707: NeStr
  loc_BA3709: FFree1Str var_F0
  loc_BA370C: FFreeAd var_8C = ""
  loc_BA3713: FFreeVar var_9C = ""
  loc_BA371A: BranchF loc_BA390A
  loc_BA371D: LitStr "1234567890/"
  loc_BA3720: FStStrCopy var_F0
  loc_BA3723: FLdRfVar var_F0
  loc_BA3726: ILdRf KeyAscii
  loc_BA3729: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_BA372E: IStI2 KeyAscii
  loc_BA3731: FFree1Str var_F0
  loc_BA3734: ILdI2 KeyAscii
  loc_BA3737: LitI2_Byte 8
  loc_BA3739: EqI2
  loc_BA373A: BranchF loc_BA37D5
  loc_BA373D: FLdPr Me
  loc_BA3740: VCallAd Control_ID_FlexCheque
  loc_BA3743: FStAdFunc var_8C
  loc_BA3746: FLdPr var_8C
  loc_BA3749: LateIdLdVar var_9C DispID_0 0
  loc_BA3750: CStrVarTmp
  loc_BA3751: FStStrNoPop var_F0
  loc_BA3754: LitStr vbNullString
  loc_BA3757: NeStr
  loc_BA3759: FFree1Str var_F0
  loc_BA375C: FFree1Ad var_8C
  loc_BA375F: FFree1Var var_9C = ""
  loc_BA3762: BranchF loc_BA37D2
  loc_BA3765: FLdPr Me
  loc_BA3768: VCallAd Control_ID_FlexCheque
  loc_BA376B: FStAdFunc var_8C
  loc_BA376E: FLdPr var_8C
  loc_BA3771: LateIdLdVar var_9C DispID_0 0
  loc_BA3778: PopAd
  loc_BA377A: FLdPr Me
  loc_BA377D: VCallAd Control_ID_FlexCheque
  loc_BA3780: FStAdFunc var_F8
  loc_BA3783: FLdPr var_F8
  loc_BA3786: LateIdLdVar var_EC DispID_0 0
  loc_BA378D: CStrVarTmp
  loc_BA378E: FStStrNoPop var_F0
  loc_BA3791: FnLenStr
  loc_BA3792: LitI4 1
  loc_BA3797: SubI4
  loc_BA3798: FLdRfVar var_9C
  loc_BA379B: CStrVarTmp
  loc_BA379C: FStStrNoPop var_16C
  loc_BA379F: ImpAdCallI2 Left$(, )
  loc_BA37A4: CVarStr var_120
  loc_BA37A7: PopAdLdVar
  loc_BA37A8: FLdPr Me
  loc_BA37AB: VCallAd Control_ID_FlexCheque
  loc_BA37AE: FStAdFunc var_FC
  loc_BA37B1: FLdPr var_FC
  loc_BA37B4: LateIdSt
  loc_BA37B9: FFreeStr var_F0 = ""
  loc_BA37C0: FFreeAd var_8C = "": var_F8 = ""
  loc_BA37C9: FFreeVar var_9C = "": var_EC = ""
  loc_BA37D2: Branch loc_BA3853
  loc_BA37D5: FLdPr Me
  loc_BA37D8: VCallAd Control_ID_FlexCheque
  loc_BA37DB: FStAdFunc var_8C
  loc_BA37DE: FLdPr var_8C
  loc_BA37E1: LateIdLdVar var_9C DispID_0 0
  loc_BA37E8: CStrVarTmp
  loc_BA37E9: FStStrNoPop var_F0
  loc_BA37EC: FnLenStr
  loc_BA37ED: LitI4 &HA
  loc_BA37F2: LeI4
  loc_BA37F3: FFree1Str var_F0
  loc_BA37F6: FFree1Ad var_8C
  loc_BA37F9: FFree1Var var_9C = ""
  loc_BA37FC: BranchF loc_BA3853
  loc_BA37FF: FLdPr Me
  loc_BA3802: VCallAd Control_ID_FlexCheque
  loc_BA3805: FStAdFunc var_8C
  loc_BA3808: FLdPr var_8C
  loc_BA380B: LateIdLdVar var_9C DispID_0 0
  loc_BA3812: CStrVarTmp
  loc_BA3813: CVarStr var_120
  loc_BA3816: ILdI2 KeyAscii
  loc_BA3819: CI4UI1
  loc_BA381A: FLdRfVar var_EC
  loc_BA381D: ImpAdCallFPR4  = Chr()
  loc_BA3822: FLdRfVar var_EC
  loc_BA3825: AddVar var_130
  loc_BA3829: CStrVarTmp
  loc_BA382A: CVarStr var_140
  loc_BA382D: PopAdLdVar
  loc_BA382E: FLdPr Me
  loc_BA3831: VCallAd Control_ID_FlexCheque
  loc_BA3834: FStAdFunc var_F8
  loc_BA3837: FLdPr var_F8
  loc_BA383A: LateIdSt
  loc_BA383F: FFreeAd var_8C = ""
  loc_BA3846: FFreeVar var_9C = "": var_120 = "": var_EC = "": var_130 = ""
  loc_BA3853: FLdPr Me
  loc_BA3856: VCallAd Control_ID_FlexCheque
  loc_BA3859: FStAdFunc var_8C
  loc_BA385C: FLdPr var_8C
  loc_BA385F: LateIdLdVar var_9C DispID_10 0
  loc_BA3866: CI4Var
  loc_BA3868: CVarI4
  loc_BA386C: PopAdLdVar
  loc_BA386D: LitVarI4
  loc_BA3875: PopAdLdVar
  loc_BA3876: FLdPr Me
  loc_BA3879: VCallAd Control_ID_FlexCheque
  loc_BA387C: FStAdFunc var_F8
  loc_BA387F: FLdPr var_F8
  loc_BA3882: LateIdCallLdVar
  loc_BA388C: CStrVarTmp
  loc_BA388D: CVarStr var_120
  loc_BA3890: ImpAdCallI2 IsDate()
  loc_BA3895: FFreeAd var_8C = ""
  loc_BA389C: FFreeVar var_9C = "": var_EC = ""
  loc_BA38A5: BranchF loc_BA3900
  loc_BA38A8: FLdPr Me
  loc_BA38AB: VCallAd Control_ID_FlexCheque
  loc_BA38AE: FStAdFunc var_8C
  loc_BA38B1: FLdPr var_8C
  loc_BA38B4: LateIdLdVar var_9C DispID_10 0
  loc_BA38BB: CI4Var
  loc_BA38BD: CVarI4
  loc_BA38C1: PopAdLdVar
  loc_BA38C2: LitVarI4
  loc_BA38CA: PopAdLdVar
  loc_BA38CB: FLdPr Me
  loc_BA38CE: VCallAd Control_ID_FlexCheque
  loc_BA38D1: FStAdFunc var_F8
  loc_BA38D4: FLdPr var_F8
  loc_BA38D7: LateIdCallLdVar
  loc_BA38E1: CStrVarTmp
  loc_BA38E2: FStStrNoPop var_F0
  loc_BA38E5: FLdPr Me
  loc_BA38E8: MemStStrCopy
  loc_BA38EC: FFree1Str var_F0
  loc_BA38EF: FFreeAd var_8C = ""
  loc_BA38F6: FFreeVar var_9C = ""
  loc_BA38FD: Branch loc_BA390A
  loc_BA3900: LitStr vbNullString
  loc_BA3903: FLdPr Me
  loc_BA3906: MemStStrCopy
  loc_BA390A: ExitProcHresult
End Sub

Private Sub FlexCheque_KeyUp(KeyCode As Integer, Shift As Integer) 'A148FC
  'Data Table: 4B2A08
  loc_A14780: ILdI2 KeyCode
  loc_A14783: CI4UI1
  loc_A14784: LitI4 &H28
  loc_A14789: EqI4
  loc_A1478A: ILdI2 KeyCode
  loc_A1478D: CI4UI1
  loc_A1478E: LitI4 &H26
  loc_A14793: EqI4
  loc_A14794: OrI4
  loc_A14795: BranchF loc_A148FB
  loc_A14798: FLdPr Me
  loc_A1479B: MemLdUI1 global_64
  loc_A1479F: LitI2_Byte 3
  loc_A147A1: EqI2
  loc_A147A2: BranchF loc_A148FB
  loc_A147A5: FLdPr Me
  loc_A147A8: VCallAd Control_ID_FlexCheque
  loc_A147AB: FStAdFunc var_88
  loc_A147AE: FLdPr var_88
  loc_A147B1: LateIdLdVar var_98 DispID_11 0
  loc_A147B8: CI4Var
  loc_A147BA: LitI4 7
  loc_A147BF: EqI4
  loc_A147C0: FFree1Ad var_88
  loc_A147C3: FFree1Var var_98 = ""
  loc_A147C6: BranchF loc_A148FB
  loc_A147C9: LitI2_Byte 1
  loc_A147CB: FLdPr Me
  loc_A147CE: MemLdRfVar from_stack_1.global_72
  loc_A147D1: FLdPr Me
  loc_A147D4: VCallAd Control_ID_FlexCheque
  loc_A147D7: FStAdFunc var_88
  loc_A147DA: FLdPr var_88
  loc_A147DD: LateIdLdVar var_98 DispID_4 0
  loc_A147E4: CI4Var
  loc_A147E6: LitI4 1
  loc_A147EB: SubI4
  loc_A147EC: CI2I4
  loc_A147ED: FFree1Ad var_88
  loc_A147F0: FFree1Var var_98 = ""
  loc_A147F3: ForI2 var_9C
  loc_A147F9: FLdPr Me
  loc_A147FC: MemLdI2 global_72
  loc_A147FF: CI4UI1
  loc_A14800: CVarI4
  loc_A14804: PopAdLdVar
  loc_A14805: LitVarI4
  loc_A1480D: PopAdLdVar
  loc_A1480E: FLdPr Me
  loc_A14811: VCallAd Control_ID_FlexCheque
  loc_A14814: FStAdFunc var_88
  loc_A14817: FLdPr var_88
  loc_A1481A: LateIdCallLdVar
  loc_A14824: CStrVarTmp
  loc_A14825: FStStrNoPop var_E0
  loc_A14828: LitStr vbNullString
  loc_A1482B: EqStr
  loc_A1482D: FLdPr Me
  loc_A14830: MemLdI2 global_72
  loc_A14833: CI4UI1
  loc_A14834: CVarI4
  loc_A14838: PopAdLdVar
  loc_A14839: LitVarI4
  loc_A14841: PopAdLdVar
  loc_A14842: FLdPr Me
  loc_A14845: VCallAd Control_ID_FlexCheque
  loc_A14848: FStAdFunc var_124
  loc_A1484B: FLdPr var_124
  loc_A1484E: LateIdCallLdVar
  loc_A14858: CStrVarTmp
  loc_A14859: CVarStr var_144
  loc_A1485C: ImpAdCallI2 IsNumeric()
  loc_A14861: AndI4
  loc_A14862: FFree1Str var_E0
  loc_A14865: FFreeAd var_88 = ""
  loc_A1486C: FFreeVar var_98 = "": var_134 = ""
  loc_A14875: BranchF loc_A148F0
  loc_A14878: FLdPr Me
  loc_A1487B: MemLdI2 global_72
  loc_A1487E: CI4UI1
  loc_A1487F: CVarI4
  loc_A14883: PopAdLdVar
  loc_A14884: LitVarI4
  loc_A1488C: PopAdLdVar
  loc_A1488D: FLdPr Me
  loc_A14890: VCallAd Control_ID_FlexCheque
  loc_A14893: FStAdFunc var_88
  loc_A14896: FLdPr var_88
  loc_A14899: LateIdCallLdVar
  loc_A148A3: CStrVarTmp
  loc_A148A4: FStStrNoPop var_E0
  loc_A148A7: CI4Str
  loc_A148A8: LitI4 0
  loc_A148AD: GtI4
  loc_A148AE: FFree1Str var_E0
  loc_A148B1: FFree1Ad var_88
  loc_A148B4: FFree1Var var_98 = ""
  loc_A148B7: BranchF loc_A148F0
  loc_A148BA: FLdPr Me
  loc_A148BD: MemLdI2 global_72
  loc_A148C0: CI4UI1
  loc_A148C1: CVarI4
  loc_A148C5: PopAdLdVar
  loc_A148C6: LitVarI4
  loc_A148CE: PopAdLdVar
  loc_A148CF: FLdPr Me
  loc_A148D2: MemLdRfVar from_stack_1.global_120
  loc_A148D5: CDargRef
  loc_A148D9: FLdPr Me
  loc_A148DC: VCallAd Control_ID_FlexCheque
  loc_A148DF: FStAdFunc var_88
  loc_A148E2: FLdPr var_88
  loc_A148E5: LateIdCallSt
  loc_A148ED: FFree1Ad var_88
  loc_A148F0: FLdPr Me
  loc_A148F3: MemLdRfVar from_stack_1.global_72
  loc_A148F6: NextI2 var_9C, loc_A147F9
  loc_A148FB: ExitProcHresult
End Sub

Private Sub FlexCheque_RowColChange() '9CA650
  'Data Table: 4B2A08
  loc_9CA594: FLdPr Me
  loc_9CA597: VCallAd Control_ID_FlexCheque
  loc_9CA59A: FStAdFunc var_88
  loc_9CA59D: FLdPr var_88
  loc_9CA5A0: LateIdLdVar var_98 DispID_10 0
  loc_9CA5A7: CI4Var
  loc_9CA5A9: CVarI4
  loc_9CA5AD: PopAdLdVar
  loc_9CA5AE: LitVarI4
  loc_9CA5B6: PopAdLdVar
  loc_9CA5B7: FLdPr Me
  loc_9CA5BA: VCallAd Control_ID_FlexCheque
  loc_9CA5BD: FStAdFunc var_DC
  loc_9CA5C0: FLdPr var_DC
  loc_9CA5C3: LateIdCallLdVar
  loc_9CA5CD: CStrVarTmp
  loc_9CA5CE: FStStrNoPop var_F0
  loc_9CA5D1: LitStr " - "
  loc_9CA5D4: ConcatStr
  loc_9CA5D5: FStStrNoPop var_15C
  loc_9CA5D8: FLdPr Me
  loc_9CA5DB: VCallAd Control_ID_FlexCheque
  loc_9CA5DE: FStAdFunc var_F4
  loc_9CA5E1: FLdPr var_F4
  loc_9CA5E4: LateIdLdVar var_104 DispID_10 0
  loc_9CA5EB: CI4Var
  loc_9CA5ED: CVarI4
  loc_9CA5F1: PopAdLdVar
  loc_9CA5F2: LitVarI4
  loc_9CA5FA: PopAdLdVar
  loc_9CA5FB: FLdPr Me
  loc_9CA5FE: VCallAd Control_ID_FlexCheque
  loc_9CA601: FStAdFunc var_148
  loc_9CA604: FLdPr var_148
  loc_9CA607: LateIdCallLdVar
  loc_9CA611: CStrVarTmp
  loc_9CA612: FStStrNoPop var_160
  loc_9CA615: ConcatStr
  loc_9CA616: CVarStr var_170
  loc_9CA619: PopAdLdVar
  loc_9CA61A: FLdPr Me
  loc_9CA61D: VCallAd Control_ID_FlexCheque
  loc_9CA620: FStAdFunc var_184
  loc_9CA623: FLdPr var_184
  loc_9CA626: LateIdSt
  loc_9CA62B: FFreeStr var_F0 = "": var_15C = ""
  loc_9CA634: FFreeAd var_88 = "": var_DC = "": var_F4 = "": var_148 = ""
  loc_9CA641: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_158 = ""
  loc_9CA64E: ExitProcHresult
End Sub

Private Sub FlexCheque_EnterCell() '9B4574
  'Data Table: 4B2A08
  loc_9B44D0: FLdPr Me
  loc_9B44D3: VCallAd Control_ID_FlexCheque
  loc_9B44D6: FStAdFunc var_88
  loc_9B44D9: FLdPr var_88
  loc_9B44DC: LateIdLdVar var_98 DispID_11 0
  loc_9B44E3: CI4Var
  loc_9B44E5: LitI4 2
  loc_9B44EA: EqI4
  loc_9B44EB: FFree1Ad var_88
  loc_9B44EE: FFree1Var var_98 = ""
  loc_9B44F1: BranchF loc_9B4570
  loc_9B44F4: FLdPr Me
  loc_9B44F7: VCallAd Control_ID_FlexCheque
  loc_9B44FA: FStAdFunc var_88
  loc_9B44FD: FLdPr var_88
  loc_9B4500: LateIdLdVar var_98 DispID_0 0
  loc_9B4507: CStrVarTmp
  loc_9B4508: FStStrNoPop var_9C
  loc_9B450B: LitStr vbNullString
  loc_9B450E: NeStr
  loc_9B4510: FFree1Str var_9C
  loc_9B4513: FFree1Ad var_88
  loc_9B4516: FFree1Var var_98 = ""
  loc_9B4519: BranchF loc_9B4567
  loc_9B451C: FLdPr Me
  loc_9B451F: VCallAd Control_ID_FlexCheque
  loc_9B4522: FStAdFunc var_88
  loc_9B4525: FLdPr var_88
  loc_9B4528: LateIdLdVar var_98 DispID_0 0
  loc_9B452F: PopAd
  loc_9B4531: LitI4 2
  loc_9B4536: FLdRfVar var_98
  loc_9B4539: CStrVarTmp
  loc_9B453A: FStStrNoPop var_9C
  loc_9B453D: CR8Str
  loc_9B453F: CVarR8
  loc_9B4543: FLdRfVar var_CC
  loc_9B4546: ImpAdCallFPR4  = Round(, )
  loc_9B454B: FLdRfVar var_CC
  loc_9B454E: CR4Var
  loc_9B454F: FLdPr Me
  loc_9B4552: MemStFPR8 global_92
  loc_9B4555: FFree1Str var_9C
  loc_9B4558: FFree1Ad var_88
  loc_9B455B: FFreeVar var_98 = "": var_BC = ""
  loc_9B4564: Branch loc_9B4570
  loc_9B4567: LitI2_Byte 0
  loc_9B4569: CR8I2
  loc_9B456A: FLdPr Me
  loc_9B456D: MemStFPR8 global_92
  loc_9B4570: ExitProcHresult
  loc_9B4571: DOC
End Sub

Private Sub FlexCheque_LeaveCell() 'B18274
  'Data Table: 4B2A08
  loc_B179E4: LitI2_Byte 0
  loc_B179E6: FLdPr Me
  loc_B179E9: MemStI2 global_102
  loc_B179EC: LitI2_Byte 0
  loc_B179EE: FLdPr Me
  loc_B179F1: MemStI2 global_100
  loc_B179F4: FLdPr Me
  loc_B179F7: MemLdI2 global_80
  loc_B179FA: LitI2_Byte &HFF
  loc_B179FC: EqI2
  loc_B179FD: BranchF loc_B18273
  loc_B17A00: FLdPr Me
  loc_B17A03: VCallAd Control_ID_FlexCheque
  loc_B17A06: FStAdFunc var_88
  loc_B17A09: FLdPr var_88
  loc_B17A0C: LateIdLdVar var_98 DispID_4 0
  loc_B17A13: CI4Var
  loc_B17A15: LitI4 1
  loc_B17A1A: SubI4
  loc_B17A1B: CI2I4
  loc_B17A1C: FLdPr Me
  loc_B17A1F: MemLdRfVar from_stack_1.global_72
  loc_B17A22: LitI2_Byte 1
  loc_B17A24: LitI2_Byte &HFF
  loc_B17A26: FFree1Ad var_88
  loc_B17A29: FFree1Var var_98 = ""
  loc_B17A2C: ForStepI2 var_9C
  loc_B17A32: FLdPr Me
  loc_B17A35: MemLdI2 global_72
  loc_B17A38: FLdPr Me
  loc_B17A3B: VCallAd Control_ID_FlexCheque
  loc_B17A3E: FStAdFunc var_88
  loc_B17A41: FLdPr var_88
  loc_B17A44: LateIdLdVar var_98 DispID_10 0
  loc_B17A4B: CI4Var
  loc_B17A4D: CI2I4
  loc_B17A4E: LeI2
  loc_B17A4F: FFree1Ad var_88
  loc_B17A52: FFree1Var var_98 = ""
  loc_B17A55: BranchF loc_B17AA7
  loc_B17A58: FLdPr Me
  loc_B17A5B: MemLdI2 global_72
  loc_B17A5E: CI4UI1
  loc_B17A5F: CVarI4
  loc_B17A63: PopAdLdVar
  loc_B17A64: LitVarI4
  loc_B17A6C: PopAdLdVar
  loc_B17A6D: FLdPr Me
  loc_B17A70: VCallAd Control_ID_FlexCheque
  loc_B17A73: FStAdFunc var_88
  loc_B17A76: FLdPr var_88
  loc_B17A79: LateIdCallLdVar
  loc_B17A83: CStrVarTmp
  loc_B17A84: FStStrNoPop var_E0
  loc_B17A87: LitStr vbNullString
  loc_B17A8A: NeStr
  loc_B17A8C: FFree1Str var_E0
  loc_B17A8F: FFree1Ad var_88
  loc_B17A92: FFree1Var var_98 = ""
  loc_B17A95: BranchF loc_B17AA7
  loc_B17A98: FLdPr Me
  loc_B17A9B: MemLdI2 global_72
  loc_B17A9E: FLdPr Me
  loc_B17AA1: MemStI2 global_102
  loc_B17AA4: Branch loc_B17AB2
  loc_B17AA7: FLdPr Me
  loc_B17AAA: MemLdRfVar from_stack_1.global_72
  loc_B17AAD: NextStepI2 var_9C, loc_B17A32
  loc_B17AB2: LitI2_Byte 1
  loc_B17AB4: FLdPr Me
  loc_B17AB7: MemLdRfVar from_stack_1.global_72
  loc_B17ABA: FLdPr Me
  loc_B17ABD: VCallAd Control_ID_FlexCheque
  loc_B17AC0: FStAdFunc var_88
  loc_B17AC3: FLdPr var_88
  loc_B17AC6: LateIdLdVar var_98 DispID_4 0
  loc_B17ACD: CI4Var
  loc_B17ACF: LitI4 1
  loc_B17AD4: SubI4
  loc_B17AD5: CI2I4
  loc_B17AD6: FFree1Ad var_88
  loc_B17AD9: FFree1Var var_98 = ""
  loc_B17ADC: ForI2 var_E4
  loc_B17AE2: FLdPr Me
  loc_B17AE5: MemLdI2 global_72
  loc_B17AE8: FLdPr Me
  loc_B17AEB: VCallAd Control_ID_FlexCheque
  loc_B17AEE: FStAdFunc var_88
  loc_B17AF1: FLdPr var_88
  loc_B17AF4: LateIdLdVar var_98 DispID_10 0
  loc_B17AFB: CI4Var
  loc_B17AFD: CI2I4
  loc_B17AFE: GeI2
  loc_B17AFF: FFree1Ad var_88
  loc_B17B02: FFree1Var var_98 = ""
  loc_B17B05: BranchF loc_B17B57
  loc_B17B08: FLdPr Me
  loc_B17B0B: MemLdI2 global_72
  loc_B17B0E: CI4UI1
  loc_B17B0F: CVarI4
  loc_B17B13: PopAdLdVar
  loc_B17B14: LitVarI4
  loc_B17B1C: PopAdLdVar
  loc_B17B1D: FLdPr Me
  loc_B17B20: VCallAd Control_ID_FlexCheque
  loc_B17B23: FStAdFunc var_88
  loc_B17B26: FLdPr var_88
  loc_B17B29: LateIdCallLdVar
  loc_B17B33: CStrVarTmp
  loc_B17B34: FStStrNoPop var_E0
  loc_B17B37: LitStr vbNullString
  loc_B17B3A: NeStr
  loc_B17B3C: FFree1Str var_E0
  loc_B17B3F: FFree1Ad var_88
  loc_B17B42: FFree1Var var_98 = ""
  loc_B17B45: BranchF loc_B17B57
  loc_B17B48: FLdPr Me
  loc_B17B4B: MemLdI2 global_72
  loc_B17B4E: FLdPr Me
  loc_B17B51: MemStI2 global_100
  loc_B17B54: Branch loc_B17B62
  loc_B17B57: FLdPr Me
  loc_B17B5A: MemLdRfVar from_stack_1.global_72
  loc_B17B5D: NextI2 var_E4, loc_B17AE2
  loc_B17B62: FLdPr Me
  loc_B17B65: MemLdI2 global_100
  loc_B17B68: LitI2_Byte 0
  loc_B17B6A: EqI2
  loc_B17B6B: BranchF loc_B17B96
  loc_B17B6E: FLdPr Me
  loc_B17B71: VCallAd Control_ID_FlexCheque
  loc_B17B74: FStAdFunc var_88
  loc_B17B77: FLdPr var_88
  loc_B17B7A: LateIdLdVar var_98 DispID_4 0
  loc_B17B81: CI4Var
  loc_B17B83: LitI4 1
  loc_B17B88: SubI4
  loc_B17B89: CI2I4
  loc_B17B8A: FLdPr Me
  loc_B17B8D: MemStI2 global_100
  loc_B17B90: FFree1Ad var_88
  loc_B17B93: FFree1Var var_98 = ""
  loc_B17B96: FLdPr Me
  loc_B17B99: MemLdI2 global_102
  loc_B17B9C: FLdPr Me
  loc_B17B9F: MemLdRfVar from_stack_1.global_72
  loc_B17BA2: FLdPr Me
  loc_B17BA5: MemLdI2 global_100
  loc_B17BA8: LitI2_Byte 1
  loc_B17BAA: SubI2
  loc_B17BAB: ForI2 var_E8
  loc_B17BB1: FLdPr Me
  loc_B17BB4: MemLdI2 global_72
  loc_B17BB7: CI4UI1
  loc_B17BB8: CVarI4
  loc_B17BBC: PopAdLdVar
  loc_B17BBD: LitVarI4
  loc_B17BC5: PopAdLdVar
  loc_B17BC6: FLdPr Me
  loc_B17BC9: VCallAd Control_ID_FlexCheque
  loc_B17BCC: FStAdFunc var_88
  loc_B17BCF: FLdPr var_88
  loc_B17BD2: LateIdCallLdVar
  loc_B17BDC: CStrVarTmp
  loc_B17BDD: FStStrNoPop var_E0
  loc_B17BE0: LitStr vbNullString
  loc_B17BE3: NeStr
  loc_B17BE5: FLdPr Me
  loc_B17BE8: VCallAd Control_ID_FlexCheque
  loc_B17BEB: FStAdFunc var_EC
  loc_B17BEE: FLdPr var_EC
  loc_B17BF1: LateIdLdVar var_FC DispID_10 0
  loc_B17BF8: CI4Var
  loc_B17BFA: CVarI4
  loc_B17BFE: PopAdLdVar
  loc_B17BFF: LitVarI4
  loc_B17C07: PopAdLdVar
  loc_B17C08: FLdPr Me
  loc_B17C0B: VCallAd Control_ID_FlexCheque
  loc_B17C0E: FStAdFunc var_140
  loc_B17C11: FLdPr var_140
  loc_B17C14: LateIdCallLdVar
  loc_B17C1E: CStrVarTmp
  loc_B17C1F: FStStrNoPop var_154
  loc_B17C22: LitStr vbNullString
  loc_B17C25: EqStr
  loc_B17C27: AndI4
  loc_B17C28: FFreeStr var_E0 = ""
  loc_B17C2F: FFreeAd var_88 = "": var_EC = ""
  loc_B17C38: FFreeVar var_98 = "": var_FC = ""
  loc_B17C41: BranchF loc_B18260
  loc_B17C44: FLdPr Me
  loc_B17C47: VCallAd Control_ID_FlexCheque
  loc_B17C4A: FStAdFunc var_88
  loc_B17C4D: FLdPr var_88
  loc_B17C50: LateIdLdVar var_98 DispID_10 0
  loc_B17C57: CI4Var
  loc_B17C59: CVarI4
  loc_B17C5D: PopAdLdVar
  loc_B17C5E: LitVarI4
  loc_B17C66: PopAdLdVar
  loc_B17C67: FLdPr Me
  loc_B17C6A: VCallAd Control_ID_FlexCheque
  loc_B17C6D: FStAdFunc var_EC
  loc_B17C70: FLdPr var_EC
  loc_B17C73: LateIdCallLdVar
  loc_B17C7D: CStrVarTmp
  loc_B17C7E: CVarStr var_150
  loc_B17C81: ImpAdCallI2 IsNumeric()
  loc_B17C86: NotI4
  loc_B17C87: FFreeAd var_88 = ""
  loc_B17C8E: FFreeVar var_98 = "": var_FC = ""
  loc_B17C97: BranchF loc_B17CE7
  loc_B17C9A: FLdPr Me
  loc_B17C9D: VCallAd Control_ID_FlexCheque
  loc_B17CA0: FStAdFunc var_88
  loc_B17CA3: FLdPr var_88
  loc_B17CA6: LateIdLdVar var_98 DispID_10 0
  loc_B17CAD: CI4Var
  loc_B17CAF: CVarI4
  loc_B17CB3: PopAdLdVar
  loc_B17CB4: LitVarI4
  loc_B17CBC: PopAdLdVar
  loc_B17CBD: LitI2_Byte 0
  loc_B17CBF: CStrUI1
  loc_B17CC1: CVarStr var_FC
  loc_B17CC4: PopAdLdVar
  loc_B17CC5: FLdPr Me
  loc_B17CC8: VCallAd Control_ID_FlexCheque
  loc_B17CCB: FStAdFunc var_EC
  loc_B17CCE: FLdPr var_EC
  loc_B17CD1: LateIdCallSt
  loc_B17CD9: FFreeAd var_88 = ""
  loc_B17CE0: FFreeVar var_98 = ""
  loc_B17CE7: FLdPr Me
  loc_B17CEA: VCallAd Control_ID_FlexCheque
  loc_B17CED: FStAdFunc var_88
  loc_B17CF0: FLdPr var_88
  loc_B17CF3: LateIdLdVar var_98 DispID_10 0
  loc_B17CFA: CI4Var
  loc_B17CFC: CVarI4
  loc_B17D00: PopAdLdVar
  loc_B17D01: LitVarI4
  loc_B17D09: PopAdLdVar
  loc_B17D0A: FLdPr Me
  loc_B17D0D: VCallAd Control_ID_FlexCheque
  loc_B17D10: FStAdFunc var_EC
  loc_B17D13: FLdPr var_EC
  loc_B17D16: LateIdCallLdVar
  loc_B17D20: CStrVarTmp
  loc_B17D21: CVarStr var_150
  loc_B17D24: ImpAdCallI2 IsNumeric()
  loc_B17D29: FFreeAd var_88 = ""
  loc_B17D30: FFreeVar var_98 = "": var_FC = ""
  loc_B17D39: BranchF loc_B18260
  loc_B17D3C: FLdPr Me
  loc_B17D3F: MemLdI2 global_72
  loc_B17D42: CI4UI1
  loc_B17D43: CVarI4
  loc_B17D47: PopAdLdVar
  loc_B17D48: LitVarI4
  loc_B17D50: PopAdLdVar
  loc_B17D51: FLdPr Me
  loc_B17D54: VCallAd Control_ID_FlexCheque
  loc_B17D57: FStAdFunc var_88
  loc_B17D5A: FLdPr var_88
  loc_B17D5D: LateIdCallLdVar
  loc_B17D67: PopAd
  loc_B17D69: FLdPr Me
  loc_B17D6C: VCallAd Control_ID_FlexCheque
  loc_B17D6F: FStAdFunc var_EC
  loc_B17D72: FLdPr var_EC
  loc_B17D75: LateIdLdVar var_FC DispID_10 0
  loc_B17D7C: CI4Var
  loc_B17D7E: CVarI4
  loc_B17D82: PopAdLdVar
  loc_B17D83: LitVarI4
  loc_B17D8B: PopAdLdVar
  loc_B17D8C: FLdPr Me
  loc_B17D8F: VCallAd Control_ID_FlexCheque
  loc_B17D92: FStAdFunc var_140
  loc_B17D95: FLdPr var_140
  loc_B17D98: LateIdCallLdVar
  loc_B17DA2: PopAd
  loc_B17DA4: LitI4 2
  loc_B17DA9: FLdRfVar var_98
  loc_B17DAC: CStrVarTmp
  loc_B17DAD: FStStrNoPop var_E0
  loc_B17DB0: CR8Str
  loc_B17DB2: FLdRfVar var_150
  loc_B17DB5: CStrVarTmp
  loc_B17DB6: FStStrNoPop var_154
  loc_B17DB9: CR8Str
  loc_B17DBB: SubR4
  loc_B17DBC: FLdPr Me
  loc_B17DBF: MemLdFPR8 global_92
  loc_B17DC2: AddR8
  loc_B17DC3: CVarR8
  loc_B17DC7: FLdRfVar var_184
  loc_B17DCA: ImpAdCallFPR4  = Round(, )
  loc_B17DCF: FLdRfVar var_184
  loc_B17DD2: LitVarI2 var_194, 0
  loc_B17DD7: HardType
  loc_B17DD8: LeVarBool
  loc_B17DDA: FFreeStr var_E0 = ""
  loc_B17DE1: FFreeAd var_88 = "": var_EC = ""
  loc_B17DEA: FFreeVar var_98 = "": var_FC = "": var_150 = "": var_174 = ""
  loc_B17DF7: BranchF loc_B17FB2
  loc_B17DFA: LitStr "El cheque original no puede ser 0 o menor a cero"
  loc_B17DFD: FLdPr Me
  loc_B17E00: MemStStrCopy
  loc_B17E04: LitI4 0
  loc_B17E09: FLdPr Me
  loc_B17E0C: MemLdStr global_68
  loc_B17E0F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B17E14: FLdPr Me
  loc_B17E17: VCallAd Control_ID_FlexCheque
  loc_B17E1A: FStAdFunc var_88
  loc_B17E1D: FLdPr var_88
  loc_B17E20: LateIdLdVar var_174 DispID_10 0
  loc_B17E27: CI4Var
  loc_B17E29: CVarI4
  loc_B17E2D: PopAdLdVar
  loc_B17E2E: LitVarI4
  loc_B17E36: PopAdLdVar
  loc_B17E37: LitI4 1
  loc_B17E3C: LitI4 1
  loc_B17E41: LitVarStr var_BC, "0.00"
  loc_B17E46: FStVarCopyObj var_FC
  loc_B17E49: FLdRfVar var_FC
  loc_B17E4C: LitVarI2 var_98, 0
  loc_B17E51: FLdRfVar var_150
  loc_B17E54: ImpAdCallFPR4  = Format(, )
  loc_B17E59: FLdRfVar var_150
  loc_B17E5C: CStrVarTmp
  loc_B17E5D: CVarStr var_184
  loc_B17E60: PopAdLdVar
  loc_B17E61: FLdPr Me
  loc_B17E64: VCallAd Control_ID_FlexCheque
  loc_B17E67: FStAdFunc var_EC
  loc_B17E6A: FLdPr var_EC
  loc_B17E6D: LateIdCallSt
  loc_B17E75: FFreeAd var_88 = ""
  loc_B17E7C: FFreeVar var_98 = "": var_FC = "": var_174 = "": var_150 = ""
  loc_B17E89: FLdPr Me
  loc_B17E8C: MemLdI2 global_72
  loc_B17E8F: CI4UI1
  loc_B17E90: CVarI4
  loc_B17E94: PopAdLdVar
  loc_B17E95: LitVarI4
  loc_B17E9D: PopAdLdVar
  loc_B17E9E: FLdPr Me
  loc_B17EA1: VCallAd Control_ID_FlexCheque
  loc_B17EA4: FStAdFunc var_88
  loc_B17EA7: FLdPr var_88
  loc_B17EAA: LateIdCallLdVar
  loc_B17EB4: PopAd
  loc_B17EB6: FLdPr Me
  loc_B17EB9: VCallAd Control_ID_FlexCheque
  loc_B17EBC: FStAdFunc var_EC
  loc_B17EBF: FLdPr var_EC
  loc_B17EC2: LateIdLdVar var_FC DispID_10 0
  loc_B17EC9: CI4Var
  loc_B17ECB: CVarI4
  loc_B17ECF: PopAdLdVar
  loc_B17ED0: LitVarI4
  loc_B17ED8: PopAdLdVar
  loc_B17ED9: FLdPr Me
  loc_B17EDC: VCallAd Control_ID_FlexCheque
  loc_B17EDF: FStAdFunc var_140
  loc_B17EE2: FLdPr var_140
  loc_B17EE5: LateIdCallLdVar
  loc_B17EEF: PopAd
  loc_B17EF1: LitI4 2
  loc_B17EF6: FLdRfVar var_98
  loc_B17EF9: CStrVarTmp
  loc_B17EFA: FStStrNoPop var_E0
  loc_B17EFD: CR8Str
  loc_B17EFF: FLdRfVar var_150
  loc_B17F02: CStrVarTmp
  loc_B17F03: FStStrNoPop var_154
  loc_B17F06: CR8Str
  loc_B17F08: SubR4
  loc_B17F09: FLdPr Me
  loc_B17F0C: MemLdFPR8 global_92
  loc_B17F0F: AddR8
  loc_B17F10: CVarR8
  loc_B17F14: FLdRfVar var_184
  loc_B17F17: ImpAdCallFPR4  = Round(, )
  loc_B17F1C: FLdPr Me
  loc_B17F1F: MemLdI2 global_72
  loc_B17F22: CI4UI1
  loc_B17F23: CVarI4
  loc_B17F27: PopAdLdVar
  loc_B17F28: LitVarI4
  loc_B17F30: PopAdLdVar
  loc_B17F31: LitI4 1
  loc_B17F36: LitI4 1
  loc_B17F3B: LitVarStr var_194, "0.00"
  loc_B17F40: FStVarCopyObj var_1A4
  loc_B17F43: FLdRfVar var_1A4
  loc_B17F46: FLdRfVar var_184
  loc_B17F49: FLdRfVar var_1B4
  loc_B17F4C: ImpAdCallFPR4  = Format(, )
  loc_B17F51: FLdRfVar var_1B4
  loc_B17F54: CStrVarTmp
  loc_B17F55: CVarStr var_204
  loc_B17F58: PopAdLdVar
  loc_B17F59: FLdPr Me
  loc_B17F5C: VCallAd Control_ID_FlexCheque
  loc_B17F5F: FStAdFunc var_218
  loc_B17F62: FLdPr var_218
  loc_B17F65: LateIdCallSt
  loc_B17F6D: FFreeStr var_E0 = ""
  loc_B17F74: FFreeAd var_88 = "": var_EC = "": var_140 = ""
  loc_B17F7F: FFreeVar var_98 = "": var_FC = "": var_150 = "": var_174 = "": var_184 = "": var_1A4 = "": var_1B4 = ""
  loc_B17F92: FLdPr Me
  loc_B17F95: VCallAd Control_ID_FlexCheque
  loc_B17F98: FStAdFunc var_88
  loc_B17F9B: FLdPr var_88
  loc_B17F9E: LateIdCall
  loc_B17FA6: FFree1Ad var_88
  loc_B17FA9: LitI2_Byte 0
  loc_B17FAB: FLdPr Me
  loc_B17FAE: MemStI2 global_80
  loc_B17FB1: ExitProcHresult
  loc_B17FB2: FLdPr Me
  loc_B17FB5: MemLdI2 global_72
  loc_B17FB8: CI4UI1
  loc_B17FB9: CVarI4
  loc_B17FBD: PopAdLdVar
  loc_B17FBE: LitVarI4
  loc_B17FC6: PopAdLdVar
  loc_B17FC7: FLdPr Me
  loc_B17FCA: VCallAd Control_ID_FlexCheque
  loc_B17FCD: FStAdFunc var_88
  loc_B17FD0: FLdPr var_88
  loc_B17FD3: LateIdCallLdVar
  loc_B17FDD: PopAd
  loc_B17FDF: FLdPr Me
  loc_B17FE2: VCallAd Control_ID_FlexCheque
  loc_B17FE5: FStAdFunc var_EC
  loc_B17FE8: FLdPr var_EC
  loc_B17FEB: LateIdLdVar var_FC DispID_10 0
  loc_B17FF2: CI4Var
  loc_B17FF4: CVarI4
  loc_B17FF8: PopAdLdVar
  loc_B17FF9: LitVarI4
  loc_B18001: PopAdLdVar
  loc_B18002: FLdPr Me
  loc_B18005: VCallAd Control_ID_FlexCheque
  loc_B18008: FStAdFunc var_140
  loc_B1800B: FLdPr var_140
  loc_B1800E: LateIdCallLdVar
  loc_B18018: PopAd
  loc_B1801A: LitI4 2
  loc_B1801F: FLdRfVar var_98
  loc_B18022: CStrVarTmp
  loc_B18023: FStStrNoPop var_E0
  loc_B18026: CR8Str
  loc_B18028: FLdRfVar var_150
  loc_B1802B: CStrVarTmp
  loc_B1802C: FStStrNoPop var_154
  loc_B1802F: CR8Str
  loc_B18031: SubR4
  loc_B18032: FLdPr Me
  loc_B18035: MemLdFPR8 global_92
  loc_B18038: AddR8
  loc_B18039: CVarR8
  loc_B1803D: FLdRfVar var_184
  loc_B18040: ImpAdCallFPR4  = Round(, )
  loc_B18045: FLdPr Me
  loc_B18048: MemLdI2 global_72
  loc_B1804B: CI4UI1
  loc_B1804C: CVarI4
  loc_B18050: PopAdLdVar
  loc_B18051: LitVarI4
  loc_B18059: PopAdLdVar
  loc_B1805A: LitI4 1
  loc_B1805F: LitI4 1
  loc_B18064: LitVarStr var_194, "0.00"
  loc_B18069: FStVarCopyObj var_1A4
  loc_B1806C: FLdRfVar var_1A4
  loc_B1806F: FLdRfVar var_184
  loc_B18072: FLdRfVar var_1B4
  loc_B18075: ImpAdCallFPR4  = Format(, )
  loc_B1807A: FLdRfVar var_1B4
  loc_B1807D: CStrVarTmp
  loc_B1807E: CVarStr var_204
  loc_B18081: PopAdLdVar
  loc_B18082: FLdPr Me
  loc_B18085: VCallAd Control_ID_FlexCheque
  loc_B18088: FStAdFunc var_218
  loc_B1808B: FLdPr var_218
  loc_B1808E: LateIdCallSt
  loc_B18096: FFreeStr var_E0 = ""
  loc_B1809D: FFreeAd var_88 = "": var_EC = "": var_140 = ""
  loc_B180A8: FFreeVar var_98 = "": var_FC = "": var_150 = "": var_174 = "": var_184 = "": var_1A4 = "": var_1B4 = ""
  loc_B180BB: FLdPr Me
  loc_B180BE: VCallAd Control_ID_FlexCheque
  loc_B180C1: FStAdFunc var_88
  loc_B180C4: FLdPr var_88
  loc_B180C7: LateIdLdVar var_98 DispID_10 0
  loc_B180CE: CI4Var
  loc_B180D0: CVarI4
  loc_B180D4: PopAdLdVar
  loc_B180D5: LitVarI4
  loc_B180DD: PopAdLdVar
  loc_B180DE: FLdPr Me
  loc_B180E1: VCallAd Control_ID_FlexCheque
  loc_B180E4: FStAdFunc var_EC
  loc_B180E7: FLdPr var_EC
  loc_B180EA: LateIdCallLdVar
  loc_B180F4: CStrVarTmp
  loc_B180F5: CVarStr var_150
  loc_B180F8: ImpAdCallI2 IsNumeric()
  loc_B180FD: FLdPr Me
  loc_B18100: VCallAd Control_ID_FlexCheque
  loc_B18103: FStAdFunc var_140
  loc_B18106: FLdPr var_140
  loc_B18109: LateIdLdVar var_174 DispID_10 0
  loc_B18110: CI4Var
  loc_B18112: CVarI4
  loc_B18116: PopAdLdVar
  loc_B18117: LitVarI4
  loc_B1811F: PopAdLdVar
  loc_B18120: FLdPr Me
  loc_B18123: VCallAd Control_ID_FlexCheque
  loc_B18126: FStAdFunc var_218
  loc_B18129: FLdPr var_218
  loc_B1812C: LateIdCallLdVar
  loc_B18136: CStrVarTmp
  loc_B18137: FStStrNoPop var_E0
  loc_B1813A: CR8Str
  loc_B1813C: LitI2_Byte 0
  loc_B1813E: CR8I2
  loc_B1813F: EqR4
  loc_B18140: AndI4
  loc_B18141: FFree1Str var_E0
  loc_B18144: FFreeAd var_88 = "": var_EC = "": var_140 = ""
  loc_B1814F: FFreeVar var_98 = "": var_FC = "": var_150 = "": var_174 = ""
  loc_B1815C: BranchF loc_B181A6
  loc_B1815F: FLdPr Me
  loc_B18162: VCallAd Control_ID_FlexCheque
  loc_B18165: FStAdFunc var_88
  loc_B18168: FLdPr var_88
  loc_B1816B: LateIdLdVar var_98 DispID_10 0
  loc_B18172: CI4Var
  loc_B18174: CVarI4
  loc_B18178: PopAdLdVar
  loc_B18179: LitVarI4
  loc_B18181: PopAdLdVar
  loc_B18182: LitVarStr var_10C, vbNullString
  loc_B18187: PopAdLdVar
  loc_B18188: FLdPr Me
  loc_B1818B: VCallAd Control_ID_FlexCheque
  loc_B1818E: FStAdFunc var_EC
  loc_B18191: FLdPr var_EC
  loc_B18194: LateIdCallSt
  loc_B1819C: FFreeAd var_88 = ""
  loc_B181A3: FFree1Var var_98 = ""
  loc_B181A6: FLdPr Me
  loc_B181A9: VCallAd Control_ID_FlexCheque
  loc_B181AC: FStAdFunc var_88
  loc_B181AF: FLdPr var_88
  loc_B181B2: LateIdLdVar var_98 DispID_10 0
  loc_B181B9: CI4Var
  loc_B181BB: CVarI4
  loc_B181BF: PopAdLdVar
  loc_B181C0: LitVarI4
  loc_B181C8: PopAdLdVar
  loc_B181C9: FLdPr Me
  loc_B181CC: VCallAd Control_ID_FlexCheque
  loc_B181CF: FStAdFunc var_EC
  loc_B181D2: FLdPr var_EC
  loc_B181D5: LateIdCallLdVar
  loc_B181DF: PopAd
  loc_B181E1: FLdPr Me
  loc_B181E4: VCallAd Control_ID_FlexCheque
  loc_B181E7: FStAdFunc var_140
  loc_B181EA: FLdPr var_140
  loc_B181ED: LateIdLdVar var_1A4 DispID_10 0
  loc_B181F4: CI4Var
  loc_B181F6: CVarI4
  loc_B181FA: PopAdLdVar
  loc_B181FB: LitVarI4
  loc_B18203: PopAdLdVar
  loc_B18204: LitI4 1
  loc_B18209: LitI4 1
  loc_B1820E: LitVarStr var_10C, "0.00"
  loc_B18213: FStVarCopyObj var_174
  loc_B18216: FLdRfVar var_174
  loc_B18219: FLdRfVar var_FC
  loc_B1821C: CStrVarTmp
  loc_B1821D: CVarStr var_150
  loc_B18220: FLdRfVar var_184
  loc_B18223: ImpAdCallFPR4  = Format(, )
  loc_B18228: FLdRfVar var_184
  loc_B1822B: CStrVarTmp
  loc_B1822C: CVarStr var_1B4
  loc_B1822F: PopAdLdVar
  loc_B18230: FLdPr Me
  loc_B18233: VCallAd Control_ID_FlexCheque
  loc_B18236: FStAdFunc var_218
  loc_B18239: FLdPr var_218
  loc_B1823C: LateIdCallSt
  loc_B18244: FFreeAd var_88 = "": var_EC = "": var_140 = ""
  loc_B1824F: FFreeVar var_98 = "": var_FC = "": var_150 = "": var_174 = "": var_1A4 = "": var_184 = ""
  loc_B18260: FLdPr Me
  loc_B18263: MemLdRfVar from_stack_1.global_72
  loc_B18266: NextI2 var_E8, loc_B17BB1
  loc_B1826B: LitI2_Byte 0
  loc_B1826D: FLdPr Me
  loc_B18270: MemStI2 global_80
  loc_B18273: ExitProcHresult
End Sub

Private Sub cmdImprimirLiquidacion_Click() '9DE674
  'Data Table: 4B2A08
  loc_9DE574: FLdRfVar var_88
  loc_9DE577: FLdPr Me
  loc_9DE57A: MemLdRfVar from_stack_1.global_52
  loc_9DE57D: NewIfNullPr clsordenpago
  loc_9DE580: from_stack_1 = clsordenpago.RecordCount
  loc_9DE585: ILdRf var_88
  loc_9DE588: LitI4 0
  loc_9DE58D: GtI4
  loc_9DE58E: BranchF loc_9DE65B
  loc_9DE591: FLdRfVar var_B4
  loc_9DE594: FLdRfVar var_A4
  loc_9DE597: LitVarStr var_A0, "ExpeImpu"
  loc_9DE59C: PopAdLdVar
  loc_9DE59D: FLdRfVar var_90
  loc_9DE5A0: FLdRfVar var_8C
  loc_9DE5A3: FLdPr Me
  loc_9DE5A6: MemLdRfVar from_stack_1.global_52
  loc_9DE5A9: NewIfNullPr clsordenpago
  loc_9DE5AC: from_stack_1v = clsordenpago.RsFrmGet()
  loc_9DE5B1: FLdPr var_8C
  loc_9DE5B4:  = Me.Fields
  loc_9DE5B9: FLdPr var_90
  loc_9DE5BC: from_stack_2 = Me.Item(from_stack_1)
  loc_9DE5C1: FLdPr var_A4
  loc_9DE5C4:  = Me.Value
  loc_9DE5C9: FLdRfVar var_B4
  loc_9DE5CC: CStrVarTmp
  loc_9DE5CD: FStStrNoPop var_B8
  loc_9DE5D0: ImpAdLdRf MemVar_C3DAC0
  loc_9DE5D3: NewIfNullPr rptVolantedeLiquidacion
  loc_9DE5D6: VCallAd Control_ID_cboExpeImpu
  loc_9DE5D9: FStAdFunc var_BC
  loc_9DE5DC: FLdPr var_BC
  loc_9DE5DF: rptVolantedeLiquidacion.ComboBox.Text = from_stack_1
  loc_9DE5E4: FFree1Str var_B8
  loc_9DE5E7: FFreeAd var_8C = "": var_90 = "": var_A4 = ""
  loc_9DE5F2: FFree1Var var_B4 = ""
  loc_9DE5F5: FLdRfVar var_B4
  loc_9DE5F8: FLdRfVar var_A4
  loc_9DE5FB: LitVarStr var_A0, "NumeLiqu"
  loc_9DE600: PopAdLdVar
  loc_9DE601: FLdRfVar var_90
  loc_9DE604: FLdRfVar var_8C
  loc_9DE607: FLdPr Me
  loc_9DE60A: MemLdRfVar from_stack_1.global_52
  loc_9DE60D: NewIfNullPr clsordenpago
  loc_9DE610: from_stack_1v = clsordenpago.RsFrmGet()
  loc_9DE615: FLdPr var_8C
  loc_9DE618:  = Me.Fields
  loc_9DE61D: FLdPr var_90
  loc_9DE620: from_stack_2 = Me.Item(from_stack_1)
  loc_9DE625: FLdPr var_A4
  loc_9DE628:  = Me.Value
  loc_9DE62D: FLdRfVar var_B4
  loc_9DE630: CStrVarTmp
  loc_9DE631: CVarStr var_CC
  loc_9DE634: PopAdLdVar
  loc_9DE635: ImpAdLdRf MemVar_C3DAC0
  loc_9DE638: NewIfNullPr rptVolantedeLiquidacion
  loc_9DE63B: VCallAd Control_ID_NumeLiquMsk
  loc_9DE63E: FStAdFunc var_BC
  loc_9DE641: FLdPr var_BC
  loc_9DE644: LateIdSt
  loc_9DE649: FFreeAd var_8C = "": var_90 = "": var_A4 = ""
  loc_9DE654: FFreeVar var_B4 = ""
  loc_9DE65B: LitVar_Missing var_DC
  loc_9DE65E: PopAdLdVar
  loc_9DE65F: LitVarI4
  loc_9DE667: PopAdLdVar
  loc_9DE668: ImpAdLdRf MemVar_C3DAC0
  loc_9DE66B: NewIfNullPr rptVolantedeLiquidacion
  loc_9DE66E: rptVolantedeLiquidacion.Show from_stack_1, from_stack_2
  loc_9DE673: ExitProcHresult
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BD7A34
  'Data Table: 4B2A08
  loc_BD63AC: ILdRf Button
  loc_BD63AF: FStAd var_88 
  loc_BD63B3: FLdRfVar var_94
  loc_BD63B6: FLdPr var_88
  loc_BD63B9:  = Me.Key
  loc_BD63BE: FLdZeroAd var_94
  loc_BD63C1: FStStr var_98
  loc_BD63C4: ILdRf var_98
  loc_BD63C7: LitStr "btnCrear"
  loc_BD63CA: EqStr
  loc_BD63CC: BranchF loc_BD66AF
  loc_BD63CF: FLdRfVar var_9C
  loc_BD63D2: FLdPr Me
  loc_BD63D5: MemLdRfVar from_stack_1.global_52
  loc_BD63D8: NewIfNullPr clsordenpago
  loc_BD63DB: from_stack_1 = clsordenpago.RecordCount
  loc_BD63E0: ILdRf var_9C
  loc_BD63E3: LitI4 0
  loc_BD63E8: EqI4
  loc_BD63E9: BranchF loc_BD63ED
  loc_BD63EC: ExitProcHresult
  loc_BD63ED: FLdRfVar var_C8
  loc_BD63F0: FLdRfVar var_B8
  loc_BD63F3: LitVarStr var_B4, "NumeOrpa"
  loc_BD63F8: PopAdLdVar
  loc_BD63F9: FLdRfVar var_A4
  loc_BD63FC: FLdRfVar var_A0
  loc_BD63FF: FLdPr Me
  loc_BD6402: MemLdRfVar from_stack_1.global_52
  loc_BD6405: NewIfNullPr clsordenpago
  loc_BD6408: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD640D: FLdPr var_A0
  loc_BD6410:  = Me.Fields
  loc_BD6415: FLdPr var_A4
  loc_BD6418: from_stack_2 = Me.Item(from_stack_1)
  loc_BD641D: FLdPr var_B8
  loc_BD6420:  = Me.Value
  loc_BD6425: FLdPr Me
  loc_BD6428: MemLdRfVar from_stack_1.global_116
  loc_BD642B: NewIfNullRf
  loc_BD642F: FLdRfVar var_C8
  loc_BD6432: CStrVarTmp
  loc_BD6433: FStStrNoPop var_CC
  loc_BD6436: ImpAdLdI2 MemVar_C3D064
  loc_BD6439: CStrUI1
  loc_BD643B: FStStrNoPop var_94
  loc_BD643E: ImpAdCallI2 Proc_259_19_AF8F0C(, , )
  loc_BD6443: FFreeStr var_94 = ""
  loc_BD644A: FFreeAd var_A0 = "": var_A4 = ""
  loc_BD6453: FFree1Var var_C8 = ""
  loc_BD6456: BranchF loc_BD66AC
  loc_BD6459: FLdRfVar var_94
  loc_BD645C: FLdPr Me
  loc_BD645F: MemLdRfVar from_stack_1.global_116
  loc_BD6462: NewIfNullPr tblordenpago
  loc_BD6465: from_stack_1v = tblordenpago.FereOrpaGet()
  loc_BD646A: ILdRf var_94
  loc_BD646D: LitStr vbNullString
  loc_BD6470: NeStr
  loc_BD6472: FFree1Str var_94
  loc_BD6475: BranchF loc_BD6489
  loc_BD6478: LitI4 0
  loc_BD647D: LitStr "La Orden de Pago esta REMITIDA. Verifique..."
  loc_BD6480: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD6485: ExitProcHresult
  loc_BD6486: Branch loc_BD64B6
  loc_BD6489: FLdRfVar var_94
  loc_BD648C: FLdPr Me
  loc_BD648F: MemLdRfVar from_stack_1.global_116
  loc_BD6492: NewIfNullPr tblordenpago
  loc_BD6495: from_stack_1v = tblordenpago.FeanOrpaGet()
  loc_BD649A: ILdRf var_94
  loc_BD649D: LitStr vbNullString
  loc_BD64A0: NeStr
  loc_BD64A2: FFree1Str var_94
  loc_BD64A5: BranchF loc_BD64B6
  loc_BD64A8: LitI4 0
  loc_BD64AD: LitStr "La Orden de Pago esta ANULADA. Verifique..."
  loc_BD64B0: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD64B5: ExitProcHresult
  loc_BD64B6: LitI2_Byte 1
  loc_BD64B8: FLdPr Me
  loc_BD64BB: MemStUI1
  loc_BD64BF: ILdRf Me
  loc_BD64C2: CastAd
  loc_BD64C5: FStAdFunc var_A0
  loc_BD64C8: FLdRfVar var_A0
  loc_BD64CB: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BD64D0: FFree1Ad var_A0
  loc_BD64D3: LitI4 0
  loc_BD64D8: LitI4 3
  loc_BD64DD: FLdRfVar var_D0
  loc_BD64E0: Redim
  loc_BD64EA: FLdPr Me
  loc_BD64ED: VCallAd Control_ID_dgdABMS
  loc_BD64F0: CVarAd
  loc_BD64F4: ParmAry1St
  loc_BD64FA: FLdPr Me
  loc_BD64FD: VCallAd Control_ID_CmdImprimirOrdendePago
  loc_BD6500: CVarAd
  loc_BD6504: ParmAry1St
  loc_BD650A: FLdPr Me
  loc_BD650D: VCallAd Control_ID_CmdImprimirCaratula
  loc_BD6510: CVarAd
  loc_BD6514: ParmAry1St
  loc_BD651A: FLdPr Me
  loc_BD651D: VCallAd Control_ID_cmdImprimirLiquidacion
  loc_BD6520: CVarAd
  loc_BD6524: ParmAry1St
  loc_BD652A: FLdRfVar var_D0
  loc_BD652D: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BD6532: FLdRfVar var_D0
  loc_BD6535: Erase
  loc_BD6536: ILdRf Me
  loc_BD6539: CastAd
  loc_BD653C: FStAdFunc var_A0
  loc_BD653F: FLdRfVar var_A0
  loc_BD6542: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_BD6547: FFree1Ad var_A0
  loc_BD654A: LitI2_Byte 0
  loc_BD654C: FLdPr Me
  loc_BD654F: VCallAd Control_ID_RepetirFechCheqChk
  loc_BD6552: FStAdFunc var_A0
  loc_BD6555: FLdPr var_A0
  loc_BD6558: Me.Value = from_stack_1
  loc_BD655D: FFree1Ad var_A0
  loc_BD6560: LitI4 0
  loc_BD6565: LitI4 6
  loc_BD656A: FLdRfVar var_D0
  loc_BD656D: Redim
  loc_BD6577: FLdPr Me
  loc_BD657A: VCallAd Control_ID_FlexCheque
  loc_BD657D: CVarAd
  loc_BD6581: ParmAry1St
  loc_BD6587: FLdPr Me
  loc_BD658A: VCallAd Control_ID_BancoCbo
  loc_BD658D: CVarAd
  loc_BD6591: ParmAry1St
  loc_BD6597: FLdPr Me
  loc_BD659A: VCallAd Control_ID_RepetirFechCheqChk
  loc_BD659D: CVarAd
  loc_BD65A1: ParmAry1St
  loc_BD65A7: FLdPr Me
  loc_BD65AA: VCallAd Control_ID_cmdInsertar
  loc_BD65AD: CVarAd
  loc_BD65B1: ParmAry1St
  loc_BD65B7: FLdPr Me
  loc_BD65BA: VCallAd Control_ID_cmdEliminar
  loc_BD65BD: CVarAd
  loc_BD65C1: ParmAry1St
  loc_BD65C7: FLdPr Me
  loc_BD65CA: VCallAd Control_ID_cmdBorrarNoalaOrden
  loc_BD65CD: CVarAd
  loc_BD65D1: ParmAry1St
  loc_BD65D7: FLdPr Me
  loc_BD65DA: VCallAd Control_ID_cmdAgregarNoalaOrden
  loc_BD65DD: CVarAd
  loc_BD65E1: ParmAry1St
  loc_BD65E7: FLdRfVar var_D0
  loc_BD65EA: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BD65EF: FLdRfVar var_D0
  loc_BD65F2: Erase
  loc_BD65F3: LitStr "Municipalidad de Guaymallén"
  loc_BD65F6: LitStr "Municipalidad de General Alvear"
  loc_BD65F9: EqStr
  loc_BD65FB: ImpAdLdI4 MemVar_C3D03C
  loc_BD65FE: LitStr "root"
  loc_BD6601: EqStr
  loc_BD6603: ImpAdLdI4 MemVar_C3D03C
  loc_BD6606: LitStr "Admin"
  loc_BD6609: EqStr
  loc_BD660B: OrI4
  loc_BD660C: ImpAdLdI4 MemVar_C3D03C
  loc_BD660F: LitStr "maurip"
  loc_BD6612: EqStr
  loc_BD6614: OrI4
  loc_BD6615: AndI4
  loc_BD6616: BranchF loc_BD6648
  loc_BD6619: LitI2_Byte &HFF
  loc_BD661B: FLdPr Me
  loc_BD661E: VCallAd Control_ID_cmdDividirVsChqs
  loc_BD6621: FStAdFunc var_A0
  loc_BD6624: FLdPr var_A0
  loc_BD6627: Me.Visible = from_stack_1b
  loc_BD662C: FFree1Ad var_A0
  loc_BD662F: LitI2_Byte &HFF
  loc_BD6631: FLdPr Me
  loc_BD6634: VCallAd Control_ID_cmdDividirVsChqs
  loc_BD6637: FStAdFunc var_A0
  loc_BD663A: FLdPr var_A0
  loc_BD663D: Me.Enabled = from_stack_1b
  loc_BD6642: FFree1Ad var_A0
  loc_BD6645: Branch loc_BD6674
  loc_BD6648: LitI2_Byte 0
  loc_BD664A: FLdPr Me
  loc_BD664D: VCallAd Control_ID_cmdDividirVsChqs
  loc_BD6650: FStAdFunc var_A0
  loc_BD6653: FLdPr var_A0
  loc_BD6656: Me.Visible = from_stack_1b
  loc_BD665B: FFree1Ad var_A0
  loc_BD665E: LitI2_Byte 0
  loc_BD6660: FLdPr Me
  loc_BD6663: VCallAd Control_ID_cmdDividirVsChqs
  loc_BD6666: FStAdFunc var_A0
  loc_BD6669: FLdPr var_A0
  loc_BD666C: Me.Enabled = from_stack_1b
  loc_BD6671: FFree1Ad var_A0
  loc_BD6674: LitI2_Byte &HFF
  loc_BD6676: FLdPr Me
  loc_BD6679: VCallAd Control_ID_ChequeUnicoChk
  loc_BD667C: FStAdFunc var_A0
  loc_BD667F: FLdPr var_A0
  loc_BD6682: Me.Enabled = from_stack_1b
  loc_BD6687: FFree1Ad var_A0
  loc_BD668A: FLdPr Me
  loc_BD668D: VCallAd Control_ID_FlexCheque
  loc_BD6690: FStAdFunc var_A0
  loc_BD6693: FLdPr var_A0
  loc_BD6696: LateIdLdVar var_C8 DispID_4 0
  loc_BD669D: CI4Var
  loc_BD669F: CI2I4
  loc_BD66A0: FLdPr Me
  loc_BD66A3: MemStI2 global_108
  loc_BD66A6: FFree1Ad var_A0
  loc_BD66A9: FFree1Var var_C8 = ""
  loc_BD66AC: Branch loc_BD7A30
  loc_BD66AF: ILdRf var_98
  loc_BD66B2: LitStr "btnModificar"
  loc_BD66B5: EqStr
  loc_BD66B7: BranchF loc_BD6948
  loc_BD66BA: FLdRfVar var_9C
  loc_BD66BD: FLdPr Me
  loc_BD66C0: MemLdRfVar from_stack_1.global_52
  loc_BD66C3: NewIfNullPr clsordenpago
  loc_BD66C6: from_stack_1 = clsordenpago.RecordCount
  loc_BD66CB: ILdRf var_9C
  loc_BD66CE: LitI4 0
  loc_BD66D3: EqI4
  loc_BD66D4: BranchF loc_BD66D8
  loc_BD66D7: ExitProcHresult
  loc_BD66D8: FLdRfVar var_C8
  loc_BD66DB: FLdRfVar var_B8
  loc_BD66DE: LitVarStr var_B4, "NumeOrpa"
  loc_BD66E3: PopAdLdVar
  loc_BD66E4: FLdRfVar var_A4
  loc_BD66E7: FLdRfVar var_A0
  loc_BD66EA: FLdPr Me
  loc_BD66ED: MemLdRfVar from_stack_1.global_52
  loc_BD66F0: NewIfNullPr clsordenpago
  loc_BD66F3: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD66F8: FLdPr var_A0
  loc_BD66FB:  = Me.Fields
  loc_BD6700: FLdPr var_A4
  loc_BD6703: from_stack_2 = Me.Item(from_stack_1)
  loc_BD6708: FLdPr var_B8
  loc_BD670B:  = Me.Value
  loc_BD6710: FLdPr Me
  loc_BD6713: MemLdRfVar from_stack_1.global_116
  loc_BD6716: NewIfNullRf
  loc_BD671A: FLdRfVar var_C8
  loc_BD671D: CStrVarTmp
  loc_BD671E: FStStrNoPop var_CC
  loc_BD6721: ImpAdLdI2 MemVar_C3D064
  loc_BD6724: CStrUI1
  loc_BD6726: FStStrNoPop var_94
  loc_BD6729: ImpAdCallI2 Proc_259_19_AF8F0C(, , )
  loc_BD672E: FFreeStr var_94 = ""
  loc_BD6735: FFreeAd var_A0 = "": var_A4 = ""
  loc_BD673E: FFree1Var var_C8 = ""
  loc_BD6741: BranchF loc_BD6945
  loc_BD6744: FLdRfVar var_94
  loc_BD6747: FLdPr Me
  loc_BD674A: MemLdRfVar from_stack_1.global_116
  loc_BD674D: NewIfNullPr tblordenpago
  loc_BD6750: from_stack_1v = tblordenpago.FereOrpaGet()
  loc_BD6755: ILdRf var_94
  loc_BD6758: LitStr vbNullString
  loc_BD675B: NeStr
  loc_BD675D: FFree1Str var_94
  loc_BD6760: BranchF loc_BD6774
  loc_BD6763: LitI4 0
  loc_BD6768: LitStr "La Orden de Pago esta REMITIDA. Verifique..."
  loc_BD676B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD6770: ExitProcHresult
  loc_BD6771: Branch loc_BD67A1
  loc_BD6774: FLdRfVar var_94
  loc_BD6777: FLdPr Me
  loc_BD677A: MemLdRfVar from_stack_1.global_116
  loc_BD677D: NewIfNullPr tblordenpago
  loc_BD6780: from_stack_1v = tblordenpago.FeanOrpaGet()
  loc_BD6785: ILdRf var_94
  loc_BD6788: LitStr vbNullString
  loc_BD678B: NeStr
  loc_BD678D: FFree1Str var_94
  loc_BD6790: BranchF loc_BD67A1
  loc_BD6793: LitI4 0
  loc_BD6798: LitStr "La Orden de Pago esta ANULADA. Verifique..."
  loc_BD679B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD67A0: ExitProcHresult
  loc_BD67A1: LitI2_Byte 2
  loc_BD67A3: FLdPr Me
  loc_BD67A6: MemStUI1
  loc_BD67AA: ILdRf Me
  loc_BD67AD: CastAd
  loc_BD67B0: FStAdFunc var_A0
  loc_BD67B3: FLdRfVar var_A0
  loc_BD67B6: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BD67BB: FFree1Ad var_A0
  loc_BD67BE: LitI4 0
  loc_BD67C3: LitI4 2
  loc_BD67C8: FLdRfVar var_D0
  loc_BD67CB: Redim
  loc_BD67D5: FLdPr Me
  loc_BD67D8: VCallAd Control_ID_dgdABMS
  loc_BD67DB: CVarAd
  loc_BD67DF: ParmAry1St
  loc_BD67E5: FLdPr Me
  loc_BD67E8: VCallAd Control_ID_CmdImprimirOrdendePago
  loc_BD67EB: CVarAd
  loc_BD67EF: ParmAry1St
  loc_BD67F5: FLdPr Me
  loc_BD67F8: VCallAd Control_ID_CmdImprimirCaratula
  loc_BD67FB: CVarAd
  loc_BD67FF: ParmAry1St
  loc_BD6805: FLdRfVar var_D0
  loc_BD6808: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BD680D: FLdRfVar var_D0
  loc_BD6810: Erase
  loc_BD6811: ILdRf Me
  loc_BD6814: CastAd
  loc_BD6817: FStAdFunc var_A0
  loc_BD681A: FLdRfVar var_A0
  loc_BD681D: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_BD6822: FFree1Ad var_A0
  loc_BD6825: LitI2_Byte 0
  loc_BD6827: FLdPr Me
  loc_BD682A: VCallAd Control_ID_RepetirFechCheqChk
  loc_BD682D: FStAdFunc var_A0
  loc_BD6830: FLdPr var_A0
  loc_BD6833: Me.Value = from_stack_1
  loc_BD6838: FFree1Ad var_A0
  loc_BD683B: LitI4 0
  loc_BD6840: LitI4 4
  loc_BD6845: FLdRfVar var_D0
  loc_BD6848: Redim
  loc_BD6852: FLdPr Me
  loc_BD6855: VCallAd Control_ID_FlexCheque
  loc_BD6858: CVarAd
  loc_BD685C: ParmAry1St
  loc_BD6862: FLdPr Me
  loc_BD6865: VCallAd Control_ID_BancoCbo
  loc_BD6868: CVarAd
  loc_BD686C: ParmAry1St
  loc_BD6872: FLdPr Me
  loc_BD6875: VCallAd Control_ID_RepetirFechCheqChk
  loc_BD6878: CVarAd
  loc_BD687C: ParmAry1St
  loc_BD6882: FLdPr Me
  loc_BD6885: VCallAd Control_ID_cmdBorrarNoalaOrden
  loc_BD6888: CVarAd
  loc_BD688C: ParmAry1St
  loc_BD6892: FLdPr Me
  loc_BD6895: VCallAd Control_ID_cmdAgregarNoalaOrden
  loc_BD6898: CVarAd
  loc_BD689C: ParmAry1St
  loc_BD68A2: FLdRfVar var_D0
  loc_BD68A5: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BD68AA: FLdRfVar var_D0
  loc_BD68AD: Erase
  loc_BD68AE: LitStr "Municipalidad de Guaymallén"
  loc_BD68B1: LitStr "Municipalidad de General Alvear"
  loc_BD68B4: EqStr
  loc_BD68B6: ImpAdLdI4 MemVar_C3D03C
  loc_BD68B9: LitStr "root"
  loc_BD68BC: EqStr
  loc_BD68BE: ImpAdLdI4 MemVar_C3D03C
  loc_BD68C1: LitStr "Admin"
  loc_BD68C4: EqStr
  loc_BD68C6: OrI4
  loc_BD68C7: ImpAdLdI4 MemVar_C3D03C
  loc_BD68CA: LitStr "maurip"
  loc_BD68CD: EqStr
  loc_BD68CF: OrI4
  loc_BD68D0: AndI4
  loc_BD68D1: BranchF loc_BD6903
  loc_BD68D4: LitI2_Byte &HFF
  loc_BD68D6: FLdPr Me
  loc_BD68D9: VCallAd Control_ID_cmdDividirVsChqs
  loc_BD68DC: FStAdFunc var_A0
  loc_BD68DF: FLdPr var_A0
  loc_BD68E2: Me.Visible = from_stack_1b
  loc_BD68E7: FFree1Ad var_A0
  loc_BD68EA: LitI2_Byte &HFF
  loc_BD68EC: FLdPr Me
  loc_BD68EF: VCallAd Control_ID_cmdDividirVsChqs
  loc_BD68F2: FStAdFunc var_A0
  loc_BD68F5: FLdPr var_A0
  loc_BD68F8: Me.Enabled = from_stack_1b
  loc_BD68FD: FFree1Ad var_A0
  loc_BD6900: Branch loc_BD692F
  loc_BD6903: LitI2_Byte 0
  loc_BD6905: FLdPr Me
  loc_BD6908: VCallAd Control_ID_cmdDividirVsChqs
  loc_BD690B: FStAdFunc var_A0
  loc_BD690E: FLdPr var_A0
  loc_BD6911: Me.Visible = from_stack_1b
  loc_BD6916: FFree1Ad var_A0
  loc_BD6919: LitI2_Byte 0
  loc_BD691B: FLdPr Me
  loc_BD691E: VCallAd Control_ID_cmdDividirVsChqs
  loc_BD6921: FStAdFunc var_A0
  loc_BD6924: FLdPr var_A0
  loc_BD6927: Me.Enabled = from_stack_1b
  loc_BD692C: FFree1Ad var_A0
  loc_BD692F: LitI2_Byte 0
  loc_BD6931: FLdPr Me
  loc_BD6934: VCallAd Control_ID_ChequeUnicoChk
  loc_BD6937: FStAdFunc var_A0
  loc_BD693A: FLdPr var_A0
  loc_BD693D: Me.Enabled = from_stack_1b
  loc_BD6942: FFree1Ad var_A0
  loc_BD6945: Branch loc_BD7A30
  loc_BD6948: ILdRf var_98
  loc_BD694B: LitStr "btnEliminar"
  loc_BD694E: EqStr
  loc_BD6950: BranchF loc_BD6ADE
  loc_BD6953: FLdRfVar var_9C
  loc_BD6956: FLdPr Me
  loc_BD6959: MemLdRfVar from_stack_1.global_52
  loc_BD695C: NewIfNullPr clsordenpago
  loc_BD695F: from_stack_1 = clsordenpago.RecordCount
  loc_BD6964: ILdRf var_9C
  loc_BD6967: LitI4 0
  loc_BD696C: EqI4
  loc_BD696D: BranchF loc_BD6971
  loc_BD6970: ExitProcHresult
  loc_BD6971: FLdRfVar var_C8
  loc_BD6974: FLdRfVar var_B8
  loc_BD6977: LitVarStr var_B4, "NumeOrpa"
  loc_BD697C: PopAdLdVar
  loc_BD697D: FLdRfVar var_A4
  loc_BD6980: FLdRfVar var_A0
  loc_BD6983: FLdPr Me
  loc_BD6986: MemLdRfVar from_stack_1.global_52
  loc_BD6989: NewIfNullPr clsordenpago
  loc_BD698C: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD6991: FLdPr var_A0
  loc_BD6994:  = Me.Fields
  loc_BD6999: FLdPr var_A4
  loc_BD699C: from_stack_2 = Me.Item(from_stack_1)
  loc_BD69A1: FLdPr var_B8
  loc_BD69A4:  = Me.Value
  loc_BD69A9: FLdPr Me
  loc_BD69AC: MemLdRfVar from_stack_1.global_116
  loc_BD69AF: NewIfNullRf
  loc_BD69B3: FLdRfVar var_C8
  loc_BD69B6: CStrVarTmp
  loc_BD69B7: FStStrNoPop var_CC
  loc_BD69BA: ImpAdLdI2 MemVar_C3D064
  loc_BD69BD: CStrUI1
  loc_BD69BF: FStStrNoPop var_94
  loc_BD69C2: ImpAdCallI2 Proc_259_19_AF8F0C(, , )
  loc_BD69C7: FFreeStr var_94 = ""
  loc_BD69CE: FFreeAd var_A0 = "": var_A4 = ""
  loc_BD69D7: FFree1Var var_C8 = ""
  loc_BD69DA: BranchF loc_BD6ADB
  loc_BD69DD: FLdRfVar var_94
  loc_BD69E0: FLdPr Me
  loc_BD69E3: MemLdRfVar from_stack_1.global_116
  loc_BD69E6: NewIfNullPr tblordenpago
  loc_BD69E9: from_stack_1v = tblordenpago.FereOrpaGet()
  loc_BD69EE: ILdRf var_94
  loc_BD69F1: LitStr vbNullString
  loc_BD69F4: NeStr
  loc_BD69F6: FFree1Str var_94
  loc_BD69F9: BranchF loc_BD6A0D
  loc_BD69FC: LitI4 0
  loc_BD6A01: LitStr "La Orden de Pago esta REMITIDA. Verifique..."
  loc_BD6A04: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD6A09: ExitProcHresult
  loc_BD6A0A: Branch loc_BD6A3A
  loc_BD6A0D: FLdRfVar var_94
  loc_BD6A10: FLdPr Me
  loc_BD6A13: MemLdRfVar from_stack_1.global_116
  loc_BD6A16: NewIfNullPr tblordenpago
  loc_BD6A19: from_stack_1v = tblordenpago.FeanOrpaGet()
  loc_BD6A1E: ILdRf var_94
  loc_BD6A21: LitStr vbNullString
  loc_BD6A24: NeStr
  loc_BD6A26: FFree1Str var_94
  loc_BD6A29: BranchF loc_BD6A3A
  loc_BD6A2C: LitI4 0
  loc_BD6A31: LitStr "La Orden de Pago esta ANULADA. Verifique..."
  loc_BD6A34: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_BD6A39: ExitProcHresult
  loc_BD6A3A: LitI2_Byte 3
  loc_BD6A3C: FLdPr Me
  loc_BD6A3F: MemStUI1
  loc_BD6A43: ILdRf Me
  loc_BD6A46: CastAd
  loc_BD6A49: FStAdFunc var_A0
  loc_BD6A4C: FLdRfVar var_A0
  loc_BD6A4F: ImpAdCallFPR4 Proc_261_2_A55348()
  loc_BD6A54: FFree1Ad var_A0
  loc_BD6A57: LitI4 0
  loc_BD6A5C: LitI4 0
  loc_BD6A61: FLdRfVar var_D0
  loc_BD6A64: Redim
  loc_BD6A6E: FLdPr Me
  loc_BD6A71: VCallAd Control_ID_dgdABMS
  loc_BD6A74: CVarAd
  loc_BD6A78: ParmAry1St
  loc_BD6A7E: FLdRfVar var_D0
  loc_BD6A81: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_BD6A86: FLdRfVar var_D0
  loc_BD6A89: Erase
  loc_BD6A8A: ILdRf Me
  loc_BD6A8D: CastAd
  loc_BD6A90: FStAdFunc var_A0
  loc_BD6A93: FLdRfVar var_A0
  loc_BD6A96: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_BD6A9B: FFree1Ad var_A0
  loc_BD6A9E: LitI4 0
  loc_BD6AA3: LitI4 0
  loc_BD6AA8: FLdRfVar var_D0
  loc_BD6AAB: Redim
  loc_BD6AB5: FLdPr Me
  loc_BD6AB8: VCallAd Control_ID_FlexCheque
  loc_BD6ABB: CVarAd
  loc_BD6ABF: ParmAry1St
  loc_BD6AC5: FLdRfVar var_D0
  loc_BD6AC8: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_BD6ACD: FLdRfVar var_D0
  loc_BD6AD0: Erase
  loc_BD6AD1: LitStr vbNullString
  loc_BD6AD4: FLdPr Me
  loc_BD6AD7: MemStStrCopy
  loc_BD6ADB: Branch loc_BD7A30
  loc_BD6ADE: ILdRf var_98
  loc_BD6AE1: LitStr "btnGuardar"
  loc_BD6AE4: EqStr
  loc_BD6AE6: BranchF loc_BD7826
  loc_BD6AE9: LitStr vbNullString
  loc_BD6AEC: FLdPr Me
  loc_BD6AEF: MemStStrCopy
  loc_BD6AF3: LitI2_Byte 0
  loc_BD6AF5: PopTmpLdAd2 var_132
  loc_BD6AF8: from_stack_2v = FlexCheque_UnknownEvent_8(from_stack_1v)
  loc_BD6AFD: FLdPr Me
  loc_BD6B00: MemLdStr global_68
  loc_BD6B03: LitStr vbNullString
  loc_BD6B06: NeStr
  loc_BD6B08: BranchF loc_BD6B0C
  loc_BD6B0B: ExitProcHresult
  loc_BD6B0C: FLdPr Me
  loc_BD6B0F: MemLdUI1 global_64
  loc_BD6B13: FStUI1 var_134
  loc_BD6B17: FLdUI1
  loc_BD6B1B: LitI2_Byte 1
  loc_BD6B1D: EqI2
  loc_BD6B1E: BranchF loc_BD70B2
  loc_BD6B21: FLdRfVar var_132
  loc_BD6B24: FLdPr Me
  loc_BD6B27: VCallAd Control_ID_ChequeUnicoChk
  loc_BD6B2A: FStAdFunc var_A0
  loc_BD6B2D: FLdPr var_A0
  loc_BD6B30:  = Me.Value
  loc_BD6B35: FLdI2 var_132
  loc_BD6B38: CI4UI1
  loc_BD6B39: LitI4 0
  loc_BD6B3E: EqI4
  loc_BD6B3F: FFree1Ad var_A0
  loc_BD6B42: BranchF loc_BD6BB5
  loc_BD6B45: FLdPr Me
  loc_BD6B48: VCallAd Control_ID_FlexCheque
  loc_BD6B4B: FStAdFunc var_13C
  loc_BD6B4E: FLdRfVar var_C8
  loc_BD6B51: FLdRfVar var_B8
  loc_BD6B54: LitVarStr var_B4, "NumeOrpa"
  loc_BD6B59: PopAdLdVar
  loc_BD6B5A: FLdRfVar var_A4
  loc_BD6B5D: FLdRfVar var_A0
  loc_BD6B60: FLdPr Me
  loc_BD6B63: MemLdRfVar from_stack_1.global_52
  loc_BD6B66: NewIfNullPr clsordenpago
  loc_BD6B69: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD6B6E: FLdPr var_A0
  loc_BD6B71:  = Me.Fields
  loc_BD6B76: FLdPr var_A4
  loc_BD6B79: from_stack_2 = Me.Item(from_stack_1)
  loc_BD6B7E: FLdPr var_B8
  loc_BD6B81:  = Me.Value
  loc_BD6B86: FLdRfVar var_132
  loc_BD6B89: FLdRfVar var_C8
  loc_BD6B8C: CI4Var
  loc_BD6B8E: FLdZeroAd var_13C
  loc_BD6B91: FStAdFuncNoPop
  loc_BD6B94: FLdPr Me
  loc_BD6B97: MemLdRfVar from_stack_1.global_60
  loc_BD6B9A: NewIfNullPr clscheque
  loc_BD6B9D: from_stack_3v = clscheque.AddNew_Grid(from_stack_1v, from_stack_2v)
  loc_BD6BA2: FFreeAd var_A0 = "": var_A4 = "": var_138 = "": var_B8 = ""
  loc_BD6BAF: FFree1Var var_C8 = ""
  loc_BD6BB2: Branch loc_BD6ED6
  loc_BD6BB5: FLdRfVar var_132
  loc_BD6BB8: FLdPr Me
  loc_BD6BBB: VCallAd Control_ID_ChequeUnicoChk
  loc_BD6BBE: FStAdFunc var_A0
  loc_BD6BC1: FLdPr var_A0
  loc_BD6BC4:  = Me.Value
  loc_BD6BC9: FLdI2 var_132
  loc_BD6BCC: CI4UI1
  loc_BD6BCD: LitI4 1
  loc_BD6BD2: EqI4
  loc_BD6BD3: FFree1Ad var_A0
  loc_BD6BD6: BranchF loc_BD6ED6
  loc_BD6BD9: LitI2_Byte 0
  loc_BD6BDB: CR8I2
  loc_BD6BDC: FStFPR8 var_90
  loc_BD6BDF: LitI2_Byte 1
  loc_BD6BE1: FLdPr Me
  loc_BD6BE4: MemLdRfVar from_stack_1.global_72
  loc_BD6BE7: FLdPr Me
  loc_BD6BEA: VCallAd Control_ID_FlexCheque
  loc_BD6BED: FStAdFunc var_A0
  loc_BD6BF0: FLdPr var_A0
  loc_BD6BF3: LateIdLdVar var_C8 DispID_4 0
  loc_BD6BFA: CI4Var
  loc_BD6BFC: LitI4 1
  loc_BD6C01: SubI4
  loc_BD6C02: CI2I4
  loc_BD6C03: FFree1Ad var_A0
  loc_BD6C06: FFree1Var var_C8 = ""
  loc_BD6C09: ForI2 var_14C
  loc_BD6C0F: FLdPr Me
  loc_BD6C12: MemLdI2 global_72
  loc_BD6C15: CI4UI1
  loc_BD6C16: CVarI4
  loc_BD6C1A: PopAdLdVar
  loc_BD6C1B: LitVarI4
  loc_BD6C23: PopAdLdVar
  loc_BD6C24: FLdPr Me
  loc_BD6C27: VCallAd Control_ID_FlexCheque
  loc_BD6C2A: FStAdFunc var_A0
  loc_BD6C2D: FLdPr var_A0
  loc_BD6C30: LateIdCallLdVar
  loc_BD6C3A: CStrVarTmp
  loc_BD6C3B: FStStrNoPop var_94
  loc_BD6C3E: LitStr "No"
  loc_BD6C41: EqStr
  loc_BD6C43: FFree1Str var_94
  loc_BD6C46: FFree1Ad var_A0
  loc_BD6C49: FFree1Var var_C8 = ""
  loc_BD6C4C: BranchF loc_BD6E05
  loc_BD6C4F: FLdPr Me
  loc_BD6C52: MemLdI2 global_72
  loc_BD6C55: CI4UI1
  loc_BD6C56: CVarI4
  loc_BD6C5A: PopAdLdVar
  loc_BD6C5B: LitVarI4
  loc_BD6C63: PopAdLdVar
  loc_BD6C64: FLdPr Me
  loc_BD6C67: VCallAd Control_ID_FlexCheque
  loc_BD6C6A: FStAdFunc var_A0
  loc_BD6C6D: FLdPr var_A0
  loc_BD6C70: LateIdCallLdVar
  loc_BD6C7A: PopAd
  loc_BD6C7C: FLdFPR8 var_90
  loc_BD6C7F: FLdRfVar var_C8
  loc_BD6C82: CStrVarTmp
  loc_BD6C83: FStStrNoPop var_94
  loc_BD6C86: CR8Str
  loc_BD6C88: AddR8
  loc_BD6C89: FStFPR8 var_90
  loc_BD6C8C: FFree1Str var_94
  loc_BD6C8F: FFree1Ad var_A0
  loc_BD6C92: FFree1Var var_C8 = ""
  loc_BD6C95: ILdRf var_140
  loc_BD6C98: LitStr ","
  loc_BD6C9B: ConcatStr
  loc_BD6C9C: FStStrNoPop var_94
  loc_BD6C9F: FLdPr Me
  loc_BD6CA2: MemLdI2 global_72
  loc_BD6CA5: CI4UI1
  loc_BD6CA6: CVarI4
  loc_BD6CAA: PopAdLdVar
  loc_BD6CAB: LitVarI4
  loc_BD6CB3: PopAdLdVar
  loc_BD6CB4: FLdPr Me
  loc_BD6CB7: VCallAd Control_ID_FlexCheque
  loc_BD6CBA: FStAdFunc var_A0
  loc_BD6CBD: FLdPr var_A0
  loc_BD6CC0: LateIdCallLdVar
  loc_BD6CCA: CStrVarTmp
  loc_BD6CCB: FStStrNoPop var_CC
  loc_BD6CCE: ConcatStr
  loc_BD6CCF: FStStr var_140
  loc_BD6CD2: FFreeStr var_94 = ""
  loc_BD6CD9: FFree1Ad var_A0
  loc_BD6CDC: FFree1Var var_C8 = ""
  loc_BD6CDF: FLdPr Me
  loc_BD6CE2: MemLdI2 global_72
  loc_BD6CE5: CI4UI1
  loc_BD6CE6: CVarI4
  loc_BD6CEA: PopAdLdVar
  loc_BD6CEB: LitVarI4
  loc_BD6CF3: PopAdLdVar
  loc_BD6CF4: FLdPr Me
  loc_BD6CF7: VCallAd Control_ID_FlexCheque
  loc_BD6CFA: FStAdFunc var_A0
  loc_BD6CFD: FLdPr var_A0
  loc_BD6D00: LateIdCallLdVar
  loc_BD6D0A: CStrVarTmp
  loc_BD6D0B: FStStr var_144
  loc_BD6D0E: FFree1Ad var_A0
  loc_BD6D11: FFree1Var var_C8 = ""
  loc_BD6D14: FLdPr Me
  loc_BD6D17: MemLdI2 global_72
  loc_BD6D1A: CI4UI1
  loc_BD6D1B: CVarI4
  loc_BD6D1F: PopAdLdVar
  loc_BD6D20: LitVarI4
  loc_BD6D28: PopAdLdVar
  loc_BD6D29: FLdPr Me
  loc_BD6D2C: VCallAd Control_ID_FlexCheque
  loc_BD6D2F: FStAdFunc var_A0
  loc_BD6D32: FLdPr var_A0
  loc_BD6D35: LateIdCallLdVar
  loc_BD6D3F: CStrVarTmp
  loc_BD6D40: FStStrNoPop var_94
  loc_BD6D43: LitStr vbNullString
  loc_BD6D46: EqStr
  loc_BD6D48: FFree1Str var_94
  loc_BD6D4B: FFree1Ad var_A0
  loc_BD6D4E: FFree1Var var_C8 = ""
  loc_BD6D51: BranchF loc_BD6D5F
  loc_BD6D54: LitI4 0
  loc_BD6D59: FStR4 var_148
  loc_BD6D5C: Branch loc_BD6E05
  loc_BD6D5F: FLdPr Me
  loc_BD6D62: MemLdI2 global_72
  loc_BD6D65: CI4UI1
  loc_BD6D66: CVarI4
  loc_BD6D6A: PopAdLdVar
  loc_BD6D6B: LitVarI4
  loc_BD6D73: PopAdLdVar
  loc_BD6D74: FLdPr Me
  loc_BD6D77: VCallAd Control_ID_FlexCheque
  loc_BD6D7A: FStAdFunc var_A0
  loc_BD6D7D: FLdPr var_A0
  loc_BD6D80: LateIdCallLdVar
  loc_BD6D8A: PopAd
  loc_BD6D8C: LitI4 1
  loc_BD6D91: FLdPr Me
  loc_BD6D94: MemLdI2 global_72
  loc_BD6D97: CI4UI1
  loc_BD6D98: CVarI4
  loc_BD6D9C: PopAdLdVar
  loc_BD6D9D: LitVarI4
  loc_BD6DA5: PopAdLdVar
  loc_BD6DA6: FLdPr Me
  loc_BD6DA9: VCallAd Control_ID_FlexCheque
  loc_BD6DAC: FStAdFunc var_A4
  loc_BD6DAF: FLdPr var_A4
  loc_BD6DB2: LateIdCallLdVar
  loc_BD6DBC: CStrVarTmp
  loc_BD6DBD: FStStrNoPop var_94
  loc_BD6DC0: LitStr "-"
  loc_BD6DC3: LitI4 0
  loc_BD6DC8: FnInStr4
  loc_BD6DCA: LitI4 1
  loc_BD6DCF: SubI4
  loc_BD6DD0: CVarI4
  loc_BD6DD4: LitI4 1
  loc_BD6DD9: FLdRfVar var_C8
  loc_BD6DDC: CStrVarTmp
  loc_BD6DDD: FStStrNoPop var_CC
  loc_BD6DE0: ImpAdCallI2 Mid$(, , )
  loc_BD6DE5: FStStrNoPop var_1D0
  loc_BD6DE8: CI4Str
  loc_BD6DE9: FStR4 var_148
  loc_BD6DEC: FFreeStr var_94 = "": var_CC = ""
  loc_BD6DF5: FFreeAd var_A0 = ""
  loc_BD6DFC: FFreeVar var_C8 = "": var_E0 = ""
  loc_BD6E05: FLdPr Me
  loc_BD6E08: MemLdRfVar from_stack_1.global_72
  loc_BD6E0B: NextI2 var_14C, loc_BD6C0F
  loc_BD6E10: LitVar_Missing var_C8
  loc_BD6E13: LitI4 2
  loc_BD6E18: ILdRf var_140
  loc_BD6E1B: ImpAdCallI2 Mid$(, , )
  loc_BD6E20: FStStr var_1D4
  loc_BD6E23: FLdRfVar var_94
  loc_BD6E26: FLdPr Me
  loc_BD6E29: VCallAd Control_ID_CucuPersTxt
  loc_BD6E2C: FStAdFunc var_A0
  loc_BD6E2F: FLdPr var_A0
  loc_BD6E32:  = Me.Text
  loc_BD6E37: FLdRfVar var_E0
  loc_BD6E3A: FLdRfVar var_138
  loc_BD6E3D: LitVarStr var_15C, "NumeOrpa"
  loc_BD6E42: PopAdLdVar
  loc_BD6E43: FLdRfVar var_B8
  loc_BD6E46: FLdRfVar var_A4
  loc_BD6E49: FLdPr Me
  loc_BD6E4C: MemLdRfVar from_stack_1.global_52
  loc_BD6E4F: NewIfNullPr clsordenpago
  loc_BD6E52: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD6E57: FLdPr var_A4
  loc_BD6E5A:  = Me.Fields
  loc_BD6E5F: FLdPr var_B8
  loc_BD6E62: from_stack_2 = Me.Item(from_stack_1)
  loc_BD6E67: FLdPr var_138
  loc_BD6E6A:  = Me.Value
  loc_BD6E6F: FLdRfVar var_CC
  loc_BD6E72: FLdPr Me
  loc_BD6E75: VCallAd Control_ID_DetaProvLbl
  loc_BD6E78: FStAdFunc var_13C
  loc_BD6E7B: FLdPr var_13C
  loc_BD6E7E:  = Me.Caption
  loc_BD6E83: FLdRfVar var_132
  loc_BD6E86: LitI2_Byte 0
  loc_BD6E88: CUI1I2
  loc_BD6E8A: ILdRf var_CC
  loc_BD6E8D: FLdRfVar var_E0
  loc_BD6E90: CI4Var
  loc_BD6E92: ILdRf var_144
  loc_BD6E95: FLdR8 var_90
  loc_BD6E98: LitI4 0
  loc_BD6E9D: ILdRf var_148
  loc_BD6EA0: ILdRf var_94
  loc_BD6EA3: FLdZeroAd var_1D4
  loc_BD6EA6: FStStrNoPop var_1D0
  loc_BD6EA9: FLdPr Me
  loc_BD6EAC: MemLdRfVar from_stack_1.global_60
  loc_BD6EAF: NewIfNullPr clscheque
  loc_BD6EB2: from_stack_10v = clscheque.AddNew_ChunOrpa(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v)
  loc_BD6EB7: FFreeStr var_1D0 = "": var_94 = "": var_CC = ""
  loc_BD6EC2: FFreeAd var_A0 = "": var_A4 = "": var_B8 = "": var_13C = ""
  loc_BD6ECF: FFreeVar var_C8 = ""
  loc_BD6ED6: FLdRfVar var_C8
  loc_BD6ED9: FLdRfVar var_B8
  loc_BD6EDC: LitVarStr var_B4, "PeriInfo"
  loc_BD6EE1: PopAdLdVar
  loc_BD6EE2: FLdRfVar var_A4
  loc_BD6EE5: FLdRfVar var_A0
  loc_BD6EE8: FLdPr Me
  loc_BD6EEB: MemLdRfVar from_stack_1.global_52
  loc_BD6EEE: NewIfNullPr clsordenpago
  loc_BD6EF1: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD6EF6: FLdPr var_A0
  loc_BD6EF9:  = Me.Fields
  loc_BD6EFE: FLdPr var_A4
  loc_BD6F01: from_stack_2 = Me.Item(from_stack_1)
  loc_BD6F06: FLdPr var_B8
  loc_BD6F09:  = Me.Value
  loc_BD6F0E: FLdRfVar var_E0
  loc_BD6F11: FLdRfVar var_1D8
  loc_BD6F14: LitVarStr var_15C, "NumeOrpa"
  loc_BD6F19: PopAdLdVar
  loc_BD6F1A: FLdRfVar var_13C
  loc_BD6F1D: FLdRfVar var_138
  loc_BD6F20: FLdPr Me
  loc_BD6F23: MemLdRfVar from_stack_1.global_52
  loc_BD6F26: NewIfNullPr clsordenpago
  loc_BD6F29: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD6F2E: FLdPr var_138
  loc_BD6F31:  = Me.Fields
  loc_BD6F36: FLdPr var_13C
  loc_BD6F39: from_stack_2 = Me.Item(from_stack_1)
  loc_BD6F3E: FLdPr var_1D8
  loc_BD6F41:  = Me.Value
  loc_BD6F46: FLdRfVar var_E0
  loc_BD6F49: CI4Var
  loc_BD6F4B: FLdRfVar var_C8
  loc_BD6F4E: CI2Var
  loc_BD6F4F: FLdPr Me
  loc_BD6F52: MemLdRfVar from_stack_1.global_52
  loc_BD6F55: NewIfNullPr clsordenpago
  loc_BD6F58: Call clsordenpago.ChequeaDetaCheq(from_stack_1v, from_stack_2v)
  loc_BD6F5D: FFreeAd var_A0 = "": var_A4 = "": var_138 = "": var_13C = "": var_B8 = ""
  loc_BD6F6C: FFreeVar var_C8 = ""
  loc_BD6F73: LitStr "Municipalidad de Guaymallén"
  loc_BD6F76: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_BD6F79: EqStr
  loc_BD6F7B: BranchF loc_BD70AF
  loc_BD6F7E: FLdRfVar var_C8
  loc_BD6F81: FLdRfVar var_B8
  loc_BD6F84: LitVarStr var_B4, "NumeOrpa"
  loc_BD6F89: PopAdLdVar
  loc_BD6F8A: FLdRfVar var_A4
  loc_BD6F8D: FLdRfVar var_A0
  loc_BD6F90: FLdPr Me
  loc_BD6F93: MemLdRfVar from_stack_1.global_52
  loc_BD6F96: NewIfNullPr clsordenpago
  loc_BD6F99: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD6F9E: FLdPr var_A0
  loc_BD6FA1:  = Me.Fields
  loc_BD6FA6: FLdPr var_A4
  loc_BD6FA9: from_stack_2 = Me.Item(from_stack_1)
  loc_BD6FAE: FLdPr var_B8
  loc_BD6FB1:  = Me.Value
  loc_BD6FB6: LitI2_Byte &HFF
  loc_BD6FB8: PopTmpLdAd2 var_1DA
  loc_BD6FBB: LitI2_Byte 0
  loc_BD6FBD: PopTmpLdAd2 var_132
  loc_BD6FC0: LitVarStr var_15C, "¿Imprime la Orden de Pago número: "
  loc_BD6FC5: FLdRfVar var_C8
  loc_BD6FC8: ConcatVar var_E0
  loc_BD6FCC: LitVarStr var_16C, " ?"
  loc_BD6FD1: ConcatVar var_F0
  loc_BD6FD5: CStrVarVal var_94
  loc_BD6FD9: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BD6FDE: CI4UI1
  loc_BD6FDF: LitI4 6
  loc_BD6FE4: EqI4
  loc_BD6FE5: FFree1Str var_94
  loc_BD6FE8: FFreeAd var_A0 = "": var_A4 = ""
  loc_BD6FF1: FFreeVar var_C8 = "": var_E0 = ""
  loc_BD6FFA: BranchF loc_BD70AF
  loc_BD6FFD: ImpAdLdRf MemVar_C3DAD4
  loc_BD7000: NewIfNullAd
  loc_BD7003: CastAd
  loc_BD7006: FStAdFuncNoPop
  loc_BD7009: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_BD700E: FFree1Ad var_A0
  loc_BD7011: ImpAdLdI2 MemVar_C3D064
  loc_BD7014: CStrUI1
  loc_BD7016: FStStrNoPop var_94
  loc_BD7019: ImpAdLdRf MemVar_C3DAD4
  loc_BD701C: NewIfNullPr rptOrdenPago
  loc_BD701F: VCallAd Control_ID_cboPeriodo
  loc_BD7022: FStAdFunc var_A0
  loc_BD7025: FLdPr var_A0
  loc_BD7028: rptOrdenPago.ComboBox.Text = from_stack_1
  loc_BD702D: FFree1Str var_94
  loc_BD7030: FFree1Ad var_A0
  loc_BD7033: FLdRfVar var_C8
  loc_BD7036: FLdRfVar var_B8
  loc_BD7039: LitVarStr var_B4, "NumeOrpa"
  loc_BD703E: PopAdLdVar
  loc_BD703F: FLdRfVar var_A4
  loc_BD7042: FLdRfVar var_A0
  loc_BD7045: FLdPr Me
  loc_BD7048: MemLdRfVar from_stack_1.global_52
  loc_BD704B: NewIfNullPr clsordenpago
  loc_BD704E: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD7053: FLdPr var_A0
  loc_BD7056:  = Me.Fields
  loc_BD705B: FLdPr var_A4
  loc_BD705E: from_stack_2 = Me.Item(from_stack_1)
  loc_BD7063: FLdPr var_B8
  loc_BD7066:  = Me.Value
  loc_BD706B: FLdRfVar var_C8
  loc_BD706E: CStrVarTmp
  loc_BD706F: FStStrNoPop var_94
  loc_BD7072: ImpAdLdRf MemVar_C3DAD4
  loc_BD7075: NewIfNullPr rptOrdenPago
  loc_BD7078: VCallAd Control_ID_NumeOrpaTxt
  loc_BD707B: FStAdFunc var_138
  loc_BD707E: FLdPr var_138
  loc_BD7081: rptOrdenPago.TextBox.Text = from_stack_1
  loc_BD7086: FFree1Str var_94
  loc_BD7089: FFreeAd var_A0 = "": var_A4 = "": var_B8 = ""
  loc_BD7094: FFree1Var var_C8 = ""
  loc_BD7097: LitVar_Missing var_15C
  loc_BD709A: PopAdLdVar
  loc_BD709B: LitVarI4
  loc_BD70A3: PopAdLdVar
  loc_BD70A4: ImpAdLdRf MemVar_C3DAD4
  loc_BD70A7: NewIfNullPr rptOrdenPago
  loc_BD70AA: rptOrdenPago.Show from_stack_1, from_stack_2
  loc_BD70AF: Branch loc_BD781E
  loc_BD70B2: FLdUI1
  loc_BD70B6: LitI2_Byte 2
  loc_BD70B8: EqI2
  loc_BD70B9: BranchF loc_BD756B
  loc_BD70BC: FLdRfVar var_132
  loc_BD70BF: FLdPr Me
  loc_BD70C2: VCallAd Control_ID_ChequeUnicoChk
  loc_BD70C5: FStAdFunc var_A0
  loc_BD70C8: FLdPr var_A0
  loc_BD70CB:  = Me.Value
  loc_BD70D0: FLdI2 var_132
  loc_BD70D3: CI4UI1
  loc_BD70D4: LitI4 0
  loc_BD70D9: EqI4
  loc_BD70DA: FFree1Ad var_A0
  loc_BD70DD: BranchF loc_BD719E
  loc_BD70E0: LitI2_Byte 1
  loc_BD70E2: FLdPr Me
  loc_BD70E5: MemLdRfVar from_stack_1.global_72
  loc_BD70E8: FLdPr Me
  loc_BD70EB: VCallAd Control_ID_FlexCheque
  loc_BD70EE: FStAdFunc var_A0
  loc_BD70F1: FLdPr var_A0
  loc_BD70F4: LateIdLdVar var_C8 DispID_4 0
  loc_BD70FB: CI4Var
  loc_BD70FD: LitI4 1
  loc_BD7102: SubI4
  loc_BD7103: CI2I4
  loc_BD7104: FFree1Ad var_A0
  loc_BD7107: FFree1Var var_C8 = ""
  loc_BD710A: ForI2 var_1DE
  loc_BD7110: FLdPr Me
  loc_BD7113: MemLdI2 global_72
  loc_BD7116: CI4UI1
  loc_BD7117: CVarI4
  loc_BD711B: PopAdLdVar
  loc_BD711C: LitVarI4
  loc_BD7124: PopAdLdVar
  loc_BD7125: FLdPr Me
  loc_BD7128: VCallAd Control_ID_FlexCheque
  loc_BD712B: FStAdFunc var_A0
  loc_BD712E: FLdPr var_A0
  loc_BD7131: LateIdCallLdVar
  loc_BD713B: CStrVarTmp
  loc_BD713C: FStStrNoPop var_94
  loc_BD713F: LitStr "No"
  loc_BD7142: EqStr
  loc_BD7144: FFree1Str var_94
  loc_BD7147: FFree1Ad var_A0
  loc_BD714A: FFree1Var var_C8 = ""
  loc_BD714D: BranchF loc_BD7190
  loc_BD7150: FLdPr Me
  loc_BD7153: MemLdI2 global_72
  loc_BD7156: CI4UI1
  loc_BD7157: CVarI4
  loc_BD715B: PopAdLdVar
  loc_BD715C: LitVarI4
  loc_BD7164: PopAdLdVar
  loc_BD7165: FLdPr Me
  loc_BD7168: VCallAd Control_ID_FlexCheque
  loc_BD716B: FStAdFunc var_A0
  loc_BD716E: FLdPr var_A0
  loc_BD7171: LateIdCallLdVar
  loc_BD717B: CStrVarTmp
  loc_BD717C: FStStrNoPop var_94
  loc_BD717F: LitStr vbNullString
  loc_BD7182: NeStr
  loc_BD7184: FFree1Str var_94
  loc_BD7187: FFree1Ad var_A0
  loc_BD718A: FFree1Var var_C8 = ""
  loc_BD718D: BranchF loc_BD7190
  loc_BD7190: FLdPr Me
  loc_BD7193: MemLdRfVar from_stack_1.global_72
  loc_BD7196: NextI2 var_1DE, loc_BD7110
  loc_BD719B: Branch loc_BD738F
  loc_BD719E: FLdRfVar var_132
  loc_BD71A1: FLdPr Me
  loc_BD71A4: VCallAd Control_ID_ChequeUnicoChk
  loc_BD71A7: FStAdFunc var_A0
  loc_BD71AA: FLdPr var_A0
  loc_BD71AD:  = Me.Value
  loc_BD71B2: FLdI2 var_132
  loc_BD71B5: CI4UI1
  loc_BD71B6: LitI4 1
  loc_BD71BB: EqI4
  loc_BD71BC: FFree1Ad var_A0
  loc_BD71BF: BranchF loc_BD738F
  loc_BD71C2: LitI2_Byte 0
  loc_BD71C4: CR8I2
  loc_BD71C5: FStFPR8 var_90
  loc_BD71C8: LitI2_Byte 1
  loc_BD71CA: FLdPr Me
  loc_BD71CD: MemLdRfVar from_stack_1.global_72
  loc_BD71D0: FLdPr Me
  loc_BD71D3: VCallAd Control_ID_FlexCheque
  loc_BD71D6: FStAdFunc var_A0
  loc_BD71D9: FLdPr var_A0
  loc_BD71DC: LateIdLdVar var_C8 DispID_4 0
  loc_BD71E3: CI4Var
  loc_BD71E5: LitI4 1
  loc_BD71EA: SubI4
  loc_BD71EB: CI2I4
  loc_BD71EC: FFree1Ad var_A0
  loc_BD71EF: FFree1Var var_C8 = ""
  loc_BD71F2: ForI2 var_1E2
  loc_BD71F8: FLdPr Me
  loc_BD71FB: MemLdI2 global_72
  loc_BD71FE: CI4UI1
  loc_BD71FF: CVarI4
  loc_BD7203: PopAdLdVar
  loc_BD7204: LitVarI4
  loc_BD720C: PopAdLdVar
  loc_BD720D: FLdPr Me
  loc_BD7210: VCallAd Control_ID_FlexCheque
  loc_BD7213: FStAdFunc var_A0
  loc_BD7216: FLdPr var_A0
  loc_BD7219: LateIdCallLdVar
  loc_BD7223: CStrVarTmp
  loc_BD7224: FStStrNoPop var_94
  loc_BD7227: LitStr "No"
  loc_BD722A: EqStr
  loc_BD722C: FFree1Str var_94
  loc_BD722F: FFree1Ad var_A0
  loc_BD7232: FFree1Var var_C8 = ""
  loc_BD7235: BranchF loc_BD727E
  loc_BD7238: FLdPr Me
  loc_BD723B: MemLdI2 global_72
  loc_BD723E: CI4UI1
  loc_BD723F: CVarI4
  loc_BD7243: PopAdLdVar
  loc_BD7244: LitVarI4
  loc_BD724C: PopAdLdVar
  loc_BD724D: FLdPr Me
  loc_BD7250: VCallAd Control_ID_FlexCheque
  loc_BD7253: FStAdFunc var_A0
  loc_BD7256: FLdPr var_A0
  loc_BD7259: LateIdCallLdVar
  loc_BD7263: PopAd
  loc_BD7265: FLdFPR8 var_90
  loc_BD7268: FLdRfVar var_C8
  loc_BD726B: CStrVarTmp
  loc_BD726C: FStStrNoPop var_94
  loc_BD726F: CR8Str
  loc_BD7271: AddR8
  loc_BD7272: FStFPR8 var_90
  loc_BD7275: FFree1Str var_94
  loc_BD7278: FFree1Ad var_A0
  loc_BD727B: FFree1Var var_C8 = ""
  loc_BD727E: FLdPr Me
  loc_BD7281: MemLdRfVar from_stack_1.global_72
  loc_BD7284: NextI2 var_1E2, loc_BD71F8
  loc_BD7289: FLdRfVar var_C8
  loc_BD728C: FLdRfVar var_B8
  loc_BD728F: LitVarStr var_B4, "IdCheq"
  loc_BD7294: PopAdLdVar
  loc_BD7295: FLdRfVar var_A4
  loc_BD7298: FLdRfVar var_A0
  loc_BD729B: FLdPr Me
  loc_BD729E: MemLdRfVar from_stack_1.global_52
  loc_BD72A1: NewIfNullPr clsordenpago
  loc_BD72A4: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD72A9: FLdPr var_A0
  loc_BD72AC:  = Me.Fields
  loc_BD72B1: FLdPr var_A4
  loc_BD72B4: from_stack_2 = Me.Item(from_stack_1)
  loc_BD72B9: FLdPr var_B8
  loc_BD72BC:  = Me.Value
  loc_BD72C1: FLdRfVar var_94
  loc_BD72C4: FLdPr Me
  loc_BD72C7: VCallAd Control_ID_CucuPersTxt
  loc_BD72CA: FStAdFunc var_138
  loc_BD72CD: FLdPr var_138
  loc_BD72D0:  = Me.Text
  loc_BD72D5: LitI2_Byte 0
  loc_BD72D7: PopTmpLdAd2 var_132
  loc_BD72DA: ImpAdCallFPR4 Proc_261_32_A53D7C()
  loc_BD72DF: FStFPR8 var_1F4
  loc_BD72E2: FLdRfVar var_E0
  loc_BD72E5: FLdRfVar var_1E8
  loc_BD72E8: LitVarStr var_15C, "NumeOrpa"
  loc_BD72ED: PopAdLdVar
  loc_BD72EE: FLdRfVar var_1D8
  loc_BD72F1: FLdRfVar var_13C
  loc_BD72F4: FLdPr Me
  loc_BD72F7: MemLdRfVar from_stack_1.global_52
  loc_BD72FA: NewIfNullPr clsordenpago
  loc_BD72FD: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD7302: FLdPr var_13C
  loc_BD7305:  = Me.Fields
  loc_BD730A: FLdPr var_1D8
  loc_BD730D: from_stack_2 = Me.Item(from_stack_1)
  loc_BD7312: FLdPr var_1E8
  loc_BD7315:  = Me.Value
  loc_BD731A: FLdRfVar var_CC
  loc_BD731D: FLdPr Me
  loc_BD7320: VCallAd Control_ID_DetaProvLbl
  loc_BD7323: FStAdFunc var_1EC
  loc_BD7326: FLdPr var_1EC
  loc_BD7329:  = Me.Caption
  loc_BD732E: FLdRfVar var_1DA
  loc_BD7331: LitI2_Byte 0
  loc_BD7333: CUI1I2
  loc_BD7335: ILdRf var_CC
  loc_BD7338: FLdRfVar var_E0
  loc_BD733B: CI4Var
  loc_BD733D: FLdFPR8 var_1F4
  loc_BD7340: CStrDate
  loc_BD7342: FStStrNoPop var_1D4
  loc_BD7345: FLdR8 var_90
  loc_BD7348: LitI4 0
  loc_BD734D: LitI4 0
  loc_BD7352: ILdRf var_94
  loc_BD7355: FLdRfVar var_C8
  loc_BD7358: CStrVarTmp
  loc_BD7359: FStStrNoPop var_1D0
  loc_BD735C: FLdPr Me
  loc_BD735F: MemLdRfVar from_stack_1.global_60
  loc_BD7362: NewIfNullPr clscheque
  loc_BD7365: from_stack_10v = clscheque.AddNew_ChunOrpa(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v, from_stack_7v, from_stack_8v, from_stack_9v)
  loc_BD736A: FFreeStr var_1D0 = "": var_94 = "": var_1D4 = ""
  loc_BD7375: FFreeAd var_A0 = "": var_A4 = "": var_138 = "": var_13C = "": var_1D8 = "": var_1EC = "": var_B8 = ""
  loc_BD7388: FFreeVar var_C8 = ""
  loc_BD738F: FLdRfVar var_C8
  loc_BD7392: FLdRfVar var_B8
  loc_BD7395: LitVarStr var_B4, "PeriInfo"
  loc_BD739A: PopAdLdVar
  loc_BD739B: FLdRfVar var_A4
  loc_BD739E: FLdRfVar var_A0
  loc_BD73A1: FLdPr Me
  loc_BD73A4: MemLdRfVar from_stack_1.global_52
  loc_BD73A7: NewIfNullPr clsordenpago
  loc_BD73AA: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD73AF: FLdPr var_A0
  loc_BD73B2:  = Me.Fields
  loc_BD73B7: FLdPr var_A4
  loc_BD73BA: from_stack_2 = Me.Item(from_stack_1)
  loc_BD73BF: FLdPr var_B8
  loc_BD73C2:  = Me.Value
  loc_BD73C7: FLdRfVar var_E0
  loc_BD73CA: FLdRfVar var_1D8
  loc_BD73CD: LitVarStr var_15C, "NumeOrpa"
  loc_BD73D2: PopAdLdVar
  loc_BD73D3: FLdRfVar var_13C
  loc_BD73D6: FLdRfVar var_138
  loc_BD73D9: FLdPr Me
  loc_BD73DC: MemLdRfVar from_stack_1.global_52
  loc_BD73DF: NewIfNullPr clsordenpago
  loc_BD73E2: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD73E7: FLdPr var_138
  loc_BD73EA:  = Me.Fields
  loc_BD73EF: FLdPr var_13C
  loc_BD73F2: from_stack_2 = Me.Item(from_stack_1)
  loc_BD73F7: FLdPr var_1D8
  loc_BD73FA:  = Me.Value
  loc_BD73FF: FLdRfVar var_E0
  loc_BD7402: CI4Var
  loc_BD7404: FLdRfVar var_C8
  loc_BD7407: CI2Var
  loc_BD7408: FLdPr Me
  loc_BD740B: MemLdRfVar from_stack_1.global_52
  loc_BD740E: NewIfNullPr clsordenpago
  loc_BD7411: Call clsordenpago.ChequeaDetaCheq(from_stack_1v, from_stack_2v)
  loc_BD7416: FFreeAd var_A0 = "": var_A4 = "": var_138 = "": var_13C = "": var_B8 = ""
  loc_BD7425: FFreeVar var_C8 = ""
  loc_BD742C: LitStr "Municipalidad de Guaymallén"
  loc_BD742F: LitStr "EPRE - Ente Provincial Regulador Eléctrico"
  loc_BD7432: EqStr
  loc_BD7434: BranchF loc_BD7568
  loc_BD7437: FLdRfVar var_C8
  loc_BD743A: FLdRfVar var_B8
  loc_BD743D: LitVarStr var_B4, "NumeOrpa"
  loc_BD7442: PopAdLdVar
  loc_BD7443: FLdRfVar var_A4
  loc_BD7446: FLdRfVar var_A0
  loc_BD7449: FLdPr Me
  loc_BD744C: MemLdRfVar from_stack_1.global_52
  loc_BD744F: NewIfNullPr clsordenpago
  loc_BD7452: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD7457: FLdPr var_A0
  loc_BD745A:  = Me.Fields
  loc_BD745F: FLdPr var_A4
  loc_BD7462: from_stack_2 = Me.Item(from_stack_1)
  loc_BD7467: FLdPr var_B8
  loc_BD746A:  = Me.Value
  loc_BD746F: LitI2_Byte &HFF
  loc_BD7471: PopTmpLdAd2 var_1DA
  loc_BD7474: LitI2_Byte 0
  loc_BD7476: PopTmpLdAd2 var_132
  loc_BD7479: LitVarStr var_15C, "¿Imprime la Orden de Pago número: "
  loc_BD747E: FLdRfVar var_C8
  loc_BD7481: ConcatVar var_E0
  loc_BD7485: LitVarStr var_16C, " ?"
  loc_BD748A: ConcatVar var_F0
  loc_BD748E: CStrVarVal var_94
  loc_BD7492: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_BD7497: CI4UI1
  loc_BD7498: LitI4 6
  loc_BD749D: EqI4
  loc_BD749E: FFree1Str var_94
  loc_BD74A1: FFreeAd var_A0 = "": var_A4 = ""
  loc_BD74AA: FFreeVar var_C8 = "": var_E0 = ""
  loc_BD74B3: BranchF loc_BD7568
  loc_BD74B6: ImpAdLdRf MemVar_C3DAD4
  loc_BD74B9: NewIfNullAd
  loc_BD74BC: CastAd
  loc_BD74BF: FStAdFuncNoPop
  loc_BD74C2: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_BD74C7: FFree1Ad var_A0
  loc_BD74CA: ImpAdLdI2 MemVar_C3D064
  loc_BD74CD: CStrUI1
  loc_BD74CF: FStStrNoPop var_94
  loc_BD74D2: ImpAdLdRf MemVar_C3DAD4
  loc_BD74D5: NewIfNullPr rptOrdenPago
  loc_BD74D8: VCallAd Control_ID_cboPeriodo
  loc_BD74DB: FStAdFunc var_A0
  loc_BD74DE: FLdPr var_A0
  loc_BD74E1: rptOrdenPago.ComboBox.Text = from_stack_1
  loc_BD74E6: FFree1Str var_94
  loc_BD74E9: FFree1Ad var_A0
  loc_BD74EC: FLdRfVar var_C8
  loc_BD74EF: FLdRfVar var_B8
  loc_BD74F2: LitVarStr var_B4, "NumeOrpa"
  loc_BD74F7: PopAdLdVar
  loc_BD74F8: FLdRfVar var_A4
  loc_BD74FB: FLdRfVar var_A0
  loc_BD74FE: FLdPr Me
  loc_BD7501: MemLdRfVar from_stack_1.global_52
  loc_BD7504: NewIfNullPr clsordenpago
  loc_BD7507: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD750C: FLdPr var_A0
  loc_BD750F:  = Me.Fields
  loc_BD7514: FLdPr var_A4
  loc_BD7517: from_stack_2 = Me.Item(from_stack_1)
  loc_BD751C: FLdPr var_B8
  loc_BD751F:  = Me.Value
  loc_BD7524: FLdRfVar var_C8
  loc_BD7527: CStrVarTmp
  loc_BD7528: FStStrNoPop var_94
  loc_BD752B: ImpAdLdRf MemVar_C3DAD4
  loc_BD752E: NewIfNullPr rptOrdenPago
  loc_BD7531: VCallAd Control_ID_NumeOrpaTxt
  loc_BD7534: FStAdFunc var_138
  loc_BD7537: FLdPr var_138
  loc_BD753A: rptOrdenPago.TextBox.Text = from_stack_1
  loc_BD753F: FFree1Str var_94
  loc_BD7542: FFreeAd var_A0 = "": var_A4 = "": var_B8 = ""
  loc_BD754D: FFree1Var var_C8 = ""
  loc_BD7550: LitVar_Missing var_15C
  loc_BD7553: PopAdLdVar
  loc_BD7554: LitVarI4
  loc_BD755C: PopAdLdVar
  loc_BD755D: ImpAdLdRf MemVar_C3DAD4
  loc_BD7560: NewIfNullPr rptOrdenPago
  loc_BD7563: rptOrdenPago.Show from_stack_1, from_stack_2
  loc_BD7568: Branch loc_BD781E
  loc_BD756B: FLdUI1
  loc_BD756F: LitI2_Byte 3
  loc_BD7571: EqI2
  loc_BD7572: BranchF loc_BD781E
  loc_BD7575: LitI2_Byte 1
  loc_BD7577: FLdPr Me
  loc_BD757A: MemLdRfVar from_stack_1.global_72
  loc_BD757D: FLdPr Me
  loc_BD7580: VCallAd Control_ID_FlexCheque
  loc_BD7583: FStAdFunc var_A0
  loc_BD7586: FLdPr var_A0
  loc_BD7589: LateIdLdVar var_C8 DispID_4 0
  loc_BD7590: CI4Var
  loc_BD7592: LitI4 1
  loc_BD7597: SubI4
  loc_BD7598: CI2I4
  loc_BD7599: FFree1Ad var_A0
  loc_BD759C: FFree1Var var_C8 = ""
  loc_BD759F: ForI2 var_1F8
  loc_BD75A5: FLdPr Me
  loc_BD75A8: MemLdI2 global_72
  loc_BD75AB: CI4UI1
  loc_BD75AC: CVarI4
  loc_BD75B0: PopAdLdVar
  loc_BD75B1: LitVarI4
  loc_BD75B9: PopAdLdVar
  loc_BD75BA: FLdPr Me
  loc_BD75BD: VCallAd Control_ID_FlexCheque
  loc_BD75C0: FStAdFunc var_A0
  loc_BD75C3: FLdPr var_A0
  loc_BD75C6: LateIdCallLdVar
  loc_BD75D0: CStrVarTmp
  loc_BD75D1: CVarStr var_E0
  loc_BD75D4: ImpAdCallI2 IsDate()
  loc_BD75D9: FLdPr Me
  loc_BD75DC: MemLdI2 global_72
  loc_BD75DF: CI4UI1
  loc_BD75E0: CVarI4
  loc_BD75E4: PopAdLdVar
  loc_BD75E5: LitVarI4
  loc_BD75ED: PopAdLdVar
  loc_BD75EE: FLdPr Me
  loc_BD75F1: VCallAd Control_ID_FlexCheque
  loc_BD75F4: FStAdFunc var_A4
  loc_BD75F7: FLdPr var_A4
  loc_BD75FA: LateIdCallLdVar
  loc_BD7604: CStrVarTmp
  loc_BD7605: FStStrNoPop var_94
  loc_BD7608: LitStr "No"
  loc_BD760B: EqStr
  loc_BD760D: AndI4
  loc_BD760E: FFree1Str var_94
  loc_BD7611: FFreeAd var_A0 = ""
  loc_BD7618: FFreeVar var_C8 = "": var_E0 = ""
  loc_BD7621: BranchF loc_BD7813
  loc_BD7624: FLdPr Me
  loc_BD7627: MemLdI2 global_72
  loc_BD762A: CI4UI1
  loc_BD762B: CVarI4
  loc_BD762F: PopAdLdVar
  loc_BD7630: LitVarI4
  loc_BD7638: PopAdLdVar
  loc_BD7639: FLdPr Me
  loc_BD763C: VCallAd Control_ID_FlexCheque
  loc_BD763F: FStAdFunc var_A0
  loc_BD7642: FLdPr var_A0
  loc_BD7645: LateIdCallLdVar
  loc_BD764F: CStrVarTmp
  loc_BD7650: FStStr var_200
  loc_BD7653: FFree1Ad var_A0
  loc_BD7656: FFree1Var var_C8 = ""
  loc_BD7659: ILdRf var_200
  loc_BD765C: LitStr vbNullString
  loc_BD765F: EqStr
  loc_BD7661: BranchF loc_BD766F
  loc_BD7664: LitI2_Byte 0
  loc_BD7666: CUI1I2
  loc_BD7668: FStUI1 var_1FA
  loc_BD766C: Branch loc_BD76C4
  loc_BD766F: ILdRf var_200
  loc_BD7672: LitStr "Manual"
  loc_BD7675: EqStr
  loc_BD7677: BranchF loc_BD7685
  loc_BD767A: LitI2_Byte 1
  loc_BD767C: CUI1I2
  loc_BD767E: FStUI1 var_1FA
  loc_BD7682: Branch loc_BD76C4
  loc_BD7685: ILdRf var_200
  loc_BD7688: LitStr "Impreso"
  loc_BD768B: EqStr
  loc_BD768D: BranchF loc_BD769B
  loc_BD7690: LitI2_Byte 2
  loc_BD7692: CUI1I2
  loc_BD7694: FStUI1 var_1FA
  loc_BD7698: Branch loc_BD76C4
  loc_BD769B: ILdRf var_200
  loc_BD769E: LitStr "Transferencia"
  loc_BD76A1: EqStr
  loc_BD76A3: BranchF loc_BD76B1
  loc_BD76A6: LitI2_Byte 3
  loc_BD76A8: CUI1I2
  loc_BD76AA: FStUI1 var_1FA
  loc_BD76AE: Branch loc_BD76C4
  loc_BD76B1: ILdRf var_200
  loc_BD76B4: LitStr "eCheq"
  loc_BD76B7: EqStr
  loc_BD76B9: BranchF loc_BD76C4
  loc_BD76BC: LitI2_Byte 4
  loc_BD76BE: CUI1I2
  loc_BD76C0: FStUI1 var_1FA
  loc_BD76C4: FLdPr Me
  loc_BD76C7: MemLdI2 global_72
  loc_BD76CA: CI4UI1
  loc_BD76CB: CVarI4
  loc_BD76CF: PopAdLdVar
  loc_BD76D0: LitVarI4
  loc_BD76D8: PopAdLdVar
  loc_BD76D9: FLdPr Me
  loc_BD76DC: VCallAd Control_ID_FlexCheque
  loc_BD76DF: FStAdFunc var_A0
  loc_BD76E2: FLdPr var_A0
  loc_BD76E5: LateIdCallLdVar
  loc_BD76EF: PopAd
  loc_BD76F1: FLdPr Me
  loc_BD76F4: MemLdI2 global_72
  loc_BD76F7: CI4UI1
  loc_BD76F8: CVarI4
  loc_BD76FC: PopAdLdVar
  loc_BD76FD: LitVarI4
  loc_BD7705: PopAdLdVar
  loc_BD7706: FLdPr Me
  loc_BD7709: VCallAd Control_ID_FlexCheque
  loc_BD770C: FStAdFunc var_A4
  loc_BD770F: FLdPr var_A4
  loc_BD7712: LateIdCallLdVar
  loc_BD771C: PopAd
  loc_BD771E: FLdPr Me
  loc_BD7721: MemLdI2 global_72
  loc_BD7724: CI4UI1
  loc_BD7725: CVarI4
  loc_BD7729: PopAdLdVar
  loc_BD772A: LitVarI4
  loc_BD7732: PopAdLdVar
  loc_BD7733: FLdPr Me
  loc_BD7736: VCallAd Control_ID_FlexCheque
  loc_BD7739: FStAdFunc var_B8
  loc_BD773C: FLdPr var_B8
  loc_BD773F: LateIdCallLdVar
  loc_BD7749: PopAd
  loc_BD774B: FLdPr Me
  loc_BD774E: MemLdI2 global_72
  loc_BD7751: CI4UI1
  loc_BD7752: CVarI4
  loc_BD7756: PopAdLdVar
  loc_BD7757: LitVarI4
  loc_BD775F: PopAdLdVar
  loc_BD7760: FLdPr Me
  loc_BD7763: VCallAd Control_ID_FlexCheque
  loc_BD7766: FStAdFunc var_138
  loc_BD7769: FLdPr var_138
  loc_BD776C: LateIdCallLdVar
  loc_BD7776: PopAd
  loc_BD7778: FLdRfVar var_110
  loc_BD777B: FLdRfVar var_1E8
  loc_BD777E: LitVarStr var_280, "ChunOrpa"
  loc_BD7783: PopAdLdVar
  loc_BD7784: FLdRfVar var_1D8
  loc_BD7787: FLdRfVar var_13C
  loc_BD778A: FLdPr Me
  loc_BD778D: MemLdRfVar from_stack_1.global_52
  loc_BD7790: NewIfNullPr clsordenpago
  loc_BD7793: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD7798: FLdPr var_13C
  loc_BD779B:  = Me.Fields
  loc_BD77A0: FLdPr var_1D8
  loc_BD77A3: from_stack_2 = Me.Item(from_stack_1)
  loc_BD77A8: FLdPr var_1E8
  loc_BD77AB:  = Me.Value
  loc_BD77B0: FLdRfVar var_132
  loc_BD77B3: FLdUI1
  loc_BD77B7: FLdRfVar var_110
  loc_BD77BA: CUI1Var
  loc_BD77BC: FLdRfVar var_100
  loc_BD77BF: CStrVarTmp
  loc_BD77C0: FStStrNoPop var_1D4
  loc_BD77C3: FLdRfVar var_F0
  loc_BD77C6: CStrVarTmp
  loc_BD77C7: FStStrNoPop var_1D0
  loc_BD77CA: FLdRfVar var_E0
  loc_BD77CD: CStrVarTmp
  loc_BD77CE: FStStrNoPop var_CC
  loc_BD77D1: CR8Str
  loc_BD77D3: PopFPR8
  loc_BD77D4: FLdRfVar var_C8
  loc_BD77D7: CStrVarTmp
  loc_BD77D8: FStStrNoPop var_94
  loc_BD77DB: CI4Str
  loc_BD77DC: FLdPr Me
  loc_BD77DF: MemLdRfVar from_stack_1.global_60
  loc_BD77E2: NewIfNullPr clscheque
  loc_BD77E5: from_stack_7v = clscheque.AnularCheque(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_BD77EA: FFreeStr var_94 = "": var_CC = "": var_1D0 = ""
  loc_BD77F5: FFreeAd var_A0 = "": var_A4 = "": var_B8 = "": var_138 = "": var_13C = "": var_1D8 = ""
  loc_BD7806: FFreeVar var_C8 = "": var_E0 = "": var_F0 = "": var_100 = ""
  loc_BD7813: FLdPr Me
  loc_BD7816: MemLdRfVar from_stack_1.global_72
  loc_BD7819: NextI2 var_1F8, loc_BD75A5
  loc_BD781E: Call cmdCancelar_Click()
  loc_BD7823: Branch loc_BD7A30
  loc_BD7826: ILdRf var_98
  loc_BD7829: LitStr "btnCancelar"
  loc_BD782C: EqStr
  loc_BD782E: BranchF loc_BD7839
  loc_BD7831: Call cmdCancelar_Click()
  loc_BD7836: Branch loc_BD7A30
  loc_BD7839: ILdRf var_98
  loc_BD783C: LitStr "btnPrimero"
  loc_BD783F: EqStr
  loc_BD7841: BranchF loc_BD7855
  loc_BD7844: FLdPr Me
  loc_BD7847: MemLdRfVar from_stack_1.global_52
  loc_BD784A: NewIfNullPr clsordenpago
  loc_BD784D: Call clsordenpago.MoveFirst()
  loc_BD7852: Branch loc_BD7A30
  loc_BD7855: ILdRf var_98
  loc_BD7858: LitStr "btnAnterior"
  loc_BD785B: EqStr
  loc_BD785D: BranchF loc_BD7871
  loc_BD7860: FLdPr Me
  loc_BD7863: MemLdRfVar from_stack_1.global_52
  loc_BD7866: NewIfNullPr clsordenpago
  loc_BD7869: Call clsordenpago.MovePrevious()
  loc_BD786E: Branch loc_BD7A30
  loc_BD7871: ILdRf var_98
  loc_BD7874: LitStr "btnSiguiente"
  loc_BD7877: EqStr
  loc_BD7879: BranchF loc_BD788D
  loc_BD787C: FLdPr Me
  loc_BD787F: MemLdRfVar from_stack_1.global_52
  loc_BD7882: NewIfNullPr clsordenpago
  loc_BD7885: Call clsordenpago.MoveNext()
  loc_BD788A: Branch loc_BD7A30
  loc_BD788D: ILdRf var_98
  loc_BD7890: LitStr "btnUltimo"
  loc_BD7893: EqStr
  loc_BD7895: BranchF loc_BD78A9
  loc_BD7898: FLdPr Me
  loc_BD789B: MemLdRfVar from_stack_1.global_52
  loc_BD789E: NewIfNullPr clsordenpago
  loc_BD78A1: Call clsordenpago.MoveLast()
  loc_BD78A6: Branch loc_BD7A30
  loc_BD78A9: ILdRf var_98
  loc_BD78AC: LitStr "btnFiltrar"
  loc_BD78AF: EqStr
  loc_BD78B1: BranchF loc_BD78B7
  loc_BD78B4: Branch loc_BD7A30
  loc_BD78B7: ILdRf var_98
  loc_BD78BA: LitStr "btnBuscar"
  loc_BD78BD: EqStr
  loc_BD78BF: BranchF loc_BD78C5
  loc_BD78C2: Branch loc_BD7A30
  loc_BD78C5: ILdRf var_98
  loc_BD78C8: LitStr "btnImprimir"
  loc_BD78CB: EqStr
  loc_BD78CD: BranchF loc_BD79D9
  loc_BD78D0: FLdRfVar var_9C
  loc_BD78D3: FLdPr Me
  loc_BD78D6: MemLdRfVar from_stack_1.global_52
  loc_BD78D9: NewIfNullPr clsordenpago
  loc_BD78DC: from_stack_1 = clsordenpago.RecordCount
  loc_BD78E1: ILdRf var_9C
  loc_BD78E4: LitI4 0
  loc_BD78E9: GtI4
  loc_BD78EA: BranchF loc_BD79D1
  loc_BD78ED: FLdRfVar var_C8
  loc_BD78F0: FLdRfVar var_B8
  loc_BD78F3: LitVarStr var_B4, "NumeOrpa"
  loc_BD78F8: PopAdLdVar
  loc_BD78F9: FLdRfVar var_A4
  loc_BD78FC: FLdRfVar var_A0
  loc_BD78FF: FLdPr Me
  loc_BD7902: MemLdRfVar from_stack_1.global_52
  loc_BD7905: NewIfNullPr clsordenpago
  loc_BD7908: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD790D: FLdPr var_A0
  loc_BD7910:  = Me.Fields
  loc_BD7915: FLdPr var_A4
  loc_BD7918: from_stack_2 = Me.Item(from_stack_1)
  loc_BD791D: FLdPr var_B8
  loc_BD7920:  = Me.Value
  loc_BD7925: FLdRfVar var_C8
  loc_BD7928: CStrVarTmp
  loc_BD7929: CVarStr var_E0
  loc_BD792C: PopAdLdVar
  loc_BD792D: ImpAdLdRf MemVar_C3D898
  loc_BD7930: NewIfNullPr dlgImpresionAutomaticadeCheques
  loc_BD7933: VCallAd Control_ID_DesdeNumeOrpaMsk
  loc_BD7936: FStAdFunc var_138
  loc_BD7939: FLdPr var_138
  loc_BD793C: LateIdSt
  loc_BD7941: FFreeAd var_A0 = "": var_A4 = "": var_B8 = ""
  loc_BD794C: FFreeVar var_C8 = ""
  loc_BD7953: FLdRfVar var_C8
  loc_BD7956: FLdRfVar var_B8
  loc_BD7959: LitVarStr var_B4, "NumeOrpa"
  loc_BD795E: PopAdLdVar
  loc_BD795F: FLdRfVar var_A4
  loc_BD7962: FLdRfVar var_A0
  loc_BD7965: FLdPr Me
  loc_BD7968: MemLdRfVar from_stack_1.global_52
  loc_BD796B: NewIfNullPr clsordenpago
  loc_BD796E: from_stack_1v = clsordenpago.RsFrmGet()
  loc_BD7973: FLdPr var_A0
  loc_BD7976:  = Me.Fields
  loc_BD797B: FLdPr var_A4
  loc_BD797E: from_stack_2 = Me.Item(from_stack_1)
  loc_BD7983: FLdPr var_B8
  loc_BD7986:  = Me.Value
  loc_BD798B: FLdRfVar var_C8
  loc_BD798E: CStrVarTmp
  loc_BD798F: CVarStr var_E0
  loc_BD7992: PopAdLdVar
  loc_BD7993: ImpAdLdRf MemVar_C3D898
  loc_BD7996: NewIfNullPr dlgImpresionAutomaticadeCheques
  loc_BD7999: VCallAd Control_ID_HastaNumeOrpaMsk
  loc_BD799C: FStAdFunc var_138
  loc_BD799F: FLdPr var_138
  loc_BD79A2: LateIdSt
  loc_BD79A7: FFreeAd var_A0 = "": var_A4 = "": var_B8 = ""
  loc_BD79B2: FFreeVar var_C8 = ""
  loc_BD79B9: LitVar_Missing var_15C
  loc_BD79BC: PopAdLdVar
  loc_BD79BD: LitVarI4
  loc_BD79C5: PopAdLdVar
  loc_BD79C6: ImpAdLdRf MemVar_C3D898
  loc_BD79C9: NewIfNullPr dlgImpresionAutomaticadeCheques
  loc_BD79CC: dlgImpresionAutomaticadeCheques.Show from_stack_1, from_stack_2
  loc_BD79D1: Call cmdCancelar_Click()
  loc_BD79D6: Branch loc_BD7A30
  loc_BD79D9: ILdRf var_98
  loc_BD79DC: LitStr "btnAyuda"
  loc_BD79DF: EqStr
  loc_BD79E1: BranchF loc_BD7A10
  loc_BD79E4: LitVar_Missing var_100
  loc_BD79E7: LitVar_Missing var_F0
  loc_BD79EA: LitVar_Missing var_E0
  loc_BD79ED: LitI4 0
  loc_BD79F2: LitVarStr var_B4, "Opción no disponible en esta versión."
  loc_BD79F7: FStVarCopyObj var_C8
  loc_BD79FA: FLdRfVar var_C8
  loc_BD79FD: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BD7A02: FFreeVar var_C8 = "": var_E0 = "": var_F0 = ""
  loc_BD7A0D: Branch loc_BD7A30
  loc_BD7A10: ILdRf var_98
  loc_BD7A13: LitStr "btnSalir"
  loc_BD7A16: EqStr
  loc_BD7A18: BranchF loc_BD7A30
  loc_BD7A1B: ILdRf Me
  loc_BD7A1E: FStAdNoPop
  loc_BD7A22: ImpAdLdRf MemVar_C44F9C
  loc_BD7A25: NewIfNullPr Me
  loc_BD7A28: Me.Global.Unload from_stack_1
  loc_BD7A2D: FFree1Ad var_A0
  loc_BD7A30: ExitProcHresult
  loc_BD7A31: StAryRecMove
End Sub

Private Sub cmdEliminar_Click() 'A34970
  'Data Table: 4B2A08
  loc_A3479C: FLdPr Me
  loc_A3479F: MemLdUI1 global_64
  loc_A347A3: CI2UI1
  loc_A347A5: LitI2_Byte 1
  loc_A347A7: EqI2
  loc_A347A8: BranchF loc_A3496C
  loc_A347AB: FLdPr Me
  loc_A347AE: VCallAd Control_ID_FlexCheque
  loc_A347B1: FStAdFunc var_88
  loc_A347B4: FLdPr var_88
  loc_A347B7: LateIdLdVar var_98 DispID_10 0
  loc_A347BE: CI4Var
  loc_A347C0: CVarI4
  loc_A347C4: PopAdLdVar
  loc_A347C5: LitVarI4
  loc_A347CD: PopAdLdVar
  loc_A347CE: FLdPr Me
  loc_A347D1: VCallAd Control_ID_FlexCheque
  loc_A347D4: FStAdFunc var_DC
  loc_A347D7: FLdPr var_DC
  loc_A347DA: LateIdCallLdVar
  loc_A347E4: CStrVarTmp
  loc_A347E5: FStStrNoPop var_F0
  loc_A347E8: LitStr "Manual"
  loc_A347EB: EqStr
  loc_A347ED: FLdPr Me
  loc_A347F0: VCallAd Control_ID_FlexCheque
  loc_A347F3: FStAdFunc var_F4
  loc_A347F6: FLdPr var_F4
  loc_A347F9: LateIdLdVar var_104 DispID_10 0
  loc_A34800: CI4Var
  loc_A34802: CVarI4
  loc_A34806: PopAdLdVar
  loc_A34807: LitVarI4
  loc_A3480F: PopAdLdVar
  loc_A34810: FLdPr Me
  loc_A34813: VCallAd Control_ID_FlexCheque
  loc_A34816: FStAdFunc var_148
  loc_A34819: FLdPr var_148
  loc_A3481C: LateIdCallLdVar
  loc_A34826: CStrVarTmp
  loc_A34827: FStStrNoPop var_15C
  loc_A3482A: LitStr "eCheq"
  loc_A3482D: EqStr
  loc_A3482F: OrI4
  loc_A34830: FLdPr Me
  loc_A34833: VCallAd Control_ID_FlexCheque
  loc_A34836: FStAdFunc var_160
  loc_A34839: FLdPr var_160
  loc_A3483C: LateIdLdVar var_170 DispID_10 0
  loc_A34843: CI4Var
  loc_A34845: CVarI4
  loc_A34849: PopAdLdVar
  loc_A3484A: LitVarI4
  loc_A34852: PopAdLdVar
  loc_A34853: FLdPr Me
  loc_A34856: VCallAd Control_ID_FlexCheque
  loc_A34859: FStAdFunc var_1B4
  loc_A3485C: FLdPr var_1B4
  loc_A3485F: LateIdCallLdVar
  loc_A34869: CStrVarTmp
  loc_A3486A: FStStrNoPop var_1C8
  loc_A3486D: LitStr "0"
  loc_A34870: EqStr
  loc_A34872: OrI4
  loc_A34873: FLdPr Me
  loc_A34876: VCallAd Control_ID_FlexCheque
  loc_A34879: FStAdFunc var_1CC
  loc_A3487C: FLdPr var_1CC
  loc_A3487F: LateIdLdVar var_1DC DispID_10 0
  loc_A34886: CI4Var
  loc_A34888: CVarI4
  loc_A3488C: PopAdLdVar
  loc_A3488D: LitVarI4
  loc_A34895: PopAdLdVar
  loc_A34896: FLdPr Me
  loc_A34899: VCallAd Control_ID_FlexCheque
  loc_A3489C: FStAdFunc var_220
  loc_A3489F: FLdPr var_220
  loc_A348A2: LateIdCallLdVar
  loc_A348AC: CStrVarTmp
  loc_A348AD: FStStrNoPop var_234
  loc_A348B0: LitStr vbNullString
  loc_A348B3: EqStr
  loc_A348B5: OrI4
  loc_A348B6: FFreeStr var_F0 = "": var_15C = "": var_1C8 = ""
  loc_A348C1: FFreeAd var_88 = "": var_DC = "": var_F4 = "": var_148 = "": var_160 = "": var_1B4 = "": var_1CC = ""
  loc_A348D4: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_158 = "": var_170 = "": var_1C4 = "": var_1DC = ""
  loc_A348E7: BranchF loc_A3496C
  loc_A348EA: FLdPr Me
  loc_A348ED: VCallAd Control_ID_FlexCheque
  loc_A348F0: FStAdFunc var_88
  loc_A348F3: FLdPr var_88
  loc_A348F6: LateIdLdVar var_98 DispID_10 0
  loc_A348FD: CI4Var
  loc_A348FF: CVarI4
  loc_A34903: PopAdLdVar
  loc_A34904: LitVarI4
  loc_A3490C: PopAdLdVar
  loc_A3490D: FLdPr Me
  loc_A34910: VCallAd Control_ID_FlexCheque
  loc_A34913: FStAdFunc var_DC
  loc_A34916: FLdPr var_DC
  loc_A34919: LateIdCallLdVar
  loc_A34923: CStrVarTmp
  loc_A34924: FStStrNoPop var_F0
  loc_A34927: LitStr "Si"
  loc_A3492A: EqStr
  loc_A3492C: FFree1Str var_F0
  loc_A3492F: FFreeAd var_88 = ""
  loc_A34936: FFreeVar var_98 = ""
  loc_A3493D: BranchF loc_A34967
  loc_A34940: LitI4 0
  loc_A34945: LitStr "No se puede modificar el cheque esta dado de baja."
  loc_A34948: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A3494D: FLdPr Me
  loc_A34950: VCallAd Control_ID_FlexCheque
  loc_A34953: FStAdFunc var_88
  loc_A34956: FLdPr var_88
  loc_A34959: LateIdCall
  loc_A34961: FFree1Ad var_88
  loc_A34964: Branch loc_A3496C
  loc_A34967: Call Proc_113_37_B25F94()
  loc_A3496C: ExitProcHresult
  loc_A3496D: FStStrNoPop var_F4
End Sub

Private Sub cmdBorrarNoalaOrden_Click() 'A76A94
  'Data Table: 4B2A08
  loc_A76730: FLdPr Me
  loc_A76733: MemLdUI1 global_64
  loc_A76737: CI2UI1
  loc_A76739: LitI2_Byte 1
  loc_A7673B: EqI2
  loc_A7673C: BranchF loc_A76A92
  loc_A7673F: FLdPr Me
  loc_A76742: VCallAd Control_ID_FlexCheque
  loc_A76745: FStAdFunc var_88
  loc_A76748: FLdPr var_88
  loc_A7674B: LateIdLdVar var_98 DispID_10 0
  loc_A76752: CI4Var
  loc_A76754: CVarI4
  loc_A76758: PopAdLdVar
  loc_A76759: LitVarI4
  loc_A76761: PopAdLdVar
  loc_A76762: FLdPr Me
  loc_A76765: VCallAd Control_ID_FlexCheque
  loc_A76768: FStAdFunc var_DC
  loc_A7676B: FLdPr var_DC
  loc_A7676E: LateIdCallLdVar
  loc_A76778: CStrVarTmp
  loc_A76779: FStStrNoPop var_F0
  loc_A7677C: LitStr "Manual"
  loc_A7677F: EqStr
  loc_A76781: FLdPr Me
  loc_A76784: VCallAd Control_ID_FlexCheque
  loc_A76787: FStAdFunc var_F4
  loc_A7678A: FLdPr var_F4
  loc_A7678D: LateIdLdVar var_104 DispID_10 0
  loc_A76794: CI4Var
  loc_A76796: CVarI4
  loc_A7679A: PopAdLdVar
  loc_A7679B: LitVarI4
  loc_A767A3: PopAdLdVar
  loc_A767A4: FLdPr Me
  loc_A767A7: VCallAd Control_ID_FlexCheque
  loc_A767AA: FStAdFunc var_148
  loc_A767AD: FLdPr var_148
  loc_A767B0: LateIdCallLdVar
  loc_A767BA: CStrVarTmp
  loc_A767BB: FStStrNoPop var_15C
  loc_A767BE: LitStr "Impreso"
  loc_A767C1: EqStr
  loc_A767C3: FLdPr Me
  loc_A767C6: VCallAd Control_ID_FlexCheque
  loc_A767C9: FStAdFunc var_160
  loc_A767CC: FLdPr var_160
  loc_A767CF: LateIdLdVar var_170 DispID_10 0
  loc_A767D6: CI4Var
  loc_A767D8: CVarI4
  loc_A767DC: PopAdLdVar
  loc_A767DD: LitVarI4
  loc_A767E5: PopAdLdVar
  loc_A767E6: FLdPr Me
  loc_A767E9: VCallAd Control_ID_FlexCheque
  loc_A767EC: FStAdFunc var_1B4
  loc_A767EF: FLdPr var_1B4
  loc_A767F2: LateIdCallLdVar
  loc_A767FC: CStrVarTmp
  loc_A767FD: FStStrNoPop var_1C8
  loc_A76800: LitStr "0"
  loc_A76803: EqStr
  loc_A76805: FLdPr Me
  loc_A76808: VCallAd Control_ID_FlexCheque
  loc_A7680B: FStAdFunc var_1CC
  loc_A7680E: FLdPr var_1CC
  loc_A76811: LateIdLdVar var_1DC DispID_10 0
  loc_A76818: CI4Var
  loc_A7681A: CVarI4
  loc_A7681E: PopAdLdVar
  loc_A7681F: LitVarI4
  loc_A76827: PopAdLdVar
  loc_A76828: FLdPr Me
  loc_A7682B: VCallAd Control_ID_FlexCheque
  loc_A7682E: FStAdFunc var_220
  loc_A76831: FLdPr var_220
  loc_A76834: LateIdCallLdVar
  loc_A7683E: CStrVarTmp
  loc_A7683F: FStStrNoPop var_234
  loc_A76842: LitStr vbNullString
  loc_A76845: EqStr
  loc_A76847: OrI4
  loc_A76848: AndI4
  loc_A76849: OrI4
  loc_A7684A: FLdPr Me
  loc_A7684D: VCallAd Control_ID_FlexCheque
  loc_A76850: FStAdFunc var_238
  loc_A76853: FLdPr var_238
  loc_A76856: LateIdLdVar var_248 DispID_10 0
  loc_A7685D: CI4Var
  loc_A7685F: CVarI4
  loc_A76863: PopAdLdVar
  loc_A76864: LitVarI4
  loc_A7686C: PopAdLdVar
  loc_A7686D: FLdPr Me
  loc_A76870: VCallAd Control_ID_FlexCheque
  loc_A76873: FStAdFunc var_28C
  loc_A76876: FLdPr var_28C
  loc_A76879: LateIdCallLdVar
  loc_A76883: CStrVarTmp
  loc_A76884: FStStrNoPop var_2A0
  loc_A76887: LitStr "Transferencia"
  loc_A7688A: EqStr
  loc_A7688C: FLdPr Me
  loc_A7688F: VCallAd Control_ID_FlexCheque
  loc_A76892: FStAdFunc var_2A4
  loc_A76895: FLdPr var_2A4
  loc_A76898: LateIdLdVar var_2B4 DispID_10 0
  loc_A7689F: CI4Var
  loc_A768A1: CVarI4
  loc_A768A5: PopAdLdVar
  loc_A768A6: LitVarI4
  loc_A768AE: PopAdLdVar
  loc_A768AF: FLdPr Me
  loc_A768B2: VCallAd Control_ID_FlexCheque
  loc_A768B5: FStAdFunc var_2F8
  loc_A768B8: FLdPr var_2F8
  loc_A768BB: LateIdCallLdVar
  loc_A768C5: CStrVarTmp
  loc_A768C6: FStStrNoPop var_30C
  loc_A768C9: LitStr "0"
  loc_A768CC: EqStr
  loc_A768CE: FLdPr Me
  loc_A768D1: VCallAd Control_ID_FlexCheque
  loc_A768D4: FStAdFunc var_310
  loc_A768D7: FLdPr var_310
  loc_A768DA: LateIdLdVar var_320 DispID_10 0
  loc_A768E1: CI4Var
  loc_A768E3: CVarI4
  loc_A768E7: PopAdLdVar
  loc_A768E8: LitVarI4
  loc_A768F0: PopAdLdVar
  loc_A768F1: FLdPr Me
  loc_A768F4: VCallAd Control_ID_FlexCheque
  loc_A768F7: FStAdFunc var_364
  loc_A768FA: FLdPr var_364
  loc_A768FD: LateIdCallLdVar
  loc_A76907: CStrVarTmp
  loc_A76908: FStStrNoPop var_378
  loc_A7690B: LitStr vbNullString
  loc_A7690E: EqStr
  loc_A76910: OrI4
  loc_A76911: AndI4
  loc_A76912: OrI4
  loc_A76913: FFreeStr var_F0 = "": var_15C = "": var_1C8 = "": var_234 = "": var_2A0 = "": var_30C = ""
  loc_A76924: FFreeAd var_88 = "": var_DC = "": var_F4 = "": var_148 = "": var_160 = "": var_1B4 = "": var_1CC = "": var_220 = "": var_238 = "": var_28C = "": var_2A4 = "": var_2F8 = "": var_310 = ""
  loc_A76943: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_158 = "": var_170 = "": var_1C4 = "": var_1DC = "": var_230 = "": var_248 = "": var_29C = "": var_2B4 = "": var_308 = "": var_320 = ""
  loc_A76962: BranchF loc_A76A92
  loc_A76965: FLdPr Me
  loc_A76968: VCallAd Control_ID_FlexCheque
  loc_A7696B: FStAdFunc var_88
  loc_A7696E: FLdPr var_88
  loc_A76971: LateIdLdVar var_98 DispID_10 0
  loc_A76978: CI4Var
  loc_A7697A: CVarI4
  loc_A7697E: PopAdLdVar
  loc_A7697F: LitVarI4
  loc_A76987: PopAdLdVar
  loc_A76988: FLdPr Me
  loc_A7698B: VCallAd Control_ID_FlexCheque
  loc_A7698E: FStAdFunc var_DC
  loc_A76991: FLdPr var_DC
  loc_A76994: LateIdCallLdVar
  loc_A7699E: CStrVarTmp
  loc_A7699F: FStStrNoPop var_F0
  loc_A769A2: LitStr "Si"
  loc_A769A5: EqStr
  loc_A769A7: FFree1Str var_F0
  loc_A769AA: FFreeAd var_88 = ""
  loc_A769B1: FFreeVar var_98 = ""
  loc_A769B8: BranchF loc_A769E2
  loc_A769BB: LitI4 0
  loc_A769C0: LitStr "No se puede modificar el cheque esta dado de baja."
  loc_A769C3: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A769C8: FLdPr Me
  loc_A769CB: VCallAd Control_ID_FlexCheque
  loc_A769CE: FStAdFunc var_88
  loc_A769D1: FLdPr var_88
  loc_A769D4: LateIdCall
  loc_A769DC: FFree1Ad var_88
  loc_A769DF: Branch loc_A76A92
  loc_A769E2: FLdPr Me
  loc_A769E5: VCallAd Control_ID_FlexCheque
  loc_A769E8: FStAdFunc var_88
  loc_A769EB: FLdPr var_88
  loc_A769EE: LateIdLdVar var_98 DispID_10 0
  loc_A769F5: CI4Var
  loc_A769F7: CVarI4
  loc_A769FB: PopAdLdVar
  loc_A769FC: LitVarI4
  loc_A76A04: PopAdLdVar
  loc_A76A05: FLdPr Me
  loc_A76A08: VCallAd Control_ID_FlexCheque
  loc_A76A0B: FStAdFunc var_DC
  loc_A76A0E: FLdPr var_DC
  loc_A76A11: LateIdCallLdVar
  loc_A76A1B: PopAd
  loc_A76A1D: FLdPr Me
  loc_A76A20: VCallAd Control_ID_FlexCheque
  loc_A76A23: FStAdFunc var_F4
  loc_A76A26: FLdPr var_F4
  loc_A76A29: LateIdLdVar var_104 DispID_10 0
  loc_A76A30: CI4Var
  loc_A76A32: CVarI4
  loc_A76A36: PopAdLdVar
  loc_A76A37: LitVarI4
  loc_A76A3F: PopAdLdVar
  loc_A76A40: LitI4 0
  loc_A76A45: LitI4 -1
  loc_A76A4A: LitI4 1
  loc_A76A4F: LitStr vbNullString
  loc_A76A52: LitStr " - NO A LA ORDEN"
  loc_A76A55: FLdRfVar var_EC
  loc_A76A58: CStrVarTmp
  loc_A76A59: FStStrNoPop var_F0
  loc_A76A5C: ImpAdCallI2 Replace(, , , , , )
  loc_A76A61: CVarStr var_158
  loc_A76A64: PopAdLdVar
  loc_A76A65: FLdPr Me
  loc_A76A68: VCallAd Control_ID_FlexCheque
  loc_A76A6B: FStAdFunc var_148
  loc_A76A6E: FLdPr var_148
  loc_A76A71: LateIdCallSt
  loc_A76A79: FFree1Str var_F0
  loc_A76A7C: FFreeAd var_88 = "": var_DC = "": var_F4 = ""
  loc_A76A87: FFreeVar var_98 = "": var_EC = "": var_104 = ""
  loc_A76A92: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_0 '962678
  'Data Table: 4B2A08
  loc_962660: FLdPr Me
  loc_962663: VCallAd Control_ID_dgdABMS
  loc_962666: FStAdFunc var_88
  loc_962669: FLdRfVar var_88
  loc_96266C: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_962671: FFree1Ad var_88
  loc_962674: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9625E0
  'Data Table: 4B2A08
  loc_9625C8: FLdPr Me
  loc_9625CB: VCallAd Control_ID_dgdABMS
  loc_9625CE: FStAdFunc var_88
  loc_9625D1: FLdRfVar var_88
  loc_9625D4: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_9625D9: FFree1Ad var_88
  loc_9625DC: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) '9999D8
  'Data Table: 4B2A08
  loc_99997C: FLdRfVar var_B4
  loc_99997F: FLdRfVar var_B0
  loc_999982: FLdI2 ColIndex
  loc_999985: CVarI2 var_A8
  loc_999988: PopAdLdVar
  loc_999989: FLdPr Me
  loc_99998C: VCallAd Control_ID_dgdABMS
  loc_99998F: FStAdFunc var_88
  loc_999992: FLdPr var_88
  loc_999995: LateIdLdVar var_98 DispID_105 0
  loc_99999C: CastAdVar Me
  loc_9999A0: FStAdFunc var_AC
  loc_9999A3: FLdPr var_AC
  loc_9999A6: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_9999AB: FLdPr var_B0
  loc_9999AE:  = Me.DataField
  loc_9999B3: FLdZeroAd var_B4
  loc_9999B6: PopTmpLdAdStr
  loc_9999BA: FLdPr Me
  loc_9999BD: MemLdRfVar from_stack_1.global_52
  loc_9999C0: NewIfNullPr clsordenpago
  loc_9999C3: Call clsordenpago.Sort(from_stack_1v)
  loc_9999C8: FFree1Str var_B8
  loc_9999CB: FFreeAd var_88 = "": var_AC = ""
  loc_9999D4: FFree1Var var_98 = ""
  loc_9999D7: ExitProcHresult
End Sub

Private Sub dgdABMS_RowColChange(LastRow As Variant, LastCol As Integer) '99F770
  'Data Table: 4B2A08
  loc_99F6F8: FLdRfVar var_88
  loc_99F6FB: FLdPr Me
  loc_99F6FE: MemLdRfVar from_stack_1.global_52
  loc_99F701: NewIfNullPr clsordenpago
  loc_99F704: from_stack_1 = clsordenpago.RecordCount
  loc_99F709: ILdRf var_88
  loc_99F70C: LitI4 0
  loc_99F711: GtI4
  loc_99F712: BranchF loc_99F767
  loc_99F715: FLdRfVar var_8A
  loc_99F718: FLdPr Me
  loc_99F71B: MemLdRfVar from_stack_1.global_52
  loc_99F71E: NewIfNullPr clsordenpago
  loc_99F721: from_stack_1 = clsordenpago.EOF
  loc_99F726: FLdI2 var_8A
  loc_99F729: BranchF loc_99F73A
  loc_99F72C: FLdPr Me
  loc_99F72F: MemLdRfVar from_stack_1.global_52
  loc_99F732: NewIfNullPr clsordenpago
  loc_99F735: Call clsordenpago.MoveLast()
  loc_99F73A: FLdRfVar var_8A
  loc_99F73D: FLdPr Me
  loc_99F740: MemLdRfVar from_stack_1.global_52
  loc_99F743: NewIfNullPr clsordenpago
  loc_99F746: from_stack_1 = clsordenpago.BOF
  loc_99F74B: FLdI2 var_8A
  loc_99F74E: BranchF loc_99F75F
  loc_99F751: FLdPr Me
  loc_99F754: MemLdRfVar from_stack_1.global_52
  loc_99F757: NewIfNullPr clsordenpago
  loc_99F75A: Call clsordenpago.MoveFirst()
  loc_99F75F: Call Proc_113_36_B68FAC()
  loc_99F764: Branch loc_99F76C
  loc_99F767: Call Proc_113_35_A3BF1C()
  loc_99F76C: ExitProcHresult
End Sub

Private Sub cmdDividirVsChqs_Click() 'B464A4
  'Data Table: 4B2A08
  loc_B45B70: FLdPrThis
  loc_B45B71: VCallAd Control_ID_FlexCheque
  loc_B45B74: FStAdFunc var_8C
  loc_B45B77: FLdPr var_8C
  loc_B45B7A: LateIdLdVar var_9C DispID_10 0
  loc_B45B81: CI4Var
  loc_B45B83: CVarI4
  loc_B45B87: PopAdLdVar
  loc_B45B88: LitVarI4
  loc_B45B90: PopAdLdVar
  loc_B45B91: FLdPrThis
  loc_B45B92: VCallAd Control_ID_FlexCheque
  loc_B45B95: FStAdFunc var_E0
  loc_B45B98: FLdPr var_E0
  loc_B45B9B: LateIdCallLdVar
  loc_B45BA5: CStrVarTmp
  loc_B45BA6: FStStrNoPop var_F4
  loc_B45BA9: LitStr vbNullString
  loc_B45BAC: EqStr
  loc_B45BAE: FLdPrThis
  loc_B45BAF: VCallAd Control_ID_FlexCheque
  loc_B45BB2: FStAdFunc var_F8
  loc_B45BB5: FLdPr var_F8
  loc_B45BB8: LateIdLdVar var_108 DispID_10 0
  loc_B45BBF: CI4Var
  loc_B45BC1: CVarI4
  loc_B45BC5: PopAdLdVar
  loc_B45BC6: LitVarI4
  loc_B45BCE: PopAdLdVar
  loc_B45BCF: FLdPrThis
  loc_B45BD0: VCallAd Control_ID_FlexCheque
  loc_B45BD3: FStAdFunc var_14C
  loc_B45BD6: FLdPr var_14C
  loc_B45BD9: LateIdCallLdVar
  loc_B45BE3: CStrVarTmp
  loc_B45BE4: FStStrNoPop var_160
  loc_B45BE7: LitStr "0"
  loc_B45BEA: EqStr
  loc_B45BEC: OrI4
  loc_B45BED: FFreeStr var_F4 = ""
  loc_B45BF4: FFreeAd var_8C = "": var_E0 = "": var_F8 = ""
  loc_B45BFF: FFreeVar var_9C = "": var_F0 = "": var_108 = ""
  loc_B45C0A: BranchF loc_B46494
  loc_B45C0D: LitI2_Byte 0
  loc_B45C0F: PopTmpLdAd2 var_164
  loc_B45C12: LitI2_Byte &HFF
  loc_B45C14: PopTmpLdAd2 var_162
  loc_B45C17: LitStr "¿Importa el CSV?"
  loc_B45C1A: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_B45C1F: CI4UI1
  loc_B45C20: LitI4 6
  loc_B45C25: EqI4
  loc_B45C26: BranchF loc_B46491
  loc_B45C29: FLdRfVar var_F4
  loc_B45C2C: FLdRfVar var_168
  loc_B45C2F: NewIfNullPr clscheque
  loc_B45C32: from_stack_1v = clscheque.DividirVariosCheques()
  loc_B45C37: ILdRf var_F4
  loc_B45C3A: FLdPr Me
  loc_B45C3D: MemStStrCopy
  loc_B45C41: FFree1Str var_F4
  loc_B45C44: FLdPr Me
  loc_B45C47: MemLdStr global_68
  loc_B45C4A: LitStr vbNullString
  loc_B45C4D: NeStr
  loc_B45C4F: BranchF loc_B45C65
  loc_B45C52: LitI4 0
  loc_B45C57: FLdPr Me
  loc_B45C5A: MemLdStr global_68
  loc_B45C5D: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B45C62: Branch loc_B46491
  loc_B45C65: LitStr "SELECT IFNULL(Max(SecuCheq),0) SecuCheq FROM cheque WHERE PeriInfo = "
  loc_B45C68: ImpAdLdI2 MemVar_C3D064
  loc_B45C6B: CStrUI1
  loc_B45C6D: FStStrNoPop var_F4
  loc_B45C70: ConcatStr
  loc_B45C71: FStStrNoPop var_160
  loc_B45C74: LitStr " AND NumeOrpa = "
  loc_B45C77: ConcatStr
  loc_B45C78: CVarStr var_F0
  loc_B45C7B: FLdRfVar var_9C
  loc_B45C7E: FLdRfVar var_F8
  loc_B45C81: LitVarStr var_AC, "NumeOrpa"
  loc_B45C86: PopAdLdVar
  loc_B45C87: FLdRfVar var_E0
  loc_B45C8A: FLdRfVar var_8C
  loc_B45C8D: FLdPr Me
  loc_B45C90: MemLdRfVar from_stack_1.global_52
  loc_B45C93: NewIfNullPr clsordenpago
  loc_B45C96: from_stack_1v = clsordenpago.RsFrmGet()
  loc_B45C9B: FLdPr var_8C
  loc_B45C9E:  = Me.Fields
  loc_B45CA3: FLdPr var_E0
  loc_B45CA6: from_stack_2 = Me.Item(from_stack_1)
  loc_B45CAB: FLdPr var_F8
  loc_B45CAE:  = Me.Value
  loc_B45CB3: FLdRfVar var_9C
  loc_B45CB6: ConcatVar var_108
  loc_B45CBA: CStrVarVal var_174
  loc_B45CBE: FLdRfVar var_168
  loc_B45CC1: NewIfNullPr clscheque
  loc_B45CC4: Call clscheque.RedefineRS(from_stack_1v)
  loc_B45CC9: FFreeStr var_F4 = "": var_160 = ""
  loc_B45CD2: FFreeAd var_8C = "": var_E0 = ""
  loc_B45CDB: FFreeVar var_F0 = "": var_9C = ""
  loc_B45CE4: FLdRfVar var_9C
  loc_B45CE7: FLdRfVar var_F8
  loc_B45CEA: LitVarStr var_AC, "SecuCheq"
  loc_B45CEF: PopAdLdVar
  loc_B45CF0: FLdRfVar var_E0
  loc_B45CF3: FLdRfVar var_8C
  loc_B45CF6: FLdRfVar var_168
  loc_B45CF9: NewIfNullPr clscheque
  loc_B45CFC: from_stack_1v = clscheque.RsFrmGet()
  loc_B45D01: FLdPr var_8C
  loc_B45D04:  = Me.Fields
  loc_B45D09: FLdPr var_E0
  loc_B45D0C: from_stack_2 = Me.Item(from_stack_1)
  loc_B45D11: FLdPr var_F8
  loc_B45D14:  = Me.Value
  loc_B45D19: FLdRfVar var_9C
  loc_B45D1C: CStrVarTmp
  loc_B45D1D: FStStr var_88
  loc_B45D20: FFreeAd var_8C = "": var_E0 = ""
  loc_B45D29: FFree1Var var_9C = ""
  loc_B45D2C: LitStr "UPDATE ttdivcheque SET importe=Replace(importe,',','.');"
  loc_B45D2F: FLdRfVar var_168
  loc_B45D32: NewIfNullPr clscheque
  loc_B45D35: Call clscheque.RedefineRS(from_stack_1v)
  loc_B45D3A: LitStr "SELECT Sum(Convert(importe, decimal(12,2))) Total"
  loc_B45D3D: LitStr " FROM ttdivcheque dc"
  loc_B45D40: ConcatStr
  loc_B45D41: FStStrNoPop var_F4
  loc_B45D44: LitStr " WHERE dc.nombre != '' AND dc.importe != ''"
  loc_B45D47: ConcatStr
  loc_B45D48: FStStrNoPop var_160
  loc_B45D4B: FLdRfVar var_168
  loc_B45D4E: NewIfNullPr clscheque
  loc_B45D51: Call clscheque.RedefineRS(from_stack_1v)
  loc_B45D56: FFreeStr var_F4 = ""
  loc_B45D5D: FLdRfVar var_178
  loc_B45D60: FLdRfVar var_168
  loc_B45D63: NewIfNullPr clscheque
  loc_B45D66: from_stack_1 = clscheque.RecordCount
  loc_B45D6B: ILdRf var_178
  loc_B45D6E: LitI4 0
  loc_B45D73: GtI4
  loc_B45D74: BranchF loc_B46491
  loc_B45D77: FLdRfVar var_9C
  loc_B45D7A: FLdRfVar var_F8
  loc_B45D7D: LitVarStr var_AC, "Total"
  loc_B45D82: PopAdLdVar
  loc_B45D83: FLdRfVar var_E0
  loc_B45D86: FLdRfVar var_8C
  loc_B45D89: FLdRfVar var_168
  loc_B45D8C: NewIfNullPr clscheque
  loc_B45D8F: from_stack_1v = clscheque.RsFrmGet()
  loc_B45D94: FLdPr var_8C
  loc_B45D97:  = Me.Fields
  loc_B45D9C: FLdPr var_E0
  loc_B45D9F: from_stack_2 = Me.Item(from_stack_1)
  loc_B45DA4: FLdPr var_F8
  loc_B45DA7:  = Me.Value
  loc_B45DAC: FLdRfVar var_9C
  loc_B45DAF: CR4Var
  loc_B45DB0: FStFPR8 var_170
  loc_B45DB3: FFreeAd var_8C = "": var_E0 = ""
  loc_B45DBC: FFree1Var var_9C = ""
  loc_B45DBF: FLdPrThis
  loc_B45DC0: VCallAd Control_ID_FlexCheque
  loc_B45DC3: FStAdFunc var_8C
  loc_B45DC6: FLdPr var_8C
  loc_B45DC9: LateIdLdVar var_9C DispID_10 0
  loc_B45DD0: CI4Var
  loc_B45DD2: CVarI4
  loc_B45DD6: PopAdLdVar
  loc_B45DD7: LitVarI4
  loc_B45DDF: PopAdLdVar
  loc_B45DE0: FLdPrThis
  loc_B45DE1: VCallAd Control_ID_FlexCheque
  loc_B45DE4: FStAdFunc var_E0
  loc_B45DE7: FLdPr var_E0
  loc_B45DEA: LateIdCallLdVar
  loc_B45DF4: CStrVarTmp
  loc_B45DF5: FStStrNoPop var_F4
  loc_B45DF8: CR8Str
  loc_B45DFA: FLdFPR8 var_170
  loc_B45DFD: FnCDblR8
  loc_B45DFF: LtR8
  loc_B45E00: FFree1Str var_F4
  loc_B45E03: FFreeAd var_8C = ""
  loc_B45E0A: FFreeVar var_9C = ""
  loc_B45E11: BranchF loc_B45E24
  loc_B45E14: LitI4 0
  loc_B45E19: LitStr "El importe a dividir es menor al total del archivo. Verifique..."
  loc_B45E1C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B45E21: Branch loc_B46491
  loc_B45E24: LitI2_Byte &HFF
  loc_B45E26: PopTmpLdAd2 var_164
  loc_B45E29: LitI2_Byte &HFF
  loc_B45E2B: PopTmpLdAd2 var_162
  loc_B45E2E: LitStr "Total del archivo $ "
  loc_B45E31: FLdFPR8 var_170
  loc_B45E34: CStrR8
  loc_B45E36: FStStrNoPop var_F4
  loc_B45E39: ConcatStr
  loc_B45E3A: FStStrNoPop var_160
  loc_B45E3D: LitStr ". Desea continuar ?..."
  loc_B45E40: ConcatStr
  loc_B45E41: FStStrNoPop var_174
  loc_B45E44: ImpAdCallI2 Proc_261_29_9CDF34(, , )
  loc_B45E49: CI4UI1
  loc_B45E4A: LitI4 6
  loc_B45E4F: EqI4
  loc_B45E50: FFreeStr var_F4 = "": var_160 = ""
  loc_B45E59: BranchF loc_B46491
  loc_B45E5C: LitStr "SELECT dc.*"
  loc_B45E5F: LitStr " FROM ttdivcheque dc"
  loc_B45E62: ConcatStr
  loc_B45E63: FStStrNoPop var_F4
  loc_B45E66: LitStr " WHERE dc.nombre != '' AND dc.importe != ''"
  loc_B45E69: ConcatStr
  loc_B45E6A: FStStrNoPop var_160
  loc_B45E6D: FLdRfVar var_168
  loc_B45E70: NewIfNullPr clscheque
  loc_B45E73: Call clscheque.RedefineRS(from_stack_1v)
  loc_B45E78: FFreeStr var_F4 = ""
  loc_B45E7F: FLdRfVar var_178
  loc_B45E82: FLdRfVar var_168
  loc_B45E85: NewIfNullPr clscheque
  loc_B45E88: from_stack_1 = clscheque.RecordCount
  loc_B45E8D: ILdRf var_178
  loc_B45E90: LitI4 0
  loc_B45E95: GtI4
  loc_B45E96: BranchF loc_B4648E
  loc_B45E99: FLdRfVar var_168
  loc_B45E9C: NewIfNullPr clscheque
  loc_B45E9F: Call clscheque.MoveFirst()
  loc_B45EA4: FLdRfVar var_162
  loc_B45EA7: FLdRfVar var_168
  loc_B45EAA: NewIfNullPr clscheque
  loc_B45EAD: from_stack_1 = clscheque.EOF
  loc_B45EB2: FLdI2 var_162
  loc_B45EB5: NotI4
  loc_B45EB6: BranchF loc_B46368
  loc_B45EB9: ILdRf var_88
  loc_B45EBC: CR8Str
  loc_B45EBE: LitI2_Byte 1
  loc_B45EC0: CR8I2
  loc_B45EC1: AddR8
  loc_B45EC2: CStrR8
  loc_B45EC4: FStStr var_88
  loc_B45EC7: LitStr "Municipalidad de Guaymallén"
  loc_B45ECA: FStStrCopy var_17C
  loc_B45ECD: ILdRf var_17C
  loc_B45ED0: LitStr "Municipalidad de Maipú"
  loc_B45ED3: EqStr
  loc_B45ED5: BranchT loc_B45EEE
  loc_B45ED8: ILdRf var_17C
  loc_B45EDB: LitStr "Municipalidad de Tunuyán"
  loc_B45EDE: EqStr
  loc_B45EE0: BranchT loc_B45EEE
  loc_B45EE3: ILdRf var_17C
  loc_B45EE6: LitStr "Municipalidad de Guaymallén"
  loc_B45EE9: EqStr
  loc_B45EEB: BranchF loc_B45EFB
  loc_B45EEE: LitStr " - NO A LA ORDEN"
  loc_B45EF1: FLdPr Me
  loc_B45EF4: MemStStrCopy
  loc_B45EF8: Branch loc_B45F05
  loc_B45EFB: LitStr vbNullString
  loc_B45EFE: FLdPr Me
  loc_B45F01: MemStStrCopy
  loc_B45F05: FLdRfVar var_1EC
  loc_B45F08: FLdRfVar var_1DC
  loc_B45F0B: LitVarStr var_128, "Importe"
  loc_B45F10: PopAdLdVar
  loc_B45F11: FLdRfVar var_1D8
  loc_B45F14: FLdRfVar var_1D4
  loc_B45F17: FLdRfVar var_168
  loc_B45F1A: NewIfNullPr clscheque
  loc_B45F1D: from_stack_1v = clscheque.RsFrmGet()
  loc_B45F22: FLdPr var_1D4
  loc_B45F25:  = Me.Fields
  loc_B45F2A: FLdPr var_1D8
  loc_B45F2D: from_stack_2 = Me.Item(from_stack_1)
  loc_B45F32: FLdPr var_1DC
  loc_B45F35:  = Me.Value
  loc_B45F3A: FLdRfVar var_1EC
  loc_B45F3D: CStrVarTmp
  loc_B45F3E: FStStrNoPop var_F4
  loc_B45F41: ImpAdCallI2 Proc_261_59_995350()
  loc_B45F46: FStStr var_174
  loc_B45F49: FLdRfVar var_478
  loc_B45F4C: FLdRfVar var_468
  loc_B45F4F: LitVarStr var_464, "Importe"
  loc_B45F54: PopAdLdVar
  loc_B45F55: FLdRfVar var_454
  loc_B45F58: FLdRfVar var_450
  loc_B45F5B: FLdRfVar var_168
  loc_B45F5E: NewIfNullPr clscheque
  loc_B45F61: from_stack_1v = clscheque.RsFrmGet()
  loc_B45F66: FLdPr var_450
  loc_B45F69:  = Me.Fields
  loc_B45F6E: FLdPr var_454
  loc_B45F71: from_stack_2 = Me.Item(from_stack_1)
  loc_B45F76: FLdPr var_468
  loc_B45F79:  = Me.Value
  loc_B45F7E: FLdRfVar var_478
  loc_B45F81: CStrVarTmp
  loc_B45F82: FStStrNoPop var_160
  loc_B45F85: ImpAdCallI2 Proc_261_59_995350()
  loc_B45F8A: FStStr var_6DC
  loc_B45F8D: FLdPrThis
  loc_B45F8E: VCallAd Control_ID_FlexCheque
  loc_B45F91: FStAdFunc var_8C
  loc_B45F94: FLdPr var_8C
  loc_B45F97: LateIdLdVar var_9C DispID_10 0
  loc_B45F9E: CI4Var
  loc_B45FA0: CVarI4
  loc_B45FA4: PopAdLdVar
  loc_B45FA5: LitVarI4
  loc_B45FAD: PopAdLdVar
  loc_B45FAE: FLdPrThis
  loc_B45FAF: VCallAd Control_ID_FlexCheque
  loc_B45FB2: FStAdFunc var_E0
  loc_B45FB5: FLdPr var_E0
  loc_B45FB8: LateIdCallLdVar
  loc_B45FC2: CStrVarTmp
  loc_B45FC3: CVarStr var_15C
  loc_B45FC6: LitI4 9
  loc_B45FCB: FLdRfVar var_108
  loc_B45FCE: ImpAdCallFPR4  = Chr()
  loc_B45FD3: FLdRfVar var_108
  loc_B45FD6: ConcatVar var_18C
  loc_B45FDA: FLdRfVar var_1A0
  loc_B45FDD: FLdRfVar var_190
  loc_B45FE0: LitVarStr var_118, "Nombre"
  loc_B45FE5: PopAdLdVar
  loc_B45FE6: FLdRfVar var_14C
  loc_B45FE9: FLdRfVar var_F8
  loc_B45FEC: FLdRfVar var_168
  loc_B45FEF: NewIfNullPr clscheque
  loc_B45FF2: from_stack_1v = clscheque.RsFrmGet()
  loc_B45FF7: FLdPr var_F8
  loc_B45FFA:  = Me.Fields
  loc_B45FFF: FLdPr var_14C
  loc_B46002: from_stack_2 = Me.Item(from_stack_1)
  loc_B46007: FLdPr var_190
  loc_B4600A:  = Me.Value
  loc_B4600F: FLdRfVar var_1A0
  loc_B46012: ConcatVar var_1B0
  loc_B46016: LitI4 9
  loc_B4601B: FLdRfVar var_1C0
  loc_B4601E: ImpAdCallFPR4  = Chr()
  loc_B46023: FLdRfVar var_1C0
  loc_B46026: ConcatVar var_1D0
  loc_B4602A: LitI4 1
  loc_B4602F: LitI4 1
  loc_B46034: LitVarStr var_138, "0.00"
  loc_B46039: FStVarCopyObj var_20C
  loc_B4603C: FLdRfVar var_20C
  loc_B4603F: FLdZeroAd var_174
  loc_B46042: CVarStr var_1FC
  loc_B46045: ImpAdCallI2 Format$(, )
  loc_B4604A: CVarStr var_21C
  loc_B4604D: ConcatVar var_22C
  loc_B46051: LitI4 9
  loc_B46056: FLdRfVar var_23C
  loc_B46059: ImpAdCallFPR4  = Chr()
  loc_B4605E: FLdRfVar var_23C
  loc_B46061: ConcatVar var_24C
  loc_B46065: FLdPrThis
  loc_B46066: VCallAd Control_ID_FlexCheque
  loc_B46069: FStAdFunc var_250
  loc_B4606C: FLdPr var_250
  loc_B4606F: LateIdLdVar var_260 DispID_10 0
  loc_B46076: CI4Var
  loc_B46078: CVarI4
  loc_B4607C: PopAdLdVar
  loc_B4607D: LitVarI4
  loc_B46085: PopAdLdVar
  loc_B46086: FLdPrThis
  loc_B46087: VCallAd Control_ID_FlexCheque
  loc_B4608A: FStAdFunc var_294
  loc_B4608D: FLdPr var_294
  loc_B46090: LateIdCallLdVar
  loc_B4609A: CStrVarTmp
  loc_B4609B: CVarStr var_2B4
  loc_B4609E: ConcatVar var_2C4
  loc_B460A2: LitI4 9
  loc_B460A7: FLdRfVar var_2D4
  loc_B460AA: ImpAdCallFPR4  = Chr()
  loc_B460AF: FLdRfVar var_2D4
  loc_B460B2: ConcatVar var_2E4
  loc_B460B6: LitVarStr var_2F4, "0"
  loc_B460BB: ConcatVar var_304
  loc_B460BF: LitI4 9
  loc_B460C4: FLdRfVar var_314
  loc_B460C7: ImpAdCallFPR4  = Chr()
  loc_B460CC: FLdRfVar var_314
  loc_B460CF: ConcatVar var_324
  loc_B460D3: LitVarStr var_334, "Impreso"
  loc_B460D8: ConcatVar var_344
  loc_B460DC: LitI4 9
  loc_B460E1: FLdRfVar var_354
  loc_B460E4: ImpAdCallFPR4  = Chr()
  loc_B460E9: FLdRfVar var_354
  loc_B460EC: ConcatVar var_364
  loc_B460F0: FLdPrThis
  loc_B460F1: VCallAd Control_ID_FlexCheque
  loc_B460F4: FStAdFunc var_368
  loc_B460F7: FLdPr var_368
  loc_B460FA: LateIdLdVar var_378 DispID_10 0
  loc_B46101: CI4Var
  loc_B46103: CVarI4
  loc_B46107: PopAdLdVar
  loc_B46108: LitVarI4
  loc_B46110: PopAdLdVar
  loc_B46111: FLdPrThis
  loc_B46112: VCallAd Control_ID_FlexCheque
  loc_B46115: FStAdFunc var_3BC
  loc_B46118: FLdPr var_3BC
  loc_B4611B: LateIdCallLdVar
  loc_B46125: CStrVarTmp
  loc_B46126: CVarStr var_3DC
  loc_B46129: ConcatVar var_3EC
  loc_B4612D: LitI4 9
  loc_B46132: FLdRfVar var_3FC
  loc_B46135: ImpAdCallFPR4  = Chr()
  loc_B4613A: FLdRfVar var_3FC
  loc_B4613D: ConcatVar var_40C
  loc_B46141: LitVarStr var_41C, vbNullString
  loc_B46146: ConcatVar var_42C
  loc_B4614A: LitI4 9
  loc_B4614F: FLdRfVar var_43C
  loc_B46152: ImpAdCallFPR4  = Chr()
  loc_B46157: FLdRfVar var_43C
  loc_B4615A: ConcatVar var_44C
  loc_B4615E: LitI4 1
  loc_B46163: LitI4 1
  loc_B46168: LitVarStr var_498, "0.00"
  loc_B4616D: FStVarCopyObj var_4A8
  loc_B46170: FLdRfVar var_4A8
  loc_B46173: FLdZeroAd var_6DC
  loc_B46176: CVarStr var_488
  loc_B46179: ImpAdCallI2 Format$(, )
  loc_B4617E: CVarStr var_4B8
  loc_B46181: ConcatVar var_4C8
  loc_B46185: LitI4 9
  loc_B4618A: FLdRfVar var_4D8
  loc_B4618D: ImpAdCallFPR4  = Chr()
  loc_B46192: FLdRfVar var_4D8
  loc_B46195: ConcatVar var_4E8
  loc_B46199: LitVarStr var_4F8, "No"
  loc_B4619E: ConcatVar var_508
  loc_B461A2: LitI4 9
  loc_B461A7: FLdRfVar var_518
  loc_B461AA: ImpAdCallFPR4  = Chr()
  loc_B461AF: FLdRfVar var_518
  loc_B461B2: ConcatVar var_528
  loc_B461B6: ILdRf var_88
  loc_B461B9: CVarStr var_538
  loc_B461BC: ConcatVar var_548
  loc_B461C0: LitI4 9
  loc_B461C5: FLdRfVar var_558
  loc_B461C8: ImpAdCallFPR4  = Chr()
  loc_B461CD: FLdRfVar var_558
  loc_B461D0: ConcatVar var_568
  loc_B461D4: LitVarStr var_578, "0"
  loc_B461D9: ConcatVar var_588
  loc_B461DD: LitI4 9
  loc_B461E2: FLdRfVar var_598
  loc_B461E5: ImpAdCallFPR4  = Chr()
  loc_B461EA: FLdRfVar var_598
  loc_B461ED: ConcatVar var_5A8
  loc_B461F1: LitVarStr var_5B8, "0"
  loc_B461F6: ConcatVar var_5C8
  loc_B461FA: LitI4 9
  loc_B461FF: FLdRfVar var_5D8
  loc_B46202: ImpAdCallFPR4  = Chr()
  loc_B46207: FLdRfVar var_5D8
  loc_B4620A: ConcatVar var_5E8
  loc_B4620E: FLdRfVar var_614
  loc_B46211: FLdRfVar var_604
  loc_B46214: LitVarStr var_600, "Nombre"
  loc_B46219: PopAdLdVar
  loc_B4621A: FLdRfVar var_5F0
  loc_B4621D: FLdRfVar var_5EC
  loc_B46220: FLdRfVar var_168
  loc_B46223: NewIfNullPr clscheque
  loc_B46226: from_stack_1v = clscheque.RsFrmGet()
  loc_B4622B: FLdPr var_5EC
  loc_B4622E:  = Me.Fields
  loc_B46233: FLdPr var_5F0
  loc_B46236: from_stack_2 = Me.Item(from_stack_1)
  loc_B4623B: FLdPr var_604
  loc_B4623E:  = Me.Value
  loc_B46243: FLdRfVar var_614
  loc_B46246: FnLenVar var_624
  loc_B4624A: ConcatVar var_634
  loc_B4624E: LitI4 9
  loc_B46253: FLdRfVar var_644
  loc_B46256: ImpAdCallFPR4  = Chr()
  loc_B4625B: FLdRfVar var_644
  loc_B4625E: ConcatVar var_654
  loc_B46262: LitVarStr var_664, "0"
  loc_B46267: ConcatVar var_674
  loc_B4626B: LitI4 9
  loc_B46270: FLdRfVar var_684
  loc_B46273: ImpAdCallFPR4  = Chr()
  loc_B46278: FLdRfVar var_684
  loc_B4627B: ConcatVar var_694
  loc_B4627F: LitVarStr var_6A4, "0"
  loc_B46284: ConcatVar var_6B4
  loc_B46288: CStrVarTmp
  loc_B46289: CVarStr var_6C4
  loc_B4628C: PopAdLdVar
  loc_B4628D: FLdPr Me
  loc_B46290: VCallAd Control_ID_FlexCheque
  loc_B46293: FStAdFunc var_6D8
  loc_B46296: FLdPr var_6D8
  loc_B46299: LateIdCall
  loc_B462A1: FFreeStr var_F4 = "": var_160 = "": var_174 = ""
  loc_B462AC: FFreeAd var_8C = "": var_E0 = "": var_F8 = "": var_14C = "": var_190 = "": var_1D4 = "": var_1D8 = "": var_1DC = "": var_250 = "": var_294 = "": var_368 = "": var_3BC = "": var_450 = "": var_454 = "": var_468 = "": var_5EC = "": var_5F0 = "": var_604 = ""
  loc_B462D5: FFreeVar var_674 = "": var_684 = "": var_694 = "": var_6B4 = "": var_6C4 = "": var_3DC = "": var_3EC = "": var_3FC = "": var_40C = "": var_42C = "": var_43C = "": var_478 = "": var_488 = "": var_4A8 = "": var_44C = "": var_4B8 = "": var_4C8 = "": var_4D8 = "": var_4E8 = "": var_508 = "": var_518 = "": var_528 = "": var_548 = "": var_558 = "": var_568 = "": var_588 = "": var_598 = "": var_5A8 = "": var_5C8 = "": var_5D8 = "": var_614 = "": var_5E8 = "": var_634 = "": var_644 = "": var_654 = "": var_9C = "": var_F0 = "": var_15C = "": var_108 = "": var_18C = "": var_1A0 = "": var_1B0 = "": var_1C0 = "": var_1EC = "": var_1FC = "": var_20C = "": var_1D0 = "": var_21C = "": var_22C = "": var_23C = "": var_260 = "": var_2A4 = "": var_24C = "": var_2B4 = "": var_2C4 = "": var_2D4 = "": var_2E4 = "": var_304 = "": var_314 = "": var_324 = "": var_344 = "": var_354 = "": var_378 = "": var_3CC = ""
  loc_B4635A: FLdRfVar var_168
  loc_B4635D: NewIfNullPr clscheque
  loc_B46360: Call clscheque.MoveSiguiente()
  loc_B46365: Branch loc_B45EA4
  loc_B46368: FLdPrThis
  loc_B46369: VCallAd Control_ID_FlexCheque
  loc_B4636C: FStAdFunc var_F8
  loc_B4636F: FLdPr var_F8
  loc_B46372: LateIdLdVar var_108 DispID_10 0
  loc_B46379: CI4Var
  loc_B4637B: CVarI4
  loc_B4637F: PopAdLdVar
  loc_B46380: LitVarI4
  loc_B46388: PopAdLdVar
  loc_B46389: FLdPrThis
  loc_B4638A: VCallAd Control_ID_FlexCheque
  loc_B4638D: FStAdFunc var_8C
  loc_B46390: FLdPr var_8C
  loc_B46393: LateIdLdVar var_9C DispID_10 0
  loc_B4639A: CI4Var
  loc_B4639C: CVarI4
  loc_B463A0: PopAdLdVar
  loc_B463A1: LitVarI4
  loc_B463A9: PopAdLdVar
  loc_B463AA: FLdPrThis
  loc_B463AB: VCallAd Control_ID_FlexCheque
  loc_B463AE: FStAdFunc var_E0
  loc_B463B1: FLdPr var_E0
  loc_B463B4: LateIdCallLdVar
  loc_B463BE: CStrVarTmp
  loc_B463BF: FStStrNoPop var_F4
  loc_B463C2: CR8Str
  loc_B463C4: FLdFPR8 var_170
  loc_B463C7: FnCDblR8
  loc_B463C9: SubR4
  loc_B463CA: CStrR8
  loc_B463CC: CVarStr var_15C
  loc_B463CF: PopAdLdVar
  loc_B463D0: FLdPrThis
  loc_B463D1: VCallAd Control_ID_FlexCheque
  loc_B463D4: FStAdFunc var_14C
  loc_B463D7: FLdPr var_14C
  loc_B463DA: LateIdCallSt
  loc_B463E2: FFree1Str var_F4
  loc_B463E5: FFreeAd var_8C = "": var_E0 = "": var_F8 = ""
  loc_B463F0: FFreeVar var_9C = "": var_F0 = "": var_108 = ""
  loc_B463FB: FLdPrThis
  loc_B463FC: VCallAd Control_ID_FlexCheque
  loc_B463FF: FStAdFunc var_F8
  loc_B46402: FLdPr var_F8
  loc_B46405: LateIdLdVar var_108 DispID_10 0
  loc_B4640C: CI4Var
  loc_B4640E: CVarI4
  loc_B46412: PopAdLdVar
  loc_B46413: LitVarI4
  loc_B4641B: PopAdLdVar
  loc_B4641C: FLdPrThis
  loc_B4641D: VCallAd Control_ID_FlexCheque
  loc_B46420: FStAdFunc var_8C
  loc_B46423: FLdPr var_8C
  loc_B46426: LateIdLdVar var_9C DispID_10 0
  loc_B4642D: CI4Var
  loc_B4642F: CVarI4
  loc_B46433: PopAdLdVar
  loc_B46434: LitVarI4
  loc_B4643C: PopAdLdVar
  loc_B4643D: FLdPrThis
  loc_B4643E: VCallAd Control_ID_FlexCheque
  loc_B46441: FStAdFunc var_E0
  loc_B46444: FLdPr var_E0
  loc_B46447: LateIdCallLdVar
  loc_B46451: CStrVarTmp
  loc_B46452: FStStrNoPop var_F4
  loc_B46455: CR8Str
  loc_B46457: FLdFPR8 var_170
  loc_B4645A: FnCDblR8
  loc_B4645C: SubR4
  loc_B4645D: CStrR8
  loc_B4645F: CVarStr var_15C
  loc_B46462: PopAdLdVar
  loc_B46463: FLdPrThis
  loc_B46464: VCallAd Control_ID_FlexCheque
  loc_B46467: FStAdFunc var_14C
  loc_B4646A: FLdPr var_14C
  loc_B4646D: LateIdCallSt
  loc_B46475: FFree1Str var_F4
  loc_B46478: FFreeAd var_8C = "": var_E0 = "": var_F8 = ""
  loc_B46483: FFreeVar var_9C = "": var_F0 = "": var_108 = ""
  loc_B4648E: Branch loc_B46491
  loc_B46491: Branch loc_B464A1
  loc_B46494: LitI4 0
  loc_B46499: LitStr "Seleccione un cheque SIN NÚMERO..."
  loc_B4649C: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B464A1: ExitProcHresult
End Sub

Private Sub FiltroMsk_UnknownEvent_0 '9512B8
  'Data Table: 4B2A08
  loc_9512A4: FLdPr Me
  loc_9512A7: VCallAd Control_ID_FiltroMsk
  loc_9512AA: CVarAd
  loc_9512AE: ImpAdCallFPR4 Proc_261_35_96D6D8()
  loc_9512B3: FFree1Var var_94 = ""
  loc_9512B6: ExitProcHresult
  loc_9512B7: CStrVarTmp
End Sub

Private Sub FiltroMsk_Change() 'A50420
  'Data Table: 4B2A08
  loc_A5017C: ILdRf Me
  loc_A5017F: CastAd
  loc_A50182: FStAdFunc var_88
  loc_A50185: FLdRfVar var_88
  loc_A50188: ImpAdCallFPR4 Proc_261_10_99CABC()
  loc_A5018D: FFree1Ad var_88
  loc_A50190: FLdPr Me
  loc_A50193: VCallAd Control_ID_FiltroMsk
  loc_A50196: FStAdFunc var_88
  loc_A50199: FLdPr var_88
  loc_A5019C: LateIdLdVar var_98 DispID_22 0
  loc_A501A3: CStrVarTmp
  loc_A501A4: FStStrNoPop var_9C
  loc_A501A7: ImpAdCallI2 Trim$()
  loc_A501AC: FStStrNoPop var_A0
  loc_A501AF: LitStr vbNullString
  loc_A501B2: NeStr
  loc_A501B4: FFreeStr var_9C = ""
  loc_A501BB: FFree1Ad var_88
  loc_A501BE: FFree1Var var_98 = ""
  loc_A501C1: BranchF loc_A502EB
  loc_A501C4: FLdRfVar var_A2
  loc_A501C7: FLdPr Me
  loc_A501CA: VCallAd Control_ID_FiltroCbo
  loc_A501CD: FStAdFunc var_88
  loc_A501D0: FLdPr var_88
  loc_A501D3:  = Me.ListIndex
  loc_A501D8: FLdI2 var_A2
  loc_A501DB: LitI2_Byte 0
  loc_A501DD: EqI2
  loc_A501DE: FFree1Ad var_88
  loc_A501E1: BranchF loc_A50253
  loc_A501E4: LitStr "NumeOrpa = "
  loc_A501E7: FLdPr Me
  loc_A501EA: VCallAd Control_ID_FiltroMsk
  loc_A501ED: FStAdFunc var_88
  loc_A501F0: FLdPr var_88
  loc_A501F3: LateIdLdVar var_98 DispID_22 0
  loc_A501FA: CStrVarTmp
  loc_A501FB: FStStrNoPop var_9C
  loc_A501FE: ConcatStr
  loc_A501FF: PopTmpLdAdStr
  loc_A50203: FLdPr Me
  loc_A50206: MemLdRfVar from_stack_1.global_52
  loc_A50209: NewIfNullPr clsordenpago
  loc_A5020C: Call clsordenpago.Filter(from_stack_1v)
  loc_A50211: FFreeStr var_9C = ""
  loc_A50218: FFree1Ad var_88
  loc_A5021B: FFree1Var var_98 = ""
  loc_A5021E: LitStr "orden de pago es igual a "
  loc_A50221: FLdPr Me
  loc_A50224: VCallAd Control_ID_FiltroMsk
  loc_A50227: FStAdFunc var_88
  loc_A5022A: FLdPr var_88
  loc_A5022D: LateIdLdVar var_98 DispID_22 0
  loc_A50234: CStrVarTmp
  loc_A50235: FStStrNoPop var_9C
  loc_A50238: ConcatStr
  loc_A50239: FStStrNoPop var_A0
  loc_A5023C: FLdPr Me
  loc_A5023F: MemStStrCopy
  loc_A50243: FFreeStr var_9C = ""
  loc_A5024A: FFree1Ad var_88
  loc_A5024D: FFree1Var var_98 = ""
  loc_A50250: Branch loc_A502E8
  loc_A50253: FLdRfVar var_A2
  loc_A50256: FLdPr Me
  loc_A50259: VCallAd Control_ID_FiltroCbo
  loc_A5025C: FStAdFunc var_88
  loc_A5025F: FLdPr var_88
  loc_A50262:  = Me.ListIndex
  loc_A50267: FLdI2 var_A2
  loc_A5026A: LitI2_Byte 1
  loc_A5026C: EqI2
  loc_A5026D: FFree1Ad var_88
  loc_A50270: BranchF loc_A502E8
  loc_A50273: LitStr "ExpeImpu LIKE '"
  loc_A50276: FLdPr Me
  loc_A50279: VCallAd Control_ID_FiltroMsk
  loc_A5027C: FStAdFunc var_88
  loc_A5027F: FLdPr var_88
  loc_A50282: LateIdLdVar var_98 DispID_22 0
  loc_A50289: CStrVarTmp
  loc_A5028A: FStStrNoPop var_9C
  loc_A5028D: ConcatStr
  loc_A5028E: FStStrNoPop var_A0
  loc_A50291: LitStr Chr(37) & "'"
  loc_A50294: ConcatStr
  loc_A50295: PopTmpLdAdStr
  loc_A50299: FLdPr Me
  loc_A5029C: MemLdRfVar from_stack_1.global_52
  loc_A5029F: NewIfNullPr clsordenpago
  loc_A502A2: Call clsordenpago.Filter(from_stack_1v)
  loc_A502A7: FFreeStr var_9C = "": var_A0 = ""
  loc_A502B0: FFree1Ad var_88
  loc_A502B3: FFree1Var var_98 = ""
  loc_A502B6: LitStr "expediente que comience con "
  loc_A502B9: FLdPr Me
  loc_A502BC: VCallAd Control_ID_FiltroMsk
  loc_A502BF: FStAdFunc var_88
  loc_A502C2: FLdPr var_88
  loc_A502C5: LateIdLdVar var_98 DispID_22 0
  loc_A502CC: CStrVarTmp
  loc_A502CD: FStStrNoPop var_9C
  loc_A502D0: ConcatStr
  loc_A502D1: FStStrNoPop var_A0
  loc_A502D4: FLdPr Me
  loc_A502D7: MemStStrCopy
  loc_A502DB: FFreeStr var_9C = ""
  loc_A502E2: FFree1Ad var_88
  loc_A502E5: FFree1Var var_98 = ""
  loc_A502E8: Branch loc_A5030F
  loc_A502EB: LitStr vbNullString
  loc_A502EE: FStStrCopy var_9C
  loc_A502F1: FLdRfVar var_9C
  loc_A502F4: FLdPr Me
  loc_A502F7: MemLdRfVar from_stack_1.global_52
  loc_A502FA: NewIfNullPr clsordenpago
  loc_A502FD: Call clsordenpago.Filter(from_stack_1v)
  loc_A50302: FFree1Str var_9C
  loc_A50305: LitStr vbNullString
  loc_A50308: FLdPr Me
  loc_A5030B: MemStStrCopy
  loc_A5030F: FLdRfVar var_AC
  loc_A50312: FLdPr Me
  loc_A50315: MemLdRfVar from_stack_1.global_52
  loc_A50318: NewIfNullPr clsordenpago
  loc_A5031B: from_stack_1 = clsordenpago.RecordCount
  loc_A50320: ILdRf var_AC
  loc_A50323: LitI4 0
  loc_A50328: GtI4
  loc_A50329: BranchF loc_A503D6
  loc_A5032C: FLdPr Me
  loc_A5032F: MemLdRfVar from_stack_1.global_52
  loc_A50332: NewIfNullAd
  loc_A50335: FStAd var_B0 
  loc_A50339: FLdRfVar var_B0
  loc_A5033C: CVarRef
  loc_A50341: ILdRf Me
  loc_A50344: CastAd
  loc_A50347: FStAdFunc var_88
  loc_A5034A: FLdRfVar var_88
  loc_A5034D: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_A50352: ILdRf var_B0
  loc_A50355: CastAd
  loc_A50358: FLdPr Me
  loc_A5035B: MemStAdFunc
  loc_A5035F: FFreeAd var_88 = ""
  loc_A50366: LitI4 0
  loc_A5036B: LitI4 1
  loc_A50370: FLdRfVar var_C4
  loc_A50373: Redim
  loc_A5037D: FLdPr Me
  loc_A50380: MemLdRfVar from_stack_1.global_52
  loc_A50383: NewIfNullAd
  loc_A50386: FStAd var_88 
  loc_A5038A: FLdRfVar var_88
  loc_A5038D: CVarRef
  loc_A50392: ParmAry1St
  loc_A50398: FLdPr Me
  loc_A5039B: VCallAd Control_ID_dgdABMS
  loc_A5039E: CVarAd
  loc_A503A2: ParmAry1St
  loc_A503A8: FLdRfVar var_C4
  loc_A503AB: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A503B0: ILdRf var_88
  loc_A503B3: CastAd
  loc_A503B6: FLdPr Me
  loc_A503B9: MemStAdFunc
  loc_A503BD: FLdRfVar var_C4
  loc_A503C0: Erase
  loc_A503C1: FFree1Ad var_88
  loc_A503C4: LitI2_Byte 0
  loc_A503C6: LitVarI2 var_98, 0
  loc_A503CB: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A503D0: FFree1Var var_98 = ""
  loc_A503D3: Branch loc_A503EA
  loc_A503D6: ILdRf Me
  loc_A503D9: CastAd
  loc_A503DC: FStAdFunc var_88
  loc_A503DF: FLdRfVar var_88
  loc_A503E2: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A503E7: FFree1Ad var_88
  loc_A503EA: FLdPr Me
  loc_A503ED: VCallAd Control_ID_dgdABMS
  loc_A503F0: FStAdFunc var_B0
  loc_A503F3: LitI4 0
  loc_A503F8: FStStrCopy var_9C
  loc_A503FB: FLdRfVar var_9C
  loc_A503FE: FLdPr Me
  loc_A50401: MemLdStr global_104
  loc_A50404: FLdZeroAd var_B0
  loc_A50407: FStAdFunc var_88
  loc_A5040A: FLdRfVar var_88
  loc_A5040D: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A50412: FFree1Str var_9C
  loc_A50415: FFreeAd var_88 = ""
  loc_A5041C: ExitProcHresult
End Sub

Private Sub FiltroMsk_KeyPress(KeyAscii As Integer) '98DD30
  'Data Table: 4B2A08
  loc_98DCE8: ILdI2 KeyAscii
  loc_98DCEB: LitI2_Byte &H27
  loc_98DCED: EqI2
  loc_98DCEE: BranchF loc_98DCF6
  loc_98DCF1: LitI2_Byte 0
  loc_98DCF3: IStI2 KeyAscii
  loc_98DCF6: FLdRfVar var_8A
  loc_98DCF9: FLdPr Me
  loc_98DCFC: VCallAd Control_ID_FiltroCbo
  loc_98DCFF: FStAdFunc var_88
  loc_98DD02: FLdPr var_88
  loc_98DD05:  = Me.ListIndex
  loc_98DD0A: FLdI2 var_8A
  loc_98DD0D: LitI2_Byte 0
  loc_98DD0F: EqI2
  loc_98DD10: FFree1Ad var_88
  loc_98DD13: BranchF loc_98DD2D
  loc_98DD16: LitStr "0123456789"
  loc_98DD19: FStStrCopy var_90
  loc_98DD1C: FLdRfVar var_90
  loc_98DD1F: ILdRf KeyAscii
  loc_98DD22: ImpAdCallI2 Proc_261_6_9AA2A8(, )
  loc_98DD27: IStI2 KeyAscii
  loc_98DD2A: FFree1Str var_90
  loc_98DD2D: ExitProcHresult
End Sub

Private Sub CmdImprimirCaratula_Click() '9DF604
  'Data Table: 4B2A08
  loc_9DF504: FLdRfVar var_88
  loc_9DF507: FLdPr Me
  loc_9DF50A: MemLdRfVar from_stack_1.global_52
  loc_9DF50D: NewIfNullPr clsordenpago
  loc_9DF510: from_stack_1 = clsordenpago.RecordCount
  loc_9DF515: ILdRf var_88
  loc_9DF518: LitI4 0
  loc_9DF51D: GtI4
  loc_9DF51E: BranchF loc_9DF5EB
  loc_9DF521: FLdRfVar var_B4
  loc_9DF524: FLdRfVar var_A4
  loc_9DF527: LitVarStr var_A0, "PeriInfo"
  loc_9DF52C: PopAdLdVar
  loc_9DF52D: FLdRfVar var_90
  loc_9DF530: FLdRfVar var_8C
  loc_9DF533: FLdPr Me
  loc_9DF536: MemLdRfVar from_stack_1.global_52
  loc_9DF539: NewIfNullPr clsordenpago
  loc_9DF53C: from_stack_1v = clsordenpago.RsFrmGet()
  loc_9DF541: FLdPr var_8C
  loc_9DF544:  = Me.Fields
  loc_9DF549: FLdPr var_90
  loc_9DF54C: from_stack_2 = Me.Item(from_stack_1)
  loc_9DF551: FLdPr var_A4
  loc_9DF554:  = Me.Value
  loc_9DF559: FLdRfVar var_B4
  loc_9DF55C: CStrVarTmp
  loc_9DF55D: FStStrNoPop var_B8
  loc_9DF560: ImpAdLdRf MemVar_C3DAE8
  loc_9DF563: NewIfNullPr rptCaratula
  loc_9DF566: VCallAd Control_ID_cboPeriodo
  loc_9DF569: FStAdFunc var_BC
  loc_9DF56C: FLdPr var_BC
  loc_9DF56F: rptCaratula.ComboBox.Text = from_stack_1
  loc_9DF574: FFree1Str var_B8
  loc_9DF577: FFreeAd var_8C = "": var_90 = "": var_A4 = ""
  loc_9DF582: FFree1Var var_B4 = ""
  loc_9DF585: FLdRfVar var_B4
  loc_9DF588: FLdRfVar var_A4
  loc_9DF58B: LitVarStr var_A0, "NumeOrpa"
  loc_9DF590: PopAdLdVar
  loc_9DF591: FLdRfVar var_90
  loc_9DF594: FLdRfVar var_8C
  loc_9DF597: FLdPr Me
  loc_9DF59A: MemLdRfVar from_stack_1.global_52
  loc_9DF59D: NewIfNullPr clsordenpago
  loc_9DF5A0: from_stack_1v = clsordenpago.RsFrmGet()
  loc_9DF5A5: FLdPr var_8C
  loc_9DF5A8:  = Me.Fields
  loc_9DF5AD: FLdPr var_90
  loc_9DF5B0: from_stack_2 = Me.Item(from_stack_1)
  loc_9DF5B5: FLdPr var_A4
  loc_9DF5B8:  = Me.Value
  loc_9DF5BD: FLdRfVar var_B4
  loc_9DF5C0: CStrVarTmp
  loc_9DF5C1: CVarStr var_CC
  loc_9DF5C4: PopAdLdVar
  loc_9DF5C5: ImpAdLdRf MemVar_C3DAE8
  loc_9DF5C8: NewIfNullPr rptCaratula
  loc_9DF5CB: VCallAd Control_ID_NumeOrpaMsk
  loc_9DF5CE: FStAdFunc var_BC
  loc_9DF5D1: FLdPr var_BC
  loc_9DF5D4: LateIdSt
  loc_9DF5D9: FFreeAd var_8C = "": var_90 = "": var_A4 = ""
  loc_9DF5E4: FFreeVar var_B4 = ""
  loc_9DF5EB: LitVar_Missing var_DC
  loc_9DF5EE: PopAdLdVar
  loc_9DF5EF: LitVarI4
  loc_9DF5F7: PopAdLdVar
  loc_9DF5F8: ImpAdLdRf MemVar_C3DAE8
  loc_9DF5FB: NewIfNullPr rptCaratula
  loc_9DF5FE: rptCaratula.Show from_stack_1, from_stack_2
  loc_9DF603: ExitProcHresult
End Sub

Private Sub cmdInsertar_Click() 'A21154
  'Data Table: 4B2A08
  loc_A20FD0: FLdPr Me
  loc_A20FD3: MemLdUI1 global_64
  loc_A20FD7: CI2UI1
  loc_A20FD9: LitI2_Byte 1
  loc_A20FDB: EqI2
  loc_A20FDC: BranchF loc_A21153
  loc_A20FDF: FLdPr Me
  loc_A20FE2: VCallAd Control_ID_FlexCheque
  loc_A20FE5: FStAdFunc var_88
  loc_A20FE8: FLdPr var_88
  loc_A20FEB: LateIdLdVar var_98 DispID_10 0
  loc_A20FF2: CI4Var
  loc_A20FF4: CVarI4
  loc_A20FF8: PopAdLdVar
  loc_A20FF9: LitVarI4
  loc_A21001: PopAdLdVar
  loc_A21002: FLdPr Me
  loc_A21005: VCallAd Control_ID_FlexCheque
  loc_A21008: FStAdFunc var_DC
  loc_A2100B: FLdPr var_DC
  loc_A2100E: LateIdCallLdVar
  loc_A21018: CStrVarTmp
  loc_A21019: FStStrNoPop var_F0
  loc_A2101C: LitStr "Manual"
  loc_A2101F: EqStr
  loc_A21021: FLdPr Me
  loc_A21024: VCallAd Control_ID_FlexCheque
  loc_A21027: FStAdFunc var_F4
  loc_A2102A: FLdPr var_F4
  loc_A2102D: LateIdLdVar var_104 DispID_10 0
  loc_A21034: CI4Var
  loc_A21036: CVarI4
  loc_A2103A: PopAdLdVar
  loc_A2103B: LitVarI4
  loc_A21043: PopAdLdVar
  loc_A21044: FLdPr Me
  loc_A21047: VCallAd Control_ID_FlexCheque
  loc_A2104A: FStAdFunc var_148
  loc_A2104D: FLdPr var_148
  loc_A21050: LateIdCallLdVar
  loc_A2105A: CStrVarTmp
  loc_A2105B: FStStrNoPop var_15C
  loc_A2105E: LitStr "0"
  loc_A21061: EqStr
  loc_A21063: OrI4
  loc_A21064: FLdPr Me
  loc_A21067: VCallAd Control_ID_FlexCheque
  loc_A2106A: FStAdFunc var_160
  loc_A2106D: FLdPr var_160
  loc_A21070: LateIdLdVar var_170 DispID_10 0
  loc_A21077: CI4Var
  loc_A21079: CVarI4
  loc_A2107D: PopAdLdVar
  loc_A2107E: LitVarI4
  loc_A21086: PopAdLdVar
  loc_A21087: FLdPr Me
  loc_A2108A: VCallAd Control_ID_FlexCheque
  loc_A2108D: FStAdFunc var_1B4
  loc_A21090: FLdPr var_1B4
  loc_A21093: LateIdCallLdVar
  loc_A2109D: CStrVarTmp
  loc_A2109E: FStStrNoPop var_1C8
  loc_A210A1: LitStr vbNullString
  loc_A210A4: EqStr
  loc_A210A6: OrI4
  loc_A210A7: FFreeStr var_F0 = "": var_15C = ""
  loc_A210B0: FFreeAd var_88 = "": var_DC = "": var_F4 = "": var_148 = "": var_160 = ""
  loc_A210BF: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_158 = "": var_170 = ""
  loc_A210CE: BranchF loc_A21153
  loc_A210D1: FLdPr Me
  loc_A210D4: VCallAd Control_ID_FlexCheque
  loc_A210D7: FStAdFunc var_88
  loc_A210DA: FLdPr var_88
  loc_A210DD: LateIdLdVar var_98 DispID_10 0
  loc_A210E4: CI4Var
  loc_A210E6: CVarI4
  loc_A210EA: PopAdLdVar
  loc_A210EB: LitVarI4
  loc_A210F3: PopAdLdVar
  loc_A210F4: FLdPr Me
  loc_A210F7: VCallAd Control_ID_FlexCheque
  loc_A210FA: FStAdFunc var_DC
  loc_A210FD: FLdPr var_DC
  loc_A21100: LateIdCallLdVar
  loc_A2110A: CStrVarTmp
  loc_A2110B: FStStrNoPop var_F0
  loc_A2110E: LitStr "Si"
  loc_A21111: EqStr
  loc_A21113: FFree1Str var_F0
  loc_A21116: FFreeAd var_88 = ""
  loc_A2111D: FFreeVar var_98 = ""
  loc_A21124: BranchF loc_A2114E
  loc_A21127: LitI4 0
  loc_A2112C: LitStr "No se puede modificar el cheque esta dado de baja."
  loc_A2112F: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A21134: FLdPr Me
  loc_A21137: VCallAd Control_ID_FlexCheque
  loc_A2113A: FStAdFunc var_88
  loc_A2113D: FLdPr var_88
  loc_A21140: LateIdCall
  loc_A21148: FFree1Ad var_88
  loc_A2114B: Branch loc_A21153
  loc_A2114E: Call Proc_113_38_B76614()
  loc_A21153: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'A546A8
  'Data Table: 4B2A08
  loc_A543FC: LitI2_Byte 0
  loc_A543FE: CUI1I2
  loc_A54400: FLdPr Me
  loc_A54403: MemStUI1
  loc_A54407: ILdRf Me
  loc_A5440A: CastAd
  loc_A5440D: FStAdFunc var_88
  loc_A54410: FLdRfVar var_88
  loc_A54413: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_A54418: FFree1Ad var_88
  loc_A5441B: LitI4 0
  loc_A54420: LitI4 0
  loc_A54425: FLdRfVar var_8C
  loc_A54428: Redim
  loc_A54432: FLdPr Me
  loc_A54435: VCallAd Control_ID_dgdABMS
  loc_A54438: CVarAd
  loc_A5443C: ParmAry1St
  loc_A54442: FLdRfVar var_8C
  loc_A54445: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A5444A: FLdRfVar var_8C
  loc_A5444D: Erase
  loc_A5444E: ILdRf Me
  loc_A54451: CastAd
  loc_A54454: FStAdFunc var_88
  loc_A54457: FLdRfVar var_88
  loc_A5445A: ImpAdCallFPR4 Proc_261_14_9D98D4()
  loc_A5445F: FFree1Ad var_88
  loc_A54462: LitI4 0
  loc_A54467: LitI4 2
  loc_A5446C: FLdRfVar var_8C
  loc_A5446F: Redim
  loc_A54479: FLdPr Me
  loc_A5447C: VCallAd Control_ID_CmdImprimirOrdendePago
  loc_A5447F: CVarAd
  loc_A54483: ParmAry1St
  loc_A54489: FLdPr Me
  loc_A5448C: VCallAd Control_ID_CmdImprimirCaratula
  loc_A5448F: CVarAd
  loc_A54493: ParmAry1St
  loc_A54499: FLdPr Me
  loc_A5449C: VCallAd Control_ID_cmdImprimirLiquidacion
  loc_A5449F: CVarAd
  loc_A544A3: ParmAry1St
  loc_A544A9: FLdRfVar var_8C
  loc_A544AC: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A544B1: FLdRfVar var_8C
  loc_A544B4: Erase
  loc_A544B5: ILdRf Me
  loc_A544B8: CastAd
  loc_A544BB: FStAdFunc var_88
  loc_A544BE: FLdRfVar var_88
  loc_A544C1: ImpAdCallFPR4 Proc_261_15_A16E38()
  loc_A544C6: FFree1Ad var_88
  loc_A544C9: LitI4 0
  loc_A544CE: LitI4 4
  loc_A544D3: FLdRfVar var_8C
  loc_A544D6: Redim
  loc_A544E0: FLdPr Me
  loc_A544E3: VCallAd Control_ID_FlexCheque
  loc_A544E6: CVarAd
  loc_A544EA: ParmAry1St
  loc_A544F0: FLdPr Me
  loc_A544F3: VCallAd Control_ID_cmdInsertar
  loc_A544F6: CVarAd
  loc_A544FA: ParmAry1St
  loc_A54500: FLdPr Me
  loc_A54503: VCallAd Control_ID_cmdEliminar
  loc_A54506: CVarAd
  loc_A5450A: ParmAry1St
  loc_A54510: FLdPr Me
  loc_A54513: VCallAd Control_ID_cmdBorrarNoalaOrden
  loc_A54516: CVarAd
  loc_A5451A: ParmAry1St
  loc_A54520: FLdPr Me
  loc_A54523: VCallAd Control_ID_cmdAgregarNoalaOrden
  loc_A54526: CVarAd
  loc_A5452A: ParmAry1St
  loc_A54530: FLdRfVar var_8C
  loc_A54533: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A54538: FLdRfVar var_8C
  loc_A5453B: Erase
  loc_A5453C: LitI2_Byte 0
  loc_A5453E: FLdPr Me
  loc_A54541: VCallAd Control_ID_cmdDividirVsChqs
  loc_A54544: FStAdFunc var_88
  loc_A54547: FLdPr var_88
  loc_A5454A: Me.Visible = from_stack_1b
  loc_A5454F: FFree1Ad var_88
  loc_A54552: LitI2_Byte 0
  loc_A54554: FLdPr Me
  loc_A54557: VCallAd Control_ID_cmdDividirVsChqs
  loc_A5455A: FStAdFunc var_88
  loc_A5455D: FLdPr var_88
  loc_A54560: Me.Enabled = from_stack_1b
  loc_A54565: FFree1Ad var_88
  loc_A54568: LitI2_Byte 0
  loc_A5456A: FLdPr Me
  loc_A5456D: VCallAd Control_ID_ChequeUnicoChk
  loc_A54570: FStAdFunc var_88
  loc_A54573: FLdPr var_88
  loc_A54576: Me.Value = from_stack_1
  loc_A5457B: FFree1Ad var_88
  loc_A5457E: FLdRfVar var_E0
  loc_A54581: FLdPr Me
  loc_A54584: MemLdRfVar from_stack_1.global_52
  loc_A54587: NewIfNullPr clsordenpago
  loc_A5458A: from_stack_1 = clsordenpago.RecordCount
  loc_A5458F: ILdRf var_E0
  loc_A54592: LitI4 0
  loc_A54597: GtI4
  loc_A54598: BranchF loc_A5463B
  loc_A5459B: FLdRfVar var_9C
  loc_A5459E: FLdRfVar var_F8
  loc_A545A1: LitVarStr var_F4, "PeriInfo"
  loc_A545A6: PopAdLdVar
  loc_A545A7: FLdRfVar var_E4
  loc_A545AA: FLdRfVar var_88
  loc_A545AD: FLdPr Me
  loc_A545B0: MemLdRfVar from_stack_1.global_52
  loc_A545B3: NewIfNullPr clsordenpago
  loc_A545B6: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A545BB: FLdPr var_88
  loc_A545BE:  = Me.Fields
  loc_A545C3: FLdPr var_E4
  loc_A545C6: from_stack_2 = Me.Item(from_stack_1)
  loc_A545CB: FLdPr var_F8
  loc_A545CE:  = Me.Value
  loc_A545D3: FLdRfVar var_AC
  loc_A545D6: FLdRfVar var_114
  loc_A545D9: LitVarStr var_110, "NumeOrpa"
  loc_A545DE: PopAdLdVar
  loc_A545DF: FLdRfVar var_100
  loc_A545E2: FLdRfVar var_FC
  loc_A545E5: FLdPr Me
  loc_A545E8: MemLdRfVar from_stack_1.global_52
  loc_A545EB: NewIfNullPr clsordenpago
  loc_A545EE: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A545F3: FLdPr var_FC
  loc_A545F6:  = Me.Fields
  loc_A545FB: FLdPr var_100
  loc_A545FE: from_stack_2 = Me.Item(from_stack_1)
  loc_A54603: FLdPr var_114
  loc_A54606:  = Me.Value
  loc_A5460B: FLdRfVar var_AC
  loc_A5460E: CI4Var
  loc_A54610: FLdRfVar var_9C
  loc_A54613: CI2Var
  loc_A54614: FLdPr Me
  loc_A54617: MemLdRfVar from_stack_1.global_52
  loc_A5461A: NewIfNullPr clsordenpago
  loc_A5461D: Call clsordenpago.Encontrar(from_stack_1v, from_stack_2v)
  loc_A54622: FFreeAd var_88 = "": var_E4 = "": var_FC = "": var_100 = "": var_F8 = ""
  loc_A54631: FFreeVar var_9C = ""
  loc_A54638: Branch loc_A54649
  loc_A5463B: FLdPr Me
  loc_A5463E: MemLdRfVar from_stack_1.global_52
  loc_A54641: NewIfNullPr clsordenpago
  loc_A54644: Call clsordenpago.Requery()
  loc_A54649: FLdPr Me
  loc_A5464C: VCallAd Control_ID_dgdABMS
  loc_A5464F: FStAdFunc var_E4
  loc_A54652: LitI4 0
  loc_A54657: FStStrCopy var_118
  loc_A5465A: FLdRfVar var_118
  loc_A5465D: FLdPr Me
  loc_A54660: MemLdStr global_104
  loc_A54663: FLdZeroAd var_E4
  loc_A54666: FStAdFunc var_88
  loc_A54669: FLdRfVar var_88
  loc_A5466C: ImpAdCallFPR4 Proc_261_62_9D9F1C(, , )
  loc_A54671: FFree1Str var_118
  loc_A54674: FFreeAd var_88 = ""
  loc_A5467B: LitI2_Byte 0
  loc_A5467D: LitVarI2 var_9C, 0
  loc_A54682: Call dgdABMS_RowColChange(from_stack_1v, from_stack_2v)
  loc_A54687: FFree1Var var_9C = ""
  loc_A5468A: LitI2_Byte 0
  loc_A5468C: FLdPr Me
  loc_A5468F: MemStI2 global_80
  loc_A54692: LitI2_Byte 0
  loc_A54694: FLdPr Me
  loc_A54697: MemStI2 global_82
  loc_A5469A: LitStr vbNullString
  loc_A5469D: FLdPr Me
  loc_A546A0: MemStStrCopy
  loc_A546A4: ExitProcHresult
End Sub

Private Sub cmdAgregarNoalaOrden_Click() 'A79C30
  'Data Table: 4B2A08
  loc_A798C4: FLdPr Me
  loc_A798C7: MemLdUI1 global_64
  loc_A798CB: CI2UI1
  loc_A798CD: LitI2_Byte 1
  loc_A798CF: EqI2
  loc_A798D0: BranchF loc_A79C2F
  loc_A798D3: FLdPr Me
  loc_A798D6: VCallAd Control_ID_FlexCheque
  loc_A798D9: FStAdFunc var_88
  loc_A798DC: FLdPr var_88
  loc_A798DF: LateIdLdVar var_98 DispID_10 0
  loc_A798E6: CI4Var
  loc_A798E8: CVarI4
  loc_A798EC: PopAdLdVar
  loc_A798ED: LitVarI4
  loc_A798F5: PopAdLdVar
  loc_A798F6: FLdPr Me
  loc_A798F9: VCallAd Control_ID_FlexCheque
  loc_A798FC: FStAdFunc var_DC
  loc_A798FF: FLdPr var_DC
  loc_A79902: LateIdCallLdVar
  loc_A7990C: CStrVarTmp
  loc_A7990D: FStStrNoPop var_F0
  loc_A79910: LitStr "Manual"
  loc_A79913: EqStr
  loc_A79915: FLdPr Me
  loc_A79918: VCallAd Control_ID_FlexCheque
  loc_A7991B: FStAdFunc var_F4
  loc_A7991E: FLdPr var_F4
  loc_A79921: LateIdLdVar var_104 DispID_10 0
  loc_A79928: CI4Var
  loc_A7992A: CVarI4
  loc_A7992E: PopAdLdVar
  loc_A7992F: LitVarI4
  loc_A79937: PopAdLdVar
  loc_A79938: FLdPr Me
  loc_A7993B: VCallAd Control_ID_FlexCheque
  loc_A7993E: FStAdFunc var_148
  loc_A79941: FLdPr var_148
  loc_A79944: LateIdCallLdVar
  loc_A7994E: CStrVarTmp
  loc_A7994F: FStStrNoPop var_15C
  loc_A79952: LitStr "Impreso"
  loc_A79955: EqStr
  loc_A79957: FLdPr Me
  loc_A7995A: VCallAd Control_ID_FlexCheque
  loc_A7995D: FStAdFunc var_160
  loc_A79960: FLdPr var_160
  loc_A79963: LateIdLdVar var_170 DispID_10 0
  loc_A7996A: CI4Var
  loc_A7996C: CVarI4
  loc_A79970: PopAdLdVar
  loc_A79971: LitVarI4
  loc_A79979: PopAdLdVar
  loc_A7997A: FLdPr Me
  loc_A7997D: VCallAd Control_ID_FlexCheque
  loc_A79980: FStAdFunc var_1B4
  loc_A79983: FLdPr var_1B4
  loc_A79986: LateIdCallLdVar
  loc_A79990: CStrVarTmp
  loc_A79991: FStStrNoPop var_1C8
  loc_A79994: LitStr "0"
  loc_A79997: EqStr
  loc_A79999: FLdPr Me
  loc_A7999C: VCallAd Control_ID_FlexCheque
  loc_A7999F: FStAdFunc var_1CC
  loc_A799A2: FLdPr var_1CC
  loc_A799A5: LateIdLdVar var_1DC DispID_10 0
  loc_A799AC: CI4Var
  loc_A799AE: CVarI4
  loc_A799B2: PopAdLdVar
  loc_A799B3: LitVarI4
  loc_A799BB: PopAdLdVar
  loc_A799BC: FLdPr Me
  loc_A799BF: VCallAd Control_ID_FlexCheque
  loc_A799C2: FStAdFunc var_220
  loc_A799C5: FLdPr var_220
  loc_A799C8: LateIdCallLdVar
  loc_A799D2: CStrVarTmp
  loc_A799D3: FStStrNoPop var_234
  loc_A799D6: LitStr vbNullString
  loc_A799D9: EqStr
  loc_A799DB: OrI4
  loc_A799DC: AndI4
  loc_A799DD: OrI4
  loc_A799DE: FLdPr Me
  loc_A799E1: VCallAd Control_ID_FlexCheque
  loc_A799E4: FStAdFunc var_238
  loc_A799E7: FLdPr var_238
  loc_A799EA: LateIdLdVar var_248 DispID_10 0
  loc_A799F1: CI4Var
  loc_A799F3: CVarI4
  loc_A799F7: PopAdLdVar
  loc_A799F8: LitVarI4
  loc_A79A00: PopAdLdVar
  loc_A79A01: FLdPr Me
  loc_A79A04: VCallAd Control_ID_FlexCheque
  loc_A79A07: FStAdFunc var_28C
  loc_A79A0A: FLdPr var_28C
  loc_A79A0D: LateIdCallLdVar
  loc_A79A17: CStrVarTmp
  loc_A79A18: FStStrNoPop var_2A0
  loc_A79A1B: LitStr "Transferencia"
  loc_A79A1E: EqStr
  loc_A79A20: FLdPr Me
  loc_A79A23: VCallAd Control_ID_FlexCheque
  loc_A79A26: FStAdFunc var_2A4
  loc_A79A29: FLdPr var_2A4
  loc_A79A2C: LateIdLdVar var_2B4 DispID_10 0
  loc_A79A33: CI4Var
  loc_A79A35: CVarI4
  loc_A79A39: PopAdLdVar
  loc_A79A3A: LitVarI4
  loc_A79A42: PopAdLdVar
  loc_A79A43: FLdPr Me
  loc_A79A46: VCallAd Control_ID_FlexCheque
  loc_A79A49: FStAdFunc var_2F8
  loc_A79A4C: FLdPr var_2F8
  loc_A79A4F: LateIdCallLdVar
  loc_A79A59: CStrVarTmp
  loc_A79A5A: FStStrNoPop var_30C
  loc_A79A5D: LitStr "0"
  loc_A79A60: EqStr
  loc_A79A62: FLdPr Me
  loc_A79A65: VCallAd Control_ID_FlexCheque
  loc_A79A68: FStAdFunc var_310
  loc_A79A6B: FLdPr var_310
  loc_A79A6E: LateIdLdVar var_320 DispID_10 0
  loc_A79A75: CI4Var
  loc_A79A77: CVarI4
  loc_A79A7B: PopAdLdVar
  loc_A79A7C: LitVarI4
  loc_A79A84: PopAdLdVar
  loc_A79A85: FLdPr Me
  loc_A79A88: VCallAd Control_ID_FlexCheque
  loc_A79A8B: FStAdFunc var_364
  loc_A79A8E: FLdPr var_364
  loc_A79A91: LateIdCallLdVar
  loc_A79A9B: CStrVarTmp
  loc_A79A9C: FStStrNoPop var_378
  loc_A79A9F: LitStr vbNullString
  loc_A79AA2: EqStr
  loc_A79AA4: OrI4
  loc_A79AA5: AndI4
  loc_A79AA6: OrI4
  loc_A79AA7: FFreeStr var_F0 = "": var_15C = "": var_1C8 = "": var_234 = "": var_2A0 = "": var_30C = ""
  loc_A79AB8: FFreeAd var_88 = "": var_DC = "": var_F4 = "": var_148 = "": var_160 = "": var_1B4 = "": var_1CC = "": var_220 = "": var_238 = "": var_28C = "": var_2A4 = "": var_2F8 = "": var_310 = ""
  loc_A79AD7: FFreeVar var_98 = "": var_EC = "": var_104 = "": var_158 = "": var_170 = "": var_1C4 = "": var_1DC = "": var_230 = "": var_248 = "": var_29C = "": var_2B4 = "": var_308 = "": var_320 = ""
  loc_A79AF6: BranchF loc_A79C2F
  loc_A79AF9: FLdPr Me
  loc_A79AFC: VCallAd Control_ID_FlexCheque
  loc_A79AFF: FStAdFunc var_88
  loc_A79B02: FLdPr var_88
  loc_A79B05: LateIdLdVar var_98 DispID_11 0
  loc_A79B0C: CI4Var
  loc_A79B0E: LitI4 1
  loc_A79B13: EqI4
  loc_A79B14: FFree1Ad var_88
  loc_A79B17: FFree1Var var_98 = ""
  loc_A79B1A: BranchF loc_A79B9A
  loc_A79B1D: FLdPr Me
  loc_A79B20: VCallAd Control_ID_FlexCheque
  loc_A79B23: FStAdFunc var_88
  loc_A79B26: FLdPr var_88
  loc_A79B29: LateIdLdVar var_98 DispID_10 0
  loc_A79B30: CI4Var
  loc_A79B32: CVarI4
  loc_A79B36: PopAdLdVar
  loc_A79B37: LitVarI4
  loc_A79B3F: PopAdLdVar
  loc_A79B40: FLdPr Me
  loc_A79B43: VCallAd Control_ID_FlexCheque
  loc_A79B46: FStAdFunc var_DC
  loc_A79B49: FLdPr var_DC
  loc_A79B4C: LateIdCallLdVar
  loc_A79B56: CStrVarTmp
  loc_A79B57: FStStrNoPop var_F0
  loc_A79B5A: LitStr "Si"
  loc_A79B5D: EqStr
  loc_A79B5F: FFree1Str var_F0
  loc_A79B62: FFreeAd var_88 = ""
  loc_A79B69: FFreeVar var_98 = ""
  loc_A79B70: BranchF loc_A79B97
  loc_A79B73: LitI4 0
  loc_A79B78: LitStr "No se puede modificar el cheque esta dado de baja."
  loc_A79B7B: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A79B80: FLdPr Me
  loc_A79B83: VCallAd Control_ID_FlexCheque
  loc_A79B86: FStAdFunc var_88
  loc_A79B89: FLdPr var_88
  loc_A79B8C: LateIdCall
  loc_A79B94: FFree1Ad var_88
  loc_A79B97: Branch loc_A79C2F
  loc_A79B9A: FLdPr Me
  loc_A79B9D: VCallAd Control_ID_FlexCheque
  loc_A79BA0: FStAdFunc var_F4
  loc_A79BA3: FLdPr var_F4
  loc_A79BA6: LateIdLdVar var_104 DispID_10 0
  loc_A79BAD: CI4Var
  loc_A79BAF: CVarI4
  loc_A79BB3: PopAdLdVar
  loc_A79BB4: LitVarI4
  loc_A79BBC: PopAdLdVar
  loc_A79BBD: FLdPr Me
  loc_A79BC0: VCallAd Control_ID_FlexCheque
  loc_A79BC3: FStAdFunc var_88
  loc_A79BC6: FLdPr var_88
  loc_A79BC9: LateIdLdVar var_98 DispID_10 0
  loc_A79BD0: CI4Var
  loc_A79BD2: CVarI4
  loc_A79BD6: PopAdLdVar
  loc_A79BD7: LitVarI4
  loc_A79BDF: PopAdLdVar
  loc_A79BE0: FLdPr Me
  loc_A79BE3: VCallAd Control_ID_FlexCheque
  loc_A79BE6: FStAdFunc var_DC
  loc_A79BE9: FLdPr var_DC
  loc_A79BEC: LateIdCallLdVar
  loc_A79BF6: CStrVarTmp
  loc_A79BF7: FStStrNoPop var_F0
  loc_A79BFA: LitStr " - NO A LA ORDEN"
  loc_A79BFD: ConcatStr
  loc_A79BFE: CVarStr var_158
  loc_A79C01: PopAdLdVar
  loc_A79C02: FLdPr Me
  loc_A79C05: VCallAd Control_ID_FlexCheque
  loc_A79C08: FStAdFunc var_148
  loc_A79C0B: FLdPr var_148
  loc_A79C0E: LateIdCallSt
  loc_A79C16: FFree1Str var_F0
  loc_A79C19: FFreeAd var_88 = "": var_DC = "": var_F4 = ""
  loc_A79C24: FFreeVar var_98 = "": var_EC = "": var_104 = ""
  loc_A79C2F: ExitProcHresult
End Sub

Private Sub ChequeUnicoChk_Click() 'A41070
  'Data Table: 4B2A08
  loc_A40E2C: FLdPr Me
  loc_A40E2F: MemLdUI1 global_64
  loc_A40E33: CI2UI1
  loc_A40E35: LitI2_Byte 1
  loc_A40E37: EqI2
  loc_A40E38: BranchF loc_A4106C
  loc_A40E3B: FLdRfVar var_B0
  loc_A40E3E: FLdRfVar var_A0
  loc_A40E41: LitVarStr var_9C, "NumeOrpa"
  loc_A40E46: PopAdLdVar
  loc_A40E47: FLdRfVar var_8C
  loc_A40E4A: FLdRfVar var_88
  loc_A40E4D: FLdPr Me
  loc_A40E50: MemLdRfVar from_stack_1.global_52
  loc_A40E53: NewIfNullPr clsordenpago
  loc_A40E56: from_stack_1v = clsordenpago.RsFrmGet()
  loc_A40E5B: FLdPr var_88
  loc_A40E5E:  = Me.Fields
  loc_A40E63: FLdPr var_8C
  loc_A40E66: from_stack_2 = Me.Item(from_stack_1)
  loc_A40E6B: FLdPr var_A0
  loc_A40E6E:  = Me.Value
  loc_A40E73: FLdRfVar var_B2
  loc_A40E76: FLdRfVar var_B0
  loc_A40E79: CI4Var
  loc_A40E7B: ImpAdLdI2 MemVar_C3D064
  loc_A40E7E: FLdPr Me
  loc_A40E81: MemLdRfVar from_stack_1.global_52
  loc_A40E84: NewIfNullPr clsordenpago
  loc_A40E87: from_stack_3v = clsordenpago.fxTieneCheques(from_stack_1v, from_stack_2v)
  loc_A40E8C: FLdI2 var_B2
  loc_A40E8F: FFreeAd var_88 = "": var_8C = ""
  loc_A40E98: FFree1Var var_B0 = ""
  loc_A40E9B: BranchF loc_A40EC8
  loc_A40E9E: LitI4 0
  loc_A40EA3: LitStr "La Orden de Pago tiene cheques. Verifique..."
  loc_A40EA6: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_A40EAB: LitI4 0
  loc_A40EB0: CI2I4
  loc_A40EB1: FLdPr Me
  loc_A40EB4: VCallAd Control_ID_ChequeUnicoChk
  loc_A40EB7: FStAdFunc var_88
  loc_A40EBA: FLdPr var_88
  loc_A40EBD: Me.Value = from_stack_1
  loc_A40EC2: FFree1Ad var_88
  loc_A40EC5: Branch loc_A4106C
  loc_A40EC8: FLdRfVar var_B2
  loc_A40ECB: FLdPr Me
  loc_A40ECE: VCallAd Control_ID_ChequeUnicoChk
  loc_A40ED1: FStAdFunc var_88
  loc_A40ED4: FLdPr var_88
  loc_A40ED7:  = Me.Value
  loc_A40EDC: FLdI2 var_B2
  loc_A40EDF: LitI2_Byte 1
  loc_A40EE1: EqI2
  loc_A40EE2: FFree1Ad var_88
  loc_A40EE5: BranchF loc_A41039
  loc_A40EE8: LitI4 0
  loc_A40EED: LitI4 0
  loc_A40EF2: FLdRfVar var_B8
  loc_A40EF5: Redim
  loc_A40EFF: FLdPr Me
  loc_A40F02: VCallAd Control_ID_CucuPersTxt
  loc_A40F05: CVarAd
  loc_A40F09: ParmAry1St
  loc_A40F0F: FLdRfVar var_B8
  loc_A40F12: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_A40F17: FLdRfVar var_B8
  loc_A40F1A: Erase
  loc_A40F1B: LitI2_Byte 1
  loc_A40F1D: FLdPr Me
  loc_A40F20: MemLdRfVar from_stack_1.global_72
  loc_A40F23: FLdPr Me
  loc_A40F26: VCallAd Control_ID_FlexCheque
  loc_A40F29: FStAdFunc var_88
  loc_A40F2C: FLdPr var_88
  loc_A40F2F: LateIdLdVar var_B0 DispID_4 0
  loc_A40F36: CI4Var
  loc_A40F38: LitI4 1
  loc_A40F3D: SubI4
  loc_A40F3E: CI2I4
  loc_A40F3F: FFree1Ad var_88
  loc_A40F42: FFree1Var var_B0 = ""
  loc_A40F45: ForI2 var_BC
  loc_A40F4B: LitVarI4
  loc_A40F53: PopAdLdVar
  loc_A40F54: LitVarI4
  loc_A40F5C: PopAdLdVar
  loc_A40F5D: FLdPr Me
  loc_A40F60: VCallAd Control_ID_FlexCheque
  loc_A40F63: FStAdFunc var_88
  loc_A40F66: FLdPr var_88
  loc_A40F69: LateIdCallLdVar
  loc_A40F73: CStrVarTmp
  loc_A40F74: CVarStr var_FC
  loc_A40F77: ImpAdCallI2 IsNumeric()
  loc_A40F7C: FLdPr Me
  loc_A40F7F: MemLdI2 global_72
  loc_A40F82: CI4UI1
  loc_A40F83: CVarI4
  loc_A40F87: PopAdLdVar
  loc_A40F88: LitVarI4
  loc_A40F90: PopAdLdVar
  loc_A40F91: FLdPr Me
  loc_A40F94: VCallAd Control_ID_FlexCheque
  loc_A40F97: FStAdFunc var_8C
  loc_A40F9A: FLdPr var_8C
  loc_A40F9D: LateIdCallLdVar
  loc_A40FA7: CStrVarTmp
  loc_A40FA8: FStStrNoPop var_150
  loc_A40FAB: LitStr vbNullString
  loc_A40FAE: EqStr
  loc_A40FB0: AndI4
  loc_A40FB1: FFree1Str var_150
  loc_A40FB4: FFreeAd var_88 = ""
  loc_A40FBB: FFreeVar var_B0 = "": var_FC = ""
  loc_A40FC4: BranchF loc_A4102B
  loc_A40FC7: FLdPr Me
  loc_A40FCA: MemLdI2 global_72
  loc_A40FCD: CI4UI1
  loc_A40FCE: CVarI4
  loc_A40FD2: PopAdLdVar
  loc_A40FD3: LitVarI4
  loc_A40FDB: PopAdLdVar
  loc_A40FDC: LitVarI4
  loc_A40FE4: PopAdLdVar
  loc_A40FE5: LitVarI4
  loc_A40FED: PopAdLdVar
  loc_A40FEE: FLdPr Me
  loc_A40FF1: VCallAd Control_ID_FlexCheque
  loc_A40FF4: FStAdFunc var_88
  loc_A40FF7: FLdPr var_88
  loc_A40FFA: LateIdCallLdVar
  loc_A41004: CStrVarTmp
  loc_A41005: CVarStr var_FC
  loc_A41008: PopAdLdVar
  loc_A41009: FLdPr Me
  loc_A4100C: VCallAd Control_ID_FlexCheque
  loc_A4100F: FStAdFunc var_8C
  loc_A41012: FLdPr var_8C
  loc_A41015: LateIdCallSt
  loc_A4101D: FFreeAd var_88 = ""
  loc_A41024: FFreeVar var_B0 = ""
  loc_A4102B: FLdPr Me
  loc_A4102E: MemLdRfVar from_stack_1.global_72
  loc_A41031: NextI2 var_BC, loc_A40F4B
  loc_A41036: Branch loc_A4106C
  loc_A41039: LitI4 0
  loc_A4103E: LitI4 0
  loc_A41043: FLdRfVar var_B8
  loc_A41046: Redim
  loc_A41050: FLdPr Me
  loc_A41053: VCallAd Control_ID_CucuPersTxt
  loc_A41056: CVarAd
  loc_A4105A: ParmAry1St
  loc_A41060: FLdRfVar var_B8
  loc_A41063: ImpAdCallFPR4 Proc_261_13_9760BC()
  loc_A41068: FLdRfVar var_B8
  loc_A4106B: Erase
  loc_A4106C: ExitProcHresult
End Sub

Private Sub Form_Load() 'A98ED8
  'Data Table: 4B2A08
  loc_A98A60: LitI2_Byte 0
  loc_A98A62: CR8I2
  loc_A98A63: PopFPR4
  loc_A98A64: FLdPr Me
  loc_A98A67: Me.Left = from_stack_1s
  loc_A98A6C: LitI2_Byte 0
  loc_A98A6E: CR8I2
  loc_A98A6F: PopFPR4
  loc_A98A70: FLdPr Me
  loc_A98A73: Me.Top = from_stack_1s
  loc_A98A78: FLdPr Me
  loc_A98A7B: VCallAd Control_ID_FlexCheque
  loc_A98A7E: FStAdFunc var_88
  loc_A98A81: LitVarI4
  loc_A98A89: PopAdLdVar
  loc_A98A8A: LitVarI4
  loc_A98A92: PopAdLdVar
  loc_A98A93: FLdPr var_88
  loc_A98A96: LateIdCallSt
  loc_A98A9E: LitVarI4
  loc_A98AA6: PopAdLdVar
  loc_A98AA7: LitVarI4
  loc_A98AAF: PopAdLdVar
  loc_A98AB0: FLdPr var_88
  loc_A98AB3: LateIdCallSt
  loc_A98ABB: LitVarI4
  loc_A98AC3: PopAdLdVar
  loc_A98AC4: LitVarI4
  loc_A98ACC: PopAdLdVar
  loc_A98ACD: FLdPr var_88
  loc_A98AD0: LateIdCallSt
  loc_A98AD8: LitVarI4
  loc_A98AE0: PopAdLdVar
  loc_A98AE1: LitVarI4
  loc_A98AE9: PopAdLdVar
  loc_A98AEA: FLdPr var_88
  loc_A98AED: LateIdCallSt
  loc_A98AF5: LitVarI4
  loc_A98AFD: PopAdLdVar
  loc_A98AFE: LitVarI4
  loc_A98B06: PopAdLdVar
  loc_A98B07: FLdPr var_88
  loc_A98B0A: LateIdCallSt
  loc_A98B12: LitVarI4
  loc_A98B1A: PopAdLdVar
  loc_A98B1B: LitVarI4
  loc_A98B23: PopAdLdVar
  loc_A98B24: FLdPr var_88
  loc_A98B27: LateIdCallSt
  loc_A98B2F: LitVarI4
  loc_A98B37: PopAdLdVar
  loc_A98B38: LitVarI4
  loc_A98B40: PopAdLdVar
  loc_A98B41: FLdPr var_88
  loc_A98B44: LateIdCallSt
  loc_A98B4C: LitVarI4
  loc_A98B54: PopAdLdVar
  loc_A98B55: LitVarI4
  loc_A98B5D: PopAdLdVar
  loc_A98B5E: FLdPr var_88
  loc_A98B61: LateIdCallSt
  loc_A98B69: LitVarI4
  loc_A98B71: PopAdLdVar
  loc_A98B72: LitVarI4
  loc_A98B7A: PopAdLdVar
  loc_A98B7B: FLdPr var_88
  loc_A98B7E: LateIdCallSt
  loc_A98B86: LitVarI4
  loc_A98B8E: PopAdLdVar
  loc_A98B8F: LitVarI4
  loc_A98B97: PopAdLdVar
  loc_A98B98: FLdPr var_88
  loc_A98B9B: LateIdCallSt
  loc_A98BA3: LitVarI4
  loc_A98BAB: PopAdLdVar
  loc_A98BAC: LitVarI4
  loc_A98BB4: PopAdLdVar
  loc_A98BB5: FLdPr var_88
  loc_A98BB8: LateIdCallSt
  loc_A98BC0: LitVarI4
  loc_A98BC8: PopAdLdVar
  loc_A98BC9: LitVarI4
  loc_A98BD1: PopAdLdVar
  loc_A98BD2: FLdPr var_88
  loc_A98BD5: LateIdCallSt
  loc_A98BDD: LitVarI4
  loc_A98BE5: PopAdLdVar
  loc_A98BE6: LitVarI4
  loc_A98BEE: PopAdLdVar
  loc_A98BEF: FLdPr var_88
  loc_A98BF2: LateIdCallSt
  loc_A98BFA: LitVarI4
  loc_A98C02: PopAdLdVar
  loc_A98C03: LitVarI4
  loc_A98C0B: PopAdLdVar
  loc_A98C0C: FLdPr var_88
  loc_A98C0F: LateIdCallSt
  loc_A98C17: LitVarI4
  loc_A98C1F: PopAdLdVar
  loc_A98C20: LitVarI4
  loc_A98C28: PopAdLdVar
  loc_A98C29: FLdPr var_88
  loc_A98C2C: LateIdCallSt
  loc_A98C34: LitNothing
  loc_A98C36: FStAd var_88 
  loc_A98C3A: LitStr vbNullString
  loc_A98C3D: FLdPr Me
  loc_A98C40: MemStStrCopy
  loc_A98C44: LitStr "SELECT *"
  loc_A98C47: LitStr " FROM ordenpago"
  loc_A98C4A: ConcatStr
  loc_A98C4B: FStStrNoPop var_CC
  loc_A98C4E: LitStr " WHERE PeriInfo = "
  loc_A98C51: ConcatStr
  loc_A98C52: FStStrNoPop var_D0
  loc_A98C55: ImpAdLdI2 MemVar_C3D064
  loc_A98C58: CStrUI1
  loc_A98C5A: FStStrNoPop var_D4
  loc_A98C5D: ConcatStr
  loc_A98C5E: FStStrNoPop var_D8
  loc_A98C61: LitStr " AND FereOrpa IS NULL"
  loc_A98C64: ConcatStr
  loc_A98C65: FStStrNoPop var_DC
  loc_A98C68: LitStr " AND FeanOrpa IS NULL"
  loc_A98C6B: ConcatStr
  loc_A98C6C: FStStrNoPop var_E0
  loc_A98C6F: LitStr " AND TipoOrpa <> 'Reservada'"
  loc_A98C72: ConcatStr
  loc_A98C73: FStStrNoPop var_E4
  loc_A98C76: LitStr " ORDER BY NumeOrpa;"
  loc_A98C79: ConcatStr
  loc_A98C7A: FStStrNoPop var_E8
  loc_A98C7D: FLdPr Me
  loc_A98C80: MemLdRfVar from_stack_1.global_52
  loc_A98C83: NewIfNullPr clsordenpago
  loc_A98C86: Call clsordenpago.RedefineRS(from_stack_1v)
  loc_A98C8B: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = "": var_E0 = "": var_E4 = ""
  loc_A98C9E: FLdRfVar var_EC
  loc_A98CA1: FLdPr Me
  loc_A98CA4: MemLdRfVar from_stack_1.global_52
  loc_A98CA7: NewIfNullPr clsordenpago
  loc_A98CAA: from_stack_1 = clsordenpago.RecordCount
  loc_A98CAF: ILdRf var_EC
  loc_A98CB2: LitI4 0
  loc_A98CB7: GtI4
  loc_A98CB8: BranchF loc_A98E24
  loc_A98CBB: LitStr "SELECT *"
  loc_A98CBE: LitStr " FROM banco"
  loc_A98CC1: ConcatStr
  loc_A98CC2: FStStrNoPop var_CC
  loc_A98CC5: LitStr " WHERE PeriInfo = "
  loc_A98CC8: ConcatStr
  loc_A98CC9: FStStrNoPop var_D0
  loc_A98CCC: ImpAdLdI2 MemVar_C3D064
  loc_A98CCF: CStrUI1
  loc_A98CD1: FStStrNoPop var_D4
  loc_A98CD4: ConcatStr
  loc_A98CD5: FStStrNoPop var_D8
  loc_A98CD8: LitStr " AND CodiUsua != 'migra'"
  loc_A98CDB: ConcatStr
  loc_A98CDC: FStStrNoPop var_DC
  loc_A98CDF: LitStr " ORDER BY EmauCheq DESC, CodiBanc;"
  loc_A98CE2: ConcatStr
  loc_A98CE3: FStStrNoPop var_E0
  loc_A98CE6: FLdPr Me
  loc_A98CE9: MemLdRfVar from_stack_1.global_56
  loc_A98CEC: NewIfNullPr clsbanco
  loc_A98CEF: Call clsbanco.RedefineRS(from_stack_1v)
  loc_A98CF4: FFreeStr var_CC = "": var_D0 = "": var_D4 = "": var_D8 = "": var_DC = ""
  loc_A98D03: FLdPr Me
  loc_A98D06: VCallAd Control_ID_BancoCbo
  loc_A98D09: FStAdFunc var_F0
  loc_A98D0C: FLdPr var_F0
  loc_A98D0F: Me.Clear
  loc_A98D14: FFree1Ad var_F0
  loc_A98D17: FLdRfVar var_EC
  loc_A98D1A: FLdPr Me
  loc_A98D1D: MemLdRfVar from_stack_1.global_56
  loc_A98D20: NewIfNullPr clsbanco
  loc_A98D23: from_stack_1 = clsbanco.RecordCount
  loc_A98D28: ILdRf var_EC
  loc_A98D2B: LitI4 0
  loc_A98D30: GtI4
  loc_A98D31: BranchF loc_A98E24
  loc_A98D34: FLdPr Me
  loc_A98D37: MemLdRfVar from_stack_1.global_56
  loc_A98D3A: NewIfNullPr clsbanco
  loc_A98D3D: Call clsbanco.MoveFirst()
  loc_A98D42: FLdRfVar var_F2
  loc_A98D45: FLdPr Me
  loc_A98D48: MemLdRfVar from_stack_1.global_56
  loc_A98D4B: NewIfNullPr clsbanco
  loc_A98D4E: from_stack_1 = clsbanco.EOF
  loc_A98D53: FLdI2 var_F2
  loc_A98D56: NotI4
  loc_A98D57: BranchF loc_A98E24
  loc_A98D5A: LitVar_Missing var_C8
  loc_A98D5D: PopAdLdVar
  loc_A98D5E: FLdRfVar var_10C
  loc_A98D61: FLdRfVar var_FC
  loc_A98D64: LitVarStr var_98, "CodiBanc"
  loc_A98D69: PopAdLdVar
  loc_A98D6A: FLdRfVar var_F8
  loc_A98D6D: FLdRfVar var_F0
  loc_A98D70: FLdPr Me
  loc_A98D73: MemLdRfVar from_stack_1.global_56
  loc_A98D76: NewIfNullPr clsbanco
  loc_A98D79: from_stack_1v = clsbanco.RsFrmGet()
  loc_A98D7E: FLdPr var_F0
  loc_A98D81:  = Me.Fields
  loc_A98D86: FLdPr var_F8
  loc_A98D89: from_stack_2 = Me.Item(from_stack_1)
  loc_A98D8E: FLdPr var_FC
  loc_A98D91:  = Me.Value
  loc_A98D96: FLdRfVar var_10C
  loc_A98D99: LitVarStr var_A8, " - "
  loc_A98D9E: ConcatVar var_11C
  loc_A98DA2: FLdRfVar var_138
  loc_A98DA5: FLdRfVar var_128
  loc_A98DA8: LitVarStr var_B8, "DetaBanc"
  loc_A98DAD: PopAdLdVar
  loc_A98DAE: FLdRfVar var_124
  loc_A98DB1: FLdRfVar var_120
  loc_A98DB4: FLdPr Me
  loc_A98DB7: MemLdRfVar from_stack_1.global_56
  loc_A98DBA: NewIfNullPr clsbanco
  loc_A98DBD: from_stack_1v = clsbanco.RsFrmGet()
  loc_A98DC2: FLdPr var_120
  loc_A98DC5:  = Me.Fields
  loc_A98DCA: FLdPr var_124
  loc_A98DCD: from_stack_2 = Me.Item(from_stack_1)
  loc_A98DD2: FLdPr var_128
  loc_A98DD5:  = Me.Value
  loc_A98DDA: FLdRfVar var_138
  loc_A98DDD: ConcatVar var_148
  loc_A98DE1: CStrVarVal var_CC
  loc_A98DE5: FLdPrThis
  loc_A98DE6: VCallAd Control_ID_BancoCbo
  loc_A98DE9: FStAdFunc var_14C
  loc_A98DEC: FLdPr var_14C
  loc_A98DEF: Me.AddItem from_stack_1, from_stack_2
  loc_A98DF4: FFree1Str var_CC
  loc_A98DF7: FFreeAd var_F0 = "": var_F8 = "": var_FC = "": var_120 = "": var_124 = "": var_128 = ""
  loc_A98E08: FFreeVar var_10C = "": var_11C = "": var_138 = ""
  loc_A98E13: FLdPr Me
  loc_A98E16: MemLdRfVar from_stack_1.global_56
  loc_A98E19: NewIfNullPr clsbanco
  loc_A98E1C: Call clsbanco.MoveSiguiente()
  loc_A98E21: Branch loc_A98D42
  loc_A98E24: LitVarI2 var_98, 0
  loc_A98E29: PopAdLdVar
  loc_A98E2A: LitStr "Orden de Pago"
  loc_A98E2D: FLdPr Me
  loc_A98E30: VCallAd Control_ID_FiltroCbo
  loc_A98E33: FStAdFunc var_F0
  loc_A98E36: FLdPr var_F0
  loc_A98E39: Me.AddItem from_stack_1, from_stack_2
  loc_A98E3E: FFree1Ad var_F0
  loc_A98E41: LitVarI2 var_98, 1
  loc_A98E46: PopAdLdVar
  loc_A98E47: LitStr "Expediente"
  loc_A98E4A: FLdPr Me
  loc_A98E4D: VCallAd Control_ID_FiltroCbo
  loc_A98E50: FStAdFunc var_F0
  loc_A98E53: FLdPr var_F0
  loc_A98E56: Me.AddItem from_stack_1, from_stack_2
  loc_A98E5B: FFree1Ad var_F0
  loc_A98E5E: LitI2_Byte 0
  loc_A98E60: FLdPr Me
  loc_A98E63: VCallAd Control_ID_FiltroCbo
  loc_A98E66: FStAdFunc var_F0
  loc_A98E69: FLdPr var_F0
  loc_A98E6C: Me.ListIndex = from_stack_1
  loc_A98E71: FFree1Ad var_F0
  loc_A98E74: Call cmdCancelar_Click()
  loc_A98E79: LitI4 0
  loc_A98E7E: LitI4 1
  loc_A98E83: FLdRfVar var_150
  loc_A98E86: Redim
  loc_A98E90: FLdPr Me
  loc_A98E93: MemLdRfVar from_stack_1.global_52
  loc_A98E96: NewIfNullAd
  loc_A98E99: FStAd var_F0 
  loc_A98E9D: FLdRfVar var_F0
  loc_A98EA0: CVarRef
  loc_A98EA5: ParmAry1St
  loc_A98EAB: FLdPr Me
  loc_A98EAE: VCallAd Control_ID_dgdABMS
  loc_A98EB1: CVarAd
  loc_A98EB5: ParmAry1St
  loc_A98EBB: FLdRfVar var_150
  loc_A98EBE: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A98EC3: ILdRf var_F0
  loc_A98EC6: CastAd
  loc_A98EC9: FLdPr Me
  loc_A98ECC: MemStAdFunc
  loc_A98ED0: FLdRfVar var_150
  loc_A98ED3: Erase
  loc_A98ED4: FFree1Ad var_F0
  loc_A98ED7: ExitProcHresult
End Sub

Private Sub Form_Activate() '99815C
  'Data Table: 4B2A08
  loc_998100: FLdRfVar var_C2
  loc_998103: FLdRfVar var_C0
  loc_998106: LitVarI2 var_B8, 1
  loc_99810B: FLdPr Me
  loc_99810E: VCallAd Control_ID_tlbABMS
  loc_998111: FStAdFunc var_88
  loc_998114: FLdPr var_88
  loc_998117: LateIdLdVar var_98 DispID_3 0
  loc_99811E: CastAdVar Me
  loc_998122: FStAdFunc var_BC
  loc_998125: FLdPr var_BC
  loc_998128:  = Me.Buttons.ControlDefault
  loc_99812D: FLdPr var_C0
  loc_998130:  = Me.Enabled
  loc_998135: FLdI2 var_C2
  loc_998138: FFreeAd var_88 = "": var_BC = ""
  loc_998141: FFreeVar var_98 = ""
  loc_998148: BranchF loc_998159
  loc_99814B: FLdPr Me
  loc_99814E: MemLdRfVar from_stack_1.global_52
  loc_998151: NewIfNullPr clsordenpago
  loc_998154: Call clsordenpago.Requery()
  loc_998159: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '962418
  'Data Table: 4B2A08
  loc_962400: ILdI2 KeyCode
  loc_962403: ILdRf Me
  loc_962406: CastAd
  loc_962409: FStAdFunc var_88
  loc_96240C: FLdRfVar var_88
  loc_96240F: ImpAdCallFPR4 Proc_261_3_A7CAFC(, )
  loc_962414: FFree1Ad var_88
  loc_962417: ExitProcHresult
End Sub

Private Function Proc_113_35_A3BF1C() 'A3BF1C
  'Data Table: 4B2A08
  loc_A3BCD8: FLdPr Me
  loc_A3BCDB: VCallAd Control_ID_FlexCheque
  loc_A3BCDE: FStAdFunc var_88
  loc_A3BCE1: FLdPr var_88
  loc_A3BCE4: LateIdCall
  loc_A3BCEC: LitVarI4
  loc_A3BCF4: PopAdLdVar
  loc_A3BCF5: FLdPr var_88
  loc_A3BCF8: LateIdSt
  loc_A3BCFD: LitVarI4
  loc_A3BD05: PopAdLdVar
  loc_A3BD06: LitVarI4
  loc_A3BD0E: PopAdLdVar
  loc_A3BD0F: LitVarStr var_D8, "CUIT-CUIL"
  loc_A3BD14: PopAdLdVar
  loc_A3BD15: FLdPr var_88
  loc_A3BD18: LateIdCallSt
  loc_A3BD20: LitVarI4
  loc_A3BD28: PopAdLdVar
  loc_A3BD29: LitVarI4
  loc_A3BD31: PopAdLdVar
  loc_A3BD32: LitVarStr var_D8, "A la Orden de ..."
  loc_A3BD37: PopAdLdVar
  loc_A3BD38: FLdPr var_88
  loc_A3BD3B: LateIdCallSt
  loc_A3BD43: LitVarI4
  loc_A3BD4B: PopAdLdVar
  loc_A3BD4C: LitVarI4
  loc_A3BD54: PopAdLdVar
  loc_A3BD55: LitVarStr var_D8, "Importe"
  loc_A3BD5A: PopAdLdVar
  loc_A3BD5B: FLdPr var_88
  loc_A3BD5E: LateIdCallSt
  loc_A3BD66: LitVarI4
  loc_A3BD6E: PopAdLdVar
  loc_A3BD6F: LitVarI4
  loc_A3BD77: PopAdLdVar
  loc_A3BD78: LitVarStr var_D8, "Banco"
  loc_A3BD7D: PopAdLdVar
  loc_A3BD7E: FLdPr var_88
  loc_A3BD81: LateIdCallSt
  loc_A3BD89: LitVarI4
  loc_A3BD91: PopAdLdVar
  loc_A3BD92: LitVarI4
  loc_A3BD9A: PopAdLdVar
  loc_A3BD9B: LitVarStr var_D8, "Número"
  loc_A3BDA0: PopAdLdVar
  loc_A3BDA1: FLdPr var_88
  loc_A3BDA4: LateIdCallSt
  loc_A3BDAC: LitVarI4
  loc_A3BDB4: PopAdLdVar
  loc_A3BDB5: LitVarI4
  loc_A3BDBD: PopAdLdVar
  loc_A3BDBE: LitVarStr var_D8, "Ma/Imp/Tr/eCh"
  loc_A3BDC3: PopAdLdVar
  loc_A3BDC4: FLdPr var_88
  loc_A3BDC7: LateIdCallSt
  loc_A3BDCF: LitVarI4
  loc_A3BDD7: PopAdLdVar
  loc_A3BDD8: LitVarI4
  loc_A3BDE0: PopAdLdVar
  loc_A3BDE1: LitVarStr var_D8, "Fecha Emisión"
  loc_A3BDE6: PopAdLdVar
  loc_A3BDE7: FLdPr var_88
  loc_A3BDEA: LateIdCallSt
  loc_A3BDF2: LitVarI4
  loc_A3BDFA: PopAdLdVar
  loc_A3BDFB: LitVarI4
  loc_A3BE03: PopAdLdVar
  loc_A3BE04: LitVarStr var_D8, "Fecha Anulac."
  loc_A3BE09: PopAdLdVar
  loc_A3BE0A: FLdPr var_88
  loc_A3BE0D: LateIdCallSt
  loc_A3BE15: LitVarI4
  loc_A3BE1D: PopAdLdVar
  loc_A3BE1E: LitVarI4
  loc_A3BE26: PopAdLdVar
  loc_A3BE27: LitVarStr var_D8, "Saldo"
  loc_A3BE2C: PopAdLdVar
  loc_A3BE2D: FLdPr var_88
  loc_A3BE30: LateIdCallSt
  loc_A3BE38: LitVarI4
  loc_A3BE40: PopAdLdVar
  loc_A3BE41: LitVarI4
  loc_A3BE49: PopAdLdVar
  loc_A3BE4A: LitVarStr var_D8, "Baja"
  loc_A3BE4F: PopAdLdVar
  loc_A3BE50: FLdPr var_88
  loc_A3BE53: LateIdCallSt
  loc_A3BE5B: LitVarI4
  loc_A3BE63: PopAdLdVar
  loc_A3BE64: LitVarI4
  loc_A3BE6C: PopAdLdVar
  loc_A3BE6D: LitVarStr var_D8, "Secu"
  loc_A3BE72: PopAdLdVar
  loc_A3BE73: FLdPr var_88
  loc_A3BE76: LateIdCallSt
  loc_A3BE7E: LitVarI4
  loc_A3BE86: PopAdLdVar
  loc_A3BE87: LitVarI4
  loc_A3BE8F: PopAdLdVar
  loc_A3BE90: LitVarStr var_D8, "Interbanking"
  loc_A3BE95: PopAdLdVar
  loc_A3BE96: FLdPr var_88
  loc_A3BE99: LateIdCallSt
  loc_A3BEA1: LitVarI4
  loc_A3BEA9: PopAdLdVar
  loc_A3BEAA: LitVarI4
  loc_A3BEB2: PopAdLdVar
  loc_A3BEB3: LitVarStr var_D8, "Cede cheque?"
  loc_A3BEB8: PopAdLdVar
  loc_A3BEB9: FLdPr var_88
  loc_A3BEBC: LateIdCallSt
  loc_A3BEC4: LitVarI4
  loc_A3BECC: PopAdLdVar
  loc_A3BECD: LitVarI4
  loc_A3BED5: PopAdLdVar
  loc_A3BED6: LitVarStr var_D8, vbNullString
  loc_A3BEDB: PopAdLdVar
  loc_A3BEDC: FLdPr var_88
  loc_A3BEDF: LateIdCallSt
  loc_A3BEE7: LitVarI4
  loc_A3BEEF: PopAdLdVar
  loc_A3BEF0: LitVarI4
  loc_A3BEF8: PopAdLdVar
  loc_A3BEF9: LitVarStr var_D8, vbNullString
  loc_A3BEFE: PopAdLdVar
  loc_A3BEFF: FLdPr var_88
  loc_A3BF02: LateIdCallSt
  loc_A3BF0A: FLdPr var_88
  loc_A3BF0D: LateIdCall
  loc_A3BF15: LitNothing
  loc_A3BF17: FStAd var_88 
  loc_A3BF1B: ExitProcHresult
End Function

Private Function Proc_113_36_B68FAC() 'B68FAC
  'Data Table: 4B2A08
  loc_B685D0: from_stack_1v = Proc_113_35_A3BF1C()
  loc_B685D5: FLdRfVar var_88
  loc_B685D8: FLdPr Me
  loc_B685DB: MemLdRfVar from_stack_1.global_52
  loc_B685DE: NewIfNullPr clsordenpago
  loc_B685E1: from_stack_1 = clsordenpago.RecordCount
  loc_B685E6: ILdRf var_88
  loc_B685E9: LitI4 0
  loc_B685EE: GtI4
  loc_B685EF: BranchF loc_B68FA8
  loc_B685F2: LitStr "SELECT ch.*, DetaProv, PainProv, CedeProv, IFNULL(DetaBanc,'') DetaBanc"
  loc_B685F5: LitStr " FROM cheque ch"
  loc_B685F8: ConcatStr
  loc_B685F9: FStStrNoPop var_8C
  loc_B685FC: LitStr " INNER JOIN proveedor p ON p.CucuPers = ch.CucuPers"
  loc_B685FF: ConcatStr
  loc_B68600: FStStrNoPop var_90
  loc_B68603: LitStr " LEFT JOIN banco b ON b.PeriInfo = ch.PeriInfo AND b.CodiBanc = ch.CodiBanc"
  loc_B68606: ConcatStr
  loc_B68607: FStStrNoPop var_94
  loc_B6860A: LitStr " WHERE ch.PeriInfo = "
  loc_B6860D: ConcatStr
  loc_B6860E: CVarStr var_D0
  loc_B68611: FLdRfVar var_C0
  loc_B68614: FLdRfVar var_B0
  loc_B68617: LitVarStr var_AC, "PeriInfo"
  loc_B6861C: PopAdLdVar
  loc_B6861D: FLdRfVar var_9C
  loc_B68620: FLdRfVar var_98
  loc_B68623: FLdPr Me
  loc_B68626: MemLdRfVar from_stack_1.global_52
  loc_B68629: NewIfNullPr clsordenpago
  loc_B6862C: from_stack_1v = clsordenpago.RsFrmGet()
  loc_B68631: FLdPr var_98
  loc_B68634:  = Me.Fields
  loc_B68639: FLdPr var_9C
  loc_B6863C: from_stack_2 = Me.Item(from_stack_1)
  loc_B68641: FLdPr var_B0
  loc_B68644:  = Me.Value
  loc_B68649: FLdRfVar var_C0
  loc_B6864C: ConcatVar var_E0
  loc_B68650: LitVarStr var_F0, " AND ch.NumeOrpa = "
  loc_B68655: ConcatVar var_100
  loc_B68659: FLdRfVar var_12C
  loc_B6865C: FLdRfVar var_11C
  loc_B6865F: LitVarStr var_118, "NumeOrpa"
  loc_B68664: PopAdLdVar
  loc_B68665: FLdRfVar var_108
  loc_B68668: FLdRfVar var_104
  loc_B6866B: FLdPr Me
  loc_B6866E: MemLdRfVar from_stack_1.global_52
  loc_B68671: NewIfNullPr clsordenpago
  loc_B68674: from_stack_1v = clsordenpago.RsFrmGet()
  loc_B68679: FLdPr var_104
  loc_B6867C:  = Me.Fields
  loc_B68681: FLdPr var_108
  loc_B68684: from_stack_2 = Me.Item(from_stack_1)
  loc_B68689: FLdPr var_11C
  loc_B6868C:  = Me.Value
  loc_B68691: FLdRfVar var_12C
  loc_B68694: ConcatVar var_13C
  loc_B68698: LitVarStr var_14C, " AND ch.FepaCheq IS NULL"
  loc_B6869D: ConcatVar var_15C
  loc_B686A1: LitVarStr var_16C, " ORDER BY DetaProv, ch.CucuPers, ch.NumeMoba;"
  loc_B686A6: ConcatVar var_17C
  loc_B686AA: CStrVarVal var_180
  loc_B686AE: FLdPr Me
  loc_B686B1: MemLdRfVar from_stack_1.global_60
  loc_B686B4: NewIfNullPr clscheque
  loc_B686B7: Call clscheque.RedefineRS(from_stack_1v)
  loc_B686BC: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_B686C7: FFreeAd var_98 = "": var_9C = "": var_B0 = "": var_104 = "": var_108 = ""
  loc_B686D6: FFreeVar var_D0 = "": var_C0 = "": var_E0 = "": var_100 = "": var_12C = "": var_13C = "": var_15C = ""
  loc_B686E9: FLdRfVar var_88
  loc_B686EC: FLdPr Me
  loc_B686EF: MemLdRfVar from_stack_1.global_60
  loc_B686F2: NewIfNullPr clscheque
  loc_B686F5: from_stack_1 = clscheque.RecordCount
  loc_B686FA: ILdRf var_88
  loc_B686FD: LitI4 0
  loc_B68702: GtI4
  loc_B68703: BranchF loc_B68FA8
  loc_B68706: FLdPr Me
  loc_B68709: MemLdRfVar from_stack_1.global_60
  loc_B6870C: NewIfNullPr clscheque
  loc_B6870F: Call clscheque.MoveFirst()
  loc_B68714: FLdRfVar var_182
  loc_B68717: FLdPr Me
  loc_B6871A: MemLdRfVar from_stack_1.global_60
  loc_B6871D: NewIfNullPr clscheque
  loc_B68720: from_stack_1 = clscheque.EOF
  loc_B68725: FLdI2 var_182
  loc_B68728: NotI4
  loc_B68729: BranchF loc_B68FA8
  loc_B6872C: LitStr "Municipalidad de Guaymallén"
  loc_B6872F: FStStrCopy var_188
  loc_B68732: ILdRf var_188
  loc_B68735: LitStr "Municipalidad de Maipú"
  loc_B68738: EqStr
  loc_B6873A: BranchT loc_B68748
  loc_B6873D: ILdRf var_188
  loc_B68740: LitStr "Municipalidad de Tunuyán"
  loc_B68743: EqStr
  loc_B68745: BranchF loc_B68755
  loc_B68748: LitStr " - NO A LA ORDEN"
  loc_B6874B: FLdPr Me
  loc_B6874E: MemStStrCopy
  loc_B68752: Branch loc_B6875F
  loc_B68755: LitStr vbNullString
  loc_B68758: FLdPr Me
  loc_B6875B: MemStStrCopy
  loc_B6875F: FLdRfVar var_C0
  loc_B68762: FLdRfVar var_B0
  loc_B68765: LitVarStr var_AC, "AutoCheq"
  loc_B6876A: PopAdLdVar
  loc_B6876B: FLdRfVar var_9C
  loc_B6876E: FLdRfVar var_98
  loc_B68771: FLdPr Me
  loc_B68774: MemLdRfVar from_stack_1.global_60
  loc_B68777: NewIfNullPr clscheque
  loc_B6877A: from_stack_1v = clscheque.RsFrmGet()
  loc_B6877F: FLdPr var_98
  loc_B68782:  = Me.Fields
  loc_B68787: FLdPr var_9C
  loc_B6878A: from_stack_2 = Me.Item(from_stack_1)
  loc_B6878F: FLdPr var_B0
  loc_B68792:  = Me.Value
  loc_B68797: FLdRfVar var_C0
  loc_B6879A: FStVar var_198
  loc_B6879E: FFreeAd var_98 = "": var_9C = ""
  loc_B687A7: FLdRfVar var_198
  loc_B687AA: LitVarI2 var_AC, 0
  loc_B687AF: HardType
  loc_B687B0: EqVarBool
  loc_B687B2: BranchF loc_B687C2
  loc_B687B5: LitStr vbNullString
  loc_B687B8: FLdPr Me
  loc_B687BB: MemStStrCopy
  loc_B687BF: Branch loc_B6882B
  loc_B687C2: FLdRfVar var_198
  loc_B687C5: LitVarI2 var_AC, 1
  loc_B687CA: HardType
  loc_B687CB: EqVarBool
  loc_B687CD: BranchF loc_B687DD
  loc_B687D0: LitStr "Manual"
  loc_B687D3: FLdPr Me
  loc_B687D6: MemStStrCopy
  loc_B687DA: Branch loc_B6882B
  loc_B687DD: FLdRfVar var_198
  loc_B687E0: LitVarI2 var_AC, 2
  loc_B687E5: HardType
  loc_B687E6: EqVarBool
  loc_B687E8: BranchF loc_B687F8
  loc_B687EB: LitStr "Impreso"
  loc_B687EE: FLdPr Me
  loc_B687F1: MemStStrCopy
  loc_B687F5: Branch loc_B6882B
  loc_B687F8: FLdRfVar var_198
  loc_B687FB: LitVarI2 var_AC, 3
  loc_B68800: HardType
  loc_B68801: EqVarBool
  loc_B68803: BranchF loc_B68813
  loc_B68806: LitStr "Transferencia"
  loc_B68809: FLdPr Me
  loc_B6880C: MemStStrCopy
  loc_B68810: Branch loc_B6882B
  loc_B68813: FLdRfVar var_198
  loc_B68816: LitVarI2 var_AC, 4
  loc_B6881B: HardType
  loc_B6881C: EqVarBool
  loc_B6881E: BranchF loc_B6882B
  loc_B68821: LitStr "eCheq"
  loc_B68824: FLdPr Me
  loc_B68827: MemStStrCopy
  loc_B6882B: FLdRfVar var_C0
  loc_B6882E: FLdRfVar var_B0
  loc_B68831: LitVarStr var_AC, "CodiBanc"
  loc_B68836: PopAdLdVar
  loc_B68837: FLdRfVar var_9C
  loc_B6883A: FLdRfVar var_98
  loc_B6883D: FLdPr Me
  loc_B68840: MemLdRfVar from_stack_1.global_60
  loc_B68843: NewIfNullPr clscheque
  loc_B68846: from_stack_1v = clscheque.RsFrmGet()
  loc_B6884B: FLdPr var_98
  loc_B6884E:  = Me.Fields
  loc_B68853: FLdPr var_9C
  loc_B68856: from_stack_2 = Me.Item(from_stack_1)
  loc_B6885B: FLdPr var_B0
  loc_B6885E:  = Me.Value
  loc_B68863: FLdRfVar var_D0
  loc_B68866: FLdRfVar var_11C
  loc_B68869: LitVarStr var_F0, "CodiBanc"
  loc_B6886E: PopAdLdVar
  loc_B6886F: FLdRfVar var_108
  loc_B68872: FLdRfVar var_104
  loc_B68875: FLdPr Me
  loc_B68878: MemLdRfVar from_stack_1.global_60
  loc_B6887B: NewIfNullPr clscheque
  loc_B6887E: from_stack_1v = clscheque.RsFrmGet()
  loc_B68883: FLdPr var_104
  loc_B68886:  = Me.Fields
  loc_B6888B: FLdPr var_108
  loc_B6888E: from_stack_2 = Me.Item(from_stack_1)
  loc_B68893: FLdPr var_11C
  loc_B68896:  = Me.Value
  loc_B6889B: FLdRfVar var_100
  loc_B6889E: FLdRfVar var_1A4
  loc_B688A1: LitVarStr var_14C, "DetaBanc"
  loc_B688A6: PopAdLdVar
  loc_B688A7: FLdRfVar var_1A0
  loc_B688AA: FLdRfVar var_19C
  loc_B688AD: FLdPr Me
  loc_B688B0: MemLdRfVar from_stack_1.global_60
  loc_B688B3: NewIfNullPr clscheque
  loc_B688B6: from_stack_1v = clscheque.RsFrmGet()
  loc_B688BB: FLdPr var_19C
  loc_B688BE:  = Me.Fields
  loc_B688C3: FLdPr var_1A0
  loc_B688C6: from_stack_2 = Me.Item(from_stack_1)
  loc_B688CB: FLdPr var_1A4
  loc_B688CE:  = Me.Value
  loc_B688D3: LitVarI2 var_12C, 18
  loc_B688D8: LitI4 1
  loc_B688DD: FLdRfVar var_100
  loc_B688E0: CStrVarTmp
  loc_B688E1: FStStrNoPop var_90
  loc_B688E4: ImpAdCallI2 Mid$(, , )
  loc_B688E9: FStStr var_180
  loc_B688EC: LitVarStr var_1C4, vbNullString
  loc_B688F1: FStVarCopyObj var_17C
  loc_B688F4: FLdRfVar var_17C
  loc_B688F7: FLdRfVar var_D0
  loc_B688FA: LitVarStr var_118, " - "
  loc_B688FF: ConcatVar var_E0
  loc_B68903: FLdZeroAd var_180
  loc_B68906: CVarStr var_13C
  loc_B68909: ConcatVar var_15C
  loc_B6890D: FLdRfVar var_C0
  loc_B68910: FnCStrVar
  loc_B68912: FStStrNoPop var_8C
  loc_B68915: LitStr "0"
  loc_B68918: NeStr
  loc_B6891A: CVarBoolI2 var_1B4
  loc_B6891E: FLdRfVar var_1D4
  loc_B68921: ImpAdCallFPR4  = IIf(, , )
  loc_B68926: FLdRfVar var_1D4
  loc_B68929: CStrVarTmp
  loc_B6892A: FStStrNoPop var_94
  loc_B6892D: FLdPr Me
  loc_B68930: MemStStrCopy
  loc_B68934: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_B6893F: FFreeAd var_98 = "": var_9C = "": var_B0 = "": var_104 = "": var_108 = "": var_11C = "": var_19C = "": var_1A0 = ""
  loc_B68954: FFreeVar var_C0 = "": var_D0 = "": var_100 = "": var_12C = "": var_E0 = "": var_13C = "": var_1B4 = "": var_15C = "": var_17C = ""
  loc_B6896B: FLdRfVar var_B0
  loc_B6896E: LitVarStr var_AC, "CucuPers"
  loc_B68973: PopAdLdVar
  loc_B68974: FLdRfVar var_9C
  loc_B68977: FLdRfVar var_98
  loc_B6897A: FLdPr Me
  loc_B6897D: MemLdRfVar from_stack_1.global_60
  loc_B68980: NewIfNullPr clscheque
  loc_B68983: from_stack_1v = clscheque.RsFrmGet()
  loc_B68988: FLdPr var_98
  loc_B6898B:  = Me.Fields
  loc_B68990: FLdPr var_9C
  loc_B68993: from_stack_2 = Me.Item(from_stack_1)
  loc_B68998: FLdRfVar var_13C
  loc_B6899B: FLdRfVar var_11C
  loc_B6899E: LitVarStr var_118, "OrdeCheq"
  loc_B689A3: PopAdLdVar
  loc_B689A4: FLdRfVar var_108
  loc_B689A7: FLdRfVar var_104
  loc_B689AA: FLdPr Me
  loc_B689AD: MemLdRfVar from_stack_1.global_60
  loc_B689B0: NewIfNullPr clscheque
  loc_B689B3: from_stack_1v = clscheque.RsFrmGet()
  loc_B689B8: FLdPr var_104
  loc_B689BB:  = Me.Fields
  loc_B689C0: FLdPr var_108
  loc_B689C3: from_stack_2 = Me.Item(from_stack_1)
  loc_B689C8: FLdPr var_11C
  loc_B689CB:  = Me.Value
  loc_B689D0: FLdRfVar var_1A4
  loc_B689D3: LitVarStr var_16C, "OrdeCheq"
  loc_B689D8: PopAdLdVar
  loc_B689D9: FLdRfVar var_1A0
  loc_B689DC: FLdRfVar var_19C
  loc_B689DF: FLdPr Me
  loc_B689E2: MemLdRfVar from_stack_1.global_60
  loc_B689E5: NewIfNullPr clscheque
  loc_B689E8: from_stack_1v = clscheque.RsFrmGet()
  loc_B689ED: FLdPr var_19C
  loc_B689F0:  = Me.Fields
  loc_B689F5: FLdPr var_1A0
  loc_B689F8: from_stack_2 = Me.Item(from_stack_1)
  loc_B689FD: FLdRfVar var_25C
  loc_B68A00: LitVarStr var_258, "ImpoCheq"
  loc_B68A05: PopAdLdVar
  loc_B68A06: FLdRfVar var_248
  loc_B68A09: FLdRfVar var_244
  loc_B68A0C: FLdPr Me
  loc_B68A0F: MemLdRfVar from_stack_1.global_60
  loc_B68A12: NewIfNullPr clscheque
  loc_B68A15: from_stack_1v = clscheque.RsFrmGet()
  loc_B68A1A: FLdPr var_244
  loc_B68A1D:  = Me.Fields
  loc_B68A22: FLdPr var_248
  loc_B68A25: from_stack_2 = Me.Item(from_stack_1)
  loc_B68A2A: FLdRfVar var_47C
  loc_B68A2D: LitVarStr var_478, "ImpoCheq"
  loc_B68A32: PopAdLdVar
  loc_B68A33: FLdRfVar var_468
  loc_B68A36: FLdRfVar var_464
  loc_B68A39: FLdPr Me
  loc_B68A3C: MemLdRfVar from_stack_1.global_60
  loc_B68A3F: NewIfNullPr clscheque
  loc_B68A42: from_stack_1v = clscheque.RsFrmGet()
  loc_B68A47: FLdPr var_464
  loc_B68A4A:  = Me.Fields
  loc_B68A4F: FLdPr var_468
  loc_B68A52: from_stack_2 = Me.Item(from_stack_1)
  loc_B68A57: FLdRfVar var_508
  loc_B68A5A: LitVarStr var_504, "FeanCheq"
  loc_B68A5F: PopAdLdVar
  loc_B68A60: FLdRfVar var_4F4
  loc_B68A63: FLdRfVar var_4F0
  loc_B68A66: FLdPr Me
  loc_B68A69: MemLdRfVar from_stack_1.global_60
  loc_B68A6C: NewIfNullPr clscheque
  loc_B68A6F: from_stack_1v = clscheque.RsFrmGet()
  loc_B68A74: FLdPr var_4F0
  loc_B68A77:  = Me.Fields
  loc_B68A7C: FLdPr var_4F4
  loc_B68A7F: from_stack_2 = Me.Item(from_stack_1)
  loc_B68A84: FLdZeroAd var_508
  loc_B68A87: CVarAd
  loc_B68A8B: ImpAdCallI2 IsDate()
  loc_B68A90: FStI2 var_182
  loc_B68A93: LitI4 1
  loc_B68A98: LitI4 1
  loc_B68A9D: LitVarStr var_F0, "##-########-#"
  loc_B68AA2: FStVarCopyObj var_D0
  loc_B68AA5: FLdRfVar var_D0
  loc_B68AA8: FLdZeroAd var_B0
  loc_B68AAB: CVarAd
  loc_B68AAF: ImpAdCallI2 Format$(, )
  loc_B68AB4: CVarStr var_100
  loc_B68AB7: LitI4 9
  loc_B68ABC: FLdRfVar var_E0
  loc_B68ABF: ImpAdCallFPR4  = Chr()
  loc_B68AC4: FLdRfVar var_E0
  loc_B68AC7: ConcatVar var_12C
  loc_B68ACB: FLdRfVar var_17C
  loc_B68ACE: FLdRfVar var_1E0
  loc_B68AD1: LitVarStr var_1B4, "DetaProv"
  loc_B68AD6: PopAdLdVar
  loc_B68AD7: FLdRfVar var_1DC
  loc_B68ADA: FLdRfVar var_1D8
  loc_B68ADD: FLdPr Me
  loc_B68AE0: MemLdRfVar from_stack_1.global_60
  loc_B68AE3: NewIfNullPr clscheque
  loc_B68AE6: from_stack_1v = clscheque.RsFrmGet()
  loc_B68AEB: FLdPr var_1D8
  loc_B68AEE:  = Me.Fields
  loc_B68AF3: FLdPr var_1DC
  loc_B68AF6: from_stack_2 = Me.Item(from_stack_1)
  loc_B68AFB: FLdPr var_1E0
  loc_B68AFE:  = Me.Value
  loc_B68B03: FLdRfVar var_17C
  loc_B68B06: FLdPr Me
  loc_B68B09: MemLdStr global_124
  loc_B68B0C: CVarStr var_1C4
  loc_B68B0F: ConcatVar var_1D4
  loc_B68B13: FLdZeroAd var_1A4
  loc_B68B16: CVarAd
  loc_B68B1A: FLdRfVar var_13C
  loc_B68B1D: LitVarStr var_14C, vbNullString
  loc_B68B22: HardType
  loc_B68B23: NeVar var_15C
  loc_B68B27: FStVar var_1F0
  loc_B68B2B: FLdRfVar var_1F0
  loc_B68B2E: FLdRfVar var_210
  loc_B68B31: ImpAdCallFPR4  = IIf(, , )
  loc_B68B36: FLdRfVar var_210
  loc_B68B39: ConcatVar var_220
  loc_B68B3D: LitI4 9
  loc_B68B42: FLdRfVar var_230
  loc_B68B45: ImpAdCallFPR4  = Chr()
  loc_B68B4A: FLdRfVar var_230
  loc_B68B4D: ConcatVar var_240
  loc_B68B51: LitI4 1
  loc_B68B56: LitI4 1
  loc_B68B5B: LitVarStr var_27C, "0.00"
  loc_B68B60: FStVarCopyObj var_28C
  loc_B68B63: FLdRfVar var_28C
  loc_B68B66: FLdZeroAd var_25C
  loc_B68B69: CVarAd
  loc_B68B6D: ImpAdCallI2 Format$(, )
  loc_B68B72: CVarStr var_29C
  loc_B68B75: ConcatVar var_2AC
  loc_B68B79: LitI4 9
  loc_B68B7E: FLdRfVar var_2BC
  loc_B68B81: ImpAdCallFPR4  = Chr()
  loc_B68B86: FLdRfVar var_2BC
  loc_B68B89: ConcatVar var_2CC
  loc_B68B8D: FLdPr Me
  loc_B68B90: MemLdStr global_132
  loc_B68B93: CVarStr var_2DC
  loc_B68B96: ConcatVar var_2EC
  loc_B68B9A: LitI4 9
  loc_B68B9F: FLdRfVar var_2FC
  loc_B68BA2: ImpAdCallFPR4  = Chr()
  loc_B68BA7: FLdRfVar var_2FC
  loc_B68BAA: ConcatVar var_30C
  loc_B68BAE: FLdRfVar var_338
  loc_B68BB1: FLdRfVar var_328
  loc_B68BB4: LitVarStr var_324, "NumeMoba"
  loc_B68BB9: PopAdLdVar
  loc_B68BBA: FLdRfVar var_314
  loc_B68BBD: FLdRfVar var_310
  loc_B68BC0: FLdPr Me
  loc_B68BC3: MemLdRfVar from_stack_1.global_60
  loc_B68BC6: NewIfNullPr clscheque
  loc_B68BC9: from_stack_1v = clscheque.RsFrmGet()
  loc_B68BCE: FLdPr var_310
  loc_B68BD1:  = Me.Fields
  loc_B68BD6: FLdPr var_314
  loc_B68BD9: from_stack_2 = Me.Item(from_stack_1)
  loc_B68BDE: FLdPr var_328
  loc_B68BE1:  = Me.Value
  loc_B68BE6: FLdRfVar var_338
  loc_B68BE9: ConcatVar var_348
  loc_B68BED: LitI4 9
  loc_B68BF2: FLdRfVar var_358
  loc_B68BF5: ImpAdCallFPR4  = Chr()
  loc_B68BFA: FLdRfVar var_358
  loc_B68BFD: ConcatVar var_368
  loc_B68C01: FLdPr Me
  loc_B68C04: MemLdStr global_128
  loc_B68C07: CVarStr var_378
  loc_B68C0A: ConcatVar var_388
  loc_B68C0E: LitI4 9
  loc_B68C13: FLdRfVar var_398
  loc_B68C16: ImpAdCallFPR4  = Chr()
  loc_B68C1B: FLdRfVar var_398
  loc_B68C1E: ConcatVar var_3A8
  loc_B68C22: FLdRfVar var_3D4
  loc_B68C25: FLdRfVar var_3C4
  loc_B68C28: LitVarStr var_3C0, "FechCheq"
  loc_B68C2D: PopAdLdVar
  loc_B68C2E: FLdRfVar var_3B0
  loc_B68C31: FLdRfVar var_3AC
  loc_B68C34: FLdPr Me
  loc_B68C37: MemLdRfVar from_stack_1.global_60
  loc_B68C3A: NewIfNullPr clscheque
  loc_B68C3D: from_stack_1v = clscheque.RsFrmGet()
  loc_B68C42: FLdPr var_3AC
  loc_B68C45:  = Me.Fields
  loc_B68C4A: FLdPr var_3B0
  loc_B68C4D: from_stack_2 = Me.Item(from_stack_1)
  loc_B68C52: FLdPr var_3C4
  loc_B68C55:  = Me.Value
  loc_B68C5A: FLdRfVar var_3D4
  loc_B68C5D: ConcatVar var_3E4
  loc_B68C61: LitI4 9
  loc_B68C66: FLdRfVar var_3F4
  loc_B68C69: ImpAdCallFPR4  = Chr()
  loc_B68C6E: FLdRfVar var_3F4
  loc_B68C71: ConcatVar var_404
  loc_B68C75: FLdRfVar var_430
  loc_B68C78: FLdRfVar var_420
  loc_B68C7B: LitVarStr var_41C, "FeanCheq"
  loc_B68C80: PopAdLdVar
  loc_B68C81: FLdRfVar var_40C
  loc_B68C84: FLdRfVar var_408
  loc_B68C87: FLdPr Me
  loc_B68C8A: MemLdRfVar from_stack_1.global_60
  loc_B68C8D: NewIfNullPr clscheque
  loc_B68C90: from_stack_1v = clscheque.RsFrmGet()
  loc_B68C95: FLdPr var_408
  loc_B68C98:  = Me.Fields
  loc_B68C9D: FLdPr var_40C
  loc_B68CA0: from_stack_2 = Me.Item(from_stack_1)
  loc_B68CA5: FLdPr var_420
  loc_B68CA8:  = Me.Value
  loc_B68CAD: FLdRfVar var_430
  loc_B68CB0: ConcatVar var_440
  loc_B68CB4: LitI4 9
  loc_B68CB9: FLdRfVar var_450
  loc_B68CBC: ImpAdCallFPR4  = Chr()
  loc_B68CC1: FLdRfVar var_450
  loc_B68CC4: ConcatVar var_460
  loc_B68CC8: LitI4 1
  loc_B68CCD: LitI4 1
  loc_B68CD2: LitVarStr var_49C, "0.00"
  loc_B68CD7: FStVarCopyObj var_4AC
  loc_B68CDA: FLdRfVar var_4AC
  loc_B68CDD: FLdZeroAd var_47C
  loc_B68CE0: CVarAd
  loc_B68CE4: FLdRfVar var_4BC
  loc_B68CE7: ImpAdCallFPR4  = Format(, )
  loc_B68CEC: FLdRfVar var_4BC
  loc_B68CEF: ConcatVar var_4CC
  loc_B68CF3: LitI4 9
  loc_B68CF8: FLdRfVar var_4DC
  loc_B68CFB: ImpAdCallFPR4  = Chr()
  loc_B68D00: FLdRfVar var_4DC
  loc_B68D03: ConcatVar var_4EC
  loc_B68D07: LitVarStr var_558, "No"
  loc_B68D0C: FStVarCopyObj var_568
  loc_B68D0F: FLdRfVar var_568
  loc_B68D12: LitVarStr var_538, "Si"
  loc_B68D17: FStVarCopyObj var_548
  loc_B68D1A: FLdRfVar var_548
  loc_B68D1D: FLdI2 var_182
  loc_B68D20: CVarBoolI2 var_528
  loc_B68D24: FLdRfVar var_578
  loc_B68D27: ImpAdCallFPR4  = IIf(, , )
  loc_B68D2C: FLdRfVar var_578
  loc_B68D2F: ConcatVar var_588
  loc_B68D33: LitI4 9
  loc_B68D38: FLdRfVar var_598
  loc_B68D3B: ImpAdCallFPR4  = Chr()
  loc_B68D40: FLdRfVar var_598
  loc_B68D43: ConcatVar var_5A8
  loc_B68D47: LitVarStr var_5B8, "0"
  loc_B68D4C: ConcatVar var_5C8
  loc_B68D50: LitI4 9
  loc_B68D55: FLdRfVar var_5D8
  loc_B68D58: ImpAdCallFPR4  = Chr()
  loc_B68D5D: FLdRfVar var_5D8
  loc_B68D60: ConcatVar var_5E8
  loc_B68D64: FLdRfVar var_614
  loc_B68D67: FLdRfVar var_604
  loc_B68D6A: LitVarStr var_600, "PainProv"
  loc_B68D6F: PopAdLdVar
  loc_B68D70: FLdRfVar var_5F0
  loc_B68D73: FLdRfVar var_5EC
  loc_B68D76: FLdPr Me
  loc_B68D79: MemLdRfVar from_stack_1.global_60
  loc_B68D7C: NewIfNullPr clscheque
  loc_B68D7F: from_stack_1v = clscheque.RsFrmGet()
  loc_B68D84: FLdPr var_5EC
  loc_B68D87:  = Me.Fields
  loc_B68D8C: FLdPr var_5F0
  loc_B68D8F: from_stack_2 = Me.Item(from_stack_1)
  loc_B68D94: FLdPr var_604
  loc_B68D97:  = Me.Value
  loc_B68D9C: FLdRfVar var_614
  loc_B68D9F: ConcatVar var_624
  loc_B68DA3: LitI4 9
  loc_B68DA8: FLdRfVar var_634
  loc_B68DAB: ImpAdCallFPR4  = Chr()
  loc_B68DB0: FLdRfVar var_634
  loc_B68DB3: ConcatVar var_644
  loc_B68DB7: FLdRfVar var_670
  loc_B68DBA: FLdRfVar var_660
  loc_B68DBD: LitVarStr var_65C, "CedeProv"
  loc_B68DC2: PopAdLdVar
  loc_B68DC3: FLdRfVar var_64C
  loc_B68DC6: FLdRfVar var_648
  loc_B68DC9: FLdPr Me
  loc_B68DCC: MemLdRfVar from_stack_1.global_60
  loc_B68DCF: NewIfNullPr clscheque
  loc_B68DD2: from_stack_1v = clscheque.RsFrmGet()
  loc_B68DD7: FLdPr var_648
  loc_B68DDA:  = Me.Fields
  loc_B68DDF: FLdPr var_64C
  loc_B68DE2: from_stack_2 = Me.Item(from_stack_1)
  loc_B68DE7: FLdPr var_660
  loc_B68DEA:  = Me.Value
  loc_B68DEF: FLdRfVar var_670
  loc_B68DF2: ConcatVar var_680
  loc_B68DF6: LitI4 9
  loc_B68DFB: FLdRfVar var_690
  loc_B68DFE: ImpAdCallFPR4  = Chr()
  loc_B68E03: FLdRfVar var_690
  loc_B68E06: ConcatVar var_6A0
  loc_B68E0A: FLdRfVar var_6CC
  loc_B68E0D: FLdRfVar var_6BC
  loc_B68E10: LitVarStr var_6B8, "DetaProv"
  loc_B68E15: PopAdLdVar
  loc_B68E16: FLdRfVar var_6A8
  loc_B68E19: FLdRfVar var_6A4
  loc_B68E1C: FLdPr Me
  loc_B68E1F: MemLdRfVar from_stack_1.global_60
  loc_B68E22: NewIfNullPr clscheque
  loc_B68E25: from_stack_1v = clscheque.RsFrmGet()
  loc_B68E2A: FLdPr var_6A4
  loc_B68E2D:  = Me.Fields
  loc_B68E32: FLdPr var_6A8
  loc_B68E35: from_stack_2 = Me.Item(from_stack_1)
  loc_B68E3A: FLdPr var_6BC
  loc_B68E3D:  = Me.Value
  loc_B68E42: FLdRfVar var_6CC
  loc_B68E45: FnLenVar var_6DC
  loc_B68E49: ConcatVar var_6EC
  loc_B68E4D: LitI4 9
  loc_B68E52: FLdRfVar var_6FC
  loc_B68E55: ImpAdCallFPR4  = Chr()
  loc_B68E5A: FLdRfVar var_6FC
  loc_B68E5D: ConcatVar var_70C
  loc_B68E61: FLdRfVar var_738
  loc_B68E64: FLdRfVar var_728
  loc_B68E67: LitVarStr var_724, "IdCheq"
  loc_B68E6C: PopAdLdVar
  loc_B68E6D: FLdRfVar var_714
  loc_B68E70: FLdRfVar var_710
  loc_B68E73: FLdPr Me
  loc_B68E76: MemLdRfVar from_stack_1.global_60
  loc_B68E79: NewIfNullPr clscheque
  loc_B68E7C: from_stack_1v = clscheque.RsFrmGet()
  loc_B68E81: FLdPr var_710
  loc_B68E84:  = Me.Fields
  loc_B68E89: FLdPr var_714
  loc_B68E8C: from_stack_2 = Me.Item(from_stack_1)
  loc_B68E91: FLdPr var_728
  loc_B68E94:  = Me.Value
  loc_B68E99: FLdRfVar var_738
  loc_B68E9C: ConcatVar var_748
  loc_B68EA0: CStrVarTmp
  loc_B68EA1: CVarStr var_758
  loc_B68EA4: PopAdLdVar
  loc_B68EA5: FLdPr Me
  loc_B68EA8: VCallAd Control_ID_FlexCheque
  loc_B68EAB: FStAdFunc var_76C
  loc_B68EAE: FLdPr var_76C
  loc_B68EB1: LateIdCall
  loc_B68EB9: FFreeAd var_660 = "": var_6A4 = "": var_6A8 = "": var_6BC = "": var_710 = "": var_714 = "": var_728 = "": var_76C = "": var_98 = "": var_9C = "": var_104 = "": var_108 = "": var_11C = "": var_19C = "": var_1A0 = "": var_1D8 = "": var_1DC = "": var_1E0 = "": var_244 = "": var_248 = "": var_310 = "": var_314 = "": var_328 = "": var_3AC = "": var_3B0 = "": var_3C4 = "": var_408 = "": var_40C = "": var_420 = "": var_464 = "": var_468 = "": var_4F0 = "": var_4F4 = "": var_5EC = "": var_5F0 = "": var_604 = "": var_648 = ""
  loc_B68F08: FFreeVar var_680 = "": var_690 = "": var_6CC = "": var_6A0 = "": var_6EC = "": var_6FC = "": var_70C = "": var_738 = "": var_748 = "": var_758 = "": var_3D4 = "": var_3E4 = "": var_3F4 = "": var_404 = "": var_430 = "": var_440 = "": var_450 = "": var_48C = "": var_4AC = "": var_460 = "": var_4BC = "": var_4CC = "": var_4DC = "": var_518 = "": var_528 = "": var_548 = "": var_568 = "": var_4EC = "": var_578 = "": var_588 = "": var_598 = "": var_5A8 = "": var_5C8 = "": var_5D8 = "": var_5E8 = "": var_614 = "": var_624 = "": var_634 = "": var_644 = "": var_670 = "": var_C0 = "": var_D0 = "": var_100 = "": var_E0 = "": var_13C = "": var_17C = "": var_1F0 = "": var_200 = "": var_1D4 = "": var_12C = "": var_210 = "": var_220 = "": var_230 = "": var_26C = "": var_28C = "": var_240 = "": var_29C = "": var_2AC = "": var_2BC = "": var_2CC = "": var_2EC = "": var_2FC = "": var_30C = "": var_338 = "": var_348 = "": var_358 = "": var_368 = "": var_388 = "": var_398 = ""
  loc_B68F97: FLdPr Me
  loc_B68F9A: MemLdRfVar from_stack_1.global_60
  loc_B68F9D: NewIfNullPr clscheque
  loc_B68FA0: Call clscheque.MoveSiguiente()
  loc_B68FA5: Branch loc_B68714
  loc_B68FA8: ExitProcHresult
  loc_B68FA9: MemStStrCopy
End Function

Private Function Proc_113_37_B25F94() 'B25F94
  'Data Table: 4B2A08
  loc_B2567C: LitI2_Byte 0
  loc_B2567E: FLdPr Me
  loc_B25681: MemStI2 global_102
  loc_B25684: LitI2_Byte 0
  loc_B25686: FLdPr Me
  loc_B25689: MemStI2 global_100
  loc_B2568C: FLdPr Me
  loc_B2568F: VCallAd Control_ID_FlexCheque
  loc_B25692: FStAdFunc var_88
  loc_B25695: FLdPr var_88
  loc_B25698: LateIdLdVar var_98 DispID_10 0
  loc_B2569F: CI4Var
  loc_B256A1: CVarI4
  loc_B256A5: PopAdLdVar
  loc_B256A6: LitVarI4
  loc_B256AE: PopAdLdVar
  loc_B256AF: FLdPr Me
  loc_B256B2: VCallAd Control_ID_FlexCheque
  loc_B256B5: FStAdFunc var_DC
  loc_B256B8: FLdPr var_DC
  loc_B256BB: LateIdCallLdVar
  loc_B256C5: CStrVarTmp
  loc_B256C6: FStStrNoPop var_F0
  loc_B256C9: LitStr vbNullString
  loc_B256CC: EqStr
  loc_B256CE: FFree1Str var_F0
  loc_B256D1: FFreeAd var_88 = ""
  loc_B256D8: FFreeVar var_98 = ""
  loc_B256DF: BranchF loc_B25F92
  loc_B256E2: FLdPr Me
  loc_B256E5: VCallAd Control_ID_FlexCheque
  loc_B256E8: FStAdFunc var_88
  loc_B256EB: FLdPr var_88
  loc_B256EE: LateIdLdVar var_98 DispID_4 0
  loc_B256F5: CI4Var
  loc_B256F7: LitI4 1
  loc_B256FC: SubI4
  loc_B256FD: CI2I4
  loc_B256FE: FLdPr Me
  loc_B25701: MemLdRfVar from_stack_1.global_72
  loc_B25704: LitI2_Byte 1
  loc_B25706: LitI2_Byte &HFF
  loc_B25708: FFree1Ad var_88
  loc_B2570B: FFree1Var var_98 = ""
  loc_B2570E: ForStepI2 var_F4
  loc_B25714: FLdPr Me
  loc_B25717: MemLdI2 global_72
  loc_B2571A: FLdPr Me
  loc_B2571D: VCallAd Control_ID_FlexCheque
  loc_B25720: FStAdFunc var_88
  loc_B25723: FLdPr var_88
  loc_B25726: LateIdLdVar var_98 DispID_10 0
  loc_B2572D: CI4Var
  loc_B2572F: CI2I4
  loc_B25730: LeI2
  loc_B25731: FFree1Ad var_88
  loc_B25734: FFree1Var var_98 = ""
  loc_B25737: BranchF loc_B25789
  loc_B2573A: FLdPr Me
  loc_B2573D: MemLdI2 global_72
  loc_B25740: CI4UI1
  loc_B25741: CVarI4
  loc_B25745: PopAdLdVar
  loc_B25746: LitVarI4
  loc_B2574E: PopAdLdVar
  loc_B2574F: FLdPr Me
  loc_B25752: VCallAd Control_ID_FlexCheque
  loc_B25755: FStAdFunc var_88
  loc_B25758: FLdPr var_88
  loc_B2575B: LateIdCallLdVar
  loc_B25765: CStrVarTmp
  loc_B25766: FStStrNoPop var_F0
  loc_B25769: LitStr vbNullString
  loc_B2576C: NeStr
  loc_B2576E: FFree1Str var_F0
  loc_B25771: FFree1Ad var_88
  loc_B25774: FFree1Var var_98 = ""
  loc_B25777: BranchF loc_B25789
  loc_B2577A: FLdPr Me
  loc_B2577D: MemLdI2 global_72
  loc_B25780: FLdPr Me
  loc_B25783: MemStI2 global_102
  loc_B25786: Branch loc_B25794
  loc_B25789: FLdPr Me
  loc_B2578C: MemLdRfVar from_stack_1.global_72
  loc_B2578F: NextStepI2 var_F4, loc_B25714
  loc_B25794: LitI2_Byte 1
  loc_B25796: FLdPr Me
  loc_B25799: MemLdRfVar from_stack_1.global_72
  loc_B2579C: FLdPr Me
  loc_B2579F: VCallAd Control_ID_FlexCheque
  loc_B257A2: FStAdFunc var_88
  loc_B257A5: FLdPr var_88
  loc_B257A8: LateIdLdVar var_98 DispID_4 0
  loc_B257AF: CI4Var
  loc_B257B1: LitI4 1
  loc_B257B6: SubI4
  loc_B257B7: CI2I4
  loc_B257B8: FFree1Ad var_88
  loc_B257BB: FFree1Var var_98 = ""
  loc_B257BE: ForI2 var_F8
  loc_B257C4: FLdPr Me
  loc_B257C7: MemLdI2 global_72
  loc_B257CA: FLdPr Me
  loc_B257CD: VCallAd Control_ID_FlexCheque
  loc_B257D0: FStAdFunc var_88
  loc_B257D3: FLdPr var_88
  loc_B257D6: LateIdLdVar var_98 DispID_10 0
  loc_B257DD: CI4Var
  loc_B257DF: CI2I4
  loc_B257E0: GeI2
  loc_B257E1: FFree1Ad var_88
  loc_B257E4: FFree1Var var_98 = ""
  loc_B257E7: BranchF loc_B25839
  loc_B257EA: FLdPr Me
  loc_B257ED: MemLdI2 global_72
  loc_B257F0: CI4UI1
  loc_B257F1: CVarI4
  loc_B257F5: PopAdLdVar
  loc_B257F6: LitVarI4
  loc_B257FE: PopAdLdVar
  loc_B257FF: FLdPr Me
  loc_B25802: VCallAd Control_ID_FlexCheque
  loc_B25805: FStAdFunc var_88
  loc_B25808: FLdPr var_88
  loc_B2580B: LateIdCallLdVar
  loc_B25815: CStrVarTmp
  loc_B25816: FStStrNoPop var_F0
  loc_B25819: LitStr vbNullString
  loc_B2581C: NeStr
  loc_B2581E: FFree1Str var_F0
  loc_B25821: FFree1Ad var_88
  loc_B25824: FFree1Var var_98 = ""
  loc_B25827: BranchF loc_B25839
  loc_B2582A: FLdPr Me
  loc_B2582D: MemLdI2 global_72
  loc_B25830: FLdPr Me
  loc_B25833: MemStI2 global_100
  loc_B25836: Branch loc_B25844
  loc_B25839: FLdPr Me
  loc_B2583C: MemLdRfVar from_stack_1.global_72
  loc_B2583F: NextI2 var_F8, loc_B257C4
  loc_B25844: FLdPr Me
  loc_B25847: MemLdI2 global_100
  loc_B2584A: LitI2_Byte 0
  loc_B2584C: EqI2
  loc_B2584D: BranchF loc_B25878
  loc_B25850: FLdPr Me
  loc_B25853: VCallAd Control_ID_FlexCheque
  loc_B25856: FStAdFunc var_88
  loc_B25859: FLdPr var_88
  loc_B2585C: LateIdLdVar var_98 DispID_4 0
  loc_B25863: CI4Var
  loc_B25865: LitI4 1
  loc_B2586A: SubI4
  loc_B2586B: CI2I4
  loc_B2586C: FLdPr Me
  loc_B2586F: MemStI2 global_100
  loc_B25872: FFree1Ad var_88
  loc_B25875: FFree1Var var_98 = ""
  loc_B25878: FLdPr Me
  loc_B2587B: MemLdI2 global_102
  loc_B2587E: FLdPr Me
  loc_B25881: MemLdRfVar from_stack_1.global_72
  loc_B25884: FLdPr Me
  loc_B25887: MemLdI2 global_100
  loc_B2588A: LitI2_Byte 1
  loc_B2588C: SubI2
  loc_B2588D: ForI2 var_FC
  loc_B25893: FLdPr Me
  loc_B25896: MemLdI2 global_72
  loc_B25899: CI4UI1
  loc_B2589A: CVarI4
  loc_B2589E: PopAdLdVar
  loc_B2589F: LitVarI4
  loc_B258A7: PopAdLdVar
  loc_B258A8: FLdPr Me
  loc_B258AB: VCallAd Control_ID_FlexCheque
  loc_B258AE: FStAdFunc var_88
  loc_B258B1: FLdPr var_88
  loc_B258B4: LateIdCallLdVar
  loc_B258BE: CStrVarTmp
  loc_B258BF: FStStrNoPop var_F0
  loc_B258C2: LitStr vbNullString
  loc_B258C5: NeStr
  loc_B258C7: FLdPr Me
  loc_B258CA: VCallAd Control_ID_FlexCheque
  loc_B258CD: FStAdFunc var_DC
  loc_B258D0: FLdPr var_DC
  loc_B258D3: LateIdLdVar var_EC DispID_10 0
  loc_B258DA: CI4Var
  loc_B258DC: CVarI4
  loc_B258E0: PopAdLdVar
  loc_B258E1: LitVarI4
  loc_B258E9: PopAdLdVar
  loc_B258EA: FLdPr Me
  loc_B258ED: VCallAd Control_ID_FlexCheque
  loc_B258F0: FStAdFunc var_140
  loc_B258F3: FLdPr var_140
  loc_B258F6: LateIdCallLdVar
  loc_B25900: CStrVarTmp
  loc_B25901: FStStrNoPop var_154
  loc_B25904: LitStr vbNullString
  loc_B25907: EqStr
  loc_B25909: AndI4
  loc_B2590A: FFreeStr var_F0 = ""
  loc_B25911: FFreeAd var_88 = "": var_DC = ""
  loc_B2591A: FFreeVar var_98 = "": var_EC = ""
  loc_B25923: BranchF loc_B25EF1
  loc_B25926: FLdPr Me
  loc_B25929: VCallAd Control_ID_FlexCheque
  loc_B2592C: FStAdFunc var_88
  loc_B2592F: FLdPr var_88
  loc_B25932: LateIdLdVar var_98 DispID_10 0
  loc_B25939: CI4Var
  loc_B2593B: CVarI4
  loc_B2593F: PopAdLdVar
  loc_B25940: LitVarI4
  loc_B25948: PopAdLdVar
  loc_B25949: FLdPr Me
  loc_B2594C: VCallAd Control_ID_FlexCheque
  loc_B2594F: FStAdFunc var_DC
  loc_B25952: FLdPr var_DC
  loc_B25955: LateIdCallLdVar
  loc_B2595F: CStrVarTmp
  loc_B25960: CVarStr var_150
  loc_B25963: ImpAdCallI2 IsNumeric()
  loc_B25968: NotI4
  loc_B25969: FFreeAd var_88 = ""
  loc_B25970: FFreeVar var_98 = "": var_EC = ""
  loc_B25979: BranchF loc_B259C9
  loc_B2597C: FLdPr Me
  loc_B2597F: VCallAd Control_ID_FlexCheque
  loc_B25982: FStAdFunc var_88
  loc_B25985: FLdPr var_88
  loc_B25988: LateIdLdVar var_98 DispID_10 0
  loc_B2598F: CI4Var
  loc_B25991: CVarI4
  loc_B25995: PopAdLdVar
  loc_B25996: LitVarI4
  loc_B2599E: PopAdLdVar
  loc_B2599F: LitI2_Byte 0
  loc_B259A1: CStrUI1
  loc_B259A3: CVarStr var_EC
  loc_B259A6: PopAdLdVar
  loc_B259A7: FLdPr Me
  loc_B259AA: VCallAd Control_ID_FlexCheque
  loc_B259AD: FStAdFunc var_DC
  loc_B259B0: FLdPr var_DC
  loc_B259B3: LateIdCallSt
  loc_B259BB: FFreeAd var_88 = ""
  loc_B259C2: FFreeVar var_98 = ""
  loc_B259C9: FLdPr Me
  loc_B259CC: VCallAd Control_ID_FlexCheque
  loc_B259CF: FStAdFunc var_88
  loc_B259D2: FLdPr var_88
  loc_B259D5: LateIdLdVar var_98 DispID_10 0
  loc_B259DC: CI4Var
  loc_B259DE: CVarI4
  loc_B259E2: PopAdLdVar
  loc_B259E3: LitVarI4
  loc_B259EB: PopAdLdVar
  loc_B259EC: FLdPr Me
  loc_B259EF: VCallAd Control_ID_FlexCheque
  loc_B259F2: FStAdFunc var_DC
  loc_B259F5: FLdPr var_DC
  loc_B259F8: LateIdCallLdVar
  loc_B25A02: CStrVarTmp
  loc_B25A03: CVarStr var_150
  loc_B25A06: ImpAdCallI2 IsNumeric()
  loc_B25A0B: FFreeAd var_88 = ""
  loc_B25A12: FFreeVar var_98 = "": var_EC = ""
  loc_B25A1B: BranchF loc_B25EF1
  loc_B25A1E: FLdPr Me
  loc_B25A21: MemLdI2 global_72
  loc_B25A24: CI4UI1
  loc_B25A25: CVarI4
  loc_B25A29: PopAdLdVar
  loc_B25A2A: LitVarI4
  loc_B25A32: PopAdLdVar
  loc_B25A33: FLdPr Me
  loc_B25A36: VCallAd Control_ID_FlexCheque
  loc_B25A39: FStAdFunc var_88
  loc_B25A3C: FLdPr var_88
  loc_B25A3F: LateIdCallLdVar
  loc_B25A49: PopAd
  loc_B25A4B: FLdPr Me
  loc_B25A4E: VCallAd Control_ID_FlexCheque
  loc_B25A51: FStAdFunc var_DC
  loc_B25A54: FLdPr var_DC
  loc_B25A57: LateIdLdVar var_EC DispID_10 0
  loc_B25A5E: CI4Var
  loc_B25A60: CVarI4
  loc_B25A64: PopAdLdVar
  loc_B25A65: LitVarI4
  loc_B25A6D: PopAdLdVar
  loc_B25A6E: FLdPr Me
  loc_B25A71: VCallAd Control_ID_FlexCheque
  loc_B25A74: FStAdFunc var_140
  loc_B25A77: FLdPr var_140
  loc_B25A7A: LateIdCallLdVar
  loc_B25A84: PopAd
  loc_B25A86: LitI4 2
  loc_B25A8B: FLdRfVar var_98
  loc_B25A8E: CStrVarTmp
  loc_B25A8F: FStStrNoPop var_F0
  loc_B25A92: CR8Str
  loc_B25A94: FLdRfVar var_150
  loc_B25A97: CStrVarTmp
  loc_B25A98: FStStrNoPop var_154
  loc_B25A9B: CR8Str
  loc_B25A9D: AddR8
  loc_B25A9E: FLdPr Me
  loc_B25AA1: MemLdFPR8 global_92
  loc_B25AA4: AddR8
  loc_B25AA5: CVarR8
  loc_B25AA9: FLdRfVar var_184
  loc_B25AAC: ImpAdCallFPR4  = Round(, )
  loc_B25AB1: FLdRfVar var_184
  loc_B25AB4: LitVarI2 var_194, 0
  loc_B25AB9: HardType
  loc_B25ABA: LeVarBool
  loc_B25ABC: FFreeStr var_F0 = ""
  loc_B25AC3: FFreeAd var_88 = "": var_DC = ""
  loc_B25ACC: FFreeVar var_98 = "": var_EC = "": var_150 = "": var_174 = ""
  loc_B25AD9: BranchF loc_B25C94
  loc_B25ADC: LitStr "El cheque original no puede ser 0 o menor a cerro"
  loc_B25ADF: FLdPr Me
  loc_B25AE2: MemStStrCopy
  loc_B25AE6: LitI4 0
  loc_B25AEB: FLdPr Me
  loc_B25AEE: MemLdStr global_68
  loc_B25AF1: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B25AF6: FLdPr Me
  loc_B25AF9: VCallAd Control_ID_FlexCheque
  loc_B25AFC: FStAdFunc var_88
  loc_B25AFF: FLdPr var_88
  loc_B25B02: LateIdLdVar var_174 DispID_10 0
  loc_B25B09: CI4Var
  loc_B25B0B: CVarI4
  loc_B25B0F: PopAdLdVar
  loc_B25B10: LitVarI4
  loc_B25B18: PopAdLdVar
  loc_B25B19: LitI4 1
  loc_B25B1E: LitI4 1
  loc_B25B23: LitVarStr var_B8, "0.00"
  loc_B25B28: FStVarCopyObj var_EC
  loc_B25B2B: FLdRfVar var_EC
  loc_B25B2E: LitVarI2 var_98, 0
  loc_B25B33: FLdRfVar var_150
  loc_B25B36: ImpAdCallFPR4  = Format(, )
  loc_B25B3B: FLdRfVar var_150
  loc_B25B3E: CStrVarTmp
  loc_B25B3F: CVarStr var_184
  loc_B25B42: PopAdLdVar
  loc_B25B43: FLdPr Me
  loc_B25B46: VCallAd Control_ID_FlexCheque
  loc_B25B49: FStAdFunc var_DC
  loc_B25B4C: FLdPr var_DC
  loc_B25B4F: LateIdCallSt
  loc_B25B57: FFreeAd var_88 = ""
  loc_B25B5E: FFreeVar var_98 = "": var_EC = "": var_174 = "": var_150 = ""
  loc_B25B6B: FLdPr Me
  loc_B25B6E: MemLdI2 global_72
  loc_B25B71: CI4UI1
  loc_B25B72: CVarI4
  loc_B25B76: PopAdLdVar
  loc_B25B77: LitVarI4
  loc_B25B7F: PopAdLdVar
  loc_B25B80: FLdPr Me
  loc_B25B83: VCallAd Control_ID_FlexCheque
  loc_B25B86: FStAdFunc var_88
  loc_B25B89: FLdPr var_88
  loc_B25B8C: LateIdCallLdVar
  loc_B25B96: PopAd
  loc_B25B98: FLdPr Me
  loc_B25B9B: VCallAd Control_ID_FlexCheque
  loc_B25B9E: FStAdFunc var_DC
  loc_B25BA1: FLdPr var_DC
  loc_B25BA4: LateIdLdVar var_EC DispID_10 0
  loc_B25BAB: CI4Var
  loc_B25BAD: CVarI4
  loc_B25BB1: PopAdLdVar
  loc_B25BB2: LitVarI4
  loc_B25BBA: PopAdLdVar
  loc_B25BBB: FLdPr Me
  loc_B25BBE: VCallAd Control_ID_FlexCheque
  loc_B25BC1: FStAdFunc var_140
  loc_B25BC4: FLdPr var_140
  loc_B25BC7: LateIdCallLdVar
  loc_B25BD1: PopAd
  loc_B25BD3: LitI4 2
  loc_B25BD8: FLdRfVar var_98
  loc_B25BDB: CStrVarTmp
  loc_B25BDC: FStStrNoPop var_F0
  loc_B25BDF: CR8Str
  loc_B25BE1: FLdRfVar var_150
  loc_B25BE4: CStrVarTmp
  loc_B25BE5: FStStrNoPop var_154
  loc_B25BE8: CR8Str
  loc_B25BEA: SubR4
  loc_B25BEB: FLdPr Me
  loc_B25BEE: MemLdFPR8 global_92
  loc_B25BF1: AddR8
  loc_B25BF2: CVarR8
  loc_B25BF6: FLdRfVar var_184
  loc_B25BF9: ImpAdCallFPR4  = Round(, )
  loc_B25BFE: FLdPr Me
  loc_B25C01: MemLdI2 global_72
  loc_B25C04: CI4UI1
  loc_B25C05: CVarI4
  loc_B25C09: PopAdLdVar
  loc_B25C0A: LitVarI4
  loc_B25C12: PopAdLdVar
  loc_B25C13: LitI4 1
  loc_B25C18: LitI4 1
  loc_B25C1D: LitVarStr var_194, "0.00"
  loc_B25C22: FStVarCopyObj var_1A4
  loc_B25C25: FLdRfVar var_1A4
  loc_B25C28: FLdRfVar var_184
  loc_B25C2B: FLdRfVar var_1B4
  loc_B25C2E: ImpAdCallFPR4  = Format(, )
  loc_B25C33: FLdRfVar var_1B4
  loc_B25C36: CStrVarTmp
  loc_B25C37: CVarStr var_204
  loc_B25C3A: PopAdLdVar
  loc_B25C3B: FLdPr Me
  loc_B25C3E: VCallAd Control_ID_FlexCheque
  loc_B25C41: FStAdFunc var_218
  loc_B25C44: FLdPr var_218
  loc_B25C47: LateIdCallSt
  loc_B25C4F: FFreeStr var_F0 = ""
  loc_B25C56: FFreeAd var_88 = "": var_DC = "": var_140 = ""
  loc_B25C61: FFreeVar var_98 = "": var_EC = "": var_150 = "": var_174 = "": var_184 = "": var_1A4 = "": var_1B4 = ""
  loc_B25C74: FLdPr Me
  loc_B25C77: VCallAd Control_ID_FlexCheque
  loc_B25C7A: FStAdFunc var_88
  loc_B25C7D: FLdPr var_88
  loc_B25C80: LateIdCall
  loc_B25C88: FFree1Ad var_88
  loc_B25C8B: LitI2_Byte 0
  loc_B25C8D: FLdPr Me
  loc_B25C90: MemStI2 global_80
  loc_B25C93: ExitProcHresult
  loc_B25C94: FLdPr Me
  loc_B25C97: MemLdI2 global_72
  loc_B25C9A: CI4UI1
  loc_B25C9B: CVarI4
  loc_B25C9F: PopAdLdVar
  loc_B25CA0: LitVarI4
  loc_B25CA8: PopAdLdVar
  loc_B25CA9: FLdPr Me
  loc_B25CAC: VCallAd Control_ID_FlexCheque
  loc_B25CAF: FStAdFunc var_88
  loc_B25CB2: FLdPr var_88
  loc_B25CB5: LateIdCallLdVar
  loc_B25CBF: PopAd
  loc_B25CC1: LitI4 2
  loc_B25CC6: FLdRfVar var_98
  loc_B25CC9: CStrVarTmp
  loc_B25CCA: FStStrNoPop var_F0
  loc_B25CCD: CR8Str
  loc_B25CCF: FLdPr Me
  loc_B25CD2: MemLdFPR8 global_92
  loc_B25CD5: AddR8
  loc_B25CD6: CVarR8
  loc_B25CDA: FLdRfVar var_150
  loc_B25CDD: ImpAdCallFPR4  = Round(, )
  loc_B25CE2: FLdPr Me
  loc_B25CE5: MemLdI2 global_72
  loc_B25CE8: CI4UI1
  loc_B25CE9: CVarI4
  loc_B25CED: PopAdLdVar
  loc_B25CEE: LitVarI4
  loc_B25CF6: PopAdLdVar
  loc_B25CF7: LitI4 1
  loc_B25CFC: LitI4 1
  loc_B25D01: LitVarStr var_11C, "0.00"
  loc_B25D06: FStVarCopyObj var_174
  loc_B25D09: FLdRfVar var_174
  loc_B25D0C: FLdRfVar var_150
  loc_B25D0F: FLdRfVar var_184
  loc_B25D12: ImpAdCallFPR4  = Format(, )
  loc_B25D17: FLdRfVar var_184
  loc_B25D1A: CStrVarTmp
  loc_B25D1B: CVarStr var_1A4
  loc_B25D1E: PopAdLdVar
  loc_B25D1F: FLdPr Me
  loc_B25D22: VCallAd Control_ID_FlexCheque
  loc_B25D25: FStAdFunc var_DC
  loc_B25D28: FLdPr var_DC
  loc_B25D2B: LateIdCallSt
  loc_B25D33: FFree1Str var_F0
  loc_B25D36: FFreeAd var_88 = ""
  loc_B25D3D: FFreeVar var_98 = "": var_EC = "": var_150 = "": var_174 = "": var_184 = ""
  loc_B25D4C: FLdPr Me
  loc_B25D4F: VCallAd Control_ID_FlexCheque
  loc_B25D52: FStAdFunc var_88
  loc_B25D55: FLdPr var_88
  loc_B25D58: LateIdLdVar var_98 DispID_10 0
  loc_B25D5F: CI4Var
  loc_B25D61: CVarI4
  loc_B25D65: PopAdLdVar
  loc_B25D66: LitVarI4
  loc_B25D6E: PopAdLdVar
  loc_B25D6F: FLdPr Me
  loc_B25D72: VCallAd Control_ID_FlexCheque
  loc_B25D75: FStAdFunc var_DC
  loc_B25D78: FLdPr var_DC
  loc_B25D7B: LateIdCallLdVar
  loc_B25D85: CStrVarTmp
  loc_B25D86: CVarStr var_150
  loc_B25D89: ImpAdCallI2 IsNumeric()
  loc_B25D8E: FLdPr Me
  loc_B25D91: VCallAd Control_ID_FlexCheque
  loc_B25D94: FStAdFunc var_140
  loc_B25D97: FLdPr var_140
  loc_B25D9A: LateIdLdVar var_174 DispID_10 0
  loc_B25DA1: CI4Var
  loc_B25DA3: CVarI4
  loc_B25DA7: PopAdLdVar
  loc_B25DA8: LitVarI4
  loc_B25DB0: PopAdLdVar
  loc_B25DB1: FLdPr Me
  loc_B25DB4: VCallAd Control_ID_FlexCheque
  loc_B25DB7: FStAdFunc var_218
  loc_B25DBA: FLdPr var_218
  loc_B25DBD: LateIdCallLdVar
  loc_B25DC7: CStrVarTmp
  loc_B25DC8: FStStrNoPop var_F0
  loc_B25DCB: CR8Str
  loc_B25DCD: LitI2_Byte 0
  loc_B25DCF: CR8I2
  loc_B25DD0: EqR4
  loc_B25DD1: AndI4
  loc_B25DD2: FFree1Str var_F0
  loc_B25DD5: FFreeAd var_88 = "": var_DC = "": var_140 = ""
  loc_B25DE0: FFreeVar var_98 = "": var_EC = "": var_150 = "": var_174 = ""
  loc_B25DED: BranchF loc_B25E37
  loc_B25DF0: FLdPr Me
  loc_B25DF3: VCallAd Control_ID_FlexCheque
  loc_B25DF6: FStAdFunc var_88
  loc_B25DF9: FLdPr var_88
  loc_B25DFC: LateIdLdVar var_98 DispID_10 0
  loc_B25E03: CI4Var
  loc_B25E05: CVarI4
  loc_B25E09: PopAdLdVar
  loc_B25E0A: LitVarI4
  loc_B25E12: PopAdLdVar
  loc_B25E13: LitVarStr var_10C, vbNullString
  loc_B25E18: PopAdLdVar
  loc_B25E19: FLdPr Me
  loc_B25E1C: VCallAd Control_ID_FlexCheque
  loc_B25E1F: FStAdFunc var_DC
  loc_B25E22: FLdPr var_DC
  loc_B25E25: LateIdCallSt
  loc_B25E2D: FFreeAd var_88 = ""
  loc_B25E34: FFree1Var var_98 = ""
  loc_B25E37: FLdPr Me
  loc_B25E3A: VCallAd Control_ID_FlexCheque
  loc_B25E3D: FStAdFunc var_88
  loc_B25E40: FLdPr var_88
  loc_B25E43: LateIdLdVar var_98 DispID_10 0
  loc_B25E4A: CI4Var
  loc_B25E4C: CVarI4
  loc_B25E50: PopAdLdVar
  loc_B25E51: LitVarI4
  loc_B25E59: PopAdLdVar
  loc_B25E5A: FLdPr Me
  loc_B25E5D: VCallAd Control_ID_FlexCheque
  loc_B25E60: FStAdFunc var_DC
  loc_B25E63: FLdPr var_DC
  loc_B25E66: LateIdCallLdVar
  loc_B25E70: PopAd
  loc_B25E72: FLdPr Me
  loc_B25E75: VCallAd Control_ID_FlexCheque
  loc_B25E78: FStAdFunc var_140
  loc_B25E7B: FLdPr var_140
  loc_B25E7E: LateIdLdVar var_1A4 DispID_10 0
  loc_B25E85: CI4Var
  loc_B25E87: CVarI4
  loc_B25E8B: PopAdLdVar
  loc_B25E8C: LitVarI4
  loc_B25E94: PopAdLdVar
  loc_B25E95: LitI4 1
  loc_B25E9A: LitI4 1
  loc_B25E9F: LitVarStr var_10C, "0.00"
  loc_B25EA4: FStVarCopyObj var_174
  loc_B25EA7: FLdRfVar var_174
  loc_B25EAA: FLdRfVar var_EC
  loc_B25EAD: CStrVarTmp
  loc_B25EAE: CVarStr var_150
  loc_B25EB1: FLdRfVar var_184
  loc_B25EB4: ImpAdCallFPR4  = Format(, )
  loc_B25EB9: FLdRfVar var_184
  loc_B25EBC: CStrVarTmp
  loc_B25EBD: CVarStr var_1B4
  loc_B25EC0: PopAdLdVar
  loc_B25EC1: FLdPr Me
  loc_B25EC4: VCallAd Control_ID_FlexCheque
  loc_B25EC7: FStAdFunc var_218
  loc_B25ECA: FLdPr var_218
  loc_B25ECD: LateIdCallSt
  loc_B25ED5: FFreeAd var_88 = "": var_DC = "": var_140 = ""
  loc_B25EE0: FFreeVar var_98 = "": var_EC = "": var_150 = "": var_174 = "": var_1A4 = "": var_184 = ""
  loc_B25EF1: FLdPr Me
  loc_B25EF4: MemLdRfVar from_stack_1.global_72
  loc_B25EF7: NextI2 var_FC, loc_B25893
  loc_B25EFC: FLdPr Me
  loc_B25EFF: VCallAd Control_ID_FlexCheque
  loc_B25F02: FStAdFunc var_88
  loc_B25F05: FLdPr var_88
  loc_B25F08: LateIdLdVar var_98 DispID_10 0
  loc_B25F0F: CI4Var
  loc_B25F11: CVarI4
  loc_B25F15: PopAdLdVar
  loc_B25F16: FLdPr Me
  loc_B25F19: VCallAd Control_ID_FlexCheque
  loc_B25F1C: FStAdFunc var_DC
  loc_B25F1F: FLdPr var_DC
  loc_B25F22: LateIdCall
  loc_B25F2A: FFreeAd var_88 = ""
  loc_B25F31: FFree1Var var_98 = ""
  loc_B25F34: FLdPr Me
  loc_B25F37: VCallAd Control_ID_FlexCheque
  loc_B25F3A: FStAdFunc var_88
  loc_B25F3D: FLdPr var_88
  loc_B25F40: LateIdLdVar var_98 DispID_10 0
  loc_B25F47: CI4Var
  loc_B25F49: CVarI4
  loc_B25F4D: PopAdLdVar
  loc_B25F4E: LitVarI4
  loc_B25F56: PopAdLdVar
  loc_B25F57: FLdPr Me
  loc_B25F5A: VCallAd Control_ID_FlexCheque
  loc_B25F5D: FStAdFunc var_DC
  loc_B25F60: FLdPr var_DC
  loc_B25F63: LateIdCallLdVar
  loc_B25F6D: CStrVarTmp
  loc_B25F6E: FStStrNoPop var_F0
  loc_B25F71: CR8Str
  loc_B25F73: FLdPr Me
  loc_B25F76: MemStFPR8 global_92
  loc_B25F79: FFree1Str var_F0
  loc_B25F7C: FFreeAd var_88 = ""
  loc_B25F83: FFreeVar var_98 = ""
  loc_B25F8A: LitI2_Byte 0
  loc_B25F8C: FLdPr Me
  loc_B25F8F: MemStI2 global_80
  loc_B25F92: ExitProcHresult
End Function

Private Function Proc_113_38_B76614() 'B76614
  'Data Table: 4B2A08
  loc_B75970: FLdPr Me
  loc_B75973: VCallAd Control_ID_FlexCheque
  loc_B75976: FStAdFunc var_B0
  loc_B75979: FLdPr var_B0
  loc_B7597C: LateIdLdVar var_C0 DispID_10 0
  loc_B75983: CI4Var
  loc_B75985: CVarI4
  loc_B75989: PopAdLdVar
  loc_B7598A: LitVarI4
  loc_B75992: PopAdLdVar
  loc_B75993: FLdPr Me
  loc_B75996: VCallAd Control_ID_FlexCheque
  loc_B75999: FStAdFunc var_104
  loc_B7599C: FLdPr var_104
  loc_B7599F: LateIdCallLdVar
  loc_B759A9: CStrVarTmp
  loc_B759AA: CVarStr var_124
  loc_B759AD: ImpAdCallI2 IsNumeric()
  loc_B759B2: NotI4
  loc_B759B3: FFreeAd var_B0 = ""
  loc_B759BA: FFreeVar var_C0 = "": var_114 = ""
  loc_B759C3: BranchF loc_B759EF
  loc_B759C6: LitStr "Solo puede dividir cheques originales, verifique..."
  loc_B759C9: FLdPr Me
  loc_B759CC: MemStStrCopy
  loc_B759D0: FLdPr Me
  loc_B759D3: MemLdStr global_68
  loc_B759D6: LitStr vbNullString
  loc_B759D9: NeStr
  loc_B759DB: BranchF loc_B759EF
  loc_B759DE: LitI4 0
  loc_B759E3: FLdPr Me
  loc_B759E6: MemLdStr global_68
  loc_B759E9: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B759EE: ExitProcHresult
  loc_B759EF: FLdPr Me
  loc_B759F2: VCallAd Control_ID_FlexCheque
  loc_B759F5: FStAdFunc var_B0
  loc_B759F8: FLdPr var_B0
  loc_B759FB: LateIdLdVar var_C0 DispID_10 0
  loc_B75A02: CI4Var
  loc_B75A04: CVarI4
  loc_B75A08: PopAdLdVar
  loc_B75A09: LitVarI4
  loc_B75A11: PopAdLdVar
  loc_B75A12: FLdPr Me
  loc_B75A15: VCallAd Control_ID_FlexCheque
  loc_B75A18: FStAdFunc var_104
  loc_B75A1B: FLdPr var_104
  loc_B75A1E: LateIdCallLdVar
  loc_B75A28: CStrVarTmp
  loc_B75A29: CVarStr var_124
  loc_B75A2C: ImpAdCallI2 IsDate()
  loc_B75A31: FFreeAd var_B0 = ""
  loc_B75A38: FFreeVar var_C0 = "": var_114 = ""
  loc_B75A41: BranchF loc_B75A6D
  loc_B75A44: LitStr "No se pueden dividir cheques anulados, verifique..."
  loc_B75A47: FLdPr Me
  loc_B75A4A: MemStStrCopy
  loc_B75A4E: FLdPr Me
  loc_B75A51: MemLdStr global_68
  loc_B75A54: LitStr vbNullString
  loc_B75A57: NeStr
  loc_B75A59: BranchF loc_B75A6D
  loc_B75A5C: LitI4 0
  loc_B75A61: FLdPr Me
  loc_B75A64: MemLdStr global_68
  loc_B75A67: ImpAdCallFPR4 Proc_261_28_9D6518(, )
  loc_B75A6C: ExitProcHresult
  loc_B75A6D: FLdPr Me
  loc_B75A70: VCallAd Control_ID_FlexCheque
  loc_B75A73: FStAdFunc var_B0
  loc_B75A76: FLdPr var_B0
  loc_B75A79: LateIdLdVar var_C0 DispID_10 0
  loc_B75A80: CI4Var
  loc_B75A82: CVarI4
  loc_B75A86: PopAdLdVar
  loc_B75A87: LitVarI4
  loc_B75A8F: PopAdLdVar
  loc_B75A90: FLdPr Me
  loc_B75A93: VCallAd Control_ID_FlexCheque
  loc_B75A96: FStAdFunc var_104
  loc_B75A99: FLdPr var_104
  loc_B75A9C: LateIdCallLdVar
  loc_B75AA6: CStrVarTmp
  loc_B75AA7: FStStrNoPop var_128
  loc_B75AAA: LitI4 0
  loc_B75AAF: FLdRfVar var_A8
  loc_B75AB2: Ary1StStrCopy
  loc_B75AB3: FFree1Str var_128
  loc_B75AB6: FFreeAd var_B0 = ""
  loc_B75ABD: FFreeVar var_C0 = ""
  loc_B75AC4: FLdPr Me
  loc_B75AC7: VCallAd Control_ID_FlexCheque
  loc_B75ACA: FStAdFunc var_B0
  loc_B75ACD: FLdPr var_B0
  loc_B75AD0: LateIdLdVar var_C0 DispID_10 0
  loc_B75AD7: CI4Var
  loc_B75AD9: CVarI4
  loc_B75ADD: PopAdLdVar
  loc_B75ADE: LitVarI4
  loc_B75AE6: PopAdLdVar
  loc_B75AE7: FLdPr Me
  loc_B75AEA: VCallAd Control_ID_FlexCheque
  loc_B75AED: FStAdFunc var_104
  loc_B75AF0: FLdPr var_104
  loc_B75AF3: LateIdCallLdVar
  loc_B75AFD: CStrVarTmp
  loc_B75AFE: FStStrNoPop var_128
  loc_B75B01: LitI4 1
  loc_B75B06: FLdRfVar var_A8
  loc_B75B09: Ary1StStrCopy
  loc_B75B0A: FFree1Str var_128
  loc_B75B0D: FFreeAd var_B0 = ""
  loc_B75B14: FFreeVar var_C0 = ""
  loc_B75B1B: LitStr vbNullString
  loc_B75B1E: LitI4 2
  loc_B75B23: FLdRfVar var_A8
  loc_B75B26: Ary1StStrCopy
  loc_B75B27: FLdPr Me
  loc_B75B2A: VCallAd Control_ID_FlexCheque
  loc_B75B2D: FStAdFunc var_B0
  loc_B75B30: FLdPr var_B0
  loc_B75B33: LateIdLdVar var_C0 DispID_10 0
  loc_B75B3A: CI4Var
  loc_B75B3C: CVarI4
  loc_B75B40: PopAdLdVar
  loc_B75B41: LitVarI4
  loc_B75B49: PopAdLdVar
  loc_B75B4A: FLdPr Me
  loc_B75B4D: VCallAd Control_ID_FlexCheque
  loc_B75B50: FStAdFunc var_104
  loc_B75B53: FLdPr var_104
  loc_B75B56: LateIdCallLdVar
  loc_B75B60: CStrVarTmp
  loc_B75B61: FStStrNoPop var_128
  loc_B75B64: LitI4 3
  loc_B75B69: FLdRfVar var_A8
  loc_B75B6C: Ary1StStrCopy
  loc_B75B6D: FFree1Str var_128
  loc_B75B70: FFreeAd var_B0 = ""
  loc_B75B77: FFreeVar var_C0 = ""
  loc_B75B7E: FLdPr Me
  loc_B75B81: VCallAd Control_ID_FlexCheque
  loc_B75B84: FStAdFunc var_B0
  loc_B75B87: FLdPr var_B0
  loc_B75B8A: LateIdLdVar var_C0 DispID_10 0
  loc_B75B91: CI4Var
  loc_B75B93: CVarI4
  loc_B75B97: PopAdLdVar
  loc_B75B98: LitVarI4
  loc_B75BA0: PopAdLdVar
  loc_B75BA1: FLdPr Me
  loc_B75BA4: VCallAd Control_ID_FlexCheque
  loc_B75BA7: FStAdFunc var_104
  loc_B75BAA: FLdPr var_104
  loc_B75BAD: LateIdCallLdVar
  loc_B75BB7: CStrVarTmp
  loc_B75BB8: FStStrNoPop var_128
  loc_B75BBB: LitI4 4
  loc_B75BC0: FLdRfVar var_A8
  loc_B75BC3: Ary1StStrCopy
  loc_B75BC4: FFree1Str var_128
  loc_B75BC7: FFreeAd var_B0 = ""
  loc_B75BCE: FFreeVar var_C0 = ""
  loc_B75BD5: FLdPr Me
  loc_B75BD8: VCallAd Control_ID_FlexCheque
  loc_B75BDB: FStAdFunc var_B0
  loc_B75BDE: FLdPr var_B0
  loc_B75BE1: LateIdLdVar var_C0 DispID_10 0
  loc_B75BE8: CI4Var
  loc_B75BEA: CVarI4
  loc_B75BEE: PopAdLdVar
  loc_B75BEF: LitVarI4
  loc_B75BF7: PopAdLdVar
  loc_B75BF8: FLdPr Me
  loc_B75BFB: VCallAd Control_ID_FlexCheque
  loc_B75BFE: FStAdFunc var_104
  loc_B75C01: FLdPr var_104
  loc_B75C04: LateIdCallLdVar
  loc_B75C0E: CStrVarTmp
  loc_B75C0F: FStStrNoPop var_128
  loc_B75C12: LitI4 5
  loc_B75C17: FLdRfVar var_A8
  loc_B75C1A: Ary1StStrCopy
  loc_B75C1B: FFree1Str var_128
  loc_B75C1E: FFreeAd var_B0 = ""
  loc_B75C25: FFreeVar var_C0 = ""
  loc_B75C2C: FLdPr Me
  loc_B75C2F: VCallAd Control_ID_FlexCheque
  loc_B75C32: FStAdFunc var_B0
  loc_B75C35: FLdPr var_B0
  loc_B75C38: LateIdLdVar var_C0 DispID_10 0
  loc_B75C3F: CI4Var
  loc_B75C41: CVarI4
  loc_B75C45: PopAdLdVar
  loc_B75C46: LitVarI4
  loc_B75C4E: PopAdLdVar
  loc_B75C4F: FLdPr Me
  loc_B75C52: VCallAd Control_ID_FlexCheque
  loc_B75C55: FStAdFunc var_104
  loc_B75C58: FLdPr var_104
  loc_B75C5B: LateIdCallLdVar
  loc_B75C65: CStrVarTmp
  loc_B75C66: FStStrNoPop var_128
  loc_B75C69: LitI4 6
  loc_B75C6E: FLdRfVar var_A8
  loc_B75C71: Ary1StStrCopy
  loc_B75C72: FFree1Str var_128
  loc_B75C75: FFreeAd var_B0 = ""
  loc_B75C7C: FFreeVar var_C0 = ""
  loc_B75C83: LitStr vbNullString
  loc_B75C86: LitI4 7
  loc_B75C8B: FLdRfVar var_A8
  loc_B75C8E: Ary1StStrCopy
  loc_B75C8F: LitStr vbNullString
  loc_B75C92: LitI4 8
  loc_B75C97: FLdRfVar var_A8
  loc_B75C9A: Ary1StStrCopy
  loc_B75C9B: FLdPr Me
  loc_B75C9E: VCallAd Control_ID_FlexCheque
  loc_B75CA1: FStAdFunc var_B0
  loc_B75CA4: FLdPr var_B0
  loc_B75CA7: LateIdLdVar var_C0 DispID_10 0
  loc_B75CAE: CI4Var
  loc_B75CB0: CVarI4
  loc_B75CB4: PopAdLdVar
  loc_B75CB5: LitVarI4
  loc_B75CBD: PopAdLdVar
  loc_B75CBE: FLdPr Me
  loc_B75CC1: VCallAd Control_ID_FlexCheque
  loc_B75CC4: FStAdFunc var_104
  loc_B75CC7: FLdPr var_104
  loc_B75CCA: LateIdCallLdVar
  loc_B75CD4: CStrVarTmp
  loc_B75CD5: FStStrNoPop var_128
  loc_B75CD8: LitI4 9
  loc_B75CDD: FLdRfVar var_A8
  loc_B75CE0: Ary1StStrCopy
  loc_B75CE1: FFree1Str var_128
  loc_B75CE4: FFreeAd var_B0 = ""
  loc_B75CEB: FFreeVar var_C0 = ""
  loc_B75CF2: LitStr "0"
  loc_B75CF5: LitI4 &HA
  loc_B75CFA: FLdRfVar var_A8
  loc_B75CFD: Ary1StStrCopy
  loc_B75CFE: FLdPr Me
  loc_B75D01: VCallAd Control_ID_FlexCheque
  loc_B75D04: FStAdFunc var_B0
  loc_B75D07: FLdPr var_B0
  loc_B75D0A: LateIdLdVar var_C0 DispID_10 0
  loc_B75D11: CI4Var
  loc_B75D13: CVarI4
  loc_B75D17: PopAdLdVar
  loc_B75D18: LitVarI4
  loc_B75D20: PopAdLdVar
  loc_B75D21: FLdPr Me
  loc_B75D24: VCallAd Control_ID_FlexCheque
  loc_B75D27: FStAdFunc var_104
  loc_B75D2A: FLdPr var_104
  loc_B75D2D: LateIdCallLdVar
  loc_B75D37: CStrVarTmp
  loc_B75D38: FStStrNoPop var_128
  loc_B75D3B: LitI4 &HB
  loc_B75D40: FLdRfVar var_A8
  loc_B75D43: Ary1StStrCopy
  loc_B75D44: FFree1Str var_128
  loc_B75D47: FFreeAd var_B0 = ""
  loc_B75D4E: FFreeVar var_C0 = ""
  loc_B75D55: FLdPr Me
  loc_B75D58: VCallAd Control_ID_FlexCheque
  loc_B75D5B: FStAdFunc var_B0
  loc_B75D5E: FLdPr var_B0
  loc_B75D61: LateIdLdVar var_C0 DispID_10 0
  loc_B75D68: CI4Var
  loc_B75D6A: CVarI4
  loc_B75D6E: PopAdLdVar
  loc_B75D6F: LitVarI4
  loc_B75D77: PopAdLdVar
  loc_B75D78: FLdPr Me
  loc_B75D7B: VCallAd Control_ID_FlexCheque
  loc_B75D7E: FStAdFunc var_104
  loc_B75D81: FLdPr var_104
  loc_B75D84: LateIdCallLdVar
  loc_B75D8E: CStrVarTmp
  loc_B75D8F: FStStrNoPop var_128
  loc_B75D92: LitI4 &HC
  loc_B75D97: FLdRfVar var_A8
  loc_B75D9A: Ary1StStrCopy
  loc_B75D9B: FFree1Str var_128
  loc_B75D9E: FFreeAd var_B0 = ""
  loc_B75DA5: FFreeVar var_C0 = ""
  loc_B75DAC: FLdPr Me
  loc_B75DAF: VCallAd Control_ID_FlexCheque
  loc_B75DB2: FStAdFunc var_B0
  loc_B75DB5: FLdPr var_B0
  loc_B75DB8: LateIdLdVar var_C0 DispID_10 0
  loc_B75DBF: CI4Var
  loc_B75DC1: CVarI4
  loc_B75DC5: PopAdLdVar
  loc_B75DC6: LitVarI4
  loc_B75DCE: PopAdLdVar
  loc_B75DCF: FLdPr Me
  loc_B75DD2: VCallAd Control_ID_FlexCheque
  loc_B75DD5: FStAdFunc var_104
  loc_B75DD8: FLdPr var_104
  loc_B75DDB: LateIdCallLdVar
  loc_B75DE5: CStrVarTmp
  loc_B75DE6: FStStrNoPop var_128
  loc_B75DE9: LitI4 &HD
  loc_B75DEE: FLdRfVar var_A8
  loc_B75DF1: Ary1StStrCopy
  loc_B75DF2: FFree1Str var_128
  loc_B75DF5: FFreeAd var_B0 = ""
  loc_B75DFC: FFreeVar var_C0 = ""
  loc_B75E03: LitStr "0"
  loc_B75E06: LitI4 &HE
  loc_B75E0B: FLdRfVar var_A8
  loc_B75E0E: Ary1StStrCopy
  loc_B75E0F: LitVarStr var_D0, " "
  loc_B75E14: PopAdLdVar
  loc_B75E15: FLdPr Me
  loc_B75E18: VCallAd Control_ID_FlexCheque
  loc_B75E1B: FStAdFunc var_B0
  loc_B75E1E: FLdPr var_B0
  loc_B75E21: LateIdCall
  loc_B75E29: FFree1Ad var_B0
  loc_B75E2C: FLdPr Me
  loc_B75E2F: VCallAd Control_ID_FlexCheque
  loc_B75E32: FStAdFunc var_B0
  loc_B75E35: FLdPr var_B0
  loc_B75E38: LateIdLdVar var_C0 DispID_10 0
  loc_B75E3F: CI4Var
  loc_B75E41: LitI4 1
  loc_B75E46: AddI4
  loc_B75E47: CVarI4
  loc_B75E4B: PopAdLdVar
  loc_B75E4C: FLdPr Me
  loc_B75E4F: VCallAd Control_ID_FlexCheque
  loc_B75E52: FStAdFunc var_104
  loc_B75E55: FLdPr var_104
  loc_B75E58: LateIdSt
  loc_B75E5D: FFreeAd var_B0 = ""
  loc_B75E64: FFree1Var var_C0 = ""
  loc_B75E67: LitVarI4
  loc_B75E6F: PopAdLdVar
  loc_B75E70: FLdPr Me
  loc_B75E73: VCallAd Control_ID_FlexCheque
  loc_B75E76: FStAdFunc var_B0
  loc_B75E79: FLdPr var_B0
  loc_B75E7C: LateIdSt
  loc_B75E81: FFree1Ad var_B0
  loc_B75E84: FLdPr Me
  loc_B75E87: VCallAd Control_ID_FlexCheque
  loc_B75E8A: FStAdFunc var_B0
  loc_B75E8D: FLdPr var_B0
  loc_B75E90: LateIdLdVar var_C0 DispID_10 0
  loc_B75E97: CI4Var
  loc_B75E99: CI2I4
  loc_B75E9A: FStI2 var_8E
  loc_B75E9D: FFree1Ad var_B0
  loc_B75EA0: FFree1Var var_C0 = ""
  loc_B75EA3: LitI2_Byte 2
  loc_B75EA5: FStI2 var_8A
  loc_B75EA8: LitI2_Byte 1
  loc_B75EAA: FStI2 var_8C
  loc_B75EAD: FLdPr Me
  loc_B75EB0: VCallAd Control_ID_FlexCheque
  loc_B75EB3: FStAdFunc var_B0
  loc_B75EB6: FLdPr var_B0
  loc_B75EB9: LateIdLdVar var_C0 DispID_4 0
  loc_B75EC0: CI4Var
  loc_B75EC2: LitI4 1
  loc_B75EC7: SubI4
  loc_B75EC8: CI2I4
  loc_B75EC9: FLdPr Me
  loc_B75ECC: MemLdRfVar from_stack_1.global_72
  loc_B75ECF: LitI2_Byte 1
  loc_B75ED1: LitI2_Byte &HFF
  loc_B75ED3: FFree1Ad var_B0
  loc_B75ED6: FFree1Var var_C0 = ""
  loc_B75ED9: ForStepI2 var_12C
  loc_B75EDF: FLdPr Me
  loc_B75EE2: MemLdI2 global_72
  loc_B75EE5: FLdI2 var_8E
  loc_B75EE8: GtI2
  loc_B75EE9: BranchF loc_B75F6F
  loc_B75EEC: FLdPr Me
  loc_B75EEF: VCallAd Control_ID_FlexCheque
  loc_B75EF2: FStAdFunc var_B0
  loc_B75EF5: FLdPr var_B0
  loc_B75EF8: LateIdLdVar var_C0 DispID_4 0
  loc_B75EFF: CI4Var
  loc_B75F01: FLdI2 var_8A
  loc_B75F04: CI4UI1
  loc_B75F05: SubI4
  loc_B75F06: CI2I4
  loc_B75F07: FStI2 var_88
  loc_B75F0A: FFree1Ad var_B0
  loc_B75F0D: FFree1Var var_C0 = ""
  loc_B75F10: FLdPr Me
  loc_B75F13: VCallAd Control_ID_FlexCheque
  loc_B75F16: FStAdFunc var_B0
  loc_B75F19: FLdPr var_B0
  loc_B75F1C: LateIdLdVar var_C0 DispID_4 0
  loc_B75F23: CI4Var
  loc_B75F25: FLdI2 var_8C
  loc_B75F28: CI4UI1
  loc_B75F29: SubI4
  loc_B75F2A: CI2I4
  loc_B75F2B: FStI2 var_86
  loc_B75F2E: FFree1Ad var_B0
  loc_B75F31: FFree1Var var_C0 = ""
  loc_B75F34: FLdI2 var_88
  loc_B75F37: CI4UI1
  loc_B75F38: CVarI4
  loc_B75F3C: PopAdLdVar
  loc_B75F3D: FLdI2 var_86
  loc_B75F40: CI4UI1
  loc_B75F41: CVarI4
  loc_B75F45: PopAdLdVar
  loc_B75F46: FLdPr Me
  loc_B75F49: VCallAd Control_ID_FlexCheque
  loc_B75F4C: FStAdFunc var_B0
  loc_B75F4F: FLdPr var_B0
  loc_B75F52: LateIdCallSt
  loc_B75F5A: FFree1Ad var_B0
  loc_B75F5D: FLdI2 var_8A
  loc_B75F60: LitI2_Byte 1
  loc_B75F62: AddI2
  loc_B75F63: FStI2 var_8A
  loc_B75F66: FLdI2 var_8C
  loc_B75F69: LitI2_Byte 1
  loc_B75F6B: AddI2
  loc_B75F6C: FStI2 var_8C
  loc_B75F6F: FLdPr Me
  loc_B75F72: MemLdRfVar from_stack_1.global_72
  loc_B75F75: NextStepI2 var_12C, loc_B75EDF
  loc_B75F7A: FLdI2 var_86
  loc_B75F7D: LitI2_Byte 0
  loc_B75F7F: NeI2
  loc_B75F80: BranchF loc_B762DD
  loc_B75F83: FLdI2 var_86
  loc_B75F86: LitI2_Byte 1
  loc_B75F88: SubI2
  loc_B75F89: CI4UI1
  loc_B75F8A: CVarI4
  loc_B75F8E: PopAdLdVar
  loc_B75F8F: LitVarI4
  loc_B75F97: PopAdLdVar
  loc_B75F98: LitI4 0
  loc_B75F9D: FLdRfVar var_A8
  loc_B75FA0: Ary1LdRf
  loc_B75FA1: CDargRef
  loc_B75FA5: FLdPr Me
  loc_B75FA8: VCallAd Control_ID_FlexCheque
  loc_B75FAB: FStAdFunc var_B0
  loc_B75FAE: FLdPr var_B0
  loc_B75FB1: LateIdCallSt
  loc_B75FB9: FFree1Ad var_B0
  loc_B75FBC: FLdI2 var_86
  loc_B75FBF: LitI2_Byte 1
  loc_B75FC1: SubI2
  loc_B75FC2: CI4UI1
  loc_B75FC3: CVarI4
  loc_B75FC7: PopAdLdVar
  loc_B75FC8: LitVarI4
  loc_B75FD0: PopAdLdVar
  loc_B75FD1: LitI4 1
  loc_B75FD6: FLdRfVar var_A8
  loc_B75FD9: Ary1LdRf
  loc_B75FDA: CDargRef
  loc_B75FDE: FLdPr Me
  loc_B75FE1: VCallAd Control_ID_FlexCheque
  loc_B75FE4: FStAdFunc var_B0
  loc_B75FE7: FLdPr var_B0
  loc_B75FEA: LateIdCallSt
  loc_B75FF2: FFree1Ad var_B0
  loc_B75FF5: FLdI2 var_86
  loc_B75FF8: LitI2_Byte 1
  loc_B75FFA: SubI2
  loc_B75FFB: CI4UI1
  loc_B75FFC: CVarI4
  loc_B76000: PopAdLdVar
  loc_B76001: LitVarI4
  loc_B76009: PopAdLdVar
  loc_B7600A: LitI4 2
  loc_B7600F: FLdRfVar var_A8
  loc_B76012: Ary1LdRf
  loc_B76013: CDargRef
  loc_B76017: FLdPr Me
  loc_B7601A: VCallAd Control_ID_FlexCheque
  loc_B7601D: FStAdFunc var_B0
  loc_B76020: FLdPr var_B0
  loc_B76023: LateIdCallSt
  loc_B7602B: FFree1Ad var_B0
  loc_B7602E: FLdI2 var_86
  loc_B76031: LitI2_Byte 1
  loc_B76033: SubI2
  loc_B76034: CI4UI1
  loc_B76035: CVarI4
  loc_B76039: PopAdLdVar
  loc_B7603A: LitVarI4
  loc_B76042: PopAdLdVar
  loc_B76043: LitI4 3
  loc_B76048: FLdRfVar var_A8
  loc_B7604B: Ary1LdRf
  loc_B7604C: CDargRef
  loc_B76050: FLdPr Me
  loc_B76053: VCallAd Control_ID_FlexCheque
  loc_B76056: FStAdFunc var_B0
  loc_B76059: FLdPr var_B0
  loc_B7605C: LateIdCallSt
  loc_B76064: FFree1Ad var_B0
  loc_B76067: FLdI2 var_86
  loc_B7606A: LitI2_Byte 1
  loc_B7606C: SubI2
  loc_B7606D: CI4UI1
  loc_B7606E: CVarI4
  loc_B76072: PopAdLdVar
  loc_B76073: LitVarI4
  loc_B7607B: PopAdLdVar
  loc_B7607C: LitI4 4
  loc_B76081: FLdRfVar var_A8
  loc_B76084: Ary1LdRf
  loc_B76085: CDargRef
  loc_B76089: FLdPr Me
  loc_B7608C: VCallAd Control_ID_FlexCheque
  loc_B7608F: FStAdFunc var_B0
  loc_B76092: FLdPr var_B0
  loc_B76095: LateIdCallSt
  loc_B7609D: FFree1Ad var_B0
  loc_B760A0: FLdI2 var_86
  loc_B760A3: LitI2_Byte 1
  loc_B760A5: SubI2
  loc_B760A6: CI4UI1
  loc_B760A7: CVarI4
  loc_B760AB: PopAdLdVar
  loc_B760AC: LitVarI4
  loc_B760B4: PopAdLdVar
  loc_B760B5: LitI4 5
  loc_B760BA: FLdRfVar var_A8
  loc_B760BD: Ary1LdRf
  loc_B760BE: CDargRef
  loc_B760C2: FLdPr Me
  loc_B760C5: VCallAd Control_ID_FlexCheque
  loc_B760C8: FStAdFunc var_B0
  loc_B760CB: FLdPr var_B0
  loc_B760CE: LateIdCallSt
  loc_B760D6: FFree1Ad var_B0
  loc_B760D9: FLdI2 var_86
  loc_B760DC: LitI2_Byte 1
  loc_B760DE: SubI2
  loc_B760DF: CI4UI1
  loc_B760E0: CVarI4
  loc_B760E4: PopAdLdVar
  loc_B760E5: LitVarI4
  loc_B760ED: PopAdLdVar
  loc_B760EE: LitI4 6
  loc_B760F3: FLdRfVar var_A8
  loc_B760F6: Ary1LdRf
  loc_B760F7: CDargRef
  loc_B760FB: FLdPr Me
  loc_B760FE: VCallAd Control_ID_FlexCheque
  loc_B76101: FStAdFunc var_B0
  loc_B76104: FLdPr var_B0
  loc_B76107: LateIdCallSt
  loc_B7610F: FFree1Ad var_B0
  loc_B76112: FLdI2 var_86
  loc_B76115: LitI2_Byte 1
  loc_B76117: SubI2
  loc_B76118: CI4UI1
  loc_B76119: CVarI4
  loc_B7611D: PopAdLdVar
  loc_B7611E: LitVarI4
  loc_B76126: PopAdLdVar
  loc_B76127: LitI4 7
  loc_B7612C: FLdRfVar var_A8
  loc_B7612F: Ary1LdRf
  loc_B76130: CDargRef
  loc_B76134: FLdPr Me
  loc_B76137: VCallAd Control_ID_FlexCheque
  loc_B7613A: FStAdFunc var_B0
  loc_B7613D: FLdPr var_B0
  loc_B76140: LateIdCallSt
  loc_B76148: FFree1Ad var_B0
  loc_B7614B: FLdI2 var_86
  loc_B7614E: LitI2_Byte 1
  loc_B76150: SubI2
  loc_B76151: CI4UI1
  loc_B76152: CVarI4
  loc_B76156: PopAdLdVar
  loc_B76157: LitVarI4
  loc_B7615F: PopAdLdVar
  loc_B76160: LitI4 8
  loc_B76165: FLdRfVar var_A8
  loc_B76168: Ary1LdRf
  loc_B76169: CDargRef
  loc_B7616D: FLdPr Me
  loc_B76170: VCallAd Control_ID_FlexCheque
  loc_B76173: FStAdFunc var_B0
  loc_B76176: FLdPr var_B0
  loc_B76179: LateIdCallSt
  loc_B76181: FFree1Ad var_B0
  loc_B76184: FLdI2 var_86
  loc_B76187: LitI2_Byte 1
  loc_B76189: SubI2
  loc_B7618A: CI4UI1
  loc_B7618B: CVarI4
  loc_B7618F: PopAdLdVar
  loc_B76190: LitVarI4
  loc_B76198: PopAdLdVar
  loc_B76199: LitI4 9
  loc_B7619E: FLdRfVar var_A8
  loc_B761A1: Ary1LdRf
  loc_B761A2: CDargRef
  loc_B761A6: FLdPr Me
  loc_B761A9: VCallAd Control_ID_FlexCheque
  loc_B761AC: FStAdFunc var_B0
  loc_B761AF: FLdPr var_B0
  loc_B761B2: LateIdCallSt
  loc_B761BA: FFree1Ad var_B0
  loc_B761BD: FLdI2 var_86
  loc_B761C0: LitI2_Byte 1
  loc_B761C2: SubI2
  loc_B761C3: CI4UI1
  loc_B761C4: CVarI4
  loc_B761C8: PopAdLdVar
  loc_B761C9: LitVarI4
  loc_B761D1: PopAdLdVar
  loc_B761D2: LitI4 &HA
  loc_B761D7: FLdRfVar var_A8
  loc_B761DA: Ary1LdRf
  loc_B761DB: CDargRef
  loc_B761DF: FLdPr Me
  loc_B761E2: VCallAd Control_ID_FlexCheque
  loc_B761E5: FStAdFunc var_B0
  loc_B761E8: FLdPr var_B0
  loc_B761EB: LateIdCallSt
  loc_B761F3: FFree1Ad var_B0
  loc_B761F6: FLdI2 var_86
  loc_B761F9: LitI2_Byte 1
  loc_B761FB: SubI2
  loc_B761FC: CI4UI1
  loc_B761FD: CVarI4
  loc_B76201: PopAdLdVar
  loc_B76202: LitVarI4
  loc_B7620A: PopAdLdVar
  loc_B7620B: LitI4 &HB
  loc_B76210: FLdRfVar var_A8
  loc_B76213: Ary1LdRf
  loc_B76214: CDargRef
  loc_B76218: FLdPr Me
  loc_B7621B: VCallAd Control_ID_FlexCheque
  loc_B7621E: FStAdFunc var_B0
  loc_B76221: FLdPr var_B0
  loc_B76224: LateIdCallSt
  loc_B7622C: FFree1Ad var_B0
  loc_B7622F: FLdI2 var_86
  loc_B76232: LitI2_Byte 1
  loc_B76234: SubI2
  loc_B76235: CI4UI1
  loc_B76236: CVarI4
  loc_B7623A: PopAdLdVar
  loc_B7623B: LitVarI4
  loc_B76243: PopAdLdVar
  loc_B76244: LitI4 &HC
  loc_B76249: FLdRfVar var_A8
  loc_B7624C: Ary1LdRf
  loc_B7624D: CDargRef
  loc_B76251: FLdPr Me
  loc_B76254: VCallAd Control_ID_FlexCheque
  loc_B76257: FStAdFunc var_B0
  loc_B7625A: FLdPr var_B0
  loc_B7625D: LateIdCallSt
  loc_B76265: FFree1Ad var_B0
  loc_B76268: FLdI2 var_86
  loc_B7626B: LitI2_Byte 1
  loc_B7626D: SubI2
  loc_B7626E: CI4UI1
  loc_B7626F: CVarI4
  loc_B76273: PopAdLdVar
  loc_B76274: LitVarI4
  loc_B7627C: PopAdLdVar
  loc_B7627D: LitI4 &HD
  loc_B76282: FLdRfVar var_A8
  loc_B76285: Ary1LdRf
  loc_B76286: CDargRef
  loc_B7628A: FLdPr Me
  loc_B7628D: VCallAd Control_ID_FlexCheque
  loc_B76290: FStAdFunc var_B0
  loc_B76293: FLdPr var_B0
  loc_B76296: LateIdCallSt
  loc_B7629E: FFree1Ad var_B0
  loc_B762A1: FLdI2 var_86
  loc_B762A4: LitI2_Byte 1
  loc_B762A6: SubI2
  loc_B762A7: CI4UI1
  loc_B762A8: CVarI4
  loc_B762AC: PopAdLdVar
  loc_B762AD: LitVarI4
  loc_B762B5: PopAdLdVar
  loc_B762B6: LitI4 &HE
  loc_B762BB: FLdRfVar var_A8
  loc_B762BE: Ary1LdRf
  loc_B762BF: CDargRef
  loc_B762C3: FLdPr Me
  loc_B762C6: VCallAd Control_ID_FlexCheque
  loc_B762C9: FStAdFunc var_B0
  loc_B762CC: FLdPr var_B0
  loc_B762CF: LateIdCallSt
  loc_B762D7: FFree1Ad var_B0
  loc_B762DA: Branch loc_B76610
  loc_B762DD: FLdI2 var_86
  loc_B762E0: LitI2_Byte 0
  loc_B762E2: EqI2
  loc_B762E3: BranchF loc_B76610
  loc_B762E6: FLdI2 var_8E
  loc_B762E9: CI4UI1
  loc_B762EA: CVarI4
  loc_B762EE: PopAdLdVar
  loc_B762EF: LitVarI4
  loc_B762F7: PopAdLdVar
  loc_B762F8: LitI4 0
  loc_B762FD: FLdRfVar var_A8
  loc_B76300: Ary1LdRf
  loc_B76301: CDargRef
  loc_B76305: FLdPr Me
  loc_B76308: VCallAd Control_ID_FlexCheque
  loc_B7630B: FStAdFunc var_B0
  loc_B7630E: FLdPr var_B0
  loc_B76311: LateIdCallSt
  loc_B76319: FFree1Ad var_B0
  loc_B7631C: FLdI2 var_8E
  loc_B7631F: CI4UI1
  loc_B76320: CVarI4
  loc_B76324: PopAdLdVar
  loc_B76325: LitVarI4
  loc_B7632D: PopAdLdVar
  loc_B7632E: LitI4 1
  loc_B76333: FLdRfVar var_A8
  loc_B76336: Ary1LdRf
  loc_B76337: CDargRef
  loc_B7633B: FLdPr Me
  loc_B7633E: VCallAd Control_ID_FlexCheque
  loc_B76341: FStAdFunc var_B0
  loc_B76344: FLdPr var_B0
  loc_B76347: LateIdCallSt
  loc_B7634F: FFree1Ad var_B0
  loc_B76352: FLdI2 var_8E
  loc_B76355: CI4UI1
  loc_B76356: CVarI4
  loc_B7635A: PopAdLdVar
  loc_B7635B: LitVarI4
  loc_B76363: PopAdLdVar
  loc_B76364: LitI4 2
  loc_B76369: FLdRfVar var_A8
  loc_B7636C: Ary1LdRf
  loc_B7636D: CDargRef
  loc_B76371: FLdPr Me
  loc_B76374: VCallAd Control_ID_FlexCheque
  loc_B76377: FStAdFunc var_B0
  loc_B7637A: FLdPr var_B0
  loc_B7637D: LateIdCallSt
  loc_B76385: FFree1Ad var_B0
  loc_B76388: FLdI2 var_8E
  loc_B7638B: CI4UI1
  loc_B7638C: CVarI4
  loc_B76390: PopAdLdVar
  loc_B76391: LitVarI4
  loc_B76399: PopAdLdVar
  loc_B7639A: LitI4 3
  loc_B7639F: FLdRfVar var_A8
  loc_B763A2: Ary1LdRf
  loc_B763A3: CDargRef
  loc_B763A7: FLdPr Me
  loc_B763AA: VCallAd Control_ID_FlexCheque
  loc_B763AD: FStAdFunc var_B0
  loc_B763B0: FLdPr var_B0
  loc_B763B3: LateIdCallSt
  loc_B763BB: FFree1Ad var_B0
  loc_B763BE: FLdI2 var_8E
  loc_B763C1: CI4UI1
  loc_B763C2: CVarI4
  loc_B763C6: PopAdLdVar
  loc_B763C7: LitVarI4
  loc_B763CF: PopAdLdVar
  loc_B763D0: LitI4 4
  loc_B763D5: FLdRfVar var_A8
  loc_B763D8: Ary1LdRf
  loc_B763D9: CDargRef
  loc_B763DD: FLdPr Me
  loc_B763E0: VCallAd Control_ID_FlexCheque
  loc_B763E3: FStAdFunc var_B0
  loc_B763E6: FLdPr var_B0
  loc_B763E9: LateIdCallSt
  loc_B763F1: FFree1Ad var_B0
  loc_B763F4: FLdI2 var_8E
  loc_B763F7: CI4UI1
  loc_B763F8: CVarI4
  loc_B763FC: PopAdLdVar
  loc_B763FD: LitVarI4
  loc_B76405: PopAdLdVar
  loc_B76406: LitI4 5
  loc_B7640B: FLdRfVar var_A8
  loc_B7640E: Ary1LdRf
  loc_B7640F: CDargRef
  loc_B76413: FLdPr Me
  loc_B76416: VCallAd Control_ID_FlexCheque
  loc_B76419: FStAdFunc var_B0
  loc_B7641C: FLdPr var_B0
  loc_B7641F: LateIdCallSt
  loc_B76427: FFree1Ad var_B0
  loc_B7642A: FLdI2 var_8E
  loc_B7642D: CI4UI1
  loc_B7642E: CVarI4
  loc_B76432: PopAdLdVar
  loc_B76433: LitVarI4
  loc_B7643B: PopAdLdVar
  loc_B7643C: LitI4 6
  loc_B76441: FLdRfVar var_A8
  loc_B76444: Ary1LdRf
  loc_B76445: CDargRef
  loc_B76449: FLdPr Me
  loc_B7644C: VCallAd Control_ID_FlexCheque
  loc_B7644F: FStAdFunc var_B0
  loc_B76452: FLdPr var_B0
  loc_B76455: LateIdCallSt
  loc_B7645D: FFree1Ad var_B0
  loc_B76460: FLdI2 var_8E
  loc_B76463: CI4UI1
  loc_B76464: CVarI4
  loc_B76468: PopAdLdVar
  loc_B76469: LitVarI4
  loc_B76471: PopAdLdVar
  loc_B76472: LitI4 7
  loc_B76477: FLdRfVar var_A8
  loc_B7647A: Ary1LdRf
  loc_B7647B: CDargRef
  loc_B7647F: FLdPr Me
  loc_B76482: VCallAd Control_ID_FlexCheque
  loc_B76485: FStAdFunc var_B0
  loc_B76488: FLdPr var_B0
  loc_B7648B: LateIdCallSt
  loc_B76493: FFree1Ad var_B0
  loc_B76496: FLdI2 var_8E
  loc_B76499: CI4UI1
  loc_B7649A: CVarI4
  loc_B7649E: PopAdLdVar
  loc_B7649F: LitVarI4
  loc_B764A7: PopAdLdVar
  loc_B764A8: LitI4 8
  loc_B764AD: FLdRfVar var_A8
  loc_B764B0: Ary1LdRf
  loc_B764B1: CDargRef
  loc_B764B5: FLdPr Me
  loc_B764B8: VCallAd Control_ID_FlexCheque
  loc_B764BB: FStAdFunc var_B0
  loc_B764BE: FLdPr var_B0
  loc_B764C1: LateIdCallSt
  loc_B764C9: FFree1Ad var_B0
  loc_B764CC: FLdI2 var_8E
  loc_B764CF: CI4UI1
  loc_B764D0: CVarI4
  loc_B764D4: PopAdLdVar
  loc_B764D5: LitVarI4
  loc_B764DD: PopAdLdVar
  loc_B764DE: LitI4 9
  loc_B764E3: FLdRfVar var_A8
  loc_B764E6: Ary1LdRf
  loc_B764E7: CDargRef
  loc_B764EB: FLdPr Me
  loc_B764EE: VCallAd Control_ID_FlexCheque
  loc_B764F1: FStAdFunc var_B0
  loc_B764F4: FLdPr var_B0
  loc_B764F7: LateIdCallSt
  loc_B764FF: FFree1Ad var_B0
  loc_B76502: FLdI2 var_8E
  loc_B76505: CI4UI1
  loc_B76506: CVarI4
  loc_B7650A: PopAdLdVar
  loc_B7650B: LitVarI4
  loc_B76513: PopAdLdVar
  loc_B76514: LitI4 &HA
  loc_B76519: FLdRfVar var_A8
  loc_B7651C: Ary1LdRf
  loc_B7651D: CDargRef
  loc_B76521: FLdPr Me
  loc_B76524: VCallAd Control_ID_FlexCheque
  loc_B76527: FStAdFunc var_B0
  loc_B7652A: FLdPr var_B0
  loc_B7652D: LateIdCallSt
  loc_B76535: FFree1Ad var_B0
  loc_B76538: FLdI2 var_8E
  loc_B7653B: CI4UI1
  loc_B7653C: CVarI4
  loc_B76540: PopAdLdVar
  loc_B76541: LitVarI4
  loc_B76549: PopAdLdVar
  loc_B7654A: LitI4 &HB
  loc_B7654F: FLdRfVar var_A8
  loc_B76552: Ary1LdRf
  loc_B76553: CDargRef
  loc_B76557: FLdPr Me
  loc_B7655A: VCallAd Control_ID_FlexCheque
  loc_B7655D: FStAdFunc var_B0
  loc_B76560: FLdPr var_B0
  loc_B76563: LateIdCallSt
  loc_B7656B: FFree1Ad var_B0
  loc_B7656E: FLdI2 var_8E
  loc_B76571: CI4UI1
  loc_B76572: CVarI4
  loc_B76576: PopAdLdVar
  loc_B76577: LitVarI4
  loc_B7657F: PopAdLdVar
  loc_B76580: LitI4 &HC
  loc_B76585: FLdRfVar var_A8
  loc_B76588: Ary1LdRf
  loc_B76589: CDargRef
  loc_B7658D: FLdPr Me
  loc_B76590: VCallAd Control_ID_FlexCheque
  loc_B76593: FStAdFunc var_B0
  loc_B76596: FLdPr var_B0
  loc_B76599: LateIdCallSt
  loc_B765A1: FFree1Ad var_B0
  loc_B765A4: FLdI2 var_8E
  loc_B765A7: CI4UI1
  loc_B765A8: CVarI4
  loc_B765AC: PopAdLdVar
  loc_B765AD: LitVarI4
  loc_B765B5: PopAdLdVar
  loc_B765B6: LitI4 &HD
  loc_B765BB: FLdRfVar var_A8
  loc_B765BE: Ary1LdRf
  loc_B765BF: CDargRef
  loc_B765C3: FLdPr Me
  loc_B765C6: VCallAd Control_ID_FlexCheque
  loc_B765C9: FStAdFunc var_B0
  loc_B765CC: FLdPr var_B0
  loc_B765CF: LateIdCallSt
  loc_B765D7: FFree1Ad var_B0
  loc_B765DA: FLdI2 var_8E
  loc_B765DD: CI4UI1
  loc_B765DE: CVarI4
  loc_B765E2: PopAdLdVar
  loc_B765E3: LitVarI4
  loc_B765EB: PopAdLdVar
  loc_B765EC: LitI4 &HE
  loc_B765F1: FLdRfVar var_A8
  loc_B765F4: Ary1LdRf
  loc_B765F5: CDargRef
  loc_B765F9: FLdPr Me
  loc_B765FC: VCallAd Control_ID_FlexCheque
  loc_B765FF: FStAdFunc var_B0
  loc_B76602: FLdPr var_B0
  loc_B76605: LateIdCallSt
  loc_B7660D: FFree1Ad var_B0
  loc_B76610: ExitProcHresult
End Function

Private Function Proc_113_39_AA4D94() 'AA4D94
  'Data Table: 4B2A08
  loc_AA48AC: FLdRfVar var_8C
  loc_AA48AF: FLdRfVar var_88
  loc_AA48B2: ImpAdLdRf MemVar_C3D6AC
  loc_AA48B5: NewIfNullPr bscBanco
  loc_AA48B8: from_stack_1v = bscBanco.global_4317104Get()
  loc_AA48BD: FLdPr var_88
  loc_AA48C0: from_stack_1 = clsbase.RecordCount
  loc_AA48C5: ILdRf var_8C
  loc_AA48C8: LitI4 0
  loc_AA48CD: GtI4
  loc_AA48CE: FFree1Ad var_88
  loc_AA48D1: BranchF loc_AA496E
  loc_AA48D4: LitStr "SELECT * FROM banco WHERE PeriInfo = "
  loc_AA48D7: ImpAdLdI2 MemVar_C3D064
  loc_AA48DA: CStrUI1
  loc_AA48DC: FStStrNoPop var_90
  loc_AA48DF: ConcatStr
  loc_AA48E0: FStStrNoPop var_94
  loc_AA48E3: LitStr " AND CodiBanc = '"
  loc_AA48E6: ConcatStr
  loc_AA48E7: CVarStr var_D0
  loc_AA48EA: FLdRfVar var_C0
  loc_AA48ED: FLdRfVar var_B0
  loc_AA48F0: LitVarStr var_AC, "CodiBanc"
  loc_AA48F5: PopAdLdVar
  loc_AA48F6: FLdRfVar var_9C
  loc_AA48F9: FLdRfVar var_98
  loc_AA48FC: FLdRfVar var_88
  loc_AA48FF: ImpAdLdRf MemVar_C3D6AC
  loc_AA4902: NewIfNullPr bscBanco
  loc_AA4905: from_stack_1v = bscBanco.global_4317104Get()
  loc_AA490A: FLdPr var_88
  loc_AA490D: from_stack_1v = clsbase.RsFrmGet()
  loc_AA4912: FLdPr var_98
  loc_AA4915:  = Me.Fields
  loc_AA491A: FLdPr var_9C
  loc_AA491D: from_stack_2 = Me.Item(from_stack_1)
  loc_AA4922: FLdPr var_B0
  loc_AA4925:  = Me.Value
  loc_AA492A: FLdRfVar var_C0
  loc_AA492D: ConcatVar var_E0
  loc_AA4931: LitVarStr var_F0, "' ORDER BY PeriInfo, CodiBanc;"
  loc_AA4936: ConcatVar var_100
  loc_AA493A: CStrVarVal var_104
  loc_AA493E: FLdPr Me
  loc_AA4941: MemLdRfVar from_stack_1.global_56
  loc_AA4944: NewIfNullPr clsbanco
  loc_AA4947: Call clsbanco.RedefineRS(from_stack_1v)
  loc_AA494C: FFreeStr var_90 = "": var_94 = ""
  loc_AA4955: FFreeAd var_88 = "": var_98 = "": var_9C = ""
  loc_AA4960: FFreeVar var_D0 = "": var_C0 = "": var_E0 = ""
  loc_AA496B: Branch loc_AA499B
  loc_AA496E: LitStr "SELECT * FROM banco WHERE PeriInfo = "
  loc_AA4971: ImpAdLdI2 MemVar_C3D064
  loc_AA4974: CStrUI1
  loc_AA4976: FStStrNoPop var_90
  loc_AA4979: ConcatStr
  loc_AA497A: FStStrNoPop var_94
  loc_AA497D: LitStr " ORDER BY PeriInfo, CodiBanc;"
  loc_AA4980: ConcatStr
  loc_AA4981: FStStrNoPop var_104
  loc_AA4984: FLdPr Me
  loc_AA4987: MemLdRfVar from_stack_1.global_56
  loc_AA498A: NewIfNullPr clsbanco
  loc_AA498D: Call clsbanco.RedefineRS(from_stack_1v)
  loc_AA4992: FFreeStr var_90 = "": var_94 = ""
  loc_AA499B: FLdRfVar var_8C
  loc_AA499E: FLdPr Me
  loc_AA49A1: MemLdRfVar from_stack_1.global_56
  loc_AA49A4: NewIfNullPr clsbanco
  loc_AA49A7: from_stack_1 = clsbanco.RecordCount
  loc_AA49AC: ILdRf var_8C
  loc_AA49AF: LitI4 0
  loc_AA49B4: GtI4
  loc_AA49B5: BranchF loc_AA4D93
  loc_AA49B8: FLdPr Me
  loc_AA49BB: MemLdRfVar from_stack_1.global_56
  loc_AA49BE: NewIfNullPr clsbanco
  loc_AA49C1: Call clsbanco.MoveFirst()
  loc_AA49C6: FLdRfVar var_106
  loc_AA49C9: FLdPr Me
  loc_AA49CC: MemLdRfVar from_stack_1.global_56
  loc_AA49CF: NewIfNullPr clsbanco
  loc_AA49D2: from_stack_1 = clsbanco.EOF
  loc_AA49D7: FLdI2 var_106
  loc_AA49DA: NotI4
  loc_AA49DB: BranchF loc_AA4D93
  loc_AA49DE: FLdRfVar var_C0
  loc_AA49E1: FLdRfVar var_9C
  loc_AA49E4: LitVarStr var_AC, "UlchBanc"
  loc_AA49E9: PopAdLdVar
  loc_AA49EA: FLdRfVar var_98
  loc_AA49ED: FLdRfVar var_88
  loc_AA49F0: FLdPr Me
  loc_AA49F3: MemLdRfVar from_stack_1.global_56
  loc_AA49F6: NewIfNullPr clsbanco
  loc_AA49F9: from_stack_1v = clsbanco.RsFrmGet()
  loc_AA49FE: FLdPr var_88
  loc_AA4A01:  = Me.Fields
  loc_AA4A06: FLdPr var_98
  loc_AA4A09: from_stack_2 = Me.Item(from_stack_1)
  loc_AA4A0E: FLdPr var_9C
  loc_AA4A11:  = Me.Value
  loc_AA4A16: FLdRfVar var_C0
  loc_AA4A19: CI4Var
  loc_AA4A1B: FLdPr Me
  loc_AA4A1E: MemStI4 global_76
  loc_AA4A21: FFreeAd var_88 = "": var_98 = ""
  loc_AA4A2A: FFree1Var var_C0 = ""
  loc_AA4A2D: LitI2_Byte 1
  loc_AA4A2F: FLdPr Me
  loc_AA4A32: MemLdRfVar from_stack_1.global_72
  loc_AA4A35: FLdPr Me
  loc_AA4A38: VCallAd Control_ID_FlexCheque
  loc_AA4A3B: FStAdFunc var_88
  loc_AA4A3E: FLdPr var_88
  loc_AA4A41: LateIdLdVar var_C0 DispID_4 0
  loc_AA4A48: CI4Var
  loc_AA4A4A: LitI4 1
  loc_AA4A4F: SubI4
  loc_AA4A50: CI2I4
  loc_AA4A51: FFree1Ad var_88
  loc_AA4A54: FFree1Var var_C0 = ""
  loc_AA4A57: ForI2 var_10A
  loc_AA4A5D: FLdPr Me
  loc_AA4A60: MemLdI2 global_72
  loc_AA4A63: CI4UI1
  loc_AA4A64: CVarI4
  loc_AA4A68: PopAdLdVar
  loc_AA4A69: LitVarI4
  loc_AA4A71: PopAdLdVar
  loc_AA4A72: FLdPr Me
  loc_AA4A75: VCallAd Control_ID_FlexCheque
  loc_AA4A78: FStAdFunc var_88
  loc_AA4A7B: FLdPr var_88
  loc_AA4A7E: LateIdCallLdVar
  loc_AA4A88: CStrVarTmp
  loc_AA4A89: FStStrNoPop var_90
  loc_AA4A8C: LitStr vbNullString
  loc_AA4A8F: NeStr
  loc_AA4A91: FFree1Str var_90
  loc_AA4A94: FFree1Ad var_88
  loc_AA4A97: FFree1Var var_C0 = ""
  loc_AA4A9A: BranchF loc_AA4D77
  loc_AA4A9D: FLdPr Me
  loc_AA4AA0: MemLdI2 global_72
  loc_AA4AA3: CI4UI1
  loc_AA4AA4: CVarI4
  loc_AA4AA8: PopAdLdVar
  loc_AA4AA9: LitVarI4
  loc_AA4AB1: PopAdLdVar
  loc_AA4AB2: FLdPr Me
  loc_AA4AB5: VCallAd Control_ID_FlexCheque
  loc_AA4AB8: FStAdFunc var_88
  loc_AA4ABB: FLdPr var_88
  loc_AA4ABE: LateIdCallLdVar
  loc_AA4AC8: PopAd
  loc_AA4ACA: LitI4 1
  loc_AA4ACF: FLdPr Me
  loc_AA4AD2: MemLdI2 global_72
  loc_AA4AD5: CI4UI1
  loc_AA4AD6: CVarI4
  loc_AA4ADA: PopAdLdVar
  loc_AA4ADB: LitVarI4
  loc_AA4AE3: PopAdLdVar
  loc_AA4AE4: FLdPr Me
  loc_AA4AE7: VCallAd Control_ID_FlexCheque
  loc_AA4AEA: FStAdFunc var_98
  loc_AA4AED: FLdPr var_98
  loc_AA4AF0: LateIdCallLdVar
  loc_AA4AFA: CStrVarTmp
  loc_AA4AFB: FStStrNoPop var_90
  loc_AA4AFE: LitStr "-"
  loc_AA4B01: LitI4 0
  loc_AA4B06: FnInStr4
  loc_AA4B08: LitI4 1
  loc_AA4B0D: SubI4
  loc_AA4B0E: CVarI4
  loc_AA4B12: LitI4 1
  loc_AA4B17: FLdRfVar var_C0
  loc_AA4B1A: CStrVarTmp
  loc_AA4B1B: FStStrNoPop var_94
  loc_AA4B1E: ImpAdCallI2 Mid$(, , )
  loc_AA4B23: CVarStr var_100
  loc_AA4B26: ImpAdCallI2 IsNumeric()
  loc_AA4B2B: FFreeStr var_90 = ""
  loc_AA4B32: FFreeAd var_88 = ""
  loc_AA4B39: FFreeVar var_C0 = "": var_D0 = "": var_E0 = ""
  loc_AA4B44: BranchF loc_AA4D77
  loc_AA4B47: FLdPr Me
  loc_AA4B4A: MemLdI2 global_72
  loc_AA4B4D: CI4UI1
  loc_AA4B4E: CVarI4
  loc_AA4B52: PopAdLdVar
  loc_AA4B53: LitVarI4
  loc_AA4B5B: PopAdLdVar
  loc_AA4B5C: FLdPr Me
  loc_AA4B5F: VCallAd Control_ID_FlexCheque
  loc_AA4B62: FStAdFunc var_B0
  loc_AA4B65: FLdPr var_B0
  loc_AA4B68: LateIdCallLdVar
  loc_AA4B72: PopAd
  loc_AA4B74: FLdRfVar var_C0
  loc_AA4B77: FLdRfVar var_9C
  loc_AA4B7A: LitVarStr var_AC, "CodiBanc"
  loc_AA4B7F: PopAdLdVar
  loc_AA4B80: FLdRfVar var_98
  loc_AA4B83: FLdRfVar var_88
  loc_AA4B86: FLdPr Me
  loc_AA4B89: MemLdRfVar from_stack_1.global_56
  loc_AA4B8C: NewIfNullPr clsbanco
  loc_AA4B8F: from_stack_1v = clsbanco.RsFrmGet()
  loc_AA4B94: FLdPr var_88
  loc_AA4B97:  = Me.Fields
  loc_AA4B9C: FLdPr var_98
  loc_AA4B9F: from_stack_2 = Me.Item(from_stack_1)
  loc_AA4BA4: FLdPr var_9C
  loc_AA4BA7:  = Me.Value
  loc_AA4BAC: FLdRfVar var_C0
  loc_AA4BAF: FnCLngVar
  loc_AA4BB1: LitI4 1
  loc_AA4BB6: FLdPr Me
  loc_AA4BB9: MemLdI2 global_72
  loc_AA4BBC: CI4UI1
  loc_AA4BBD: CVarI4
  loc_AA4BC1: PopAdLdVar
  loc_AA4BC2: LitVarI4
  loc_AA4BCA: PopAdLdVar
  loc_AA4BCB: FLdPr Me
  loc_AA4BCE: VCallAd Control_ID_FlexCheque
  loc_AA4BD1: FStAdFunc var_180
  loc_AA4BD4: FLdPr var_180
  loc_AA4BD7: LateIdCallLdVar
  loc_AA4BE1: CStrVarTmp
  loc_AA4BE2: FStStrNoPop var_90
  loc_AA4BE5: LitStr "-"
  loc_AA4BE8: LitI4 0
  loc_AA4BED: FnInStr4
  loc_AA4BEF: LitI4 1
  loc_AA4BF4: SubI4
  loc_AA4BF5: CVarI4
  loc_AA4BF9: LitI4 1
  loc_AA4BFE: FLdRfVar var_D0
  loc_AA4C01: CStrVarTmp
  loc_AA4C02: FStStrNoPop var_94
  loc_AA4C05: ImpAdCallI2 Mid$(, , )
  loc_AA4C0A: FStStrNoPop var_104
  loc_AA4C0D: CI4Str
  loc_AA4C0E: EqI4
  loc_AA4C0F: FFreeStr var_90 = "": var_94 = ""
  loc_AA4C18: FFreeAd var_88 = "": var_98 = "": var_9C = "": var_B0 = ""
  loc_AA4C25: FFreeVar var_C0 = "": var_D0 = "": var_E0 = ""
  loc_AA4C30: BranchF loc_AA4D77
  loc_AA4C33: FLdPr Me
  loc_AA4C36: MemLdI2 global_72
  loc_AA4C39: CI4UI1
  loc_AA4C3A: CVarI4
  loc_AA4C3E: PopAdLdVar
  loc_AA4C3F: LitVarI4
  loc_AA4C47: PopAdLdVar
  loc_AA4C48: FLdPr Me
  loc_AA4C4B: VCallAd Control_ID_FlexCheque
  loc_AA4C4E: FStAdFunc var_88
  loc_AA4C51: FLdPr var_88
  loc_AA4C54: LateIdCallLdVar
  loc_AA4C5E: CStrVarTmp
  loc_AA4C5F: FStStrNoPop var_90
  loc_AA4C62: LitStr "Manual"
  loc_AA4C65: EqStr
  loc_AA4C67: FLdPr Me
  loc_AA4C6A: MemLdI2 global_72
  loc_AA4C6D: CI4UI1
  loc_AA4C6E: CVarI4
  loc_AA4C72: PopAdLdVar
  loc_AA4C73: LitVarI4
  loc_AA4C7B: PopAdLdVar
  loc_AA4C7C: FLdPr Me
  loc_AA4C7F: VCallAd Control_ID_FlexCheque
  loc_AA4C82: FStAdFunc var_98
  loc_AA4C85: FLdPr var_98
  loc_AA4C88: LateIdCallLdVar
  loc_AA4C92: CStrVarTmp
  loc_AA4C93: FStStrNoPop var_94
  loc_AA4C96: LitStr "0"
  loc_AA4C99: EqStr
  loc_AA4C9B: AndI4
  loc_AA4C9C: FLdPr Me
  loc_AA4C9F: MemLdI2 global_72
  loc_AA4CA2: CI4UI1
  loc_AA4CA3: CVarI4
  loc_AA4CA7: PopAdLdVar
  loc_AA4CA8: LitVarI4
  loc_AA4CB0: PopAdLdVar
  loc_AA4CB1: FLdPr Me
  loc_AA4CB4: VCallAd Control_ID_FlexCheque
  loc_AA4CB7: FStAdFunc var_9C
  loc_AA4CBA: FLdPr var_9C
  loc_AA4CBD: LateIdCallLdVar
  loc_AA4CC7: CStrVarTmp
  loc_AA4CC8: FStStrNoPop var_104
  loc_AA4CCB: LitStr vbNullString
  loc_AA4CCE: EqStr
  loc_AA4CD0: AndI4
  loc_AA4CD1: FLdPr Me
  loc_AA4CD4: MemLdI2 global_72
  loc_AA4CD7: CI4UI1
  loc_AA4CD8: CVarI4
  loc_AA4CDC: PopAdLdVar
  loc_AA4CDD: LitVarI4
  loc_AA4CE5: PopAdLdVar
  loc_AA4CE6: FLdPr Me
  loc_AA4CE9: VCallAd Control_ID_FlexCheque
  loc_AA4CEC: FStAdFunc var_B0
  loc_AA4CEF: FLdPr var_B0
  loc_AA4CF2: LateIdCallLdVar
  loc_AA4CFC: CStrVarTmp
  loc_AA4CFD: FStStrNoPop var_1F4
  loc_AA4D00: LitStr "0"
  loc_AA4D03: EqStr
  loc_AA4D05: AndI4
  loc_AA4D06: FFreeStr var_90 = "": var_94 = "": var_104 = ""
  loc_AA4D11: FFreeAd var_88 = "": var_98 = "": var_9C = ""
  loc_AA4D1C: FFreeVar var_C0 = "": var_D0 = "": var_E0 = ""
  loc_AA4D27: BranchF loc_AA4D77
  loc_AA4D2A: FLdPr Me
  loc_AA4D2D: MemLdStr global_76
  loc_AA4D30: LitI4 1
  loc_AA4D35: AddI4
  loc_AA4D36: FLdPr Me
  loc_AA4D39: MemStI4 global_76
  loc_AA4D3C: FLdPr Me
  loc_AA4D3F: MemLdI2 global_72
  loc_AA4D42: CI4UI1
  loc_AA4D43: CVarI4
  loc_AA4D47: PopAdLdVar
  loc_AA4D48: LitVarI4
  loc_AA4D50: PopAdLdVar
  loc_AA4D51: FLdPr Me
  loc_AA4D54: MemLdStr global_76
  loc_AA4D57: CStrI4
  loc_AA4D59: CVarStr var_C0
  loc_AA4D5C: PopAdLdVar
  loc_AA4D5D: FLdPr Me
  loc_AA4D60: VCallAd Control_ID_FlexCheque
  loc_AA4D63: FStAdFunc var_88
  loc_AA4D66: FLdPr var_88
  loc_AA4D69: LateIdCallSt
  loc_AA4D71: FFree1Ad var_88
  loc_AA4D74: FFree1Var var_C0 = ""
  loc_AA4D77: FLdPr Me
  loc_AA4D7A: MemLdRfVar from_stack_1.global_72
  loc_AA4D7D: NextI2 var_10A, loc_AA4A5D
  loc_AA4D82: FLdPr Me
  loc_AA4D85: MemLdRfVar from_stack_1.global_56
  loc_AA4D88: NewIfNullPr clsbanco
  loc_AA4D8B: Call clsbanco.MoveSiguiente()
  loc_AA4D90: Branch loc_AA49C6
  loc_AA4D93: ExitProcHresult
End Function
