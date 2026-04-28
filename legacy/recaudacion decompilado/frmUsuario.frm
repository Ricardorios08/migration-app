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
  ClientLeft = 48
  ClientTop = 432
  ClientWidth = 13860
  ClientHeight = 8976
  Begin VB.Frame fraABMS
    Left = 120
    Top = 4200
    Width = 10695
    Height = 4335
    TabIndex = 1
    Begin VB.CheckBox AcreUsuaChk
      Left = 2040
      Top = 2160
      Width = 255
      Height = 345
      Enabled = 0   'False
      TabIndex = 13
      DataField = "AcreUsua"
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
    Begin VB.CheckBox InhaUsuaChk
      Left = 2040
      Top = 1800
      Width = 255
      Height = 345
      Enabled = 0   'False
      TabIndex = 11
      DataField = "InhaUsua"
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
    Begin VB.CommandButton ResetearClaveCmd
      Caption = "Resetear clave"
      Left = 2040
      Top = 2520
      Width = 1815
      Height = 495
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
    End
    Begin VB.TextBox CodiUsuaTxt
      ForeColor = &HFF0000&
      Left = 2040
      Top = 360
      Width = 1695
      Height = 420
      TabIndex = 3
      MaxLength = 8
      DataField = "CodiUsua"
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
    Begin MSMask.MaskEdBox CucuPersMsk
      Left = 2040
      Top = 960
      Width = 1695
      Height = 420
      TabIndex = 5
      OleObjectBlob = "frmUsuario.frx":08CA
      DataField = "CucuPers"
    End
    Begin MSMask.MaskEdBox CodiEnreMsk
      Left = 2040
      Top = 1440
      Width = 615
      Height = 360
      TabIndex = 8
      OleObjectBlob = "frmUsuario.frx":0968
      DataField = "CodiEnre"
    End
    Begin VB.Label Label4
      Caption = "Ente Recaud.:"
      Left = 480
      Top = 1440
      Width = 1530
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
    Begin VB.Label DetaEnreLbl
      Left = 2760
      Top = 1440
      Width = 6015
      Height = 360
      TabIndex = 9
      BorderStyle = 1 'Fixed Single
      DataField = "DetaEnre"
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
      Caption = "Acceso remoto:"
      Left = 240
      Top = 2160
      Width = 1665
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
    Begin VB.Label Label2
      Caption = "Inhabilitado:"
      Left = 615
      Top = 1800
      Width = 1290
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
    Begin VB.Label Label10
      Caption = "CUIT/CUIL:"
      Left = 675
      Top = 960
      Width = 1230
      Height = 300
      TabIndex = 4
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
      Left = 3840
      Top = 960
      Width = 6015
      Height = 420
      TabIndex = 6
      BorderStyle = 1 'Fixed Single
      DataField = "DetaPers"
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
    Begin VB.Label Label1
      Caption = "Usuario:"
      Left = 1020
      Top = 360
      Width = 885
      Height = 300
      TabIndex = 2
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
    Top = 840
    Width = 10695
    Height = 3255
    TabIndex = 0
    OleObjectBlob = "frmUsuario.frx":09F6
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmUsuario.frx":0C66
    Left = 10920
    Top = 840
  End
  Begin MSComctlLib.Toolbar tlbABMS
    Left = 0
    Top = 0
    Width = 13860
    Height = 528
    TabIndex = 15
    OleObjectBlob = "frmUsuario.frx":87E4
    Begin VB.CommandButton cmdCancelar
      Left = 1750
      Top = 30
      Width = 585
      Height = 555
      TabIndex = 16
      TabStop = 0   'False
      Picture = "frmUsuario.frx":8D40
      ToolTipText = "F4 - Cancelar Cambios"
      Style = 1
      CausesValidation = 0   'False
    End
  End
End

Attribute VB_Name = "frmUsuario"


Private Sub ResetearClaveCmd_Click() 'ABA25C
  'Data Table: 46A224
  loc_ABA180: FLdRfVar var_B0
  loc_ABA183: FLdRfVar var_A0
  loc_ABA186: LitVarStr var_9C, "CodiUsua"
  loc_ABA18B: PopAdLdVar
  loc_ABA18C: FLdRfVar var_8C
  loc_ABA18F: FLdRfVar var_88
  loc_ABA192: FLdPr Me
  loc_ABA195: MemLdRfVar from_stack_1.global_52
  loc_ABA198: NewIfNullPr clsusuario
  loc_ABA19B: from_stack_1v = clsusuario.RsFrmGet()
  loc_ABA1A0: FLdPr var_88
  loc_ABA1A3:  = Me.Fields
  loc_ABA1A8: FLdPr var_8C
  loc_ABA1AB: from_stack_2 = Me.Item(from_stack_1)
  loc_ABA1B0: FLdPr var_A0
  loc_ABA1B3:  = Me.Value
  loc_ABA1B8: FLdRfVar var_B0
  loc_ABA1BB: CStrVarTmp
  loc_ABA1BC: FStStrNoPop var_B4
  loc_ABA1BF: FLdPr Me
  loc_ABA1C2: MemLdRfVar from_stack_1.global_52
  loc_ABA1C5: NewIfNullPr clsusuario
  loc_ABA1C8: Call clsusuario.ResetearClave(from_stack_1v)
  loc_ABA1CD: FFree1Str var_B4
  loc_ABA1D0: FFreeAd var_88 = "": var_8C = ""
  loc_ABA1D9: FFree1Var var_B0 = ""
  loc_ABA1DC: LitStr "Se estableció la clave '"
  loc_ABA1DF: LitStr "123456"
  loc_ABA1E2: ConcatStr
  loc_ABA1E3: FStStrNoPop var_B4
  loc_ABA1E6: LitStr "' para el usuario '"
  loc_ABA1E9: ConcatStr
  loc_ABA1EA: CVarStr var_C4
  loc_ABA1ED: FLdRfVar var_B0
  loc_ABA1F0: FLdRfVar var_A0
  loc_ABA1F3: LitVarStr var_9C, "CodiUsua"
  loc_ABA1F8: PopAdLdVar
  loc_ABA1F9: FLdRfVar var_8C
  loc_ABA1FC: FLdRfVar var_88
  loc_ABA1FF: FLdPr Me
  loc_ABA202: MemLdRfVar from_stack_1.global_52
  loc_ABA205: NewIfNullPr clsusuario
  loc_ABA208: from_stack_1v = clsusuario.RsFrmGet()
  loc_ABA20D: FLdPr var_88
  loc_ABA210:  = Me.Fields
  loc_ABA215: FLdPr var_8C
  loc_ABA218: from_stack_2 = Me.Item(from_stack_1)
  loc_ABA21D: FLdPr var_A0
  loc_ABA220:  = Me.Value
  loc_ABA225: FLdRfVar var_B0
  loc_ABA228: ConcatVar var_D4
  loc_ABA22C: LitVarStr var_E4, "', y debe ser cambiada por el mismo para poder ingresar al sistema."
  loc_ABA231: ConcatVar var_F4
  loc_ABA235: CStrVarVal var_F8
  loc_ABA239: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_ABA23E: FFreeStr var_B4 = ""
  loc_ABA245: FFreeAd var_88 = "": var_8C = ""
  loc_ABA24E: FFreeVar var_C4 = "": var_B0 = "": var_D4 = ""
  loc_ABA259: ExitProcHresult
  loc_ABA25A: ImpAdLdPr unk_464E25
