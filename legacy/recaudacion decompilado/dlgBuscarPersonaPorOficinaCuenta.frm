VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C600A0C90AEA82}#1.0#0"; "C:\WINDOWS\SysWOW64\msdatgrd.ocx"
Begin VB.Form dlgBuscarPersonaPorOficinaCuenta
  Caption = "Buscar Persona Por ..."
  ScaleMode = 1
  AutoRedraw = False
  FontTransparent = True
  BorderStyle = 1 'Fixed Single
  Icon = "dlgBuscarPersonaPorOficinaCuenta.frx":0000
  LinkTopic = "Form1"
  MaxButton = 0   'False
  MinButton = 0   'False
  KeyPreview = -1  'True
  ClientLeft = 2760
  ClientTop = 3756
  ClientWidth = 16176
  ClientHeight = 8424
  StartUpPosition = 2 'CenterScreen
  Begin VB.CommandButton ImprimirCmd
    Left = 10680
    Top = 2640
    Width = 450
    Height = 345
    Enabled = 0   'False
    TabIndex = 14
    Picture = "dlgBuscarPersonaPorOficinaCuenta.frx":08CA
    Style = 1
  End
  Begin VB.TextBox Campo6Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 2640
    Width = 7095
    Height = 360
    TabIndex = 11
    Tag = "0"
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
  Begin VB.TextBox Campo5Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 2160
    Width = 7095
    Height = 360
    TabIndex = 9
    Tag = "0"
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
  Begin VB.TextBox Campo4Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 1680
    Width = 7095
    Height = 360
    TabIndex = 7
    Tag = "0"
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
  Begin VB.TextBox Campo3Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 1200
    Width = 7095
    Height = 360
    TabIndex = 5
    Tag = "0"
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
  Begin VB.TextBox Campo2Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 720
    Width = 1932
    Height = 360
    TabIndex = 3
    Tag = "0"
    MaxLength = 11
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
  Begin VB.TextBox Campo1Txt
    ForeColor = &HFF0000&
    Left = 2640
    Top = 240
    Width = 1932
    Height = 360
    TabIndex = 1
    Tag = "0"
    MaxLength = 13
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
  Begin VB.CommandButton OKButton
    Caption = "Aceptar"
    Left = 360
    Top = 7800
    Width = 1335
    Height = 495
    TabIndex = 13
    Tag = "2"
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
  Begin MSDataGridLib.DataGrid dgdABMS
    Left = 240
    Top = 3240
    Width = 15495
    Height = 4335
    Tag = "1"
    TabIndex = 12
    OleObjectBlob = "dlgBuscarPersonaPorOficinaCuenta.frx":09CC
  End
  Begin VB.Label Label6
    Caption = "Ubicación:"
    Left = 1440
    Top = 2640
    Width = 1110
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
  Begin VB.Label Label5
    Caption = "Barrio:"
    Left = 1800
    Top = 2160
    Width = 690
    Height = 300
    TabIndex = 8
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
    Caption = "Calle:"
    Left = 1920
    Top = 1680
    Width = 585
    Height = 300
    TabIndex = 6
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
  Begin VB.Label Label1
    Caption = "C.U.I.L. - C.U.I.T.:"
    Left = 600
    Top = 240
    Width = 1845
    Height = 300
    TabIndex = 0
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
    Caption = "Apellido y Nombre:"
    Left = 480
    Top = 1200
    Width = 1965
    Height = 300
    TabIndex = 4
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
    Caption = "Cuenta:"
    Left = 1605
    Top = 720
    Width = 840
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

Attribute VB_Name = "dlgBuscarPersonaPorOficinaCuenta"

Public BuscarCLS As New Class
Public bCancela As Boolean


Private Sub Campo6Txt_KeyPress(KeyAscii As Integer) 'AB12B0
  'Data Table: 45FF60
  loc_AB11CC: LitStr vbNullString
  loc_AB11CF: FLdPr Me
  loc_AB11D2: VCallAd Control_ID_Campo1Txt
  loc_AB11D5: FStAdFunc var_88
  loc_AB11D8: FLdPr var_88
  loc_AB11DB: Me.Text = from_stack_1
  loc_AB11E0: FFree1Ad var_88
  loc_AB11E3: LitStr vbNullString
  loc_AB11E6: FLdPr Me
  loc_AB11E9: VCallAd Control_ID_Campo2Txt
  loc_AB11EC: FStAdFunc var_88
  loc_AB11EF: FLdPr var_88
  loc_AB11F2: Me.Text = from_stack_1
  loc_AB11F7: FFree1Ad var_88
  loc_AB11FA: LitStr vbNullString
  loc_AB11FD: FLdPr Me
  loc_AB1200: VCallAd Control_ID_Campo3Txt
  loc_AB1203: FStAdFunc var_88
  loc_AB1206: FLdPr var_88
  loc_AB1209: Me.Text = from_stack_1
  loc_AB120E: FFree1Ad var_88
  loc_AB1211: LitStr vbNullString
  loc_AB1214: FLdPr Me
  loc_AB1217: VCallAd Control_ID_Campo4Txt
  loc_AB121A: FStAdFunc var_88
  loc_AB121D: FLdPr var_88
  loc_AB1220: Me.Text = from_stack_1
  loc_AB1225: FFree1Ad var_88
  loc_AB1228: LitStr vbNullString
  loc_AB122B: FLdPr Me
  loc_AB122E: VCallAd Control_ID_Campo5Txt
  loc_AB1231: FStAdFunc var_88
  loc_AB1234: FLdPr var_88
  loc_AB1237: Me.Text = from_stack_1
  loc_AB123C: FFree1Ad var_88
  loc_AB123F: ImpAdLdUI1
  loc_AB1243: FStUI1 var_8A
  loc_AB1247: FLdUI1
  loc_AB124B: LitI2_Byte 1
  loc_AB124D: CUI1I2
  loc_AB124F: EqI2
  loc_AB1250: BranchF loc_AB1256
  loc_AB1253: Branch loc_AB12AD
  loc_AB1256: FLdUI1
  loc_AB125A: LitI2_Byte 2
  loc_AB125C: CUI1I2
  loc_AB125E: EqI2
  loc_AB125F: BranchF loc_AB1265
  loc_AB1262: Branch loc_AB12AD
  loc_AB1265: FLdUI1
  loc_AB1269: LitI2_Byte 3
  loc_AB126B: CUI1I2
  loc_AB126D: EqI2
  loc_AB126E: BranchF loc_AB1274
  loc_AB1271: Branch loc_AB12AD
  loc_AB1274: FLdUI1
  loc_AB1278: LitI2_Byte 4
  loc_AB127A: CUI1I2
  loc_AB127C: EqI2
  loc_AB127D: BranchF loc_AB1283
  loc_AB1280: Branch loc_AB12AD
  loc_AB1283: FLdUI1
  loc_AB1287: LitI2_Byte 5
  loc_AB1289: CUI1I2
  loc_AB128B: EqI2
  loc_AB128C: BranchF loc_AB1292
  loc_AB128F: Branch loc_AB12AD
  loc_AB1292: FLdUI1
  loc_AB1296: LitI2_Byte 6
  loc_AB1298: CUI1I2
  loc_AB129A: EqI2
  loc_AB129B: BranchF loc_AB12A1
  loc_AB129E: Branch loc_AB12AD
  loc_AB12A1: FLdUI1
  loc_AB12A5: LitI2_Byte 7
  loc_AB12A7: CUI1I2
  loc_AB12A9: EqI2
  loc_AB12AA: BranchF loc_AB12AD
  loc_AB12AD: ExitProcHresult
End Sub

Private Sub Campo5Txt_KeyPress(KeyAscii As Integer) 'B51D98
  'Data Table: 45FF60
  loc_B519FC: LitStr vbNullString
  loc_B519FF: FLdPr Me
  loc_B51A02: VCallAd Control_ID_Campo1Txt
  loc_B51A05: FStAdFunc var_88
  loc_B51A08: FLdPr var_88
  loc_B51A0B: Me.Text = from_stack_1
  loc_B51A10: FFree1Ad var_88
  loc_B51A13: LitStr vbNullString
  loc_B51A16: FLdPr Me
  loc_B51A19: VCallAd Control_ID_Campo2Txt
  loc_B51A1C: FStAdFunc var_88
  loc_B51A1F: FLdPr var_88
  loc_B51A22: Me.Text = from_stack_1
  loc_B51A27: FFree1Ad var_88
  loc_B51A2A: LitStr vbNullString
  loc_B51A2D: FLdPr Me
  loc_B51A30: VCallAd Control_ID_Campo3Txt
  loc_B51A33: FStAdFunc var_88
  loc_B51A36: FLdPr var_88
  loc_B51A39: Me.Text = from_stack_1
  loc_B51A3E: FFree1Ad var_88
  loc_B51A41: LitStr vbNullString
  loc_B51A44: FLdPr Me
  loc_B51A47: VCallAd Control_ID_Campo4Txt
  loc_B51A4A: FStAdFunc var_88
  loc_B51A4D: FLdPr var_88
  loc_B51A50: Me.Text = from_stack_1
  loc_B51A55: FFree1Ad var_88
  loc_B51A58: LitStr vbNullString
  loc_B51A5B: FLdPr Me
  loc_B51A5E: VCallAd Control_ID_Campo6Txt
  loc_B51A61: FStAdFunc var_88
  loc_B51A64: FLdPr var_88
  loc_B51A67: Me.Text = from_stack_1
  loc_B51A6C: FFree1Ad var_88
  loc_B51A6F: ImpAdLdUI1
  loc_B51A73: FStUI1 var_8A
  loc_B51A77: FLdUI1
  loc_B51A7B: LitI2_Byte 1
  loc_B51A7D: CUI1I2
  loc_B51A7F: EqI2
  loc_B51A80: BranchF loc_B51B5D
  loc_B51A83: ILdI2 KeyAscii
  loc_B51A86: CI4UI1
  loc_B51A87: LitI4 &HD
  loc_B51A8C: EqI4
  loc_B51A8D: BranchF loc_B51B5A
  loc_B51A90: LitI2_Byte &HB
  loc_B51A92: FLdPr Me
  loc_B51A95: Me.MousePointer = from_stack_1
  loc_B51A9A: LitStr "SELECT CUIT CucuPers, 1 CodiOfic, vpadrones_persona.nro_padron CuenCtct, denominacion DetaPers, "
  loc_B51A9D: LitStr " IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion"
  loc_B51AA0: ConcatStr
  loc_B51AA1: FStStrNoPop var_90
  loc_B51AA4: LitStr " FROM vpadrones_persona"
  loc_B51AA7: ConcatStr
  loc_B51AA8: FStStrNoPop var_94
  loc_B51AAB: LitStr " INNER JOIN vpadrones_parcela ON vpadrones_parcela.nro_padron = vpadrones_persona.nro_padron"
  loc_B51AAE: ConcatStr
  loc_B51AAF: FStStrNoPop var_98
  loc_B51AB2: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = 1 AND domicilio.CodiCome = vpadrones_persona.nro_padron AND domicilio.Tipo = 'REAL'"
  loc_B51AB5: ConcatStr
  loc_B51AB6: FStStrNoPop var_9C
  loc_B51AB9: LitStr " WHERE domicilio.barrio like '" & Chr(37)
  loc_B51ABC: ConcatStr
  loc_B51ABD: FStStrNoPop var_A4
  loc_B51AC0: FLdRfVar var_A0
  loc_B51AC3: FLdPr Me
  loc_B51AC6: VCallAd Control_ID_Campo5Txt
  loc_B51AC9: FStAdFunc var_88
  loc_B51ACC: FLdPr var_88
  loc_B51ACF:  = Me.Text
  loc_B51AD4: ILdRf var_A0
  loc_B51AD7: ConcatStr
  loc_B51AD8: FStStrNoPop var_A8
  loc_B51ADB: LitStr Chr(37) & "' AND estado = 'Activo' ORDER BY domicilio.barrio"
  loc_B51ADE: ConcatStr
  loc_B51ADF: FStStrNoPop var_AC
  loc_B51AE2: FLdPr Me
  loc_B51AE5: MemLdRfVar from_stack_1.BuscarCLS
  loc_B51AE8: NewIfNullPr clsbase
  loc_B51AEB: Call clsbase.RedefineRS(from_stack_1v)
  loc_B51AF0: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A4 = "": var_A0 = "": var_A8 = ""
  loc_B51B03: FFree1Ad var_88
  loc_B51B06: LitI2_Byte 0
  loc_B51B08: FLdPr Me
  loc_B51B0B: Me.MousePointer = from_stack_1
  loc_B51B10: LitStr "Cantidad de Registros: "
  loc_B51B13: FLdRfVar var_B0
  loc_B51B16: FLdRfVar var_88
  loc_B51B19: FLdPr Me
  loc_B51B1C: MemLdRfVar from_stack_1.BuscarCLS
  loc_B51B1F: NewIfNullPr clsbase
  loc_B51B22: from_stack_1v = clsbase.RsFrmGet()
  loc_B51B27: FLdPr var_88
  loc_B51B2A:  = Me.RecordCount
  loc_B51B2F: ILdRf var_B0
  loc_B51B32: CStrI4
  loc_B51B34: FStStrNoPop var_90
  loc_B51B37: ConcatStr
  loc_B51B38: CVarStr var_C0
  loc_B51B3B: PopAdLdVar
  loc_B51B3C: FLdPr Me
  loc_B51B3F: VCallAd Control_ID_dgdABMS
  loc_B51B42: FStAdFunc var_D4
  loc_B51B45: FLdPr var_D4
  loc_B51B48: LateIdSt
  loc_B51B4D: FFree1Str var_90
  loc_B51B50: FFreeAd var_88 = ""
  loc_B51B57: FFree1Var var_C0 = ""
  loc_B51B5A: Branch loc_B51D96
  loc_B51B5D: FLdUI1
  loc_B51B61: LitI2_Byte 2
  loc_B51B63: CUI1I2
  loc_B51B65: EqI2
  loc_B51B66: BranchF loc_B51C54
  loc_B51B69: ILdI2 KeyAscii
  loc_B51B6C: CI4UI1
  loc_B51B6D: LitI4 &HD
  loc_B51B72: EqI4
  loc_B51B73: BranchF loc_B51C51
  loc_B51B76: LitI2_Byte &HB
  loc_B51B78: FLdPr Me
  loc_B51B7B: Me.MousePointer = from_stack_1
  loc_B51B80: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_B51B83: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_B51B86: ConcatStr
  loc_B51B87: FStStrNoPop var_90
  loc_B51B8A: LitStr " LEFT JOIN comercio ON comercio.CodiCome = relacion.CuenCtct"
  loc_B51B8D: ConcatStr
  loc_B51B8E: FStStrNoPop var_94
  loc_B51B91: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_B51B94: ConcatStr
  loc_B51B95: FStStrNoPop var_98
  loc_B51B98: LitStr " WHERE relacion.CodiOfic = "
  loc_B51B9B: ConcatStr
  loc_B51B9C: FStStrNoPop var_9C
  loc_B51B9F: ImpAdLdUI1
  loc_B51BA3: CStrI2
  loc_B51BA5: FStStrNoPop var_A0
  loc_B51BA8: ConcatStr
  loc_B51BA9: FStStrNoPop var_A4
  loc_B51BAC: LitStr " AND relacion.FebaRela IS NULL AND domicilio.barrio like '" & Chr(37)
  loc_B51BAF: ConcatStr
  loc_B51BB0: FStStrNoPop var_AC
  loc_B51BB3: FLdRfVar var_A8
  loc_B51BB6: FLdPr Me
  loc_B51BB9: VCallAd Control_ID_Campo5Txt
  loc_B51BBC: FStAdFunc var_88
  loc_B51BBF: FLdPr var_88
  loc_B51BC2:  = Me.Text
  loc_B51BC7: ILdRf var_A8
  loc_B51BCA: ConcatStr
  loc_B51BCB: FStStrNoPop var_D8
  loc_B51BCE: LitStr Chr(37) & "' ORDER BY DetaBarr"
  loc_B51BD1: ConcatStr
  loc_B51BD2: FStStrNoPop var_DC
  loc_B51BD5: FLdPr Me
  loc_B51BD8: MemLdRfVar from_stack_1.BuscarCLS
  loc_B51BDB: NewIfNullPr clsbase
  loc_B51BDE: Call clsbase.RedefineRS(from_stack_1v)
  loc_B51BE3: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_AC = "": var_A8 = "": var_D8 = ""
  loc_B51BFA: FFree1Ad var_88
  loc_B51BFD: LitI2_Byte 0
  loc_B51BFF: FLdPr Me
  loc_B51C02: Me.MousePointer = from_stack_1
  loc_B51C07: LitStr "Cantidad de Registros: "
  loc_B51C0A: FLdRfVar var_B0
  loc_B51C0D: FLdRfVar var_88
  loc_B51C10: FLdPr Me
  loc_B51C13: MemLdRfVar from_stack_1.BuscarCLS
  loc_B51C16: NewIfNullPr clsbase
  loc_B51C19: from_stack_1v = clsbase.RsFrmGet()
  loc_B51C1E: FLdPr var_88
  loc_B51C21:  = Me.RecordCount
  loc_B51C26: ILdRf var_B0
  loc_B51C29: CStrI4
  loc_B51C2B: FStStrNoPop var_90
  loc_B51C2E: ConcatStr
  loc_B51C2F: CVarStr var_C0
  loc_B51C32: PopAdLdVar
  loc_B51C33: FLdPr Me
  loc_B51C36: VCallAd Control_ID_dgdABMS
  loc_B51C39: FStAdFunc var_D4
  loc_B51C3C: FLdPr var_D4
  loc_B51C3F: LateIdSt
  loc_B51C44: FFree1Str var_90
  loc_B51C47: FFreeAd var_88 = ""
  loc_B51C4E: FFree1Var var_C0 = ""
  loc_B51C51: Branch loc_B51D96
  loc_B51C54: FLdUI1
  loc_B51C58: LitI2_Byte 3
  loc_B51C5A: CUI1I2
  loc_B51C5C: EqI2
  loc_B51C5D: BranchF loc_B51C63
  loc_B51C60: Branch loc_B51D96
  loc_B51C63: FLdUI1
  loc_B51C67: LitI2_Byte 4
  loc_B51C69: CUI1I2
  loc_B51C6B: EqI2
  loc_B51C6C: BranchF loc_B51C72
  loc_B51C6F: Branch loc_B51D96
  loc_B51C72: FLdUI1
  loc_B51C76: LitI2_Byte 5
  loc_B51C78: CUI1I2
  loc_B51C7A: EqI2
  loc_B51C7B: BranchF loc_B51C81
  loc_B51C7E: Branch loc_B51D96
  loc_B51C81: FLdUI1
  loc_B51C85: LitI2_Byte 6
  loc_B51C87: CUI1I2
  loc_B51C89: EqI2
  loc_B51C8A: BranchF loc_B51D0D
  loc_B51C8D: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_B51C90: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_B51C93: ConcatStr
  loc_B51C94: FStStrNoPop var_90
  loc_B51C97: LitStr " INNER JOIN publicidad ON publicidad.CodiCome = relacion.CuenCtct"
  loc_B51C9A: ConcatStr
  loc_B51C9B: FStStrNoPop var_94
  loc_B51C9E: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_B51CA1: ConcatStr
  loc_B51CA2: FStStrNoPop var_98
  loc_B51CA5: LitStr " WHERE relacion.CodiOfic = "
  loc_B51CA8: ConcatStr
  loc_B51CA9: FStStrNoPop var_9C
  loc_B51CAC: ImpAdLdUI1
  loc_B51CB0: CStrI2
  loc_B51CB2: FStStrNoPop var_A0
  loc_B51CB5: ConcatStr
  loc_B51CB6: FStStrNoPop var_A4
  loc_B51CB9: LitStr " AND relacion.FebaRela IS NULL AND domicilio.barrio like '" & Chr(37)
  loc_B51CBC: ConcatStr
  loc_B51CBD: FStStrNoPop var_AC
  loc_B51CC0: FLdRfVar var_A8
  loc_B51CC3: FLdPr Me
  loc_B51CC6: VCallAd Control_ID_Campo5Txt
  loc_B51CC9: FStAdFunc var_88
  loc_B51CCC: FLdPr var_88
  loc_B51CCF:  = Me.Text
  loc_B51CD4: ILdRf var_A8
  loc_B51CD7: ConcatStr
  loc_B51CD8: FStStrNoPop var_D8
  loc_B51CDB: LitStr Chr(37) & "' ORDER BY DetaBarr"
  loc_B51CDE: ConcatStr
  loc_B51CDF: FStStrNoPop var_DC
  loc_B51CE2: FLdPr Me
  loc_B51CE5: MemLdRfVar from_stack_1.BuscarCLS
  loc_B51CE8: NewIfNullPr clsbase
  loc_B51CEB: Call clsbase.RedefineRS(from_stack_1v)
  loc_B51CF0: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_AC = "": var_A8 = "": var_D8 = ""
  loc_B51D07: FFree1Ad var_88
  loc_B51D0A: Branch loc_B51D96
  loc_B51D0D: FLdUI1
  loc_B51D11: LitI2_Byte 7
  loc_B51D13: CUI1I2
  loc_B51D15: EqI2
  loc_B51D16: BranchF loc_B51D96
  loc_B51D19: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_B51D1C: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_B51D1F: ConcatStr
  loc_B51D20: FStStrNoPop var_90
  loc_B51D23: LitStr " INNER JOIN antena ON antena.CodiCome = relacion.CuenCtct"
  loc_B51D26: ConcatStr
  loc_B51D27: FStStrNoPop var_94
  loc_B51D2A: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_B51D2D: ConcatStr
  loc_B51D2E: FStStrNoPop var_98
  loc_B51D31: LitStr " WHERE relacion.CodiOfic = "
  loc_B51D34: ConcatStr
  loc_B51D35: FStStrNoPop var_9C
  loc_B51D38: ImpAdLdUI1
  loc_B51D3C: CStrI2
  loc_B51D3E: FStStrNoPop var_A0
  loc_B51D41: ConcatStr
  loc_B51D42: FStStrNoPop var_A4
  loc_B51D45: LitStr " AND relacion.FebaRela IS NULL AND domicilio.barrio like '" & Chr(37)
  loc_B51D48: ConcatStr
  loc_B51D49: FStStrNoPop var_AC
  loc_B51D4C: FLdRfVar var_A8
  loc_B51D4F: FLdPr Me
  loc_B51D52: VCallAd Control_ID_Campo5Txt
  loc_B51D55: FStAdFunc var_88
  loc_B51D58: FLdPr var_88
  loc_B51D5B:  = Me.Text
  loc_B51D60: ILdRf var_A8
  loc_B51D63: ConcatStr
  loc_B51D64: FStStrNoPop var_D8
  loc_B51D67: LitStr Chr(37) & "' ORDER BY DetaBarr"
  loc_B51D6A: ConcatStr
  loc_B51D6B: FStStrNoPop var_DC
  loc_B51D6E: FLdPr Me
  loc_B51D71: MemLdRfVar from_stack_1.BuscarCLS
  loc_B51D74: NewIfNullPr clsbase
  loc_B51D77: Call clsbase.RedefineRS(from_stack_1v)
  loc_B51D7C: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_AC = "": var_A8 = "": var_D8 = ""
  loc_B51D93: FFree1Ad var_88
  loc_B51D96: ExitProcHresult
End Sub

