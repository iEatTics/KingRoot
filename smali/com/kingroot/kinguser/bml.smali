.class public final Lcom/kingroot/kinguser/bml;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bBV:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/bml;->bBV:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WRITE_LOG_HANDLER"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 47
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 48
    return-void
.end method

.method public static afK()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/kingroot/kinguser/bml;->bBV:Z

    return v0
.end method

.method public static c(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    sput-boolean p0, Lcom/kingroot/kinguser/bml;->bBV:Z

    .line 88
    return-void
.end method
