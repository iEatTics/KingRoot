.class public Lcom/kingroot/kinguser/axt;
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

.field private baw:Lcom/kingroot/kinguser/bed;

.field public final bbA:Lcom/kingroot/kinguser/axb$a;

.field private bbz:Lcom/kingroot/kinguser/akg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/acy;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v0, Lcom/kingroot/kinguser/axt$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axt$1;-><init>(Lcom/kingroot/kinguser/axt;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axt;->bbA:Lcom/kingroot/kinguser/axb$a;

    .line 201
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/axt$2;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/axt$2;-><init>(Lcom/kingroot/kinguser/axt;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axt;->baw:Lcom/kingroot/kinguser/bed;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axt;->bat:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axt;->bau:Ljava/util/HashSet;

    .line 75
    invoke-static {}, Lcom/kingroot/kinguser/akg;->Ap()Lcom/kingroot/kinguser/akg;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axt;->bbz:Lcom/kingroot/kinguser/akg;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axt;)Lcom/kingroot/kinguser/akg;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/axt;->bbz:Lcom/kingroot/kinguser/akg;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axt;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axt;->jY(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/axt;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/axt;->bau:Ljava/util/HashSet;

    return-object v0
.end method

.method private jY(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 257
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    .line 259
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 266
    const/4 v0, 0x1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 260
    :catch_0
    move-exception v1

    goto :goto_0

    .line 268
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 175
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_3

    .line 176
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 177
    iget-object v1, p0, Lcom/kingroot/kinguser/axt;->bat:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 179
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 180
    iget-object v2, p0, Lcom/kingroot/kinguser/axt;->bat:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    iget-object v2, p0, Lcom/kingroot/kinguser/axt;->bat:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 182
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

    .line 183
    iget-object v3, v1, Lcom/kingroot/kinguser/afk;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/kingroot/kinguser/axt;->jY(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 184
    iget-object v3, p0, Lcom/kingroot/kinguser/axt;->bat:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/axt;->bat:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/kingroot/kinguser/axt;->bbA:Lcom/kingroot/kinguser/axb$a;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 190
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/afk;

    .line 191
    iget-object v2, p0, Lcom/kingroot/kinguser/axt;->bau:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/kingroot/kinguser/afk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axt;->Ve:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/kingroot/kinguser/afk$d;

    iget-object v1, p0, Lcom/kingroot/kinguser/axt;->bat:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/afk$d;->setData(Ljava/util/List;)V

    .line 195
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axt;->oR()V

    .line 199
    :goto_2
    return-void

    .line 198
    :cond_3
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/acy;->a(Landroid/os/Message;)V

    goto :goto_2
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/kingroot/kinguser/afk$d;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/kingroot/kinguser/afk$d;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method protected oI()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0f000e

    const/4 v5, 0x2

    const/4 v4, -0x1

    .line 139
    invoke-super {p0}, Lcom/kingroot/kinguser/acy;->oI()V

    .line 142
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axt;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f2

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/kingroot/kinguser/axt;->aXi:Landroid/view/ViewGroup;

    .line 144
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 145
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 146
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 147
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axt;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/axt;->aXi:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/yp;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axt;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 149
    invoke-virtual {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 152
    iget-object v0, p0, Lcom/kingroot/kinguser/axt;->aXi:Landroid/view/ViewGroup;

    const v1, 0x7f0f000f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 153
    const-wide/32 v2, 0x7f070044

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axt;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axt;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300dd

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axt;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/yp;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axt;->aWk:Landroid/view/View;

    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/axt;->aWk:Landroid/view/View;

    const v1, 0x7f0f00b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    const-wide/32 v2, 0x7f07031d

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/axt;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0075

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/axt;->aWk:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 162
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 163
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 164
    invoke-virtual {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 165
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axt;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/axt;->aWk:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/yp;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axt;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axt;->aWk:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 167
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axt;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/yp;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0e0069

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 168
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axt;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/yp;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0f000c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/axt;->bas:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/kingroot/kinguser/axt;->Vd:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 170
    return-void
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axt;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 123
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 124
    const/4 v0, 0x0

    .line 125
    if-eqz v1, :cond_0

    .line 126
    const-string v0, "setting_title"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    const-wide/32 v0, 0x7f07031e

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/axt;->V(J)Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_1
    new-instance v1, Lcom/kingroot/kinguser/ada;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axt;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Lcom/kingroot/kinguser/ada;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f0336

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    return-object v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/kingroot/kinguser/acy;->onActivityResult(IILandroid/content/Intent;)V

    .line 104
    if-nez p1, :cond_0

    if-ne p2, v2, :cond_0

    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/axt;->Vd:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/axt;->bas:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axt;->baw:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 111
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axt;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f000f

    if-ne v0, v1, :cond_0

    .line 280
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18894

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 281
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axt;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/activitys/SelectAppsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    const-string v1, "software.protect_list.page"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axt;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 304
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/afk;

    .line 286
    iget-object v1, p0, Lcom/kingroot/kinguser/axt;->bat:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 287
    iget-object v1, p0, Lcom/kingroot/kinguser/axt;->bau:Ljava/util/HashSet;

    iget-object v2, v0, Lcom/kingroot/kinguser/afk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 288
    iget-object v1, p0, Lcom/kingroot/kinguser/axt;->bbz:Lcom/kingroot/kinguser/akg;

    iget-object v2, v0, Lcom/kingroot/kinguser/afk;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/akg;->gF(Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/axt$3;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/axt$3;-><init>(Lcom/kingroot/kinguser/axt;Lcom/kingroot/kinguser/afk;)V

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 300
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axt;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 301
    iget-object v0, p0, Lcom/kingroot/kinguser/axt;->Ve:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/kingroot/kinguser/afk$d;

    iget-object v1, p0, Lcom/kingroot/kinguser/axt;->bat:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/afk$d;->setData(Ljava/util/List;)V

    .line 302
    iget-object v0, p0, Lcom/kingroot/kinguser/axt;->Ve:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Lcom/kingroot/kinguser/acy;->onResume()V

    .line 253
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axt;->baw:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 254
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/kingroot/kinguser/acy;->onStop()V

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/axt;->bbz:Lcom/kingroot/kinguser/akg;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/axt;->bbz:Lcom/kingroot/kinguser/akg;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/akg;->aI(Landroid/content/Context;)V

    .line 99
    :cond_0
    return-void
.end method