Private Sub Campo2Txt_KeyPress(KeyAscii As Integer) 'BCAF40
  'Data Table: 45FF60
  loc_BCA854: LitStr vbNullString
  loc_BCA857: FLdPr Me
  loc_BCA85A: VCallAd Control_ID_Campo1Txt
  loc_BCA85D: FStAdFunc var_88
  loc_BCA860: FLdPr var_88
  loc_BCA863: Me.Text = from_stack_1
  loc_BCA868: FFree1Ad var_88
  loc_BCA86B: LitStr vbNullString
  loc_BCA86E: FLdPr Me
  loc_BCA871: VCallAd Control_ID_Campo3Txt
  loc_BCA874: FStAdFunc var_88
  loc_BCA877: FLdPr var_88
  loc_BCA87A: Me.Text = from_stack_1
  loc_BCA87F: FFree1Ad var_88
  loc_BCA882: LitStr vbNullString
  loc_BCA885: FLdPr Me
  loc_BCA888: VCallAd Control_ID_Campo4Txt
  loc_BCA88B: FStAdFunc var_88
  loc_BCA88E: FLdPr var_88
  loc_BCA891: Me.Text = from_stack_1
  loc_BCA896: FFree1Ad var_88
  loc_BCA899: LitStr vbNullString
  loc_BCA89C: FLdPr Me
  loc_BCA89F: VCallAd Control_ID_Campo5Txt
  loc_BCA8A2: FStAdFunc var_88
  loc_BCA8A5: FLdPr var_88
  loc_BCA8A8: Me.Text = from_stack_1
  loc_BCA8AD: FFree1Ad var_88
  loc_BCA8B0: LitStr vbNullString
  loc_BCA8B3: FLdPr Me
  loc_BCA8B6: VCallAd Control_ID_Campo6Txt
  loc_BCA8B9: FStAdFunc var_88
  loc_BCA8BC: FLdPr var_88
  loc_BCA8BF: Me.Text = from_stack_1
  loc_BCA8C4: FFree1Ad var_88
  loc_BCA8C7: ImpAdLdUI1
  loc_BCA8CB: FStUI1 var_8A
  loc_BCA8CF: FLdUI1
  loc_BCA8D3: LitI2_Byte 1
  loc_BCA8D5: CUI1I2
  loc_BCA8D7: EqI2
  loc_BCA8D8: BranchF loc_BCA9B5
  loc_BCA8DB: ILdI2 KeyAscii
  loc_BCA8DE: CI4UI1
  loc_BCA8DF: LitI4 &HD
  loc_BCA8E4: EqI4
  loc_BCA8E5: BranchF loc_BCA9B2
  loc_BCA8E8: LitI2_Byte &HB
  loc_BCA8EA: FLdPr Me
  loc_BCA8ED: Me.MousePointer = from_stack_1
  loc_BCA8F2: LitStr "SELECT CUIT CucuPers, 1 CodiOfic, vpadrones_persona.nro_padron CuenCtct, denominacion DetaPers, "
  loc_BCA8F5: LitStr " IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion"
  loc_BCA8F8: ConcatStr
  loc_BCA8F9: FStStrNoPop var_90
  loc_BCA8FC: LitStr " FROM vpadrones_persona"
  loc_BCA8FF: ConcatStr
  loc_BCA900: FStStrNoPop var_94
  loc_BCA903: LitStr " INNER JOIN vpadrones_parcela ON vpadrones_parcela.nro_padron = vpadrones_persona.nro_padron"
  loc_BCA906: ConcatStr
  loc_BCA907: FStStrNoPop var_98
  loc_BCA90A: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = 1 AND domicilio.CodiCome = vpadrones_persona.nro_padron AND domicilio.Tipo = 'REAL'"
  loc_BCA90D: ConcatStr
  loc_BCA90E: FStStrNoPop var_9C
  loc_BCA911: LitStr " WHERE vpadrones_persona.nro_padron >= "
  loc_BCA914: ConcatStr
  loc_BCA915: FStStrNoPop var_A4
  loc_BCA918: FLdRfVar var_A0
  loc_BCA91B: FLdPr Me
  loc_BCA91E: VCallAd Control_ID_Campo2Txt
  loc_BCA921: FStAdFunc var_88
  loc_BCA924: FLdPr var_88
  loc_BCA927:  = Me.Text
  loc_BCA92C: ILdRf var_A0
  loc_BCA92F: ConcatStr
  loc_BCA930: FStStrNoPop var_A8
  loc_BCA933: LitStr " AND estado = 'Activo' ORDER BY vpadrones_persona.nro_padron"
  loc_BCA936: ConcatStr
  loc_BCA937: FStStrNoPop var_AC
  loc_BCA93A: FLdPr Me
  loc_BCA93D: MemLdRfVar from_stack_1.BuscarCLS
  loc_BCA940: NewIfNullPr clsbase
  loc_BCA943: Call clsbase.RedefineRS(from_stack_1v)
  loc_BCA948: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A4 = "": var_A0 = "": var_A8 = ""
  loc_BCA95B: FFree1Ad var_88
  loc_BCA95E: LitI2_Byte 0
  loc_BCA960: FLdPr Me
  loc_BCA963: Me.MousePointer = from_stack_1
  loc_BCA968: LitStr "Cantidad de Registros: "
  loc_BCA96B: FLdRfVar var_B0
  loc_BCA96E: FLdRfVar var_88
  loc_BCA971: FLdPr Me
  loc_BCA974: MemLdRfVar from_stack_1.BuscarCLS
  loc_BCA977: NewIfNullPr clsbase
  loc_BCA97A: from_stack_1v = clsbase.RsFrmGet()
  loc_BCA97F: FLdPr var_88
  loc_BCA982:  = Me.RecordCount
  loc_BCA987: ILdRf var_B0
  loc_BCA98A: CStrI4
  loc_BCA98C: FStStrNoPop var_90
  loc_BCA98F: ConcatStr
  loc_BCA990: CVarStr var_C0
  loc_BCA993: PopAdLdVar
  loc_BCA994: FLdPr Me
  loc_BCA997: VCallAd Control_ID_dgdABMS
  loc_BCA99A: FStAdFunc var_D4
  loc_BCA99D: FLdPr var_D4
  loc_BCA9A0: LateIdSt
  loc_BCA9A5: FFree1Str var_90
  loc_BCA9A8: FFreeAd var_88 = ""
  loc_BCA9AF: FFree1Var var_C0 = ""
  loc_BCA9B2: Branch loc_BCAF3D
  loc_BCA9B5: FLdUI1
  loc_BCA9B9: LitI2_Byte 2
  loc_BCA9BB: CUI1I2
  loc_BCA9BD: EqI2
  loc_BCA9BE: BranchF loc_BCAAB5
  loc_BCA9C1: ILdI2 KeyAscii
  loc_BCA9C4: CI4UI1
  loc_BCA9C5: LitI4 &HD
  loc_BCA9CA: EqI4
  loc_BCA9CB: BranchF loc_BCAAB2
  loc_BCA9CE: LitI2_Byte &HB
  loc_BCA9D0: FLdPr Me
  loc_BCA9D3: Me.MousePointer = from_stack_1
  loc_BCA9D8: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, "
  loc_BCA9DB: LitStr " IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_BCA9DE: ConcatStr
  loc_BCA9DF: FStStrNoPop var_90
  loc_BCA9E2: LitStr " INNER JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_BCA9E5: ConcatStr
  loc_BCA9E6: FStStrNoPop var_94
  loc_BCA9E9: LitStr " INNER JOIN comercio ON comercio.CodiCome = relacion.CuenCtct"
  loc_BCA9EC: ConcatStr
  loc_BCA9ED: FStStrNoPop var_98
  loc_BCA9F0: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_BCA9F3: ConcatStr
  loc_BCA9F4: FStStrNoPop var_9C
  loc_BCA9F7: LitStr " WHERE relacion.CodiOfic = "
  loc_BCA9FA: ConcatStr
  loc_BCA9FB: FStStrNoPop var_A0
  loc_BCA9FE: ImpAdLdUI1
  loc_BCAA02: CStrI2
  loc_BCAA04: FStStrNoPop var_A4
  loc_BCAA07: ConcatStr
  loc_BCAA08: FStStrNoPop var_A8
  loc_BCAA0B: LitStr " AND relacion.FebaRela IS NULL AND relacion.CuenCtct like '"
  loc_BCAA0E: ConcatStr
  loc_BCAA0F: FStStrNoPop var_D8
  loc_BCAA12: FLdRfVar var_AC
  loc_BCAA15: FLdPr Me
  loc_BCAA18: VCallAd Control_ID_Campo2Txt
  loc_BCAA1B: FStAdFunc var_88
  loc_BCAA1E: FLdPr var_88
  loc_BCAA21:  = Me.Text
  loc_BCAA26: ILdRf var_AC
  loc_BCAA29: ConcatStr
  loc_BCAA2A: FStStrNoPop var_DC
  loc_BCAA2D: LitStr Chr(37) & "' ORDER BY  relacion.CuenCtct"
  loc_BCAA30: ConcatStr
  loc_BCAA31: FStStrNoPop var_E0
  loc_BCAA34: FLdPr Me
  loc_BCAA37: MemLdRfVar from_stack_1.BuscarCLS
  loc_BCAA3A: NewIfNullPr clsbase
  loc_BCAA3D: Call clsbase.RedefineRS(from_stack_1v)
  loc_BCAA42: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_D8 = "": var_AC = "": var_DC = ""
  loc_BCAA5B: FFree1Ad var_88
  loc_BCAA5E: LitI2_Byte 0
  loc_BCAA60: FLdPr Me
  loc_BCAA63: Me.MousePointer = from_stack_1
  loc_BCAA68: LitStr "Cantidad de Registros: "
  loc_BCAA6B: FLdRfVar var_B0
  loc_BCAA6E: FLdRfVar var_88
  loc_BCAA71: FLdPr Me
  loc_BCAA74: MemLdRfVar from_stack_1.BuscarCLS
  loc_BCAA77: NewIfNullPr clsbase
  loc_BCAA7A: from_stack_1v = clsbase.RsFrmGet()
  loc_BCAA7F: FLdPr var_88
  loc_BCAA82:  = Me.RecordCount
  loc_BCAA87: ILdRf var_B0
  loc_BCAA8A: CStrI4
  loc_BCAA8C: FStStrNoPop var_90
  loc_BCAA8F: ConcatStr
  loc_BCAA90: CVarStr var_C0
  loc_BCAA93: PopAdLdVar
  loc_BCAA94: FLdPr Me
  loc_BCAA97: VCallAd Control_ID_dgdABMS
  loc_BCAA9A: FStAdFunc var_D4
  loc_BCAA9D: FLdPr var_D4
  loc_BCAAA0: LateIdSt
  loc_BCAAA5: FFree1Str var_90
  loc_BCAAA8: FFreeAd var_88 = ""
  loc_BCAAAF: FFree1Var var_C0 = ""
  loc_BCAAB2: Branch loc_BCAF3D
  loc_BCAAB5: FLdUI1
  loc_BCAAB9: LitI2_Byte 3
  loc_BCAABB: CUI1I2
  loc_BCAABD: EqI2
  loc_BCAABE: BranchF loc_BCAB88
  loc_BCAAC1: ILdI2 KeyAscii
  loc_BCAAC4: CI4UI1
  loc_BCAAC5: LitI4 &HD
  loc_BCAACA: EqI4
  loc_BCAACB: BranchF loc_BCAB85
  loc_BCAACE: LitI2_Byte &HB
  loc_BCAAD0: FLdPr Me
  loc_BCAAD3: Me.MousePointer = from_stack_1
  loc_BCAAD8: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, infogov.persona.DecrPers, infogov.persona.NurePers, infogov.persona.DebrPers as DetaBarr, infogov.persona.MarePers as Manzana, infogov.persona.CarePers as Casa, infogov.persona.UbrePers as Ubicacion FROM relacion LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers WHERE relacion.CodiOfic = "
  loc_BCAADB: ImpAdLdUI1
  loc_BCAADF: CStrI2
  loc_BCAAE1: FStStrNoPop var_90
  loc_BCAAE4: ConcatStr
  loc_BCAAE5: FStStrNoPop var_94
  loc_BCAAE8: LitStr " AND relacion.FebaRela IS NULL AND relacion.CuenCtct like '"
  loc_BCAAEB: ConcatStr
  loc_BCAAEC: FStStrNoPop var_9C
  loc_BCAAEF: FLdRfVar var_98
  loc_BCAAF2: FLdPr Me
  loc_BCAAF5: VCallAd Control_ID_Campo2Txt
  loc_BCAAF8: FStAdFunc var_88
  loc_BCAAFB: FLdPr var_88
  loc_BCAAFE:  = Me.Text
  loc_BCAB03: ILdRf var_98
  loc_BCAB06: ConcatStr
  loc_BCAB07: FStStrNoPop var_A0
  loc_BCAB0A: LitStr Chr(37) & "' ORDER BY  relacion.CuenCtct"
  loc_BCAB0D: ConcatStr
  loc_BCAB0E: FStStrNoPop var_A4
  loc_BCAB11: FLdPr Me
  loc_BCAB14: MemLdRfVar from_stack_1.BuscarCLS
  loc_BCAB17: NewIfNullPr clsbase
  loc_BCAB1A: Call clsbase.RedefineRS(from_stack_1v)
  loc_BCAB1F: FFreeStr var_90 = "": var_94 = "": var_9C = "": var_98 = "": var_A0 = ""
  loc_BCAB2E: FFree1Ad var_88
  loc_BCAB31: LitI2_Byte 0
  loc_BCAB33: FLdPr Me
  loc_BCAB36: Me.MousePointer = from_stack_1
  loc_BCAB3B: LitStr "Cantidad de Registros: "
  loc_BCAB3E: FLdRfVar var_B0
  loc_BCAB41: FLdRfVar var_88
  loc_BCAB44: FLdPr Me
  loc_BCAB47: MemLdRfVar from_stack_1.BuscarCLS
  loc_BCAB4A: NewIfNullPr clsbase
  loc_BCAB4D: from_stack_1v = clsbase.RsFrmGet()
  loc_BCAB52: FLdPr var_88
  loc_BCAB55:  = Me.RecordCount
  loc_BCAB5A: ILdRf var_B0
  loc_BCAB5D: CStrI4
  loc_BCAB5F: FStStrNoPop var_90
  loc_BCAB62: ConcatStr
  loc_BCAB63: CVarStr var_C0
  loc_BCAB66: PopAdLdVar
  loc_BCAB67: FLdPr Me
  loc_BCAB6A: VCallAd Control_ID_dgdABMS
  loc_BCAB6D: FStAdFunc var_D4
  loc_BCAB70: FLdPr var_D4
  loc_BCAB73: LateIdSt
  loc_BCAB78: FFree1Str var_90
  loc_BCAB7B: FFreeAd var_88 = ""
  loc_BCAB82: FFree1Var var_C0 = ""
  loc_BCAB85: Branch loc_BCAF3D
  loc_BCAB88: FLdUI1
  loc_BCAB8C: LitI2_Byte 4
  loc_BCAB8E: CUI1I2
  loc_BCAB90: EqI2
  loc_BCAB91: BranchF loc_BCAC7F
  loc_BCAB94: ILdI2 KeyAscii
  loc_BCAB97: CI4UI1
  loc_BCAB98: LitI4 &HD
  loc_BCAB9D: EqI4
  loc_BCAB9E: BranchF loc_BCAC7C
  loc_BCABA1: LitI2_Byte &HB
  loc_BCABA3: FLdPr Me
  loc_BCABA6: Me.MousePointer = from_stack_1
  loc_BCABAB: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, "
  loc_BCABAE: LitStr " IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion "
  loc_BCABB1: ConcatStr
  loc_BCABB2: FStStrNoPop var_90
  loc_BCABB5: LitStr " FROM relacion LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers "
  loc_BCABB8: ConcatStr
  loc_BCABB9: FStStrNoPop var_94
  loc_BCABBC: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'REAL'"
  loc_BCABBF: ConcatStr
  loc_BCABC0: FStStrNoPop var_98
  loc_BCABC3: LitStr " WHERE relacion.CodiOfic = "
  loc_BCABC6: ConcatStr
  loc_BCABC7: FStStrNoPop var_9C
  loc_BCABCA: ImpAdLdUI1
  loc_BCABCE: CStrI2
  loc_BCABD0: FStStrNoPop var_A0
  loc_BCABD3: ConcatStr
  loc_BCABD4: FStStrNoPop var_A4
  loc_BCABD7: LitStr " AND relacion.FebaRela IS NULL AND relacion.CuenCtct like '"
  loc_BCABDA: ConcatStr
  loc_BCABDB: FStStrNoPop var_AC
  loc_BCABDE: FLdRfVar var_A8
  loc_BCABE1: FLdPr Me
  loc_BCABE4: VCallAd Control_ID_Campo2Txt
  loc_BCABE7: FStAdFunc var_88
  loc_BCABEA: FLdPr var_88
  loc_BCABED:  = Me.Text
  loc_BCABF2: ILdRf var_A8
  loc_BCABF5: ConcatStr
  loc_BCABF6: FStStrNoPop var_D8
  loc_BCABF9: LitStr Chr(37) & "' ORDER BY  relacion.CuenCtct"
  loc_BCABFC: ConcatStr
  loc_BCABFD: FStStrNoPop var_DC
  loc_BCAC00: FLdPr Me
  loc_BCAC03: MemLdRfVar from_stack_1.BuscarCLS
  loc_BCAC06: NewIfNullPr clsbase
  loc_BCAC09: Call clsbase.RedefineRS(from_stack_1v)
  loc_BCAC0E: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_AC = "": var_A8 = "": var_D8 = ""
  loc_BCAC25: FFree1Ad var_88
  loc_BCAC28: LitI2_Byte 0
  loc_BCAC2A: FLdPr Me
  loc_BCAC2D: Me.MousePointer = from_stack_1
  loc_BCAC32: LitStr "Cantidad de Registros: "
  loc_BCAC35: FLdRfVar var_B0
  loc_BCAC38: FLdRfVar var_88
  loc_BCAC3B: FLdPr Me
  loc_BCAC3E: MemLdRfVar from_stack_1.BuscarCLS
  loc_BCAC41: NewIfNullPr clsbase
  loc_BCAC44: from_stack_1v = clsbase.RsFrmGet()
  loc_BCAC49: FLdPr var_88
  loc_BCAC4C:  = Me.RecordCount
  loc_BCAC51: ILdRf var_B0
  loc_BCAC54: CStrI4
  loc_BCAC56: FStStrNoPop var_90
  loc_BCAC59: ConcatStr
  loc_BCAC5A: CVarStr var_C0
  loc_BCAC5D: PopAdLdVar
  loc_BCAC5E: FLdPr Me
  loc_BCAC61: VCallAd Control_ID_dgdABMS
  loc_BCAC64: FStAdFunc var_D4
  loc_BCAC67: FLdPr var_D4
  loc_BCAC6A: LateIdSt
  loc_BCAC6F: FFree1Str var_90
  loc_BCAC72: FFreeAd var_88 = ""
  loc_BCAC79: FFree1Var var_C0 = ""
  loc_BCAC7C: Branch loc_BCAF3D
  loc_BCAC7F: FLdUI1
  loc_BCAC83: LitI2_Byte 5
  loc_BCAC85: CUI1I2
  loc_BCAC87: EqI2
  loc_BCAC88: BranchF loc_BCAD52
  loc_BCAC8B: ILdI2 KeyAscii
  loc_BCAC8E: CI4UI1
  loc_BCAC8F: LitI4 &HD
  loc_BCAC94: EqI4
  loc_BCAC95: BranchF loc_BCAD4F
  loc_BCAC98: LitI2_Byte &HB
  loc_BCAC9A: FLdPr Me
  loc_BCAC9D: Me.MousePointer = from_stack_1
  loc_BCACA2: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, IFNULL(infogov.persona.DetaPers,'') DetaPers, IFNULL(infogov.persona.DecrPers,'') DecrPers, IFNULL(infogov.persona.NurePers,'0')NurePers , IFNULL(infogov.persona.DebrPers,'') as DetaBarr, IFNULL(infogov.persona.MarePers,'') as Manzana, IFNULL(infogov.persona.CarePers,'') as Casa, IFNULL(infogov.persona.UbrePers,'') as Ubicacion FROM relacion LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers WHERE relacion.CodiOfic = "
  loc_BCACA5: ImpAdLdUI1
  loc_BCACA9: CStrI2
  loc_BCACAB: FStStrNoPop var_90
  loc_BCACAE: ConcatStr
  loc_BCACAF: FStStrNoPop var_94
  loc_BCACB2: LitStr " AND relacion.FebaRela IS NULL AND relacion.CuenCtct like '"
  loc_BCACB5: ConcatStr
  loc_BCACB6: FStStrNoPop var_9C
  loc_BCACB9: FLdRfVar var_98
  loc_BCACBC: FLdPr Me
  loc_BCACBF: VCallAd Control_ID_Campo2Txt
  loc_BCACC2: FStAdFunc var_88
  loc_BCACC5: FLdPr var_88
  loc_BCACC8:  = Me.Text
  loc_BCACCD: ILdRf var_98
  loc_BCACD0: ConcatStr
  loc_BCACD1: FStStrNoPop var_A0
  loc_BCACD4: LitStr Chr(37) & "' ORDER BY  relacion.CuenCtct"
  loc_BCACD7: ConcatStr
  loc_BCACD8: FStStrNoPop var_A4
  loc_BCACDB: FLdPr Me
  loc_BCACDE: MemLdRfVar from_stack_1.BuscarCLS
  loc_BCACE1: NewIfNullPr clsbase
  loc_BCACE4: Call clsbase.RedefineRS(from_stack_1v)
  loc_BCACE9: FFreeStr var_90 = "": var_94 = "": var_9C = "": var_98 = "": var_A0 = ""
  loc_BCACF8: FFree1Ad var_88
  loc_BCACFB: LitI2_Byte 0
  loc_BCACFD: FLdPr Me
  loc_BCAD00: Me.MousePointer = from_stack_1
  loc_BCAD05: LitStr "Cantidad de Registros: "
  loc_BCAD08: FLdRfVar var_B0
  loc_BCAD0B: FLdRfVar var_88
  loc_BCAD0E: FLdPr Me
  loc_BCAD11: MemLdRfVar from_stack_1.BuscarCLS
  loc_BCAD14: NewIfNullPr clsbase
  loc_BCAD17: from_stack_1v = clsbase.RsFrmGet()
  loc_BCAD1C: FLdPr var_88
  loc_BCAD1F:  = Me.RecordCount
  loc_BCAD24: ILdRf var_B0
  loc_BCAD27: CStrI4
  loc_BCAD29: FStStrNoPop var_90
  loc_BCAD2C: ConcatStr
  loc_BCAD2D: CVarStr var_C0
  loc_BCAD30: PopAdLdVar
  loc_BCAD31: FLdPr Me
  loc_BCAD34: VCallAd Control_ID_dgdABMS
  loc_BCAD37: FStAdFunc var_D4
  loc_BCAD3A: FLdPr var_D4
  loc_BCAD3D: LateIdSt
  loc_BCAD42: FFree1Str var_90
  loc_BCAD45: FFreeAd var_88 = ""
  loc_BCAD4C: FFree1Var var_C0 = ""
  loc_BCAD4F: Branch loc_BCAF3D
  loc_BCAD52: FLdUI1
  loc_BCAD56: LitI2_Byte 6
  loc_BCAD58: CUI1I2
  loc_BCAD5A: EqI2
  loc_BCAD5B: BranchF loc_BCAE49
  loc_BCAD5E: ILdI2 KeyAscii
  loc_BCAD61: CI4UI1
  loc_BCAD62: LitI4 &HD
  loc_BCAD67: EqI4
  loc_BCAD68: BranchF loc_BCAE46
  loc_BCAD6B: LitI2_Byte &HB
  loc_BCAD6D: FLdPr Me
  loc_BCAD70: Me.MousePointer = from_stack_1
  loc_BCAD75: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_BCAD78: LitStr " INNER JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_BCAD7B: ConcatStr
  loc_BCAD7C: FStStrNoPop var_90
  loc_BCAD7F: LitStr " INNER JOIN publicidad ON publicidad.CodiCome = relacion.CuenCtct"
  loc_BCAD82: ConcatStr
  loc_BCAD83: FStStrNoPop var_94
  loc_BCAD86: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_BCAD89: ConcatStr
  loc_BCAD8A: FStStrNoPop var_98
  loc_BCAD8D: LitStr " WHERE relacion.CodiOfic = "
  loc_BCAD90: ConcatStr
  loc_BCAD91: FStStrNoPop var_9C
  loc_BCAD94: ImpAdLdUI1
  loc_BCAD98: CStrI2
  loc_BCAD9A: FStStrNoPop var_A0
  loc_BCAD9D: ConcatStr
  loc_BCAD9E: FStStrNoPop var_A4
  loc_BCADA1: LitStr " AND relacion.FebaRela IS NULL AND relacion.CuenCtct like '"
  loc_BCADA4: ConcatStr
  loc_BCADA5: FStStrNoPop var_AC
  loc_BCADA8: FLdRfVar var_A8
  loc_BCADAB: FLdPr Me
  loc_BCADAE: VCallAd Control_ID_Campo2Txt
  loc_BCADB1: FStAdFunc var_88
  loc_BCADB4: FLdPr var_88
  loc_BCADB7:  = Me.Text
  loc_BCADBC: ILdRf var_A8
  loc_BCADBF: ConcatStr
  loc_BCADC0: FStStrNoPop var_D8
  loc_BCADC3: LitStr Chr(37) & "' ORDER BY  relacion.CuenCtct"
  loc_BCADC6: ConcatStr
  loc_BCADC7: FStStrNoPop var_DC
  loc_BCADCA: FLdPr Me
  loc_BCADCD: MemLdRfVar from_stack_1.BuscarCLS
  loc_BCADD0: NewIfNullPr clsbase
  loc_BCADD3: Call clsbase.RedefineRS(from_stack_1v)
  loc_BCADD8: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_AC = "": var_A8 = "": var_D8 = ""
  loc_BCADEF: FFree1Ad var_88
  loc_BCADF2: LitI2_Byte 0
  loc_BCADF4: FLdPr Me
  loc_BCADF7: Me.MousePointer = from_stack_1
  loc_BCADFC: LitStr "Cantidad de Registros: "
  loc_BCADFF: FLdRfVar var_B0
  loc_BCAE02: FLdRfVar var_88
  loc_BCAE05: FLdPr Me
  loc_BCAE08: MemLdRfVar from_stack_1.BuscarCLS
  loc_BCAE0B: NewIfNullPr clsbase
  loc_BCAE0E: from_stack_1v = clsbase.RsFrmGet()
  loc_BCAE13: FLdPr var_88
  loc_BCAE16:  = Me.RecordCount
  loc_BCAE1B: ILdRf var_B0
  loc_BCAE1E: CStrI4
  loc_BCAE20: FStStrNoPop var_90
  loc_BCAE23: ConcatStr
  loc_BCAE24: CVarStr var_C0
  loc_BCAE27: PopAdLdVar
  loc_BCAE28: FLdPr Me
  loc_BCAE2B: VCallAd Control_ID_dgdABMS
  loc_BCAE2E: FStAdFunc var_D4
  loc_BCAE31: FLdPr var_D4
  loc_BCAE34: LateIdSt
  loc_BCAE39: FFree1Str var_90
  loc_BCAE3C: FFreeAd var_88 = ""
  loc_BCAE43: FFree1Var var_C0 = ""
  loc_BCAE46: Branch loc_BCAF3D
  loc_BCAE49: FLdUI1
  loc_BCAE4D: LitI2_Byte 7
  loc_BCAE4F: CUI1I2
  loc_BCAE51: EqI2
  loc_BCAE52: BranchF loc_BCAF3D
  loc_BCAE55: ILdI2 KeyAscii
  loc_BCAE58: CI4UI1
  loc_BCAE59: LitI4 &HD
  loc_BCAE5E: EqI4
  loc_BCAE5F: BranchF loc_BCAF3D
  loc_BCAE62: LitI2_Byte &HB
  loc_BCAE64: FLdPr Me
  loc_BCAE67: Me.MousePointer = from_stack_1
  loc_BCAE6C: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_BCAE6F: LitStr " INNER JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_BCAE72: ConcatStr
  loc_BCAE73: FStStrNoPop var_90
  loc_BCAE76: LitStr " INNER JOIN antena ON antena.CodiCome = relacion.CuenCtct"
  loc_BCAE79: ConcatStr
  loc_BCAE7A: FStStrNoPop var_94
  loc_BCAE7D: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_BCAE80: ConcatStr
  loc_BCAE81: FStStrNoPop var_98
  loc_BCAE84: LitStr " WHERE relacion.CodiOfic = "
  loc_BCAE87: ConcatStr
  loc_BCAE88: FStStrNoPop var_9C
  loc_BCAE8B: ImpAdLdUI1
  loc_BCAE8F: CStrI2
  loc_BCAE91: FStStrNoPop var_A0
  loc_BCAE94: ConcatStr
  loc_BCAE95: FStStrNoPop var_A4
  loc_BCAE98: LitStr " AND relacion.FebaRela IS NULL AND relacion.CuenCtct like '"
  loc_BCAE9B: ConcatStr
  loc_BCAE9C: FStStrNoPop var_AC
  loc_BCAE9F: FLdRfVar var_A8
  loc_BCAEA2: FLdPr Me
  loc_BCAEA5: VCallAd Control_ID_Campo2Txt
  loc_BCAEA8: FStAdFunc var_88
  loc_BCAEAB: FLdPr var_88
  loc_BCAEAE:  = Me.Text
  loc_BCAEB3: ILdRf var_A8
  loc_BCAEB6: ConcatStr
  loc_BCAEB7: FStStrNoPop var_D8
  loc_BCAEBA: LitStr Chr(37) & "' ORDER BY  relacion.CuenCtct"
  loc_BCAEBD: ConcatStr
  loc_BCAEBE: FStStrNoPop var_DC
  loc_BCAEC1: FLdPr Me
  loc_BCAEC4: MemLdRfVar from_stack_1.BuscarCLS
  loc_BCAEC7: NewIfNullPr clsbase
  loc_BCAECA: Call clsbase.RedefineRS(from_stack_1v)
  loc_BCAECF: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_AC = "": var_A8 = "": var_D8 = ""
  loc_BCAEE6: FFree1Ad var_88
  loc_BCAEE9: LitI2_Byte 0
  loc_BCAEEB: FLdPr Me
  loc_BCAEEE: Me.MousePointer = from_stack_1
  loc_BCAEF3: LitStr "Cantidad de Registros: "
  loc_BCAEF6: FLdRfVar var_B0
  loc_BCAEF9: FLdRfVar var_88
  loc_BCAEFC: FLdPr Me
  loc_BCAEFF: MemLdRfVar from_stack_1.BuscarCLS
  loc_BCAF02: NewIfNullPr clsbase
  loc_BCAF05: from_stack_1v = clsbase.RsFrmGet()
  loc_BCAF0A: FLdPr var_88
  loc_BCAF0D:  = Me.RecordCount
  loc_BCAF12: ILdRf var_B0
  loc_BCAF15: CStrI4
  loc_BCAF17: FStStrNoPop var_90
  loc_BCAF1A: ConcatStr
  loc_BCAF1B: CVarStr var_C0
  loc_BCAF1E: PopAdLdVar
  loc_BCAF1F: FLdPr Me
  loc_BCAF22: VCallAd Control_ID_dgdABMS
  loc_BCAF25: FStAdFunc var_D4
  loc_BCAF28: FLdPr var_D4
  loc_BCAF2B: LateIdSt
  loc_BCAF30: FFree1Str var_90
  loc_BCAF33: FFreeAd var_88 = ""
  loc_BCAF3A: FFree1Var var_C0 = ""
  loc_BCAF3D: ExitProcHresult
