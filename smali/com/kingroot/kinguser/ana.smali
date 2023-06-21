.class public Lcom/kingroot/kinguser/ana;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/anc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/kingroot/kinguser/ana$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ana$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ana;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method public static IO()Lcom/kingroot/kinguser/anc;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/kingroot/kinguser/ana;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/anc;

    return-object v0
.end method
