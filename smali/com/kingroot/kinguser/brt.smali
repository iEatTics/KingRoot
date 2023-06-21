.class public Lcom/kingroot/kinguser/brt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/kingroot/kinguser/bru;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/brt$a;,
        Lcom/kingroot/kinguser/brt$b;,
        Lcom/kingroot/kinguser/brt$c;
    }
.end annotation


# static fields
.field static final bKY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final bKP:I

.field private final bKQ:I

.field private bKR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bKS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private bKT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private bKU:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/qqpim/discovery/AdDisplayModel;",
            ">;"
        }
    .end annotation
.end field

.field private bKV:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private bKW:Lcom/kingroot/kinguser/brt$a;

.field private bKX:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/brt;->bKY:Ljava/util/List;

    .line 336
    sget-object v0, Lcom/kingroot/kinguser/brt;->bKY:Ljava/util/List;

    const v1, 0x1cc8e62

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v0, Lcom/kingroot/kinguser/brt;->bKY:Ljava/util/List;

    const v1, 0x133f7e3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "DisplayControl"

    iput-object v0, p0, Lcom/kingroot/kinguser/brt;->TAG:Ljava/lang/String;

    .line 29
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/kingroot/kinguser/brt;->bKP:I

    .line 30
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/kingroot/kinguser/brt;->bKQ:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/brt;->bKR:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/brt;->bKS:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/brt;->bKT:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/brt;->bKU:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/brt;->bKV:Ljava/util/HashMap;

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/brt;->bKX:Z

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/brt;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/brt;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->bKT:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/brt;Landroid/view/View;Lcom/tencent/qqpim/discovery/AdDisplayModel;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/brt;->b(Landroid/view/View;Lcom/tencent/qqpim/discovery/AdDisplayModel;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/brt;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/brt;->mY(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/brt;Z)V
    .locals 0

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/kingroot/kinguser/brt;->bKX:Z

    return-void
.end method

.method static a(Lcom/tencent/qqpim/discovery/AdDisplayModel;I)Z
    .locals 4

    .prologue
    .line 341
    sget-object v0, Lcom/kingroot/kinguser/brt;->bKY:Ljava/util/List;

    iget v1, p0, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "DisplayControl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkandreport() model.positionId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AD_UI_ERROR="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/kingroot/kinguser/brw;->ahO()Lcom/kingroot/kinguser/brw;

    move-result-object v0

    const v1, 0x40f30

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJp:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 343
    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/brw;->c(ILjava/lang/String;I)V

    .line 345
    const/4 v0, 0x1

    .line 347
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ahN()V
    .locals 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->bKT:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 367
    if-nez v0, :cond_1

    .line 373
    :cond_0
    return-void

    .line 370
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 371
    iget-object v2, p0, Lcom/kingroot/kinguser/brt;->bKT:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/brt;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->bKV:Ljava/util/HashMap;

    return-object v0
.end method

.method private b(Landroid/view/View;Lcom/tencent/qqpim/discovery/AdDisplayModel;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x3ffffff

    const/4 v4, 0x0

    .line 118
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 119
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/brt;->c(Landroid/view/ViewGroup;)Lcom/kingroot/kinguser/brv;

    move-result-object v2

    .line 120
    if-nez v2, :cond_3

    .line 121
    new-instance v1, Lcom/kingroot/kinguser/brv;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/kingroot/kinguser/brv;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/bru;)V

    move-object v0, p1

    .line 122
    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->bKR:Ljava/util/List;

    iget-object v2, p2, Lcom/tencent/qqpim/discovery/AdDisplayModel;->uniqueKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->bKT:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/tencent/qqpim/discovery/AdDisplayModel;->uniqueKey:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 136
    :goto_0
    const v1, 0x4ffffff

    iget-object v2, p2, Lcom/tencent/qqpim/discovery/AdDisplayModel;->uniqueKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 137
    const v1, 0x5ffffff

    invoke-virtual {p1, v1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 138
    iget-object v1, p2, Lcom/tencent/qqpim/discovery/AdDisplayModel;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Lcom/kingroot/kinguser/brv;->setTag(ILjava/lang/Object;)V

    .line 141
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/kingroot/kinguser/brt;->bKS:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/tencent/qqpim/discovery/AdDisplayModel;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->bKU:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/tencent/qqpim/discovery/AdDisplayModel;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/discovery/AdDisplayModel;

    .line 148
    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->bKU:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/tencent/qqpim/discovery/AdDisplayModel;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->bKV:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/tencent/qqpim/discovery/AdDisplayModel;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/brt$b;

    .line 155
    if-nez v0, :cond_2

    .line 156
    new-instance v0, Lcom/kingroot/kinguser/brt$b;

    iget-object v1, p2, Lcom/tencent/qqpim/discovery/AdDisplayModel;->uniqueKey:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/brt$b;-><init>(Lcom/kingroot/kinguser/brt;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/kingroot/kinguser/brt;->bKV:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/tencent/qqpim/discovery/AdDisplayModel;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v1, p0, Lcom/kingroot/kinguser/brt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 160
    iget-object v1, p0, Lcom/kingroot/kinguser/brt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    :cond_2
    return-void

    .line 126
    :cond_3
    invoke-virtual {v2, v5}, Lcom/kingroot/kinguser/brv;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    iget-object v1, p2, Lcom/tencent/qqpim/discovery/AdDisplayModel;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 128
    iget-object v1, p0, Lcom/kingroot/kinguser/brt;->bKV:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 129
    if-eqz v1, :cond_4

    .line 130
    iget-object v3, p0, Lcom/kingroot/kinguser/brt;->bKV:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->bKT:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/tencent/qqpim/discovery/AdDisplayModel;->uniqueKey:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object v0, v2

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/brt;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Landroid/view/ViewGroup;)Lcom/kingroot/kinguser/brv;
    .locals 5

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 50
    const/4 v1, 0x0

    .line 51
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_0

    move-object v0, v1

    .line 62
    :goto_1
    return-object v0

    .line 52
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 53
    instance-of v4, v0, Lcom/kingroot/kinguser/brv;

    if-eqz v4, :cond_2

    .line 54
    iget-object v3, p0, Lcom/kingroot/kinguser/brt;->bKR:Ljava/util/List;

    const v4, 0x3ffffff

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    check-cast v0, Lcom/kingroot/kinguser/brv;

    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    move-object v0, v1

    .line 59
    goto :goto_1

    .line 51
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/brt;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->bKS:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/brt;)Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/kingroot/kinguser/brt;->bKX:Z

    return v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/brt;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->bKU:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/brt;)Lcom/kingroot/kinguser/brt$a;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->bKW:Lcom/kingroot/kinguser/brt$a;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/brt;)V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/kingroot/kinguser/brt;->ahN()V

    return-void