End Sub

Private Sub CodiUsuaTxt_GotFocus() '9BF360
  'Data Table: 46A224
  loc_9BF34C: FLdPr Me
  loc_9BF34F: VCallAd Control_ID_CodiUsuaTxt
  loc_9BF352: CVarAd
  loc_9BF356: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF35B: FFree1Var var_94 = ""
  loc_9BF35E: ExitProcHresult
End Sub

Private Sub CodiUsuaTxt_Validate(Cancel As Boolean) 'A85B40
  'Data Table: 46A224
  loc_A85AB4: FLdRfVar var_8A
  loc_A85AB7: FLdPr Me
  loc_A85ABA: VCallAd Control_ID_CodiUsuaTxt
  loc_A85ABD: FStAdFunc var_88
  loc_A85AC0: FLdPr var_88
  loc_A85AC3:  = Me.Enabled
  loc_A85AC8: FLdI2 var_8A
  loc_A85ACB: FFree1Ad var_88
  loc_A85ACE: BranchF loc_A85B3E
  loc_A85AD1: FLdRfVar var_94
  loc_A85AD4: FLdRfVar var_90
  loc_A85AD7: FLdPr Me
  loc_A85ADA: VCallAd Control_ID_CodiUsuaTxt
  loc_A85ADD: FStAdFunc var_88
  loc_A85AE0: FLdPr var_88
  loc_A85AE3:  = Me.Text
  loc_A85AE8: ILdRf var_90
  loc_A85AEB: FLdPr Me
  loc_A85AEE: MemLdRfVar from_stack_1.global_52
  loc_A85AF1: NewIfNullPr clsusuario
  loc_A85AF4: from_stack_2v = clsusuario.ValidaClave(from_stack_1v)
  loc_A85AF9: ILdRf var_94
  loc_A85AFC: FLdPr Me
  loc_A85AFF: MemStStrCopy
  loc_A85B03: FFreeStr var_90 = ""
  loc_A85B0A: FFree1Ad var_88
  loc_A85B0D: FLdPr Me
  loc_A85B10: MemLdStr global_60
  loc_A85B13: LitStr vbNullString
  loc_A85B16: NeStr
  loc_A85B18: BranchF loc_A85B3E
  loc_A85B1B: FLdPr Me
  loc_A85B1E: MemLdStr global_60
  loc_A85B21: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A85B26: FLdPr Me
  loc_A85B29: VCallAd Control_ID_CodiUsuaTxt
  loc_A85B2C: CVarAd
  loc_A85B30: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A85B35: FFree1Var var_A4 = ""
  loc_A85B38: LitI2_Byte &HFF
  loc_A85B3A: IStI2 Cancel
  loc_A85B3D: ExitProcHresult
  loc_A85B3E: ExitProcHresult
End Sub

Private Sub cmdCancelar_Click() 'AD76C8
  'Data Table: 46A224
  loc_AD7590: LitI2_Byte 0
  loc_AD7592: CUI1I2
  loc_AD7594: FLdPr Me
  loc_AD7597: MemStUI1
  loc_AD759B: LitI2_Byte 0
  loc_AD759D: ILdRf Me
  loc_AD75A0: CastAd
  loc_AD75A3: FStAdFunc var_88
  loc_AD75A6: FLdRfVar var_88
  loc_AD75A9: ImpAdCallFPR4 Proc_272_3_B44A88(, )
  loc_AD75AE: FFree1Ad var_88
  loc_AD75B1: LitI4 0
  loc_AD75B6: LitI4 0
  loc_AD75BB: FLdRfVar var_8C
  loc_AD75BE: Redim
  loc_AD75C8: FLdPr Me
  loc_AD75CB: VCallAd Control_ID_dgdABMS
  loc_AD75CE: CVarAd
  loc_AD75D2: ParmAry1St
  loc_AD75D8: FLdRfVar var_8C
  loc_AD75DB: ImpAdCallFPR4 Proc_272_6_A781DC()
  loc_AD75E0: FLdRfVar var_8C
  loc_AD75E3: Erase
  loc_AD75E4: FLdPr Me
  loc_AD75E7: MemLdRfVar from_stack_1.global_52
  loc_AD75EA: NewIfNullAd
  loc_AD75ED: FStAd var_A0 
  loc_AD75F1: FLdRfVar var_A0
  loc_AD75F4: CVarRef
  loc_AD75F9: ILdRf Me
  loc_AD75FC: CastAd
  loc_AD75FF: FStAdFunc var_88
  loc_AD7602: FLdRfVar var_88
  loc_AD7605: ImpAdCallFPR4 Proc_272_14_A8F45C(, )
  loc_AD760A: ILdRf var_A0
  loc_AD760D: CastAd
  loc_AD7610: FLdPr Me
  loc_AD7613: MemStAdFunc
  loc_AD7617: FFreeAd var_88 = ""
  loc_AD761E: FLdRfVar var_B4
  loc_AD7621: FLdPr Me
  loc_AD7624: MemLdRfVar from_stack_1.global_52
  loc_AD7627: NewIfNullPr clsusuario
  loc_AD762A: from_stack_1 = clsusuario.RecordCount
  loc_AD762F: ILdRf var_B4
  loc_AD7632: LitI4 0
  loc_AD7637: EqI4
  loc_AD7638: BranchF loc_AD7652
  loc_AD763B: ILdRf Me
  loc_AD763E: CastAd
  loc_AD7641: FStAdFunc var_88
  loc_AD7644: FLdRfVar var_88
  loc_AD7647: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_AD764C: FFree1Ad var_88
  loc_AD764F: Branch loc_AD76B0
  loc_AD7652: LitI4 0
  loc_AD7657: LitI4 1
  loc_AD765C: FLdRfVar var_8C
  loc_AD765F: Redim
  loc_AD7669: FLdPr Me
  loc_AD766C: MemLdRfVar from_stack_1.global_52
  loc_AD766F: NewIfNullAd
  loc_AD7672: FStAd var_88 
  loc_AD7676: FLdRfVar var_88
  loc_AD7679: CVarRef
  loc_AD767E: ParmAry1St
  loc_AD7684: FLdPr Me
  loc_AD7687: VCallAd Control_ID_dgdABMS
  loc_AD768A: CVarAd
  loc_AD768E: ParmAry1St
  loc_AD7694: FLdRfVar var_8C
  loc_AD7697: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_AD769C: ILdRf var_88
  loc_AD769F: CastAd
  loc_AD76A2: FLdPr Me
  loc_AD76A5: MemStAdFunc
  loc_AD76A9: FLdRfVar var_8C
  loc_AD76AC: Erase
  loc_AD76AD: FFree1Ad var_88
  loc_AD76B0: ILdRf Me
  loc_AD76B3: CastAd
  loc_AD76B6: FStAdFunc var_88
  loc_AD76B9: FLdRfVar var_88
  loc_AD76BC: ImpAdCallFPR4 Proc_272_16_AA0A60()
  loc_AD76C1: FFree1Ad var_88
  loc_AD76C4: ExitProcHresult
  loc_AD76C5: FFree1Str arg_5404
End Sub

