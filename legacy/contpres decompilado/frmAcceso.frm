VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Object = "{5E9E78A0-531B-11CF-91F6C2863C385E30}#1.0#0"; "C:\WINDOWS\SysWOW64\msflxgrd.ocx"
Object = "{831FDD16-0C5C-11D2-A9FC0000F8754DA1}#2.1#0"; "C:\Windows\SysWow64\MSCOMCTL.OCX"
Begin VB.Form frmAcceso
  Caption = "Accesos de Usuarios"
  WindowState = 2
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "frmAcceso.frx":0000
  LinkTopic = "Form1"
  ControlBox = 0   'False
  MDIChild = -1  'True
  KeyPreview = -1  'True
  ClientLeft = 45
  ClientTop = 435
  ClientWidth = 14220
  ClientHeight = 9600
  Begin VB.CommandButton SalirCmd
    Left = 13080
    Top = 360
    Width = 810
    Height = 615
    TabIndex = 5
    Picture = "frmAcceso.frx":08CA
    Style = 1
    CausesValidation = 0   'False
  End
  Begin VB.CommandButton ImprimirCmd
    Left = 13080
    Top = 1200
    Width = 810
    Height = 615
    TabIndex = 4
    Picture = "frmAcceso.frx":0B1C
    Style = 1
  End
  Begin VB.Frame Frame2
    Caption = "Usuarios"
    Left = 120
    Top = 120
    Width = 12735
    Height = 4215
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
    Begin MSDataGridLib.DataGrid dgdUsuarios
      Left = 240
      Top = 480
      Width = 12375
      Height = 3465
      TabIndex = 1
      OleObjectBlob = "frmAcceso.frx":0C1E
    End
  End
  Begin VB.Frame fraABMS
    Caption = "Accesos"
    Left = 0
    Top = 4440
    Width = 13935
    Height = 4935
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
    Begin MSFlexGridLib.MSFlexGrid AccesoFlex
      Left = 120
      Top = 360
      Width = 13815
      Height = 4455
      TabIndex = 3
      OleObjectBlob = "frmAcceso.frx":0FC0
      Appearance = 0 'Flat
    End
  End
  Begin MSComctlLib.ImageList ilsABMS
    OleObjectBlob = "frmAcceso.frx":10AC
    Left = 11640
    Top = 840
  End
End

Attribute VB_Name = "frmAcceso"


Private Sub SalirCmd_Click() '956320
  'Data Table: 41CA90
  loc_956308: ILdRf Me
  loc_95630B: FStAdNoPop
  loc_95630F: ImpAdLdRf MemVar_C44F9C
  loc_956312: NewIfNullPr Me
  loc_956315: Me.Global.Unload from_stack_1
  loc_95631A: FFree1Ad var_88
  loc_95631D: ExitProcHresult
End Sub

Private Sub ImprimirCmd_Click() '979FD8
  'Data Table: 41CA90
  loc_979FA8: ImpAdLdRf MemVar_C3D958
  loc_979FAB: NewIfNullAd
  loc_979FAE: CastAd
  loc_979FB1: FStAdFuncNoPop
  loc_979FB4: ImpAdCallFPR4 Proc_261_30_9B11C4()
  loc_979FB9: FFree1Ad var_88
  loc_979FBC: LitVar_Missing var_A8
  loc_979FBF: PopAdLdVar
  loc_979FC0: LitVarI4
  loc_979FC8: PopAdLdVar
  loc_979FC9: ImpAdLdRf MemVar_C3D958
  loc_979FCC: NewIfNullPr rptListadodeAccesos
  loc_979FCF: rptListadodeAccesos.Show from_stack_1, from_stack_2
  loc_979FD4: ExitProcHresult
End Sub

Private Sub dgdUsuarios_UnknownEvent_0 '95636C
  'Data Table: 41CA90
  loc_956354: FLdPr Me
  loc_956357: VCallAd Control_ID_dgdUsuarios
  loc_95635A: FStAdFunc var_88
  loc_95635D: FLdRfVar var_88
  loc_956360: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_956365: FFree1Ad var_88
  loc_956368: ExitProcHresult
  loc_956369: FLdPr arg_F00
End Sub

Private Sub dgdUsuarios_UnknownEvent_1 '9563B8
  'Data Table: 41CA90
  loc_9563A0: FLdPr Me
  loc_9563A3: VCallAd Control_ID_dgdUsuarios
  loc_9563A6: FStAdFunc var_88
  loc_9563A9: FLdRfVar var_88
  loc_9563AC: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_9563B1: FFree1Ad var_88
  loc_9563B4: ExitProcHresult
End Sub