.end method

.method private mY(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 227
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->bKS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 228
    const-string v4, "DisplayControl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "startDetect() id="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "||"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/kingroot/kinguser/brt;->bKT:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "||null == tmpView:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    if-nez v0, :cond_2

    .line 252
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 228
    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 233
    if-nez v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->bKV:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 235
    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/kingroot/kinguser/brt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 240
    :cond_3
    const-string v1, "DisplayControl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "view ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {v0}, Lcom/kingroot/kinguser/btg;->P(Landroid/view/View;)Lcom/kingroot/kinguser/btd;

    move-result-object v0

    .line 243
    const-string v1, "DisplayControl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "displayBegin() AD_UI_ERROR="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-object v1, Lcom/kingroot/kinguser/btd;->bMG:Lcom/kingroot/kinguser/btd;

    if-ne v0, v1, :cond_4

    .line 247
    :goto_2
    if-eqz v2, :cond_0

    .line 248
    new-instance v0, Lcom/kingroot/kinguser/brt$c;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/brt$c;-><init>(Lcom/kingroot/kinguser/brt;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/kingroot/kinguser/brt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    iget-object v1, p0, Lcom/kingroot/kinguser/brt;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2
.end method


# virtual methods
.method public M(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 197
    const v0, 0x3ffffff

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    const-string v1, "DisplayControl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "displayBegin() id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/kingroot/kinguser/brt;->bKV:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 200
    if-nez v1, :cond_0

    .line 201
    const-string v1, "DisplayControl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "displayBegin() null == runable id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public N(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 213
    const-string v0, "DisplayControl"

    const-string v1, "displayEnd()"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const v0, 0x3ffffff

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    iget-object v1, p0, Lcom/kingroot/kinguser/brt;->bKV:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 217
    if-nez v1, :cond_0

    .line 218
    const-string v1, "DisplayControl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "displayEnd() null == runable id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/kingroot/kinguser/brt;->bKV:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Lcom/tencent/qqpim/discovery/AdDisplayModel;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/brt;->b(Landroid/view/View;Lcom/tencent/qqpim/discovery/AdDisplayModel;Landroid/os/Bundle;)V

    .line 114
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kingroot/kinguser/brt$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/kingroot/kinguser/brt$1;-><init>(Lcom/kingroot/kinguser/brt;Landroid/view/View;Lcom/tencent/qqpim/discovery/AdDisplayModel;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/brt$a;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/kingroot/kinguser/brt;->bKW:Lcom/kingroot/kinguser/brt$a;

    .line 271
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->bKW:Lcom/kingroot/kinguser/brt$a;

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 259
    :cond_0
    const v0, 0x4ffffff

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    const v1, 0x5ffffff

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 261
    iget-object v2, p0, Lcom/kingroot/kinguser/brt;->bKU:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/discovery/AdDisplayModel;

    .line 262
    if-nez v0, :cond_1

    .line 263
    const-string v0, "DisplayControl"

    const-string v1, "null == model"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/kingroot/kinguser/brt;->bKW:Lcom/kingroot/kinguser/brt$a;

    invoke-interface {v2, v0, v1}, Lcom/kingroot/kinguser/brt$a;->b(Lcom/tencent/qqpim/discovery/AdDisplayModel;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 351
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/kingroot/kinguser/brt;->ahN()V

    .line 361
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brt;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/kingroot/kinguser/brt$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/brt$2;-><init>(Lcom/kingroot/kinguser/brt;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