End Sub

Private Sub Campo1Txt_KeyPress(KeyAscii As Integer) 'C37EF0
  'Data Table: 45FF60
  loc_C3737C: LitStr vbNullString
  loc_C3737F: FLdPr Me
  loc_C37382: VCallAd Control_ID_Campo2Txt
  loc_C37385: FStAdFunc var_88
  loc_C37388: FLdPr var_88
  loc_C3738B: Me.Text = from_stack_1
  loc_C37390: FFree1Ad var_88
  loc_C37393: LitStr vbNullString
  loc_C37396: FLdPr Me
  loc_C37399: VCallAd Control_ID_Campo3Txt
  loc_C3739C: FStAdFunc var_88
  loc_C3739F: FLdPr var_88
  loc_C373A2: Me.Text = from_stack_1
  loc_C373A7: FFree1Ad var_88
  loc_C373AA: LitStr vbNullString
  loc_C373AD: FLdPr Me
  loc_C373B0: VCallAd Control_ID_Campo4Txt
  loc_C373B3: FStAdFunc var_88
  loc_C373B6: FLdPr var_88
  loc_C373B9: Me.Text = from_stack_1
  loc_C373BE: FFree1Ad var_88
  loc_C373C1: LitStr vbNullString
  loc_C373C4: FLdPr Me
  loc_C373C7: VCallAd Control_ID_Campo5Txt
  loc_C373CA: FStAdFunc var_88
  loc_C373CD: FLdPr var_88
  loc_C373D0: Me.Text = from_stack_1
  loc_C373D5: FFree1Ad var_88
  loc_C373D8: LitStr vbNullString
  loc_C373DB: FLdPr Me
  loc_C373DE: VCallAd Control_ID_Campo6Txt
  loc_C373E1: FStAdFunc var_88
  loc_C373E4: FLdPr var_88
  loc_C373E7: Me.Text = from_stack_1
  loc_C373EC: FFree1Ad var_88
  loc_C373EF: ImpAdLdUI1
  loc_C373F3: FStUI1 var_8A
  loc_C373F7: FLdUI1
  loc_C373FB: LitI2_Byte 1
  loc_C373FD: CUI1I2
  loc_C373FF: EqI2
  loc_C37400: BranchF loc_C3765B
  loc_C37403: ILdI2 KeyAscii
  loc_C37406: CI4UI1
  loc_C37407: LitI4 &HD
  loc_C3740C: EqI4
  loc_C3740D: BranchF loc_C37658
  loc_C37410: LitI2_Byte &HB
  loc_C37412: FLdPr Me
  loc_C37415: Me.MousePointer = from_stack_1
  loc_C3741A: FLdRfVar var_A0
  loc_C3741D: FLdPr Me
  loc_C37420: VCallAd Control_ID_Campo1Txt
  loc_C37423: FStAdFunc var_88
  loc_C37426: FLdPr var_88
  loc_C37429:  = Me.Text
  loc_C3742E: FLdRfVar var_A8
  loc_C37431: FLdPr Me
  loc_C37434: VCallAd Control_ID_Campo1Txt
  loc_C37437: FStAdFunc var_A4
  loc_C3743A: FLdPr var_A4
  loc_C3743D:  = Me.Text
  loc_C37442: LitI4 1
  loc_C37447: LitI4 1
  loc_C3744C: LitVarStr var_C8, "##-########-#"
  loc_C37451: FStVarCopyObj var_D8
  loc_C37454: FLdRfVar var_D8
  loc_C37457: FLdZeroAd var_A8
  loc_C3745A: CVarStr var_B8
  loc_C3745D: FLdRfVar var_E8
  loc_C37460: ImpAdCallFPR4  = Format(, )
  loc_C37465: LitStr "SELECT CUIT CucuPers, 1 CodiOfic, vpadrones_persona.nro_padron CuenCtct, denominacion DetaPers, "
  loc_C37468: LitStr " IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion"
  loc_C3746B: ConcatStr
  loc_C3746C: FStStrNoPop var_90
  loc_C3746F: LitStr " FROM vpadrones_persona"
  loc_C37472: ConcatStr
  loc_C37473: FStStrNoPop var_94
  loc_C37476: LitStr " INNER JOIN vpadrones_parcela ON vpadrones_parcela.nro_padron = vpadrones_persona.nro_padron"
  loc_C37479: ConcatStr
  loc_C3747A: FStStrNoPop var_98
  loc_C3747D: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = 1 AND domicilio.CodiCome = vpadrones_persona.nro_padron AND domicilio.Tipo = 'REAL'"
  loc_C37480: ConcatStr
  loc_C37481: FStStrNoPop var_9C
  loc_C37484: LitStr " WHERE CUIT like '" & Chr(37)
  loc_C37487: ConcatStr
  loc_C37488: CVarStr var_130
  loc_C3748B: FLdRfVar var_F0
  loc_C3748E: FLdPr Me
  loc_C37491: VCallAd Control_ID_Campo1Txt
  loc_C37494: FStAdFunc var_EC
  loc_C37497: FLdPr var_EC
  loc_C3749A:  = Me.Text
  loc_C3749F: FLdZeroAd var_F0
  loc_C374A2: CVarStr var_110
  loc_C374A5: FLdRfVar var_E8
  loc_C374A8: ILdRf var_A0
  loc_C374AB: FnLenStr
  loc_C374AC: LitI4 &HB
  loc_C374B1: EqI4
  loc_C374B2: CVarBoolI2 var_100
  loc_C374B6: FLdRfVar var_120
  loc_C374B9: ImpAdCallFPR4  = IIf(, , )
  loc_C374BE: FLdRfVar var_120
  loc_C374C1: ConcatVar var_140
  loc_C374C5: LitVarStr var_150, Chr(37) & "' AND estado = 'Activo' ORDER BY CUIT"
  loc_C374CA: ConcatVar var_160
  loc_C374CE: CStrVarVal var_164
  loc_C374D2: FLdPr Me
  loc_C374D5: MemLdRfVar from_stack_1.BuscarCLS
  loc_C374D8: NewIfNullPr clsbase
  loc_C374DB: Call clsbase.RedefineRS(from_stack_1v)
  loc_C374E0: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_C374EF: FFreeAd var_88 = "": var_A4 = ""
  loc_C374F8: FFreeVar var_B8 = "": var_D8 = "": var_100 = "": var_E8 = "": var_110 = "": var_130 = "": var_120 = "": var_140 = ""
  loc_C3750D: LitI2_Byte 1
  loc_C3750F: CUI1I2
  loc_C37511: FLdPr Me
  loc_C37514: MemStUI1
  loc_C37518: FLdRfVar var_A0
  loc_C3751B: FLdPr Me
  loc_C3751E: VCallAd Control_ID_Campo1Txt
  loc_C37521: FStAdFunc var_88
  loc_C37524: FLdPr var_88
  loc_C37527:  = Me.Text
  loc_C3752C: FLdRfVar var_A8
  loc_C3752F: FLdPr Me
  loc_C37532: VCallAd Control_ID_Campo1Txt
  loc_C37535: FStAdFunc var_A4
  loc_C37538: FLdPr var_A4
  loc_C3753B:  = Me.Text
  loc_C37540: LitI4 1
  loc_C37545: LitI4 1
  loc_C3754A: LitVarStr var_C8, "##-########-#"
  loc_C3754F: FStVarCopyObj var_D8
  loc_C37552: FLdRfVar var_D8
  loc_C37555: FLdZeroAd var_A8
  loc_C37558: CVarStr var_B8
  loc_C3755B: FLdRfVar var_E8
  loc_C3755E: ImpAdCallFPR4  = Format(, )
  loc_C37563: LitStr "SELECT CUIT CucuPers, 1 CodiOfic, vpadrones_persona.nro_padron CuenCtct, denominacion DetaPers, "
  loc_C37566: LitStr " IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion"
  loc_C37569: ConcatStr
  loc_C3756A: FStStrNoPop var_90
  loc_C3756D: LitStr " FROM vpadrones_persona"
  loc_C37570: ConcatStr
  loc_C37571: FStStrNoPop var_94
  loc_C37574: LitStr " INNER JOIN vpadrones_parcela ON vpadrones_parcela.nro_padron = vpadrones_persona.nro_padron"
  loc_C37577: ConcatStr
  loc_C37578: FStStrNoPop var_98
  loc_C3757B: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = 1 AND domicilio.CodiCome = vpadrones_persona.nro_padron AND domicilio.Tipo = 'REAL'"
  loc_C3757E: ConcatStr
  loc_C3757F: FStStrNoPop var_9C
  loc_C37582: LitStr " WHERE CUIT like '" & Chr(37)
  loc_C37585: ConcatStr
  loc_C37586: CVarStr var_130
  loc_C37589: FLdRfVar var_F0
  loc_C3758C: FLdPr Me
  loc_C3758F: VCallAd Control_ID_Campo1Txt
  loc_C37592: FStAdFunc var_EC
  loc_C37595: FLdPr var_EC
  loc_C37598:  = Me.Text
  loc_C3759D: FLdZeroAd var_F0
  loc_C375A0: CVarStr var_110
  loc_C375A3: FLdRfVar var_E8
  loc_C375A6: ILdRf var_A0
  loc_C375A9: FnLenStr
  loc_C375AA: LitI4 &HB
  loc_C375AF: EqI4
  loc_C375B0: CVarBoolI2 var_100
  loc_C375B4: FLdRfVar var_120
  loc_C375B7: ImpAdCallFPR4  = IIf(, , )
  loc_C375BC: FLdRfVar var_120
  loc_C375BF: ConcatVar var_140
  loc_C375C3: LitVarStr var_150, Chr(37) & "' AND estado = 'Activo' ORDER BY CUIT"
  loc_C375C8: ConcatVar var_160
  loc_C375CC: CStrVarTmp
  loc_C375CD: FStStrNoPop var_164
  loc_C375D0: FLdPr Me
  loc_C375D3: MemStStrCopy
  loc_C375D7: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = ""
  loc_C375E6: FFreeAd var_88 = "": var_A4 = ""
  loc_C375EF: FFreeVar var_B8 = "": var_D8 = "": var_100 = "": var_E8 = "": var_110 = "": var_130 = "": var_120 = "": var_140 = ""
  loc_C37604: LitI2_Byte 0
  loc_C37606: FLdPr Me
  loc_C37609: Me.MousePointer = from_stack_1
  loc_C3760E: LitStr "Cantidad de Registros: "
  loc_C37611: FLdRfVar var_168
  loc_C37614: FLdRfVar var_88
  loc_C37617: FLdPr Me
  loc_C3761A: MemLdRfVar from_stack_1.BuscarCLS
  loc_C3761D: NewIfNullPr clsbase
  loc_C37620: from_stack_1v = clsbase.RsFrmGet()
  loc_C37625: FLdPr var_88
  loc_C37628:  = Me.RecordCount
  loc_C3762D: ILdRf var_168
  loc_C37630: CStrI4
  loc_C37632: FStStrNoPop var_90
  loc_C37635: ConcatStr
  loc_C37636: CVarStr var_B8
  loc_C37639: PopAdLdVar
  loc_C3763A: FLdPr Me
  loc_C3763D: VCallAd Control_ID_dgdABMS
  loc_C37640: FStAdFunc var_A4
  loc_C37643: FLdPr var_A4
  loc_C37646: LateIdSt
  loc_C3764B: FFree1Str var_90
  loc_C3764E: FFreeAd var_88 = ""
  loc_C37655: FFree1Var var_B8 = ""
  loc_C37658: Branch loc_C37EBC
  loc_C3765B: FLdUI1
  loc_C3765F: LitI2_Byte 2
  loc_C37661: CUI1I2
  loc_C37663: EqI2
  loc_C37664: BranchF loc_C377E5
  loc_C37667: ILdI2 KeyAscii
  loc_C3766A: CI4UI1
  loc_C3766B: LitI4 &HD
  loc_C37670: EqI4
  loc_C37671: BranchF loc_C377E2
  loc_C37674: LitI2_Byte &HB
  loc_C37676: FLdPr Me
  loc_C37679: Me.MousePointer = from_stack_1
  loc_C3767E: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, "
  loc_C37681: LitStr " IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_C37684: ConcatStr
  loc_C37685: FStStrNoPop var_90
  loc_C37688: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_C3768B: ConcatStr
  loc_C3768C: FStStrNoPop var_94
  loc_C3768F: LitStr " LEFT JOIN comercio ON comercio.CodiCome = relacion.CuenCtct"
  loc_C37692: ConcatStr
  loc_C37693: FStStrNoPop var_98
  loc_C37696: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_C37699: ConcatStr
  loc_C3769A: FStStrNoPop var_9C
  loc_C3769D: LitStr " WHERE relacion.CodiOfic = "
  loc_C376A0: ConcatStr
  loc_C376A1: FStStrNoPop var_A0
  loc_C376A4: ImpAdLdUI1
  loc_C376A8: CStrI2
  loc_C376AA: FStStrNoPop var_A8
  loc_C376AD: ConcatStr
  loc_C376AE: FStStrNoPop var_F0
  loc_C376B1: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.CucuPers like '"
  loc_C376B4: ConcatStr
  loc_C376B5: FStStrNoPop var_16C
  loc_C376B8: FLdRfVar var_164
  loc_C376BB: FLdPr Me
  loc_C376BE: VCallAd Control_ID_Campo1Txt
  loc_C376C1: FStAdFunc var_88
  loc_C376C4: FLdPr var_88
  loc_C376C7:  = Me.Text
  loc_C376CC: ILdRf var_164
  loc_C376CF: ConcatStr
  loc_C376D0: FStStrNoPop var_170
  loc_C376D3: LitStr Chr(37) & "' ORDER BY  relacion.CucuPers"
  loc_C376D6: ConcatStr
  loc_C376D7: FStStrNoPop var_174
  loc_C376DA: FLdPr Me
  loc_C376DD: MemLdRfVar from_stack_1.BuscarCLS
  loc_C376E0: NewIfNullPr clsbase
  loc_C376E3: Call clsbase.RedefineRS(from_stack_1v)
  loc_C376E8: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A8 = "": var_F0 = "": var_16C = "": var_164 = "": var_170 = ""
  loc_C37701: FFree1Ad var_88
  loc_C37704: LitI2_Byte 2
  loc_C37706: CUI1I2
  loc_C37708: FLdPr Me
  loc_C3770B: MemStUI1
  loc_C3770F: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, "
  loc_C37712: LitStr " IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_C37715: ConcatStr
  loc_C37716: FStStrNoPop var_90
  loc_C37719: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_C3771C: ConcatStr
  loc_C3771D: FStStrNoPop var_94
  loc_C37720: LitStr " LEFT JOIN comercio ON comercio.CodiCome = relacion.CuenCtct"
  loc_C37723: ConcatStr
  loc_C37724: FStStrNoPop var_98
  loc_C37727: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_C3772A: ConcatStr
  loc_C3772B: FStStrNoPop var_9C
  loc_C3772E: LitStr " WHERE relacion.CodiOfic = "
  loc_C37731: ConcatStr
  loc_C37732: FStStrNoPop var_A0
  loc_C37735: ImpAdLdUI1
  loc_C37739: CStrI2
  loc_C3773B: FStStrNoPop var_A8
  loc_C3773E: ConcatStr
  loc_C3773F: FStStrNoPop var_F0
  loc_C37742: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.CucuPers like '"
  loc_C37745: ConcatStr
  loc_C37746: FStStrNoPop var_16C
  loc_C37749: FLdRfVar var_164
  loc_C3774C: FLdPr Me
  loc_C3774F: VCallAd Control_ID_Campo1Txt
  loc_C37752: FStAdFunc var_88
  loc_C37755: FLdPr var_88
  loc_C37758:  = Me.Text
  loc_C3775D: ILdRf var_164
  loc_C37760: ConcatStr
  loc_C37761: FStStrNoPop var_170
  loc_C37764: LitStr Chr(37) & "' ORDER BY  relacion.CucuPers"
  loc_C37767: ConcatStr
  loc_C37768: FStStrNoPop var_174
  loc_C3776B: FLdPr Me
  loc_C3776E: MemStStrCopy
  loc_C37772: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A8 = "": var_F0 = "": var_16C = "": var_164 = "": var_170 = ""
  loc_C3778B: FFree1Ad var_88
  loc_C3778E: LitI2_Byte 0
  loc_C37790: FLdPr Me
  loc_C37793: Me.MousePointer = from_stack_1
  loc_C37798: LitStr "Cantidad de Registros: "
  loc_C3779B: FLdRfVar var_168
  loc_C3779E: FLdRfVar var_88
  loc_C377A1: FLdPr Me
  loc_C377A4: MemLdRfVar from_stack_1.BuscarCLS
  loc_C377A7: NewIfNullPr clsbase
  loc_C377AA: from_stack_1v = clsbase.RsFrmGet()
  loc_C377AF: FLdPr var_88
  loc_C377B2:  = Me.RecordCount
  loc_C377B7: ILdRf var_168
  loc_C377BA: CStrI4
  loc_C377BC: FStStrNoPop var_90
  loc_C377BF: ConcatStr
  loc_C377C0: CVarStr var_B8
  loc_C377C3: PopAdLdVar
  loc_C377C4: FLdPr Me
  loc_C377C7: VCallAd Control_ID_dgdABMS
  loc_C377CA: FStAdFunc var_A4
  loc_C377CD: FLdPr var_A4
  loc_C377D0: LateIdSt
  loc_C377D5: FFree1Str var_90
  loc_C377D8: FFreeAd var_88 = ""
  loc_C377DF: FFree1Var var_B8 = ""
  loc_C377E2: Branch loc_C37EBC
  loc_C377E5: FLdUI1
  loc_C377E9: LitI2_Byte 3
  loc_C377EB: CUI1I2
  loc_C377ED: EqI2
  loc_C377EE: BranchF loc_C37915
  loc_C377F1: ILdI2 KeyAscii
  loc_C377F4: CI4UI1
  loc_C377F5: LitI4 &HD
  loc_C377FA: EqI4
  loc_C377FB: BranchF loc_C37912
  loc_C377FE: LitI2_Byte &HB
  loc_C37800: FLdPr Me
  loc_C37803: Me.MousePointer = from_stack_1
  loc_C37808: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, infogov.persona.DecrPers, infogov.persona.NurePers, infogov.persona.DebrPers as DetaBarr, infogov.persona.MarePers as Manzana, infogov.persona.CarePers as Casa, infogov.persona.UbrePers as Ubicacion FROM relacion LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers WHERE relacion.CodiOfic = "
  loc_C3780B: ImpAdLdUI1
  loc_C3780F: CStrI2
  loc_C37811: FStStrNoPop var_90
  loc_C37814: ConcatStr
  loc_C37815: FStStrNoPop var_94
  loc_C37818: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.CucuPers like '"
  loc_C3781B: ConcatStr
  loc_C3781C: FStStrNoPop var_9C
  loc_C3781F: FLdRfVar var_98
  loc_C37822: FLdPr Me
  loc_C37825: VCallAd Control_ID_Campo1Txt
  loc_C37828: FStAdFunc var_88
  loc_C3782B: FLdPr var_88
  loc_C3782E:  = Me.Text
  loc_C37833: ILdRf var_98
  loc_C37836: ConcatStr
  loc_C37837: FStStrNoPop var_A0
  loc_C3783A: LitStr Chr(37) & "' ORDER BY  relacion.CucuPers"
  loc_C3783D: ConcatStr
  loc_C3783E: FStStrNoPop var_A8
  loc_C37841: FLdPr Me
  loc_C37844: MemLdRfVar from_stack_1.BuscarCLS
  loc_C37847: NewIfNullPr clsbase
  loc_C3784A: Call clsbase.RedefineRS(from_stack_1v)
  loc_C3784F: FFreeStr var_90 = "": var_94 = "": var_9C = "": var_98 = "": var_A0 = ""
  loc_C3785E: FFree1Ad var_88
  loc_C37861: LitI2_Byte 3
  loc_C37863: CUI1I2
  loc_C37865: FLdPr Me
  loc_C37868: MemStUI1
  loc_C3786C: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, infogov.persona.DecrPers, infogov.persona.NurePers, infogov.persona.DebrPers as DetaBarr, infogov.persona.MarePers as Manzana, infogov.persona.CarePers as Casa, infogov.persona.UbrePers as Ubicacion FROM relacion LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers WHERE relacion.CodiOfic = "
  loc_C3786F: ImpAdLdUI1
  loc_C37873: CStrI2
  loc_C37875: FStStrNoPop var_90
  loc_C37878: ConcatStr
  loc_C37879: FStStrNoPop var_94
  loc_C3787C: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.CucuPers like '"
  loc_C3787F: ConcatStr
  loc_C37880: FStStrNoPop var_9C
  loc_C37883: FLdRfVar var_98
  loc_C37886: FLdPr Me
  loc_C37889: VCallAd Control_ID_Campo1Txt
  loc_C3788C: FStAdFunc var_88
  loc_C3788F: FLdPr var_88
  loc_C37892:  = Me.Text
  loc_C37897: ILdRf var_98
  loc_C3789A: ConcatStr
  loc_C3789B: FStStrNoPop var_A0
  loc_C3789E: LitStr Chr(37) & "' ORDER BY  relacion.CucuPers"
  loc_C378A1: ConcatStr
  loc_C378A2: FStStrNoPop var_A8
  loc_C378A5: FLdPr Me
  loc_C378A8: MemStStrCopy
  loc_C378AC: FFreeStr var_90 = "": var_94 = "": var_9C = "": var_98 = "": var_A0 = ""
  loc_C378BB: FFree1Ad var_88
  loc_C378BE: LitI2_Byte 0
  loc_C378C0: FLdPr Me
  loc_C378C3: Me.MousePointer = from_stack_1
  loc_C378C8: LitStr "Cantidad de Registros: "
  loc_C378CB: FLdRfVar var_168
  loc_C378CE: FLdRfVar var_88
  loc_C378D1: FLdPr Me
  loc_C378D4: MemLdRfVar from_stack_1.BuscarCLS
  loc_C378D7: NewIfNullPr clsbase
  loc_C378DA: from_stack_1v = clsbase.RsFrmGet()
  loc_C378DF: FLdPr var_88
  loc_C378E2:  = Me.RecordCount
  loc_C378E7: ILdRf var_168
  loc_C378EA: CStrI4
  loc_C378EC: FStStrNoPop var_90
  loc_C378EF: ConcatStr
  loc_C378F0: CVarStr var_B8
  loc_C378F3: PopAdLdVar
  loc_C378F4: FLdPr Me
  loc_C378F7: VCallAd Control_ID_dgdABMS
  loc_C378FA: FStAdFunc var_A4
  loc_C378FD: FLdPr var_A4
  loc_C37900: LateIdSt
  loc_C37905: FFree1Str var_90
  loc_C37908: FFreeAd var_88 = ""
  loc_C3790F: FFree1Var var_B8 = ""
  loc_C37912: Branch loc_C37EBC
  loc_C37915: FLdUI1
  loc_C37919: LitI2_Byte 4
  loc_C3791B: CUI1I2
  loc_C3791D: EqI2
  loc_C3791E: BranchF loc_C37A8D
  loc_C37921: ILdI2 KeyAscii
  loc_C37924: CI4UI1
  loc_C37925: LitI4 &HD
  loc_C3792A: EqI4
  loc_C3792B: BranchF loc_C37A8A
  loc_C3792E: LitI2_Byte &HB
  loc_C37930: FLdPr Me
  loc_C37933: Me.MousePointer = from_stack_1
  loc_C37938: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, "
  loc_C3793B: LitStr " IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion "
  loc_C3793E: ConcatStr
  loc_C3793F: FStStrNoPop var_90
  loc_C37942: LitStr " FROM relacion LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers "
  loc_C37945: ConcatStr
  loc_C37946: FStStrNoPop var_94
  loc_C37949: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'REAL'"
  loc_C3794C: ConcatStr
  loc_C3794D: FStStrNoPop var_98
  loc_C37950: LitStr " WHERE relacion.CodiOfic = "
  loc_C37953: ConcatStr
  loc_C37954: FStStrNoPop var_9C
  loc_C37957: ImpAdLdUI1
  loc_C3795B: CStrI2
  loc_C3795D: FStStrNoPop var_A0
  loc_C37960: ConcatStr
  loc_C37961: FStStrNoPop var_A8
  loc_C37964: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.CucuPers like '"
  loc_C37967: ConcatStr
  loc_C37968: FStStrNoPop var_164
  loc_C3796B: FLdRfVar var_F0
  loc_C3796E: FLdPr Me
  loc_C37971: VCallAd Control_ID_Campo1Txt
  loc_C37974: FStAdFunc var_88
  loc_C37977: FLdPr var_88
  loc_C3797A:  = Me.Text
  loc_C3797F: ILdRf var_F0
  loc_C37982: ConcatStr
  loc_C37983: FStStrNoPop var_16C
  loc_C37986: LitStr Chr(37) & "' ORDER BY  relacion.CucuPers"
  loc_C37989: ConcatStr
  loc_C3798A: FStStrNoPop var_170
  loc_C3798D: FLdPr Me
  loc_C37990: MemLdRfVar from_stack_1.BuscarCLS
  loc_C37993: NewIfNullPr clsbase
  loc_C37996: Call clsbase.RedefineRS(from_stack_1v)
  loc_C3799B: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A8 = "": var_164 = "": var_F0 = "": var_16C = ""
  loc_C379B2: FFree1Ad var_88
  loc_C379B5: LitI2_Byte 4
  loc_C379B7: CUI1I2
  loc_C379B9: FLdPr Me
  loc_C379BC: MemStUI1
  loc_C379C0: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, "
  loc_C379C3: LitStr " IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion "
  loc_C379C6: ConcatStr
  loc_C379C7: FStStrNoPop var_90
  loc_C379CA: LitStr " FROM relacion LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers "
  loc_C379CD: ConcatStr
  loc_C379CE: FStStrNoPop var_94
  loc_C379D1: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'REAL'"
  loc_C379D4: ConcatStr
  loc_C379D5: FStStrNoPop var_98
  loc_C379D8: LitStr " WHERE relacion.CodiOfic = "
  loc_C379DB: ConcatStr
  loc_C379DC: FStStrNoPop var_9C
  loc_C379DF: ImpAdLdUI1
  loc_C379E3: CStrI2
  loc_C379E5: FStStrNoPop var_A0
  loc_C379E8: ConcatStr
  loc_C379E9: FStStrNoPop var_A8
  loc_C379EC: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.CucuPers like '"
  loc_C379EF: ConcatStr
  loc_C379F0: FStStrNoPop var_164
  loc_C379F3: FLdRfVar var_F0
  loc_C379F6: FLdPr Me
  loc_C379F9: VCallAd Control_ID_Campo1Txt
  loc_C379FC: FStAdFunc var_88
  loc_C379FF: FLdPr var_88
  loc_C37A02:  = Me.Text
  loc_C37A07: ILdRf var_F0
  loc_C37A0A: ConcatStr
  loc_C37A0B: FStStrNoPop var_16C
  loc_C37A0E: LitStr Chr(37) & "' ORDER BY  relacion.CucuPers"
  loc_C37A11: ConcatStr
  loc_C37A12: FStStrNoPop var_170
  loc_C37A15: FLdPr Me
  loc_C37A18: MemStStrCopy
  loc_C37A1C: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A8 = "": var_164 = "": var_F0 = "": var_16C = ""
  loc_C37A33: FFree1Ad var_88
  loc_C37A36: LitI2_Byte 0
  loc_C37A38: FLdPr Me
  loc_C37A3B: Me.MousePointer = from_stack_1
  loc_C37A40: LitStr "Cantidad de Registros: "
  loc_C37A43: FLdRfVar var_168
  loc_C37A46: FLdRfVar var_88
  loc_C37A49: FLdPr Me
  loc_C37A4C: MemLdRfVar from_stack_1.BuscarCLS
  loc_C37A4F: NewIfNullPr clsbase
  loc_C37A52: from_stack_1v = clsbase.RsFrmGet()
  loc_C37A57: FLdPr var_88
  loc_C37A5A:  = Me.RecordCount
  loc_C37A5F: ILdRf var_168
  loc_C37A62: CStrI4
  loc_C37A64: FStStrNoPop var_90
  loc_C37A67: ConcatStr
  loc_C37A68: CVarStr var_B8
  loc_C37A6B: PopAdLdVar
  loc_C37A6C: FLdPr Me
  loc_C37A6F: VCallAd Control_ID_dgdABMS
  loc_C37A72: FStAdFunc var_A4
  loc_C37A75: FLdPr var_A4
  loc_C37A78: LateIdSt
  loc_C37A7D: FFree1Str var_90
  loc_C37A80: FFreeAd var_88 = ""
  loc_C37A87: FFree1Var var_B8 = ""
  loc_C37A8A: Branch loc_C37EBC
  loc_C37A8D: FLdUI1
  loc_C37A91: LitI2_Byte 5
  loc_C37A93: CUI1I2
  loc_C37A95: EqI2
  loc_C37A96: BranchF loc_C37BBD
  loc_C37A99: ILdI2 KeyAscii
  loc_C37A9C: CI4UI1
  loc_C37A9D: LitI4 &HD
  loc_C37AA2: EqI4
  loc_C37AA3: BranchF loc_C37BBA
  loc_C37AA6: LitI2_Byte &HB
  loc_C37AA8: FLdPr Me
  loc_C37AAB: Me.MousePointer = from_stack_1
  loc_C37AB0: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, IFNULL(infogov.persona.DetaPers,'') DetaPers, IFNULL(infogov.persona.DecrPers,'') DecrPers, IFNULL(infogov.persona.NurePers,'0')NurePers , IFNULL(infogov.persona.DebrPers,'') as DetaBarr, IFNULL(infogov.persona.MarePers,'') as Manzana, IFNULL(infogov.persona.CarePers,'') as Casa, IFNULL(infogov.persona.UbrePers,'') as Ubicacion FROM relacion LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers WHERE relacion.CodiOfic = "
  loc_C37AB3: ImpAdLdUI1
  loc_C37AB7: CStrI2
  loc_C37AB9: FStStrNoPop var_90
  loc_C37ABC: ConcatStr
  loc_C37ABD: FStStrNoPop var_94
  loc_C37AC0: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.CucuPers like '"
  loc_C37AC3: ConcatStr
  loc_C37AC4: FStStrNoPop var_9C
  loc_C37AC7: FLdRfVar var_98
  loc_C37ACA: FLdPr Me
  loc_C37ACD: VCallAd Control_ID_Campo1Txt
  loc_C37AD0: FStAdFunc var_88
  loc_C37AD3: FLdPr var_88
  loc_C37AD6:  = Me.Text
  loc_C37ADB: ILdRf var_98
  loc_C37ADE: ConcatStr
  loc_C37ADF: FStStrNoPop var_A0
  loc_C37AE2: LitStr Chr(37) & "' ORDER BY  relacion.CucuPers"
  loc_C37AE5: ConcatStr
  loc_C37AE6: FStStrNoPop var_A8
  loc_C37AE9: FLdPr Me
  loc_C37AEC: MemLdRfVar from_stack_1.BuscarCLS
  loc_C37AEF: NewIfNullPr clsbase
  loc_C37AF2: Call clsbase.RedefineRS(from_stack_1v)
  loc_C37AF7: FFreeStr var_90 = "": var_94 = "": var_9C = "": var_98 = "": var_A0 = ""
  loc_C37B06: FFree1Ad var_88
  loc_C37B09: LitI2_Byte 5
  loc_C37B0B: CUI1I2
  loc_C37B0D: FLdPr Me
  loc_C37B10: MemStUI1
  loc_C37B14: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, IFNULL(infogov.persona.DetaPers,'') DetaPers, IFNULL(infogov.persona.DecrPers,'') DecrPers, IFNULL(infogov.persona.NurePers,'0')NurePers , IFNULL(infogov.persona.DebrPers,'') as DetaBarr, IFNULL(infogov.persona.MarePers,'') as Manzana, IFNULL(infogov.persona.CarePers,'') as Casa, IFNULL(infogov.persona.UbrePers,'') as Ubicacion FROM relacion LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers WHERE relacion.CodiOfic = "
  loc_C37B17: ImpAdLdUI1
  loc_C37B1B: CStrI2
  loc_C37B1D: FStStrNoPop var_90
  loc_C37B20: ConcatStr
  loc_C37B21: FStStrNoPop var_94
  loc_C37B24: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.CucuPers like '"
  loc_C37B27: ConcatStr
  loc_C37B28: FStStrNoPop var_9C
  loc_C37B2B: FLdRfVar var_98
  loc_C37B2E: FLdPr Me
  loc_C37B31: VCallAd Control_ID_Campo1Txt
  loc_C37B34: FStAdFunc var_88
  loc_C37B37: FLdPr var_88
  loc_C37B3A:  = Me.Text
  loc_C37B3F: ILdRf var_98
  loc_C37B42: ConcatStr
  loc_C37B43: FStStrNoPop var_A0
  loc_C37B46: LitStr Chr(37) & "' ORDER BY  relacion.CucuPers"
  loc_C37B49: ConcatStr
  loc_C37B4A: FStStrNoPop var_A8
  loc_C37B4D: FLdPr Me
  loc_C37B50: MemStStrCopy
  loc_C37B54: FFreeStr var_90 = "": var_94 = "": var_9C = "": var_98 = "": var_A0 = ""
  loc_C37B63: FFree1Ad var_88
  loc_C37B66: LitI2_Byte 0
  loc_C37B68: FLdPr Me
  loc_C37B6B: Me.MousePointer = from_stack_1
  loc_C37B70: LitStr "Cantidad de Registros: "
  loc_C37B73: FLdRfVar var_168
  loc_C37B76: FLdRfVar var_88
  loc_C37B79: FLdPr Me
  loc_C37B7C: MemLdRfVar from_stack_1.BuscarCLS
  loc_C37B7F: NewIfNullPr clsbase
  loc_C37B82: from_stack_1v = clsbase.RsFrmGet()
  loc_C37B87: FLdPr var_88
  loc_C37B8A:  = Me.RecordCount
  loc_C37B8F: ILdRf var_168
  loc_C37B92: CStrI4
  loc_C37B94: FStStrNoPop var_90
  loc_C37B97: ConcatStr
  loc_C37B98: CVarStr var_B8
  loc_C37B9B: PopAdLdVar
  loc_C37B9C: FLdPr Me
  loc_C37B9F: VCallAd Control_ID_dgdABMS
  loc_C37BA2: FStAdFunc var_A4
  loc_C37BA5: FLdPr var_A4
  loc_C37BA8: LateIdSt
  loc_C37BAD: FFree1Str var_90
  loc_C37BB0: FFreeAd var_88 = ""
  loc_C37BB7: FFree1Var var_B8 = ""
  loc_C37BBA: Branch loc_C37EBC
  loc_C37BBD: FLdUI1
  loc_C37BC1: LitI2_Byte 6
  loc_C37BC3: CUI1I2
  loc_C37BC5: EqI2
  loc_C37BC6: BranchF loc_C37D47
  loc_C37BC9: ILdI2 KeyAscii
  loc_C37BCC: CI4UI1
  loc_C37BCD: LitI4 &HD
  loc_C37BD2: EqI4
  loc_C37BD3: BranchF loc_C37D44
  loc_C37BD6: LitI2_Byte &HB
  loc_C37BD8: FLdPr Me
  loc_C37BDB: Me.MousePointer = from_stack_1
  loc_C37BE0: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, "
  loc_C37BE3: LitStr " IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_C37BE6: ConcatStr
  loc_C37BE7: FStStrNoPop var_90
  loc_C37BEA: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_C37BED: ConcatStr
  loc_C37BEE: FStStrNoPop var_94
  loc_C37BF1: LitStr " LEFT JOIN publicidad ON publicidad.CodiCome = relacion.CuenCtct"
  loc_C37BF4: ConcatStr
  loc_C37BF5: FStStrNoPop var_98
  loc_C37BF8: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_C37BFB: ConcatStr
  loc_C37BFC: FStStrNoPop var_9C
  loc_C37BFF: LitStr " WHERE relacion.CodiOfic = "
  loc_C37C02: ConcatStr
  loc_C37C03: FStStrNoPop var_A0
  loc_C37C06: ImpAdLdUI1
  loc_C37C0A: CStrI2
  loc_C37C0C: FStStrNoPop var_A8
  loc_C37C0F: ConcatStr
  loc_C37C10: FStStrNoPop var_F0
  loc_C37C13: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.CucuPers like '"
  loc_C37C16: ConcatStr
  loc_C37C17: FStStrNoPop var_16C
  loc_C37C1A: FLdRfVar var_164
  loc_C37C1D: FLdPr Me
  loc_C37C20: VCallAd Control_ID_Campo1Txt
  loc_C37C23: FStAdFunc var_88
  loc_C37C26: FLdPr var_88
  loc_C37C29:  = Me.Text
  loc_C37C2E: ILdRf var_164
  loc_C37C31: ConcatStr
  loc_C37C32: FStStrNoPop var_170
  loc_C37C35: LitStr Chr(37) & "' ORDER BY  relacion.CucuPers"
  loc_C37C38: ConcatStr
  loc_C37C39: FStStrNoPop var_174
  loc_C37C3C: FLdPr Me
  loc_C37C3F: MemLdRfVar from_stack_1.BuscarCLS
  loc_C37C42: NewIfNullPr clsbase
  loc_C37C45: Call clsbase.RedefineRS(from_stack_1v)
  loc_C37C4A: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A8 = "": var_F0 = "": var_16C = "": var_164 = "": var_170 = ""
  loc_C37C63: FFree1Ad var_88
  loc_C37C66: LitI2_Byte 6
  loc_C37C68: CUI1I2
  loc_C37C6A: FLdPr Me
  loc_C37C6D: MemStUI1
  loc_C37C71: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, "
  loc_C37C74: LitStr " IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_C37C77: ConcatStr
  loc_C37C78: FStStrNoPop var_90
  loc_C37C7B: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_C37C7E: ConcatStr
  loc_C37C7F: FStStrNoPop var_94
  loc_C37C82: LitStr " LEFT JOIN publicidad ON publicidad.CodiCome = relacion.CuenCtct"
  loc_C37C85: ConcatStr
  loc_C37C86: FStStrNoPop var_98
  loc_C37C89: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_C37C8C: ConcatStr
  loc_C37C8D: FStStrNoPop var_9C
  loc_C37C90: LitStr " WHERE relacion.CodiOfic = "
  loc_C37C93: ConcatStr
  loc_C37C94: FStStrNoPop var_A0
  loc_C37C97: ImpAdLdUI1
  loc_C37C9B: CStrI2
  loc_C37C9D: FStStrNoPop var_A8
  loc_C37CA0: ConcatStr
  loc_C37CA1: FStStrNoPop var_F0
  loc_C37CA4: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.CucuPers like '"
  loc_C37CA7: ConcatStr
  loc_C37CA8: FStStrNoPop var_16C
  loc_C37CAB: FLdRfVar var_164
  loc_C37CAE: FLdPr Me
  loc_C37CB1: VCallAd Control_ID_Campo1Txt
  loc_C37CB4: FStAdFunc var_88
  loc_C37CB7: FLdPr var_88
  loc_C37CBA:  = Me.Text
  loc_C37CBF: ILdRf var_164
  loc_C37CC2: ConcatStr
  loc_C37CC3: FStStrNoPop var_170
  loc_C37CC6: LitStr Chr(37) & "' ORDER BY  relacion.CucuPers"
  loc_C37CC9: ConcatStr
  loc_C37CCA: FStStrNoPop var_174
  loc_C37CCD: FLdPr Me
  loc_C37CD0: MemStStrCopy
  loc_C37CD4: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A8 = "": var_F0 = "": var_16C = "": var_164 = "": var_170 = ""
  loc_C37CED: FFree1Ad var_88
  loc_C37CF0: LitI2_Byte 0
  loc_C37CF2: FLdPr Me
  loc_C37CF5: Me.MousePointer = from_stack_1
  loc_C37CFA: LitStr "Cantidad de Registros: "
  loc_C37CFD: FLdRfVar var_168
  loc_C37D00: FLdRfVar var_88
  loc_C37D03: FLdPr Me
  loc_C37D06: MemLdRfVar from_stack_1.BuscarCLS
  loc_C37D09: NewIfNullPr clsbase
  loc_C37D0C: from_stack_1v = clsbase.RsFrmGet()
  loc_C37D11: FLdPr var_88
  loc_C37D14:  = Me.RecordCount
  loc_C37D19: ILdRf var_168
  loc_C37D1C: CStrI4
  loc_C37D1E: FStStrNoPop var_90
  loc_C37D21: ConcatStr
  loc_C37D22: CVarStr var_B8
  loc_C37D25: PopAdLdVar
  loc_C37D26: FLdPr Me
  loc_C37D29: VCallAd Control_ID_dgdABMS
  loc_C37D2C: FStAdFunc var_A4
  loc_C37D2F: FLdPr var_A4
  loc_C37D32: LateIdSt
  loc_C37D37: FFree1Str var_90
  loc_C37D3A: FFreeAd var_88 = ""
  loc_C37D41: FFree1Var var_B8 = ""
  loc_C37D44: Branch loc_C37EBC
  loc_C37D47: FLdUI1
  loc_C37D4B: LitI2_Byte 7
  loc_C37D4D: CUI1I2
  loc_C37D4F: EqI2
  loc_C37D50: BranchF loc_C37EBC
  loc_C37D53: ILdI2 KeyAscii
  loc_C37D56: CI4UI1
  loc_C37D57: LitI4 &HD
  loc_C37D5C: EqI4
  loc_C37D5D: BranchF loc_C37EBC
  loc_C37D60: LitI2_Byte &HB
  loc_C37D62: FLdPr Me
  loc_C37D65: Me.MousePointer = from_stack_1
  loc_C37D6A: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_C37D6D: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_C37D70: ConcatStr
  loc_C37D71: FStStrNoPop var_90
  loc_C37D74: LitStr " LEFT JOIN antena ON antena.CodiCome = relacion.CuenCtct"
  loc_C37D77: ConcatStr
  loc_C37D78: FStStrNoPop var_94
  loc_C37D7B: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_C37D7E: ConcatStr
  loc_C37D7F: FStStrNoPop var_98
  loc_C37D82: LitStr " WHERE relacion.CodiOfic = "
  loc_C37D85: ConcatStr
  loc_C37D86: FStStrNoPop var_9C
  loc_C37D89: ImpAdLdUI1
  loc_C37D8D: CStrI2
  loc_C37D8F: FStStrNoPop var_A0
  loc_C37D92: ConcatStr
  loc_C37D93: FStStrNoPop var_A8
  loc_C37D96: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.CucuPers like '"
  loc_C37D99: ConcatStr
  loc_C37D9A: FStStrNoPop var_164
  loc_C37D9D: FLdRfVar var_F0
  loc_C37DA0: FLdPr Me
  loc_C37DA3: VCallAd Control_ID_Campo1Txt
  loc_C37DA6: FStAdFunc var_88
  loc_C37DA9: FLdPr var_88
  loc_C37DAC:  = Me.Text
  loc_C37DB1: ILdRf var_F0
  loc_C37DB4: ConcatStr
  loc_C37DB5: FStStrNoPop var_16C
  loc_C37DB8: LitStr Chr(37) & "' ORDER BY  relacion.CucuPers"
  loc_C37DBB: ConcatStr
  loc_C37DBC: FStStrNoPop var_170
  loc_C37DBF: FLdPr Me
  loc_C37DC2: MemLdRfVar from_stack_1.BuscarCLS
  loc_C37DC5: NewIfNullPr clsbase
  loc_C37DC8: Call clsbase.RedefineRS(from_stack_1v)
  loc_C37DCD: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A8 = "": var_164 = "": var_F0 = "": var_16C = ""
  loc_C37DE4: FFree1Ad var_88
  loc_C37DE7: LitI2_Byte 7
  loc_C37DE9: CUI1I2
  loc_C37DEB: FLdPr Me
  loc_C37DEE: MemStUI1
  loc_C37DF2: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_C37DF5: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_C37DF8: ConcatStr
  loc_C37DF9: FStStrNoPop var_90
  loc_C37DFC: LitStr " LEFT JOIN antena ON antena.CodiCome = relacion.CuenCtct"
  loc_C37DFF: ConcatStr
  loc_C37E00: FStStrNoPop var_94
  loc_C37E03: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_C37E06: ConcatStr
  loc_C37E07: FStStrNoPop var_98
  loc_C37E0A: LitStr " WHERE relacion.CodiOfic = "
  loc_C37E0D: ConcatStr
  loc_C37E0E: FStStrNoPop var_9C
  loc_C37E11: ImpAdLdUI1
  loc_C37E15: CStrI2
  loc_C37E17: FStStrNoPop var_A0
  loc_C37E1A: ConcatStr
  loc_C37E1B: FStStrNoPop var_A8
  loc_C37E1E: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.CucuPers like '"
  loc_C37E21: ConcatStr
  loc_C37E22: FStStrNoPop var_164
  loc_C37E25: FLdRfVar var_F0
  loc_C37E28: FLdPr Me
  loc_C37E2B: VCallAd Control_ID_Campo1Txt
  loc_C37E2E: FStAdFunc var_88
  loc_C37E31: FLdPr var_88
  loc_C37E34:  = Me.Text
  loc_C37E39: ILdRf var_F0
  loc_C37E3C: ConcatStr
  loc_C37E3D: FStStrNoPop var_16C
  loc_C37E40: LitStr Chr(37) & "' ORDER BY  relacion.CucuPers"
  loc_C37E43: ConcatStr
  loc_C37E44: FStStrNoPop var_170
  loc_C37E47: FLdPr Me
  loc_C37E4A: MemStStrCopy
  loc_C37E4E: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A8 = "": var_164 = "": var_F0 = "": var_16C = ""
  loc_C37E65: FFree1Ad var_88
  loc_C37E68: LitI2_Byte 0
  loc_C37E6A: FLdPr Me
  loc_C37E6D: Me.MousePointer = from_stack_1
  loc_C37E72: LitStr "Cantidad de Registros: "
  loc_C37E75: FLdRfVar var_168
  loc_C37E78: FLdRfVar var_88
  loc_C37E7B: FLdPr Me
  loc_C37E7E: MemLdRfVar from_stack_1.BuscarCLS
  loc_C37E81: NewIfNullPr clsbase
  loc_C37E84: from_stack_1v = clsbase.RsFrmGet()
  loc_C37E89: FLdPr var_88
  loc_C37E8C:  = Me.RecordCount
  loc_C37E91: ILdRf var_168
  loc_C37E94: CStrI4
  loc_C37E96: FStStrNoPop var_90
  loc_C37E99: ConcatStr
  loc_C37E9A: CVarStr var_B8
  loc_C37E9D: PopAdLdVar
  loc_C37E9E: FLdPr Me
  loc_C37EA1: VCallAd Control_ID_dgdABMS
  loc_C37EA4: FStAdFunc var_A4
  loc_C37EA7: FLdPr var_A4
  loc_C37EAA: LateIdSt
  loc_C37EAF: FFree1Str var_90
  loc_C37EB2: FFreeAd var_88 = ""
  loc_C37EB9: FFree1Var var_B8 = ""
  loc_C37EBC: FLdRfVar var_168
  loc_C37EBF: FLdPr Me
  loc_C37EC2: MemLdRfVar from_stack_1.BuscarCLS
  loc_C37EC5: NewIfNullPr clsbase
  loc_C37EC8: from_stack_1 = clsbase.RecordCount
  loc_C37ECD: ILdRf var_168
  loc_C37ED0: LitI4 0
  loc_C37ED5: GtI4
  loc_C37ED6: BranchF loc_C37EEF
  loc_C37ED9: LitI2_Byte &HFF
  loc_C37EDB: FLdPr Me
  loc_C37EDE: VCallAd Control_ID_ImprimirCmd
  loc_C37EE1: FStAdFunc var_88
  loc_C37EE4: FLdPr var_88
  loc_C37EE7: Me.Enabled = from_stack_1b
  loc_C37EEC: FFree1Ad var_88
  loc_C37EEF: ExitProcHresult
