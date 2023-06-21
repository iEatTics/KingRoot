.class public Lcom/kingroot/kinguser/bib;
.super Lcom/kingroot/kinguser/bid;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bib$a;
    }
.end annotation


# instance fields
.field private Vd:Landroid/widget/ListView;

.field private afU:Landroid/widget/ImageView;

.field private bgq:Landroid/widget/TextView;

.field private brb:Landroid/widget/TextView;

.field private bsR:Landroid/widget/TextView;

.field private bsS:Ljava/lang/CharSequence;

.field private bsT:Ljava/lang/CharSequence;

.field private bsU:Landroid/content/DialogInterface$OnClickListener;

.field private bsV:Landroid/content/DialogInterface$OnClickListener;

.field private bsW:Lcom/kingroot/kinguser/bib$a;

.field private bsX:Lcom/kingroot/kinguser/bji;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/bji",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bji;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/bji",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    iput-object p1, p0, Lcom/kingroot/kinguser/bib;->bsX:Lcom/kingroot/kinguser/bji;

    .line 154
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/kingroot/kinguser/bib;->bsT:Ljava/lang/CharSequence;

    .line 144
    iput-object p2, p0, Lcom/kingroot/kinguser/bib;->bsV:Landroid/content/DialogInterface$OnClickListener;

    .line 145
    return-void
.end method

.method protected acQ()Landroid/view/View;
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03004b

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/bib;->bI(I)Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bib;->mContentView:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected acS()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03004c

    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/bib;->bI(I)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bib;->btf:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->btf:Landroid/view/View;

    return-object v0
.end method

.method public acT()Lcom/kingroot/kinguser/bji;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/kingroot/kinguser/bji",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->bsX:Lcom/kingroot/kinguser/bji;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->acj:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->bsV:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->bsV:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x1

    invoke-interface {v0, p0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 167
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bib;->dismiss()V

    .line 168
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->aci:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->bsU:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->bsU:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x2

    invoke-interface {v0, p0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bid;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f0f0075

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bib;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bib;->afU:Landroid/widget/ImageView;

    .line 71
    const v0, 0x7f0f0076

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bib;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bib;->brb:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0f014f

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bib;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bib;->bsR:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0f014e

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bib;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bib;->bgq:Landroid/widget/TextView;

    .line 75
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bib;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bib;->Vd:Landroid/widget/ListView;

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->Vd:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 77
    new-instance v0, Lcom/kingroot/kinguser/bib$a;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bib;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bib$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bib;->bsW:Lcom/kingroot/kinguser/bib$a;

    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->Vd:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/kingroot/kinguser/bib;->bsW:Lcom/kingroot/kinguser/bib$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->aci:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->acj:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->bsT:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->acj:Landroid/widget/Button;

    iget-object v1, p0, Lcom/kingroot/kinguser/bib;->bsT:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->bsS:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->aci:Landroid/widget/Button;

    iget-object v1, p0, Lcom/kingroot/kinguser/bib;->bsS:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->bsT:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->bsV:Landroid/content/DialogInterface$OnClickListener;

    if-nez v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->acj:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->aci:Landroid/widget/Button;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 94
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bib;->setCanceledOnTouchOutside(Z)V

    .line 95
    return-void
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 99
    invoke-super {p0}, Lcom/kingroot/kinguser/bid;->onStart()V

    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->bsX:Lcom/kingroot/kinguser/bji;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bji;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bib;->afU:Landroid/widget/ImageView;

    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zh;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bib;->brb:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v1, p0, Lcom/kingroot/kinguser/bib;->bsR:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/kingroot/kinguser/bib;->bsX:Lcom/kingroot/kinguser/bji;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bji;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/bib;->bsV:Landroid/content/DialogInterface$OnClickListener;

    if-nez v1, :cond_2

    .line 113
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07008b

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->adz()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/kingroot/kinguser/bib;->bgq:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/kingroot/kinguser/bib;->acj:Landroid/widget/Button;

    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 133
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bib;->bsW:Lcom/kingroot/kinguser/bib$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->ady()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bib$a;->setData(Ljava/util/List;)V

    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->bsW:Lcom/kingroot/kinguser/bib$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bib$a;->getCount()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_4

    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->Vd:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v1, 0xfa

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 138
    :goto_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->bsW:Lcom/kingroot/kinguser/bib$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bib$a;->notifyDataSetChanged()V

    .line 140
    return-void

    .line 117
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070087

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->adz()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lcom/kingroot/kinguser/bib;->bgq:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/kingroot/kinguser/bib;->acj:Landroid/widget/Button;

    const v2, 0x7f07008a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 121
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->vl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 123
    const-string v2, "zh_CN"

    invoke-static {}, Lcom/kingroot/kinguser/zb;->pi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/kingroot/kinguser/bib;->bsR:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 128
    :cond_3
    iget-object v2, p0, Lcom/kingroot/kinguser/bib;->bsR:Landroid/widget/TextView;

    const v3, 0x7f07008e

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bib;->Vd:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 105
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 217
    :try_start_0
    invoke-super {p0}, Lcom/kingroot/kinguser/bid;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    goto :goto_0
.end method
