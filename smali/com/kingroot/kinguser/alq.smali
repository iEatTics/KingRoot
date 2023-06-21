.class public Lcom/kingroot/kinguser/alq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/ams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/kingroot/kinguser/alq$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/alq$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/alq;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method public static GY()Lcom/kingroot/kinguser/ams;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/kingroot/kinguser/alq;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ams;

    return-object v0
.end method