End Sub

Private Sub ImprimirCmd_Click() 'A0983C
  'Data Table: 45FF60
  loc_A09800: FLdPr Me
  loc_A09803: MemLdUI1 global_64
  loc_A09807: ImpAdLdRf MemVar_D94C88
  loc_A0980A: NewIfNullPr rptListadodeCuentasPorOficina
  loc_A0980D: Call rptListadodeCuentasPorOficina.iCodiOficPut(from_stack_1v)
  loc_A09812: FLdPr Me
  loc_A09815: MemLdStr global_60
  loc_A09818: ImpAdLdRf MemVar_D94C88
  loc_A0981B: NewIfNullPr rptListadodeCuentasPorOficina
  loc_A0981E: Call rptListadodeCuentasPorOficina.sImprimirPut(from_stack_1v)
  loc_A09823: LitVar_Missing var_A4
  loc_A09826: PopAdLdVar
  loc_A09827: LitVarI4
  loc_A0982F: PopAdLdVar
  loc_A09830: ImpAdLdRf MemVar_D94C88
  loc_A09833: NewIfNullPr rptListadodeCuentasPorOficina
  loc_A09836: rptListadodeCuentasPorOficina.Show from_stack_1, from_stack_2
  loc_A0983B: ExitProcHresult
End Sub