Private Sub CucuPersMsk_UnknownEvent_0 '9BF3A8
  'Data Table: 46A224
  loc_9BF394: FLdPr Me
  loc_9BF397: VCallAd Control_ID_CucuPersMsk
  loc_9BF39A: CVarAd
  loc_9BF39E: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF3A3: FFree1Var var_94 = ""
  loc_9BF3A6: ExitProcHresult
End Sub

Private Function CucuPersMsk_UnknownEvent_8(arg_C) 'A8D190
  'Data Table: 46A224
  loc_A8D0F4: FLdPr Me
  loc_A8D0F7: VCallAd Control_ID_CucuPersMsk
  loc_A8D0FA: FStAdFunc var_88
  loc_A8D0FD: FLdPr var_88
  loc_A8D100: LateIdLdVar var_98 DispID_13 -32767
  loc_A8D107: CBoolVar
  loc_A8D109: FFree1Ad var_88
  loc_A8D10C: FFree1Var var_98 = ""
  loc_A8D10F: BranchF loc_A8D18D
  loc_A8D112: FLdPr Me
  loc_A8D115: VCallAd Control_ID_CucuPersMsk
  loc_A8D118: FStAdFunc var_88
  loc_A8D11B: FLdPr var_88
  loc_A8D11E: LateIdLdVar var_98 DispID_22 0
  loc_A8D125: CStrVarTmp
  loc_A8D126: FStStrNoPop var_9C
  loc_A8D129: ImpAdCallI2 Proc_18_66_A532F4()
  loc_A8D12E: FStStrNoPop var_A0
  loc_A8D131: FLdPr Me
  loc_A8D134: MemStStrCopy
  loc_A8D138: FFreeStr var_9C = ""
  loc_A8D13F: FFree1Ad var_88
  loc_A8D142: FFree1Var var_98 = ""
  loc_A8D145: FLdPr Me
  loc_A8D148: MemLdStr global_60
  loc_A8D14B: LitStr vbNullString
  loc_A8D14E: NeStr
  loc_A8D150: BranchF loc_A8D18D
  loc_A8D153: FLdPr Me
  loc_A8D156: MemLdStr global_60
  loc_A8D159: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_A8D15E: FLdPr Me
  loc_A8D161: VCallAd Control_ID_CucuPersMsk
  loc_A8D164: CVarAd
  loc_A8D168: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_A8D16D: FFree1Var var_98 = ""
  loc_A8D170: LitStr vbNullString
  loc_A8D173: FLdPr Me
  loc_A8D176: VCallAd Control_ID_DetaPersLbl
  loc_A8D179: FStAdFunc var_88
  loc_A8D17C: FLdPr var_88
  loc_A8D17F: Me.Caption = from_stack_1
  loc_A8D184: FFree1Ad var_88
  loc_A8D187: LitI2_Byte &HFF
  loc_A8D189: IStI2 arg_C
  loc_A8D18C: ExitProcHresult
  loc_A8D18D: ExitProcHresult
  loc_A8D18E: LeCy
End Function

Private Sub CucuPersMsk_KeyPress(KeyAscii As Integer) '9AF214
  'Data Table: 46A224
  loc_9AF210: ExitProcHresult
  loc_9AF211: FLdZeroAd arg_2A00
End Sub

