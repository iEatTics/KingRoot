.class public Lcom/kingroot/kinguser/aps;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/aor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/kingroot/kinguser/aps$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aps$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aps;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method public static LI()Lcom/kingroot/kinguser/aor;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/kingroot/kinguser/aps;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aor;

    return-object v0
.end method
