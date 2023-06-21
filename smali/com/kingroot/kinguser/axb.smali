.class public Lcom/kingroot/kinguser/axb;
.super Lcom/kingroot/kinguser/acy;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/kingroot/kinguser/adb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/axb$b;,
        Lcom/kingroot/kinguser/axb$a;
    }
.end annotation


# instance fields
.field private aNW:Landroid/view/View;

.field private aSN:Lcom/kingroot/kinguser/bed;

.field private aXg:Lcom/kingroot/kinguser/akd;

.field private aXh:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/kingroot/kinguser/afk;",
            ">;"
        }
    .end annotation
.end field

.field private aXi:Landroid/view/ViewGroup;

.field private aXj:Lcom/kingroot/kinguser/axb$b;

.field private acr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/afk;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/akd;Lcom/kingroot/kinguser/axb$b;)V
    .locals 5

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/acy;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axb;->acr:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axb;->aXh:Ljava/util/HashSet;

    .line 205
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/axb$2;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/axb$2;-><init>(Lcom/kingroot/kinguser/axb;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axb;->aSN:Lcom/kingroot/kinguser/bed;

    .line 78
    iput-object p2, p0, Lcom/kingroot/kinguser/axb;->aXg:Lcom/kingroot/kinguser/akd;

    .line 79
    iput-object p3, p0, Lcom/kingroot/kinguser/axb;->aXj:Lcom/kingroot/kinguser/axb$b;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/akd;Lcom/kingroot/kinguser/axb$b;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/acy;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axb;->acr:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axb;->aXh:Ljava/util/HashSet;

    .line 205
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/axb$2;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/axb$2;-><init>(Lcom/kingroot/kinguser/axb;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axb;->aSN:Lcom/kingroot/kinguser/bed;

    .line 84
    iput-object p2, p0, Lcom/kingroot/kinguser/axb;->aXg:Lcom/kingroot/kinguser/akd;

    .line 85
    iput-object p3, p0, Lcom/kingroot/kinguser/axb;->aXj:Lcom/kingroot/kinguser/axb$b;

    .line 86
    iput-object p4, p0, Lcom/kingroot/kinguser/axb;->mTitle:Ljava/lang/String;

    .line 87
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axb;)Lcom/kingroot/kinguser/axb$b;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/axb;->aXj:Lcom/kingroot/kinguser/axb$b;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axb;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/axb;->aXh:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/axb;)Lcom/kingroot/kinguser/akd;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/axb;->aXg:Lcom/kingroot/kinguser/akd;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/acy;->a(Landroid/os/Message;)V

    .line 267
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 286
    :goto_0
    return-void

    .line 269
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 276
    iput-object v0, p0, Lcom/kingroot/kinguser/axb;->acr:Ljava/util/ArrayList;

    .line 277
    iget-object v1, p0, Lcom/kingroot/kinguser/axb;->Ve:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/kingroot/kinguser/afk$b;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/afk$b;->setData(Ljava/util/List;)V

    .line 279
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/axb;->U(J)V

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/kingroot/kinguser/afk$b;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/afk$b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 101
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/acy;->i(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/axb;->acr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/axb;->aNW:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/axb;->Vd:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axb;->aNW:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/axb;->Vd:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected oI()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 126
    invoke-super {p0}, Lcom/kingroot/kinguser/acy;->oI()V

    .line 129
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axb;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/kingroot/kinguser/yp;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v2, 0x7f0e006d

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 140
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axb;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300f2

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingroot/kinguser/axb;->aXi:Landroid/view/ViewGroup;

    .line 141
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    .line 142
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axb;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 143
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 144
    iget-object v2, p0, Lcom/kingroot/kinguser/axb;->aXi:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/yp;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/axb;->aXi:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/axb;->aXi:Landroid/view/ViewGroup;

    const v2, 0x7f0f000f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 148
    const-wide/32 v2, 0x7f070045

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axb;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 149
    new-instance v2, Lcom/kingroot/kinguser/axb$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/axb$1;-><init>(Lcom/kingroot/kinguser/axb;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axb;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300dd

    invoke-virtual {v1}, Lcom/kingroot/kinguser/yp;->getContainer()Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axb;->aNW:Landroid/view/View;

    .line 178
    iget-object v0, p0, Lcom/kingroot/kinguser/axb;->aNW:Landroid/view/View;

    const v2, 0x7f0f00b6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 179
    const-wide/32 v2, 0x7f07007b

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axb;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0e0075

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/axb;->aNW:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 182
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 183
    iget-object v2, p0, Lcom/kingroot/kinguser/axb;->aNW:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v2, p0, Lcom/kingroot/kinguser/axb;->aNW:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/yp;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget-object v0, p0, Lcom/kingroot/kinguser/axb;->Vd:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 188
    const/4 v1, 0x2

    const v2, 0x7f0f000e

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 189
    const/4 v1, 0x3

    const v2, 0x7f0f0016

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 191
    invoke-virtual {p0, p0}, Lcom/kingroot/kinguser/axb;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/kingroot/kinguser/axb;->Vd:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 194
    return-void
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 6

    .prologue
    .line 114
    new-instance v1, Lcom/kingroot/kinguser/ada;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axb;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/kingroot/kinguser/axb;->mTitle:Ljava/lang/String;

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v4, 0x7f070316

    invoke-virtual {p0, v4, v5}, Lcom/kingroot/kinguser/axb;->V(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Lcom/kingroot/kinguser/ada;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f0336

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    return-object v1

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axb;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 198
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axb;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 201
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/kingroot/kinguser/acy;->onActivityResult(IILandroid/content/Intent;)V

    .line 202
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/acy;->onCreate(Landroid/os/Bundle;)V

    .line 92
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 303
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/afk;

    .line 304
    iget-boolean v1, v0, Lcom/kingroot/kinguser/afk;->mChecked:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/kingroot/kinguser/afk;->mChecked:Z

    .line 306
    iget-boolean v1, v0, Lcom/kingroot/kinguser/afk;->mChecked:Z

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/kingroot/kinguser/axb;->aXh:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 317
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axb;->aXh:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/axb;->aXi:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 325
    :goto_2
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/axb;->U(J)V

    .line 326
    return-void

    :cond_0
    move v1, v2

    .line 304
    goto :goto_0

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/axb;->aXh:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axb;->aXi:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 356
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axb;->aSN:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 357
    invoke-super {p0}, Lcom/kingroot/kinguser/acy;->onResume()V

    .line 358
    return-void
.end method