Private Sub tlbABMS_ButtonClick(Button As Button) 'BA3E80
  'Data Table: 46A224
  loc_BA38B0: ILdRf Button
  loc_BA38B3: FStAd var_88 
  loc_BA38B7: FLdRfVar var_8C
  loc_BA38BA: FLdPr var_88
  loc_BA38BD:  = Me.Key
  loc_BA38C2: FLdZeroAd var_8C
  loc_BA38C5: FStStr var_90
  loc_BA38C8: ILdRf var_90
  loc_BA38CB: LitStr "btnCrear"
  loc_BA38CE: EqStr
  loc_BA38D0: BranchF loc_BA3964
  loc_BA38D3: LitI2_Byte 1
  loc_BA38D5: CUI1I2
  loc_BA38D7: FLdPr Me
  loc_BA38DA: MemStUI1
  loc_BA38DE: ILdRf Me
  loc_BA38E1: CastAd
  loc_BA38E4: FStAdFunc var_94
  loc_BA38E7: FLdRfVar var_94
  loc_BA38EA: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_BA38EF: FFree1Ad var_94
  loc_BA38F2: LitI4 0
  loc_BA38F7: LitI4 0
  loc_BA38FC: FLdRfVar var_98
  loc_BA38FF: Redim
  loc_BA3909: FLdPr Me
  loc_BA390C: VCallAd Control_ID_dgdABMS
  loc_BA390F: CVarAd
  loc_BA3913: ParmAry1St
  loc_BA3919: FLdRfVar var_98
  loc_BA391C: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BA3921: FLdRfVar var_98
  loc_BA3924: Erase
  loc_BA3925: ILdRf Me
  loc_BA3928: CastAd
  loc_BA392B: FStAdFunc var_94
  loc_BA392E: FLdRfVar var_94
  loc_BA3931: ImpAdCallFPR4 Proc_272_18_AE5BF0()
  loc_BA3936: FFree1Ad var_94
  loc_BA3939: ILdRf Me
  loc_BA393C: CastAd
  loc_BA393F: FStAdFunc var_94
  loc_BA3942: FLdRfVar var_94
  loc_BA3945: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_BA394A: FFree1Ad var_94
  loc_BA394D: ILdRf Me
  loc_BA3950: CastAd
  loc_BA3953: FStAdFunc var_94
  loc_BA3956: FLdRfVar var_94
  loc_BA3959: ImpAdCallFPR4 Proc_272_17_A8BE98()
  loc_BA395E: FFree1Ad var_94
  loc_BA3961: Branch loc_BA3E7E
  loc_BA3964: ILdRf var_90
  loc_BA3967: LitStr "btnModificar"
  loc_BA396A: EqStr
  loc_BA396C: BranchF loc_BA3A47
  loc_BA396F: FLdRfVar var_AC
  loc_BA3972: FLdPr Me
  loc_BA3975: MemLdRfVar from_stack_1.global_52
  loc_BA3978: NewIfNullPr clsusuario
  loc_BA397B: from_stack_1 = clsusuario.RecordCount
  loc_BA3980: ILdRf var_AC
  loc_BA3983: LitI4 0
  loc_BA3988: GtI4
  loc_BA3989: BranchF loc_BA3A3C
  loc_BA398C: LitI2_Byte 2
  loc_BA398E: CUI1I2
  loc_BA3990: FLdPr Me
  loc_BA3993: MemStUI1
  loc_BA3997: ILdRf Me
  loc_BA399A: CastAd
  loc_BA399D: FStAdFunc var_94
  loc_BA39A0: FLdRfVar var_94
  loc_BA39A3: ImpAdCallFPR4 Proc_272_4_B2D678()
  loc_BA39A8: FFree1Ad var_94
  loc_BA39AB: LitI4 0
  loc_BA39B0: LitI4 0
  loc_BA39B5: FLdRfVar var_98
  loc_BA39B8: Redim
  loc_BA39C2: FLdPr Me
  loc_BA39C5: VCallAd Control_ID_dgdABMS
  loc_BA39C8: CVarAd
  loc_BA39CC: ParmAry1St
  loc_BA39D2: FLdRfVar var_98
  loc_BA39D5: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BA39DA: FLdRfVar var_98
  loc_BA39DD: Erase
  loc_BA39DE: ILdRf Me
  loc_BA39E1: CastAd
  loc_BA39E4: FStAdFunc var_94
  loc_BA39E7: FLdRfVar var_94
  loc_BA39EA: ImpAdCallFPR4 Proc_272_15_A6AD3C()
  loc_BA39EF: FFree1Ad var_94
  loc_BA39F2: ILdRf Me
  loc_BA39F5: CastAd
  loc_BA39F8: FStAdFunc var_94
  loc_BA39FB: FLdRfVar var_94
  loc_BA39FE: ImpAdCallFPR4 Proc_272_17_A8BE98()
  loc_BA3A03: FFree1Ad var_94
  loc_BA3A06: LitI4 0
  loc_BA3A0B: LitI4 0
  loc_BA3A10: FLdRfVar var_98
  loc_BA3A13: Redim
  loc_BA3A1D: FLdPr Me
  loc_BA3A20: VCallAd Control_ID_CodiUsuaTxt
  loc_BA3A23: CVarAd
  loc_BA3A27: ParmAry1St
  loc_BA3A2D: FLdRfVar var_98
  loc_BA3A30: ImpAdCallFPR4 Proc_272_7_9FC518()
  loc_BA3A35: FLdRfVar var_98
  loc_BA3A38: Erase
  loc_BA3A39: Branch loc_BA3A44
  loc_BA3A3C: LitStr "No existen registros."
  loc_BA3A3F: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_BA3A44: Branch loc_BA3E7E
  loc_BA3A47: ILdRf var_90
  loc_BA3A4A: LitStr "btnEliminar"
  loc_BA3A4D: EqStr
  loc_BA3A4F: BranchF loc_BA3B51
  loc_BA3A52: FLdRfVar var_AC
  loc_BA3A55: FLdPr Me
  loc_BA3A58: MemLdRfVar from_stack_1.global_52
  loc_BA3A5B: NewIfNullPr clsusuario
  loc_BA3A5E: from_stack_1 = clsusuario.RecordCount
  loc_BA3A63: ILdRf var_AC
  loc_BA3A66: LitI4 0
  loc_BA3A6B: GtI4
  loc_BA3A6C: BranchF loc_BA3B4E
  loc_BA3A6F: FLdRfVar var_A8
  loc_BA3A72: FLdRfVar var_C4
  loc_BA3A75: LitVarStr var_C0, "CodiUsua"
  loc_BA3A7A: PopAdLdVar
  loc_BA3A7B: FLdRfVar var_B0
  loc_BA3A7E: FLdRfVar var_94
  loc_BA3A81: FLdPr Me
  loc_BA3A84: MemLdRfVar from_stack_1.global_52
  loc_BA3A87: NewIfNullPr clsusuario
  loc_BA3A8A: from_stack_1v = clsusuario.RsFrmGet()
  loc_BA3A8F: FLdPr var_94
  loc_BA3A92:  = Me.Fields
  loc_BA3A97: FLdPr var_B0
  loc_BA3A9A: from_stack_2 = Me.Item(from_stack_1)
  loc_BA3A9F: FLdPr var_C4
  loc_BA3AA2:  = Me.Value
  loc_BA3AA7: LitVar_Missing var_164
  loc_BA3AAA: LitVar_Missing var_144
  loc_BA3AAD: LitVar_Missing var_124
  loc_BA3AB0: LitI4 4
  loc_BA3AB5: LitVarStr var_D4, "¿Desea dar de baja al usuario '"
  loc_BA3ABA: FLdRfVar var_A8
  loc_BA3ABD: ConcatVar var_E4
  loc_BA3AC1: LitVarStr var_F4, "'?"
  loc_BA3AC6: ConcatVar var_104
  loc_BA3ACA: ImpAdCallI2 MsgBox(, , , , )
  loc_BA3ACF: LitI4 6
  loc_BA3AD4: EqI4
  loc_BA3AD5: FFreeAd var_94 = "": var_B0 = ""
  loc_BA3ADE: FFreeVar var_A8 = "": var_E4 = "": var_104 = "": var_124 = "": var_144 = ""
  loc_BA3AED: BranchF loc_BA3B4E
  loc_BA3AF0: FLdRfVar var_A8
  loc_BA3AF3: FLdRfVar var_C4
  loc_BA3AF6: LitVarStr var_C0, "CodiUsua"
  loc_BA3AFB: PopAdLdVar
  loc_BA3AFC: FLdRfVar var_B0
  loc_BA3AFF: FLdRfVar var_94
  loc_BA3B02: FLdPr Me
  loc_BA3B05: MemLdRfVar from_stack_1.global_52
  loc_BA3B08: NewIfNullPr clsusuario
  loc_BA3B0B: from_stack_1v = clsusuario.RsFrmGet()
  loc_BA3B10: FLdPr var_94
  loc_BA3B13:  = Me.Fields
  loc_BA3B18: FLdPr var_B0
  loc_BA3B1B: from_stack_2 = Me.Item(from_stack_1)
  loc_BA3B20: FLdPr var_C4
  loc_BA3B23:  = Me.Value
  loc_BA3B28: LitI2_Byte &HFF
  loc_BA3B2A: FLdRfVar var_A8
  loc_BA3B2D: CStrVarTmp
  loc_BA3B2E: FStStrNoPop var_8C
  loc_BA3B31: FLdPr Me
  loc_BA3B34: MemLdRfVar from_stack_1.global_52
  loc_BA3B37: NewIfNullPr clsusuario
  loc_BA3B3A: Call clsusuario.Anular(from_stack_1v, from_stack_2v)
  loc_BA3B3F: FFree1Str var_8C
  loc_BA3B42: FFreeAd var_94 = "": var_B0 = ""
  loc_BA3B4B: FFree1Var var_A8 = ""
  loc_BA3B4E: Branch loc_BA3E7E
  loc_BA3B51: ILdRf var_90
  loc_BA3B54: LitStr "btnGuardar"
  loc_BA3B57: EqStr
  loc_BA3B59: BranchF loc_BA3D4E
  loc_BA3B5C: LitStr vbNullString
  loc_BA3B5F: FLdPr Me
  loc_BA3B62: MemStStrCopy
  loc_BA3B66: LitI2_Byte 0
  loc_BA3B68: PopTmpLdAd2 var_166
  loc_BA3B6B: Call CodiUsuaTxt_Validate(from_stack_1v)
  loc_BA3B70: FLdPr Me
  loc_BA3B73: MemLdStr global_60
  loc_BA3B76: LitStr vbNullString
  loc_BA3B79: NeStr
  loc_BA3B7B: BranchF loc_BA3B7F
  loc_BA3B7E: ExitProcHresult
  loc_BA3B7F: LitI2_Byte 0
  loc_BA3B81: PopTmpLdAd2 var_166
  loc_BA3B84: from_stack_2v = CucuPersMsk_UnknownEvent_8(from_stack_1v)
  loc_BA3B89: FLdPr Me
  loc_BA3B8C: MemLdStr global_60
  loc_BA3B8F: LitStr vbNullString
  loc_BA3B92: NeStr
  loc_BA3B94: BranchF loc_BA3B98
  loc_BA3B97: ExitProcHresult
  loc_BA3B98: FLdPr Me
  loc_BA3B9B: MemLdUI1 global_56
  loc_BA3B9F: FStUI1 var_168
  loc_BA3BA3: FLdUI1
  loc_BA3BA7: LitI2_Byte 1
  loc_BA3BA9: CUI1I2
  loc_BA3BAB: EqI2
  loc_BA3BAC: BranchF loc_BA3C5C
  loc_BA3BAF: FLdRfVar var_8C
  loc_BA3BB2: FLdPr Me
  loc_BA3BB5: VCallAd Control_ID_CodiUsuaTxt
  loc_BA3BB8: FStAdFunc var_94
  loc_BA3BBB: FLdPr var_94
  loc_BA3BBE:  = Me.Text
  loc_BA3BC3: ILdRf var_8C
  loc_BA3BC6: ImpAdCallI2 Trim$()
  loc_BA3BCB: FStStr var_17C
  loc_BA3BCE: FLdPr Me
  loc_BA3BD1: VCallAd Control_ID_CucuPersMsk
  loc_BA3BD4: FStAdFunc var_B0
  loc_BA3BD7: FLdPr var_B0
  loc_BA3BDA: LateIdLdVar var_A8 DispID_22 0
  loc_BA3BE1: PopAd
  loc_BA3BE3: FLdPr Me
  loc_BA3BE6: VCallAd Control_ID_CodiEnreMsk
  loc_BA3BE9: FStAdFunc var_C4
  loc_BA3BEC: FLdPr var_C4
  loc_BA3BEF: LateIdLdVar var_E4 DispID_22 0
  loc_BA3BF6: PopAd
  loc_BA3BF8: FLdRfVar var_166
  loc_BA3BFB: FLdPr Me
  loc_BA3BFE: VCallAd Control_ID_AcreUsuaChk
  loc_BA3C01: FStAdFunc var_16C
  loc_BA3C04: FLdPr var_16C
  loc_BA3C07:  = Me.Value
  loc_BA3C0C: LitI2_Byte &HFF
  loc_BA3C0E: FLdI2 var_166
  loc_BA3C11: CUI1I2
  loc_BA3C13: FLdRfVar var_E4
  loc_BA3C16: CStrVarTmp
  loc_BA3C17: FStStrNoPop var_178
  loc_BA3C1A: CI2Str
  loc_BA3C1C: LitStr "123456"
  loc_BA3C1F: FLdRfVar var_A8
  loc_BA3C22: CStrVarTmp
  loc_BA3C23: FStStrNoPop var_174
  loc_BA3C26: FLdZeroAd var_17C
  loc_BA3C29: FStStrNoPop var_170
  loc_BA3C2C: FLdPr Me
  loc_BA3C2F: MemLdRfVar from_stack_1.global_52
  loc_BA3C32: NewIfNullPr clsusuario
  loc_BA3C35: Call clsusuario.Agregar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_BA3C3A: FFreeStr var_8C = "": var_170 = "": var_174 = "": var_178 = ""
  loc_BA3C47: FFreeAd var_94 = "": var_B0 = "": var_C4 = ""
  loc_BA3C52: FFreeVar var_A8 = ""
  loc_BA3C59: Branch loc_BA3D46
  loc_BA3C5C: FLdUI1
  loc_BA3C60: LitI2_Byte 2
  loc_BA3C62: CUI1I2
  loc_BA3C64: EqI2
  loc_BA3C65: BranchF loc_BA3D46
  loc_BA3C68: FLdRfVar var_104
  loc_BA3C6B: FLdRfVar var_C4
  loc_BA3C6E: LitVarStr var_C0, "CodiUsua"
  loc_BA3C73: PopAdLdVar
  loc_BA3C74: FLdRfVar var_B0
  loc_BA3C77: FLdRfVar var_94
  loc_BA3C7A: FLdPr Me
  loc_BA3C7D: MemLdRfVar from_stack_1.global_52
  loc_BA3C80: NewIfNullPr clsusuario
  loc_BA3C83: from_stack_1v = clsusuario.RsFrmGet()
  loc_BA3C88: FLdPr var_94
  loc_BA3C8B:  = Me.Fields
  loc_BA3C90: FLdPr var_B0
  loc_BA3C93: from_stack_2 = Me.Item(from_stack_1)
  loc_BA3C98: FLdPr var_C4
  loc_BA3C9B:  = Me.Value
  loc_BA3CA0: FLdPr Me
  loc_BA3CA3: VCallAd Control_ID_CucuPersMsk
  loc_BA3CA6: FStAdFunc var_16C
  loc_BA3CA9: FLdPr var_16C
  loc_BA3CAC: LateIdLdVar var_A8 DispID_22 0
  loc_BA3CB3: PopAd
  loc_BA3CB5: FLdRfVar var_166
  loc_BA3CB8: FLdPr Me
  loc_BA3CBB: VCallAd Control_ID_InhaUsuaChk
  loc_BA3CBE: FStAdFunc var_180
  loc_BA3CC1: FLdPr var_180
  loc_BA3CC4:  = Me.Value
  loc_BA3CC9: FLdRfVar var_186
  loc_BA3CCC: FLdPr Me
  loc_BA3CCF: VCallAd Control_ID_AcreUsuaChk
  loc_BA3CD2: FStAdFunc var_184
  loc_BA3CD5: FLdPr var_184
  loc_BA3CD8:  = Me.Value
  loc_BA3CDD: FLdPr Me
  loc_BA3CE0: VCallAd Control_ID_CodiEnreMsk
  loc_BA3CE3: FStAdFunc var_18C
  loc_BA3CE6: FLdPr var_18C
  loc_BA3CE9: LateIdLdVar var_E4 DispID_22 0
  loc_BA3CF0: PopAd
  loc_BA3CF2: LitI2_Byte &HFF
  loc_BA3CF4: FLdRfVar var_E4
  loc_BA3CF7: CStrVarTmp
  loc_BA3CF8: FStStrNoPop var_174
  loc_BA3CFB: CI2Str
  loc_BA3CFD: FLdI2 var_186
  loc_BA3D00: CUI1I2
  loc_BA3D02: FLdI2 var_166
  loc_BA3D05: CUI1I2
  loc_BA3D07: FLdRfVar var_A8
  loc_BA3D0A: CStrVarTmp
  loc_BA3D0B: FStStrNoPop var_170
  loc_BA3D0E: FLdRfVar var_104
  loc_BA3D11: CStrVarTmp
  loc_BA3D12: FStStrNoPop var_8C
  loc_BA3D15: FLdPr Me
  loc_BA3D18: MemLdRfVar from_stack_1.global_52
  loc_BA3D1B: NewIfNullPr clsusuario
  loc_BA3D1E: Call clsusuario.Modificar(from_stack_1v, from_stack_2v, from_stack_3v, from_stack_4v, from_stack_5v, from_stack_6v)
  loc_BA3D23: FFreeStr var_8C = "": var_170 = ""
  loc_BA3D2C: FFreeAd var_94 = "": var_B0 = "": var_16C = "": var_180 = "": var_184 = "": var_18C = ""
  loc_BA3D3D: FFreeVar var_A8 = "": var_E4 = ""
  loc_BA3D46: Call cmdCancelar_Click()
  loc_BA3D4B: Branch loc_BA3E7E
  loc_BA3D4E: ILdRf var_90
  loc_BA3D51: LitStr "btnCancelar"
  loc_BA3D54: EqStr
  loc_BA3D56: BranchF loc_BA3D61
  loc_BA3D59: Call cmdCancelar_Click()
  loc_BA3D5E: Branch loc_BA3E7E
  loc_BA3D61: ILdRf var_90
  loc_BA3D64: LitStr "btnPrimero"
  loc_BA3D67: EqStr
  loc_BA3D69: BranchF loc_BA3D7D
  loc_BA3D6C: FLdPr Me
  loc_BA3D6F: MemLdRfVar from_stack_1.global_52
  loc_BA3D72: NewIfNullPr clsusuario
  loc_BA3D75: Call clsusuario.MoveFirst()
  loc_BA3D7A: Branch loc_BA3E7E
  loc_BA3D7D: ILdRf var_90
  loc_BA3D80: LitStr "btnAnterior"
  loc_BA3D83: EqStr
  loc_BA3D85: BranchF loc_BA3D99
  loc_BA3D88: FLdPr Me
  loc_BA3D8B: MemLdRfVar from_stack_1.global_52
  loc_BA3D8E: NewIfNullPr clsusuario
  loc_BA3D91: Call clsusuario.MovePrevious()
  loc_BA3D96: Branch loc_BA3E7E
  loc_BA3D99: ILdRf var_90
  loc_BA3D9C: LitStr "btnSiguiente"
  loc_BA3D9F: EqStr
  loc_BA3DA1: BranchF loc_BA3DB5
  loc_BA3DA4: FLdPr Me
  loc_BA3DA7: MemLdRfVar from_stack_1.global_52
  loc_BA3DAA: NewIfNullPr clsusuario
  loc_BA3DAD: Call clsusuario.MoveNext()
  loc_BA3DB2: Branch loc_BA3E7E
  loc_BA3DB5: ILdRf var_90
  loc_BA3DB8: LitStr "btnUltimo"
  loc_BA3DBB: EqStr
  loc_BA3DBD: BranchF loc_BA3DD1
  loc_BA3DC0: FLdPr Me
  loc_BA3DC3: MemLdRfVar from_stack_1.global_52
  loc_BA3DC6: NewIfNullPr clsusuario
  loc_BA3DC9: Call clsusuario.MoveLast()
  loc_BA3DCE: Branch loc_BA3E7E
  loc_BA3DD1: ILdRf var_90
  loc_BA3DD4: LitStr "btnFiltrar"
  loc_BA3DD7: EqStr
  loc_BA3DD9: BranchF loc_BA3DDF
  loc_BA3DDC: Branch loc_BA3E7E
  loc_BA3DDF: ILdRf var_90
  loc_BA3DE2: LitStr "btnBuscar"
  loc_BA3DE5: EqStr
  loc_BA3DE7: BranchF loc_BA3DED
  loc_BA3DEA: Branch loc_BA3E7E
  loc_BA3DED: ILdRf var_90
  loc_BA3DF0: LitStr "btnImprimir"
  loc_BA3DF3: EqStr
  loc_BA3DF5: BranchF loc_BA3E27
  loc_BA3DF8: ImpAdLdRf MemVar_D9432C
  loc_BA3DFB: NewIfNullAd
  loc_BA3DFE: CastAd
  loc_BA3E01: FStAdFuncNoPop
  loc_BA3E04: ImpAdCallFPR4 Proc_272_32_A93014()
  loc_BA3E09: FFree1Ad var_94
  loc_BA3E0C: LitVar_Missing var_D4
  loc_BA3E0F: PopAdLdVar
  loc_BA3E10: LitVarI4
  loc_BA3E18: PopAdLdVar
  loc_BA3E19: ImpAdLdRf MemVar_D9432C
  loc_BA3E1C: NewIfNullPr rptListadodeUsuarios
  loc_BA3E1F: rptListadodeUsuarios.Show from_stack_1, from_stack_2
  loc_BA3E24: Branch loc_BA3E7E
  loc_BA3E27: ILdRf var_90
  loc_BA3E2A: LitStr "btnAyuda"
  loc_BA3E2D: EqStr
  loc_BA3E2F: BranchF loc_BA3E5E
  loc_BA3E32: LitVar_Missing var_124
  loc_BA3E35: LitVar_Missing var_104
  loc_BA3E38: LitVar_Missing var_E4
  loc_BA3E3B: LitI4 0
  loc_BA3E40: LitVarStr var_C0, "Opción no disponible en esta versión."
  loc_BA3E45: FStVarCopyObj var_A8
  loc_BA3E48: FLdRfVar var_A8
  loc_BA3E4B: ImpAdCallFPR4 MsgBox(, , , , )
  loc_BA3E50: FFreeVar var_A8 = "": var_E4 = "": var_104 = ""
  loc_BA3E5B: Branch loc_BA3E7E
  loc_BA3E5E: ILdRf var_90
  loc_BA3E61: LitStr "btnSalir"
  loc_BA3E64: EqStr
  loc_BA3E66: BranchF loc_BA3E7E
  loc_BA3E69: ILdRf Me
  loc_BA3E6C: FStAdNoPop
  loc_BA3E70: ImpAdLdRf MemVar_D9C5D8
  loc_BA3E73: NewIfNullPr Global
  loc_BA3E76: Global.Unload from_stack_1
  loc_BA3E7B: FFree1Ad var_94
  loc_BA3E7E: ExitProcHresult
