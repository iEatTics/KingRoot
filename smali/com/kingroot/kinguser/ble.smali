.class public Lcom/kingroot/kinguser/ble;
.super Lcom/kingroot/kinguser/rg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ble$a;
    }
.end annotation


# instance fields
.field private bzH:Lcom/kingroot/kinguser/tv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/kingroot/kinguser/rg;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ble;->bzH:Lcom/kingroot/kinguser/tv;

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ble;)I
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/kingroot/kinguser/ble;->afh()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ble;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ble;->jF(I)V

    return-void
.end method

.method private afh()I
    .locals 3

    .prologue
    .line 91
    const/4 v0, -0x1

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-static {}, Lcom/kingroot/kinguser/tj;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-static {v1}, Lcom/kingroot/common/utils/system/ProcessUtils;->P(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 95
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    .line 96
    iget v0, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    goto :goto_0

    .line 98
    :cond_0
    return v0
.end method

.method private afi()I
    .locals 4

    .prologue
    .line 107
    const/4 v0, -0x1

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/tj;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":task"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-static {v1}, Lcom/kingroot/common/utils/system/ProcessUtils;->P(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    .line 112
    iget v0, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    goto :goto_0

    .line 114
    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/ble;)I
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/kingroot/kinguser/ble;->afi()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/ble;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ble;->jG(I)V

    return-void
.end method

.method private c(Landroid/content/Intent;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 274
    if-nez p1, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string v1, "com.kingroot.master.ACTION.BOOT.AUTO.START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const-string v0, "extra_start_type"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 281
    invoke-static {}, Lcom/kingroot/kinguser/vu;->md()Lcom/kingroot/kinguser/vu;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/vu;->k(IZ)V

    .line 283
    invoke-static {}, Lcom/kingroot/kinguser/vu;->md()Lcom/kingroot/kinguser/vu;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/vu;->R(Z)V

    goto :goto_0
.end method

.method private jF(I)V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingroot/kinguser/ble$1;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/ble$1;-><init>(Lcom/kingroot/kinguser/ble;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 56
    return-void
.end method

.method private jG(I)V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/kingroot/kinguser/ble$2;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/ble$2;-><init>(Lcom/kingroot/kinguser/ble;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method


# virtual methods
.method public J(Z)V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public a(JZII)V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/ble;->c(Landroid/content/Intent;I)V

    .line 245
    return-void
.end method

.method public b(ZI)V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public hO()Lcom/kingroot/kinguser/tv;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/ble;->bzH:Lcom/kingroot/kinguser/tv;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/kingroot/kinguser/ble$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/ble$a;-><init>(Lcom/kingroot/kinguser/ble;Lcom/kingroot/kinguser/ble$1;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ble;->bzH:Lcom/kingroot/kinguser/tv;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ble;->bzH:Lcom/kingroot/kinguser/tv;

    return-object v0
.end method

.method public hP()Lcom/kingroot/kinguser/tt;
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public hQ()Z
    .locals 1

    .prologue
    .line 255
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->EP()Z

    move-result v0

    return v0
.end method
