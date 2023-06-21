.class public Lcom/kingroot/kinguser/awp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/awp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ExtenalCloudSwitcherImpl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/awp;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/kingroot/kinguser/awp$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/awp$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/awp;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/awp$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/kingroot/kinguser/awp;-><init>()V

    return-void
.end method

.method public static Tq()Lcom/kingroot/kinguser/awp;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/kingroot/kinguser/awp;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/awp;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/dk;)I
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 34
    const/4 v3, 0x3

    .line 35
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return v3

    .line 44
    :cond_0
    iget-byte v0, p1, Lcom/kingroot/kinguser/dk;->no:B

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 46
    :goto_1
    iget v4, p1, Lcom/kingroot/kinguser/dk;->gH:I

    packed-switch v4, :pswitch_data_0

    move v1, v3

    :cond_1
    :goto_2
    move v3, v1

    .line 108
    goto :goto_0

    :cond_2
    move v0, v2

    .line 44
    goto :goto_1

    .line 48
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/akr;->BL()Lcom/kingroot/kinguser/akr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/akr;->aW(Z)V

    goto :goto_2

    .line 52
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/akr;->BL()Lcom/kingroot/kinguser/akr;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/akr;->aZ(Z)V

    .line 53
    if-eqz v0, :cond_1

    .line 55
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->eo(I)V

    .line 56
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->aX(J)V

    goto :goto_2

    .line 61
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/akr;->BL()Lcom/kingroot/kinguser/akr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/akr;->aY(Z)V

    goto :goto_2

    .line 65
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/akr;->BL()Lcom/kingroot/kinguser/akr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/akr;->ba(Z)V

    goto :goto_2

    .line 69
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/aks;->bs(Z)V

    goto :goto_2

    .line 73
    :pswitch_5
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/aks;->bv(Z)V

    goto :goto_2

    .line 77
    :pswitch_6
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/aks;->bt(Z)V

    goto :goto_2

    .line 81
    :pswitch_7
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/aks;->bu(Z)V

    goto :goto_2

    .line 85
    :pswitch_8
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/aks;->bx(Z)V

    goto :goto_2

    .line 89
    :pswitch_9
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/aks;->bA(Z)V

    .line 90
    if-eqz v0, :cond_1

    .line 92
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/aks;->bB(Z)V

    goto :goto_2

    .line 97
    :pswitch_a
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/aks;->bC(Z)V

    goto :goto_2

    .line 101
    :pswitch_b
    invoke-static {}, Lcom/kingroot/kinguser/akr;->BL()Lcom/kingroot/kinguser/akr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/akr;->aX(Z)V

    goto :goto_2

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_b
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method