End Sub

Private Sub dgdABMS_UnknownEvent_1 '9D4184
  'Data Table: 46A224
  loc_9D416C: FLdPr Me
  loc_9D416F: VCallAd Control_ID_dgdABMS
  loc_9D4172: FStAdFunc var_88
  loc_9D4175: FLdRfVar var_88
  loc_9D4178: ImpAdCallFPR4 Proc_58_1_9EAB78()
  loc_9D417D: FFree1Ad var_88
  loc_9D4180: ExitProcHresult
End Sub

Private Sub dgdABMS_HeadClick(ColIndex As Integer) 'A68198
  'Data Table: 46A224
  loc_A6813C: FLdRfVar var_B4
  loc_A6813F: FLdRfVar var_B0
  loc_A68142: FLdI2 ColIndex
  loc_A68145: CVarI2 var_A8
  loc_A68148: PopAdLdVar
  loc_A68149: FLdPr Me
  loc_A6814C: VCallAd Control_ID_dgdABMS
  loc_A6814F: FStAdFunc var_88
  loc_A68152: FLdPr var_88
  loc_A68155: LateIdLdVar var_98 DispID_105 0
  loc_A6815C: CastAdVar Me
  loc_A68160: FStAdFunc var_AC
  loc_A68163: FLdPr var_AC
  loc_A68166: from_stack_2 = Me.Columns.Item(from_stack_1)
  loc_A6816B: FLdPr var_B0
  loc_A6816E:  = Me.DataField
  loc_A68173: FLdZeroAd var_B4
  loc_A68176: PopTmpLdAdStr
  loc_A6817A: FLdPr Me
  loc_A6817D: MemLdRfVar from_stack_1.global_52
  loc_A68180: NewIfNullPr clsusuario
  loc_A68183: Call clsusuario.Sort(from_stack_1v)
  loc_A68188: FFree1Str var_B8
  loc_A6818B: FFreeAd var_88 = "": var_AC = ""
  loc_A68194: FFree1Var var_98 = ""
  loc_A68197: ExitProcHresult