Private Sub Form_Load() 'B41128
  'Data Table: 45FF60
  loc_B40E08: ImpAdLdUI1
  loc_B40E0C: FStUI1 var_86
  loc_B40E10: FLdUI1
  loc_B40E14: LitI2_Byte 1
  loc_B40E16: CUI1I2
  loc_B40E18: EqI2
  loc_B40E19: BranchF loc_B40E95
  loc_B40E1C: LitStr "SELECT CUIT CucuPers, 1 CodiOfic, vpadrones_persona.nro_padron CuenCtct, denominacion DetaPers, "
  loc_B40E1F: LitStr " IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion"
  loc_B40E22: ConcatStr
  loc_B40E23: FStStrNoPop var_8C
  loc_B40E26: LitStr " FROM vpadrones_persona"
  loc_B40E29: ConcatStr
  loc_B40E2A: FStStrNoPop var_90
  loc_B40E2D: LitStr " INNER JOIN vpadrones_parcela ON vpadrones_parcela.nro_padron = vpadrones_persona.nro_padron"
  loc_B40E30: ConcatStr
  loc_B40E31: FStStrNoPop var_94
  loc_B40E34: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = 1 AND domicilio.CodiCome = vpadrones_persona.nro_padron AND domicilio.Tipo = 'REAL'"
  loc_B40E37: ConcatStr
  loc_B40E38: FStStrNoPop var_98
  loc_B40E3B: LitStr " WHERE vpadrones_persona.nro_padron = 0"
  loc_B40E3E: ConcatStr
  loc_B40E3F: FStStrNoPop var_9C
  loc_B40E42: FLdPr Me
  loc_B40E45: MemLdRfVar from_stack_1.BuscarCLS
  loc_B40E48: NewIfNullPr clsbase
  loc_B40E4B: Call clsbase.RedefineRS(from_stack_1v)
  loc_B40E50: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_B40E5D: LitStr "SELECT CUIT CucuPers, 1 CodiOfic, vpadrones_persona.nro_padron CuenCtct, denominacion DetaPers, "
  loc_B40E60: LitStr " IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion"
  loc_B40E63: ConcatStr
  loc_B40E64: FStStrNoPop var_8C
  loc_B40E67: LitStr " FROM vpadrones_persona"
  loc_B40E6A: ConcatStr
  loc_B40E6B: FStStrNoPop var_90
  loc_B40E6E: LitStr " INNER JOIN vpadrones_parcela ON vpadrones_parcela.nro_padron = vpadrones_persona.nro_padron"
  loc_B40E71: ConcatStr
  loc_B40E72: FStStrNoPop var_94
  loc_B40E75: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = 1 AND domicilio.CodiCome = vpadrones_persona.nro_padron AND domicilio.Tipo = 'REAL'"
  loc_B40E78: ConcatStr
  loc_B40E79: FStStrNoPop var_98
  loc_B40E7C: LitStr " WHERE vpadrones_persona.nro_padron = 0"
  loc_B40E7F: ConcatStr
  loc_B40E80: CVarStr var_BC
  loc_B40E83: FStVar var_AC
  loc_B40E87: FFreeStr var_8C = "": var_90 = "": var_94 = ""
  loc_B40E92: Branch loc_B410C6
  loc_B40E95: FLdUI1
  loc_B40E99: LitI2_Byte 2
  loc_B40E9B: CUI1I2
  loc_B40E9D: EqI2
  loc_B40E9E: BranchF loc_B40EFF
  loc_B40EA1: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, "
  loc_B40EA4: LitStr "IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_B40EA7: ConcatStr
  loc_B40EA8: FStStrNoPop var_8C
  loc_B40EAB: LitStr " INNER JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_B40EAE: ConcatStr
  loc_B40EAF: FStStrNoPop var_90
  loc_B40EB2: LitStr " INNER JOIN comercio ON comercio.CodiCome = relacion.CuenCtct"
  loc_B40EB5: ConcatStr
  loc_B40EB6: FStStrNoPop var_94
  loc_B40EB9: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_B40EBC: ConcatStr
  loc_B40EBD: FStStrNoPop var_98
  loc_B40EC0: LitStr " WHERE relacion.CodiOfic = "
  loc_B40EC3: ConcatStr
  loc_B40EC4: FStStrNoPop var_9C
  loc_B40EC7: ImpAdLdUI1
  loc_B40ECB: CStrI2
  loc_B40ECD: FStStrNoPop var_C0
  loc_B40ED0: ConcatStr
  loc_B40ED1: FStStrNoPop var_C4
  loc_B40ED4: LitStr " AND relacion.CuenCtct = '' AND relacion.FebaRela IS NULL ORDER BY infogov.persona.DetaPers"
  loc_B40ED7: ConcatStr
  loc_B40ED8: FStStrNoPop var_C8
  loc_B40EDB: FLdPr Me
  loc_B40EDE: MemLdRfVar from_stack_1.BuscarCLS
  loc_B40EE1: NewIfNullPr clsbase
  loc_B40EE4: Call clsbase.RedefineRS(from_stack_1v)
  loc_B40EE9: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_C0 = "": var_C4 = ""
  loc_B40EFC: Branch loc_B410C6
  loc_B40EFF: FLdUI1
  loc_B40F03: LitI2_Byte 3
  loc_B40F05: CUI1I2
  loc_B40F07: EqI2
  loc_B40F08: BranchF loc_B40F4E
  loc_B40F0B: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, infogov.persona.DecrPers as DetaCall, infogov.persona.NurePers as NumePuer, infogov.persona.DebrPers as DetaBarr, infogov.persona.MarePers as Manzana, infogov.persona.CarePers as Casa, infogov.persona.UbrePers as Ubicacion "
  loc_B40F0E: LitStr " FROM relacion LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers "
  loc_B40F11: ConcatStr
  loc_B40F12: FStStrNoPop var_8C
  loc_B40F15: LitStr " WHERE relacion.CodiOfic = "
  loc_B40F18: ConcatStr
  loc_B40F19: FStStrNoPop var_90
  loc_B40F1C: ImpAdLdUI1
  loc_B40F20: CStrI2
  loc_B40F22: FStStrNoPop var_94
  loc_B40F25: ConcatStr
  loc_B40F26: FStStrNoPop var_98
  loc_B40F29: LitStr " AND relacion.FebaRela IS NULL ORDER BY infogov.persona.DetaPers"
  loc_B40F2C: ConcatStr
  loc_B40F2D: FStStrNoPop var_9C
  loc_B40F30: FLdPr Me
  loc_B40F33: MemLdRfVar from_stack_1.BuscarCLS
  loc_B40F36: NewIfNullPr clsbase
  loc_B40F39: Call clsbase.RedefineRS(from_stack_1v)
  loc_B40F3E: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_B40F4B: Branch loc_B410C6
  loc_B40F4E: FLdUI1
  loc_B40F52: LitI2_Byte 4
  loc_B40F54: CUI1I2
  loc_B40F56: EqI2
  loc_B40F57: BranchF loc_B40FB8
  loc_B40F5A: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, "
  loc_B40F5D: LitStr " infogov.persona.DecrPers as DetaCall, infogov.persona.NurePers as NumePuer, infogov.persona.DebrPers as DetaBarr, infogov.persona.MarePers as Manzana, infogov.persona.CarePers as Casa, infogov.persona.UbrePers as Ubicacion "
  loc_B40F60: ConcatStr
  loc_B40F61: FStStrNoPop var_8C
  loc_B40F64: LitStr " FROM relacion "
  loc_B40F67: ConcatStr
  loc_B40F68: FStStrNoPop var_90
  loc_B40F6B: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers "
  loc_B40F6E: ConcatStr
  loc_B40F6F: FStStrNoPop var_94
  loc_B40F72: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'REAL'"
  loc_B40F75: ConcatStr
  loc_B40F76: FStStrNoPop var_98
  loc_B40F79: LitStr " WHERE relacion.CodiOfic = "
  loc_B40F7C: ConcatStr
  loc_B40F7D: FStStrNoPop var_9C
  loc_B40F80: ImpAdLdUI1
  loc_B40F84: CStrI2
  loc_B40F86: FStStrNoPop var_C0
  loc_B40F89: ConcatStr
  loc_B40F8A: FStStrNoPop var_C4
  loc_B40F8D: LitStr " AND relacion.FebaRela IS NULL ORDER BY infogov.persona.DetaPers"
  loc_B40F90: ConcatStr
  loc_B40F91: FStStrNoPop var_C8
  loc_B40F94: FLdPr Me
  loc_B40F97: MemLdRfVar from_stack_1.BuscarCLS
  loc_B40F9A: NewIfNullPr clsbase
  loc_B40F9D: Call clsbase.RedefineRS(from_stack_1v)
  loc_B40FA2: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_C0 = "": var_C4 = ""
  loc_B40FB5: Branch loc_B410C6
  loc_B40FB8: FLdUI1
  loc_B40FBC: LitI2_Byte 5
  loc_B40FBE: CUI1I2
  loc_B40FC0: EqI2
  loc_B40FC1: BranchF loc_B41007
  loc_B40FC4: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, IFNULL(infogov.persona.DetaPers,'') DetaPers, IFNULL(infogov.persona.DecrPers,'') DecrPers, IFNULL(infogov.persona.NurePers,'0')NurePers , IFNULL(infogov.persona.DebrPers,'') as DetaBarr, IFNULL(infogov.persona.MarePers,'') as Manzana, IFNULL(infogov.persona.CarePers,'') as Casa, IFNULL(infogov.persona.UbrePers,'') as Ubicacion "
  loc_B40FC7: LitStr " FROM relacion LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers "
  loc_B40FCA: ConcatStr
  loc_B40FCB: FStStrNoPop var_8C
  loc_B40FCE: LitStr " WHERE relacion.CodiOfic = "
  loc_B40FD1: ConcatStr
  loc_B40FD2: FStStrNoPop var_90
  loc_B40FD5: ImpAdLdUI1
  loc_B40FD9: CStrI2
  loc_B40FDB: FStStrNoPop var_94
  loc_B40FDE: ConcatStr
  loc_B40FDF: FStStrNoPop var_98
  loc_B40FE2: LitStr " AND relacion.FebaRela IS NULL ORDER BY infogov.persona.DetaPers"
  loc_B40FE5: ConcatStr
  loc_B40FE6: FStStrNoPop var_9C
  loc_B40FE9: FLdPr Me
  loc_B40FEC: MemLdRfVar from_stack_1.BuscarCLS
  loc_B40FEF: NewIfNullPr clsbase
  loc_B40FF2: Call clsbase.RedefineRS(from_stack_1v)
  loc_B40FF7: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = ""
  loc_B41004: Branch loc_B410C6
  loc_B41007: FLdUI1
  loc_B4100B: LitI2_Byte 6
  loc_B4100D: CUI1I2
  loc_B4100F: EqI2
  loc_B41010: BranchF loc_B41068
  loc_B41013: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_B41016: LitStr " INNER JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_B41019: ConcatStr
  loc_B4101A: FStStrNoPop var_8C
  loc_B4101D: LitStr " INNER JOIN publicidad ON publicidad.CodiCome = relacion.CuenCtct"
  loc_B41020: ConcatStr
  loc_B41021: FStStrNoPop var_90
  loc_B41024: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_B41027: ConcatStr
  loc_B41028: FStStrNoPop var_94
  loc_B4102B: LitStr " WHERE relacion.CodiOfic = "
  loc_B4102E: ConcatStr
  loc_B4102F: FStStrNoPop var_98
  loc_B41032: ImpAdLdUI1
  loc_B41036: CStrI2
  loc_B41038: FStStrNoPop var_9C
  loc_B4103B: ConcatStr
  loc_B4103C: FStStrNoPop var_C0
  loc_B4103F: LitStr " AND relacion.CuenCtct = '' AND relacion.FebaRela IS NULL ORDER BY infogov.persona.DetaPers"
  loc_B41042: ConcatStr
  loc_B41043: FStStrNoPop var_C4
  loc_B41046: FLdPr Me
  loc_B41049: MemLdRfVar from_stack_1.BuscarCLS
  loc_B4104C: NewIfNullPr clsbase
  loc_B4104F: Call clsbase.RedefineRS(from_stack_1v)
  loc_B41054: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_C0 = ""
  loc_B41065: Branch loc_B410C6
  loc_B41068: FLdUI1
  loc_B4106C: LitI2_Byte 7
  loc_B4106E: CUI1I2
  loc_B41070: EqI2
  loc_B41071: BranchF loc_B410C6
  loc_B41074: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_B41077: LitStr " INNER JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_B4107A: ConcatStr
  loc_B4107B: FStStrNoPop var_8C
  loc_B4107E: LitStr " INNER JOIN antena ON antena.CodiCome = relacion.CuenCtct"
  loc_B41081: ConcatStr
  loc_B41082: FStStrNoPop var_90
  loc_B41085: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_B41088: ConcatStr
  loc_B41089: FStStrNoPop var_94
  loc_B4108C: LitStr " WHERE relacion.CodiOfic = "
  loc_B4108F: ConcatStr
  loc_B41090: FStStrNoPop var_98
  loc_B41093: ImpAdLdUI1
  loc_B41097: CStrI2
  loc_B41099: FStStrNoPop var_9C
  loc_B4109C: ConcatStr
  loc_B4109D: FStStrNoPop var_C0
  loc_B410A0: LitStr " AND relacion.CuenCtct = '' AND relacion.FebaRela IS NULL ORDER BY infogov.persona.DetaPers"
  loc_B410A3: ConcatStr
  loc_B410A4: FStStrNoPop var_C4
  loc_B410A7: FLdPr Me
  loc_B410AA: MemLdRfVar from_stack_1.BuscarCLS
  loc_B410AD: NewIfNullPr clsbase
  loc_B410B0: Call clsbase.RedefineRS(from_stack_1v)
  loc_B410B5: FFreeStr var_8C = "": var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_C0 = ""
  loc_B410C6: LitI4 0
  loc_B410CB: LitI4 1
  loc_B410D0: FLdRfVar var_CC
  loc_B410D3: Redim
  loc_B410DD: FLdPr Me
  loc_B410E0: MemLdRfVar from_stack_1.BuscarCLS
  loc_B410E3: NewIfNullAd
  loc_B410E6: FStAd var_D0 
  loc_B410EA: FLdRfVar var_D0
  loc_B410ED: CVarRef
  loc_B410F2: ParmAry1St
  loc_B410F8: FLdPr Me
  loc_B410FB: VCallAd Control_ID_dgdABMS
  loc_B410FE: CVarAd
  loc_B41102: ParmAry1St
  loc_B41108: FLdRfVar var_CC
  loc_B4110B: ImpAdCallFPR4 Proc_272_13_A32230()
  loc_B41110: ILdRf var_D0
  loc_B41113: CastAd
  loc_B41116: FLdPr Me
  loc_B41119: MemStAdFunc
  loc_B4111D: FLdRfVar var_CC
  loc_B41120: Erase
  loc_B41121: FFree1Ad var_D0
  loc_B41124: ExitProcHresult
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer) '9DCBE0
  'Data Table: 45FF60
  loc_9DCBC4: FLdPr Me
  loc_9DCBC7: MemLdI2 bCancela
  loc_9DCBCA: BranchF loc_9DCBDE
  loc_9DCBCD: LitStr "SELECT * FROM relacion WHERE FALSE = true"
  loc_9DCBD0: FLdPr Me
  loc_9DCBD3: MemLdRfVar from_stack_1.BuscarCLS
  loc_9DCBD6: NewIfNullPr clsbase
  loc_9DCBD9: Call clsbase.RedefineRS(from_stack_1v)
  loc_9DCBDE: ExitProcHresult
