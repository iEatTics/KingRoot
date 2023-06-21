.class public Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$b;,
        Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;,
        Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;
    }
.end annotation


# instance fields
.field aim:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field private aio:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;

.field private aip:I

.field private aiq:Lcom/kingroot/kinguser/bed;

.field private air:Lcom/kingroot/kinguser/bed;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->aim:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->ain:Ljava/util/List;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->aip:I

    .line 62
    new-instance v0, Lcom/kingroot/kinguser/bed;

    new-instance v1, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$1;-><init>(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)V

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->aiq:Lcom/kingroot/kinguser/bed;

    .line 82
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$2;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$2;-><init>(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->air:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->aip:I

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->ain:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->aio:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->aiq:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->air:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    const v0, 0x7f030071

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->setContentView(I)V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_0

    .line 174
    const-string v0, "dpkg"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 179
    :cond_0
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->aim:Ljava/util/ArrayList;

    .line 181
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    .line 182
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    :try_start_0
    new-instance v4, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;

    invoke-direct {v4}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;-><init>()V

    .line 185
    iput-object v0, v4, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;->pkgName:Ljava/lang/String;

    .line 186
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;->afR:Z

    .line 187
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;->appName:Ljava/lang/String;

    .line 188
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    goto :goto_0

    .line 195
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ajv;->zD()Lcom/kingroot/kinguser/ajv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ajv;->zE()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->aip:I

    .line 196
    iget v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->aip:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->aip:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->aip:I

    if-eq v0, v7, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->finish()V

    .line 202
    :cond_2
    const v0, 0x7f0f0183

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 203
    if-eqz v0, :cond_4

    .line 204
    iget v1, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->aip:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->aip:I

    if-ne v1, v7, :cond_6

    .line 206
    :cond_3
    const v1, 0x7f0700d1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 213
    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 214
    iput-object v3, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->ain:Ljava/util/List;

    .line 215
    const v0, 0x7f0f0184

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 216
    const v1, 0x7f0f0186

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 218
    const v2, 0x7f0f000b

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 219
    new-instance v4, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;

    invoke-direct {v4, p0, v3}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->aio:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;

    .line 220
    iget-object v4, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->aio:Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    new-instance v4, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$3;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$3;-><init>(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 235
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_5

    .line 236
    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 237
    const/high16 v4, 0x40200000    # 2.5f

    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00c4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 238
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    :cond_5
    new-instance v2, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$4;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$4;-><init>(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    new-instance v0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$5;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$5;-><init>(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    :goto_2
    return-void

    .line 208
    :cond_6
    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 262
    :cond_7
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->finish()V

    goto :goto_2
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;->finish()V

    .line 367
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 368
    invoke-static {}, Lcom/kingroot/common/framework/main/MainExitReceiver;->jF()V

    .line 369
    return-void
.end method