End Sub

Private Sub Form_Load() 'A4B8DC
  'Data Table: 46A224
  loc_A4B88C: LitStr "SELECT usuario.*, DetaPers, IF(usuario.CodiEnre=0,'',DetaEnre) as DetaEnre FROM infogov.usuario "
  loc_A4B88F: LitStr " LEFT JOIN infogov.persona ON persona.CucuPers = usuario.CucuPers "
  loc_A4B892: ConcatStr
  loc_A4B893: FStStrNoPop var_88
  loc_A4B896: LitStr " LEFT JOIN infogov.entereca ON entereca.CodiEnre = usuario.CodiEnre "
  loc_A4B899: ConcatStr
  loc_A4B89A: FStStrNoPop var_8C
  loc_A4B89D: LitStr " ORDER BY CodiUsua"
  loc_A4B8A0: ConcatStr
  loc_A4B8A1: FStStrNoPop var_90
  loc_A4B8A4: FLdPr Me
  loc_A4B8A7: MemLdRfVar from_stack_1.global_52
  loc_A4B8AA: NewIfNullPr clsusuario
  loc_A4B8AD: Call clsusuario.RedefineRS(from_stack_1v)
  loc_A4B8B2: FFreeStr var_88 = "": var_8C = ""
  loc_A4B8BB: LitI2_Byte 0
  loc_A4B8BD: CR8I2
  loc_A4B8BE: PopFPR4
  loc_A4B8BF: FLdPr Me
  loc_A4B8C2: Me.Left = from_stack_1s
  loc_A4B8C7: LitI2_Byte 0
  loc_A4B8C9: CR8I2
  loc_A4B8CA: PopFPR4
  loc_A4B8CB: FLdPr Me
  loc_A4B8CE: Me.Top = from_stack_1s
  loc_A4B8D3: Call cmdCancelar_Click()
  loc_A4B8D8: ExitProcHresult
