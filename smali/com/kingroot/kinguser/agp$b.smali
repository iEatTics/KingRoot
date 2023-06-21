.class public abstract Lcom/kingroot/kinguser/agp$b;
.super Lcom/kingroot/kinguser/agn;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/agp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/agp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public static h(Landroid/os/IBinder;)Lcom/kingroot/kinguser/agp;
    .locals 1

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "hk.config"

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/agp$a;->a(Landroid/os/IBinder;Ljava/lang/String;)Lcom/kingroot/kinguser/agp;

    move-result-object v0

    goto :goto_0
.end method
