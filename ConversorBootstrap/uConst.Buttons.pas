{MIT License

Copyright (c) 2025 Daniel Fernandes

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.}
{ ******************************************************* }

{ Delphi Bootstrap Library }

{ File     : uConst.Buttons.pas }
{ Developer: Daniel Fernandes Rodrigures }
{ Email    : dinosdev.daniel@gmail.com }
{ this unit is a part of the Open Source. }
{ licensed under a MIT - see LICENSE.md}

{ ******************************************************* }
unit uConst.Buttons;

interface
 const
  //Buttums
  Primary    = 'btn-primary';
  Secondary  = 'btn-secondary';
  Success    = 'btn-success';
  Danger     = 'btn-danger';
  Warning    = 'btn-warning';
  Info       = 'btn-info';
  Light      = 'btn-light';
  Dark       = 'btn-dark';
  Link       = 'btn-link';

  //Buttums - outline
  PrimaryOutline    = 'btn-outline-primary';
  SecondaryOutline  = 'btn-outline-secondary';
  SuccessOutline    = 'btn-outline-success';
  DangerOutline     = 'btn-outline-danger';
  WarningOutline    = 'btn-outline-warning';
  InfoOutline       = 'btn-outline-info';
  LightOutline      = 'btn-outline-light';
  DarkOutline       = 'btn-outline-dark';
  LinkOutline       = 'btn-outline-link';

type
 TypeButtom = ( TpNone, tpPrimary, tpSecondary, tpSuccess, tpDanger, tpWarning, tpInfo, tpLight, tpDark, tpLink,
                 tpPrimaryOutline, tpSecondaryOutline, tpSuccessOutline, tpDangerOutline,
                 tpWarningOutline, tpInfoOutline, tpLightOutline, tpDarkOutline, tpLinkOutline);
implementation

end.