End Sub

Private Sub Form_Activate() 'A62BC0
  'Data Table: 46A224
  loc_A62B64: FLdRfVar var_C2
  loc_A62B67: FLdRfVar var_C0
  loc_A62B6A: LitVarI2 var_B8, 1
  loc_A62B6F: FLdPr Me
  loc_A62B72: VCallAd Control_ID_tlbABMS
  loc_A62B75: FStAdFunc var_88
  loc_A62B78: FLdPr var_88
  loc_A62B7B: LateIdLdVar var_98 DispID_3 0
  loc_A62B82: CastAdVar Me
  loc_A62B86: FStAdFunc var_BC
  loc_A62B89: FLdPr var_BC
  loc_A62B8C:  = Me.Buttons.ControlDefault
  loc_A62B91: FLdPr var_C0
  loc_A62B94:  = Me.Enabled
  loc_A62B99: FLdI2 var_C2
  loc_A62B9C: FFreeAd var_88 = "": var_BC = ""
  loc_A62BA5: FFreeVar var_98 = ""
  loc_A62BAC: BranchF loc_A62BBD
  loc_A62BAF: FLdPr Me
  loc_A62BB2: MemLdRfVar from_stack_1.global_52
  loc_A62BB5: NewIfNullPr clsusuario
  loc_A62BB8: Call clsusuario.Requery()
  loc_A62BBD: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) '9E307C
  'Data Table: 46A224
  loc_9E3060: ILdI2 KeyAscii
  loc_9E3063: CI4UI1
  loc_9E3064: LitI4 &HD
  loc_9E3069: EqI4
  loc_9E306A: BranchF loc_9E307B
  loc_9E306D: LitVar_TRUE var_A4
  loc_9E3070: LitStr "{Tab}"
  loc_9E3073: ImpAdCallFPR4 SendKeys , 
  loc_9E3078: FFree1Var var_A4 = ""
  loc_9E307B: ExitProcHresult
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer) '9D42B4
  'Data Table: 46A224
  loc_9D429C: ILdI2 KeyCode
  loc_9D429F: ILdRf Me
  loc_9D42A2: CastAd
  loc_9D42A5: FStAdFunc var_88
  loc_9D42A8: FLdRfVar var_88
  loc_9D42AB: ImpAdCallFPR4 Proc_272_5_B525D4(, )
  loc_9D42B0: FFree1Ad var_88
  loc_9D42B3: ExitProcHresult
End Sub

Private Sub CodiEnreMsk_UnknownEvent_0 '9BF2D0
  'Data Table: 46A224
  loc_9BF2BC: FLdPr Me
  loc_9BF2BF: VCallAd Control_ID_CodiEnreMsk
  loc_9BF2C2: CVarAd
  loc_9BF2C6: ImpAdCallFPR4 Proc_272_36_9ED1A0()
  loc_9BF2CB: FFree1Var var_94 = ""
  loc_9BF2CE: ExitProcHresult
End Sub

