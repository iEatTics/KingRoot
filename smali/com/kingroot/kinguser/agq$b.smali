.class public abstract Lcom/kingroot/kinguser/agq$b;
.super Lcom/kingroot/kinguser/agn;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/agq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public static i(Landroid/os/IBinder;)Lcom/kingroot/kinguser/agq;
    .locals 1

    .prologue
    .line 130
    if-nez p0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ku.pService.dr"

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/agq$a;->b(Landroid/os/IBinder;Ljava/lang/String;)Lcom/kingroot/kinguser/agq;

    move-result-object v0

    goto :goto_0
.end method
