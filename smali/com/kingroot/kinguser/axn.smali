.class public Lcom/kingroot/kinguser/axn;
.super Lcom/kingroot/kinguser/acy;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private aWk:Landroid/view/View;

.field private aXi:Landroid/view/ViewGroup;

.field private bas:Landroid/view/View;

.field private bat:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/afk;",
            ">;"
        }
    .end annotation
.end field

.field private bau:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bav:Lcom/kingroot/kinguser/ake;

.field private baw:Lcom/kingroot/kinguser/bed;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/acy;-><init>(Landroid/content/Context;)V

    .line 172
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/axn$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/axn$1;-><init>(Lcom/kingroot/kinguser/axn;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axn;->baw:Lcom/kingroot/kinguser/bed;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axn;->bat:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axn;->bau:Ljava/util/HashSet;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axn;)Lcom/kingroot/kinguser/ake;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/axn;->bav:Lcom/kingroot/kinguser/ake;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axn;Lcom/kingroot/kinguser/ake;)Lcom/kingroot/kinguser/ake;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/kingroot/kinguser/axn;->bav:Lcom/kingroot/kinguser/ake;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axn;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axn;->jY(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axn;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/axn;->bau:Ljava/util/HashSet;

    return-object v0
.end method

.method private jY(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 221
    .line 222
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    .line 224
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 231
    const/4 v0, 0x1

    .line 237
    :cond_0
    :goto_0
    return v0

    .line 225
    :catch_0
    move-exception v1

    goto :goto_0

    .line 233
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_3

    .line 146
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 147
    iget-object v1, p0, Lcom/kingroot/kinguser/axn;->bat:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 149
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 150
    iget-object v2, p0, Lcom/kingroot/kinguser/axn;->bat:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    iget-object v2, p0, Lcom/kingroot/kinguser/axn;->bat:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 152
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/afk;

    .line 153
    iget-object v3, v1, Lcom/kingroot/kinguser/afk;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/kingroot/kinguser/axn;->jY(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    iget-object v3, p0, Lcom/kingroot/kinguser/axn;->bat:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_1
    new-instance v1, Lcom/kingroot/kinguser/axb$a;

    invoke-direct {v1}, Lcom/kingroot/kinguser/axb$a;-><init>()V

    .line 160
    iget-object v2, p0, Lcom/kingroot/kinguser/axn;->bat:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 162
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/afk;

    .line 163
    iget-object v2, p0, Lcom/kingroot/kinguser/axn;->bau:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/kingroot/kinguser/afk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axn;->Ve:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/kingroot/kinguser/afk$d;

    iget-object v1, p0, Lcom/kingroot/kinguser/axn;->bat:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/afk$d;->setData(Ljava/util/List;)V

    .line 166
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axn;->oR()V

    .line 170
    :goto_2
    return-void

    .line 169
    :cond_3
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/acy;->a(Landroid/os/Message;)V

    goto :goto_2
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lcom/kingroot/kinguser/afk$d;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axn;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/kingroot/kinguser/afk$d;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method protected oI()V
    .locals 7

    .prologue
    const v6, 0x7f0f000e

    const/4 v5, 0x2

    const/4 v4, -0x1

    .line 109
    invoke-super {p0}, Lcom/kingroot/kinguser/acy;->oI()V

    .line 112
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axn;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingroot/kinguser/axn;->aXi:Landroid/view/ViewGroup;

    .line 113
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 114
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 115
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 116
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axn;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/axn;->aXi:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/yp;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axn;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 118
    invoke-virtual {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/axn;->aXi:Landroid/view/ViewGroup;

    const v1, 0x7f0f000f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 122
    const-wide/32 v2, 0x7f070044

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axn;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axn;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300dd

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axn;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/yp;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axn;->aWk:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/axn;->aWk:Landroid/view/View;

    const v1, 0x7f0f00b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    const-wide/32 v2, 0x7f070106

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axn;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0075

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v0, p0, Lcom/kingroot/kinguser/axn;->aWk:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 131
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 132
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 133
    invoke-virtual {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 134
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axn;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/axn;->aWk:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/yp;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axn;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axn;->aWk:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 136
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axn;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/yp;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0e0069

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 137
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axn;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/yp;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0f000c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axn;->bas:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/kingroot/kinguser/axn;->Vd:Landroid/widget/ListView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0201c0

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 140
    return-void
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 3

    .prologue
    .line 100
    const-wide/32 v0, 0x7f070105

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/axn;->V(J)Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/kingroot/kinguser/ada;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axn;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    return-object v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/kingroot/kinguser/acy;->onActivityResult(IILandroid/content/Intent;)V

    .line 82
    if-nez p1, :cond_0

    if-ne p2, v2, :cond_0

    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/axn;->Vd:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/axn;->bas:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 86
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axn;->baw:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 89
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axn;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 91
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f000f

    if-ne v0, v1, :cond_0

    .line 245
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1877b

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 246
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axn;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/activitys/SelectAppsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    const-string v1, "software.protect_list.page"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axn;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 260
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/afk;

    .line 251
    iget-object v1, p0, Lcom/kingroot/kinguser/axn;->bat:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 252
    iget-object v1, p0, Lcom/kingroot/kinguser/axn;->bau:Ljava/util/HashSet;

    iget-object v2, v0, Lcom/kingroot/kinguser/afk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 253
    iget-object v1, p0, Lcom/kingroot/kinguser/axn;->bav:Lcom/kingroot/kinguser/ake;

    iget-object v0, v0, Lcom/kingroot/kinguser/afk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ake;->gF(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axn;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 257
    iget-object v0, p0, Lcom/kingroot/kinguser/axn;->Ve:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/kingroot/kinguser/afk$d;

    iget-object v1, p0, Lcom/kingroot/kinguser/axn;->bat:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/afk$d;->setData(Ljava/util/List;)V

    .line 258
    iget-object v0, p0, Lcom/kingroot/kinguser/axn;->Ve:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Lcom/kingroot/kinguser/acy;->onResume()V

    .line 217
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axn;->baw:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 218
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/kingroot/kinguser/acy;->onStop()V

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/axn;->bav:Lcom/kingroot/kinguser/ake;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/axn;->bav:Lcom/kingroot/kinguser/ake;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axn;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ake;->aI(Landroid/content/Context;)V

    .line 77
    :cond_0
    return-void
.end method
