.class public Lcom/kingroot/kinguser/brk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/brc;


# instance fields
.field private bJV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpim/discovery/AdDisplayModel;",
            ">;"
        }
    .end annotation
.end field

.field private bJW:Lcom/tencent/qqpim/discovery/AdRequestData;

.field private bJX:Lcom/kingroot/kinguser/brd;

.field private bJY:Lcom/kingroot/kinguser/brt;

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpim/discovery/AdRequestData;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/brk;->lock:Ljava/lang/Object;

    .line 33
    iput-object p1, p0, Lcom/kingroot/kinguser/brk;->bJW:Lcom/tencent/qqpim/discovery/AdRequestData;

    .line 34
    new-instance v0, Lcom/kingroot/kinguser/brt;

    invoke-direct {v0}, Lcom/kingroot/kinguser/brt;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/brk;->bJY:Lcom/kingroot/kinguser/brt;

    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/brk;->bJY:Lcom/kingroot/kinguser/brt;

    new-instance v1, Lcom/kingroot/kinguser/brk$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/brk$1;-><init>(Lcom/kingroot/kinguser/brk;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/brt;->a(Lcom/kingroot/kinguser/brt$a;)V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/brk;)Lcom/kingroot/kinguser/brd;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/brk;->bJX:Lcom/kingroot/kinguser/brd;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/brk;Lcom/tencent/qqpim/discovery/AdDisplayModel;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/brk;->g(Lcom/tencent/qqpim/discovery/AdDisplayModel;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/brk;Lcom/tencent/qqpim/discovery/AdDisplayModel;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/brk;->a(Lcom/tencent/qqpim/discovery/AdDisplayModel;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/brk;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/kingroot/kinguser/brk;->bJV:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/tencent/qqpim/discovery/AdDisplayModel;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/kingroot/kinguser/bre;->ahy()Lcom/kingroot/kinguser/bre;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bre;->ahA()Lcom/kingroot/kinguser/brq;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/brq;->c(Lcom/tencent/qqpim/discovery/AdDisplayModel;Landroid/os/Bundle;)V

    .line 105
    return-void
.end method

.method private a(Lcom/tencent/qqpim/discovery/AdRequestData;Z)V
    .locals 2

    .prologue
    .line 240
    invoke-static {}, Lcom/kingroot/kinguser/bre;->ahy()Lcom/kingroot/kinguser/bre;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bre;->ahA()Lcom/kingroot/kinguser/brq;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/brk$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/brk$2;-><init>(Lcom/kingroot/kinguser/brk;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/kingroot/kinguser/brq;->a(Lcom/tencent/qqpim/discovery/AdRequestData;ZLcom/kingroot/kinguser/brq$a;)V

    .line 266
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/brk;)Lcom/kingroot/kinguser/brt;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/brk;->bJY:Lcom/kingroot/kinguser/brt;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/brk;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/brk;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private g(Lcom/tencent/qqpim/discovery/AdDisplayModel;)V
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/kingroot/kinguser/bre;->ahy()Lcom/kingroot/kinguser/bre;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bre;->ahA()Lcom/kingroot/kinguser/brq;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/brq;->j(Lcom/tencent/qqpim/discovery/AdDisplayModel;)V

    .line 100
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/brd;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/kingroot/kinguser/brk;->bJX:Lcom/kingroot/kinguser/brd;

    .line 143
    return-void
.end method

.method public ahC()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "loadAd()"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/brk;->bJW:Lcom/tencent/qqpim/discovery/AdRequestData;

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/brk;->bJW:Lcom/tencent/qqpim/discovery/AdRequestData;

    invoke-virtual {v1}, Lcom/tencent/qqpim/discovery/AdRequestData;->ahx()Lcom/tencent/qqpim/discovery/AdRequestData;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 133
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/brk;->a(Lcom/tencent/qqpim/discovery/AdRequestData;Z)V

    .line 134
    return-void

    .line 130
    :catch_0
    move-exception v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public ahD()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpim/discovery/AdDisplayModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/brk;->bJV:Ljava/util/List;

    return-object v0
.end method

.method public ahE()V
    .locals 2

    .prologue
    .line 146
    const-string v0, "loadcachedAd()"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/brk;->bJW:Lcom/tencent/qqpim/discovery/AdRequestData;

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/brk;->bJW:Lcom/tencent/qqpim/discovery/AdRequestData;

    invoke-virtual {v1}, Lcom/tencent/qqpim/discovery/AdRequestData;->ahx()Lcom/tencent/qqpim/discovery/AdRequestData;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/brk;->a(Lcom/tencent/qqpim/discovery/AdRequestData;Z)V

    .line 154
    return-void

    .line 150
    :catch_0
    move-exception v1

    .line 151
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Landroid/view/View;Lcom/tencent/qqpim/discovery/AdDisplayModel;)V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerViewForInteraction() model="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/tencent/qqpim/discovery/AdDisplayModel;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/kingroot/kinguser/brk;->bJY:Lcom/kingroot/kinguser/brt;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/kingroot/kinguser/brt;->a(Landroid/view/View;Lcom/tencent/qqpim/discovery/AdDisplayModel;Landroid/os/Bundle;)V

    .line 115
    return-void
.end method
