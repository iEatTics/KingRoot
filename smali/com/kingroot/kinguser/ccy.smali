.class public Lcom/kingroot/kinguser/ccy;
.super Ljava/lang/Object;


# static fields
.field private static bXo:Lcom/kingroot/kinguser/ccy;

.field private static bXp:Lcom/kingroot/kinguser/ccp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/ccy;->bXp:Lcom/kingroot/kinguser/ccp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/kingroot/kinguser/bng;)V
    .locals 12

    new-instance v0, Lcom/kingroot/kinguser/ccy;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ccy;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ccy;->bXo:Lcom/kingroot/kinguser/ccy;

    iget-object v2, p1, Lcom/kingroot/kinguser/bng;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/kingroot/kinguser/bng;->versionName:Ljava/lang/String;

    iget v4, p1, Lcom/kingroot/kinguser/bng;->bDs:I

    const/16 v5, 0xc9

    const-string v6, "EP_CloudCheck_Sdk"

    const/16 v7, 0x3d

    const-string v8, "88888"

    const-string v9, "DCA939E7DF3B97C8"

    sget-boolean v10, Lcom/kingroot/kinguser/bnh;->a:Z

    sget-boolean v11, Lcom/kingroot/kinguser/bnh;->b:Z

    new-instance v0, Lcom/kingroot/kinguser/ccp;

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/kingroot/kinguser/ccp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/kingroot/kinguser/ccy;->bXp:Lcom/kingroot/kinguser/ccp;

    return-void
.end method

.method public static akK()Lcom/kingroot/kinguser/ccy;
    .locals 1

    sget-object v0, Lcom/kingroot/kinguser/ccy;->bXo:Lcom/kingroot/kinguser/ccy;

    return-object v0
.end method


# virtual methods
.method public a(Lsm/am;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsm/am;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lsm/ar;",
            ">;)I"
        }
    .end annotation

    const/4 v5, 0x1

    sget-object v0, Lcom/kingroot/kinguser/ccy;->bXp:Lcom/kingroot/kinguser/ccp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ccp;->akJ()Lcom/kingroot/kinguser/cdj;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/cdv;

    invoke-direct {v2, v5}, Lcom/kingroot/kinguser/cdv;-><init>(Z)V

    new-instance v3, Lcom/kingroot/kinguser/cdv;

    invoke-direct {v3, v5}, Lcom/kingroot/kinguser/cdv;-><init>(Z)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/kingroot/kinguser/ccx;->kW(I)Lcom/kingroot/kinguser/cdi;

    move-result-object v0

    invoke-virtual {v1, v0, v2, v3}, Lcom/kingroot/kinguser/cdj;->a(Lcom/kingroot/kinguser/cdi;Lcom/kingroot/kinguser/cdv;Lcom/kingroot/kinguser/cdv;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v0, "phonetype"

    invoke-virtual {v1}, Lcom/kingroot/kinguser/cdj;->akM()Lsm/e;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/kingroot/kinguser/cdv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userinfo"

    invoke-virtual {v1}, Lcom/kingroot/kinguser/cdj;->akN()Lsm/h;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/kingroot/kinguser/cdv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "req"

    invoke-virtual {v2, v0, p1}, Lcom/kingroot/kinguser/cdv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/kingroot/kinguser/cdj;->a(Lcom/kingroot/kinguser/cdv;Lcom/kingroot/kinguser/cdv;Z)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "resp"

    new-instance v1, Lsm/ar;

    invoke-direct {v1}, Lsm/ar;-><init>()V

    invoke-virtual {v3, v0, v1}, Lcom/kingroot/kinguser/cdv;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsm/ar;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