Private Sub dgdUsuarios_RowColChange(LastRow As Variant, LastCol As Integer) 'B0EC38
  'Data Table: 41CA90
  loc_B0E434: Call Proc_99_11_9E6088()
  loc_B0E439: LitI2_Byte 1
  loc_B0E43B: FLdRfVar var_86
  loc_B0E43E: ImpAdLdI4 MemVar_C3D060
  loc_B0E441: LitI2_Byte 1
  loc_B0E443: FnUBound
  loc_B0E445: CI2I4
  loc_B0E446: ForI2 var_94
  loc_B0E44C: FLdRfVar var_90
  loc_B0E44F: NewIfNullRf
  loc_B0E453: FLdI2 var_86
  loc_B0E456: CI4UI1
  loc_B0E457: ImpAdLdI4 MemVar_C3D060
  loc_B0E45A: Ary1LdPr
  loc_B0E45B: MemLdStr global_0
  loc_B0E45E: ImpAdCallI2 Proc_259_16_A4B7C4(, )
  loc_B0E463: LitI2_Byte &HFF
  loc_B0E465: EqI2
  loc_B0E466: BranchF loc_B0E6DE
  loc_B0E469: LitI4 1
  loc_B0E46E: FLdI2 var_86
  loc_B0E471: CI4UI1
  loc_B0E472: ImpAdLdI4 MemVar_C3D060
  loc_B0E475: Ary1LdPr
  loc_B0E476: MemLdStr global_8
  loc_B0E479: LitStr "InfoGov3"
  loc_B0E47C: LitI4 0
  loc_B0E481: FnInStr4
  loc_B0E483: LitI4 0
  loc_B0E488: GtI4
  loc_B0E489: BranchF loc_B0E5C0
  loc_B0E48C: LitI4 0
  loc_B0E491: LitI4 -1
  loc_B0E496: LitI4 1
  loc_B0E49B: LitStr vbNullString
  loc_B0E49E: LitStr "(InfoGov3)"
  loc_B0E4A1: FLdI2 var_86
  loc_B0E4A4: CI4UI1
  loc_B0E4A5: ImpAdLdI4 MemVar_C3D060
  loc_B0E4A8: Ary1LdPr
  loc_B0E4A9: MemLdStr global_8
  loc_B0E4AC: ImpAdCallI2 Replace(, , , , , )
  loc_B0E4B1: CVarStr var_B4
  loc_B0E4B4: LitI4 9
  loc_B0E4B9: FLdRfVar var_A4
  loc_B0E4BC: ImpAdCallFPR4  = Chr()
  loc_B0E4C1: FLdRfVar var_A4
  loc_B0E4C4: ConcatVar var_C4
  loc_B0E4C8: FLdI2 var_86
  loc_B0E4CB: CI4UI1
  loc_B0E4CC: ImpAdLdI4 MemVar_C3D060
  loc_B0E4CF: Ary1LdPr
  loc_B0E4D0: MemLdStr global_0
  loc_B0E4D3: CVarStr var_D4
  loc_B0E4D6: ConcatVar var_E4
  loc_B0E4DA: LitVarStr var_F4, " --> InfoGov 3"
  loc_B0E4DF: ConcatVar var_104
  loc_B0E4E3: LitI4 9
  loc_B0E4E8: FLdRfVar var_114
  loc_B0E4EB: ImpAdCallFPR4  = Chr()
  loc_B0E4F0: FLdRfVar var_114
  loc_B0E4F3: ConcatVar var_124
  loc_B0E4F7: LitVarStr var_134, "No"
  loc_B0E4FC: ConcatVar var_144
  loc_B0E500: LitI4 9
  loc_B0E505: FLdRfVar var_154
  loc_B0E508: ImpAdCallFPR4  = Chr()
  loc_B0E50D: FLdRfVar var_154
  loc_B0E510: ConcatVar var_164
  loc_B0E514: LitVarStr var_174, "No"
  loc_B0E519: ConcatVar var_184
  loc_B0E51D: LitI4 9
  loc_B0E522: FLdRfVar var_194
  loc_B0E525: ImpAdCallFPR4  = Chr()
  loc_B0E52A: FLdRfVar var_194
  loc_B0E52D: ConcatVar var_1A4
  loc_B0E531: LitVarStr var_1B4, "No"
  loc_B0E536: ConcatVar var_1C4
  loc_B0E53A: LitI4 9
  loc_B0E53F: FLdRfVar var_1D4
  loc_B0E542: ImpAdCallFPR4  = Chr()
  loc_B0E547: FLdRfVar var_1D4
  loc_B0E54A: ConcatVar var_1E4
  loc_B0E54E: LitVarStr var_1F4, "No"
  loc_B0E553: ConcatVar var_204
  loc_B0E557: LitI4 9
  loc_B0E55C: FLdRfVar var_214
  loc_B0E55F: ImpAdCallFPR4  = Chr()
  loc_B0E564: FLdRfVar var_214
  loc_B0E567: ConcatVar var_224
  loc_B0E56B: LitVarStr var_234, "0"
  loc_B0E570: ConcatVar var_244
  loc_B0E574: CStrVarTmp
  loc_B0E575: CVarStr var_254
  loc_B0E578: PopAdLdVar
  loc_B0E579: FLdPr Me
  loc_B0E57C: VCallAd Control_ID_AccesoFlex
  loc_B0E57F: FStAdFunc var_268
  loc_B0E582: FLdPr var_268
  loc_B0E585: LateIdCall
  loc_B0E58D: FFree1Ad var_268
  loc_B0E590: FFreeVar var_B4 = "": var_A4 = "": var_C4 = "": var_E4 = "": var_104 = "": var_114 = "": var_124 = "": var_144 = "": var_154 = "": var_164 = "": var_184 = "": var_194 = "": var_1A4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_224 = "": var_244 = ""
  loc_B0E5BD: Branch loc_B0E6DB
  loc_B0E5C0: FLdI2 var_86
  loc_B0E5C3: CI4UI1
  loc_B0E5C4: ImpAdLdI4 MemVar_C3D060
  loc_B0E5C7: Ary1LdPr
  loc_B0E5C8: MemLdStr global_8
  loc_B0E5CB: CVarStr var_D4
  loc_B0E5CE: LitI4 9
  loc_B0E5D3: FLdRfVar var_A4
  loc_B0E5D6: ImpAdCallFPR4  = Chr()
  loc_B0E5DB: FLdRfVar var_A4
  loc_B0E5DE: ConcatVar var_B4
  loc_B0E5E2: FLdI2 var_86
  loc_B0E5E5: CI4UI1
  loc_B0E5E6: ImpAdLdI4 MemVar_C3D060
  loc_B0E5E9: Ary1LdPr
  loc_B0E5EA: MemLdStr global_4
  loc_B0E5ED: CVarStr var_F4
  loc_B0E5F0: ConcatVar var_C4
  loc_B0E5F4: LitI4 9
  loc_B0E5F9: FLdRfVar var_E4
  loc_B0E5FC: ImpAdCallFPR4  = Chr()
  loc_B0E601: FLdRfVar var_E4
  loc_B0E604: ConcatVar var_104
  loc_B0E608: LitVarStr var_134, "No"
  loc_B0E60D: ConcatVar var_114
  loc_B0E611: LitI4 9
  loc_B0E616: FLdRfVar var_124
  loc_B0E619: ImpAdCallFPR4  = Chr()
  loc_B0E61E: FLdRfVar var_124
  loc_B0E621: ConcatVar var_144
  loc_B0E625: LitVarStr var_174, "No"
  loc_B0E62A: ConcatVar var_154
  loc_B0E62E: LitI4 9
  loc_B0E633: FLdRfVar var_164
  loc_B0E636: ImpAdCallFPR4  = Chr()
  loc_B0E63B: FLdRfVar var_164
  loc_B0E63E: ConcatVar var_184
  loc_B0E642: LitVarStr var_1B4, "No"
  loc_B0E647: ConcatVar var_194
  loc_B0E64B: LitI4 9
  loc_B0E650: FLdRfVar var_1A4
  loc_B0E653: ImpAdCallFPR4  = Chr()
  loc_B0E658: FLdRfVar var_1A4
  loc_B0E65B: ConcatVar var_1C4
  loc_B0E65F: LitVarStr var_1F4, "No"
  loc_B0E664: ConcatVar var_1D4
  loc_B0E668: LitI4 9
  loc_B0E66D: FLdRfVar var_1E4
  loc_B0E670: ImpAdCallFPR4  = Chr()
  loc_B0E675: FLdRfVar var_1E4
  loc_B0E678: ConcatVar var_204
  loc_B0E67C: FLdRfVar var_26C
  loc_B0E67F: FLdRfVar var_90
  loc_B0E682: NewIfNullPr tblmenu
  loc_B0E685: from_stack_1v = tblmenu.CodiMenuGet()
  loc_B0E68A: FLdZeroAd var_26C
  loc_B0E68D: CVarStr var_214
  loc_B0E690: ConcatVar var_224
  loc_B0E694: CStrVarTmp
  loc_B0E695: CVarStr var_244
  loc_B0E698: PopAdLdVar
  loc_B0E699: FLdPr Me
  loc_B0E69C: VCallAd Control_ID_AccesoFlex
  loc_B0E69F: FStAdFunc var_268
  loc_B0E6A2: FLdPr var_268
  loc_B0E6A5: LateIdCall
  loc_B0E6AD: FFree1Ad var_268
  loc_B0E6B0: FFreeVar var_A4 = "": var_B4 = "": var_C4 = "": var_E4 = "": var_104 = "": var_114 = "": var_124 = "": var_144 = "": var_154 = "": var_164 = "": var_184 = "": var_194 = "": var_1A4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_204 = "": var_214 = "": var_224 = ""
  loc_B0E6DB: Branch loc_B0E7D6
  loc_B0E6DE: LitVarStr var_D4, "El menu no esta cargado correctamente. Verifique..."
  loc_B0E6E3: LitI4 9
  loc_B0E6E8: FLdRfVar var_A4
  loc_B0E6EB: ImpAdCallFPR4  = Chr()
  loc_B0E6F0: FLdRfVar var_A4
  loc_B0E6F3: ConcatVar var_B4
  loc_B0E6F7: LitVarStr var_F4, " "
  loc_B0E6FC: ConcatVar var_C4
  loc_B0E700: LitI4 9
  loc_B0E705: FLdRfVar var_E4
  loc_B0E708: ImpAdCallFPR4  = Chr()
  loc_B0E70D: FLdRfVar var_E4
  loc_B0E710: ConcatVar var_104
  loc_B0E714: LitVarStr var_134, "No"
  loc_B0E719: ConcatVar var_114
  loc_B0E71D: LitI4 9
  loc_B0E722: FLdRfVar var_124
  loc_B0E725: ImpAdCallFPR4  = Chr()
  loc_B0E72A: FLdRfVar var_124
  loc_B0E72D: ConcatVar var_144
  loc_B0E731: LitVarStr var_174, "No"
  loc_B0E736: ConcatVar var_154
  loc_B0E73A: LitI4 9
  loc_B0E73F: FLdRfVar var_164
  loc_B0E742: ImpAdCallFPR4  = Chr()
  loc_B0E747: FLdRfVar var_164
  loc_B0E74A: ConcatVar var_184
  loc_B0E74E: LitVarStr var_1B4, "No"
  loc_B0E753: ConcatVar var_194
  loc_B0E757: LitI4 9
  loc_B0E75C: FLdRfVar var_1A4
  loc_B0E75F: ImpAdCallFPR4  = Chr()
  loc_B0E764: FLdRfVar var_1A4
  loc_B0E767: ConcatVar var_1C4
  loc_B0E76B: LitVarStr var_1F4, "No"
  loc_B0E770: ConcatVar var_1D4
  loc_B0E774: LitI4 9
  loc_B0E779: FLdRfVar var_1E4
  loc_B0E77C: ImpAdCallFPR4  = Chr()
  loc_B0E781: FLdRfVar var_1E4
  loc_B0E784: ConcatVar var_204
  loc_B0E788: LitVarStr var_234, "0"
  loc_B0E78D: ConcatVar var_214
  loc_B0E791: CStrVarTmp
  loc_B0E792: CVarStr var_224
  loc_B0E795: PopAdLdVar
  loc_B0E796: FLdPr Me
  loc_B0E799: VCallAd Control_ID_AccesoFlex
  loc_B0E79C: FStAdFunc var_268
  loc_B0E79F: FLdPr var_268
  loc_B0E7A2: LateIdCall
  loc_B0E7AA: FFree1Ad var_268
  loc_B0E7AD: FFreeVar var_A4 = "": var_B4 = "": var_C4 = "": var_E4 = "": var_104 = "": var_114 = "": var_124 = "": var_144 = "": var_154 = "": var_164 = "": var_184 = "": var_194 = "": var_1A4 = "": var_1C4 = "": var_1D4 = "": var_1E4 = "": var_204 = "": var_214 = ""
  loc_B0E7D6: FLdRfVar var_A4
  loc_B0E7D9: FLdRfVar var_274
  loc_B0E7DC: LitVarStr var_D4, "CodiUsua"
  loc_B0E7E1: PopAdLdVar
  loc_B0E7E2: FLdRfVar var_270
  loc_B0E7E5: FLdRfVar var_268
  loc_B0E7E8: FLdPr Me
  loc_B0E7EB: MemLdRfVar from_stack_1.global_52
  loc_B0E7EE: NewIfNullPr clsusuario
  loc_B0E7F1: from_stack_1v = clsusuario.RsFrmGet()
  loc_B0E7F6: FLdPr var_268
  loc_B0E7F9:  = Me.Fields
  loc_B0E7FE: FLdPr var_270
  loc_B0E801: from_stack_2 = Me.Item(from_stack_1)
  loc_B0E806: FLdPr var_274
  loc_B0E809:  = Me.Value
  loc_B0E80E: FLdRfVar var_8C
  loc_B0E811: NewIfNullRf
  loc_B0E815: FLdI2 var_86
  loc_B0E818: CI4UI1
  loc_B0E819: ImpAdLdI4 MemVar_C3D060
  loc_B0E81C: Ary1LdPr
  loc_B0E81D: MemLdStr global_0
  loc_B0E820: LitI2_Byte 1
  loc_B0E822: FLdRfVar var_A4
  loc_B0E825: CStrVarTmp
  loc_B0E826: FStStrNoPop var_26C
  loc_B0E829: ImpAdCallI2 Proc_259_4_A691B4(, , , )
  loc_B0E82E: FFree1Str var_26C
  loc_B0E831: FFreeAd var_268 = "": var_270 = ""
  loc_B0E83A: FFree1Var var_A4 = ""
  loc_B0E83D: BranchF loc_B0EAD0
  loc_B0E840: FLdI2 var_86
  loc_B0E843: CI4UI1
  loc_B0E844: CVarI4
  loc_B0E848: PopAdLdVar
  loc_B0E849: LitVarI4
  loc_B0E851: PopAdLdVar
  loc_B0E852: FLdPr Me
  loc_B0E855: VCallAd Control_ID_AccesoFlex
  loc_B0E858: FStAdFunc var_268
  loc_B0E85B: FLdPr var_268
  loc_B0E85E: LateIdCallLdVar
  loc_B0E868: CStrVarTmp
  loc_B0E869: FStStrNoPop var_26C
  loc_B0E86C: LitStr "Si"
  loc_B0E86F: NeStr
  loc_B0E871: FFree1Str var_26C
  loc_B0E874: FFree1Ad var_268
  loc_B0E877: FFree1Var var_A4 = ""
  loc_B0E87A: BranchF loc_B0EACD
  loc_B0E87D: FLdI2 var_86
  loc_B0E880: CI4UI1
  loc_B0E881: CVarI4
  loc_B0E885: PopAdLdVar
  loc_B0E886: FLdPr Me
  loc_B0E889: VCallAd Control_ID_AccesoFlex
  loc_B0E88C: FStAdFunc var_268
  loc_B0E88F: FLdPr var_268
  loc_B0E892: LateIdSt
  loc_B0E897: FFree1Ad var_268
  loc_B0E89A: LitI2_Byte 0
  loc_B0E89C: CUI1I2
  loc_B0E89E: FLdRfVar var_88
  loc_B0E8A1: LitI2_Byte 4
  loc_B0E8A3: CUI1I2
  loc_B0E8A5: ForUI1 var_278
  loc_B0E8AB: FLdUI1
  loc_B0E8AF: CI4UI1
  loc_B0E8B0: CVarI4
  loc_B0E8B4: PopAdLdVar
  loc_B0E8B5: FLdPr Me
  loc_B0E8B8: VCallAd Control_ID_AccesoFlex
  loc_B0E8BB: FStAdFunc var_268
  loc_B0E8BE: FLdPr var_268
  loc_B0E8C1: LateIdSt
  loc_B0E8C6: FFree1Ad var_268
  loc_B0E8C9: LitVarI4
  loc_B0E8D1: PopAdLdVar
  loc_B0E8D2: FLdPr Me
  loc_B0E8D5: VCallAd Control_ID_AccesoFlex
  loc_B0E8D8: FStAdFunc var_268
  loc_B0E8DB: FLdPr var_268
  loc_B0E8DE: LateIdSt
  loc_B0E8E3: FFree1Ad var_268
  loc_B0E8E6: FLdRfVar var_26C
  loc_B0E8E9: FLdRfVar var_8C
  loc_B0E8EC: NewIfNullPr tblacceso
  loc_B0E8EF: from_stack_1v = tblacceso.AltaAcceGet()
  loc_B0E8F4: FLdI2 var_86
  loc_B0E8F7: CI4UI1
  loc_B0E8F8: CVarI4
  loc_B0E8FC: PopAdLdVar
  loc_B0E8FD: LitVarI4
  loc_B0E905: PopAdLdVar
  loc_B0E906: LitVarStr var_134, "No"
  loc_B0E90B: FStVarCopyObj var_B4
  loc_B0E90E: FLdRfVar var_B4
  loc_B0E911: LitVarStr var_F4, "Si"
  loc_B0E916: FStVarCopyObj var_A4
  loc_B0E919: FLdRfVar var_A4
  loc_B0E91C: ILdRf var_26C
  loc_B0E91F: CR8Str
  loc_B0E921: LitI2_Byte 1
  loc_B0E923: CR8I2
  loc_B0E924: EqR4
  loc_B0E925: CVarBoolI2 var_D4
  loc_B0E929: FLdRfVar var_C4
  loc_B0E92C: ImpAdCallFPR4  = IIf(, , )
  loc_B0E931: FLdRfVar var_C4
  loc_B0E934: CStrVarTmp
  loc_B0E935: CVarStr var_E4
  loc_B0E938: PopAdLdVar
  loc_B0E939: FLdPr Me
  loc_B0E93C: VCallAd Control_ID_AccesoFlex
  loc_B0E93F: FStAdFunc var_268
  loc_B0E942: FLdPr var_268
  loc_B0E945: LateIdCallSt
  loc_B0E94D: FFree1Str var_26C
  loc_B0E950: FFree1Ad var_268
  loc_B0E953: FFreeVar var_D4 = "": var_A4 = "": var_B4 = "": var_C4 = ""
  loc_B0E960: FLdRfVar var_26C
  loc_B0E963: FLdRfVar var_8C
  loc_B0E966: NewIfNullPr tblacceso
  loc_B0E969: from_stack_1v = tblacceso.ModiAcceGet()
  loc_B0E96E: FLdI2 var_86
  loc_B0E971: CI4UI1
  loc_B0E972: CVarI4
  loc_B0E976: PopAdLdVar
  loc_B0E977: LitVarI4
  loc_B0E97F: PopAdLdVar
  loc_B0E980: LitVarStr var_134, "No"
  loc_B0E985: FStVarCopyObj var_B4
  loc_B0E988: FLdRfVar var_B4
  loc_B0E98B: LitVarStr var_F4, "Si"
  loc_B0E990: FStVarCopyObj var_A4
  loc_B0E993: FLdRfVar var_A4
  loc_B0E996: ILdRf var_26C
  loc_B0E999: CR8Str
  loc_B0E99B: LitI2_Byte 1
  loc_B0E99D: CR8I2
  loc_B0E99E: EqR4
  loc_B0E99F: CVarBoolI2 var_D4
  loc_B0E9A3: FLdRfVar var_C4
  loc_B0E9A6: ImpAdCallFPR4  = IIf(, , )
  loc_B0E9AB: FLdRfVar var_C4
  loc_B0E9AE: CStrVarTmp
  loc_B0E9AF: CVarStr var_E4
  loc_B0E9B2: PopAdLdVar
  loc_B0E9B3: FLdPr Me
  loc_B0E9B6: VCallAd Control_ID_AccesoFlex
  loc_B0E9B9: FStAdFunc var_268
  loc_B0E9BC: FLdPr var_268
  loc_B0E9BF: LateIdCallSt
  loc_B0E9C7: FFree1Str var_26C
  loc_B0E9CA: FFree1Ad var_268
  loc_B0E9CD: FFreeVar var_D4 = "": var_A4 = "": var_B4 = "": var_C4 = ""
  loc_B0E9DA: FLdRfVar var_26C
  loc_B0E9DD: FLdRfVar var_8C
  loc_B0E9E0: NewIfNullPr tblacceso
  loc_B0E9E3: from_stack_1v = tblacceso.BajaAcceGet()
  loc_B0E9E8: FLdI2 var_86
  loc_B0E9EB: CI4UI1
  loc_B0E9EC: CVarI4
  loc_B0E9F0: PopAdLdVar
  loc_B0E9F1: LitVarI4
  loc_B0E9F9: PopAdLdVar
  loc_B0E9FA: LitVarStr var_134, "No"
  loc_B0E9FF: FStVarCopyObj var_B4
  loc_B0EA02: FLdRfVar var_B4
  loc_B0EA05: LitVarStr var_F4, "Si"
  loc_B0EA0A: FStVarCopyObj var_A4
  loc_B0EA0D: FLdRfVar var_A4
  loc_B0EA10: ILdRf var_26C
  loc_B0EA13: CR8Str
  loc_B0EA15: LitI2_Byte 1
  loc_B0EA17: CR8I2
  loc_B0EA18: EqR4
  loc_B0EA19: CVarBoolI2 var_D4
  loc_B0EA1D: FLdRfVar var_C4
  loc_B0EA20: ImpAdCallFPR4  = IIf(, , )
  loc_B0EA25: FLdRfVar var_C4
  loc_B0EA28: CStrVarTmp
  loc_B0EA29: CVarStr var_E4
  loc_B0EA2C: PopAdLdVar
  loc_B0EA2D: FLdPr Me
  loc_B0EA30: VCallAd Control_ID_AccesoFlex
  loc_B0EA33: FStAdFunc var_268
  loc_B0EA36: FLdPr var_268
  loc_B0EA39: LateIdCallSt
  loc_B0EA41: FFree1Str var_26C
  loc_B0EA44: FFree1Ad var_268
  loc_B0EA47: FFreeVar var_D4 = "": var_A4 = "": var_B4 = "": var_C4 = ""
  loc_B0EA54: FLdI2 var_86
  loc_B0EA57: CI4UI1
  loc_B0EA58: CVarI4
  loc_B0EA5C: PopAdLdVar
  loc_B0EA5D: LitVarI4
  loc_B0EA65: PopAdLdVar
  loc_B0EA66: LitVarStr var_1B4, "Si"
  loc_B0EA6B: PopAdLdVar
  loc_B0EA6C: FLdPr Me
  loc_B0EA6F: VCallAd Control_ID_AccesoFlex
  loc_B0EA72: FStAdFunc var_268
  loc_B0EA75: FLdPr var_268
  loc_B0EA78: LateIdCallSt
  loc_B0EA80: FFree1Ad var_268
  loc_B0EA83: FLdI2 var_86
  loc_B0EA86: CI4UI1
  loc_B0EA87: CVarI4
  loc_B0EA8B: PopAdLdVar
  loc_B0EA8C: LitVarI4
  loc_B0EA94: PopAdLdVar
  loc_B0EA95: FLdRfVar var_26C
  loc_B0EA98: FLdRfVar var_8C
  loc_B0EA9B: NewIfNullPr tblacceso
  loc_B0EA9E: from_stack_1v = tblacceso.CodiMenuGet()
  loc_B0EAA3: FLdZeroAd var_26C
  loc_B0EAA6: CVarStr var_A4
  loc_B0EAA9: PopAdLdVar
  loc_B0EAAA: FLdPr Me
  loc_B0EAAD: VCallAd Control_ID_AccesoFlex
  loc_B0EAB0: FStAdFunc var_268
  loc_B0EAB3: FLdPr var_268
  loc_B0EAB6: LateIdCallSt
  loc_B0EABE: FFree1Ad var_268
  loc_B0EAC1: FFree1Var var_A4 = ""
  loc_B0EAC4: FLdRfVar var_88
  loc_B0EAC7: NextUI1
  loc_B0EACD: Branch loc_B0EC2E
  loc_B0EAD0: FLdI2 var_86
  loc_B0EAD3: CI4UI1
  loc_B0EAD4: CVarI4
  loc_B0EAD8: PopAdLdVar
  loc_B0EAD9: LitVarI4
  loc_B0EAE1: PopAdLdVar
  loc_B0EAE2: FLdPr Me
  loc_B0EAE5: VCallAd Control_ID_AccesoFlex
  loc_B0EAE8: FStAdFunc var_268
  loc_B0EAEB: FLdPr var_268
  loc_B0EAEE: LateIdCallLdVar
  loc_B0EAF8: CStrVarTmp
  loc_B0EAF9: FStStrNoPop var_26C
  loc_B0EAFC: LitStr "No"
  loc_B0EAFF: NeStr
  loc_B0EB01: FFree1Str var_26C
  loc_B0EB04: FFree1Ad var_268
  loc_B0EB07: FFree1Var var_A4 = ""
  loc_B0EB0A: BranchF loc_B0EB7F
  loc_B0EB0D: FLdI2 var_86
  loc_B0EB10: CI4UI1
  loc_B0EB11: CVarI4
  loc_B0EB15: PopAdLdVar
  loc_B0EB16: FLdPr Me
  loc_B0EB19: VCallAd Control_ID_AccesoFlex
  loc_B0EB1C: FStAdFunc var_268
  loc_B0EB1F: FLdPr var_268
  loc_B0EB22: LateIdSt
  loc_B0EB27: FFree1Ad var_268
  loc_B0EB2A: LitI2_Byte 0
  loc_B0EB2C: CUI1I2
  loc_B0EB2E: FLdRfVar var_88
  loc_B0EB31: LitI2_Byte 4
  loc_B0EB33: CUI1I2
  loc_B0EB35: ForUI1 var_27C
  loc_B0EB3B: FLdUI1
  loc_B0EB3F: CI4UI1
  loc_B0EB40: CVarI4
  loc_B0EB44: PopAdLdVar
  loc_B0EB45: FLdPr Me
  loc_B0EB48: VCallAd Control_ID_AccesoFlex
  loc_B0EB4B: FStAdFunc var_268
  loc_B0EB4E: FLdPr var_268
  loc_B0EB51: LateIdSt
  loc_B0EB56: FFree1Ad var_268
  loc_B0EB59: LitVarI4
  loc_B0EB61: PopAdLdVar
  loc_B0EB62: FLdPr Me
  loc_B0EB65: VCallAd Control_ID_AccesoFlex
  loc_B0EB68: FStAdFunc var_268
  loc_B0EB6B: FLdPr var_268
  loc_B0EB6E: LateIdSt
  loc_B0EB73: FFree1Ad var_268
  loc_B0EB76: FLdRfVar var_88
  loc_B0EB79: NextUI1
  loc_B0EB7F: FLdI2 var_86
  loc_B0EB82: CI4UI1
  loc_B0EB83: CVarI4
  loc_B0EB87: PopAdLdVar
  loc_B0EB88: LitVarI4
  loc_B0EB90: PopAdLdVar
  loc_B0EB91: FLdPr Me
  loc_B0EB94: VCallAd Control_ID_AccesoFlex
  loc_B0EB97: FStAdFunc var_268
  loc_B0EB9A: FLdPr var_268
  loc_B0EB9D: LateIdCallLdVar
  loc_B0EBA7: CStrVarTmp
  loc_B0EBA8: FStStrNoPop var_26C
  loc_B0EBAB: LitStr "0"
  loc_B0EBAE: EqStr
  loc_B0EBB0: FFree1Str var_26C
  loc_B0EBB3: FFree1Ad var_268
  loc_B0EBB6: FFree1Var var_A4 = ""
  loc_B0EBB9: BranchF loc_B0EC2E
  loc_B0EBBC: FLdI2 var_86
  loc_B0EBBF: CI4UI1
  loc_B0EBC0: CVarI4
  loc_B0EBC4: PopAdLdVar
  loc_B0EBC5: FLdPr Me
  loc_B0EBC8: VCallAd Control_ID_AccesoFlex
  loc_B0EBCB: FStAdFunc var_268
  loc_B0EBCE: FLdPr var_268
  loc_B0EBD1: LateIdSt
  loc_B0EBD6: FFree1Ad var_268
  loc_B0EBD9: LitI2_Byte 0
  loc_B0EBDB: CUI1I2
  loc_B0EBDD: FLdRfVar var_88
  loc_B0EBE0: LitI2_Byte 4
  loc_B0EBE2: CUI1I2
  loc_B0EBE4: ForUI1 var_280
  loc_B0EBEA: FLdUI1
  loc_B0EBEE: CI4UI1
  loc_B0EBEF: CVarI4
  loc_B0EBF3: PopAdLdVar
  loc_B0EBF4: FLdPr Me
  loc_B0EBF7: VCallAd Control_ID_AccesoFlex
  loc_B0EBFA: FStAdFunc var_268
  loc_B0EBFD: FLdPr var_268
  loc_B0EC00: LateIdSt
  loc_B0EC05: FFree1Ad var_268
  loc_B0EC08: LitVarI4
  loc_B0EC10: PopAdLdVar
  loc_B0EC11: FLdPr Me
  loc_B0EC14: VCallAd Control_ID_AccesoFlex
  loc_B0EC17: FStAdFunc var_268
  loc_B0EC1A: FLdPr var_268
  loc_B0EC1D: LateIdSt
  loc_B0EC22: FFree1Ad var_268
  loc_B0EC25: FLdRfVar var_88
  loc_B0EC28: NextUI1
  loc_B0EC2E: FLdRfVar var_86
  loc_B0EC31: NextI2 var_94, loc_B0E44C
  loc_B0EC36: ExitProcHresult
