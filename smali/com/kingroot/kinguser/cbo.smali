.class public Lcom/kingroot/kinguser/cbo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cbo$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/cbp;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/kingroot/kinguser/cbo;-><init>()V

    return-void
.end method

.method public static akB()Lcom/kingroot/kinguser/cbo;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/kingroot/kinguser/cbo$a;->akC()Lcom/kingroot/kinguser/cbo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Lcom/kingroot/kinguser/cbn;)V
    .locals 5
    .param p2    # Lcom/kingroot/kinguser/cbn;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/f;",
            ">;",
            "Lcom/kingroot/kinguser/cbn;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/kingroot/kinguser/e;

    invoke-direct {v0}, Lcom/kingroot/kinguser/e;-><init>()V

    .line 46
    iput-object p1, v0, Lcom/kingroot/kinguser/e;->dU:Ljava/util/ArrayList;

    .line 47
    new-instance v1, Lcom/kingroot/kinguser/g;

    invoke-direct {v1}, Lcom/kingroot/kinguser/g;-><init>()V

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/kingroot/kinguser/g;->ef:Ljava/util/ArrayList;

    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/cav;->akt()Lcom/kingroot/kinguser/cav;

    move-result-object v2

    const/16 v3, 0x6c

    new-instance v4, Lcom/kingroot/kinguser/cbp;

    invoke-direct {v4, p0, p2}, Lcom/kingroot/kinguser/cbp;-><init>(Lcom/kingroot/kinguser/cbo;Lcom/kingroot/kinguser/cbn;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/kingroot/kinguser/cav;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V

    .line 69
    return-void
.end method
