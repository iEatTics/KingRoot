.class public Lcom/kingroot/kinguser/bfz;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bnV:Landroid/widget/TextView;

.field private bnW:Landroid/widget/TextView;

.field private bnX:Landroid/widget/TextView;

.field private bnY:Landroid/widget/TextView;

.field private bnZ:Landroid/widget/Button;

.field private boa:Landroid/widget/Button;

.field private bob:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

.field private boc:Lcom/kingroot/kinguser/bic;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bfz;)Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz;->bob:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    return-object v0
.end method

.method private abk()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz;->boc:Lcom/kingroot/kinguser/bic;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/kingroot/kinguser/bic;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bfz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bic;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfz;->boc:Lcom/kingroot/kinguser/bic;

    .line 130
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz;->boc:Lcom/kingroot/kinguser/bic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bic;->show()V

    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz;->boc:Lcom/kingroot/kinguser/bic;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07050b

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->lJ(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz;->boc:Lcom/kingroot/kinguser/bic;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->ee(Z)V

    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz;->boc:Lcom/kingroot/kinguser/bic;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07050a

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->setTitleText(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz;->boc:Lcom/kingroot/kinguser/bic;

    .line 135
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070509

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->d(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz;->boc:Lcom/kingroot/kinguser/bic;

    new-instance v1, Lcom/kingroot/kinguser/bfz$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfz$2;-><init>(Lcom/kingroot/kinguser/bfz;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->b(Lcom/kingroot/kinguser/bic$a;)V

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz;->boc:Lcom/kingroot/kinguser/bic;

    new-instance v1, Lcom/kingroot/kinguser/bfz$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bfz$3;-><init>(Lcom/kingroot/kinguser/bfz;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bic;->a(Lcom/kingroot/kinguser/bic$a;)V

    .line 164
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz;->boc:Lcom/kingroot/kinguser/bic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bic;->dismiss()V

    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz;->boc:Lcom/kingroot/kinguser/bic;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bic;->show()V

    goto :goto_0
.end method

.method private abl()V
    .locals 3

    .prologue
    .line 168
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    new-instance v2, Lcom/kingroot/kinguser/bfz$4;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/bfz$4;-><init>(Lcom/kingroot/kinguser/bfz;)V

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 177
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bfz;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bfz;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfz;->abl()V

    return-void
.end method


# virtual methods
.method protected oG()Landroid/view/View;
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bfz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 60
    const v1, 0x7f030102

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 61
    const v0, 0x7f0f02bc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfz;->bnV:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0f02be

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfz;->bnW:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0f02c0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfz;->bnX:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0f02c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfz;->bnY:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0f02c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfz;->bnZ:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz;->bnZ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f0f02c3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfz;->boa:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz;->boa:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-object v1
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/kingroot/kinguser/ada;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bfz;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 49
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0704dc

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ada;->getWholeView()Landroid/view/View;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    const v2, 0x7f0f0336

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    :cond_0
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 102
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18949

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 104
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaZ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfz;->abk()V

    goto :goto_0

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfz;->abl()V

    goto :goto_0

    .line 112
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1894a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 114
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    new-instance v2, Lcom/kingroot/kinguser/bfz$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/bfz$1;-><init>(Lcom/kingroot/kinguser/bfz;)V

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 123
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bfz;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f02c3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onResume()V

    .line 77
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1894b

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 79
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bfz;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bfz;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 84
    :cond_0
    const-string v1, "key_risk_url_log"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfz;->bob:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz;->bob:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bfz;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz;->bnV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfz;->bob:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->aaO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz;->bnW:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfz;->bob:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    iget-object v1, v1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz;->bnX:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfz;->bob:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->aaQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/bfz;->bnY:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfz;->bob:Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->aaP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method