End Sub

Private Sub Form_Load() 'A492E0
  'Data Table: 41CA90
  loc_A49064: LitI2_Byte 0
  loc_A49066: CR8I2
  loc_A49067: PopFPR4
  loc_A49068: FLdPr Me
  loc_A4906B: Me.Left = from_stack_1s
  loc_A49070: LitI2_Byte 0
  loc_A49072: CR8I2
  loc_A49073: PopFPR4
  loc_A49074: FLdPr Me
  loc_A49077: Me.Top = from_stack_1s
  loc_A4907C: LitStr "SELECT u.*"
  loc_A4907F: LitStr " FROM infogov.usuario u"
  loc_A49082: ConcatStr
  loc_A49083: FStStrNoPop var_88
  loc_A49086: LitStr " WHERE InhaUsua = 0 AND u.BajaUsua = ''"
  loc_A49089: ConcatStr
  loc_A4908A: FStStrNoPop var_8C
  loc_A4908D: LitStr " ORDER BY u.CodiUsua;"
  loc_A49090: ConcatStr
  loc_A49091: FStStrNoPop var_90
  loc_A49094: FLdPr Me
  loc_A49097: MemLdRfVar from_stack_1.global_52
  loc_A4909A: NewIfNullPr clsusuario
  loc_A4909D: Call clsusuario.RedefineRS(from_stack_1v)
  loc_A490A2: FFreeStr var_88 = "": var_8C = ""
  loc_A490AB: FLdPr Me
  loc_A490AE: VCallAd Control_ID_AccesoFlex
  loc_A490B1: FStAdFunc var_94
  loc_A490B4: LitVarI4
  loc_A490BC: PopAdLdVar
  loc_A490BD: LitVarI4
  loc_A490C5: PopAdLdVar
  loc_A490C6: FLdPr var_94
  loc_A490C9: LateIdCallSt
  loc_A490D1: LitVarI4
  loc_A490D9: PopAdLdVar
  loc_A490DA: LitVarI4
  loc_A490E2: PopAdLdVar
  loc_A490E3: FLdPr var_94
  loc_A490E6: LateIdCallSt
  loc_A490EE: LitVarI4
  loc_A490F6: PopAdLdVar
  loc_A490F7: LitVarI4
  loc_A490FF: PopAdLdVar
  loc_A49100: FLdPr var_94
  loc_A49103: LateIdCallSt
  loc_A4910B: LitVarI4
  loc_A49113: PopAdLdVar
  loc_A49114: LitVarI4
  loc_A4911C: PopAdLdVar
  loc_A4911D: FLdPr var_94
  loc_A49120: LateIdCallSt
  loc_A49128: LitVarI4
  loc_A49130: PopAdLdVar
  loc_A49131: LitVarI4
  loc_A49139: PopAdLdVar
  loc_A4913A: FLdPr var_94
  loc_A4913D: LateIdCallSt
  loc_A49145: LitVarI4
  loc_A4914D: PopAdLdVar
  loc_A4914E: LitVarI4
  loc_A49156: PopAdLdVar
  loc_A49157: FLdPr var_94
  loc_A4915A: LateIdCallSt
  loc_A49162: LitVarI4
  loc_A4916A: PopAdLdVar
  loc_A4916B: LitVarI4
  loc_A49173: PopAdLdVar
  loc_A49174: FLdPr var_94
  loc_A49177: LateIdCallSt
  loc_A4917F: LitVarI4
  loc_A49187: PopAdLdVar
  loc_A49188: LitVarI4
  loc_A49190: PopAdLdVar
  loc_A49191: LitVarStr var_E4, "Ubicación"
  loc_A49196: PopAdLdVar
  loc_A49197: FLdPr var_94
  loc_A4919A: LateIdCallSt
  loc_A491A2: LitVarI4
  loc_A491AA: PopAdLdVar
  loc_A491AB: LitVarI4
  loc_A491B3: PopAdLdVar
  loc_A491B4: LitVarStr var_E4, "Procedimiento"
  loc_A491B9: PopAdLdVar
  loc_A491BA: FLdPr var_94
  loc_A491BD: LateIdCallSt
  loc_A491C5: LitVarI4
  loc_A491CD: PopAdLdVar
  loc_A491CE: LitVarI4
  loc_A491D6: PopAdLdVar
  loc_A491D7: LitVarStr var_E4, "Alta"
  loc_A491DC: PopAdLdVar
  loc_A491DD: FLdPr var_94
  loc_A491E0: LateIdCallSt
  loc_A491E8: LitVarI4
  loc_A491F0: PopAdLdVar
  loc_A491F1: LitVarI4
  loc_A491F9: PopAdLdVar
  loc_A491FA: LitVarStr var_E4, "Modi"
  loc_A491FF: PopAdLdVar
  loc_A49200: FLdPr var_94
  loc_A49203: LateIdCallSt
  loc_A4920B: LitVarI4
  loc_A49213: PopAdLdVar
  loc_A49214: LitVarI4
  loc_A4921C: PopAdLdVar
  loc_A4921D: LitVarStr var_E4, "Baja"
  loc_A49222: PopAdLdVar
  loc_A49223: FLdPr var_94
  loc_A49226: LateIdCallSt
  loc_A4922E: LitVarI4
  loc_A49236: PopAdLdVar
  loc_A49237: LitVarI4
  loc_A4923F: PopAdLdVar
  loc_A49240: LitVarStr var_E4, vbNullString
  loc_A49245: PopAdLdVar
  loc_A49246: FLdPr var_94
  loc_A49249: LateIdCallSt
  loc_A49251: LitVarI4
  loc_A49259: PopAdLdVar
  loc_A4925A: LitVarI4
  loc_A49262: PopAdLdVar
  loc_A49263: LitVarStr var_E4, vbNullString
  loc_A49268: PopAdLdVar
  loc_A49269: FLdPr var_94
  loc_A4926C: LateIdCallSt
  loc_A49274: LitNothing
  loc_A49276: FStAd var_94 
  loc_A4927A: LitI4 0
  loc_A4927F: LitI4 1
  loc_A49284: FLdRfVar var_F8
  loc_A49287: Redim
  loc_A49291: FLdPr Me
  loc_A49294: MemLdRfVar from_stack_1.global_52
  loc_A49297: NewIfNullAd
  loc_A4929A: FStAd var_FC 
  loc_A4929E: FLdRfVar var_FC
  loc_A492A1: CVarRef
  loc_A492A6: ParmAry1St
  loc_A492AC: FLdPr Me
  loc_A492AF: VCallAd Control_ID_dgdUsuarios
  loc_A492B2: CVarAd
  loc_A492B6: ParmAry1St
  loc_A492BC: FLdRfVar var_F8
  loc_A492BF: ImpAdCallFPR4 Proc_261_7_98D638()
  loc_A492C4: ILdRf var_FC
  loc_A492C7: CastAd
  loc_A492CA: FLdPr Me
  loc_A492CD: MemStAdFunc
  loc_A492D1: FLdRfVar var_F8
  loc_A492D4: Erase
  loc_A492D5: FFree1Ad var_FC
  loc_A492D8: Call Proc_99_10_9AF5C4()
  loc_A492DD: ExitProcHresult