End Sub

Private Sub Form_Activate() '9E4D60
  'Data Table: 45FF60
  loc_9E4D40: FLdPr Me
  loc_9E4D43: VCallAd Control_ID_Campo3Txt
  loc_9E4D46: FStAdFunc var_88
  loc_9E4D49: FLdPr var_88
  loc_9E4D4C: Me.SetFocus
  loc_9E4D51: FFree1Ad var_88
  loc_9E4D54: LitI2_Byte &HFF
  loc_9E4D56: FLdPr Me
  loc_9E4D59: MemStI2 bCancela
  loc_9E4D5C: ExitProcHresult
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer) 'A55D74
  'Data Table: 45FF60
  loc_A55D1C: On Error Resume Next
  loc_A55D21: ILdI2 KeyAscii
  loc_A55D24: LitI2_Byte &HD
  loc_A55D26: EqI2
  loc_A55D27: BranchF loc_A55D3A
  loc_A55D2C: LitVar_TRUE var_A4
  loc_A55D2F: LitStr "{Tab}"
  loc_A55D32: ImpAdCallFPR4 SendKeys , 
  loc_A55D37: FFree1Var var_A4 = ""
  loc_A55D3C: ILdI2 KeyAscii
  loc_A55D3F: LitI2_Byte &H1B
  loc_A55D41: EqI2
  loc_A55D42: BranchF loc_A55D6D
  loc_A55D47: LitI2_Byte 0
  loc_A55D49: FLdPr Me
  loc_A55D4C: MemStI2 bCancela
  loc_A55D51: ILdRf Me
  loc_A55D54: FStAdNoPop
  loc_A55D58: ImpAdLdRf MemVar_D9C5D8
  loc_A55D5B: NewIfNullPr Global
  loc_A55D5E: Global.Unload from_stack_1
  loc_A55D63: FFree1Ad var_A8
  loc_A55D68: LitI2_Byte 0
  loc_A55D6A: IStI2 KeyAscii
  loc_A55D71: ExitProcHresult
End Sub

