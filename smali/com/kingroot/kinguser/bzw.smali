.class public Lcom/kingroot/kinguser/bzw;
.super Lcom/kingroot/kinguser/bzv;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/kingroot/kinguser/bzv;-><init>()V

    return-void
.end method


# virtual methods
.method protected i(Ljava/lang/Class;)Lcom/kingroot/kinguser/bzv$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lcom/kingroot/kinguser/cca;",
            ">;)",
            "Lcom/kingroot/kinguser/bzv$a;"
        }
    .end annotation

    .prologue
    .line 13
    sget-object v0, Lcom/kingroot/kinguser/bzy;->bEf:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    new-instance v0, Lcom/kingroot/kinguser/bzx;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bzx;-><init>(Lcom/kingroot/kinguser/bzw;)V

    .line 23
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