End Sub

Private Sub AccesoFlex_UnknownEvent_0 '980E3C
  'Data Table: 41CA90
  loc_980E08: FLdPr Me
  loc_980E0B: VCallAd Control_ID_AccesoFlex
  loc_980E0E: FStAdFunc var_88
  loc_980E11: FLdPr var_88
  loc_980E14: LateIdLdVar var_98 DispID_13 -32767
  loc_980E1B: CBoolVar
  loc_980E1D: FFree1Ad var_88
  loc_980E20: FFree1Var var_98 = ""
  loc_980E23: BranchF loc_980E3A
  loc_980E26: FLdPr Me
  loc_980E29: VCallAd Control_ID_AccesoFlex
  loc_980E2C: FStAdFunc var_88
  loc_980E2F: FLdRfVar var_88
  loc_980E32: ImpAdCallFPR4 Proc_264_0_9758D8()
  loc_980E37: FFree1Ad var_88
  loc_980E3A: ExitProcHresult
  loc_980E3B: CStr2Ansi
End Sub

Private Sub AccesoFlex_UnknownEvent_1 '980FEC
  'Data Table: 41CA90
  loc_980FB8: FLdPr Me
  loc_980FBB: VCallAd Control_ID_AccesoFlex
  loc_980FBE: FStAdFunc var_88
  loc_980FC1: FLdPr var_88
  loc_980FC4: LateIdLdVar var_98 DispID_13 -32767
  loc_980FCB: CBoolVar
  loc_980FCD: FFree1Ad var_88
  loc_980FD0: FFree1Var var_98 = ""
  loc_980FD3: BranchF loc_980FEA
  loc_980FD6: FLdPr Me
  loc_980FD9: VCallAd Control_ID_AccesoFlex
  loc_980FDC: FStAdFunc var_88
  loc_980FDF: FLdRfVar var_88
  loc_980FE2: ImpAdCallFPR4 Proc_264_1_96D788()
  loc_980FE7: FFree1Ad var_88
  loc_980FEA: ExitProcHresult
End Sub