Private Sub Campo3Txt_KeyPress(KeyAscii As Integer) 'C2027C
  'Data Table: 45FF60
  loc_C1F7E8: LitStr vbNullString
  loc_C1F7EB: FLdPr Me
  loc_C1F7EE: VCallAd Control_ID_Campo1Txt
  loc_C1F7F1: FStAdFunc var_88
  loc_C1F7F4: FLdPr var_88
  loc_C1F7F7: Me.Text = from_stack_1
  loc_C1F7FC: FFree1Ad var_88
  loc_C1F7FF: LitStr vbNullString
  loc_C1F802: FLdPr Me
  loc_C1F805: VCallAd Control_ID_Campo2Txt
  loc_C1F808: FStAdFunc var_88
  loc_C1F80B: FLdPr var_88
  loc_C1F80E: Me.Text = from_stack_1
  loc_C1F813: FFree1Ad var_88
  loc_C1F816: LitStr vbNullString
  loc_C1F819: FLdPr Me
  loc_C1F81C: VCallAd Control_ID_Campo4Txt
  loc_C1F81F: FStAdFunc var_88
  loc_C1F822: FLdPr var_88
  loc_C1F825: Me.Text = from_stack_1
  loc_C1F82A: FFree1Ad var_88
  loc_C1F82D: LitStr vbNullString
  loc_C1F830: FLdPr Me
  loc_C1F833: VCallAd Control_ID_Campo5Txt
  loc_C1F836: FStAdFunc var_88
  loc_C1F839: FLdPr var_88
  loc_C1F83C: Me.Text = from_stack_1
  loc_C1F841: FFree1Ad var_88
  loc_C1F844: LitStr vbNullString
  loc_C1F847: FLdPr Me
  loc_C1F84A: VCallAd Control_ID_Campo6Txt
  loc_C1F84D: FStAdFunc var_88
  loc_C1F850: FLdPr var_88
  loc_C1F853: Me.Text = from_stack_1
  loc_C1F858: FFree1Ad var_88
  loc_C1F85B: ImpAdLdUI1
  loc_C1F85F: FStUI1 var_8A
  loc_C1F863: FLdUI1
  loc_C1F867: LitI2_Byte 1
  loc_C1F869: CUI1I2
  loc_C1F86B: EqI2
  loc_C1F86C: BranchF loc_C1FA09
  loc_C1F86F: ILdI2 KeyAscii
  loc_C1F872: CI4UI1
  loc_C1F873: LitI4 &HD
  loc_C1F878: EqI4
  loc_C1F879: BranchF loc_C1FA06
  loc_C1F87C: LitI2_Byte &HB
  loc_C1F87E: FLdPr Me
  loc_C1F881: Me.MousePointer = from_stack_1
  loc_C1F886: FLdRfVar var_90
  loc_C1F889: FLdPr Me
  loc_C1F88C: VCallAd Control_ID_Campo3Txt
  loc_C1F88F: FStAdFunc var_88
  loc_C1F892: FLdPr var_88
  loc_C1F895:  = Me.Text
  loc_C1F89A: ILdRf var_90
  loc_C1F89D: FnLenStr
  loc_C1F89E: LitI4 4
  loc_C1F8A3: GeI4
  loc_C1F8A4: FFree1Str var_90
  loc_C1F8A7: FFree1Ad var_88
  loc_C1F8AA: BranchF loc_C1F9E0
  loc_C1F8AD: LitStr "SELECT CUIT CucuPers, 1 CodiOfic, vpadrones_persona.nro_padron CuenCtct, denominacion DetaPers, "
  loc_C1F8B0: LitStr " IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion"
  loc_C1F8B3: ConcatStr
  loc_C1F8B4: FStStrNoPop var_90
  loc_C1F8B7: LitStr " FROM vpadrones_persona"
  loc_C1F8BA: ConcatStr
  loc_C1F8BB: FStStrNoPop var_94
  loc_C1F8BE: LitStr " INNER JOIN vpadrones_parcela ON vpadrones_parcela.nro_padron = vpadrones_persona.nro_padron"
  loc_C1F8C1: ConcatStr
  loc_C1F8C2: FStStrNoPop var_98
  loc_C1F8C5: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = 1 AND domicilio.CodiCome = vpadrones_persona.nro_padron AND domicilio.Tipo = 'REAL'"
  loc_C1F8C8: ConcatStr
  loc_C1F8C9: FStStrNoPop var_9C
  loc_C1F8CC: LitStr " WHERE denominacion like '" & Chr(37)
  loc_C1F8CF: ConcatStr
  loc_C1F8D0: FStStrNoPop var_A4
  loc_C1F8D3: FLdRfVar var_A0
  loc_C1F8D6: FLdPr Me
  loc_C1F8D9: VCallAd Control_ID_Campo3Txt
  loc_C1F8DC: FStAdFunc var_88
  loc_C1F8DF: FLdPr var_88
  loc_C1F8E2:  = Me.Text
  loc_C1F8E7: ILdRf var_A0
  loc_C1F8EA: ConcatStr
  loc_C1F8EB: FStStrNoPop var_A8
  loc_C1F8EE: LitStr Chr(37) & "' AND estado = 'Activo' ORDER BY denominacion"
  loc_C1F8F1: ConcatStr
  loc_C1F8F2: FStStrNoPop var_AC
  loc_C1F8F5: FLdPr Me
  loc_C1F8F8: MemLdRfVar from_stack_1.BuscarCLS
  loc_C1F8FB: NewIfNullPr clsbase
  loc_C1F8FE: Call clsbase.RedefineRS(from_stack_1v)
  loc_C1F903: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A4 = "": var_A0 = "": var_A8 = ""
  loc_C1F916: FFree1Ad var_88
  loc_C1F919: LitI2_Byte 1
  loc_C1F91B: CUI1I2
  loc_C1F91D: FLdPr Me
  loc_C1F920: MemStUI1
  loc_C1F924: LitStr "SELECT CUIT CucuPers, 1 CodiOfic, vpadrones_persona.nro_padron CuenCtct, denominacion DetaPers, "
  loc_C1F927: LitStr " IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion"
  loc_C1F92A: ConcatStr
  loc_C1F92B: FStStrNoPop var_90
  loc_C1F92E: LitStr " FROM vpadrones_persona"
  loc_C1F931: ConcatStr
  loc_C1F932: FStStrNoPop var_94
  loc_C1F935: LitStr " INNER JOIN vpadrones_parcela ON vpadrones_parcela.nro_padron = vpadrones_persona.nro_padron"
  loc_C1F938: ConcatStr
  loc_C1F939: FStStrNoPop var_98
  loc_C1F93C: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = 1 AND domicilio.CodiCome = vpadrones_persona.nro_padron AND domicilio.Tipo = 'REAL'"
  loc_C1F93F: ConcatStr
  loc_C1F940: FStStrNoPop var_9C
  loc_C1F943: LitStr " WHERE denominacion like '" & Chr(37)
  loc_C1F946: ConcatStr
  loc_C1F947: FStStrNoPop var_A4
  loc_C1F94A: FLdRfVar var_A0
  loc_C1F94D: FLdPr Me
  loc_C1F950: VCallAd Control_ID_Campo3Txt
  loc_C1F953: FStAdFunc var_88
  loc_C1F956: FLdPr var_88
  loc_C1F959:  = Me.Text
  loc_C1F95E: ILdRf var_A0
  loc_C1F961: ConcatStr
  loc_C1F962: FStStrNoPop var_A8
  loc_C1F965: LitStr Chr(37) & "' AND estado = 'Activo' ORDER BY denominacion"
  loc_C1F968: ConcatStr
  loc_C1F969: FStStrNoPop var_AC
  loc_C1F96C: FLdPr Me
  loc_C1F96F: MemStStrCopy
  loc_C1F973: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A4 = "": var_A0 = "": var_A8 = ""
  loc_C1F986: FFree1Ad var_88
  loc_C1F989: LitI2_Byte 0
  loc_C1F98B: FLdPr Me
  loc_C1F98E: Me.MousePointer = from_stack_1
  loc_C1F993: LitStr "Cantidad de Registros: "
  loc_C1F996: FLdRfVar var_B0
  loc_C1F999: FLdRfVar var_88
  loc_C1F99C: FLdPr Me
  loc_C1F99F: MemLdRfVar from_stack_1.BuscarCLS
  loc_C1F9A2: NewIfNullPr clsbase
  loc_C1F9A5: from_stack_1v = clsbase.RsFrmGet()
  loc_C1F9AA: FLdPr var_88
  loc_C1F9AD:  = Me.RecordCount
  loc_C1F9B2: ILdRf var_B0
  loc_C1F9B5: CStrI4
  loc_C1F9B7: FStStrNoPop var_90
  loc_C1F9BA: ConcatStr
  loc_C1F9BB: CVarStr var_C0
  loc_C1F9BE: PopAdLdVar
  loc_C1F9BF: FLdPr Me
  loc_C1F9C2: VCallAd Control_ID_dgdABMS
  loc_C1F9C5: FStAdFunc var_D4
  loc_C1F9C8: FLdPr var_D4
  loc_C1F9CB: LateIdSt
  loc_C1F9D0: FFree1Str var_90
  loc_C1F9D3: FFreeAd var_88 = ""
  loc_C1F9DA: FFree1Var var_C0 = ""
  loc_C1F9DD: Branch loc_C1FA06
  loc_C1F9E0: LitStr "Debe ingresr por lo menos 3 caracteres.... Verifique"
  loc_C1F9E3: ImpAdCallFPR4 Proc_272_30_A10B04()
  loc_C1F9E8: LitI2_Byte 0
  loc_C1F9EA: FLdPr Me
  loc_C1F9ED: Me.MousePointer = from_stack_1
  loc_C1F9F2: FLdPr Me
  loc_C1F9F5: VCallAd Control_ID_Campo3Txt
  loc_C1F9F8: FStAdFunc var_88
  loc_C1F9FB: FLdPr var_88
  loc_C1F9FE: Me.SetFocus
  loc_C1FA03: FFree1Ad var_88
  loc_C1FA06: Branch loc_C20246
  loc_C1FA09: FLdUI1
  loc_C1FA0D: LitI2_Byte 2
  loc_C1FA0F: CUI1I2
  loc_C1FA11: EqI2
  loc_C1FA12: BranchF loc_C1FB81
  loc_C1FA15: ILdI2 KeyAscii
  loc_C1FA18: CI4UI1
  loc_C1FA19: LitI4 &HD
  loc_C1FA1E: EqI4
  loc_C1FA1F: BranchF loc_C1FB7E
  loc_C1FA22: LitI2_Byte &HB
  loc_C1FA24: FLdPr Me
  loc_C1FA27: Me.MousePointer = from_stack_1
  loc_C1FA2C: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, "
  loc_C1FA2F: LitStr " IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_C1FA32: ConcatStr
  loc_C1FA33: FStStrNoPop var_90
  loc_C1FA36: LitStr " INNER JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_C1FA39: ConcatStr
  loc_C1FA3A: FStStrNoPop var_94
  loc_C1FA3D: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_C1FA40: ConcatStr
  loc_C1FA41: FStStrNoPop var_98
  loc_C1FA44: LitStr " WHERE relacion.CodiOfic = "
  loc_C1FA47: ConcatStr
  loc_C1FA48: FStStrNoPop var_9C
  loc_C1FA4B: ImpAdLdUI1
  loc_C1FA4F: CStrI2
  loc_C1FA51: FStStrNoPop var_A0
  loc_C1FA54: ConcatStr
  loc_C1FA55: FStStrNoPop var_A4
  loc_C1FA58: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.DetaPers like '" & Chr(37)
  loc_C1FA5B: ConcatStr
  loc_C1FA5C: FStStrNoPop var_AC
  loc_C1FA5F: FLdRfVar var_A8
  loc_C1FA62: FLdPr Me
  loc_C1FA65: VCallAd Control_ID_Campo3Txt
  loc_C1FA68: FStAdFunc var_88
  loc_C1FA6B: FLdPr var_88
  loc_C1FA6E:  = Me.Text
  loc_C1FA73: ILdRf var_A8
  loc_C1FA76: ConcatStr
  loc_C1FA77: FStStrNoPop var_D8
  loc_C1FA7A: LitStr Chr(37) & "' ORDER BY infogov.persona.DetaPers"
  loc_C1FA7D: ConcatStr
  loc_C1FA7E: FStStrNoPop var_DC
  loc_C1FA81: FLdPr Me
  loc_C1FA84: MemLdRfVar from_stack_1.BuscarCLS
  loc_C1FA87: NewIfNullPr clsbase
  loc_C1FA8A: Call clsbase.RedefineRS(from_stack_1v)
  loc_C1FA8F: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_AC = "": var_A8 = "": var_D8 = ""
  loc_C1FAA6: FFree1Ad var_88
  loc_C1FAA9: LitI2_Byte 2
  loc_C1FAAB: CUI1I2
  loc_C1FAAD: FLdPr Me
  loc_C1FAB0: MemStUI1
  loc_C1FAB4: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_C1FAB7: LitStr " INNER JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_C1FABA: ConcatStr
  loc_C1FABB: FStStrNoPop var_90
  loc_C1FABE: LitStr " INNER JOIN comercio ON comercio.CodiCome = relacion.CuenCtct"
  loc_C1FAC1: ConcatStr
  loc_C1FAC2: FStStrNoPop var_94
  loc_C1FAC5: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_C1FAC8: ConcatStr
  loc_C1FAC9: FStStrNoPop var_98
  loc_C1FACC: LitStr " WHERE relacion.CodiOfic = "
  loc_C1FACF: ConcatStr
  loc_C1FAD0: FStStrNoPop var_9C
  loc_C1FAD3: ImpAdLdUI1
  loc_C1FAD7: CStrI2
  loc_C1FAD9: FStStrNoPop var_A0
  loc_C1FADC: ConcatStr
  loc_C1FADD: FStStrNoPop var_A4
  loc_C1FAE0: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.DetaPers like '" & Chr(37)
  loc_C1FAE3: ConcatStr
  loc_C1FAE4: FStStrNoPop var_AC
  loc_C1FAE7: FLdRfVar var_A8
  loc_C1FAEA: FLdPr Me
  loc_C1FAED: VCallAd Control_ID_Campo3Txt
  loc_C1FAF0: FStAdFunc var_88
  loc_C1FAF3: FLdPr var_88
  loc_C1FAF6:  = Me.Text
  loc_C1FAFB: ILdRf var_A8
  loc_C1FAFE: ConcatStr
  loc_C1FAFF: FStStrNoPop var_D8
  loc_C1FB02: LitStr Chr(37) & "' ORDER BY infogov.persona.DetaPers"
  loc_C1FB05: ConcatStr
  loc_C1FB06: FStStrNoPop var_DC
  loc_C1FB09: FLdPr Me
  loc_C1FB0C: MemStStrCopy
  loc_C1FB10: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_AC = "": var_A8 = "": var_D8 = ""
  loc_C1FB27: FFree1Ad var_88
  loc_C1FB2A: LitI2_Byte 0
  loc_C1FB2C: FLdPr Me
  loc_C1FB2F: Me.MousePointer = from_stack_1
  loc_C1FB34: LitStr "Cantidad de Registros: "
  loc_C1FB37: FLdRfVar var_B0
  loc_C1FB3A: FLdRfVar var_88
  loc_C1FB3D: FLdPr Me
  loc_C1FB40: MemLdRfVar from_stack_1.BuscarCLS
  loc_C1FB43: NewIfNullPr clsbase
  loc_C1FB46: from_stack_1v = clsbase.RsFrmGet()
  loc_C1FB4B: FLdPr var_88
  loc_C1FB4E:  = Me.RecordCount
  loc_C1FB53: ILdRf var_B0
  loc_C1FB56: CStrI4
  loc_C1FB58: FStStrNoPop var_90
  loc_C1FB5B: ConcatStr
  loc_C1FB5C: CVarStr var_C0
  loc_C1FB5F: PopAdLdVar
  loc_C1FB60: FLdPr Me
  loc_C1FB63: VCallAd Control_ID_dgdABMS
  loc_C1FB66: FStAdFunc var_D4
  loc_C1FB69: FLdPr var_D4
  loc_C1FB6C: LateIdSt
  loc_C1FB71: FFree1Str var_90
  loc_C1FB74: FFreeAd var_88 = ""
  loc_C1FB7B: FFree1Var var_C0 = ""
  loc_C1FB7E: Branch loc_C20246
  loc_C1FB81: FLdUI1
  loc_C1FB85: LitI2_Byte 3
  loc_C1FB87: CUI1I2
  loc_C1FB89: EqI2
  loc_C1FB8A: BranchF loc_C1FCB1
  loc_C1FB8D: ILdI2 KeyAscii
  loc_C1FB90: CI4UI1
  loc_C1FB91: LitI4 &HD
  loc_C1FB96: EqI4
  loc_C1FB97: BranchF loc_C1FCAE
  loc_C1FB9A: LitI2_Byte &HB
  loc_C1FB9C: FLdPr Me
  loc_C1FB9F: Me.MousePointer = from_stack_1
  loc_C1FBA4: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, infogov.persona.DecrPers, infogov.persona.NurePers, infogov.persona.DebrPers as DetaBarr, infogov.persona.MarePers as Manzana, infogov.persona.CarePers as Casa, infogov.persona.UbrePers as Ubicacion FROM relacion LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers WHERE relacion.CodiOfic = "
  loc_C1FBA7: ImpAdLdUI1
  loc_C1FBAB: CStrI2
  loc_C1FBAD: FStStrNoPop var_90
  loc_C1FBB0: ConcatStr
  loc_C1FBB1: FStStrNoPop var_94
  loc_C1FBB4: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.DetaPers like '" & Chr(37)
  loc_C1FBB7: ConcatStr
  loc_C1FBB8: FStStrNoPop var_9C
  loc_C1FBBB: FLdRfVar var_98
  loc_C1FBBE: FLdPr Me
  loc_C1FBC1: VCallAd Control_ID_Campo3Txt
  loc_C1FBC4: FStAdFunc var_88
  loc_C1FBC7: FLdPr var_88
  loc_C1FBCA:  = Me.Text
  loc_C1FBCF: ILdRf var_98
  loc_C1FBD2: ConcatStr
  loc_C1FBD3: FStStrNoPop var_A0
  loc_C1FBD6: LitStr Chr(37) & "' ORDER BY infogov.persona.DetaPers"
  loc_C1FBD9: ConcatStr
  loc_C1FBDA: FStStrNoPop var_A4
  loc_C1FBDD: FLdPr Me
  loc_C1FBE0: MemLdRfVar from_stack_1.BuscarCLS
  loc_C1FBE3: NewIfNullPr clsbase
  loc_C1FBE6: Call clsbase.RedefineRS(from_stack_1v)
  loc_C1FBEB: FFreeStr var_90 = "": var_94 = "": var_9C = "": var_98 = "": var_A0 = ""
  loc_C1FBFA: FFree1Ad var_88
  loc_C1FBFD: LitI2_Byte 3
  loc_C1FBFF: CUI1I2
  loc_C1FC01: FLdPr Me
  loc_C1FC04: MemStUI1
  loc_C1FC08: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, infogov.persona.DecrPers, infogov.persona.NurePers, infogov.persona.DebrPers as DetaBarr, infogov.persona.MarePers as Manzana, infogov.persona.CarePers as Casa, infogov.persona.UbrePers as Ubicacion FROM relacion LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers WHERE relacion.CodiOfic = "
  loc_C1FC0B: ImpAdLdUI1
  loc_C1FC0F: CStrI2
  loc_C1FC11: FStStrNoPop var_90
  loc_C1FC14: ConcatStr
  loc_C1FC15: FStStrNoPop var_94
  loc_C1FC18: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.DetaPers like '" & Chr(37)
  loc_C1FC1B: ConcatStr
  loc_C1FC1C: FStStrNoPop var_9C
  loc_C1FC1F: FLdRfVar var_98
  loc_C1FC22: FLdPr Me
  loc_C1FC25: VCallAd Control_ID_Campo3Txt
  loc_C1FC28: FStAdFunc var_88
  loc_C1FC2B: FLdPr var_88
  loc_C1FC2E:  = Me.Text
  loc_C1FC33: ILdRf var_98
  loc_C1FC36: ConcatStr
  loc_C1FC37: FStStrNoPop var_A0
  loc_C1FC3A: LitStr Chr(37) & "' ORDER BY infogov.persona.DetaPers"
  loc_C1FC3D: ConcatStr
  loc_C1FC3E: FStStrNoPop var_A4
  loc_C1FC41: FLdPr Me
  loc_C1FC44: MemStStrCopy
  loc_C1FC48: FFreeStr var_90 = "": var_94 = "": var_9C = "": var_98 = "": var_A0 = ""
  loc_C1FC57: FFree1Ad var_88
  loc_C1FC5A: LitI2_Byte 0
  loc_C1FC5C: FLdPr Me
  loc_C1FC5F: Me.MousePointer = from_stack_1
  loc_C1FC64: LitStr "Cantidad de Registros: "
  loc_C1FC67: FLdRfVar var_B0
  loc_C1FC6A: FLdRfVar var_88
  loc_C1FC6D: FLdPr Me
  loc_C1FC70: MemLdRfVar from_stack_1.BuscarCLS
  loc_C1FC73: NewIfNullPr clsbase
  loc_C1FC76: from_stack_1v = clsbase.RsFrmGet()
  loc_C1FC7B: FLdPr var_88
  loc_C1FC7E:  = Me.RecordCount
  loc_C1FC83: ILdRf var_B0
  loc_C1FC86: CStrI4
  loc_C1FC88: FStStrNoPop var_90
  loc_C1FC8B: ConcatStr
  loc_C1FC8C: CVarStr var_C0
  loc_C1FC8F: PopAdLdVar
  loc_C1FC90: FLdPr Me
  loc_C1FC93: VCallAd Control_ID_dgdABMS
  loc_C1FC96: FStAdFunc var_D4
  loc_C1FC99: FLdPr var_D4
  loc_C1FC9C: LateIdSt
  loc_C1FCA1: FFree1Str var_90
  loc_C1FCA4: FFreeAd var_88 = ""
  loc_C1FCAB: FFree1Var var_C0 = ""
  loc_C1FCAE: Branch loc_C20246
  loc_C1FCB1: FLdUI1
  loc_C1FCB5: LitI2_Byte 4
  loc_C1FCB7: CUI1I2
  loc_C1FCB9: EqI2
  loc_C1FCBA: BranchF loc_C1FE29
  loc_C1FCBD: ILdI2 KeyAscii
  loc_C1FCC0: CI4UI1
  loc_C1FCC1: LitI4 &HD
  loc_C1FCC6: EqI4
  loc_C1FCC7: BranchF loc_C1FE26
  loc_C1FCCA: LitI2_Byte &HB
  loc_C1FCCC: FLdPr Me
  loc_C1FCCF: Me.MousePointer = from_stack_1
  loc_C1FCD4: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, "
  loc_C1FCD7: LitStr " infogov.persona.DecrPers, infogov.persona.NurePers, infogov.persona.DebrPers as DetaBarr, infogov.persona.MarePers as Manzana, infogov.persona.CarePers as Casa, infogov.persona.UbrePers as Ubicacion "
  loc_C1FCDA: ConcatStr
  loc_C1FCDB: FStStrNoPop var_90
  loc_C1FCDE: LitStr " FROM relacion LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers "
  loc_C1FCE1: ConcatStr
  loc_C1FCE2: FStStrNoPop var_94
  loc_C1FCE5: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'REAL'"
  loc_C1FCE8: ConcatStr
  loc_C1FCE9: FStStrNoPop var_98
  loc_C1FCEC: LitStr " WHERE relacion.CodiOfic = "
  loc_C1FCEF: ConcatStr
  loc_C1FCF0: FStStrNoPop var_9C
  loc_C1FCF3: ImpAdLdUI1
  loc_C1FCF7: CStrI2
  loc_C1FCF9: FStStrNoPop var_A0
  loc_C1FCFC: ConcatStr
  loc_C1FCFD: FStStrNoPop var_A4
  loc_C1FD00: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.DetaPers like '" & Chr(37)
  loc_C1FD03: ConcatStr
  loc_C1FD04: FStStrNoPop var_AC
  loc_C1FD07: FLdRfVar var_A8
  loc_C1FD0A: FLdPr Me
  loc_C1FD0D: VCallAd Control_ID_Campo3Txt
  loc_C1FD10: FStAdFunc var_88
  loc_C1FD13: FLdPr var_88
  loc_C1FD16:  = Me.Text
  loc_C1FD1B: ILdRf var_A8
  loc_C1FD1E: ConcatStr
  loc_C1FD1F: FStStrNoPop var_D8
  loc_C1FD22: LitStr Chr(37) & "' ORDER BY infogov.persona.DetaPers"
  loc_C1FD25: ConcatStr
  loc_C1FD26: FStStrNoPop var_DC
  loc_C1FD29: FLdPr Me
  loc_C1FD2C: MemLdRfVar from_stack_1.BuscarCLS
  loc_C1FD2F: NewIfNullPr clsbase
  loc_C1FD32: Call clsbase.RedefineRS(from_stack_1v)
  loc_C1FD37: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_AC = "": var_A8 = "": var_D8 = ""
  loc_C1FD4E: FFree1Ad var_88
  loc_C1FD51: LitI2_Byte 4
  loc_C1FD53: CUI1I2
  loc_C1FD55: FLdPr Me
  loc_C1FD58: MemStUI1
  loc_C1FD5C: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, "
  loc_C1FD5F: LitStr " infogov.persona.DecrPers, infogov.persona.NurePers, infogov.persona.DebrPers as DetaBarr, infogov.persona.MarePers as Manzana, infogov.persona.CarePers as Casa, infogov.persona.UbrePers as Ubicacion"
  loc_C1FD62: ConcatStr
  loc_C1FD63: FStStrNoPop var_90
  loc_C1FD66: LitStr " FROM relacion LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers "
  loc_C1FD69: ConcatStr
  loc_C1FD6A: FStStrNoPop var_94
  loc_C1FD6D: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'REAL'"
  loc_C1FD70: ConcatStr
  loc_C1FD71: FStStrNoPop var_98
  loc_C1FD74: LitStr " WHERE relacion.CodiOfic = "
  loc_C1FD77: ConcatStr
  loc_C1FD78: FStStrNoPop var_9C
  loc_C1FD7B: ImpAdLdUI1
  loc_C1FD7F: CStrI2
  loc_C1FD81: FStStrNoPop var_A0
  loc_C1FD84: ConcatStr
  loc_C1FD85: FStStrNoPop var_A4
  loc_C1FD88: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.DetaPers like '" & Chr(37)
  loc_C1FD8B: ConcatStr
  loc_C1FD8C: FStStrNoPop var_AC
  loc_C1FD8F: FLdRfVar var_A8
  loc_C1FD92: FLdPr Me
  loc_C1FD95: VCallAd Control_ID_Campo3Txt
  loc_C1FD98: FStAdFunc var_88
  loc_C1FD9B: FLdPr var_88
  loc_C1FD9E:  = Me.Text
  loc_C1FDA3: ILdRf var_A8
  loc_C1FDA6: ConcatStr
  loc_C1FDA7: FStStrNoPop var_D8
  loc_C1FDAA: LitStr Chr(37) & "' ORDER BY infogov.persona.DetaPers"
  loc_C1FDAD: ConcatStr
  loc_C1FDAE: FStStrNoPop var_DC
  loc_C1FDB1: FLdPr Me
  loc_C1FDB4: MemStStrCopy
  loc_C1FDB8: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_AC = "": var_A8 = "": var_D8 = ""
  loc_C1FDCF: FFree1Ad var_88
  loc_C1FDD2: LitI2_Byte 0
  loc_C1FDD4: FLdPr Me
  loc_C1FDD7: Me.MousePointer = from_stack_1
  loc_C1FDDC: LitStr "Cantidad de Registros: "
  loc_C1FDDF: FLdRfVar var_B0
  loc_C1FDE2: FLdRfVar var_88
  loc_C1FDE5: FLdPr Me
  loc_C1FDE8: MemLdRfVar from_stack_1.BuscarCLS
  loc_C1FDEB: NewIfNullPr clsbase
  loc_C1FDEE: from_stack_1v = clsbase.RsFrmGet()
  loc_C1FDF3: FLdPr var_88
  loc_C1FDF6:  = Me.RecordCount
  loc_C1FDFB: ILdRf var_B0
  loc_C1FDFE: CStrI4
  loc_C1FE00: FStStrNoPop var_90
  loc_C1FE03: ConcatStr
  loc_C1FE04: CVarStr var_C0
  loc_C1FE07: PopAdLdVar
  loc_C1FE08: FLdPr Me
  loc_C1FE0B: VCallAd Control_ID_dgdABMS
  loc_C1FE0E: FStAdFunc var_D4
  loc_C1FE11: FLdPr var_D4
  loc_C1FE14: LateIdSt
  loc_C1FE19: FFree1Str var_90
  loc_C1FE1C: FFreeAd var_88 = ""
  loc_C1FE23: FFree1Var var_C0 = ""
  loc_C1FE26: Branch loc_C20246
  loc_C1FE29: FLdUI1
  loc_C1FE2D: LitI2_Byte 5
  loc_C1FE2F: CUI1I2
  loc_C1FE31: EqI2
  loc_C1FE32: BranchF loc_C1FF59
  loc_C1FE35: ILdI2 KeyAscii
  loc_C1FE38: CI4UI1
  loc_C1FE39: LitI4 &HD
  loc_C1FE3E: EqI4
  loc_C1FE3F: BranchF loc_C1FF56
  loc_C1FE42: LitI2_Byte &HB
  loc_C1FE44: FLdPr Me
  loc_C1FE47: Me.MousePointer = from_stack_1
  loc_C1FE4C: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, IFNULL(infogov.persona.DetaPers,'') DetaPers, IFNULL(infogov.persona.DecrPers,'') DecrPers, IFNULL(infogov.persona.NurePers,'0')NurePers , IFNULL(infogov.persona.DebrPers,'') as DetaBarr, IFNULL(infogov.persona.MarePers,'') as Manzana, IFNULL(infogov.persona.CarePers,'') as Casa, IFNULL(infogov.persona.UbrePers,'') as Ubicacion FROM relacion LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers WHERE relacion.CodiOfic = "
  loc_C1FE4F: ImpAdLdUI1
  loc_C1FE53: CStrI2
  loc_C1FE55: FStStrNoPop var_90
  loc_C1FE58: ConcatStr
  loc_C1FE59: FStStrNoPop var_94
  loc_C1FE5C: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.DetaPers like '" & Chr(37)
  loc_C1FE5F: ConcatStr
  loc_C1FE60: FStStrNoPop var_9C
  loc_C1FE63: FLdRfVar var_98
  loc_C1FE66: FLdPr Me
  loc_C1FE69: VCallAd Control_ID_Campo3Txt
  loc_C1FE6C: FStAdFunc var_88
  loc_C1FE6F: FLdPr var_88
  loc_C1FE72:  = Me.Text
  loc_C1FE77: ILdRf var_98
  loc_C1FE7A: ConcatStr
  loc_C1FE7B: FStStrNoPop var_A0
  loc_C1FE7E: LitStr Chr(37) & "' ORDER BY infogov.persona.DetaPers"
  loc_C1FE81: ConcatStr
  loc_C1FE82: FStStrNoPop var_A4
  loc_C1FE85: FLdPr Me
  loc_C1FE88: MemLdRfVar from_stack_1.BuscarCLS
  loc_C1FE8B: NewIfNullPr clsbase
  loc_C1FE8E: Call clsbase.RedefineRS(from_stack_1v)
  loc_C1FE93: FFreeStr var_90 = "": var_94 = "": var_9C = "": var_98 = "": var_A0 = ""
  loc_C1FEA2: FFree1Ad var_88
  loc_C1FEA5: LitI2_Byte 5
  loc_C1FEA7: CUI1I2
  loc_C1FEA9: FLdPr Me
  loc_C1FEAC: MemStUI1
  loc_C1FEB0: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, IFNULL(infogov.persona.DetaPers,'') DetaPers, IFNULL(infogov.persona.DecrPers,'') DecrPers, IFNULL(infogov.persona.NurePers,'0')NurePers , IFNULL(infogov.persona.DebrPers,'') as DetaBarr, IFNULL(infogov.persona.MarePers,'') as Manzana, IFNULL(infogov.persona.CarePers,'') as Casa, IFNULL(infogov.persona.UbrePers,'') as Ubicacion FROM relacion LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers WHERE relacion.CodiOfic = "
  loc_C1FEB3: ImpAdLdUI1
  loc_C1FEB7: CStrI2
  loc_C1FEB9: FStStrNoPop var_90
  loc_C1FEBC: ConcatStr
  loc_C1FEBD: FStStrNoPop var_94
  loc_C1FEC0: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.DetaPers like '" & Chr(37)
  loc_C1FEC3: ConcatStr
  loc_C1FEC4: FStStrNoPop var_9C
  loc_C1FEC7: FLdRfVar var_98
  loc_C1FECA: FLdPr Me
  loc_C1FECD: VCallAd Control_ID_Campo3Txt
  loc_C1FED0: FStAdFunc var_88
  loc_C1FED3: FLdPr var_88
  loc_C1FED6:  = Me.Text
  loc_C1FEDB: ILdRf var_98
  loc_C1FEDE: ConcatStr
  loc_C1FEDF: FStStrNoPop var_A0
  loc_C1FEE2: LitStr Chr(37) & "' ORDER BY infogov.persona.DetaPers"
  loc_C1FEE5: ConcatStr
  loc_C1FEE6: FStStrNoPop var_A4
  loc_C1FEE9: FLdPr Me
  loc_C1FEEC: MemStStrCopy
  loc_C1FEF0: FFreeStr var_90 = "": var_94 = "": var_9C = "": var_98 = "": var_A0 = ""
  loc_C1FEFF: FFree1Ad var_88
  loc_C1FF02: LitI2_Byte 0
  loc_C1FF04: FLdPr Me
  loc_C1FF07: Me.MousePointer = from_stack_1
  loc_C1FF0C: LitStr "Cantidad de Registros: "
  loc_C1FF0F: FLdRfVar var_B0
  loc_C1FF12: FLdRfVar var_88
  loc_C1FF15: FLdPr Me
  loc_C1FF18: MemLdRfVar from_stack_1.BuscarCLS
  loc_C1FF1B: NewIfNullPr clsbase
  loc_C1FF1E: from_stack_1v = clsbase.RsFrmGet()
  loc_C1FF23: FLdPr var_88
  loc_C1FF26:  = Me.RecordCount
  loc_C1FF2B: ILdRf var_B0
  loc_C1FF2E: CStrI4
  loc_C1FF30: FStStrNoPop var_90
  loc_C1FF33: ConcatStr
  loc_C1FF34: CVarStr var_C0
  loc_C1FF37: PopAdLdVar
  loc_C1FF38: FLdPr Me
  loc_C1FF3B: VCallAd Control_ID_dgdABMS
  loc_C1FF3E: FStAdFunc var_D4
  loc_C1FF41: FLdPr var_D4
  loc_C1FF44: LateIdSt
  loc_C1FF49: FFree1Str var_90
  loc_C1FF4C: FFreeAd var_88 = ""
  loc_C1FF53: FFree1Var var_C0 = ""
  loc_C1FF56: Branch loc_C20246
  loc_C1FF59: FLdUI1
  loc_C1FF5D: LitI2_Byte 6
  loc_C1FF5F: CUI1I2
  loc_C1FF61: EqI2
  loc_C1FF62: BranchF loc_C200D1
  loc_C1FF65: ILdI2 KeyAscii
  loc_C1FF68: CI4UI1
  loc_C1FF69: LitI4 &HD
  loc_C1FF6E: EqI4
  loc_C1FF6F: BranchF loc_C200CE
  loc_C1FF72: LitI2_Byte &HB
  loc_C1FF74: FLdPr Me
  loc_C1FF77: Me.MousePointer = from_stack_1
  loc_C1FF7C: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_C1FF7F: LitStr " INNER JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_C1FF82: ConcatStr
  loc_C1FF83: FStStrNoPop var_90
  loc_C1FF86: LitStr " INNER JOIN publicidad ON publicidad.CodiCome = relacion.CuenCtct"
  loc_C1FF89: ConcatStr
  loc_C1FF8A: FStStrNoPop var_94
  loc_C1FF8D: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_C1FF90: ConcatStr
  loc_C1FF91: FStStrNoPop var_98
  loc_C1FF94: LitStr " WHERE relacion.CodiOfic = "
  loc_C1FF97: ConcatStr
  loc_C1FF98: FStStrNoPop var_9C
  loc_C1FF9B: ImpAdLdUI1
  loc_C1FF9F: CStrI2
  loc_C1FFA1: FStStrNoPop var_A0
  loc_C1FFA4: ConcatStr
  loc_C1FFA5: FStStrNoPop var_A4
  loc_C1FFA8: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.DetaPers like '" & Chr(37)
  loc_C1FFAB: ConcatStr
  loc_C1FFAC: FStStrNoPop var_AC
  loc_C1FFAF: FLdRfVar var_A8
  loc_C1FFB2: FLdPr Me
  loc_C1FFB5: VCallAd Control_ID_Campo3Txt
  loc_C1FFB8: FStAdFunc var_88
  loc_C1FFBB: FLdPr var_88
  loc_C1FFBE:  = Me.Text
  loc_C1FFC3: ILdRf var_A8
  loc_C1FFC6: ConcatStr
  loc_C1FFC7: FStStrNoPop var_D8
  loc_C1FFCA: LitStr Chr(37) & "' ORDER BY infogov.persona.DetaPers"
  loc_C1FFCD: ConcatStr
  loc_C1FFCE: FStStrNoPop var_DC
  loc_C1FFD1: FLdPr Me
  loc_C1FFD4: MemLdRfVar from_stack_1.BuscarCLS
  loc_C1FFD7: NewIfNullPr clsbase
  loc_C1FFDA: Call clsbase.RedefineRS(from_stack_1v)
  loc_C1FFDF: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_AC = "": var_A8 = "": var_D8 = ""
  loc_C1FFF6: FFree1Ad var_88
  loc_C1FFF9: LitI2_Byte 6
  loc_C1FFFB: CUI1I2
  loc_C1FFFD: FLdPr Me
  loc_C20000: MemStUI1
  loc_C20004: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_C20007: LitStr " INNER JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_C2000A: ConcatStr
  loc_C2000B: FStStrNoPop var_90
  loc_C2000E: LitStr " INNER JOIN publicidad ON publicidad.CodiCome = relacion.CuenCtct"
  loc_C20011: ConcatStr
  loc_C20012: FStStrNoPop var_94
  loc_C20015: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_C20018: ConcatStr
  loc_C20019: FStStrNoPop var_98
  loc_C2001C: LitStr " WHERE relacion.CodiOfic = "
  loc_C2001F: ConcatStr
  loc_C20020: FStStrNoPop var_9C
  loc_C20023: ImpAdLdUI1
  loc_C20027: CStrI2
  loc_C20029: FStStrNoPop var_A0
  loc_C2002C: ConcatStr
  loc_C2002D: FStStrNoPop var_A4
  loc_C20030: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.DetaPers like '" & Chr(37)
  loc_C20033: ConcatStr
  loc_C20034: FStStrNoPop var_AC
  loc_C20037: FLdRfVar var_A8
  loc_C2003A: FLdPr Me
  loc_C2003D: VCallAd Control_ID_Campo3Txt
  loc_C20040: FStAdFunc var_88
  loc_C20043: FLdPr var_88
  loc_C20046:  = Me.Text
  loc_C2004B: ILdRf var_A8
  loc_C2004E: ConcatStr
  loc_C2004F: FStStrNoPop var_D8
  loc_C20052: LitStr Chr(37) & "' ORDER BY infogov.persona.DetaPers"
  loc_C20055: ConcatStr
  loc_C20056: FStStrNoPop var_DC
  loc_C20059: FLdPr Me
  loc_C2005C: MemStStrCopy
  loc_C20060: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_AC = "": var_A8 = "": var_D8 = ""
  loc_C20077: FFree1Ad var_88
  loc_C2007A: LitI2_Byte 0
  loc_C2007C: FLdPr Me
  loc_C2007F: Me.MousePointer = from_stack_1
  loc_C20084: LitStr "Cantidad de Registros: "
  loc_C20087: FLdRfVar var_B0
  loc_C2008A: FLdRfVar var_88
  loc_C2008D: FLdPr Me
  loc_C20090: MemLdRfVar from_stack_1.BuscarCLS
  loc_C20093: NewIfNullPr clsbase
  loc_C20096: from_stack_1v = clsbase.RsFrmGet()
  loc_C2009B: FLdPr var_88
  loc_C2009E:  = Me.RecordCount
  loc_C200A3: ILdRf var_B0
  loc_C200A6: CStrI4
  loc_C200A8: FStStrNoPop var_90
  loc_C200AB: ConcatStr
  loc_C200AC: CVarStr var_C0
  loc_C200AF: PopAdLdVar
  loc_C200B0: FLdPr Me
  loc_C200B3: VCallAd Control_ID_dgdABMS
  loc_C200B6: FStAdFunc var_D4
  loc_C200B9: FLdPr var_D4
  loc_C200BC: LateIdSt
  loc_C200C1: FFree1Str var_90
  loc_C200C4: FFreeAd var_88 = ""
  loc_C200CB: FFree1Var var_C0 = ""
  loc_C200CE: Branch loc_C20246
  loc_C200D1: FLdUI1
  loc_C200D5: LitI2_Byte 7
  loc_C200D7: CUI1I2
  loc_C200D9: EqI2
  loc_C200DA: BranchF loc_C20246
  loc_C200DD: ILdI2 KeyAscii
  loc_C200E0: CI4UI1
  loc_C200E1: LitI4 &HD
  loc_C200E6: EqI4
  loc_C200E7: BranchF loc_C20246
  loc_C200EA: LitI2_Byte &HB
  loc_C200EC: FLdPr Me
  loc_C200EF: Me.MousePointer = from_stack_1
  loc_C200F4: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_C200F7: LitStr " INNER JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_C200FA: ConcatStr
  loc_C200FB: FStStrNoPop var_90
  loc_C200FE: LitStr " INNER JOIN antena ON antena.CodiCome = relacion.CuenCtct"
  loc_C20101: ConcatStr
  loc_C20102: FStStrNoPop var_94
  loc_C20105: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_C20108: ConcatStr
  loc_C20109: FStStrNoPop var_98
  loc_C2010C: LitStr " WHERE relacion.CodiOfic = "
  loc_C2010F: ConcatStr
  loc_C20110: FStStrNoPop var_9C
  loc_C20113: ImpAdLdUI1
  loc_C20117: CStrI2
  loc_C20119: FStStrNoPop var_A0
  loc_C2011C: ConcatStr
  loc_C2011D: FStStrNoPop var_A4
  loc_C20120: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.DetaPers like '" & Chr(37)
  loc_C20123: ConcatStr
  loc_C20124: FStStrNoPop var_AC
  loc_C20127: FLdRfVar var_A8
  loc_C2012A: FLdPr Me
  loc_C2012D: VCallAd Control_ID_Campo3Txt
  loc_C20130: FStAdFunc var_88
  loc_C20133: FLdPr var_88
  loc_C20136:  = Me.Text
  loc_C2013B: ILdRf var_A8
  loc_C2013E: ConcatStr
  loc_C2013F: FStStrNoPop var_D8
  loc_C20142: LitStr Chr(37) & "' ORDER BY infogov.persona.DetaPers"
  loc_C20145: ConcatStr
  loc_C20146: FStStrNoPop var_DC
  loc_C20149: FLdPr Me
  loc_C2014C: MemLdRfVar from_stack_1.BuscarCLS
  loc_C2014F: NewIfNullPr clsbase
  loc_C20152: Call clsbase.RedefineRS(from_stack_1v)
  loc_C20157: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_AC = "": var_A8 = "": var_D8 = ""
  loc_C2016E: FFree1Ad var_88
  loc_C20171: LitI2_Byte 7
  loc_C20173: CUI1I2
  loc_C20175: FLdPr Me
  loc_C20178: MemStUI1
  loc_C2017C: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_C2017F: LitStr " INNER JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_C20182: ConcatStr
  loc_C20183: FStStrNoPop var_90
  loc_C20186: LitStr " INNER JOIN antena ON antena.CodiCome = relacion.CuenCtct"
  loc_C20189: ConcatStr
  loc_C2018A: FStStrNoPop var_94
  loc_C2018D: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_C20190: ConcatStr
  loc_C20191: FStStrNoPop var_98
  loc_C20194: LitStr " WHERE relacion.CodiOfic = "
  loc_C20197: ConcatStr
  loc_C20198: FStStrNoPop var_9C
  loc_C2019B: ImpAdLdUI1
  loc_C2019F: CStrI2
  loc_C201A1: FStStrNoPop var_A0
  loc_C201A4: ConcatStr
  loc_C201A5: FStStrNoPop var_A4
  loc_C201A8: LitStr " AND relacion.FebaRela IS NULL AND infogov.persona.DetaPers like '" & Chr(37)
  loc_C201AB: ConcatStr
  loc_C201AC: FStStrNoPop var_AC
  loc_C201AF: FLdRfVar var_A8
  loc_C201B2: FLdPr Me
  loc_C201B5: VCallAd Control_ID_Campo3Txt
  loc_C201B8: FStAdFunc var_88
  loc_C201BB: FLdPr var_88
  loc_C201BE:  = Me.Text
  loc_C201C3: ILdRf var_A8
  loc_C201C6: ConcatStr
  loc_C201C7: FStStrNoPop var_D8
  loc_C201CA: LitStr Chr(37) & "' ORDER BY infogov.persona.DetaPers"
  loc_C201CD: ConcatStr
  loc_C201CE: FStStrNoPop var_DC
  loc_C201D1: FLdPr Me
  loc_C201D4: MemStStrCopy
  loc_C201D8: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_AC = "": var_A8 = "": var_D8 = ""
  loc_C201EF: FFree1Ad var_88
  loc_C201F2: LitI2_Byte 0
  loc_C201F4: FLdPr Me
  loc_C201F7: Me.MousePointer = from_stack_1
  loc_C201FC: LitStr "Cantidad de Registros: "
  loc_C201FF: FLdRfVar var_B0
  loc_C20202: FLdRfVar var_88
  loc_C20205: FLdPr Me
  loc_C20208: MemLdRfVar from_stack_1.BuscarCLS
  loc_C2020B: NewIfNullPr clsbase
  loc_C2020E: from_stack_1v = clsbase.RsFrmGet()
  loc_C20213: FLdPr var_88
  loc_C20216:  = Me.RecordCount
  loc_C2021B: ILdRf var_B0
  loc_C2021E: CStrI4
  loc_C20220: FStStrNoPop var_90
  loc_C20223: ConcatStr
  loc_C20224: CVarStr var_C0
  loc_C20227: PopAdLdVar
  loc_C20228: FLdPr Me
  loc_C2022B: VCallAd Control_ID_dgdABMS
  loc_C2022E: FStAdFunc var_D4
  loc_C20231: FLdPr var_D4
  loc_C20234: LateIdSt
  loc_C20239: FFree1Str var_90
  loc_C2023C: FFreeAd var_88 = ""
  loc_C20243: FFree1Var var_C0 = ""
  loc_C20246: FLdRfVar var_B0
  loc_C20249: FLdPr Me
  loc_C2024C: MemLdRfVar from_stack_1.BuscarCLS
  loc_C2024F: NewIfNullPr clsbase
  loc_C20252: from_stack_1 = clsbase.RecordCount
  loc_C20257: ILdRf var_B0
  loc_C2025A: LitI4 0
  loc_C2025F: GtI4
  loc_C20260: BranchF loc_C20279
  loc_C20263: LitI2_Byte &HFF
  loc_C20265: FLdPr Me
  loc_C20268: VCallAd Control_ID_ImprimirCmd
  loc_C2026B: FStAdFunc var_88
  loc_C2026E: FLdPr var_88
  loc_C20271: Me.Enabled = from_stack_1b
  loc_C20276: FFree1Ad var_88
  loc_C20279: ExitProcHresult
