.class public Lcom/kingroot/kinguser/bii;
.super Lcom/kingroot/kinguser/bij;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bii$a;
    }
.end annotation


# instance fields
.field private aci:Landroid/widget/Button;

.field private acj:Landroid/widget/Button;

.field private aoR:Landroid/widget/ImageView;

.field private brb:Landroid/widget/TextView;

.field private btr:Landroid/widget/TextView;

.field private btt:Landroid/widget/ImageView;

.field private btu:Landroid/widget/RelativeLayout;

.field private btv:Z

.field private btw:Lcom/kingroot/kinguser/bii$a;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f0d0069

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/bij;-><init>(Landroid/content/Context;I)V

    .line 45
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/kingroot/kinguser/bii;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188d3

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 48
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bii$a;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/kingroot/kinguser/bii;->btw:Lcom/kingroot/kinguser/bii$a;

    .line 151
    return-void
.end method

.method public eg(Z)V
    .locals 0

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/kingroot/kinguser/bii;->btv:Z

    .line 143
    return-void
.end method

.method public h(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/bii;->btu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    return-void
.end method

.method public jd(I)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/bii;->aoR:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    return-void
.end method

.method public lK(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/bii;->aci:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method

.method public lM(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/bii;->btr:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method

.method public lN(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/bii;->brb:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public n(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/bii;->btt:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/bii;->acj:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 93
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188d7

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 95
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->cl(Z)V

    .line 97
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/aks;->cm(Z)V

    .line 98
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bgt;->bu(Landroid/content/Context;)V

    .line 120
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bii;->dismiss()V

    .line 121
    return-void

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bii;->aci:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 101
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bii;->btv:Z

    if-nez v0, :cond_2

    .line 103
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->cl(Z)V

    .line 105
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188d6

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 107
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/aks;->cm(Z)V

    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/bgn;->abM()V

    goto :goto_0

    .line 111
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188d5

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 113
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->ci(Z)V

    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/bii;->btw:Lcom/kingroot/kinguser/bii$a;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/bii;->btw:Lcom/kingroot/kinguser/bii$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bii$a;->UD()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bij;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f030072

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bii;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bii;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 57
    const v0, 0x7f0f00de

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bii;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bii;->aoR:Landroid/widget/ImageView;

    .line 58
    const v0, 0x7f0f0189

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bii;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bii;->btt:Landroid/widget/ImageView;

    .line 59
    const v0, 0x7f0f018a

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bii;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/bii;->btu:Landroid/widget/RelativeLayout;

    .line 60
    const v0, 0x7f0f0076

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bii;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bii;->brb:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0f0153

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bii;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bii;->btr:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0f0096

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bii;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bii;->aci:Landroid/widget/Button;

    .line 64
    const v0, 0x7f0f0097

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bii;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/bii;->acj:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/bii;->aci:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/bii;->acj:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bii;->setCanceledOnTouchOutside(Z)V

    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/bii;->btt:Landroid/widget/ImageView;

    new-instance v1, Lcom/kingroot/kinguser/bii$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bii$1;-><init>(Lcom/kingroot/kinguser/bii;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 160
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bii;->btv:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/bii;->btw:Lcom/kingroot/kinguser/bii$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bii$a;->UD()V

    .line 165
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/bij;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 171
    :try_start_0
    invoke-super {p0}, Lcom/kingroot/kinguser/bij;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    goto :goto_0
.end method