Private Sub AccesoFlex_Click(arg_18) 'B5BEA0
  'Data Table: 41CA90
  loc_B5B414: FLdPr Me
  loc_B5B417: VCallAd Control_ID_AccesoFlex
  loc_B5B41A: FStAdFunc var_8C
  loc_B5B41D: FLdPr var_8C
  loc_B5B420: LateIdLdVar var_9C DispID_10 0
  loc_B5B427: CI4Var
  loc_B5B429: CVarI4
  loc_B5B42D: PopAdLdVar
  loc_B5B42E: LitVarI4
  loc_B5B436: PopAdLdVar
  loc_B5B437: FLdPr Me
  loc_B5B43A: VCallAd Control_ID_AccesoFlex
  loc_B5B43D: FStAdFunc var_E0
  loc_B5B440: FLdPr var_E0
  loc_B5B443: LateIdCallLdVar
  loc_B5B44D: CStrVarTmp
  loc_B5B44E: FStStrNoPop var_F4
  loc_B5B451: LitStr "0"
  loc_B5B454: NeStr
  loc_B5B456: FFree1Str var_F4
  loc_B5B459: FFreeAd var_8C = ""
  loc_B5B460: FFreeVar var_9C = ""
  loc_B5B467: BranchF loc_B5BE9D
  loc_B5B46A: LitI4 1
  loc_B5B46F: FLdPr Me
  loc_B5B472: VCallAd Control_ID_AccesoFlex
  loc_B5B475: FStAdFunc var_8C
  loc_B5B478: FLdPr var_8C
  loc_B5B47B: LateIdLdVar var_9C DispID_10 0
  loc_B5B482: CI4Var
  loc_B5B484: CVarI4
  loc_B5B488: PopAdLdVar
  loc_B5B489: LitVarI4
  loc_B5B491: PopAdLdVar
  loc_B5B492: FLdPr Me
  loc_B5B495: VCallAd Control_ID_AccesoFlex
  loc_B5B498: FStAdFunc var_E0
  loc_B5B49B: FLdPr var_E0
  loc_B5B49E: LateIdCallLdVar
  loc_B5B4A8: CStrVarTmp
  loc_B5B4A9: FStStrNoPop var_F4
  loc_B5B4AC: LitStr "InfoGov"
  loc_B5B4AF: LitI4 0
  loc_B5B4B4: FnInStr4
  loc_B5B4B6: LitI4 0
  loc_B5B4BB: GtI4
  loc_B5B4BC: FFree1Str var_F4
  loc_B5B4BF: FFreeAd var_8C = ""
  loc_B5B4C6: FFreeVar var_9C = ""
  loc_B5B4CD: BranchF loc_B5B4D3
  loc_B5B4D0: Branch loc_B5BE9D
  loc_B5B4D3: FLdPr Me
  loc_B5B4D6: VCallAd Control_ID_AccesoFlex
  loc_B5B4D9: FStAdFunc var_8C
  loc_B5B4DC: FLdPr var_8C
  loc_B5B4DF: LateIdLdVar var_9C DispID_10 0
  loc_B5B4E6: CI4Var
  loc_B5B4E8: CVarI4
  loc_B5B4EC: PopAdLdVar
  loc_B5B4ED: LitVarI4
  loc_B5B4F5: PopAdLdVar
  loc_B5B4F6: FLdPr Me
  loc_B5B4F9: VCallAd Control_ID_AccesoFlex
  loc_B5B4FC: FStAdFunc var_E0
  loc_B5B4FF: FLdPr var_E0
  loc_B5B502: LateIdCallLdVar
  loc_B5B50C: CStrVarTmp
  loc_B5B50D: FStStrNoPop var_F4
  loc_B5B510: LitStr "Si"
  loc_B5B513: EqStr
  loc_B5B515: FFree1Str var_F4
  loc_B5B518: FFreeAd var_8C = ""
  loc_B5B51F: FFreeVar var_9C = ""
  loc_B5B526: BranchF loc_B5B94C
  loc_B5B529: FLdPr Me
  loc_B5B52C: VCallAd Control_ID_AccesoFlex
  loc_B5B52F: FStAdFunc var_8C
  loc_B5B532: FLdPr var_8C
  loc_B5B535: LateIdLdVar var_9C DispID_11 0
  loc_B5B53C: CI4Var
  loc_B5B53E: LitI4 2
  loc_B5B543: EqI4
  loc_B5B544: FFree1Ad var_8C
  loc_B5B547: FFree1Var var_9C = ""
  loc_B5B54A: BranchF loc_B5B68A
  loc_B5B54D: FLdPr Me
  loc_B5B550: VCallAd Control_ID_AccesoFlex
  loc_B5B553: FStAdFunc var_8C
  loc_B5B556: FLdPr var_8C
  loc_B5B559: LateIdLdVar var_9C DispID_10 0
  loc_B5B560: CI4Var
  loc_B5B562: CVarI4
  loc_B5B566: PopAdLdVar
  loc_B5B567: LitVarI4
  loc_B5B56F: PopAdLdVar
  loc_B5B570: FLdPr Me
  loc_B5B573: VCallAd Control_ID_AccesoFlex
  loc_B5B576: FStAdFunc var_E0
  loc_B5B579: FLdPr var_E0
  loc_B5B57C: LateIdCallLdVar
  loc_B5B586: CStrVarTmp
  loc_B5B587: FStStrNoPop var_F4
  loc_B5B58A: LitStr "Si"
  loc_B5B58D: EqStr
  loc_B5B58F: FFree1Str var_F4
  loc_B5B592: FFreeAd var_8C = ""
  loc_B5B599: FFreeVar var_9C = ""
  loc_B5B5A0: BranchF loc_B5B5ED
  loc_B5B5A3: FLdPr Me
  loc_B5B5A6: VCallAd Control_ID_AccesoFlex
  loc_B5B5A9: FStAdFunc var_8C
  loc_B5B5AC: FLdPr var_8C
  loc_B5B5AF: LateIdLdVar var_9C DispID_10 0
  loc_B5B5B6: CI4Var
  loc_B5B5B8: CVarI4
  loc_B5B5BC: PopAdLdVar
  loc_B5B5BD: LitVarI4
  loc_B5B5C5: PopAdLdVar
  loc_B5B5C6: LitVarStr var_104, "No"
  loc_B5B5CB: PopAdLdVar
  loc_B5B5CC: FLdPr Me
  loc_B5B5CF: VCallAd Control_ID_AccesoFlex
  loc_B5B5D2: FStAdFunc var_E0
  loc_B5B5D5: FLdPr var_E0
  loc_B5B5D8: LateIdCallSt
  loc_B5B5E0: FFreeAd var_8C = ""
  loc_B5B5E7: FFree1Var var_9C = ""
  loc_B5B5EA: Branch loc_B5B68A
  loc_B5B5ED: FLdPr Me
  loc_B5B5F0: VCallAd Control_ID_AccesoFlex
  loc_B5B5F3: FStAdFunc var_8C
  loc_B5B5F6: FLdPr var_8C
  loc_B5B5F9: LateIdLdVar var_9C DispID_10 0
  loc_B5B600: CI4Var
  loc_B5B602: CVarI4
  loc_B5B606: PopAdLdVar
  loc_B5B607: LitVarI4
  loc_B5B60F: PopAdLdVar
  loc_B5B610: FLdPr Me
  loc_B5B613: VCallAd Control_ID_AccesoFlex
  loc_B5B616: FStAdFunc var_E0
  loc_B5B619: FLdPr var_E0
  loc_B5B61C: LateIdCallLdVar
  loc_B5B626: CStrVarTmp
  loc_B5B627: FStStrNoPop var_F4
  loc_B5B62A: LitStr "No"
  loc_B5B62D: EqStr
  loc_B5B62F: FFree1Str var_F4
  loc_B5B632: FFreeAd var_8C = ""
  loc_B5B639: FFreeVar var_9C = ""
  loc_B5B640: BranchF loc_B5B68A
  loc_B5B643: FLdPr Me
  loc_B5B646: VCallAd Control_ID_AccesoFlex
  loc_B5B649: FStAdFunc var_8C
  loc_B5B64C: FLdPr var_8C
  loc_B5B64F: LateIdLdVar var_9C DispID_10 0
  loc_B5B656: CI4Var
  loc_B5B658: CVarI4
  loc_B5B65C: PopAdLdVar
  loc_B5B65D: LitVarI4
  loc_B5B665: PopAdLdVar
  loc_B5B666: LitVarStr var_104, "Si"
  loc_B5B66B: PopAdLdVar
  loc_B5B66C: FLdPr Me
  loc_B5B66F: VCallAd Control_ID_AccesoFlex
  loc_B5B672: FStAdFunc var_E0
  loc_B5B675: FLdPr var_E0
  loc_B5B678: LateIdCallSt
  loc_B5B680: FFreeAd var_8C = ""
  loc_B5B687: FFree1Var var_9C = ""
  loc_B5B68A: FLdPr Me
  loc_B5B68D: VCallAd Control_ID_AccesoFlex
  loc_B5B690: FStAdFunc var_8C
  loc_B5B693: FLdPr var_8C
  loc_B5B696: LateIdLdVar var_9C DispID_11 0
  loc_B5B69D: CI4Var
  loc_B5B69F: LitI4 3
  loc_B5B6A4: EqI4
  loc_B5B6A5: FFree1Ad var_8C
  loc_B5B6A8: FFree1Var var_9C = ""
  loc_B5B6AB: BranchF loc_B5B7EB
  loc_B5B6AE: FLdPr Me
  loc_B5B6B1: VCallAd Control_ID_AccesoFlex
  loc_B5B6B4: FStAdFunc var_8C
  loc_B5B6B7: FLdPr var_8C
  loc_B5B6BA: LateIdLdVar var_9C DispID_10 0
  loc_B5B6C1: CI4Var
  loc_B5B6C3: CVarI4
  loc_B5B6C7: PopAdLdVar
  loc_B5B6C8: LitVarI4
  loc_B5B6D0: PopAdLdVar
  loc_B5B6D1: FLdPr Me
  loc_B5B6D4: VCallAd Control_ID_AccesoFlex
  loc_B5B6D7: FStAdFunc var_E0
  loc_B5B6DA: FLdPr var_E0
  loc_B5B6DD: LateIdCallLdVar
  loc_B5B6E7: CStrVarTmp
  loc_B5B6E8: FStStrNoPop var_F4
  loc_B5B6EB: LitStr "Si"
  loc_B5B6EE: EqStr
  loc_B5B6F0: FFree1Str var_F4
  loc_B5B6F3: FFreeAd var_8C = ""
  loc_B5B6FA: FFreeVar var_9C = ""
  loc_B5B701: BranchF loc_B5B74E
  loc_B5B704: FLdPr Me
  loc_B5B707: VCallAd Control_ID_AccesoFlex
  loc_B5B70A: FStAdFunc var_8C
  loc_B5B70D: FLdPr var_8C
  loc_B5B710: LateIdLdVar var_9C DispID_10 0
  loc_B5B717: CI4Var
  loc_B5B719: CVarI4
  loc_B5B71D: PopAdLdVar
  loc_B5B71E: LitVarI4
  loc_B5B726: PopAdLdVar
  loc_B5B727: LitVarStr var_104, "No"
  loc_B5B72C: PopAdLdVar
  loc_B5B72D: FLdPr Me
  loc_B5B730: VCallAd Control_ID_AccesoFlex
  loc_B5B733: FStAdFunc var_E0
  loc_B5B736: FLdPr var_E0
  loc_B5B739: LateIdCallSt
  loc_B5B741: FFreeAd var_8C = ""
  loc_B5B748: FFree1Var var_9C = ""
  loc_B5B74B: Branch loc_B5B7EB
  loc_B5B74E: FLdPr Me
  loc_B5B751: VCallAd Control_ID_AccesoFlex
  loc_B5B754: FStAdFunc var_8C
  loc_B5B757: FLdPr var_8C
  loc_B5B75A: LateIdLdVar var_9C DispID_10 0
  loc_B5B761: CI4Var
  loc_B5B763: CVarI4
  loc_B5B767: PopAdLdVar
  loc_B5B768: LitVarI4
  loc_B5B770: PopAdLdVar
  loc_B5B771: FLdPr Me
  loc_B5B774: VCallAd Control_ID_AccesoFlex
  loc_B5B777: FStAdFunc var_E0
  loc_B5B77A: FLdPr var_E0
  loc_B5B77D: LateIdCallLdVar
  loc_B5B787: CStrVarTmp
  loc_B5B788: FStStrNoPop var_F4
  loc_B5B78B: LitStr "No"
  loc_B5B78E: EqStr
  loc_B5B790: FFree1Str var_F4
  loc_B5B793: FFreeAd var_8C = ""
  loc_B5B79A: FFreeVar var_9C = ""
  loc_B5B7A1: BranchF loc_B5B7EB
  loc_B5B7A4: FLdPr Me
  loc_B5B7A7: VCallAd Control_ID_AccesoFlex
  loc_B5B7AA: FStAdFunc var_8C
  loc_B5B7AD: FLdPr var_8C
  loc_B5B7B0: LateIdLdVar var_9C DispID_10 0
  loc_B5B7B7: CI4Var
  loc_B5B7B9: CVarI4
  loc_B5B7BD: PopAdLdVar
  loc_B5B7BE: LitVarI4
  loc_B5B7C6: PopAdLdVar
  loc_B5B7C7: LitVarStr var_104, "Si"
  loc_B5B7CC: PopAdLdVar
  loc_B5B7CD: FLdPr Me
  loc_B5B7D0: VCallAd Control_ID_AccesoFlex
  loc_B5B7D3: FStAdFunc var_E0
  loc_B5B7D6: FLdPr var_E0
  loc_B5B7D9: LateIdCallSt
  loc_B5B7E1: FFreeAd var_8C = ""
  loc_B5B7E8: FFree1Var var_9C = ""
  loc_B5B7EB: FLdPr Me
  loc_B5B7EE: VCallAd Control_ID_AccesoFlex
  loc_B5B7F1: FStAdFunc var_8C
  loc_B5B7F4: FLdPr var_8C
  loc_B5B7F7: LateIdLdVar var_9C DispID_11 0
  loc_B5B7FE: CI4Var
  loc_B5B800: LitI4 4
  loc_B5B805: EqI4
  loc_B5B806: FFree1Ad var_8C
  loc_B5B809: FFree1Var var_9C = ""
  loc_B5B80C: BranchF loc_B5B94C
  loc_B5B80F: FLdPr Me
  loc_B5B812: VCallAd Control_ID_AccesoFlex
  loc_B5B815: FStAdFunc var_8C
  loc_B5B818: FLdPr var_8C
  loc_B5B81B: LateIdLdVar var_9C DispID_10 0
  loc_B5B822: CI4Var
  loc_B5B824: CVarI4
  loc_B5B828: PopAdLdVar
  loc_B5B829: LitVarI4
  loc_B5B831: PopAdLdVar
  loc_B5B832: FLdPr Me
  loc_B5B835: VCallAd Control_ID_AccesoFlex
  loc_B5B838: FStAdFunc var_E0
  loc_B5B83B: FLdPr var_E0
  loc_B5B83E: LateIdCallLdVar
  loc_B5B848: CStrVarTmp
  loc_B5B849: FStStrNoPop var_F4
  loc_B5B84C: LitStr "Si"
  loc_B5B84F: EqStr
  loc_B5B851: FFree1Str var_F4
  loc_B5B854: FFreeAd var_8C = ""
  loc_B5B85B: FFreeVar var_9C = ""
  loc_B5B862: BranchF loc_B5B8AF
  loc_B5B865: FLdPr Me
  loc_B5B868: VCallAd Control_ID_AccesoFlex
  loc_B5B86B: FStAdFunc var_8C
  loc_B5B86E: FLdPr var_8C
  loc_B5B871: LateIdLdVar var_9C DispID_10 0
  loc_B5B878: CI4Var
  loc_B5B87A: CVarI4
  loc_B5B87E: PopAdLdVar
  loc_B5B87F: LitVarI4
  loc_B5B887: PopAdLdVar
  loc_B5B888: LitVarStr var_104, "No"
  loc_B5B88D: PopAdLdVar
  loc_B5B88E: FLdPr Me
  loc_B5B891: VCallAd Control_ID_AccesoFlex
  loc_B5B894: FStAdFunc var_E0
  loc_B5B897: FLdPr var_E0
  loc_B5B89A: LateIdCallSt
  loc_B5B8A2: FFreeAd var_8C = ""
  loc_B5B8A9: FFree1Var var_9C = ""
  loc_B5B8AC: Branch loc_B5B94C
  loc_B5B8AF: FLdPr Me
  loc_B5B8B2: VCallAd Control_ID_AccesoFlex
  loc_B5B8B5: FStAdFunc var_8C
  loc_B5B8B8: FLdPr var_8C
  loc_B5B8BB: LateIdLdVar var_9C DispID_10 0
  loc_B5B8C2: CI4Var
  loc_B5B8C4: CVarI4
  loc_B5B8C8: PopAdLdVar
  loc_B5B8C9: LitVarI4
  loc_B5B8D1: PopAdLdVar
  loc_B5B8D2: FLdPr Me
  loc_B5B8D5: VCallAd Control_ID_AccesoFlex
  loc_B5B8D8: FStAdFunc var_E0
  loc_B5B8DB: FLdPr var_E0
  loc_B5B8DE: LateIdCallLdVar
  loc_B5B8E8: CStrVarTmp
  loc_B5B8E9: FStStrNoPop var_F4
  loc_B5B8EC: LitStr "No"
  loc_B5B8EF: EqStr
  loc_B5B8F1: FFree1Str var_F4
  loc_B5B8F4: FFreeAd var_8C = ""
  loc_B5B8FB: FFreeVar var_9C = ""
  loc_B5B902: BranchF loc_B5B94C
  loc_B5B905: FLdPr Me
  loc_B5B908: VCallAd Control_ID_AccesoFlex
  loc_B5B90B: FStAdFunc var_8C
  loc_B5B90E: FLdPr var_8C
  loc_B5B911: LateIdLdVar var_9C DispID_10 0
  loc_B5B918: CI4Var
  loc_B5B91A: CVarI4
  loc_B5B91E: PopAdLdVar
  loc_B5B91F: LitVarI4
  loc_B5B927: PopAdLdVar
  loc_B5B928: LitVarStr var_104, "Si"
  loc_B5B92D: PopAdLdVar
  loc_B5B92E: FLdPr Me
  loc_B5B931: VCallAd Control_ID_AccesoFlex
  loc_B5B934: FStAdFunc var_E0
  loc_B5B937: FLdPr var_E0
  loc_B5B93A: LateIdCallSt
  loc_B5B942: FFreeAd var_8C = ""
  loc_B5B949: FFree1Var var_9C = ""
  loc_B5B94C: FLdPr Me
  loc_B5B94F: VCallAd Control_ID_AccesoFlex
  loc_B5B952: FStAdFunc var_8C
  loc_B5B955: FLdPr var_8C
  loc_B5B958: LateIdLdVar var_9C DispID_11 0
  loc_B5B95F: CI4Var
  loc_B5B961: LitI4 0
  loc_B5B966: EqI4
  loc_B5B967: FLdPr Me
  loc_B5B96A: VCallAd Control_ID_AccesoFlex
  loc_B5B96D: FStAdFunc var_E0
  loc_B5B970: FLdPr var_E0
  loc_B5B973: LateIdLdVar var_F0 DispID_11 0
  loc_B5B97A: CI4Var
  loc_B5B97C: LitI4 1
  loc_B5B981: EqI4
  loc_B5B982: OrI4
  loc_B5B983: FFreeAd var_8C = ""
  loc_B5B98A: FFreeVar var_9C = ""
  loc_B5B991: BranchF loc_B5BABB
  loc_B5B994: LitI2_Byte 0
  loc_B5B996: CUI1I2
  loc_B5B998: FLdRfVar var_86
  loc_B5B99B: LitI2_Byte 4
  loc_B5B99D: CUI1I2
  loc_B5B99F: ForUI1 var_118
  loc_B5B9A5: FLdUI1
  loc_B5B9A9: CI4UI1
  loc_B5B9AA: CVarI4
  loc_B5B9AE: PopAdLdVar
  loc_B5B9AF: FLdPr Me
  loc_B5B9B2: VCallAd Control_ID_AccesoFlex
  loc_B5B9B5: FStAdFunc var_8C
  loc_B5B9B8: FLdPr var_8C
  loc_B5B9BB: LateIdSt
  loc_B5B9C0: FFree1Ad var_8C
  loc_B5B9C3: FLdPr Me
  loc_B5B9C6: VCallAd Control_ID_AccesoFlex
  loc_B5B9C9: FStAdFunc var_8C
  loc_B5B9CC: FLdPr var_8C
  loc_B5B9CF: LateIdLdVar var_9C DispID_38 0
  loc_B5B9D6: CI4Var
  loc_B5B9D8: LitI4 &HFFFF80
  loc_B5B9DD: EqI4
  loc_B5B9DE: FFree1Ad var_8C
  loc_B5B9E1: FFree1Var var_9C = ""
  loc_B5B9E4: BranchF loc_B5BA4E
  loc_B5B9E7: LitVarI4
  loc_B5B9EF: PopAdLdVar
  loc_B5B9F0: FLdPr Me
  loc_B5B9F3: VCallAd Control_ID_AccesoFlex
  loc_B5B9F6: FStAdFunc var_8C
  loc_B5B9F9: FLdPr var_8C
  loc_B5B9FC: LateIdSt
  loc_B5BA01: FFree1Ad var_8C
  loc_B5BA04: FLdPr Me
  loc_B5BA07: VCallAd Control_ID_AccesoFlex
  loc_B5BA0A: FStAdFunc var_8C
  loc_B5BA0D: FLdPr var_8C
  loc_B5BA10: LateIdLdVar var_9C DispID_10 0
  loc_B5BA17: CI4Var
  loc_B5BA19: CVarI4
  loc_B5BA1D: PopAdLdVar
  loc_B5BA1E: LitVarI4
  loc_B5BA26: PopAdLdVar
  loc_B5BA27: LitVarStr var_104, "No"
  loc_B5BA2C: PopAdLdVar
  loc_B5BA2D: FLdPr Me
  loc_B5BA30: VCallAd Control_ID_AccesoFlex
  loc_B5BA33: FStAdFunc var_E0
  loc_B5BA36: FLdPr var_E0
  loc_B5BA39: LateIdCallSt
  loc_B5BA41: FFreeAd var_8C = ""
  loc_B5BA48: FFree1Var var_9C = ""
  loc_B5BA4B: Branch loc_B5BAB2
  loc_B5BA4E: LitVarI4
  loc_B5BA56: PopAdLdVar
  loc_B5BA57: FLdPr Me
  loc_B5BA5A: VCallAd Control_ID_AccesoFlex
  loc_B5BA5D: FStAdFunc var_8C
  loc_B5BA60: FLdPr var_8C
  loc_B5BA63: LateIdSt
  loc_B5BA68: FFree1Ad var_8C
  loc_B5BA6B: FLdPr Me
  loc_B5BA6E: VCallAd Control_ID_AccesoFlex
  loc_B5BA71: FStAdFunc var_8C
  loc_B5BA74: FLdPr var_8C
  loc_B5BA77: LateIdLdVar var_9C DispID_10 0
  loc_B5BA7E: CI4Var
  loc_B5BA80: CVarI4
  loc_B5BA84: PopAdLdVar
  loc_B5BA85: LitVarI4
  loc_B5BA8D: PopAdLdVar
  loc_B5BA8E: LitVarStr var_104, "Si"
  loc_B5BA93: PopAdLdVar
  loc_B5BA94: FLdPr Me
  loc_B5BA97: VCallAd Control_ID_AccesoFlex
  loc_B5BA9A: FStAdFunc var_E0
  loc_B5BA9D: FLdPr var_E0
  loc_B5BAA0: LateIdCallSt
  loc_B5BAA8: FFreeAd var_8C = ""
  loc_B5BAAF: FFree1Var var_9C = ""
  loc_B5BAB2: FLdRfVar var_86
  loc_B5BAB5: NextUI1
  loc_B5BABB: FLdPr Me
  loc_B5BABE: VCallAd Control_ID_AccesoFlex
  loc_B5BAC1: FStAdFunc var_8C
  loc_B5BAC4: FLdPr var_8C
  loc_B5BAC7: LateIdLdVar var_9C DispID_10 0
  loc_B5BACE: CI4Var
  loc_B5BAD0: CVarI4
  loc_B5BAD4: PopAdLdVar
  loc_B5BAD5: LitVarI4
  loc_B5BADD: PopAdLdVar
  loc_B5BADE: FLdPr Me
  loc_B5BAE1: VCallAd Control_ID_AccesoFlex
  loc_B5BAE4: FStAdFunc var_E0
  loc_B5BAE7: FLdPr var_E0
  loc_B5BAEA: LateIdCallLdVar
  loc_B5BAF4: CStrVarTmp
  loc_B5BAF5: FStStrNoPop var_F4
  loc_B5BAF8: LitStr "No"
  loc_B5BAFB: EqStr
  loc_B5BAFD: FFree1Str var_F4
  loc_B5BB00: FFreeAd var_8C = ""
  loc_B5BB07: FFreeVar var_9C = ""
  loc_B5BB0E: BranchF loc_B5BBD2
  loc_B5BB11: LitVarStr var_BC, "DELETE FROM infogov.acceso WHERE CodiUsua = '"
  loc_B5BB16: FLdRfVar var_9C
  loc_B5BB19: FLdRfVar var_11C
  loc_B5BB1C: LitVarStr var_AC, "CodiUsua"
  loc_B5BB21: PopAdLdVar
  loc_B5BB22: FLdRfVar var_E0
  loc_B5BB25: FLdRfVar var_8C
  loc_B5BB28: FLdPr Me
  loc_B5BB2B: MemLdRfVar from_stack_1.global_52
  loc_B5BB2E: NewIfNullPr clsusuario
  loc_B5BB31: from_stack_1v = clsusuario.RsFrmGet()
  loc_B5BB36: FLdPr var_8C
  loc_B5BB39:  = Me.Fields
  loc_B5BB3E: FLdPr var_E0
  loc_B5BB41: from_stack_2 = Me.Item(from_stack_1)
  loc_B5BB46: FLdPr var_11C
  loc_B5BB49:  = Me.Value
  loc_B5BB4E: FLdRfVar var_9C
  loc_B5BB51: ConcatVar var_F0
  loc_B5BB55: LitVarStr var_CC, "' AND CodiMenu = "
  loc_B5BB5A: ConcatVar var_12C
  loc_B5BB5E: FLdPr Me
  loc_B5BB61: VCallAd Control_ID_AccesoFlex
  loc_B5BB64: FStAdFunc var_130
  loc_B5BB67: FLdPr var_130
  loc_B5BB6A: LateIdLdVar var_140 DispID_10 0
  loc_B5BB71: CI4Var
  loc_B5BB73: CVarI4
  loc_B5BB77: PopAdLdVar
  loc_B5BB78: LitVarI4
  loc_B5BB80: PopAdLdVar
  loc_B5BB81: FLdPr Me
  loc_B5BB84: VCallAd Control_ID_AccesoFlex
  loc_B5BB87: FStAdFunc var_154
  loc_B5BB8A: FLdPr var_154
  loc_B5BB8D: LateIdCallLdVar
  loc_B5BB97: CStrVarTmp
  loc_B5BB98: CVarStr var_174
  loc_B5BB9B: ConcatVar var_184
  loc_B5BB9F: CStrVarVal var_F4
  loc_B5BBA3: FLdPr Me
  loc_B5BBA6: MemLdRfVar from_stack_1.global_56
  loc_B5BBA9: NewIfNullPr clsacceso
  loc_B5BBAC: Call clsacceso.EjecutarRsCls(from_stack_1v)
  loc_B5BBB1: FFree1Str var_F4
  loc_B5BBB4: FFreeAd var_8C = "": var_E0 = "": var_11C = "": var_130 = ""
  loc_B5BBC1: FFreeVar var_9C = "": var_F0 = "": var_140 = "": var_164 = "": var_12C = "": var_174 = ""
  loc_B5BBD2: FLdPr Me
  loc_B5BBD5: VCallAd Control_ID_AccesoFlex
  loc_B5BBD8: FStAdFunc var_8C
  loc_B5BBDB: FLdPr var_8C
  loc_B5BBDE: LateIdLdVar var_9C DispID_10 0
  loc_B5BBE5: CI4Var
  loc_B5BBE7: CVarI4
  loc_B5BBEB: PopAdLdVar
  loc_B5BBEC: LitVarI4
  loc_B5BBF4: PopAdLdVar
  loc_B5BBF5: FLdPr Me
  loc_B5BBF8: VCallAd Control_ID_AccesoFlex
  loc_B5BBFB: FStAdFunc var_E0
  loc_B5BBFE: FLdPr var_E0
  loc_B5BC01: LateIdCallLdVar
  loc_B5BC0B: CStrVarTmp
  loc_B5BC0C: FStStrNoPop var_F4
  loc_B5BC0F: LitStr "Si"
  loc_B5BC12: EqStr
  loc_B5BC14: FFree1Str var_F4
  loc_B5BC17: FFreeAd var_8C = ""
  loc_B5BC1E: FFreeVar var_9C = ""
  loc_B5BC25: BranchF loc_B5BE9D
  loc_B5BC28: FLdPr Me
  loc_B5BC2B: VCallAd Control_ID_AccesoFlex
  loc_B5BC2E: FStAdFunc var_1A8
  loc_B5BC31: FLdPr var_1A8
  loc_B5BC34: LateIdLdVar var_1B8 DispID_10 0
  loc_B5BC3B: CI4Var
  loc_B5BC3D: CVarI4
  loc_B5BC41: PopAdLdVar
  loc_B5BC42: LitVarI4
  loc_B5BC4A: PopAdLdVar
  loc_B5BC4B: FLdPr Me
  loc_B5BC4E: VCallAd Control_ID_AccesoFlex
  loc_B5BC51: FStAdFunc var_1FC
  loc_B5BC54: FLdPr var_1FC
  loc_B5BC57: LateIdCallLdVar
  loc_B5BC61: PopAd
  loc_B5BC63: FLdPr Me
  loc_B5BC66: VCallAd Control_ID_AccesoFlex
  loc_B5BC69: FStAdFunc var_2A0
  loc_B5BC6C: FLdPr var_2A0
  loc_B5BC6F: LateIdLdVar var_2B0 DispID_10 0
  loc_B5BC76: CI4Var
  loc_B5BC78: CVarI4
  loc_B5BC7C: PopAdLdVar
  loc_B5BC7D: LitVarI4
  loc_B5BC85: PopAdLdVar
  loc_B5BC86: FLdPr Me
  loc_B5BC89: VCallAd Control_ID_AccesoFlex
  loc_B5BC8C: FStAdFunc var_2F4
  loc_B5BC8F: FLdPr var_2F4
  loc_B5BC92: LateIdCallLdVar
  loc_B5BC9C: PopAd
  loc_B5BC9E: FLdPr Me
  loc_B5BCA1: VCallAd Control_ID_AccesoFlex
  loc_B5BCA4: FStAdFunc var_39C
  loc_B5BCA7: FLdPr var_39C
  loc_B5BCAA: LateIdLdVar var_3AC DispID_10 0
  loc_B5BCB1: CI4Var
  loc_B5BCB3: CVarI4
  loc_B5BCB7: PopAdLdVar
  loc_B5BCB8: LitVarI4
  loc_B5BCC0: PopAdLdVar
  loc_B5BCC1: FLdPr Me
  loc_B5BCC4: VCallAd Control_ID_AccesoFlex
  loc_B5BCC7: FStAdFunc var_3F0
  loc_B5BCCA: FLdPr var_3F0
  loc_B5BCCD: LateIdCallLdVar
  loc_B5BCD7: PopAd
  loc_B5BCD9: LitStr "REPLACE INTO infogov.acceso (CodiUsua,CodiMenu,AltaAcce,ModiAcce,BajaAcce,AudiAcce,ImprAcce,AltaUsua) "
  loc_B5BCDC: LitStr "  VALUES ('"
  loc_B5BCDF: ConcatStr
  loc_B5BCE0: CVarStr var_F0
  loc_B5BCE3: FLdRfVar var_9C
  loc_B5BCE6: FLdRfVar var_11C
  loc_B5BCE9: LitVarStr var_AC, "CodiUsua"
  loc_B5BCEE: PopAdLdVar
  loc_B5BCEF: FLdRfVar var_E0
  loc_B5BCF2: FLdRfVar var_8C
  loc_B5BCF5: FLdPr Me
  loc_B5BCF8: MemLdRfVar from_stack_1.global_52
  loc_B5BCFB: NewIfNullPr clsusuario
  loc_B5BCFE: from_stack_1v = clsusuario.RsFrmGet()
  loc_B5BD03: FLdPr var_8C
  loc_B5BD06:  = Me.Fields
  loc_B5BD0B: FLdPr var_E0
  loc_B5BD0E: from_stack_2 = Me.Item(from_stack_1)
  loc_B5BD13: FLdPr var_11C
  loc_B5BD16:  = Me.Value
  loc_B5BD1B: FLdRfVar var_9C
  loc_B5BD1E: ConcatVar var_12C
  loc_B5BD22: LitVarStr var_BC, "',"
  loc_B5BD27: ConcatVar var_140
  loc_B5BD2B: FLdPr Me
  loc_B5BD2E: VCallAd Control_ID_AccesoFlex
  loc_B5BD31: FStAdFunc var_130
  loc_B5BD34: FLdPr var_130
  loc_B5BD37: LateIdLdVar var_164 DispID_10 0
  loc_B5BD3E: CI4Var
  loc_B5BD40: CVarI4
  loc_B5BD44: PopAdLdVar
  loc_B5BD45: LitVarI4
  loc_B5BD4D: PopAdLdVar
  loc_B5BD4E: FLdPr Me
  loc_B5BD51: VCallAd Control_ID_AccesoFlex
  loc_B5BD54: FStAdFunc var_154
  loc_B5BD57: FLdPr var_154
  loc_B5BD5A: LateIdCallLdVar
  loc_B5BD64: CStrVarTmp
  loc_B5BD65: CVarStr var_184
  loc_B5BD68: ConcatVar var_194
  loc_B5BD6C: LitVarStr var_150, ","
  loc_B5BD71: ConcatVar var_1A4
  loc_B5BD75: LitVarI2 var_25C, 1
  loc_B5BD7A: LitVarI2 var_23C, 0
  loc_B5BD7F: FLdRfVar var_20C
  loc_B5BD82: CStrVarTmp
  loc_B5BD83: FStStrNoPop var_F4
  loc_B5BD86: LitStr "No"
  loc_B5BD89: EqStr
  loc_B5BD8B: CVarBoolI2 var_21C
  loc_B5BD8F: FLdRfVar var_26C
  loc_B5BD92: ImpAdCallFPR4  = IIf(, , )
  loc_B5BD97: FLdRfVar var_26C
  loc_B5BD9A: ConcatVar var_27C
  loc_B5BD9E: LitVarStr var_28C, ","
  loc_B5BDA3: ConcatVar var_29C
  loc_B5BDA7: LitVarI2 var_358, 1
  loc_B5BDAC: LitVarI2 var_338, 0
  loc_B5BDB1: FLdRfVar var_304
  loc_B5BDB4: CStrVarTmp
  loc_B5BDB5: FStStrNoPop var_308
  loc_B5BDB8: LitStr "No"
  loc_B5BDBB: EqStr
  loc_B5BDBD: CVarBoolI2 var_318
  loc_B5BDC1: FLdRfVar var_368
  loc_B5BDC4: ImpAdCallFPR4  = IIf(, , )
  loc_B5BDC9: FLdRfVar var_368
  loc_B5BDCC: ConcatVar var_378
  loc_B5BDD0: LitVarStr var_388, ","
  loc_B5BDD5: ConcatVar var_398
  loc_B5BDD9: LitVarI2 var_454, 1
  loc_B5BDDE: LitVarI2 var_434, 0
  loc_B5BDE3: FLdRfVar var_400
  loc_B5BDE6: CStrVarTmp
  loc_B5BDE7: FStStrNoPop var_404
  loc_B5BDEA: LitStr "No"
  loc_B5BDED: EqStr
  loc_B5BDEF: CVarBoolI2 var_414
  loc_B5BDF3: FLdRfVar var_464
  loc_B5BDF6: ImpAdCallFPR4  = IIf(, , )
  loc_B5BDFB: FLdRfVar var_464
  loc_B5BDFE: ConcatVar var_474
  loc_B5BE02: LitVarStr var_484, ",0,0,'"
  loc_B5BE07: ConcatVar var_494
  loc_B5BE0B: ImpAdLdI4 MemVar_C3D03C
  loc_B5BE0E: CVarStr var_4A4
  loc_B5BE11: ConcatVar var_4B4
  loc_B5BE15: LitVarStr var_4C4, "')"
  loc_B5BE1A: ConcatVar var_4D4
  loc_B5BE1E: CStrVarVal var_4D8
  loc_B5BE22: FLdPr Me
  loc_B5BE25: MemLdRfVar from_stack_1.global_56
  loc_B5BE28: NewIfNullPr clsacceso
  loc_B5BE2B: Call clsacceso.EjecutarRsCls(from_stack_1v)
  loc_B5BE30: FFreeStr var_F4 = "": var_308 = "": var_404 = ""
  loc_B5BE3B: FFreeAd var_8C = "": var_E0 = "": var_11C = "": var_130 = "": var_154 = "": var_1A8 = "": var_1FC = "": var_2A0 = "": var_2F4 = "": var_39C = ""
  loc_B5BE54: FFreeVar var_464 = "": var_474 = "": var_494 = "": var_4B4 = "": var_4D4 = "": var_F0 = "": var_9C = "": var_12C = "": var_164 = "": var_174 = "": var_140 = "": var_184 = "": var_194 = "": var_1B8 = "": var_20C = "": var_21C = "": var_23C = "": var_25C = "": var_1A4 = "": var_26C = "": var_27C = "": var_2B0 = "": var_304 = "": var_318 = "": var_338 = "": var_358 = "": var_29C = "": var_368 = "": var_378 = "": var_3AC = "": var_400 = "": var_414 = "": var_434 = "": var_454 = ""
  loc_B5BE9D: ExitProcHresult
  loc_B5BE9E: FLdFPR4 arg_1800
