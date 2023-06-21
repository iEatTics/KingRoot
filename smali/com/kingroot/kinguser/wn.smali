.class public Lcom/kingroot/kinguser/wn;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/wn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/kingroot/kinguser/wn$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/wn$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/wn;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static nw()Lcom/kingroot/kinguser/wn;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/kingroot/kinguser/wn;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/wn;

    return-object v0
.end method