Private Sub CodiEnreMsk_UnknownEvent_8 'AE7CF8
  'Data Table: 46A224
  loc_AE7B7C: FLdPr Me
  loc_AE7B7F: VCallAd Control_ID_CodiEnreMsk
  loc_AE7B82: FStAdFunc var_88
  loc_AE7B85: FLdPr var_88
  loc_AE7B88: LateIdLdVar var_98 DispID_13 -32767
  loc_AE7B8F: CBoolVar
  loc_AE7B91: FFree1Ad var_88
  loc_AE7B94: FFree1Var var_98 = ""
  loc_AE7B97: BranchF loc_AE7CF7
  loc_AE7B9A: FLdPr Me
  loc_AE7B9D: VCallAd Control_ID_CodiEnreMsk
  loc_AE7BA0: FStAdFunc var_88
  loc_AE7BA3: FLdPr var_88
  loc_AE7BA6: LateIdLdVar var_98 DispID_22 0
  loc_AE7BAD: PopAd
  loc_AE7BAF: LitI2_Byte &HFF
  loc_AE7BB1: LitI2_Byte 0
  loc_AE7BB3: FLdRfVar var_98
  loc_AE7BB6: CStrVarTmp
  loc_AE7BB7: FStStrNoPop var_9C
  loc_AE7BBA: LitStr "Ente Recaudador"
  loc_AE7BBD: ImpAdCallI2 Proc_18_14_AC4838(, , , )
  loc_AE7BC2: FStStrNoPop var_A0
  loc_AE7BC5: FLdPr Me
  loc_AE7BC8: MemStStrCopy
  loc_AE7BCC: FFreeStr var_9C = ""
  loc_AE7BD3: FFree1Ad var_88
  loc_AE7BD6: FFree1Var var_98 = ""
  loc_AE7BD9: FLdPr Me
  loc_AE7BDC: MemLdStr global_60
  loc_AE7BDF: LitStr vbNullString
  loc_AE7BE2: NeStr
  loc_AE7BE4: BranchF loc_AE7C0A
  loc_AE7BE7: FLdPr Me
  loc_AE7BEA: MemLdStr global_60
  loc_AE7BED: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE7BF2: FLdPr Me
  loc_AE7BF5: VCallAd Control_ID_CodiEnreMsk
  loc_AE7BF8: CVarAd
  loc_AE7BFC: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE7C01: FFree1Var var_98 = ""
  loc_AE7C04: LitI2_Byte &HFF
  loc_AE7C06: IStI2 KeyCode
  loc_AE7C09: ExitProcHresult
  loc_AE7C0A: FLdPr Me
  loc_AE7C0D: VCallAd Control_ID_CodiEnreMsk
  loc_AE7C10: FStAdFunc var_88
  loc_AE7C13: FLdPr var_88
  loc_AE7C16: LateIdLdVar var_98 DispID_22 0
  loc_AE7C1D: CStrVarTmp
  loc_AE7C1E: FStStrNoPop var_9C
  loc_AE7C21: CR8Str
  loc_AE7C23: LitI2_Byte 0
  loc_AE7C25: CR8I2
  loc_AE7C26: NeR8
  loc_AE7C27: FFree1Str var_9C
  loc_AE7C2A: FFree1Ad var_88
  loc_AE7C2D: FFree1Var var_98 = ""
  loc_AE7C30: BranchF loc_AE7CE0
  loc_AE7C33: FLdPr Me
  loc_AE7C36: VCallAd Control_ID_CodiEnreMsk
  loc_AE7C39: FStAdFunc var_88
  loc_AE7C3C: FLdPr var_88
  loc_AE7C3F: LateIdLdVar var_98 DispID_22 0
  loc_AE7C46: CStrVarTmp
  loc_AE7C47: FStStrNoPop var_9C
  loc_AE7C4A: ImpAdCallI2 Proc_18_39_A5661C()
  loc_AE7C4F: FStStrNoPop var_A0
  loc_AE7C52: FLdPr Me
  loc_AE7C55: MemStStrCopy
  loc_AE7C59: FFreeStr var_9C = ""
  loc_AE7C60: FFree1Ad var_88
  loc_AE7C63: FFree1Var var_98 = ""
  loc_AE7C66: FLdPr Me
  loc_AE7C69: MemLdStr global_60
  loc_AE7C6C: LitStr vbNullString
  loc_AE7C6F: NeStr
  loc_AE7C71: BranchF loc_AE7C9A
  loc_AE7C74: FLdPr Me
  loc_AE7C77: MemLdStr global_60
  loc_AE7C7A: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_AE7C7F: FLdPr Me
  loc_AE7C82: VCallAd Control_ID_CodiEnreMsk
  loc_AE7C85: CVarAd
  loc_AE7C89: ImpAdCallFPR4 Proc_272_9_AA2A28()
  loc_AE7C8E: FFree1Var var_98 = ""
  loc_AE7C91: LitI2_Byte &HFF
  loc_AE7C93: IStI2 KeyCode
  loc_AE7C96: ExitProcHresult
  loc_AE7C97: Branch loc_AE7CDD
  loc_AE7C9A: FLdPr Me
  loc_AE7C9D: VCallAd Control_ID_CodiEnreMsk
  loc_AE7CA0: FStAdFunc var_88
  loc_AE7CA3: FLdPr var_88
  loc_AE7CA6: LateIdLdVar var_98 DispID_22 0
  loc_AE7CAD: CStrVarTmp
  loc_AE7CAE: FStStrNoPop var_9C
  loc_AE7CB1: CI2Str
  loc_AE7CB3: ImpAdCallI2 Proc_270_42_A7BB98()
  loc_AE7CB8: FStStrNoPop var_A0
  loc_AE7CBB: FLdPr Me
  loc_AE7CBE: VCallAd Control_ID_DetaEnreLbl
  loc_AE7CC1: FStAdFunc var_A4
  loc_AE7CC4: FLdPr var_A4
  loc_AE7CC7: Me.Caption = from_stack_1
  loc_AE7CCC: FFreeStr var_9C = ""
  loc_AE7CD3: FFreeAd var_88 = ""
  loc_AE7CDA: FFree1Var var_98 = ""
  loc_AE7CDD: Branch loc_AE7CF7
  loc_AE7CE0: LitStr vbNullString
  loc_AE7CE3: FLdPr Me
  loc_AE7CE6: VCallAd Control_ID_DetaEnreLbl
  loc_AE7CE9: FStAdFunc var_88
  loc_AE7CEC: FLdPr var_88
  loc_AE7CEF: Me.Caption = from_stack_1
  loc_AE7CF4: FFree1Ad var_88
  loc_AE7CF7: ExitProcHresult
End Sub

Private Sub CodiEnreMsk_KeyPress(KeyAscii As Integer) 'A8A6CC
  'Data Table: 46A224
  loc_A8A634: ILdI2 KeyAscii
  loc_A8A637: LitI2_Byte &H20
  loc_A8A639: EqI2
  loc_A8A63A: BranchF loc_A8A6C9
  loc_A8A63D: LitVar_Missing var_A4
  loc_A8A640: PopAdLdVar
  loc_A8A641: LitVarI4
  loc_A8A649: PopAdLdVar
  loc_A8A64A: ImpAdLdRf MemVar_D941EC
  loc_A8A64D: NewIfNullPr dlgBuscarEnteRecaudador
  loc_A8A650: dlgBuscarEnteRecaudador.Show from_stack_1, from_stack_2
  loc_A8A655: FLdRfVar var_AA
  loc_A8A658: FLdRfVar var_A8
  loc_A8A65B: ImpAdLdRf MemVar_D941EC
  loc_A8A65E: NewIfNullPr dlgBuscarEnteRecaudador
  loc_A8A661: from_stack_1v = dlgBuscarEnteRecaudador.global_4259576Get()
  loc_A8A666: FLdPr var_A8
  loc_A8A669: from_stack_1 = clsentereca.CodiEnre
  loc_A8A66E: FLdI2 var_AA
  loc_A8A671: CStrUI1
  loc_A8A673: CVarStr var_BC
  loc_A8A676: PopAdLdVar
  loc_A8A677: FLdPr Me
  loc_A8A67A: VCallAd Control_ID_CodiEnreMsk
  loc_A8A67D: FStAdFunc var_C0
  loc_A8A680: FLdPr var_C0
  loc_A8A683: LateIdSt
  loc_A8A688: FFreeAd var_A8 = ""
  loc_A8A68F: FFree1Var var_BC = ""
  loc_A8A692: FLdRfVar var_C4
  loc_A8A695: FLdRfVar var_A8
  loc_A8A698: ImpAdLdRf MemVar_D941EC
  loc_A8A69B: NewIfNullPr dlgBuscarEnteRecaudador
  loc_A8A69E: from_stack_1v = dlgBuscarEnteRecaudador.global_4259576Get()
  loc_A8A6A3: FLdPr var_A8
  loc_A8A6A6: from_stack_1 = clsentereca.DetaEnre
  loc_A8A6AB: ILdRf var_C4
  loc_A8A6AE: FLdPr Me
  loc_A8A6B1: VCallAd Control_ID_DetaEnreLbl
  loc_A8A6B4: FStAdFunc var_C0
  loc_A8A6B7: FLdPr var_C0
  loc_A8A6BA: Me.Caption = from_stack_1
  loc_A8A6BF: FFree1Str var_C4
  loc_A8A6C2: FFreeAd var_A8 = ""
  loc_A8A6C9: ExitProcHresult
  loc_A8A6CA: Ary1LdRf
End Sub

Private Function Proc_51_17_9D4138() '9D4138
  'Data Table: 46A224
  loc_9D4120: FLdPr Me
  loc_9D4123: VCallAd Control_ID_dgdABMS
  loc_9D4126: FStAdFunc var_88
  loc_9D4129: FLdRfVar var_88
  loc_9D412C: ImpAdCallFPR4 Proc_58_0_9FD654()
  loc_9D4131: FFree1Ad var_88
  loc_9D4134: ExitProcHresult
End Function