End Sub

Private Sub AccesoFlex_KeyPress(KeyAscii As Integer) '946744
  'Data Table: 41CA90
  loc_946734: ILdI2 KeyAscii
  loc_946737: LitI2_Byte &H20
  loc_946739: EqI2
  loc_94673A: BranchF loc_946742
  loc_94673D: Call AccesoFlex_Click(from_stack_1v)
  loc_946742: ExitProcHresult
End Sub

Private Function Proc_99_10_9AF5C4() '9AF5C4
  'Data Table: 41CA90
  loc_9AF528: LitI2_Byte 0
  loc_9AF52A: CUI1I2
  loc_9AF52C: FLdPr Me
  loc_9AF52F: MemStUI1
  loc_9AF533: ILdRf Me
  loc_9AF536: CastAd
  loc_9AF539: FStAdFunc var_88
  loc_9AF53C: FLdRfVar var_88
  loc_9AF53F: ImpAdCallFPR4 Proc_261_1_AC96D8()
  loc_9AF544: FFree1Ad var_88
  loc_9AF547: LitI2_Byte 0
  loc_9AF549: LitVarI2 var_A8, 0
  loc_9AF54E: Call dgdUsuarios_RowColChange(from_stack_1v, from_stack_2v)
  loc_9AF553: FFree1Var var_A8 = ""
  loc_9AF556: LitI4 0
  loc_9AF55B: LitI4 0
  loc_9AF560: FLdRfVar var_AC
  loc_9AF563: Redim
  loc_9AF56D: FLdPr Me
  loc_9AF570: VCallAd Control_ID_dgdUsuarios
  loc_9AF573: CVarAd
  loc_9AF577: ParmAry1St
  loc_9AF57D: FLdRfVar var_AC
  loc_9AF580: ImpAdCallFPR4 Proc_261_11_9A3F54()
  loc_9AF585: FLdRfVar var_AC
  loc_9AF588: Erase
  loc_9AF589: FLdPr Me
  loc_9AF58C: MemLdRfVar from_stack_1.global_52
  loc_9AF58F: NewIfNullAd
  loc_9AF592: FStAd var_B0 
  loc_9AF596: FLdRfVar var_B0
  loc_9AF599: CVarRef
  loc_9AF59E: ILdRf Me
  loc_9AF5A1: CastAd
  loc_9AF5A4: FStAdFunc var_88
  loc_9AF5A7: FLdRfVar var_88
  loc_9AF5AA: ImpAdCallFPR4 Proc_261_8_9C2398(, )
  loc_9AF5AF: ILdRf var_B0
  loc_9AF5B2: CastAd
  loc_9AF5B5: FLdPr Me
  loc_9AF5B8: MemStAdFunc
  loc_9AF5BC: FFreeAd var_88 = ""
  loc_9AF5C3: ExitProcHresult
