.class public Lcom/kingroot/kinguser/aoi;
.super Lcom/kingroot/kinguser/anw;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private aFA:Landroid/widget/EditText;

.field private aFB:Landroid/view/View;

.field private aFC:Landroid/widget/ImageView;

.field private aFD:Landroid/widget/ImageView;

.field private aFE:Ljava/lang/String;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lcom/kingroot/kinguser/aoa;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p3}, Lcom/kingroot/kinguser/anw;-><init>(Landroid/view/View;Lcom/kingroot/kinguser/aoa;)V

    .line 83
    new-instance v0, Lcom/kingroot/kinguser/aoi$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aoi$1;-><init>(Lcom/kingroot/kinguser/aoi;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aoi;->mTextWatcher:Landroid/text/TextWatcher;

    .line 34
    iput-object p2, p0, Lcom/kingroot/kinguser/aoi;->aFE:Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Lcom/kingroot/kinguser/aoi;->gq()V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aoi;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFC:Landroid/widget/ImageView;

    return-object v0
.end method

.method private gq()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->mView:Landroid/view/View;

    const v1, 0x7f0f0091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFA:Landroid/widget/EditText;

    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFA:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kingroot/kinguser/aoi;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFA:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFA:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFA:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kingroot/kinguser/aoi;->aFE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->mView:Landroid/view/View;

    const v1, 0x7f0f00f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFB:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFB:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->mView:Landroid/view/View;

    const v1, 0x7f0f00f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFC:Landroid/widget/ImageView;

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFC:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFC:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->mView:Landroid/view/View;

    const v1, 0x7f0f0008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFD:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFD:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method private hF(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFE:Ljava/lang/String;

    .line 132
    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/kingroot/kinguser/aoi;->C(Ljava/lang/String;Z)V

    .line 133
    iget-object v3, p0, Lcom/kingroot/kinguser/aoi;->aEz:Lcom/kingroot/kinguser/aoa;

    invoke-interface {v3, v0, v1}, Lcom/kingroot/kinguser/aoa;->B(Ljava/lang/String;Z)V

    move v0, v2

    .line 134
    :goto_0
    return v0

    .line 128
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f07040e

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    move v0, v1

    .line 129
    goto :goto_0
.end method


# virtual methods
.method public C(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 40
    if-eqz p2, :cond_0

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFA:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kingroot/kinguser/aoi;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFA:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFA:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kingroot/kinguser/aoi;->aFA:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFC:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    :goto_0
    if-eqz p2, :cond_1

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFA:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/kingroot/kinguser/aoi;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 54
    :cond_1
    return-void

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFC:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public JS()Landroid/view/View;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFA:Landroid/widget/EditText;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 109
    :sswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFA:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aoi;->hF(Ljava/lang/String;)Z

    goto :goto_0

    .line 113
    :sswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aEz:Lcom/kingroot/kinguser/aoa;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aoa;->Jx()V

    goto :goto_0

    .line 116
    :sswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFA:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 107
    :sswitch_data_0
    .sparse-switch
        0x7f0f0008 -> :sswitch_1
        0x7f0f00f8 -> :sswitch_2
        0x7f0f00f9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 141
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_1

    .line 142
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aFA:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aoi;->hF(Ljava/lang/String;)Z

    move-result v0

    .line 146
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 152
    check-cast p1, Landroid/widget/EditText;

    .line 153
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/aoi;->aEz:Lcom/kingroot/kinguser/aoa;

    invoke-interface {v0}, Lcom/kingroot/kinguser/aoa;->Jz()V

    .line 157
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