End Sub

Private Sub Campo4Txt_KeyPress(KeyAscii As Integer) 'B535D8
  'Data Table: 45FF60
  loc_B53234: LitStr vbNullString
  loc_B53237: FLdPr Me
  loc_B5323A: VCallAd Control_ID_Campo1Txt
  loc_B5323D: FStAdFunc var_88
  loc_B53240: FLdPr var_88
  loc_B53243: Me.Text = from_stack_1
  loc_B53248: FFree1Ad var_88
  loc_B5324B: LitStr vbNullString
  loc_B5324E: FLdPr Me
  loc_B53251: VCallAd Control_ID_Campo2Txt
  loc_B53254: FStAdFunc var_88
  loc_B53257: FLdPr var_88
  loc_B5325A: Me.Text = from_stack_1
  loc_B5325F: FFree1Ad var_88
  loc_B53262: LitStr vbNullString
  loc_B53265: FLdPr Me
  loc_B53268: VCallAd Control_ID_Campo3Txt
  loc_B5326B: FStAdFunc var_88
  loc_B5326E: FLdPr var_88
  loc_B53271: Me.Text = from_stack_1
  loc_B53276: FFree1Ad var_88
  loc_B53279: LitStr vbNullString
  loc_B5327C: FLdPr Me
  loc_B5327F: VCallAd Control_ID_Campo5Txt
  loc_B53282: FStAdFunc var_88
  loc_B53285: FLdPr var_88
  loc_B53288: Me.Text = from_stack_1
  loc_B5328D: FFree1Ad var_88
  loc_B53290: LitStr vbNullString
  loc_B53293: FLdPr Me
  loc_B53296: VCallAd Control_ID_Campo6Txt
  loc_B53299: FStAdFunc var_88
  loc_B5329C: FLdPr var_88
  loc_B5329F: Me.Text = from_stack_1
  loc_B532A4: FFree1Ad var_88
  loc_B532A7: ImpAdLdUI1
  loc_B532AB: FStUI1 var_8A
  loc_B532AF: FLdUI1
  loc_B532B3: LitI2_Byte 1
  loc_B532B5: CUI1I2
  loc_B532B7: EqI2
  loc_B532B8: BranchF loc_B53395
  loc_B532BB: ILdI2 KeyAscii
  loc_B532BE: CI4UI1
  loc_B532BF: LitI4 &HD
  loc_B532C4: EqI4
  loc_B532C5: BranchF loc_B53392
  loc_B532C8: LitI2_Byte &HB
  loc_B532CA: FLdPr Me
  loc_B532CD: Me.MousePointer = from_stack_1
  loc_B532D2: LitStr "SELECT CUIT CucuPers, 1 CodiOfic, vpadrones_persona.nro_padron CuenCtct, denominacion DetaPers, "
  loc_B532D5: LitStr " IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion"
  loc_B532D8: ConcatStr
  loc_B532D9: FStStrNoPop var_90
  loc_B532DC: LitStr " FROM vpadrones_persona"
  loc_B532DF: ConcatStr
  loc_B532E0: FStStrNoPop var_94
  loc_B532E3: LitStr " INNER JOIN vpadrones_parcela ON vpadrones_parcela.nro_padron = vpadrones_persona.nro_padron"
  loc_B532E6: ConcatStr
  loc_B532E7: FStStrNoPop var_98
  loc_B532EA: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = 1 AND domicilio.CodiCome = vpadrones_persona.nro_padron AND domicilio.Tipo = 'REAL'"
  loc_B532ED: ConcatStr
  loc_B532EE: FStStrNoPop var_9C
  loc_B532F1: LitStr " WHERE domicilio.calle like '" & Chr(37)
  loc_B532F4: ConcatStr
  loc_B532F5: FStStrNoPop var_A4
  loc_B532F8: FLdRfVar var_A0
  loc_B532FB: FLdPr Me
  loc_B532FE: VCallAd Control_ID_Campo4Txt
  loc_B53301: FStAdFunc var_88
  loc_B53304: FLdPr var_88
  loc_B53307:  = Me.Text
  loc_B5330C: ILdRf var_A0
  loc_B5330F: ConcatStr
  loc_B53310: FStStrNoPop var_A8
  loc_B53313: LitStr Chr(37) & "' AND estado = 'Activo' ORDER BY domicilio.calle, domicilio.NumeCalle"
  loc_B53316: ConcatStr
  loc_B53317: FStStrNoPop var_AC
  loc_B5331A: FLdPr Me
  loc_B5331D: MemLdRfVar from_stack_1.BuscarCLS
  loc_B53320: NewIfNullPr clsbase
  loc_B53323: Call clsbase.RedefineRS(from_stack_1v)
  loc_B53328: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A4 = "": var_A0 = "": var_A8 = ""
  loc_B5333B: FFree1Ad var_88
  loc_B5333E: LitI2_Byte 0
  loc_B53340: FLdPr Me
  loc_B53343: Me.MousePointer = from_stack_1
  loc_B53348: LitStr "Cantidad de Registros: "
  loc_B5334B: FLdRfVar var_B0
  loc_B5334E: FLdRfVar var_88
  loc_B53351: FLdPr Me
  loc_B53354: MemLdRfVar from_stack_1.BuscarCLS
  loc_B53357: NewIfNullPr clsbase
  loc_B5335A: from_stack_1v = clsbase.RsFrmGet()
  loc_B5335F: FLdPr var_88
  loc_B53362:  = Me.RecordCount
  loc_B53367: ILdRf var_B0
  loc_B5336A: CStrI4
  loc_B5336C: FStStrNoPop var_90
  loc_B5336F: ConcatStr
  loc_B53370: CVarStr var_C0
  loc_B53373: PopAdLdVar
  loc_B53374: FLdPr Me
  loc_B53377: VCallAd Control_ID_dgdABMS
  loc_B5337A: FStAdFunc var_D4
  loc_B5337D: FLdPr var_D4
  loc_B53380: LateIdSt
  loc_B53385: FFree1Str var_90
  loc_B53388: FFreeAd var_88 = ""
  loc_B5338F: FFree1Var var_C0 = ""
  loc_B53392: Branch loc_B535D7
  loc_B53395: FLdUI1
  loc_B53399: LitI2_Byte 2
  loc_B5339B: CUI1I2
  loc_B5339D: EqI2
  loc_B5339E: BranchF loc_B53495
  loc_B533A1: ILdI2 KeyAscii
  loc_B533A4: CI4UI1
  loc_B533A5: LitI4 &HD
  loc_B533AA: EqI4
  loc_B533AB: BranchF loc_B53492
  loc_B533AE: LitI2_Byte &HB
  loc_B533B0: FLdPr Me
  loc_B533B3: Me.MousePointer = from_stack_1
  loc_B533B8: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, "
  loc_B533BB: LitStr " IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_B533BE: ConcatStr
  loc_B533BF: FStStrNoPop var_90
  loc_B533C2: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_B533C5: ConcatStr
  loc_B533C6: FStStrNoPop var_94
  loc_B533C9: LitStr " LEFT JOIN comercio ON comercio.CodiCome = relacion.CuenCtct"
  loc_B533CC: ConcatStr
  loc_B533CD: FStStrNoPop var_98
  loc_B533D0: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_B533D3: ConcatStr
  loc_B533D4: FStStrNoPop var_9C
  loc_B533D7: LitStr " WHERE relacion.CodiOfic = "
  loc_B533DA: ConcatStr
  loc_B533DB: FStStrNoPop var_A0
  loc_B533DE: ImpAdLdUI1
  loc_B533E2: CStrI2
  loc_B533E4: FStStrNoPop var_A4
  loc_B533E7: ConcatStr
  loc_B533E8: FStStrNoPop var_A8
  loc_B533EB: LitStr " AND relacion.FebaRela IS NULL AND domicilio.calle like '" & Chr(37)
  loc_B533EE: ConcatStr
  loc_B533EF: FStStrNoPop var_D8
  loc_B533F2: FLdRfVar var_AC
  loc_B533F5: FLdPr Me
  loc_B533F8: VCallAd Control_ID_Campo4Txt
  loc_B533FB: FStAdFunc var_88
  loc_B533FE: FLdPr var_88
  loc_B53401:  = Me.Text
  loc_B53406: ILdRf var_AC
  loc_B53409: ConcatStr
  loc_B5340A: FStStrNoPop var_DC
  loc_B5340D: LitStr Chr(37) & "' ORDER BY domicilio.calle, domicilio.NumeCalle"
  loc_B53410: ConcatStr
  loc_B53411: FStStrNoPop var_E0
  loc_B53414: FLdPr Me
  loc_B53417: MemLdRfVar from_stack_1.BuscarCLS
  loc_B5341A: NewIfNullPr clsbase
  loc_B5341D: Call clsbase.RedefineRS(from_stack_1v)
  loc_B53422: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_A8 = "": var_D8 = "": var_AC = "": var_DC = ""
  loc_B5343B: FFree1Ad var_88
  loc_B5343E: LitI2_Byte 0
  loc_B53440: FLdPr Me
  loc_B53443: Me.MousePointer = from_stack_1
  loc_B53448: LitStr "Cantidad de Registros: "
  loc_B5344B: FLdRfVar var_B0
  loc_B5344E: FLdRfVar var_88
  loc_B53451: FLdPr Me
  loc_B53454: MemLdRfVar from_stack_1.BuscarCLS
  loc_B53457: NewIfNullPr clsbase
  loc_B5345A: from_stack_1v = clsbase.RsFrmGet()
  loc_B5345F: FLdPr var_88
  loc_B53462:  = Me.RecordCount
  loc_B53467: ILdRf var_B0
  loc_B5346A: CStrI4
  loc_B5346C: FStStrNoPop var_90
  loc_B5346F: ConcatStr
  loc_B53470: CVarStr var_C0
  loc_B53473: PopAdLdVar
  loc_B53474: FLdPr Me
  loc_B53477: VCallAd Control_ID_dgdABMS
  loc_B5347A: FStAdFunc var_D4
  loc_B5347D: FLdPr var_D4
  loc_B53480: LateIdSt
  loc_B53485: FFree1Str var_90
  loc_B53488: FFreeAd var_88 = ""
  loc_B5348F: FFree1Var var_C0 = ""
  loc_B53492: Branch loc_B535D7
  loc_B53495: FLdUI1
  loc_B53499: LitI2_Byte 3
  loc_B5349B: CUI1I2
  loc_B5349D: EqI2
  loc_B5349E: BranchF loc_B534A4
  loc_B534A1: Branch loc_B535D7
  loc_B534A4: FLdUI1
  loc_B534A8: LitI2_Byte 4
  loc_B534AA: CUI1I2
  loc_B534AC: EqI2
  loc_B534AD: BranchF loc_B534B3
  loc_B534B0: Branch loc_B535D7
  loc_B534B3: FLdUI1
  loc_B534B7: LitI2_Byte 5
  loc_B534B9: CUI1I2
  loc_B534BB: EqI2
  loc_B534BC: BranchF loc_B534C2
  loc_B534BF: Branch loc_B535D7
  loc_B534C2: FLdUI1
  loc_B534C6: LitI2_Byte 6
  loc_B534C8: CUI1I2
  loc_B534CA: EqI2
  loc_B534CB: BranchF loc_B5354E
  loc_B534CE: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_B534D1: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_B534D4: ConcatStr
  loc_B534D5: FStStrNoPop var_90
  loc_B534D8: LitStr " INNER JOIN publicidad ON publicidad.CodiCome = relacion.CuenCtct"
  loc_B534DB: ConcatStr
  loc_B534DC: FStStrNoPop var_94
  loc_B534DF: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_B534E2: ConcatStr
  loc_B534E3: FStStrNoPop var_98
  loc_B534E6: LitStr " WHERE relacion.CodiOfic = "
  loc_B534E9: ConcatStr
  loc_B534EA: FStStrNoPop var_9C
  loc_B534ED: ImpAdLdUI1
  loc_B534F1: CStrI2
  loc_B534F3: FStStrNoPop var_A0
  loc_B534F6: ConcatStr
  loc_B534F7: FStStrNoPop var_A4
  loc_B534FA: LitStr " AND relacion.FebaRela IS NULL AND domicilio.calle like '" & Chr(37)
  loc_B534FD: ConcatStr
  loc_B534FE: FStStrNoPop var_AC
  loc_B53501: FLdRfVar var_A8
  loc_B53504: FLdPr Me
  loc_B53507: VCallAd Control_ID_Campo4Txt
  loc_B5350A: FStAdFunc var_88
  loc_B5350D: FLdPr var_88
  loc_B53510:  = Me.Text
  loc_B53515: ILdRf var_A8
  loc_B53518: ConcatStr
  loc_B53519: FStStrNoPop var_D8
  loc_B5351C: LitStr Chr(37) & "' ORDER BY domicilio.calle, domicilio.NumeCalle"
  loc_B5351F: ConcatStr
  loc_B53520: FStStrNoPop var_DC
  loc_B53523: FLdPr Me
  loc_B53526: MemLdRfVar from_stack_1.BuscarCLS
  loc_B53529: NewIfNullPr clsbase
  loc_B5352C: Call clsbase.RedefineRS(from_stack_1v)
  loc_B53531: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_AC = "": var_A8 = "": var_D8 = ""
  loc_B53548: FFree1Ad var_88
  loc_B5354B: Branch loc_B535D7
  loc_B5354E: FLdUI1
  loc_B53552: LitI2_Byte 7
  loc_B53554: CUI1I2
  loc_B53556: EqI2
  loc_B53557: BranchF loc_B535D7
  loc_B5355A: LitStr "SELECT relacion.CucuPers, relacion.CodiOfic, relacion.CuenCtct, infogov.persona.DetaPers, IFNULL(domicilio.calle,'') as DetaCall, IFNULL(domicilio.NumeCalle,'0') as NumePuer, IFNULL(domicilio.barrio,'') as DetaBarr, IFNULL(domicilio.Manzana,'') as Manzana, IFNULL(domicilio.Casa,'') as Casa, IFNULL(ubicacion,'')  as Ubicacion FROM relacion"
  loc_B5355D: LitStr " LEFT JOIN infogov.persona ON relacion.CucuPers = infogov.persona.CucuPers"
  loc_B53560: ConcatStr
  loc_B53561: FStStrNoPop var_90
  loc_B53564: LitStr " INNER JOIN antena ON antena.CodiCome = relacion.CuenCtct"
  loc_B53567: ConcatStr
  loc_B53568: FStStrNoPop var_94
  loc_B5356B: LitStr " LEFT JOIN domicilio ON domicilio.CodiOfic = relacion.CodiOfic AND domicilio.CodiCome = relacion.CuenCtct AND domicilio.Tipo = 'COMERCIAL'"
  loc_B5356E: ConcatStr
  loc_B5356F: FStStrNoPop var_98
  loc_B53572: LitStr " WHERE relacion.CodiOfic = "
  loc_B53575: ConcatStr
  loc_B53576: FStStrNoPop var_9C
  loc_B53579: ImpAdLdUI1
  loc_B5357D: CStrI2
  loc_B5357F: FStStrNoPop var_A0
  loc_B53582: ConcatStr
  loc_B53583: FStStrNoPop var_A4
  loc_B53586: LitStr " AND relacion.FebaRela IS NULL AND domicilio.calle like '" & Chr(37)
  loc_B53589: ConcatStr
  loc_B5358A: FStStrNoPop var_AC
  loc_B5358D: FLdRfVar var_A8
  loc_B53590: FLdPr Me
  loc_B53593: VCallAd Control_ID_Campo4Txt
  loc_B53596: FStAdFunc var_88
  loc_B53599: FLdPr var_88
  loc_B5359C:  = Me.Text
  loc_B535A1: ILdRf var_A8
  loc_B535A4: ConcatStr
  loc_B535A5: FStStrNoPop var_D8
  loc_B535A8: LitStr Chr(37) & "' ORDER BY domicilio.calle, domicilio.NumeCalle"
  loc_B535AB: ConcatStr
  loc_B535AC: FStStrNoPop var_DC
  loc_B535AF: FLdPr Me
  loc_B535B2: MemLdRfVar from_stack_1.BuscarCLS
  loc_B535B5: NewIfNullPr clsbase
  loc_B535B8: Call clsbase.RedefineRS(from_stack_1v)
  loc_B535BD: FFreeStr var_90 = "": var_94 = "": var_98 = "": var_9C = "": var_A0 = "": var_A4 = "": var_AC = "": var_A8 = "": var_D8 = ""
  loc_B535D4: FFree1Ad var_88
  loc_B535D7: ExitProcHresult
End Sub

Private Sub dgdABMS_DblClick() '9E4CB8
  'Data Table: 45FF60
  loc_9E4C98: LitI2_Byte 0
  loc_9E4C9A: FLdPr Me
  loc_9E4C9D: MemStI2 bCancela
  loc_9E4CA0: ILdRf Me
  loc_9E4CA3: FStAdNoPop
  loc_9E4CA7: ImpAdLdRf MemVar_D9C5D8
  loc_9E4CAA: NewIfNullPr Global
  loc_9E4CAD: Global.Unload from_stack_1
  loc_9E4CB2: FFree1Ad var_88
  loc_9E4CB5: ExitProcHresult
End Sub

Private Sub dgdABMS_KeyDown(KeyCode As Integer, Shift As Integer) '9FC0F4
  'Data Table: 45FF60
  loc_9FC0C8: ILdI2 KeyCode
  loc_9FC0CB: CI4UI1
  loc_9FC0CC: LitI4 &HD
  loc_9FC0D1: EqI4
  loc_9FC0D2: BranchF loc_9FC0F2
  loc_9FC0D5: LitI2_Byte 0
  loc_9FC0D7: FLdPr Me
  loc_9FC0DA: MemStI2 bCancela
  loc_9FC0DD: ILdRf Me
  loc_9FC0E0: FStAdNoPop
  loc_9FC0E4: ImpAdLdRf MemVar_D9C5D8
  loc_9FC0E7: NewIfNullPr Global
  loc_9FC0EA: Global.Unload from_stack_1
  loc_9FC0EF: FFree1Ad var_88
  loc_9FC0F2: ExitProcHresult
End Sub

Private Sub OKButton_Click() '9E4E5C
  'Data Table: 45FF60
  loc_9E4E3C: LitI2_Byte 0
  loc_9E4E3E: FLdPr Me
  loc_9E4E41: MemStI2 bCancela
  loc_9E4E44: ILdRf Me
  loc_9E4E47: FStAdNoPop
  loc_9E4E4B: ImpAdLdRf MemVar_D9C5D8
  loc_9E4E4E: NewIfNullPr Global
  loc_9E4E51: Global.Unload from_stack_1
  loc_9E4E56: FFree1Ad var_88
  loc_9E4E59: ExitProcHresult
  loc_9E4E5A: NeCyR8
End Sub

Public Function global_4587360Get() '460AB8
  global_4587360Get = global_4587360
End Function

Public Sub global_4587360Put(Value) '460AD2
  global_4587360 = Value
End Sub

Public Sub global_4587360Set(Value) '460AEC
  global_4587360 = Value
End Sub

Public Function bCancelaGet() '460B06
  bCancelaGet = bCancela
End Function

Public Sub bCancelaPut(Value) '460B15
  bCancela = Value
End Sub