End Function

Private Function Proc_99_11_9E6088() '9E6088
  'Data Table: 41CA90
  loc_9E5F5C: FLdPr Me
  loc_9E5F5F: VCallAd Control_ID_AccesoFlex
  loc_9E5F62: FStAdFunc var_88
  loc_9E5F65: FLdPr var_88
  loc_9E5F68: LateIdCall
  loc_9E5F70: LitVarI4
  loc_9E5F78: PopAdLdVar
  loc_9E5F79: FLdPr var_88
  loc_9E5F7C: LateIdSt
  loc_9E5F81: LitVarI4
  loc_9E5F89: PopAdLdVar
  loc_9E5F8A: LitVarI4
  loc_9E5F92: PopAdLdVar
  loc_9E5F93: LitVarStr var_D8, "Ubicación"
  loc_9E5F98: PopAdLdVar
  loc_9E5F99: FLdPr var_88
  loc_9E5F9C: LateIdCallSt
  loc_9E5FA4: LitVarI4
  loc_9E5FAC: PopAdLdVar
  loc_9E5FAD: LitVarI4
  loc_9E5FB5: PopAdLdVar
  loc_9E5FB6: LitVarStr var_D8, "Procedimiento"
  loc_9E5FBB: PopAdLdVar
  loc_9E5FBC: FLdPr var_88
  loc_9E5FBF: LateIdCallSt
  loc_9E5FC7: LitVarI4
  loc_9E5FCF: PopAdLdVar
  loc_9E5FD0: LitVarI4
  loc_9E5FD8: PopAdLdVar
  loc_9E5FD9: LitVarStr var_D8, "Alta"
  loc_9E5FDE: PopAdLdVar
  loc_9E5FDF: FLdPr var_88
  loc_9E5FE2: LateIdCallSt
  loc_9E5FEA: LitVarI4
  loc_9E5FF2: PopAdLdVar
  loc_9E5FF3: LitVarI4
  loc_9E5FFB: PopAdLdVar
  loc_9E5FFC: LitVarStr var_D8, "Modi"
  loc_9E6001: PopAdLdVar
  loc_9E6002: FLdPr var_88
  loc_9E6005: LateIdCallSt
  loc_9E600D: LitVarI4
  loc_9E6015: PopAdLdVar
  loc_9E6016: LitVarI4
  loc_9E601E: PopAdLdVar
  loc_9E601F: LitVarStr var_D8, "Baja"
  loc_9E6024: PopAdLdVar
  loc_9E6025: FLdPr var_88
  loc_9E6028: LateIdCallSt
  loc_9E6030: LitVarI4
  loc_9E6038: PopAdLdVar
  loc_9E6039: LitVarI4
  loc_9E6041: PopAdLdVar
  loc_9E6042: LitVarStr var_D8, vbNullString
  loc_9E6047: PopAdLdVar
  loc_9E6048: FLdPr var_88
  loc_9E604B: LateIdCallSt
  loc_9E6053: LitVarI4
  loc_9E605B: PopAdLdVar
  loc_9E605C: LitVarI4
  loc_9E6064: PopAdLdVar
  loc_9E6065: LitVarStr var_D8, vbNullString
  loc_9E606A: PopAdLdVar
  loc_9E606B: FLdPr var_88
  loc_9E606E: LateIdCallSt
  loc_9E6076: FLdPr var_88
  loc_9E6079: LateIdCall
  loc_9E6081: LitNothing
  loc_9E6083: FStAd var_88 
  loc_9E6087: ExitProcHresult
End Function
